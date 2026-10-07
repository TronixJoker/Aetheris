package com.xiaozhi.android.audio

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * [VadSelfHealPolicy] 单元测试（v2.3.11 聆听态悬挂治理）。
 *
 * 覆盖规格（管理员派单「说完话不自动停止」硬根因修复配套）：
 *  1. 连续异常 1~5 次：决策 REBUILD（有界自愈——release 旧 VAD 实例后原地重建）；
 *  2. 连续异常超过上限（第 6 次起）：决策 FATAL（上抛给 ViewModel 重建整个检测器，
 *     杜绝原地无限重建空转）；
 *  3. 边界：恰好第 5 次（== MAX_REBUILD_ATTEMPTS）仍 REBUILD，第 6 次（> 上限）FATAL。
 *
 * 语义锚点：该策略保证 VAD 工作线程的异常路径「有界收敛、故障上抛」——
 * 旧实现 acceptWaveform 异常直接 return 杀死线程（端点事件永不触发 = 聆听态悬挂），
 * 新实现由本策略决定「重建 or 上报」，线程永不静默死亡。
 */
class VadSelfHealPolicyTest {

    // ---------- 1. 上限内：重建自愈 ----------

    @Test
    fun `首次异常 - 决策重建`() {
        assertEquals(VadSelfHealPolicy.Decision.REBUILD, VadSelfHealPolicy.decide(1))
    }

    @Test
    fun `连续异常第2至5次 - 均决策重建`() {
        for (streak in 2..VadSelfHealPolicy.MAX_REBUILD_ATTEMPTS - 1) {
            assertEquals(
                "streak=$streak 应允许继续重建自愈",
                VadSelfHealPolicy.Decision.REBUILD,
                VadSelfHealPolicy.decide(streak),
            )
        }
    }

    @Test
    fun `恰好达到上限第5次 - 仍决策重建（最后一次自愈机会）`() {
        assertEquals(
            VadSelfHealPolicy.Decision.REBUILD,
            VadSelfHealPolicy.decide(VadSelfHealPolicy.MAX_REBUILD_ATTEMPTS),
        )
    }

    // ---------- 2. 超过上限：上抛 FATAL ----------

    @Test
    fun `超过上限第6次起 - 决策FATAL上抛不再空转重建`() {
        for (streak in VadSelfHealPolicy.MAX_REBUILD_ATTEMPTS + 1..VadSelfHealPolicy.MAX_REBUILD_ATTEMPTS + 10) {
            assertEquals(
                "streak=$streak 应上抛 FATAL（由 VM 层重建整个检测器）",
                VadSelfHealPolicy.Decision.FATAL,
                VadSelfHealPolicy.decide(streak),
            )
        }
    }

    // ---------- 3. 非法入参防御 ----------

    @Test
    fun `streak为0或负数视为非法 - 归入FATAL（不应静默放行）`() {
        assertEquals(VadSelfHealPolicy.Decision.FATAL, VadSelfHealPolicy.decide(0))
        assertEquals(VadSelfHealPolicy.Decision.FATAL, VadSelfHealPolicy.decide(-3))
    }

    // ---------- 4. 重建失败推进序列（评审 🔴-F1 语义锁定） ----------

    /**
     * F1 语义：重建失败【本身也是异常】，必须沿决策链继续推进直至 FATAL 终止。
     * 旧实现缺陷（架构师评审 F1 必修项）：detector 内重建失败后 vad=null，
     * 下一窗走降级分支不再有任何 VAD 调用 → 异常计数冻结在 ≤5、FATAL 永不上抛、
     * 上层整机重建永不发生 → 一次模型加载失败即令本地端点终身静默退化。
     * 本用例锁定决策链的组合语义：每次失败 +1 重新决策，5 次 REBUILD 后第 6 次
     * 决策必须终止于 FATAL（与 SpeechEndDetector.handleVadError 的 while 推进
     * 实现互为镜像，防止未来改动破坏「失败必推进」约定）。
     */
    @Test
    fun `重建连续失败沿决策链推进 - 5次REBUILD后必须FATAL终止 - 不允许冻结`() {
        var streak = 0
        val decisions = mutableListOf<VadSelfHealPolicy.Decision>()
        // 有界保护：最多推进 100 步（真实路径 6 步内必终止，上界只为防测试死循环）
        while (decisions.size < 100) {
            streak++
            val decision = VadSelfHealPolicy.decide(streak)
            decisions.add(decision)
            if (decision == VadSelfHealPolicy.Decision.FATAL) break
        }
        assertEquals("重建失败序列应恰好在第 6 次决策终止于 FATAL", 6, decisions.size)
        assertTrue(
            "前 5 次决策必须全部为 REBUILD",
            decisions.take(5).all { it == VadSelfHealPolicy.Decision.REBUILD },
        )
        assertEquals(VadSelfHealPolicy.Decision.FATAL, decisions.last())
    }
}
