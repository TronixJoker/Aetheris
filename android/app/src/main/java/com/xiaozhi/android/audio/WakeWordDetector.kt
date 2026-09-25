package com.xiaozhi.android.audio

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.os.Handler
import android.os.Looper
import android.speech.RecognitionListener
import android.speech.RecognizerIntent
import android.speech.SpeechRecognizer
import android.util.Log

/**
 * 语音热词唤醒检测器。
 * 利用 Android 系统 SpeechRecognizer 持续监听语音，检测到"珩杬"（APP 名称）时回调。
 *
 * 注意：SpeechRecognizer 占用麦克风，与 AudioRecorder 不可同时使用。
 * 调用方需在 IDLE 状态下启动检测，在聆听/说话前停止检测。
 */
class WakeWordDetector(
    private val context: Context,
    private val onWakeWordDetected: () -> Unit
) {
    companion object {
        private const val TAG = "WakeWordDetector"
        // 热词"珩杬"及可能的识别变体（同音字/近似音）
        private val WAKE_WORDS = listOf(
            "珩杬", "衡远", "恒远", "珩远", "衡元", "横远", "哼远",
            "行远", "恒元", "衡原", "珩元", "恒原", "衡愿", "珩原"
        )
        private const val RESTART_DELAY_MS = 500L
    }

    private var speechRecognizer: SpeechRecognizer? = null
    // 对外可见的运行状态（供 ViewModel 判断是否需要等麦克风释放）
    @Volatile
    var isRunning = false
        private set

    /**
     * 最近一次本检测器"实际释放/开始释放麦克风"的时间戳（SystemClock 时间基）。
     * 注意：唤醒词命中路径会先把 isRunning 置 false 再回调，
     * 调用方若只看 isRunning 会误判"没在用麦克风"而跳过等待，
     * 导致 AudioRecord 与系统 SpeechRecognizer 抢麦克风 → 录到数字静音。
     * 因此 ViewModel 应同时检查该时间戳：距今 <600ms 视为"麦克风刚释放"，仍需等待。
     */
    @Volatile
    var lastMicReleaseTimeMs = 0L
        private set
    private val handler = Handler(Looper.getMainLooper())

    fun start() {
        if (isRunning) return
        if (!SpeechRecognizer.isRecognitionAvailable(context)) {
            Log.w(TAG, "Speech recognition not available on this device")
            return
        }
        handler.post {
            if (isRunning) return@post
            isRunning = true
            try {
                speechRecognizer = SpeechRecognizer.createSpeechRecognizer(context)
                speechRecognizer?.setRecognitionListener(WakeRecognitionListener())
                startListening()
                Log.i(TAG, "热词检测已启动（唤醒词：珩杬）")
            } catch (e: Exception) {
                Log.e(TAG, "Failed to start wake word detector: ${e.message}")
                isRunning = false
            }
        }
    }

    private fun startListening() {
        if (!isRunning) return
        val intent = Intent(RecognizerIntent.ACTION_RECOGNIZE_SPEECH).apply {
            putExtra(RecognizerIntent.EXTRA_LANGUAGE_MODEL, RecognizerIntent.LANGUAGE_MODEL_FREE_FORM)
            putExtra(RecognizerIntent.EXTRA_LANGUAGE, "zh-CN")
            putExtra(RecognizerIntent.EXTRA_PARTIAL_RESULTS, true)
            putExtra(RecognizerIntent.EXTRA_MAX_RESULTS, 5)
        }
        try {
            speechRecognizer?.startListening(intent)
        } catch (e: Exception) {
            Log.e(TAG, "startListening failed: ${e.message}, retrying...")
            handler.postDelayed({ if (isRunning) startListening() }, RESTART_DELAY_MS)
        }
    }

    fun stop() {
        handler.post {
            isRunning = false
            // 记录麦克风开始释放的时刻（stopListening/destroy 后系统异步归还音频输入）
            lastMicReleaseTimeMs = android.os.SystemClock.elapsedRealtime()
            try {
                speechRecognizer?.stopListening()
                speechRecognizer?.destroy()
            } catch (e: Exception) {
                Log.w(TAG, "Error stopping: ${e.message}")
            }
            speechRecognizer = null
            Log.i(TAG, "热词检测已停止")
        }
    }

    private fun checkWakeWord(text: String): Boolean {
        val cleaned = text.lowercase()
            .replace(" ", "")
            .replace(",", "")
            .replace("。", "")
            .replace(".", "")
            .replace("?", "")
            .replace("？", "")
            .replace("!", "")
            .replace("！", "")
        if (cleaned.length < 2) return false
        return WAKE_WORDS.any { wake -> cleaned.contains(wake) || wake.contains(cleaned) }
    }

    private inner class WakeRecognitionListener : RecognitionListener {
        override fun onReadyForSpeech(params: Bundle?) {}
        override fun onBeginningOfSpeech() {}
        override fun onRmsChanged(rmsdB: Float) {}
        override fun onBufferReceived(buffer: ByteArray?) {}
        override fun onEndOfSpeech() {}

        override fun onError(error: Int) {
            val errMsg = when (error) {
                SpeechRecognizer.ERROR_NO_MATCH -> "no_match"
                SpeechRecognizer.ERROR_SPEECH_TIMEOUT -> "speech_timeout"
                SpeechRecognizer.ERROR_AUDIO -> "audio_error"
                SpeechRecognizer.ERROR_RECOGNIZER_BUSY -> "recognizer_busy"
                SpeechRecognizer.ERROR_CLIENT -> "client_error"
                SpeechRecognizer.ERROR_NETWORK -> "network_error"
                SpeechRecognizer.ERROR_NETWORK_TIMEOUT -> "network_timeout"
                SpeechRecognizer.ERROR_INSUFFICIENT_PERMISSIONS -> "no_permission"
                else -> "error_$error"
            }
            Log.w(TAG, "识别错误: $errMsg, 重启中...")
            handler.postDelayed({ if (isRunning) startListening() }, RESTART_DELAY_MS)
        }

        override fun onResults(results: Bundle?) {
            val matches = results?.getStringArrayList(SpeechRecognizer.RESULTS_RECOGNITION)
            if (matches != null) {
                for (match in matches) {
                    if (checkWakeWord(match)) {
                        Log.i(TAG, "检测到唤醒词: $match")
                        isRunning = false
                        // 唤醒词命中：立即释放麦克风并记录释放时刻，
                        // 供 ViewModel 判断需要等待系统归还音频输入（避免抢麦克风录到全零）
                        lastMicReleaseTimeMs = android.os.SystemClock.elapsedRealtime()
                        try {
                            speechRecognizer?.stopListening()
                            // destroy 确保识别器真正归还音频输入（仅 stopListening 部分机型不释放）
                            speechRecognizer?.destroy()
                            speechRecognizer = null
                        } catch (_: Exception) {}
                        onWakeWordDetected()
                        return
                    }
                }
            }
            handler.postDelayed({ if (isRunning) startListening() }, 300L)
        }

        override fun onPartialResults(partialResults: Bundle?) {
            val matches = partialResults?.getStringArrayList(SpeechRecognizer.RESULTS_RECOGNITION)
            if (matches != null) {
                for (match in matches) {
                    if (checkWakeWord(match)) {
                        Log.i(TAG, "检测到唤醒词(实时): $match")
                        isRunning = false
                        // 唤醒词命中：立即释放麦克风并记录释放时刻，
                        // 供 ViewModel 判断需要等待系统归还音频输入（避免抢麦克风录到全零）
                        lastMicReleaseTimeMs = android.os.SystemClock.elapsedRealtime()
                        try {
                            speechRecognizer?.stopListening()
                            // destroy 确保识别器真正归还音频输入（仅 stopListening 部分机型不释放）
                            speechRecognizer?.destroy()
                            speechRecognizer = null
                        } catch (_: Exception) {}
                        onWakeWordDetected()
                        return
                    }
                }
            }
        }

        override fun onEvent(eventType: Int, params: Bundle?) {}
    }
}
