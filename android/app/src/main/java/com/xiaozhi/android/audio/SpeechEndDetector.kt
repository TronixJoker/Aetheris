package com.xiaozhi.android.audio

import android.content.Context
import android.util.Log
import com.k2fsa.sherpa.onnx.SileroVadModelConfig
import com.k2fsa.sherpa.onnx.Vad
import com.k2fsa.sherpa.onnx.VadModelConfig
import java.util.concurrent.ConcurrentLinkedQueue

/**
 * 语音端点检测器（客户端本地 VAD）。
 *
 * 解决"说完话一直处于聆听状态、不自动停止识别"的问题：
 * 持续接收麦克风音频（16kHz / 单声道 / ShortArray 帧），
 * 当检测到一段语音结束（说完话后静音超过阈值）时触发回调。
 *
 * 线程模型：
 * - [feed] 在录音回调线程调用，只做入队，不做推理
 * - 推理在内部工作线程执行，回调（[onSpeechEnd]）也在该线程
 * - 仅在 arm 状态（LISTENING）下才处理音频
 */
class SpeechEndDetector(private val context: Context) {

    companion object {
        private const val TAG = "SpeechEndDetector"
        private const val SAMPLE_RATE = 16000
        // silero VAD 固定窗口（16kHz 下 512 样本 ≈ 32ms）
        private const val WINDOW_SIZE = 512
    }

    /** 语音结束回调：samples = 该段语音的 float 样本，durationMs = 时长（工作线程调用） */
    @Volatile
    var onSpeechEnd: ((samples: FloatArray, durationMs: Long) -> Unit)? = null

    /** 检测灵敏度（0-1，越低越灵敏），启动前设置 */
    var threshold = 0.5f

    /** 判定说完话的静音时长（秒），启动前设置 */
    var silenceDuration = 0.7f

    private var vad: Vad? = null
    private val pendingFrames = ConcurrentLinkedQueue<ShortArray>()
    private val sampleBuffer = ArrayList<Float>(WINDOW_SIZE * 4)
    private var worker: Thread? = null

    @Volatile
    private var running = false

    @Volatile
    private var active = false

    /** 加载模型并启动工作线程。必须在后台线程调用。 */
    fun start(): Boolean {
        if (running) return true
        return try {
            val config = VadModelConfig(
                sileroVadModelConfig = SileroVadModelConfig(
                    model = "models/silero_vad.onnx",
                    threshold = threshold,
                    minSpeechDuration = 0.25f,
                    minSilenceDuration = silenceDuration,
                ),
                sampleRate = SAMPLE_RATE,
                numThreads = 1,
            )
            vad = Vad(context.assets, config)
            running = true
            worker = Thread(this::processLoop, "vad-worker").apply {
                isDaemon = true
                start()
            }
            Log.i(TAG, "VAD 已启动 (threshold=$threshold, silence=${silenceDuration}s)")
            true
        } catch (e: Exception) {
            Log.e(TAG, "VAD 模型加载失败: ${e.message}")
            vad = null
            false
        }
    }

    fun stop() {
        running = false
        active = false
        worker?.interrupt()
        worker = null
        try {
            vad?.release()
        } catch (_: Exception) {
        }
        vad = null
        pendingFrames.clear()
        Log.i(TAG, "VAD 已停止")
    }

    /** 激活检测（进入 LISTENING 时调用）：重置状态，开始新一轮检测 */
    fun arm() {
        if (!running) return
        reset()
        active = true
    }

    /** 停用检测（离开 LISTENING 时调用） */
    fun disarm() {
        active = false
    }

    /** 喂入音频帧（录音回调线程，16kHz 单声道 PCM16） */
    fun feed(pcm: ShortArray) {
        if (!running || !active) return
        pendingFrames.offer(pcm.copyOf())
    }

    private fun reset() {
        try {
            vad?.reset()
        } catch (_: Exception) {
        }
        synchronized(sampleBuffer) {
            sampleBuffer.clear()
        }
        pendingFrames.clear()
    }

    private fun processLoop() {
        while (running) {
            val frame = pendingFrames.poll()
            if (frame == null) {
                Thread.sleep(10)
                continue
            }
            val localVad = vad ?: continue

            // Short 转 Float 并攒到 VAD 窗口大小
            synchronized(sampleBuffer) {
                for (s in frame) {
                    sampleBuffer.add(s / 32768f)
                }
                while (sampleBuffer.size >= WINDOW_SIZE) {
                    val window = FloatArray(WINDOW_SIZE) { sampleBuffer[it] }
                    sampleBuffer.subList(0, WINDOW_SIZE).clear()
                    try {
                        localVad.acceptWaveform(window)
                    } catch (e: Exception) {
                        Log.w(TAG, "VAD 推理异常: ${e.message}")
                        return
                    }
                }
            }

            // 取出已完成的语音段
            try {
                while (!localVad.empty()) {
                    val seg = localVad.front()
                    localVad.pop()
                    val samples = seg.samples
                    val durationMs = samples.size * 1000L / SAMPLE_RATE
                    if (durationMs in 250..15000) {
                        Log.d(TAG, "检测到语音段: ${durationMs}ms")
                        onSpeechEnd?.invoke(samples, durationMs)
                    }
                }
            } catch (e: Exception) {
                Log.w(TAG, "取语音段异常: ${e.message}")
            }
        }
    }
}
