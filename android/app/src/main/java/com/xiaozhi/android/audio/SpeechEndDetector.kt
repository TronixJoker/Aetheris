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
     * v2.3.9.1 端点自适应配套：切段后的弹性宽限期（v2.3.13 起为 200-300ms）内
     * 用户继续说（句中停顿）时，靠本信号以帧级延迟（~32ms/窗）感知续说、撤销在途收尾，
     * 句中停顿不再切断。
     * 注意：段级回调 [onSpeechEnd] 要求新段成段（≥0.4s 语音 + 0.8s 静音），宽限窗内
     * 必然赶不上，因此「宽限内续说」的感知必须走本帧级信号。
     * 噪音口径与成段判定同源：同一 silero VAD、同一 [threshold] 置信度门槛，
     * 本信号的灵敏度与 v2.3.9 的成段判定一致，不额外放宽噪音容忍度。
     */
    @Volatile
    var onSpeechStart: (() -> Unit)? = null

    /**
     * VAD 工作线程致命故障回调（工作线程调用，v2.3.11 自愈治理）。
     *
     * 触发条件：VAD 推理/状态读取连续异常超过 [VadSelfHealPolicy.MAX_REBUILD_ATTEMPTS]
     * 次、或工作线程捕获到未预期的 Throwable（旧实现这些路径要么直接 return
     * 静默杀死线程，要么异常后线程虽存活但 VAD 已坏、端点事件从此永不触发——
     * 用户感知即「说完话不自动停止、一直聆听」的悬挂）。
     *
     * 上层（MainViewModel）收到后应：立即对当前聆听会话执行兜底收尾（防止本会话
     * 悬挂），并重建整个检测器（本实例的 VAD 已判定不可恢复）。
     * 线程死亡/降级不得静默——本回调是「沉默故障」变「可观测故障」的唯一出口。
     */
    @Volatile
    var onVadWorkerFatal: ((reason: String) -> Unit)? = null

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
     *  [EndpointGracePolicy] 的弹性宽限兜住（切段后宽限期内续说不停机）。
     *  v2.3.13：1.2s → 0.8s（架构师方案 §1.1 端点提速主延迟项，-0.4s）——
     *  句中停顿的误切保护全部交由弹性宽限（200-300ms 自适应）+ 帧级续说撤销 +
     *  尾扫兜底三层机制承担，端点总时长压缩至 1.0~1.1s（「说完→停止识别」1 秒级） */
    var silenceDuration = 0.8f

    /**
     * VAD 实例的跨线程同步锁（评审 🟡-1）：
     * worker 线程（推理/自愈重建/降级置空）与调用方线程（[stop] 释放）并发访问
     * [vad]——release 与 acceptWaveform 并发是 native 层 use-after-free 崩溃。
     * 全部 vad 读写经本锁串行化：推理持锁约 1~5ms，stop() 最坏等待一窗
     * （自愈退避期最多 ~50ms），完全可接受。
     */
    private val vadLock = Any()

    private var vad: Vad? = null
    private val pendingFrames = ConcurrentLinkedQueue<ShortArray>()
    private val sampleBuffer = ArrayList<Float>(WINDOW_SIZE * 4)
    private var worker: Thread? = null

    /**
     * feed 队列深度上限（帧）：约 5s 音频（250 × 20ms）。正常消费速度远高于
     * 生产速度，触顶只在消费停滞（线程异常退避/重建中）时发生——配合
     * [feed] 丢帧计数与会话级看门狗兜底，杜绝无界内存增长（v2.3.11）。
     */
    private val MAX_PENDING_FRAMES = 250

    /** 故障场景下被丢弃的帧计数（观测用，主线程 dump 诊断时读取） */
    @Volatile
    var droppedFrames: Long = 0
        private set

    /** 连续 VAD 异常计数（工作线程私有，成功一窗清零；见 [VadSelfHealPolicy]） */
    private var vadErrorStreak = 0

    /** 是否已上报过致命故障（fatal 只上报一次，避免刷屏/重复触发上层重建） */
    @Volatile
    private var fatalReported = false

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
     *
     * VAD 实时语音状态（工作线程每窗 ~32ms 刷新）：true = 当前窗检出人声。
     * @Volatile：读侧是录音回调线程（v2.3.13 上传门槛「VAD 佐证」轮询）、
     * 写侧是 VAD 工作线程，跨线程可见性必须保证。
     */
    @Volatile
    private var wasInSpeech = false

    /**
     * VAD 实时语音状态查询（v2.3.13 新增，线程安全）。
     *
     * 供 [ListenGatePolicy] 的「VAD 佐证观察放行」使用：上传门槛的动态降级
     * （轻声场景）需要 silero VAD 佐证当前确实是真人语音，防止底噪自适应
     * 降门槛后被纯噪音误开门。口径与成段判定同源（同一 silero VAD、同一
     * [threshold] 置信度门槛），粒度为 VAD 窗口 ~32ms，略滞后于 20ms 音频帧，
     * 对「持续 ≥1s」级别的佐证判定无影响。
     */
    fun isVadSpeechActive(): Boolean = wasInSpeech

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
        // 语音段→端点收尾的时长判定已下沉 [SpeechSegmentPolicy]（纯策略可单测）。
        // v2.3.10 修复：旧实现 `durationMs in 1200..15000` 把 0.6~1.2s 的短命令
        // （"好的"/"几点了"）与 >15s 的长独白段静默丢弃 → 端点永不触发 →
        // 「识别中」无限悬挂（09-30 用户反馈）。现为：>=0.6s 即端点
        // （<0.4s 在 VAD 成段层已被滤掉，0.6~1.2s 误切由弹性宽限撤销兜住），
        // >15s 强制端点（对齐"强制切段"的设计意图）。
    }

    /** 加载模型并启动工作线程。必须在后台线程调用。 */
    fun start(): Boolean {
        if (running) return true
        if (!loadVad()) return false
        running = true
        worker = Thread(this::processLoop, "vad-worker").apply {
            isDaemon = true
            start()
        }
        Log.i(TAG, "VAD 已启动 (threshold=$threshold, silence=${silenceDuration}s)")
        return true
    }

    /**
     * 加载/重建 VAD 模型实例（v2.3.11 自愈治理：工作线程异常后原地重建复用）。
     * vad 写操作经 [vadLock] 串行化（评审 🟡-1）；synchronized 可重入，
     * 自愈路径（已在锁内）调用安全。
     * @return true = vad 已就绪；false = 加载失败（vad 保持 null，调用方按 F1 语义推进计数）
     */
    private fun loadVad(): Boolean = synchronized(vadLock) {
        try {
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
        // release 与 worker 推理互斥（评审 🟡-1）：锁内等待当前窗处理完再释放，
        // 杜绝 native use-after-free；worker 若在自愈退避 sleep，最坏多等 ~50ms
        synchronized(vadLock) {
            try {
                vad?.release()
            } catch (_: Exception) {
            }
            vad = null
        }
        pendingFrames.clear()
        vadErrorStreak = 0
        // 重启语义：下次 start 允许重新走「有界自愈 → 上报」流程
        fatalReported = false
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
        // 深度上限（v2.3.11 自愈治理）：工作线程异常退避/重建期间消费停滞时，
        // 队列若无限堆积会缓慢吃掉内存（每帧 20ms/640B，50 帧/s ≈ 1.9MB/min）。
        // 正常时消费速度远高于生产速度（silero 单窗推理约 1~5ms），队列深度
        // 通常为个位数；触顶只发生在故障场景——保实时性丢新帧并计数，配合
        // 自愈重建/会话级看门狗在分钟级内收敛，杜绝内存无界增长。
        if (pendingFrames.size >= MAX_PENDING_FRAMES) {
            droppedFrames++
            return
        }
        pendingFrames.offer(pcm.copyOf())
    }

    private fun reset() {
        // R3（评审复评 🟡）：vad?.reset() 可从主线程路径触发（arm() → reset()），
        // 与 worker 线程的 acceptWaveform 并发不安全（native 状态重置 vs 推理）——
        // 纳入 vadLock 串行化，与 [loadVad]/[stop]/[processOnce] 同一互斥域
        synchronized(vadLock) {
            try {
                vad?.reset()
            } catch (_: Exception) {
            }
        }
        synchronized(sampleBuffer) {
            sampleBuffer.clear()
        }
        pendingFrames.clear()
    }

    /**
     * VAD 工作线程主循环（v2.3.11 自愈治理重写）。
     *
     * 旧实现缺陷（现网复发根因）：`acceptWaveform` 异常分支直接 `return`——
     * 线程被永久杀死且 `running/active` 仍为 true，上层毫无感知，端点事件从此
     * 永不触发 → 「说完话不自动停止、一直聆听」悬挂。
     *
     * 新不变量：**线程死亡不得静默**——循环体任何异常都经统一处置：
     *  - VAD 调用异常（推理/状态/取段）：计数进 [handleVadError]，有界自愈
     *    （原地重建 VAD，见 [VadSelfHealPolicy]），耗尽则上报 FATAL 后降级丢帧，
     *    等待上层重建整个检测器；线程始终存活或以明确回调告知上层，绝不静默退出；
     *  - 未预期 Throwable（含 Error）：同样上报 + 退避继续跑，不杀线程；
     *  - stop() 的 interrupt：唯一正常退出路径。
     */
    private fun processLoop() {
        while (running) {
            try {
                processOnce()
            } catch (e: InterruptedException) {
                // stop() 中断 = 正常退出；仍在运行时被中断则继续（不静默死亡）
                if (!running) break
            } catch (t: Throwable) {
                Log.e(TAG, "VAD 工作线程未预期异常: ${t.javaClass.simpleName}: ${t.message}")
                reportFatalIfFirst("unexpected:${t.javaClass.simpleName}")
                safeSleep(200) // 退避：等待上层决策，避免异常热循环
            }
        }
        Log.w(TAG, "VAD 工作线程退出 (running=$running)")
    }

    /** 单轮处理：拉帧 → 攒窗 → 推理 → 跳变检测 → 取段。任何异常抛给 [processLoop] 统一处置 */
    private fun processOnce() {
        val frame = pendingFrames.poll() ?: run { safeSleep(10); return }
        // vad 引用获取与全部 VAD 交互同持 [vadLock]（评审 🟡-1）：保证本窗使用的
        // 实例在整窗期间不可能被 [stop] release；vad=null（重建失败退避中/FATAL
        // 降级）时丢帧防堆积、锁内短退避等待自愈——注意计数推进只发生在
        // [handleVadError] 内（含 F1 的重建失败推进），本分支不得重复计数
        synchronized(vadLock) {
            val localVad = vad ?: run {
                safeSleep(50)
                return
            }

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
                        // 真实推理成功才清零连续异常计数（重建成功不算——
                        // 防「重建成功但一调就崩」的死循环重建，保证有界收敛）
                        if (vadErrorStreak > 0) {
                            Log.i(TAG, "VAD 恢复正常（此前连续异常 ${vadErrorStreak} 次）")
                            vadErrorStreak = 0
                        }
                    } catch (e: Exception) {
                        Log.w(TAG, "VAD 推理异常: ${e.message}")
                        handleVadError("acceptWaveform")
                        // R1（评审复评 🔴 必修）：handleVadError 原地重建后旧实例已
                        // release、vad 已换新——本窗剩余窗口继续用陈旧 localVad 是
                        // 对已释放 native 实例的调用（SIGSEGV 闪退）。锁内核对实例
                        // 身份，被替换即放弃本窗剩余工作（sampleBuffer 已攒样本
                        // 保留，下窗续攒；新实例从下一窗开始接管）
                        if (vad !== localVad) return
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
                handleVadError("isSpeechDetected")
                // R1 同款守卫（评审复评 🔴）：重建后 localVad 已 release，
                // 后续取段循环不得再触碰——实例被替换即终止本窗
                if (vad !== localVad) return
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
                    // 段长判定下沉 [SpeechSegmentPolicy]（v2.3.10 短命令/长独白悬挂修复）：
                    // ENDPOINT = 正常端点；FORCE_ENDPOINT = 超长段强制收尾；
                    // DROP = 过短（口头禅/瞬态）丢弃，维持"不因嗯啊误停"的既有治理。
                    when (SpeechSegmentPolicy.decide(durationMs)) {
                        SpeechSegmentPolicy.Decision.ENDPOINT -> {
                            Log.d(TAG, "检测到语音段: ${durationMs}ms")
                            onSpeechEnd?.invoke(samples, durationMs)
                        }
                        SpeechSegmentPolicy.Decision.FORCE_ENDPOINT -> {
                            Log.w(TAG, "长语音段(${durationMs}ms)超上限，强制触发端点收尾")
                            onSpeechEnd?.invoke(samples, durationMs)
                        }
                        SpeechSegmentPolicy.Decision.DROP -> {
                            Log.d(TAG, "语音段(${durationMs}ms)短于端点下限，丢弃不收尾")
                        }
                    }
                }
            } catch (e: Exception) {
                Log.w(TAG, "取语音段异常: ${e.message}")
                handleVadError("takeSegment")
            }
        }
    }

    /**
     * VAD 异常统一处置（v2.3.11 自愈治理核心）：
     * 连续异常走 [VadSelfHealPolicy] 决策——上限内 release 旧实例并原地重建
     * （单次 native 瞬态异常重建即恢复）；超过上限判定持续性故障，上报 FATAL
     * 并置 vad=null 进入降级（processOnce 丢帧退避，线程存活、内存有界），
     * 由上层（MainViewModel）重建整个检测器并兜底收尾当前会话。
     *
     * F1（评审 🔴 必修）：**重建失败本身也是一次异常，必须沿决策链继续推进**——
     * 旧写法 loadVad 失败后只退避等待下一窗再触发异常，但 vad=null 时下一窗走
     * 降级分支（不再有任何 VAD 调用），异常计数就此冻结在 ≤5、FATAL 永不上抛、
     * 上层整机重建永不发生 → 一次模型加载失败即令本地端点终身静默退化。
     * 现改为：失败立即 +1 重新决策，直至 FATAL 终止（最多 5 次重建尝试 + 1 次上报，
     * 每次失败退避 200ms，有界收敛）。
     */
    private fun handleVadError(where: String) {
        vadErrorStreak++
        when (VadSelfHealPolicy.decide(vadErrorStreak)) {
            VadSelfHealPolicy.Decision.REBUILD -> {
                Log.w(TAG, "VAD 异常($where) 连续第 $vadErrorStreak 次，尝试原地重建自愈")
                try {
                    vad?.release()
                } catch (_: Exception) {
                }
                vad = null
                while (!loadVad()) {
                    vadErrorStreak++
                    if (VadSelfHealPolicy.decide(vadErrorStreak) == VadSelfHealPolicy.Decision.FATAL) {
                        Log.e(TAG, "VAD 重建连续失败，计数推进至 $vadErrorStreak，升级 FATAL")
                        reportFatalIfFirst("vad_rebuild_exhausted:$where")
                        vad = null
                        return // 降级：丢帧退避，等待上层整体重建
                    }
                    safeSleep(200) // 重建失败退避后再试（锁内短 sleep，最坏阻塞 stop 数百 ms，可接受）
                }
            }
            VadSelfHealPolicy.Decision.FATAL -> {
                reportFatalIfFirst("vad_broken:$where")
                vad = null // 降级：不再原地重建（反复失败白耗 CPU），等上层整体重建
            }
        }
    }

    /** 致命故障只上报一次（避免刷屏/重复触发上层重建），上报动作自身不得抛出 */
    private fun reportFatalIfFirst(reason: String) {
        if (fatalReported) return
        fatalReported = true
        Log.e(TAG, "VAD 致命故障，上报上层重建: $reason")
        try {
            onVadWorkerFatal?.invoke(reason)
        } catch (t: Throwable) {
            Log.e(TAG, "onVadWorkerFatal 回调异常: ${t.message}")
        }
    }

    /** 可中断安全的 sleep（stop() 打断时静默返回，由 running 检查决定退出） */
    private fun safeSleep(ms: Long) {
        try {
            Thread.sleep(ms)
        } catch (_: InterruptedException) {
        }
    }
}
