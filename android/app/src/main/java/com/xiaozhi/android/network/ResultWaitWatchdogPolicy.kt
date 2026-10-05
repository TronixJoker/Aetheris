package com.xiaozhi.android.network

/**
 * 「结果等待」看门狗策略（纯 Kotlin，可单测）。
 *
 * 背景（v2.3.10 用户反馈 09-30）：
 *  1. 「说完话后仍停留在识别中，迟迟不结束」——客户端端点收尾上报 listen stop 后，
 *     若服务端迟迟/永不返回 stt（STT 服务异常、音频被判空、网络半开等），
 *     客户端没有任何超时兜底，永远停在等待态，用户只能杀 APP 恢复；
 *  2. 「停止之后半天识别不出内容」——stt 已返回（THINKING）后，若 LLM/TTS 链路
 *     挂起导致 tts start 永不到达，同样无限等待。
 *
 * 策略（与 B1/B2 的「不拦截、实证、有界自愈」同一设计哲学）：
 * 客户端对两个等待窗口分别设定上限，到期仍处于对应等待态且连接健在时，
 * 提示用户并自动恢复聆听（tryStartListeningInternal），把「无限悬挂」收敛为
 * 「有界等待 + 可继续对话」。服务端稍后补发的结果仍会被正常处理
 * （stt→THINKING / tts start→SPEAKING 的状态切换不依赖看门狗）。
 *
 * 不覆盖的场景（刻意收窄，避免误伤正常慢链路）：
 *  - SPEAKING 阶段的 tts stop 等待：由 1005 治理（WsIdleClosePolicy）与
 *    用户手动停止兜底，不在此重复设防。
 *  - 断连状态：等待已无意义，看门狗到期检查连接健在才动作。
 */
object ResultWaitWatchdogPolicy {

    /**
     * 等待阶段一：端点收尾（listen stop 已上报）→ 等待首个 stt / tts start。
     * 上限 6s：正常服务端 STT 往返 0.2~1s；6s 仍无结果基本可判定链路异常
     * （或整句被上传门槛挡下——此时 stt 大概率为空，空 stt 分支会自行提示）。
     */
    const val RESULT_WAIT_TIMEOUT_MS = 6_000L

    /**
     * 等待阶段二：非空 stt 已到（THINKING）→ 等待 tts start。
     * 上限 15s：LLM 正常耗时 1~3s，考虑服务端偶发高峰放宽到 15s，
     * 过紧会打断「长上下文慢思考」的正常轮次。
     */
    const val TTS_START_WAIT_TIMEOUT_MS = 15_000L

    /** 看门狗覆盖的两个等待阶段。 */
    enum class WaitPhase { WAIT_RESULT, WAIT_TTS_START }

    /** 阶段对应的超时上限。 */
    fun timeoutMs(phase: WaitPhase): Long = when (phase) {
        WaitPhase.WAIT_RESULT -> RESULT_WAIT_TIMEOUT_MS
        WaitPhase.WAIT_TTS_START -> TTS_START_WAIT_TIMEOUT_MS
    }

    /**
     * 看门狗到期时是否执行恢复。
     * @param phase 等待阶段（决定超时常量）
     * @param elapsedMs 自挂载看门狗起经过的毫秒数
     * @param stillWaiting 设备状态是否仍处于该阶段对应的等待态
     *   （WAIT_RESULT→WAITING_RESULT / WAIT_TTS_START→THINKING）
     * @param connected WebSocket 是否仍处于 CONNECTED（断连时恢复无意义）
     */
    fun shouldRecover(
        phase: WaitPhase,
        elapsedMs: Long,
        stillWaiting: Boolean,
        connected: Boolean
    ): Boolean {
        if (!stillWaiting) return false
        if (!connected) return false
        return elapsedMs >= timeoutMs(phase)
    }
}
