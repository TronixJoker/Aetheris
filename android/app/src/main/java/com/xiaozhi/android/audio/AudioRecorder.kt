package com.xiaozhi.android.audio

import android.Manifest
import android.content.Context
import android.content.pm.PackageManager
import android.media.AudioFormat
import android.media.AudioRecord
import android.media.MediaRecorder
import android.util.Log
import androidx.core.content.ContextCompat
import kotlinx.coroutines.*
import kotlinx.coroutines.flow.MutableSharedFlow
import kotlinx.coroutines.flow.SharedFlow

class AudioRecorder(private val context: Context) {
    companion object {
        private const val TAG = "AudioRecorder"
        private const val SAMPLE_RATE = 16000
        private const val CHANNEL = AudioFormat.CHANNEL_IN_MONO
        private const val FORMAT = AudioFormat.ENCODING_PCM_16BIT
        private const val FRAME_SIZE_MS = 20
        private const val SAMPLES_PER_FRAME = SAMPLE_RATE * FRAME_SIZE_MS / 1000 // 320 samples
        // 连续 50 帧（50×20ms = 1s）绝对全零 → 判定音源路由失效，触发降级
        private const val ZERO_ESCALATE_FRAMES = 50
    }

    private var audioRecord: AudioRecord? = null
    private val scope = CoroutineScope(Dispatchers.IO + SupervisorJob())
    private var isRecording = false
    private var recordJob: Job? = null

    private val _pcmData = MutableSharedFlow<ShortArray>(extraBufferCapacity = 32)
    val pcmData: SharedFlow<ShortArray> = _pcmData

    private val _isRecordingState = MutableSharedFlow<Boolean>(replay = 1)
    val isRecordingState: SharedFlow<Boolean> = _isRecordingState

    // ==================== 麦克风诊断统计（每次 start 重置） ====================
    // 用于检测"录音启动成功但读到数字静音"的麦克风失效（被其他应用占用时的典型表现）
    @Volatile private var framesSinceStart = 0
    @Volatile private var maxAbsSinceStart = 0

    // ==================== 音源自动降级自愈 ====================
    // 部分机型上 VOICE_COMMUNICATION 音源在无通话场景下会输出"数字静音"（全零帧），
    // 这是"APP 听不到用户说话"的设备级根因之一：重启录音无济于事，必须换用普通 MIC 音源。
    // preferredSource 为粘性字段：一旦降级，本次会话内后续所有 start() 均使用 MIC 音源。
    @Volatile private var preferredSource: Int = MediaRecorder.AudioSource.VOICE_COMMUNICATION
    @Volatile private var escalatedToMicSource = false
    private var consecutiveZeroFrames = 0

    // ==================== B2 首帧实证（快速重建 + 轮次上限） ====================
    // 架构师方案 B2：启动 300ms 内全零 → 立即原地重建（不等 1.5s 健康检查）；
    // 连续 3 轮仍全零 → 停止无限自愈，通知 ViewModel 明确提示"麦克风被占用"。
    // silentRebuildRounds：本次聆听会话内"首帧静音重建"已完成的轮数（start() 归零）。
    @Volatile var silentRebuildRounds = 0
        private set

    /**
     * 首帧实证检查点（SystemClock.elapsedRealtime 时间基）：
     * >0 表示有待执行的全零检查（启动时刻 + 300ms）；0 表示本轮已检查过/未启动。
     */
    @Volatile private var firstFrameCheckAtMs = 0L

    /**
     * B5 观测回调：每完成一轮"首帧静音快速重建"时触发。
     * 由 ViewModel 注入，用于输出诊断快照（音源/帧统计/系统采集配置/设备信息）。
     * @param round 本轮重建的序号（1 起）
     */
    var onSilentRebuild: ((round: Int) -> Unit)? = null

    /**
     * B2 轮次上限回调：连续 [MicSelfHealPolicy.MAX_SILENT_ROUNDS] 轮首帧仍全零，
     * 已停止自愈并主动停止采集。由 ViewModel 注入，用于给用户明确提示并复位 UI 状态。
     */
    var onMicSeized: (() -> Unit)? = null

    /**
     * B5 观测回调：VOICE_COMMUNICATION 持续全零触发"音源降级为 MIC"时触发。
     * 由 ViewModel 注入，用于输出诊断快照（该场景是设备级音源路由问题的直接证据）。
     */
    var onSourceEscalated: (() -> Unit)? = null

    /**
     * 自本次 start() 后是否收到过有效（非全零）音频。
     * 全零帧 = 数字静音 = 麦克风路由失败（典型于唤醒词检测器未释放麦克风时）。
     * 注意：真实麦克风总会有底噪（非零样本），持续全零几乎必然是失效。
     */
    fun hasAudioSinceStart(): Boolean = framesSinceStart > 0 && maxAbsSinceStart > 0

    // ==================== B5 观测埋点只读接口 ====================

    /** 当前实际音源名称（VOICE_COMMUNICATION / MIC / UNINITIALIZED），供诊断 dump */
    fun currentSourceName(): String =
        if (audioRecord == null) "UNINITIALIZED" else MicCapturePolicy.sourceName(preferredSource)

    /** 自本次 start() 起已读取的帧数（含全零帧） */
    fun framesReadSinceStart(): Int = framesSinceStart

    /** 自本次 start() 起（或最近一次重建后）帧最大绝对值；0 = 数字静音 */
    fun frameMaxSinceStart(): Int = maxAbsSinceStart

    fun hasPermission(): Boolean =
        ContextCompat.checkSelfPermission(context, Manifest.permission.RECORD_AUDIO) ==
            PackageManager.PERMISSION_GRANTED

    fun isRunning(): Boolean = isRecording

    // ==================== 自身采集会话 ID 追踪（B1 误判修复） ====================
    // AudioManager.activeRecordingConfigurations / AudioRecordingCallback 会把本 APP
    // 自己的 AudioRecord 会话也上报（AudioRecordingConfiguration 无公开 UID 可区分调用方）。
    // v2.3.7 的 B1 未排除自身会话：上一轮 AudioRecord（VOICE_COMMUNICATION 音源，
    // 对应用户埋点 sess=10489 src=VOICE_COMMUNICATION）在列表残留期间被误判为"他方占用"。
    // 记录最近一次创建的会话 ID 供 B1 判定时排除。
    @Volatile
    private var lastAudioSessionId: Int = 0

    /**
     * 当前/最近一次自身采集会话 ID 集合（供 MicCaptureMonitor.awaitMicFree 排除自身）。
     *
     * 注意：AudioRecord.stop/release 后不主动清零——audioserver 的活跃会话列表更新
     * 存在毫秒级滞后，残留期间恰好需要用它排除"自己刚释放的会话"；
     * 音频会话 ID 由系统全局递增分配、几乎不会被复用，保留旧值无副作用。
     */
    fun activeAudioSessionIds(): Set<Int> =
        if (lastAudioSessionId != 0) setOf(lastAudioSessionId) else emptySet()

    fun start(): Boolean {
        if (!hasPermission()) {
            Log.w(TAG, "No RECORD_AUDIO permission")
            return false
        }
        if (isRecording) return true

        val bufferSize = maxOf(
            AudioRecord.getMinBufferSize(SAMPLE_RATE, CHANNEL, FORMAT),
            SAMPLES_PER_FRAME * 2
        )

        try {
            // 使用当前首选音源（默认 VOICE_COMMUNICATION；若曾检测到数字静音已自动降级为 MIC）
            audioRecord = AudioRecord.Builder()
                .setAudioSource(preferredSource)
                .setAudioFormat(
                    AudioFormat.Builder()
                        .setEncoding(FORMAT)
                        .setSampleRate(SAMPLE_RATE)
                        .setChannelMask(CHANNEL)
                        .build()
                )
                .setBufferSizeInBytes(bufferSize)
                .build()

            // 记录自身会话 ID（B1 排除自身会话用）
            audioRecord?.let { lastAudioSessionId = it.audioSessionId }

            // 尝试启用回声消除（AEC）、噪声抑制（NS）和自动增益（AGC）
            // 减少小智自己的 TTS 声音被 VAD 误检测为用户说话
            // 注：仅 VOICE_COMMUNICATION 音源启用；降级为 MIC 后由系统原始链路采集
            if (preferredSource == MediaRecorder.AudioSource.VOICE_COMMUNICATION) {
                try {
                    val ar = audioRecord
                    if (ar != null) {
                        val sessionId = ar.audioSessionId
                        if (android.media.audiofx.AcousticEchoCanceler.isAvailable()) {
                            android.media.audiofx.AcousticEchoCanceler.create(sessionId)?.enabled = true
                        }
                        if (android.media.audiofx.NoiseSuppressor.isAvailable()) {
                            android.media.audiofx.NoiseSuppressor.create(sessionId)?.enabled = true
                        }
                        if (android.media.audiofx.AutomaticGainControl.isAvailable()) {
                            android.media.audiofx.AutomaticGainControl.create(sessionId)?.enabled = true
                        }
                    }
                } catch (e: Exception) {
                    Log.w(TAG, "Audio effects not available: ${e.message}")
                }
            }

            if (audioRecord?.state != AudioRecord.STATE_INITIALIZED) {
                Log.e(TAG, "AudioRecord failed to initialize")
                audioRecord?.release()
                audioRecord = null
                return false
            }

            audioRecord?.startRecording()
            isRecording = true

            // 重置诊断统计
            framesSinceStart = 0
            maxAbsSinceStart = 0

            // B2 首帧实证：每次 start() 重置重建轮数，并设置 300ms 后的首帧检查点
            silentRebuildRounds = 0
            firstFrameCheckAtMs = android.os.SystemClock.elapsedRealtime() +
                MicSelfHealPolicy.FIRST_FRAME_SILENCE_MS

            recordJob = scope.launch {
                val buffer = ShortArray(SAMPLES_PER_FRAME)
                var consecutiveFailures = 0
                while (isActive && isRecording) {
                    val read = audioRecord?.read(buffer, 0, SAMPLES_PER_FRAME) ?: -1
                    if (read > 0) {
                        consecutiveFailures = 0
                        // 诊断统计：帧数 + 本帧最大绝对值（检测数字静音）
                        framesSinceStart++
                        var frameMax = 0
                        for (s in buffer) {
                            val a = if (s < 0) -s.toInt() else s.toInt()
                            if (a > frameMax) frameMax = a
                        }
                        if (frameMax > maxAbsSinceStart) maxAbsSinceStart = frameMax

                        // ===== 音源降级自愈：持续绝对全零 = 音源路由失效 =====
                        // VOICE_COMMUNICATION 在部分机型（无通话上下文时）会永远输出全零，
                        // 此时重启录音/等待都无效，必须换普通 MIC 音源重新建立 AudioRecord。
                        if (frameMax == 0) {
                            consecutiveZeroFrames++
                            if (consecutiveZeroFrames >= ZERO_ESCALATE_FRAMES &&
                                !escalatedToMicSource && isRecording
                            ) {
                                escalatedToMicSource = true
                                Log.w(
                                    TAG,
                                    "数字静音持续 ${ZERO_ESCALATE_FRAMES * FRAME_SIZE_MS}ms，" +
                                        "VOICE_COMMUNICATION 路由失效，自动降级为 MIC 音源重试"
                                )
                                if (recreateWithMicSource()) {
                                    consecutiveZeroFrames = 0
                                    Log.i(TAG, "已切换为 MIC 音源，恢复采集")
                                    // B5 观测埋点：音源降级是设备级路由问题，及时 dump 快照留证
                                    onSourceEscalated?.invoke()
                                }
                            }
                        } else {
                            consecutiveZeroFrames = 0
                        }

                        // ===== B2 首帧实证：到检查点时若仍为纯数字静音 → 立即原地重建 =====
                        // 旧版要等 1.5s 健康检查才反应，这里 300ms 即响应，用户几乎无感。
                        val checkAt = firstFrameCheckAtMs
                        if (checkAt > 0 && android.os.SystemClock.elapsedRealtime() >= checkAt) {
                            firstFrameCheckAtMs = 0 // 无论结论如何，本轮只检查一次
                            if (MicSelfHealPolicy.isFirstFrameSilent(
                                    android.os.SystemClock.elapsedRealtime() -
                                        (checkAt - MicSelfHealPolicy.FIRST_FRAME_SILENCE_MS),
                                    framesSinceStart, maxAbsSinceStart
                                )
                            ) {
                                if (MicSelfHealPolicy.shouldAutoRebuild(silentRebuildRounds)) {
                                    silentRebuildRounds++
                                    Log.w(
                                        TAG,
                                        "B2 首帧实证失败：${MicSelfHealPolicy.FIRST_FRAME_SILENCE_MS}ms 内全零" +
                                            "（src=${MicCapturePolicy.sourceName(preferredSource)}，" +
                                            "frames=$framesSinceStart，frameMax=$maxAbsSinceStart），" +
                                            "立即重建（第 $silentRebuildRounds/${MicSelfHealPolicy.MAX_SILENT_ROUNDS} 轮）"
                                    )
                                    // 原地重建：escalatedToMicSource=false 时会自动升级为 MIC 音源
                                    if (recreateWithMicSource()) {
                                        consecutiveZeroFrames = 0
                                        // 重建后重新武装 300ms 首帧检查点，构成"连续轮次"判定
                                        firstFrameCheckAtMs = android.os.SystemClock.elapsedRealtime() +
                                            MicSelfHealPolicy.FIRST_FRAME_SILENCE_MS
                                        onSilentRebuild?.invoke(silentRebuildRounds)
                                    }
                                } else {
                                    // B2 轮次上限：连续 3 轮仍全零 → 停止无限自愈，交还控制权
                                    Log.e(
                                        TAG,
                                        "B2 连续 ${MicSelfHealPolicy.MAX_SILENT_ROUNDS} 轮首帧仍全零，" +
                                            "判定麦克风被其他应用/系统持续占用，停止自动重建"
                                    )
                                    shutdownCaptureFromLoop(
                                        "B2 连续 ${MicSelfHealPolicy.MAX_SILENT_ROUNDS} 轮首帧静音"
                                    )
                                    onMicSeized?.invoke()
                                    return@launch
                                }
                            }
                        }

                        _pcmData.emit(buffer.copyOf(read))
                    } else {
                        // read 失败：麦克风被系统回收或路由异常
                        consecutiveFailures++
                        if (consecutiveFailures == 10) {
                            Log.e(TAG, "AudioRecord read failed $consecutiveFailures times (last=$read), mic likely lost")
                        }
                        kotlinx.coroutines.delay(50)
                    }
                }
            }

            scope.launch { _isRecordingState.emit(true) }
            Log.i(TAG, "Recording started")
            return true
        } catch (e: Exception) {
            Log.e(TAG, "Failed to start recording: ${e.message}")
            return false
        }
    }

    /**
     * 音源降级自愈：在保持录音会话与读帧循环不中断的前提下，
     * 销毁当前 VOICE_COMMUNICATION 实例并用普通 MIC 音源重建 AudioRecord。
     * 仅在录音读帧协程内调用（与 read 同线程，避免并发访问 audioRecord）。
     * @return 重建并开始采集成功返回 true
     */
    private fun recreateWithMicSource(): Boolean {
        if (!isRecording) return false
        val old = audioRecord
        audioRecord = null
        try {
            old?.stop()
            old?.release()
        } catch (e: Exception) {
            Log.w(TAG, "释放旧 AudioRecord 异常: ${e.message}")
        }
        return try {
            val bufferSize = maxOf(
                AudioRecord.getMinBufferSize(SAMPLE_RATE, CHANNEL, FORMAT),
                SAMPLES_PER_FRAME * 2
            )
            val newRecord = AudioRecord.Builder()
                .setAudioSource(MediaRecorder.AudioSource.MIC)
                .setAudioFormat(
                    AudioFormat.Builder()
                        .setEncoding(FORMAT)
                        .setSampleRate(SAMPLE_RATE)
                        .setChannelMask(CHANNEL)
                        .build()
                )
                .setBufferSizeInBytes(bufferSize)
                .build()
            if (newRecord.state != AudioRecord.STATE_INITIALIZED) {
                Log.e(TAG, "MIC 音源 AudioRecord 初始化失败")
                newRecord.release()
                return false
            }
            newRecord.startRecording()
            audioRecord = newRecord
            // 音源降级重建出的是新 AudioRecord 实例 → 会话 ID 变化，同步更新自身会话记录
            lastAudioSessionId = newRecord.audioSessionId
            // 重置诊断统计：让 ViewModel 的麦克风健康自检以新音源重新评估
            framesSinceStart = 0
            maxAbsSinceStart = 0
            true
        } catch (e: Exception) {
            Log.e(TAG, "MIC 音源重建失败: ${e.message}")
            false
        }
    }

    /**
     * B2 轮次上限专用：在录音读帧协程内部直接释放采集资源并结束循环。
     * 与 stop() 的区别：不取消 recordJob（当前就在 recordJob 里），
     * 仅置位 isRecording 使循环退出，避免自我取消引发的协程边界问题。
     * 仅在录音读帧协程内调用（与 read 同线程，避免并发访问 audioRecord）。
     */
    private fun shutdownCaptureFromLoop(reason: String) {
        isRecording = false
        try {
            audioRecord?.apply {
                stop()
                release()
            }
        } catch (e: Exception) {
            Log.w(TAG, "shutdownCaptureFromLoop 释放 AudioRecord 异常: ${e.message}")
        }
        audioRecord = null
        scope.launch { _isRecordingState.emit(false) }
        Log.e(TAG, "Recording aborted: $reason")
    }

    fun stop() {
        isRecording = false
        recordJob?.cancel()
        try {
            audioRecord?.apply {
                stop()
                release()
            }
        } catch (e: Exception) {
            Log.w(TAG, "Error releasing AudioRecord: ${e.message}")
        }
        audioRecord = null
        scope.launch { _isRecordingState.emit(false) }
        Log.i(TAG, "Recording stopped")
    }

    fun destroy() {
        stop()
        scope.cancel()
    }
}