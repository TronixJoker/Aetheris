package com.xiaozhi.android.audio

import org.junit.Assert.assertEquals
import org.junit.Test

/**
 * [EndpointGracePolicy] 单元测试（v2.3.9.1 端点自适应收尾）。
 *
 * 规格（群管理员派单「识别结果时间太长」优化 + 架构师评审 🔴-2 修正）：
 *  - 端点总时长 = 本地 VAD 静音切段 1.2s + 弹性宽限 grace：
 *      - 首轮 grace=400ms → 端点 1.6s，与 v2.3.9 完全一致（升级首日不劣化）；
 *      - 干净收尾逐轮 -100ms，收敛下限 300ms（评审 🔴-2：150→300）→ 端点 1.5s
 *        （较 v2.3.9 -0.1s）——150 下限会把「句中停顿 1.35~1.6s」的用户逐轮误切；
 *      - 宽限内续说 / 收尾后秒续说 → +300ms 自愈，上限 400ms → 端点永不慢于 v2.3.9；
 *  - 本类只验证伸缩规则；宽限计时与世代核对的状态机（含尾扫兜底）见
 *    [EndpointGraceCoordinator]（纯逻辑，另有单测），MainViewModel 只做接线。
 */
class EndpointGracePolicyTest {

    private companion object {
        const val VAD_SILENCE_MS = 1200L // SpeechEndDetector.silenceDuration（v2.3.9.1 回调后）
        fun newPolicy() = EndpointGracePolicy()
    }

    private fun endpointTotalMs(p: EndpointGracePolicy) = VAD_SILENCE_MS + p.graceMs

    @Test
    fun `首轮宽限400ms - 端点总时长1点6秒与v2点3点9对齐 - 升级首日不劣化`() {
        val p = newPolicy()
        assertEquals("首轮宽限应与 v2.3.9 的加长量一致", 400L, p.graceMs)
        assertEquals("端点总时长 = 1.2s 切段 + 0.4s 宽限", 1600L, endpointTotalMs(p))
    }

    @Test
    fun `干净收尾逐轮收敛 - 400到300下限封住 - 端点1点5秒`() {
        val p = newPolicy()
        p.onCleanFinalize()
        assertEquals("第 1 轮干净收尾 -100ms 即到下限", 300L, p.graceMs)
        assertEquals("端点收敛 1.5s（评审 🔴-2，较 v2.3.9 -0.1s）", 1500L, endpointTotalMs(p))
        p.onCleanFinalize()
        p.onCleanFinalize()
        assertEquals("下限 300ms 封住，不会退化回 v2.3.8 的裸 1.2s", 300L, p.graceMs)
    }

    @Test
    fun `宽限内续说上调300ms - 下限附近可直接回到上限`() {
        val p = newPolicy()
        p.onCleanFinalize()
        assertEquals(300L, p.graceMs)
        // 句中停顿被宽限兜住（宽限内续说）→ 自愈上调
        p.onResumeWithinGrace()
        assertEquals("300+300 应封顶到上限 400", 400L, p.graceMs)
        assertEquals("端点回到 1.6s，慢停顿用户不受损", 1600L, endpointTotalMs(p))
    }

    @Test
    fun `连续上调不超上限400 - 端点永不慢于v2点3点9`() {
        val p = newPolicy()
        repeat(5) { p.onResumeWithinGrace() }
        assertEquals("多次续说上调应封顶 400ms", 400L, p.graceMs)
        assertEquals("端点上限 1.6s", 1600L, endpointTotalMs(p))
    }

    @Test
    fun `完整场景-说话不停顿用户 - 首轮1点6秒一轮后收敛1点5秒`() {
        val p = newPolicy()
        // 轮 1：说完 → 干净收尾（无续说）
        assertEquals(1600L, endpointTotalMs(p))
        p.onCleanFinalize()
        // 轮 2 起稳态（下限 300ms，评审 🔴-2）
        assertEquals("稳态端点 1.5s", 1500L, endpointTotalMs(p))
        p.onCleanFinalize()
        assertEquals(1500L, endpointTotalMs(p))
    }

    @Test
    fun `完整场景-1点4秒句中停顿用户 - 收敛态宽限300即可兜住 - 不再逐轮误切`() {
        // 评审 🔴-2 核心场景：用户句中停顿 1.4s（>1.2s 切段线）。
        // 修复前（下限 150）：收敛态端点 1.35s < 1.4s 停顿 → 该人群被逐轮误切；
        // 修复后（下限 300）：收敛态端点 1.5s > 1.4s 停顿 → 切段后 200ms 处续说
        // 落在 300ms 宽限窗内 → 兜住，不切断语义
        val p = newPolicy()
        repeat(2) { p.onCleanFinalize() }
        assertEquals("收敛态宽限 300ms", 300L, p.graceMs)
        assertEquals("收敛态端点 1.5s > 1.4s 停顿", 1500L, endpointTotalMs(p))
        // 1.4s 停顿：1.2s 切段 + 200ms 后续说 → 宽限窗（300ms）兜住 → 不误切
        p.onResumeWithinGrace()
        assertEquals(400L, p.graceMs)
        // 用户说完（干净收尾）→ 重新收敛，伸缩始终有界 [300, 400]ms
        p.onCleanFinalize()
        assertEquals(300L, p.graceMs)
        assertEquals(1500L, endpointTotalMs(p))
    }

    @Test
    fun `收尾后秒续说上调 - 与宽限内续说同规则复用`() {
        val p = newPolicy()
        p.onCleanFinalize()
        assertEquals(300L, p.graceMs)
        // 上一轮收尾后 2.5s 内又开始说（MainViewModel 接线判定）→ 同一上调入口
        p.onResumeWithinGrace()
        assertEquals("300+300 封顶 400", 400L, p.graceMs)
    }
}
