package com.xiaozhi.android.audio

import org.junit.Assert.assertEquals
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
}
