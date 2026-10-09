package com.xiaozhi.android.audio

import org.junit.Assert.assertEquals
import org.junit.Test

/**
 * [EndpointGracePolicy] 单元测试（v2.3.13 端点提速，架构师方案 §1.1）。
 *
 * 规格（群管理员派单「说完话停止识别超过 2 秒」修复，基线 v2.3.12）：
 *  - 端点总时长 = 本地 VAD 静音切段 0.8s（v2.3.13 由 1.2s 收窄）+ 弹性宽限 grace：
 *      - 首轮 grace=300ms → 端点 1.1s（方案 §1.1 推荐档，达成「说完→停止识别」1 秒级）；
 *      - 干净收尾逐轮 -100ms，收敛下限 200ms → 端点 1.0s
 *        （0.8s 静音线本身挡住 <0.8s 停顿，宽限只兜「切段后 0.2s 内续说」最坏窗）；
 *      - 宽限内续说 / 收尾后秒续说 → +300ms 自愈，上限 300ms → 端点 1.1s 封顶，
 *        收敛态误切后立即恢复首轮保护水位；
 *  - 误切安全性：0.6~0.8s 句中停顿由帧级续说撤销（切段前）兜住；>1s 停顿允许切段
 *    （切段后照常收尾，不追认）；
 *  - 本类只验证伸缩规则；宽限计时与世代核对的状态机（含尾扫兜底）见
 *    [EndpointGraceCoordinator]（纯逻辑，另有单测），MainViewModel 只做接线。
 */
class EndpointGracePolicyTest {

    private companion object {
        const val VAD_SILENCE_MS = 800L // SpeechEndDetector.silenceDuration（v2.3.13 收窄）
        fun newPolicy() = EndpointGracePolicy()
    }

    private fun endpointTotalMs(p: EndpointGracePolicy) = VAD_SILENCE_MS + p.graceMs

    @Test
    fun `首轮宽限300ms - 端点总时长1点1秒 - 达成1秒级目标`() {
        val p = newPolicy()
        assertEquals("首轮宽限 = 方案 §1.1 推荐档 300ms", 300L, p.graceMs)
        assertEquals("端点总时长 = 0.8s 切段 + 0.3s 宽限", 1100L, endpointTotalMs(p))
    }

    @Test
    fun `干净收尾逐轮收敛 - 300到200下限封住 - 端点1点0秒`() {
        val p = newPolicy()
        p.onCleanFinalize()
        assertEquals("第 1 轮干净收尾 -100ms 即到下限", 200L, p.graceMs)
        assertEquals("端点收敛 1.0s（v2.3.13 收窄，较 v2.3.12 -0.5s）", 1000L, endpointTotalMs(p))
        p.onCleanFinalize()
        p.onCleanFinalize()
        assertEquals("下限 200ms 封住，仍保留最小弹性窗", 200L, p.graceMs)
    }

    @Test
    fun `宽限内续说上调 - 下限附近直接回到首轮水位300`() {
        val p = newPolicy()
        p.onCleanFinalize()
        assertEquals(200L, p.graceMs)
        // 句中停顿被宽限兜住（宽限内续说）→ 自愈上调
        p.onResumeWithinGrace()
        assertEquals("200+300 应封顶到首轮水位 300", 300L, p.graceMs)
        assertEquals("端点回到 1.1s，慢停顿用户不受损", 1100L, endpointTotalMs(p))
    }

    @Test
    fun `连续上调不超首轮水位300 - 端点1点1秒封顶`() {
        val p = newPolicy()
        repeat(5) { p.onResumeWithinGrace() }
        assertEquals("多次续说上调应封顶 300ms", 300L, p.graceMs)
        assertEquals("端点上限 1.1s", 1100L, endpointTotalMs(p))
    }

    @Test
    fun `完整场景-说话不停顿用户 - 首轮1点1秒一轮后收敛1点0秒`() {
        val p = newPolicy()
        // 轮 1：说完 → 干净收尾（无续说）
        assertEquals(1100L, endpointTotalMs(p))
        p.onCleanFinalize()
        // 轮 2 起稳态（下限 200ms）
        assertEquals("稳态端点 1.0s", 1000L, endpointTotalMs(p))
        p.onCleanFinalize()
        assertEquals(1000L, endpointTotalMs(p))
    }

    @Test
    fun `完整场景-0点9秒句中停顿用户 - 收敛态宽限200即可兜住 - 不逐轮误切`() {
        // v2.3.13 核心场景：用户句中停顿 0.9s（>0.8s 切段线，触发切段）。
        // 切段后 0.1s 处续说 → 落在收敛态 200ms 宽限窗内 → 兜住，不切断语义；
        // （>1s 的停顿按方案允许切段，切段后照常收尾，不算误切）
        val p = newPolicy()
        repeat(2) { p.onCleanFinalize() }
        assertEquals("收敛态宽限 200ms", 200L, p.graceMs)
        assertEquals("收敛态端点 1.0s > 0.9s 停顿", 1000L, endpointTotalMs(p))
        // 0.9s 停顿：0.8s 切段 + 100ms 后续说 → 宽限窗（200ms）兜住 → 不误切
        p.onResumeWithinGrace()
        assertEquals("200+300 封顶首轮水位 300", 300L, p.graceMs)
        // 用户说完（干净收尾）→ 重新收敛，伸缩始终有界 [200, 300]ms
        p.onCleanFinalize()
        assertEquals(200L, p.graceMs)
        assertEquals(1000L, endpointTotalMs(p))
    }

    @Test
    fun `收尾后秒续说上调 - 与宽限内续说同规则复用`() {
        val p = newPolicy()
        p.onCleanFinalize()
        assertEquals(200L, p.graceMs)
        // 上一轮收尾后 2.5s 内又开始说（MainViewModel 接线判定）→ 同一上调入口
        p.onResumeWithinGrace()
        assertEquals("200+300 封顶 300", 300L, p.graceMs)
    }
}
