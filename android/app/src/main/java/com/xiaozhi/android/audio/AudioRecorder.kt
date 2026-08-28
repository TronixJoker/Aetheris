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
            audioRecord = AudioRecord.Builder()
                .setAudioSource(MediaRecorder.AudioSource.VOICE_COMMUNICATION)
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