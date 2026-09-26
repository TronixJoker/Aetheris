package com.xiaozhi.android.network

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * 「1005 重连循环」治理策略单测（v2.3.7 回归修复）。
 *
 * 回归场景：B1 超时取消聆听后设备长时间零上行，服务端主动关闭（1005），
 * 客户端无条件自动重连 → 再次空闲被关 → 「连接断开 1005 → 重连」无限刷屏。
 * 修复策略：服务端空闲类关闭按 [WsIdleClosePolicy] 连击降级——
 * 窗口内连击达到上限后停止自动重连，待用户点按「开始对话」按需恢复。
 */
class WsIdleClosePolicyTest {

    // ---------- 基础连击行为 ----------

    @Test
    fun `初始状态应自动重连`() {
        assertTrue(WsIdleClosePolicy.shouldAutoReconnect(WsIdleClosePolicy.INITIAL))
    }

    @Test
    fun `第一次空闲关闭 - 允许一次快速重试`() {
        val s1 = WsIdleClosePolicy.onIdleClose(WsIdleClosePolicy.INITIAL, nowMs = 1000L)
        assertEquals(1, s1.streak)
        assertTrue("第 1 次空闲关闭仍应自动重连（兼容瞬时抖动）", WsIdleClosePolicy.shouldAutoReconnect(s1))
    }

    @Test
    fun `窗口内第二次空闲关闭 - 停止自动重连避免刷屏`() {
        val s1 = WsIdleClosePolicy.onIdleClose(WsIdleClosePolicy.INITIAL, nowMs = 1000L)
        val s2 = WsIdleClosePolicy.onIdleClose(s1, nowMs = 1000L + 60_000L)
        assertEquals(2, s2.streak)
        assertFalse("连击达上限应停止自动重连（优雅降级）", WsIdleClosePolicy.shouldAutoReconnect(s2))
    }

    @Test
    fun `窗口内第三次及以上 - 保持停止自动重连`() {
        var s = WsIdleClosePolicy.INITIAL
        var now = 1000L
        repeat(4) {
            s = WsIdleClosePolicy.onIdleClose(s, now)
            now += 60_000L
        }
        assertEquals(4, s.streak)
        assertFalse(WsIdleClosePolicy.shouldAutoReconnect(s))
    }

    // ---------- 窗口边界 ----------

    @Test
    fun `超过窗口间隔 - 连击清零重新计数`() {
        val s1 = WsIdleClosePolicy.onIdleClose(WsIdleClosePolicy.INITIAL, nowMs = 0L)
        // 距上次关闭 > STREAK_WINDOW_MS → 视为新一轮空闲周期
        val s2 = WsIdleClosePolicy.onIdleClose(s1, nowMs = WsIdleClosePolicy.STREAK_WINDOW_MS + 1L)
        assertEquals(1, s2.streak)
        assertTrue(WsIdleClosePolicy.shouldAutoReconnect(s2))
    }

    @Test
    fun `恰好等于窗口间隔 - 仍算同一轮连击`() {
        val s1 = WsIdleClosePolicy.onIdleClose(WsIdleClosePolicy.INITIAL, nowMs = 0L)
        val s2 = WsIdleClosePolicy.onIdleClose(s1, nowMs = WsIdleClosePolicy.STREAK_WINDOW_MS)
        assertEquals(2, s2.streak)
        assertFalse(WsIdleClosePolicy.shouldAutoReconnect(s2))
    }

    @Test
    fun `时钟回退保护 - 间隔为负按新一轮处理`() {
        val s1 = WsIdleClosePolicy.onIdleClose(WsIdleClosePolicy.INITIAL, nowMs = 10_000L)
        val s2 = WsIdleClosePolicy.onIdleClose(s1, nowMs = 5_000L)
        assertEquals(1, s2.streak)
    }

    // ---------- 复位语义 ----------

    @Test
    fun `复位后连击清零恢复自动重连`() {
        var s = WsIdleClosePolicy.INITIAL
        var now = 0L
        repeat(2) {
            s = WsIdleClosePolicy.onIdleClose(s, now)
            now += 60_000L
        }
        assertFalse(WsIdleClosePolicy.shouldAutoReconnect(s))
        // 用户点按「开始对话」→ forceReconnect → reset
        s = WsIdleClosePolicy.reset()
        assertTrue(WsIdleClosePolicy.shouldAutoReconnect(s))
        assertEquals(0, s.streak)
    }

    // ---------- 完整用户时间线（回归模拟） ----------

    @Test
    fun `回归时间线 - 空闲被关两轮后停连_用户点按后恢复`() {
        // 模拟用户设备：服务端每 ~90s 关闭一次空闲连接
        var state = WsIdleClosePolicy.INITIAL
        var now = 0L
        // 第 1 轮：连接 → 零上行 → 服务端关闭 → 允许重试
        state = WsIdleClosePolicy.onIdleClose(state, now)
        now += 90_000L
        assertTrue(WsIdleClosePolicy.shouldAutoReconnect(state))
        // 第 2 轮：重连 → 依旧零上行 → 又被关闭 → 停止自动重连（刷屏终止）
        state = WsIdleClosePolicy.onIdleClose(state, now)
        now += 90_000L
        assertFalse(WsIdleClosePolicy.shouldAutoReconnect(state))
        // 用户点按开始对话 → reset + forceReconnect → 恢复正常
        state = WsIdleClosePolicy.reset()
        assertTrue(WsIdleClosePolicy.shouldAutoReconnect(state))
    }

    @Test
    fun `复位语义契约 - 有上行活动或网络故障后由调用方复位恢复重连`() {
        // 策略契约：upstreamActivitySinceConnect=true 或 onFailure 时调用方走 reset() 分支。
        // 本用例锁定"复位后即恢复自动重连"的行为，防止误改
        val s = WsIdleClosePolicy.onIdleClose(WsIdleClosePolicy.INITIAL, 0L)
        assertTrue(WsIdleClosePolicy.shouldAutoReconnect(WsIdleClosePolicy.reset()))
        assertEquals(1, s.streak)
    }

    @Test
    fun `常量合理性 - 窗口应覆盖典型服务端空闲超时周期`() {
        // 服务端空闲超时一般 1~2 分钟一轮；窗口取 3 分钟应把同周期内的关闭计为连击
        assertTrue("窗口过短会把同周期关闭拆成多轮，弱化降级效果", WsIdleClosePolicy.STREAK_WINDOW_MS >= 120_000L)
        assertTrue("连击上限必须 >= 2：至少保留一次快速重试", WsIdleClosePolicy.MAX_STREAK >= 2)
    }
}
