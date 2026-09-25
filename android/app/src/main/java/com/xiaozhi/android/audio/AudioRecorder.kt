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

    /**
     * 自本次 start() 后是否收到过有效（非全零）音频。
     * 全零帧 = 数字静音 = 麦克风路由失败（典型于唤醒词检测器未释放麦克风时）。
     * 注意：真实麦克风总会有底噪（非零样本），持续全零几乎必然是失效。
     */
    fun hasAudioSinceStart(): Boolean = framesSinceStart > 0 && maxAbsSinceStart > 0

    fun hasPermission(): Boolean =
        ContextCompat.checkSelfPermission(context, Manifest.permission.RECORD_AUDIO) ==
            PackageManager.PERMISSION_GRANTED

    fun isRunning(): Boolean = isRecording

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
                                }
                            }
                        } else {
                            consecutiveZeroFrames = 0
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
            // 重置诊断统计：让 ViewModel 的麦克风健康自检以新音源重新评估
            framesSinceStart = 0
            maxAbsSinceStart = 0
            true
        } catch (e: Exception) {
            Log.e(TAG, "MIC 音源重建失败: ${e.message}")
            false
        }
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