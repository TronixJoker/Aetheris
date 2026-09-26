package com.xiaozhi.android.audio

import android.media.AudioManager
import android.media.AudioRecordingConfiguration
import android.media.MediaRecorder
import android.os.Handler
import android.os.Looper
import android.os.SystemClock
import android.util.Log
import kotlinx.coroutines.channels.Channel
import kotlinx.coroutines.withTimeoutOrNull

/**
 * 采集会话摘要（对 [AudioRecordingConfiguration] 的最小化建模）。
 * 抽出为简单数据类的原因：AudioRecordingConfiguration 无法在纯 JVM 单测中构造，
 * 策略逻辑全部下沉到 [MicCapturePolicy]，Android 侧只做映射。
 */
data class MicClientInfo(
    /** 采集客户端的音频会话 ID */
    val sessionId: Int,
    /** 采集客户端的 AudioSource 原始值 */
    val source: Int
)

/**
 * B1/B5 纯策略：他方采集客户端判定与摘要格式化（可单测）。
 *
 * 依据 Android 官方"共享音频输入"机制：
 * `AudioManager.activeRecordingConfigurations` 列出当前所有活跃采集会话。
 * 本 APP 尚未启动自己的 AudioRecord 时，列表里任何会话都是"他方"
 * （典型：系统 SpeechRecognizer 热词识别服务）。他方仍在采集时，
 * Android 10+ 的并发捕获策略会把后台态第三方 APP 直接静音（录到全零）。
 */
object MicCapturePolicy {

    /** 上报给 B5 观测埋点的摘要里最多列出的会话条数（防止极端刷屏） */
    const val MAX_DUMP_SESSIONS = 8

    /**
     * 是否存在"他方"采集客户端。
     *
     * @param configs 当前活跃采集会话列表
     * @param ownSessionIds 需要排除的"自己"会话 ID（例如 AudioRecord.audioSessionId；
     *        空集表示无法排除任何会话，此时任何会话都算他方）。
     *        注意：AudioRecordingCallback 会回调本 APP 自身的录音会话，且公开 API
     *        无法按 UID 区分调用方，调用方必须传入自身会话集（见
     *        AudioRecorder.activeAudioSessionIds()），否则会把自己上一轮的
     *        VOICE_COMMUNICATION 会话误判为他方（v2.3.7 回归根因之一）
     */
    fun hasOtherPartyClients(configs: List<MicClientInfo>, ownSessionIds: Set<Int> = emptySet()): Boolean =
        configs.any { it.sessionId !in ownSessionIds }

    /**
     * AudioSource 数值 → 可读名称（用于日志/埋点）。
     * 常量为编译期常量，单测中引用安全。
     */
    fun sourceName(source: Int): String = when (source) {
        MediaRecorder.AudioSource.DEFAULT -> "DEFAULT"
        MediaRecorder.AudioSource.MIC -> "MIC"
        MediaRecorder.AudioSource.VOICE_COMMUNICATION -> "VOICE_COMMUNICATION"
        MediaRecorder.AudioSource.VOICE_RECOGNITION -> "VOICE_RECOGNITION"
        MediaRecorder.AudioSource.VOICE_CALL -> "VOICE_CALL"
        MediaRecorder.AudioSource.VOICE_UPLINK -> "VOICE_UPLINK"
        MediaRecorder.AudioSource.VOICE_DOWNLINK -> "VOICE_DOWNLINK"
        MediaRecorder.AudioSource.CAMCORDER -> "CAMCORDER"
        MediaRecorder.AudioSource.UNPROCESSED -> "UNPROCESSED"
        else -> "SOURCE_$source"
    }

    /**
     * 生成 B5 观测埋点用的摘要串，例如：
     * `2个会话 [sess=123 src=VOICE_RECOGNITION] [sess=456 src=MIC]`
     * 无活跃会话时返回 `无活跃采集会话`。
     */
    fun summarize(configs: List<MicClientInfo>): String {
        if (configs.isEmpty()) return "无活跃采集会话"
        val head = configs.take(MAX_DUMP_SESSIONS)
            .joinToString(" ") { "[sess=${it.sessionId} src=${sourceName(it.source)}]" }
        val overflow = if (configs.size > MAX_DUMP_SESSIONS) " …(+${configs.size - MAX_DUMP_SESSIONS})" else ""
        return "${configs.size}个会话 $head$overflow"
    }
}

/**
 * B1 麦克风占用监听器：事件驱动等待"无他方采集客户端"后再启动 AudioRecord。
 *
 * 实现要点（对应架构师方案 B1）：
 *  1. 通过 [AudioManager.registerAudioRecordingCallback] 注册采集会话变化回调，
 *     每次系统采集会话增减都会触发信号（事件驱动，不等固定延时瞎猜）；
 *  2. 等待循环同时保留 100ms 轮询兜底（部分 ROM 回调时机不稳）；
 *  3. 最多等 [DEFAULT_TIMEOUT_MS]（2s），超时返回 false，由调用方给出明确提示并终止本次启动——
 *     彻底替代旧的 400/600/500ms 经验值等待。
 */
class MicCaptureMonitor(private val audioManager: AudioManager) {

    companion object {
        private const val TAG = "MicCaptureMonitor"
        /** B1 最长等待时间（ms）：超过即判定麦克风被持续占用 */
        const val DEFAULT_TIMEOUT_MS = 2000L
        /** 轮询兜底间隔（ms） */
        private const val POLL_INTERVAL_MS = 100L
    }

    /** 采集会话变化信号（CONFLATED：连续多次变化只保留最新一次） */
    private val configChanged = Channel<Unit>(Channel.CONFLATED)

    private val callback = object : AudioManager.AudioRecordingCallback() {
        override fun onRecordingConfigChanged(configs: MutableList<AudioRecordingConfiguration>) {
            // 系统采集会话发生变化：发信号唤醒等待方（事件驱动）
            configChanged.trySend(Unit)
        }
    }

    private val mainHandler = Handler(Looper.getMainLooper())
    private var registered = false

    private fun ensureRegistered() {
        if (registered) return
        try {
            audioManager.registerAudioRecordingCallback(callback, mainHandler)
            registered = true
        } catch (e: Exception) {
            Log.w(TAG, "registerAudioRecordingCallback 失败: ${e.message}")
        }
    }

    private fun unregisterIfRegistered() {
        if (!registered) return
        try {
            audioManager.unregisterAudioRecordingCallback(callback)
        } catch (e: Exception) {
            Log.w(TAG, "unregisterAudioRecordingCallback 失败: ${e.message}")
        }
        registered = false
    }

    /** 读取当前活跃采集会话并映射为 [MicClientInfo] */
    private fun currentClients(): List<MicClientInfo> =
        try {
            audioManager.activeRecordingConfigurations
                .orEmpty()
                .map { MicClientInfo(it.clientAudioSessionId, it.clientAudioSource) }
        } catch (e: Exception) {
            Log.w(TAG, "读取 activeRecordingConfigurations 失败: ${e.message}")
            emptyList()
        }

    /**
     * B1 观测等待：挂起等待"无他方采集客户端"（事件驱动 + 100ms 轮询兜底）。
     *
     * ⚠️ v2.3.7 回归修复：本方法结果已降级为「提示」语义——
     * false 只代表"等待超时时仍观测到疑似他方会话"，调用方【不得】据此取消本次聆听：
     *   - 观测结果可能误判（自身会话残留无法从公开 API 与他方区分，仅能按会话 ID 排除）；
     *   - 部分机型系统 SpeechRecognizer 常驻不释放，等待多久都不会空闲；
     * 麦克风真伪由 B2 首帧实证判定（真实被抢占必然录到全零，可自愈）。
     *
     * @param timeoutMs 最长观测等待时间（默认 2s）
     * @param ownSessionIds 需要排除的自身会话 ID（AudioRecorder.activeAudioSessionIds()；
     *        AudioRecordingCallback 会回调自身录音会话，不排除会把上一轮自己的
     *        VOICE_COMMUNICATION 会话误判为他方）
     * @return true = 观测窗口内麦克风已空闲；false = 超时仍观测到疑似他方会话（仅提示用）
     */
    suspend fun awaitMicFree(
        timeoutMs: Long = DEFAULT_TIMEOUT_MS,
        ownSessionIds: Set<Int> = emptySet()
    ): Boolean {
        ensureRegistered()
        // 进入等待前先排空历史信号，只对"等待期间的新变化"作出反应
        while (configChanged.tryReceive().isSuccess) { /* drain */ }
        val deadline = SystemClock.elapsedRealtime() + timeoutMs
        try {
            while (true) {
                if (!MicCapturePolicy.hasOtherPartyClients(currentClients(), ownSessionIds)) {
                    return true
                }
                val remaining = deadline - SystemClock.elapsedRealtime()
                if (remaining <= 0) {
                    return !MicCapturePolicy.hasOtherPartyClients(currentClients(), ownSessionIds)
                }
                // 事件驱动：等回调信号最多 POLL_INTERVAL_MS；到点后兜底轮询
                withTimeoutOrNull(minOf(POLL_INTERVAL_MS, remaining)) {
                    configChanged.receive()
                }
            }
        } finally {
            unregisterIfRegistered()
        }
    }

    /**
     * B5 观测埋点：生成当前活跃采集会话摘要（不含设备信息，由调用方拼接）。
     */
    fun dumpActiveConfigurations(): String =
        try {
            MicCapturePolicy.summarize(currentClients())
        } catch (e: Exception) {
            "摘要获取失败: ${e.message}"
        }
}
