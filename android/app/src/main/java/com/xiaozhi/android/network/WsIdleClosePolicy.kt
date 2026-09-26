package com.xiaozhi.android.network

/**
 * 「1005 重连循环」治理策略（纯 Kotlin，可单测）。
 *
 * ## 背景（v2.3.7 用户回归）
 * 小智服务端对「已连接但长时间无上行音频/消息」的连接会主动关闭，
 * 关闭时可能不带状态码 → okhttp 上报 code=1005（No Status Received）。
 * v2.3.7 的 B1 预检超时会取消聆听，设备从此长时间零上行 →
 * 服务端周期性关闭 → 客户端无条件自动重连 → 再次空闲被关 →
 * 日志面板出现反复「连接断开 1005 → 重连」刷屏。
 *
 * ## 策略（优雅降级，避免无限刷屏）
 * 把「服务端主动关闭 且 本次连接期间客户端没有任何上行活动」定义为
 * **空闲类关闭**（idle close）：
 *  - 连续第 1 次：允许一次快速自动重试（兼容服务端短暂重启/LB 摘除等瞬时抖动）；
 *  - 短窗口内连续第 [MAX_STREAK] 次（说明重连后依旧无人使用、又被空闲超时关闭）：
 *    停止自动重连，优雅降级——用户点按「开始对话」或热词唤醒时
 *    经 startListening → forceReconnect 按需恢复连接。
 *  - 出现以下任一情况则连击清零、恢复常规重连：
 *    连接期间有过上行活动（说明不是空闲问题）、网络异常关闭（onFailure）、
 *    用户主动断开/强制重连、空闲类关闭间隔超过 [STREAK_WINDOW_MS]。
 *
 * 依据 [android.os.SystemClock.elapsedRealtime] 单调时钟时间基（由调用方传入）。
 */
object WsIdleClosePolicy {

    /**
     * 两次空闲类关闭的间隔超过该窗口即视为新一轮（连击清零）。
     * 取 3 分钟：服务端空闲超时一般 1~2 分钟一轮，同属一个空闲周期。
     */
    const val STREAK_WINDOW_MS = 3 * 60 * 1000L

    /**
     * 空闲类关闭连击达到该次数后停止自动重连。
     * =2 意味着一个空闲周期最多刷「断开→重连」两轮日志，而非无限循环。
     */
    const val MAX_STREAK = 2

    /** 空闲关闭连击状态（streak=0 表示当前无连击） */
    data class State(val streak: Int, val lastCloseAtMs: Long)

    val INITIAL: State = State(streak = 0, lastCloseAtMs = 0L)

    /**
     * 记录一次「服务端空闲类关闭」。
     * @param state  当前连击状态
     * @param nowMs  本次关闭时刻（elapsedRealtime 时间基）
     */
    fun onIdleClose(state: State, nowMs: Long): State {
        // 以 streak>0（而非 lastCloseAtMs>0）判断是否已有前序关闭，
        // 避免时间戳 0 与"从未关闭"哨兵值撞车
        val inWindow = state.streak > 0 &&
            nowMs >= state.lastCloseAtMs &&
            nowMs - state.lastCloseAtMs <= STREAK_WINDOW_MS
        val streak = if (inWindow) state.streak + 1 else 1
        return State(streak = streak, lastCloseAtMs = nowMs)
    }

    /** 连击状态复位（有上行活动 / 网络故障 / 用户主动断开 / 强制重连时调用） */
    fun reset(): State = INITIAL

    /** 是否应继续自动重连（false = 优雅降级，停止自动重连） */
    fun shouldAutoReconnect(state: State): Boolean = state.streak < MAX_STREAK
}
