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

    /** 语音结束回调：samples = 该段语音的 float 样本，durationMs = 时长（工作线程调用） */
    @Volatile
    var onSpeechEnd: ((samples: FloatArray, durationMs: Long) -> Unit)? = null

    /**
     * 帧级「开始说话」回调（VAD 工作线程）：VAD 实时语音状态发生 静音→说话 跳变时触发。
     *
     * v2.3.9.1 端点自适应配套：切段后的弹性宽限期（300-400ms）内用户继续说（句中停顿）
     * 时，靠本信号以帧级延迟（~32ms/窗）感知续说、撤销在途收尾，句中停顿不再切断。
     * 注意：段级回调 [onSpeechEnd] 要求新段成段（≥0.4s 语音 + 1.2s 静音），宽限窗内
     * 必然赶不上，因此「宽限内续说」的感知必须走本帧级信号。
     * 噪音口径与成段判定同源：同一 silero VAD、同一 [threshold] 置信度门槛，
     * 本信号的灵敏度与 v2.3.9 的成段判定一致，不额外放宽噪音容忍度。
     */
    @Volatile
    var onSpeechStart: (() -> Unit)? = null

    /**
     * 距最后一次检出人声的毫秒数（v2.3.9.1 评审 🔴-1 尾扫兜底配套）。
     * 工作线程在每个 VAD 窗口（~32ms）更新 [lastVoiceActiveAtMs]（inSpeech=true 时刷新），
     * 本方法供主线程的「尾扫兜底计时」到期时核查：距最后说话不足
     * [EndpointGraceCoordinator.TAIL_SCAN_VOICE_QUIET_MS]（1s）= 还在说话/刚开口，
     * 不得收尾（连续说话场景恒顺延，直到真正静音）。
     * 从未检出过人声时返回 [Long.MAX_VALUE]（此时收尾无信息量损失）。
     */
    fun msSinceLastVoiceMs(): Long {
        val at = lastVoiceActiveAtMs
        return if (at <= 0L) Long.MAX_VALUE else System.currentTimeMillis() - at
    }

    /** 检测灵敏度（0-1，越低越灵敏），启动前设置。
     *  v2.3.9 由 0.42 提高到 0.55：0.42 偏低于 silero 默认值（0.5），
     *  环境噪音（人声类噪声、电视、背景音）易越过置信度门槛被当成语音成段，
     *  导致「一点动静就被识别」；0.55 在远场灵敏度与抗噪间重新平衡 */
    var threshold = 0.55f

    /** 判定切段前的静音时长（秒），启动前设置。
     *  v2.3.9：1.2s → 1.6s（固定收紧）——治理了句中停顿误切，但让所有用户
     *  「说完→出结果」无条件变慢 0.4s（v2.3.9 用户反馈回归）。
     *  v2.3.9.1：回调到 1.2s，仅保留"切段"职责；1.2s 处的句中停顿改由
     *  [EndpointGracePolicy] 的弹性宽限兜住（切段后宽限期内续说不停机，
     *  宽限自适应 300-400ms），端点总时长 1.5s~1.6s 且按用户停顿习惯自适应，
     *  治理效果不回退、尾延迟较 v2.3.9 压缩 0.25s（收敛后） */
    var silenceDuration = 1.2f

    private var vad: Vad? = null
    private val pendingFrames = ConcurrentLinkedQueue<ShortArray>()
    private val sampleBuffer = ArrayList<Float>(WINDOW_SIZE * 4)
    private var worker: Thread? = null

    @Volatile
    private var running = false

    @Volatile
    private var active = false

    /** arm 时间戳（毫秒），用于 arm 后静默期 */
    @Volatile
    private var armTimeMs = 0L

    /**
     * VAD 上一轮的实时语音状态（工作线程私有）：用于检测 静音→说话 跳变，
     * 驱动帧级 [onSpeechStart] 回调。arm 时复位为 false（新会话从静音起步）。
     */
    @Volatile
    private var wasInSpeech = false

    /**
     * 最后一次检出人声的时刻（毫秒时间戳，v2.3.9.1 评审 🔴-1 尾扫兜底配套）：
     * 工作线程在 inSpeech=true 的每个窗口刷新（~32ms 粒度）；@Volatile 保证
     * 工作线程写 / 主线程读（尾扫到期核查 [msSinceLastVoiceMs]）的可见性与
     * arm32 上的 64 位原子性。0 = 本进程从未检出人声。
     */
    @Volatile
    private var lastVoiceActiveAtMs = 0L

    companion object {
        private const val TAG = "SpeechEndDetector"
        private const val SAMPLE_RATE = 16000
        // silero VAD 固定窗口（16kHz 下 512 样本 ≈ 32ms）
        private const val WINDOW_SIZE = 512
        // arm 后静默期：忽略刚进入聆听时的音频
        // （TTS 尾音回声 / 麦克风启动瞬态 / 唤醒词释放残留，
        //  否则会被 VAD 误判为一段语音，说完即停 → 服务器识别到回声噪声）
        // v2.3.9：400ms → 600ms，与 ListenGatePolicy.holdoff 对齐，
        // 覆盖更长的回声尾音衰减窗
        private const val ARM_BLIND_MS = 600L
        // 触发"说完停止"的最短语音段时长：
        // 短于它的段（"嗯"、"啊"等口头禅开头 + 停顿思考）不触发停止，
        // 否则整句只剩"嗯"被送去识别。桌面端是 0.3s（近场），手机远场需更大。
        private const val MIN_SPEECH_END_MS = 1200L
        // 最长语音段：超过此值强制切段（防止用户一直说话不停导致内存堆积）
        private const val MAX_SPEECH_MS = 15000L
    }

    /** 加载模型并启动工作线程。必须在后台线程调用。 */
    fun start(): Boolean {
        if (running) return true
        return try {
            val config = VadModelConfig(
                sileroVadModelConfig = SileroVadModelConfig(
                    model = "models/silero_vad.onnx",
                    threshold = threshold,
                    // v2.3.9：最短语音时长 0.25s → 0.40s——环境噪音瞬态/短促碰撞
                    // 很难维持 400ms 以上的高置信度，不成段就不会触发端点回调
                    minSpeechDuration = 0.40f,
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

    /** 激活检测（进入 LISTENING 时调用）：重置状态，开始新一轮检测.
     *  arm 后前 [ARM_BLIND_MS] 毫秒的音频将被忽略（静默期）。 */
    fun arm() {
        if (!running) return
        reset()
        // 帧级语音状态复位：新会话从静音起步，第一声人声才构成一次 跳变
        wasInSpeech = false
        armTimeMs = System.currentTimeMillis()
        active = true
    }

    /** 停用检测（离开 LISTENING 状态时调用） */
    fun disarm() {
        active = false
    }

    /** 喂入音频帧（录音回调线程，16kHz 单声道 PCM16） */
    fun feed(pcm: ShortArray) {
        if (!running || !active) return
        // arm 静默期：刚进入聆听时丢弃 TTS 尾音/设备启动瞬态
        if (System.currentTimeMillis() - armTimeMs < ARM_BLIND_MS) return
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

            // 帧级「开始说话」跳变检测（v2.3.9.1 端点自适应配套）：
            // isSpeechDetected 反映 silero 内部实时语音状态（与成段判定同源、同阈值），
            // 静音→说话 跳变以 ~32ms/窗 的粒度触发 [onSpeechStart]——
            // 弹性宽限期内用户续说靠它在 300-400ms 内被感知（段级回调赶不上宽限窗）
            val inSpeech = try {
                localVad.isSpeechDetected()
            } catch (e: Exception) {
                Log.w(TAG, "VAD 状态读取异常: ${e.message}")
                wasInSpeech // 异常时维持原状态，避免误发跳变
            }
            if (inSpeech && !wasInSpeech) {
                onSpeechStart?.invoke()
            }
            wasInSpeech = inSpeech
            // 尾扫兜底配套（评审 🔴-1）：说话中的每个窗口刷新「最后说话时刻」，
            // 供宽限撤销后的尾扫计时到期核查「距今是否已静音超 1s」——
            // 连续说话时该时间戳持续前移，尾扫恒顺延，直到真正静音才允许收尾
            if (inSpeech) {
                lastVoiceActiveAtMs = System.currentTimeMillis()
            }

            // 取出已完成的语音段
            try {
                while (!localVad.empty()) {
                    val seg = localVad.front()
                    localVad.pop()
                    val samples = seg.samples
                    val durationMs = samples.size * 1000L / SAMPLE_RATE
                    // 关键过滤：只有足够长的语音段才触发"说完停止"。
                    // "嗯"等口头禅（<1.2s）+ 停顿思考是正常语流，不能当作说完了
                    if (durationMs in MIN_SPEECH_END_MS..MAX_SPEECH_MS) {
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
