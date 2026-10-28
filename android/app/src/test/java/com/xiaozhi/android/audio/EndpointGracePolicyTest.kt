package com.xiaozhi.android.audio

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * [EndpointGracePolicy] 单元测试（hotfix 125.1 / v2.3.13.3，定稿 §2.1）。
 *
 * 规格（静音线 0.8→1.0s + 宽限上限 300→400ms 回调）：
 *  - 端点总时长 = 本地 VAD 静音切段 1.0s（hotfix 125.1 由 0.8s 回调，修「说 5 个
 *    字丢后 2 个字」的句中停顿误切回归）+ 弹性宽限 grace：
 *      - 首轮 grace=300ms → 端点 1.3s（停顿保护区间恢复 [1.0s, 1.3s]）；
 *      - 干净收尾逐轮 -100ms，收敛下限 200ms → 端点 1.2s（仍满足 §2.1 验收项⑥
 *        「说完→出结果」P50 ≤1.4s，不劣于 v2.3.12 的 1.6s）；
 *      - 宽限内续说 / 收尾后秒续说 → +300ms 自愈，**上限 400ms**（hotfix 125.1 由
 *        300 恢复——v2.3.13 的 maxGrace==raiseStepMs 把 +300 封死在初值、自愈形同
 *        虚设，是误切回归的机制之一）→ 端点上限 1.4s = v2.3.12 宽限上限水平；
 *  - 误切自愈路径（§3.4 单测清单）：收敛态 200 → +300=500 → 封顶 400 两步到位；
 *  - 尾扫-静音线一致性防错位断言见文件末尾（TAIL_SCAN_SILENCE_MS 与
 *    SpeechEndDetector.DEFAULT_SILENCE_DURATION_S 锁定）。
 */
class EndpointGracePolicyTest {

    private companion object {
        // hotfix 125.1 §2.1：静音线 0.8→1.0s（与 SpeechEndDetector.DEFAULT_SILENCE_DURATION_S
        // 一致；一致性另有专门断言锁定）
        const val VAD_SILENCE_MS = 1000L
        fun newPolicy() = EndpointGracePolicy()
    }

    private fun endpointTotalMs(p: EndpointGracePolicy) = VAD_SILENCE_MS + p.graceMs

    @Test
    fun `首轮宽限300ms - 端点总时长1点3秒 - 停顿保护区间恢复`() {
        val p = newPolicy()
        assertEquals("首轮宽限 300ms（沿用 v2.3.13 口径）", 300L, p.graceMs)
        assertEquals("端点总时长 = 1.0s 切段 + 0.3s 宽限", 1300L, endpointTotalMs(p))
    }

    @Test
    fun `干净收敛 - 首轮300逐轮降至下限200 - 端点1点2秒`() {
        val p = newPolicy()
        p.onCleanFinalize()
        assertEquals("第 1 轮干净收尾 -100ms 即到下限", 200L, p.graceMs)
        assertEquals("端点收敛 1.2s（仍优于 v2.3.12 的 1.6s，P50 ≤1.4s 达标）", 1200L, endpointTotalMs(p))
        p.onCleanFinalize()
        p.onCleanFinalize()
        assertEquals("下限 200ms 封住，仍保留最小弹性窗", 200L, p.graceMs)
    }

    @Test
    fun `宽限内续说自愈 - 收敛态200上调两步到位400 - 端点1点4秒封顶`() {
        // hotfix 125.1 §3.4 核心：v2.3.13 的 maxGrace=300 与 raiseStep=300 相等，
        // +300 永远封顶在 300（自愈失效）；恢复 400 后 200→500→封顶 400 两步到位
        val p = newPolicy()
        p.onCleanFinalize()
        assertEquals(200L, p.graceMs)
        // 第 1 次续说（句中停顿被兜住 = 误切证据）：200+300=500 → 封顶 400
        p.onResumeWithinGrace()
        assertEquals("第 1 次上调 200+300 越过初值，封顶 400（不再被 300 卡死）", 400L, p.graceMs)
        assertEquals("端点上限 1.0+0.4=1.4s = v2.3.12 宽限上限水平", 1400L, endpointTotalMs(p))
        // 第 2 次续说：已在上限，保持 400
        p.onResumeWithinGrace()
        assertEquals("连续上调封顶 400ms", 400L, p.graceMs)
    }

    @Test
    fun `连续上调不超上限400 - 端点1点4秒封顶`() {
        val p = newPolicy()
        repeat(5) { p.onResumeWithinGrace() }
        assertEquals("多次续说上调应封顶 400ms", 400L, p.graceMs)
        assertEquals("端点上限 1.4s", 1400L, endpointTotalMs(p))
    }

    @Test
    fun `完整场景-说话不停顿用户 - 首轮1点3秒一轮后收敛1点2秒`() {
        val p = newPolicy()
        // 轮 1：说完 → 干净收尾（无续说）
        assertEquals(1300L, endpointTotalMs(p))
        p.onCleanFinalize()
        // 轮 2 起稳态（下限 200ms）
        assertEquals("稳态端点 1.2s", 1200L, endpointTotalMs(p))
        p.onCleanFinalize()
        assertEquals(1200L, endpointTotalMs(p))
    }

    @Test
    fun `完整场景-1点1秒句中停顿用户 - 收敛态宽限200兜住 - 不逐轮误切`() {
        // hotfix 125.1 核心受益场景：句中停顿 1.0~1.2s 人群（v2.3.13 下被 0.8s
        // 切段 + 300ms 封顶的宽限逐轮误切 = 「说 5 个字丢后 2 个字」）
        val p = newPolicy()
        p.onCleanFinalize()
        assertEquals("收敛态宽限 200ms", 200L, p.graceMs)
        assertEquals("收敛态端点 1.2s > 1.1s 停顿", 1200L, endpointTotalMs(p))
        // 1.1s 停顿：1.0s 切段 + 100ms 后续说 → 宽限窗（200ms）兜住 → 不误切
        p.onResumeWithinGrace()
        assertEquals("200+300 封顶 400（自愈水位提升，下轮保护更强）", 400L, p.graceMs)
        // 用户说完（干净收尾）→ 重新收敛，伸缩始终有界 [200, 400]ms
        p.onCleanFinalize()
        assertEquals(300L, p.graceMs)
        p.onCleanFinalize()
        assertEquals(200L, p.graceMs)
        assertEquals(1200L, endpointTotalMs(p))
    }

    @Test
    fun `收尾后秒续说上调 - 与宽限内续说同规则复用`() {
        val p = newPolicy()
        p.onCleanFinalize()
        assertEquals(200L, p.graceMs)
        // 上一轮收尾后 2.5s 内又开始说（MainViewModel 接线判定）→ 同一上调入口
        p.onResumeWithinGrace()
        assertEquals("200+300 封顶 400", 400L, p.graceMs)
    }

    // ==================== hotfix 125.1 §3.4：尾扫-静音线一致性防错位 ====================
    // v2.3.13 曾只把 SpeechEndDetector.silenceDuration 收窄到 0.8s、漏改
    // EndpointGraceCoordinator.TAIL_SCAN_SILENCE_MS（同款错位单测兜底，防复发）。

    @Test
    fun `尾扫静音基准与VAD切段静音线一致 - 防参数错位回归`() {
        assertEquals(
            "TAIL_SCAN_SILENCE_MS 必须等于 VAD 切段静音线（DEFAULT_SILENCE_DURATION_S×1000）",
            (SpeechEndDetector.DEFAULT_SILENCE_DURATION_S * 1000).toLong(),
            EndpointGraceCoordinator.TAIL_SCAN_SILENCE_MS
        )
    }

    @Test
    fun `尾扫人声静默阈值严格小于切段静音线加安全余量 - 不伤连续语流`() {
        // TAIL_SCAN_VOICE_QUIET_MS=900 < TAIL_SCAN_SILENCE_MS=1000：说话中 lastVoice
        // 持续刷新 → 尾扫恒 POSTPONE；同时 900 > 1000-100（一个 VAD 窗余量），
        // 静音后不久不提前收尾
        assertTrue(
            EndpointGraceCoordinator.TAIL_SCAN_VOICE_QUIET_MS <
                    EndpointGraceCoordinator.TAIL_SCAN_SILENCE_MS
        )
        assertTrue(
            EndpointGraceCoordinator.TAIL_SCAN_VOICE_QUIET_MS >=
                    EndpointGraceCoordinator.TAIL_SCAN_SILENCE_MS - 100L
        )
    }
}
