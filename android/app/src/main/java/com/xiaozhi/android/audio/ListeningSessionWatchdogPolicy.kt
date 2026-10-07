package com.xiaozhi.android.audio

/**
 * 会话级最长聆听时长兜底策略（纯 Kotlin，可单测）。
 *
 * 背景（v2.3.11 现网复发「说完话不自动停止、一直聆听」的兜底防线）：
 * v2.3.10 的结果等待看门狗（ResultWaitWatchdogPolicy）只覆盖【收尾后】的
 * WAITING_RESULT / THINKING 两个等待窗口；LISTENING 态本身没有任何时长上限。
 * 端点收尾依赖「本地 VAD 感知 → onSpeechEnd → 宽限收尾」这条链路，链路上任何
 * 一环失效（VAD 工作线程被 native 异常杀死、AudioRecorder 自愈重建期间喂帧
 * 断流导致切段永不完成、持续人声型噪音使尾扫恒顺延等），聆听态就会永久挂起
 * （keepalive 维持连接，不触发空闲断链），用户只能杀 APP 恢复。
 *
 * 策略（不变量「任何异常路径下聆听态都不得永久挂起」的最终防线）：
 *  - 单次聆听会话设最长时长 [MAX_LISTEN_SESSION_MS]，到期仍处于 LISTENING
 *    → 强制收尾（stopListening → WAITING_RESULT → 结果等待看门狗接管）：
 *    服务端若已收到有效语音则正常出结果；若从未收到（feed 断流/门槛挡下），
 *    结果等待看门狗 6s 后自动恢复聆听——把「永久悬挂」收敛为「有界会话 + 可恢复」；
 *  - 正常轮次远短于上限（说完 1.5s 内收尾；最长独白由 15s 强制切段路径兜底），
 *    60s 上限不会误伤真实长对话——它只为异常路径而存在；
 *  - 到期时设备已不在 LISTENING（正常收尾/被打断/手动停止）→ 不动作
 *    （调用方仍须在 stopListening 显式撤销看门狗，双保险）。
 */
object ListeningSessionWatchdogPolicy {

    /**
     * 单次聆听会话的最长时长。
     * 取 60s 的依据：端点正常收尾 1.5s 内；单段语音 15s 强制切段；60s 覆盖
     * 「用户长时间静默后再开口」的正常等待（不限时是旧问题的根源），同时保证
     * 任何悬挂路径都在分钟级内收敛，不再需要用户杀 APP。
     */
    const val MAX_LISTEN_SESSION_MS = 60_000L

    /**
     * 会话级看门狗到期时是否强制收尾。
     * @param sessionElapsedMs 本轮聆听已进行时长（主线程自会话开始累计）
     * @param stillListening 到期时设备是否仍处于 LISTENING 态
     */
    fun shouldForceFinalize(sessionElapsedMs: Long, stillListening: Boolean): Boolean =
        stillListening && sessionElapsedMs >= MAX_LISTEN_SESSION_MS
}
