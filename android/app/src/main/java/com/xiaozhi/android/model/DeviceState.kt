package com.xiaozhi.android.model

enum class DeviceState {
    IDLE, CONNECTING, LISTENING, SPEAKING, THINKING,

    /**
     * 「识别中」：客户端端点已收尾（stopListening 已上报），本轮对话的识别结果
     * 尚未从服务端返回。v2.3.10 修复引入——旧实现此窗口直接回落 IDLE，
     * UI 显示「点击按钮开始对话」，与「会话仍在进行、服务端正在识别」的事实
     * 相悖，用户会误以为对话已被打断/卡死（09-30 用户反馈的「识别中」悬挂感）。
     * 收到非空 stt → THINKING；收到 tts start → SPEAKING；手动停止/断连 → IDLE。
     * 本状态由结果等待看门狗（ResultWaitWatchdogPolicy）兜底超时恢复。
     */
    WAITING_RESULT
}

enum class ListeningMode {
    REALTIME, AUTO_STOP, MANUAL
}

enum class AbortReason {
    NONE, WAKE_WORD_DETECTED, USER_INTERRUPTION
}