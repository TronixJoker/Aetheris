package com.xiaozhi.android.audio

import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * [ListeningSessionWatchdogPolicy] 单元测试（v2.3.11 聆听态悬挂治理）。
 *
 * 覆盖规格（管理员派单「LISTENING 态缺少会话级最长聆听时长兜底看门狗」）：
 *  1. 到期且仍 LISTENING → 强制收尾（「任何异常路径下聆听态不得永久挂起」的
 *     最后防线：VAD 线程瘫痪 / feed 断流 / 尾扫顺延等一切端点链路失效，
 *     最迟 60s 内把聆听态收敛为可恢复的有界会话）；
 *  2. 未到期 → 不动作（绝不误伤正常轮次：正常说完 1.5s 内收尾）；
 *  3. 已到期但状态已离开 LISTENING（正常收尾/被打断/手动停止提前撤销了
 *     看门狗 Job）→ 不动作（双保险：Job 已 cancel 也无法到达判定，此处防御
 *     「Job cancel 失败/排队竞态」的极端情况）；
 *  4. 边界：恰好等于上限（>=）即触发。
 */
class ListeningSessionWatchdogPolicyTest {

    private companion object {
        const val MAX = ListeningSessionWatchdogPolicy.MAX_LISTEN_SESSION_MS
    }

    // ---------- 1. 到期仍聆听：强制收尾 ----------

    @Test
    fun `到期超过上限且仍在聆听 - 强制收尾`() {
        assertTrue(ListeningSessionWatchdogPolicy.shouldForceFinalize(MAX + 1, stillListening = true))
    }

    @Test
    fun `恰好等于上限且仍在聆听 - 强制收尾（含边界）`() {
        assertTrue(ListeningSessionWatchdogPolicy.shouldForceFinalize(MAX, stillListening = true))
    }

    // ---------- 2. 未到期：不动作 ----------

    @Test
    fun `未到期仍在聆听 - 不动作（正常轮次零干扰）`() {
        assertFalse(ListeningSessionWatchdogPolicy.shouldForceFinalize(MAX - 1, stillListening = true))
        assertFalse(ListeningSessionWatchdogPolicy.shouldForceFinalize(0L, stillListening = true))
    }

    // ---------- 3. 状态已离开聆听：不动作 ----------

    @Test
    fun `到期但已正常收尾或被打断 - 不动作`() {
        assertFalse(ListeningSessionWatchdogPolicy.shouldForceFinalize(MAX + 5_000, stillListening = false))
    }

    @Test
    fun `超长时长但已离开聆听 - 不动作（防御极端排队竞态）`() {
        assertFalse(ListeningSessionWatchdogPolicy.shouldForceFinalize(Long.MAX_VALUE, stillListening = false))
    }
}
