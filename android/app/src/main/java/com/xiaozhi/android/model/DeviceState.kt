package com.xiaozhi.android.model

enum class DeviceState {
    IDLE, CONNECTING, LISTENING, SPEAKING
}

enum class ListeningMode {
    REALTIME, AUTO_STOP, MANUAL
}

enum class AbortReason {
    NONE, WAKE_WORD_DETECTED, USER_INTERRUPTION
}