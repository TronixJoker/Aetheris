package com.xiaozhi.android.network

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * 「结果等待」看门狗策略单测（v2.3.10「识别中悬挂 / 结果半天不出」修复）。
 *
 * 回归场景：端点收尾上报 listen stop 后，客户端对 stt / tts start 无限等待——
 * 服务端 STT/LLM/TTS 任一环节挂起，用户就永远卡在「识别中/思考中」。
 * 修复：两个等待窗口分别设上限（收尾→结果 6s；stt→tts start 15s），
 * 到期仍处于等待态且连接健在 → 自动恢复聆听（有界等待+可继续对话）。
 */
class ResultWaitWatchdogPolicyTest {

    // ---------- 超时常量与阶段映射 ----------

    @Test
    fun `阶段映射 - 收尾窗口与思考窗口分别对应各自超时`() {
        assertEquals(
            ResultWaitWatchdogPolicy.RESULT_WAIT_TIMEOUT_MS,
            ResultWaitWatchdogPolicy.timeoutMs(ResultWaitWatchdogPolicy.WaitPhase.WAIT_RESULT)
        )
        assertEquals(
            ResultWaitWatchdogPolicy.TTS_START_WAIT_TIMEOUT_MS,
            ResultWaitWatchdogPolicy.timeoutMs(ResultWaitWatchdogPolicy.WaitPhase.WAIT_TTS_START)
        )
    }

    @Test
    fun `常量合理性 - 结果窗口应远小于思考窗口且均有界`() {
        // STT 正常往返 0.2~1s：6s 已是数倍冗余，避免长时间黑等
        assertTrue(ResultWaitWatchdogPolicy.RESULT_WAIT_TIMEOUT_MS in 3_000L..10_000L)
        // LLM 正常 1~3s、偶发高峰：15s 上限避免误伤慢思考的正常轮次
        assertTrue(ResultWaitWatchdogPolicy.TTS_START_WAIT_TIMEOUT_MS in 10_000L..30_000L)
        assertTrue(
            "思考窗口应宽于结果窗口（LLM 慢是常态，STT 挂起是异常）",
            ResultWaitWatchdogPolicy.TTS_START_WAIT_TIMEOUT_MS > ResultWaitWatchdogPolicy.RESULT_WAIT_TIMEOUT_MS
        )
    }

    // ---------- 阶段一：收尾→结果（WAIT_RESULT） ----------

    @Test
    fun `仍在等待且已超时且连接健在 - 应恢复`() {
        assertTrue(
            ResultWaitWatchdogPolicy.shouldRecover(
                ResultWaitWatchdogPolicy.WaitPhase.WAIT_RESULT,
                elapsedMs = ResultWaitWatchdogPolicy.RESULT_WAIT_TIMEOUT_MS,
                stillWaiting = true,
                connected = true
            )
        )
    }

    @Test
    fun `尚未超时 - 不恢复（给正常服务端往返留足时间）`() {
        assertFalse(
            ResultWaitWatchdogPolicy.shouldRecover(
                ResultWaitWatchdogPolicy.WaitPhase.WAIT_RESULT,
                elapsedMs = ResultWaitWatchdogPolicy.RESULT_WAIT_TIMEOUT_MS - 1L,
                stillWaiting = true,
                connected = true
            )
        )
    }

    @Test
    fun `结果已到达（状态已推进） - 不恢复`() {
        // stt/tts start 任一到达都会把状态切走（THINKING/SPEAKING）→ 看门狗失效
        assertFalse(
            ResultWaitWatchdogPolicy.shouldRecover(
                ResultWaitWatchdogPolicy.WaitPhase.WAIT_RESULT,
                elapsedMs = ResultWaitWatchdogPolicy.RESULT_WAIT_TIMEOUT_MS + 60_000L,
                stillWaiting = false,
                connected = true
            )
        )
    }

    @Test
    fun `连接已断开 - 不恢复（等待已无意义，交给重连链路）`() {
        assertFalse(
            ResultWaitWatchdogPolicy.shouldRecover(
                ResultWaitWatchdogPolicy.WaitPhase.WAIT_RESULT,
                elapsedMs = ResultWaitWatchdogPolicy.RESULT_WAIT_TIMEOUT_MS,
                stillWaiting = true,
                connected = false
            )
        )
    }

    // ---------- 阶段二：stt→tts start（WAIT_TTS_START） ----------

    @Test
    fun `思考中已超 15s 仍无 tts start - 应恢复`() {
        assertTrue(
            ResultWaitWatchdogPolicy.shouldRecover(
                ResultWaitWatchdogPolicy.WaitPhase.WAIT_TTS_START,
                elapsedMs = ResultWaitWatchdogPolicy.TTS_START_WAIT_TIMEOUT_MS,
                stillWaiting = true,
                connected = true
            )
        )
    }

    @Test
    fun `思考窗口内（慢 LLM 正常轮次） - 不恢复`() {
        assertFalse(
            ResultWaitWatchdogPolicy.shouldRecover(
                ResultWaitWatchdogPolicy.WaitPhase.WAIT_TTS_START,
                elapsedMs = ResultWaitWatchdogPolicy.TTS_START_WAIT_TIMEOUT_MS - 1L,
                stillWaiting = true,
                connected = true
            )
        )
    }

    // ---------- 完整用户时间线（回归模拟） ----------

    @Test
    fun `回归时间线 - 说完话卡识别中_6s 后自动恢复聆听`() {
        // t=0 端点收尾（WAITING_RESULT），t=6s 服务端仍未返回 stt
        val t0 = 0L
        val t6s = ResultWaitWatchdogPolicy.RESULT_WAIT_TIMEOUT_MS
        // 到期前：等待
        assertFalse(
            ResultWaitWatchdogPolicy.shouldRecover(
                ResultWaitWatchdogPolicy.WaitPhase.WAIT_RESULT, elapsedMs = 5_999L,
                stillWaiting = true, connected = true
            )
        )
        // 到期：恢复聆听
        assertTrue(
            ResultWaitWatchdogPolicy.shouldRecover(
                ResultWaitWatchdogPolicy.WaitPhase.WAIT_RESULT, elapsedMs = t6s - t0,
                stillWaiting = true, connected = true
            )
        )
    }

    @Test
    fun `回归时间线 - stt 已出但 AI 半天不开口_15s 后自动恢复聆听`() {
        // 阶段一在 stt 到达时解除；阶段二挂载后 15s 仍 THINKING → 恢复
        assertTrue(
            ResultWaitWatchdogPolicy.shouldRecover(
                ResultWaitWatchdogPolicy.WaitPhase.WAIT_TTS_START,
                elapsedMs = 15_000L, stillWaiting = true, connected = true
            )
        )
    }
}
