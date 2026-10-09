package com.xiaozhi.android.audio

/**
 * 聆听状态上传门槛策略（纯 Kotlin，可单测）。
 *
 * 背景（v2.3.9 用户反馈）：「一点动静（环境噪音）就被当作语音开始识别内容」。
 * 旧实现 LISTENING 状态把麦克风音频**全量**上传服务端，存在两个问题：
 *  1) 环境噪音直达服务端被当作"用户语音"转写——这是「噪音被识别」的常态面根因；
 *  2) 打断（barge-in）瞬间 / TTS 播完瞬间，扬声器回声尾音会被上传并转写，
 *     形成「噪音 → 识别 → AI 应答 → 回声/噪音再次误打断」的循环放大器。
 *
 * 基础设计（收紧识别触发条件，同时不丢失真实语音的起始信息）：
 *  - 平时关门：低于开门门槛的帧不上传；
 *  - 开门条件：累计 [openFrames] 帧（100ms）RMS ≥ 门槛，帧间允许 ≤
 *    [streakGapTolerateFrames] 帧短暂回落（gap 容忍，评审 🔴 修复）——
 *    轻声/远场语音的起振波动（响-轻-响-轻）不再因凑不满"严格连续"而整句漏传；
 *    短促噪声（关门、碰撞）的单次瞬态 + 混响尾仍凑不满 100ms 有效能量，不上传；
 *  - 开门即回放 [preRollMs] 预滚缓冲：语音真正开始的数百毫秒不丢，
 *    不影响服务端识别准确率（开门判定本身有 100ms 延迟，预滚补齐）；
 *  - 开门后 hangover [hangoverMs]：句间自然停顿（换气/思考）不关门；
 *  - holdoff：每次进入聆听后 [holdoffMs] 内延迟开门——覆盖 TTS 尾音/打断瞬间
 *    的回声衰减窗。期间持续超阈的真人插话会在 holdoff 结束时带预滚一起放行，
 *    不会丢失（已衰减的回声则被挡下）；
 *  - keepalive：关门期间每 [keepaliveIntervalMs] 放行 1 帧真实音频，
 *    维持服务端「连接有上行」的判定（避免触发 v2.3.8 刚治理过的 1005 空闲断链）；
 *    孤立单帧也不会被服务端 VAD 当作语音内容。
 *
 * v2.3.13 自适应三件套（[adaptive] = true，架构师方案 §2.1，修复「识别不准/识别不到」）：
 * 固定门槛 400 是跷跷板——安静房底噪 RMS≈100~150 时轻声语音（RMS≈300~400）被整句
 * 挡在门外（服务端只收到 keepalive 单帧 →「识别不到」），直接下调门槛则噪音回流。
 * 三件套在**不动抗噪上限**的前提下按环境自动降门槛：
 *  1. 底噪基线跟踪：关门期（未开门且未在 holdoff）对帧 RMS 做 EMA
 *     `noiseFloor = noiseFloor×0.9 + rms×0.1`（[noiseFloorEmaAlpha]=0.1）；
 *     冷启动（nf 未初始化）用前 [noiseFloorWarmupFrames] 帧的**中位数**初始化
 *     （中位数抗关门/碰撞瞬态污染）；开门期不更新（语音会抬高基线）；
 *     达到/超过当前门槛的帧不参与 EMA（防语音抬底噪——基线的语义是"稳态噪音"）。
 *  2. 动态开门门槛：`threshold = clamp(nf × [noiseFloorMultiplier], [adaptiveThresholdMinRms], [adaptiveThresholdMaxRms])`：
 *     - 安静房 nf=130 → 门槛 250（轻声全过，本次修复的主要受益场景）；
 *     - 普通房 nf=230 → 门槛 400（= 现状，抗噪效果不变）；
 *     - 嘈杂房 nf≥223 → 400 封顶（不高于现状，杜绝门槛随噪音失控上浮）；
 *     - warmup 未完成时用上限门槛（= 旧行为，安全起步）。
 *  3. VAD 佐证观察放行（降级路径，双条件防无脑降级）：silero VAD 帧级人声持续
 *     ≥ [vadCorroborateSpeechMs] 且门仍未开（能量门槛把真人语音挡住了的实证）→
 *     本会话剩余时间进入观察放行——VAD 在说话（[process] 的 vadActive=true）的帧
 *     直接带预滚放行，不再要求 RMS 过门槛。holdoff 窗结束前不武装（回声尾音期
 *     VAD 可能被扬声器声音误触发）。每次 [onListeningStart] 撤销武装，需重新观察。
 *
 * 构造签名兼容：默认参数 = v2.3.12 固定门槛行为（adaptive=false，既有单测不破坏）；
 * 生产接线用 [adaptive] 工厂方法启用三件套。
 *
 * 时间语义：所有时间参数使用调用方注入的单调时钟毫秒（App 侧用 SystemClock.elapsedRealtime），
 * 本类不读系统时钟，保证可确定性单测。
 */
class ListenGatePolicy(
    /** 固定开门能量门槛（PCM16 RMS）：450→400（评审 🔴 修复，380–400 建议区间取 400）。
     *  adaptive=false 时即实际门槛；adaptive=true 时仅作为动态门槛的上限缺省 */
    private val openThresholdRms: Float = 400f,
    /** 累计超阈帧数达到该值才开门（5 帧 × 20ms = 100ms 持续能量） */
    private val openFrames: Int = 5,
    /** streak 的 gap 容忍帧数（评审 🔴 修复）：累计超阈帧之间允许 ≤N 帧低于
     *  门槛不清零（1–2 帧覆盖语音起振波动；回落帧本身不计入 streak） */
    private val streakGapTolerateFrames: Int = 2,
    /** 开门后的挂起保持时间：最后一次超阈帧之后仍保持开门的毫秒数 */
    private val hangoverMs: Long = 800L,
    /** 预滚缓冲时长：开门时回放开门前这么多毫秒的音频 */
    private val preRollMs: Long = 600L,
    /** 进入聆听后的延迟开门窗口（TTS 尾音/打断回声衰减期，回声风险场景使用） */
    private val holdoffMs: Long = 600L,
    /** 快速放行窗（echoRisk=false 的冷启动/唤醒场景）：无近期 TTS 出声时
     *  回声风险低，holdoff 不必等满 600ms 回声衰减窗——首包提速 400ms，
     *  语音起始仍由 600ms 预滚兜底不丢失（v2.3.9.1 首包提速） */
    private val quickStartHoldoffMs: Long = 200L,
    /** 关门期间的 keepalive 帧间隔 */
    private val keepaliveIntervalMs: Long = 5000L,
    /** 单帧时长（AudioRecorder 固定 20ms/帧） */
    private val frameMs: Long = 20L,

    // ==================== v2.3.13 自适应三件套（默认关闭 = v2.3.12 行为） ====================
    /** 是否启用底噪自适应门槛 + VAD 佐证观察放行（false = v2.3.12 固定门槛行为） */
    private val adaptive: Boolean = false,
    /** 底噪 EMA 平滑系数（方案 §2.1：nf = nf×0.9 + rms×0.1） */
    private val noiseFloorEmaAlpha: Float = 0.1f,
    /** 动态门槛 = 底噪 × 该倍数（方案指定 1.8） */
    private val noiseFloorMultiplier: Float = 1.8f,
    /** 动态门槛下限（方案指定 250）：安静房轻声全过的主要受益水位 */
    private val adaptiveThresholdMinRms: Float = 250f,
    /** 动态门槛上限（方案指定 400 封顶 = v2.3.12 固定门槛，抗噪不回退） */
    private val adaptiveThresholdMaxRms: Float = openThresholdRms,
    /** 冷启动底噪初始化采样帧数（方案指定 25 帧 = 500ms，取中位数） */
    private val noiseFloorWarmupFrames: Int = 25,
    /** VAD 佐证观察放行的武装条件：帧级人声持续时长（方案指定 ≥1s） */
    private val vadCorroborateSpeechMs: Long = 1000L,
) {

    /** 是否处于开门（上传放行）状态 */
    var isOpen: Boolean = false
        private set

    /** 本次聆听是否曾开过门（评审 🔴 配套观测标记）：onLocalSpeechEnd 时若为
     *  false，说明本地 VAD 判定"说完了"但整句语音从未过门槛上传——即
     *  轻声/远场漏判路径，调用方应输出诊断快照形成真机观测闭环 */
    var everOpened: Boolean = false
        private set

    /** 预滚环形缓冲（容量 = preRollMs / frameMs 帧） */
    private val preRollCapacity = (preRollMs / frameMs).toInt().coerceAtLeast(1)
    private val preRoll = ArrayDeque<ShortArray>(preRollCapacity)

    private var holdoffUntilMs = 0L
    private var loudStreak = 0
    /** streak 的 gap 容忍计数：回落帧计数，超容忍窗即清零 streak */
    private var quietGapFrames = 0
    private var lastLoudMs = 0L
    private var lastKeepaliveMs = 0L

    // ==================== v2.3.13 自适应状态（单线程：仅录音帧循环调用 process） ====================

    /** 底噪 EMA（null = 尚未初始化，warmup 采样中） */
    private var noiseFloorRms: Float? = null

    /** warmup 采样缓冲：首 [noiseFloorWarmupFrames] 帧关门期 RMS，取中位数初始化底噪 */
    private val warmupSamples = ArrayList<Float>(noiseFloorWarmupFrames)

    /** VAD 佐证连续人声累计（帧级，非 vadActive 帧清零） */
    private var vadSpeechStreakMs = 0L

    /** 观察放行是否已武装（武装后本会话剩余时间有效，onListeningStart 撤销） */
    var observeFallbackArmed: Boolean = false
        private set

    /**
     * 当前生效的开门门槛（RMS）。
     *  - 固定模式：[openThresholdRms]；
     *  - 自适应模式：warmup 未完成 → 上限门槛（安全起步，等同旧行为）；
     *    warmup 完成 → clamp(nf × 1.8, 下限, 上限)。
     */
    fun currentOpenThresholdRms(): Float {
        if (!adaptive) return openThresholdRms
        val nf = noiseFloorRms ?: return adaptiveThresholdMaxRms
        return (nf * noiseFloorMultiplier)
            .coerceIn(adaptiveThresholdMinRms, adaptiveThresholdMaxRms)
    }

    /** 当前底噪基线估计（未初始化返回 -1f），供诊断打点 */
    fun currentNoiseFloorRms(): Float = noiseFloorRms ?: -1f

    /** 观察放行（VAD 佐证降级路径）是否已武装，供诊断打点 */
    fun isObserveFallbackArmed(): Boolean = observeFallbackArmed

    /**
     * 进入聆听状态（LISTENING）时调用：清空历史缓冲、关门并开启 holdoff 窗。
     * 自适应状态处置：观察放行武装撤销（新会话重新观察 1s，防陈旧佐证误放行）；
     * 底噪基线与 warmup 状态**跨会话保留**（同一环境连续对话不重学，EMA 在关门期
     * 持续跟踪环境变化，~0.5s 内收敛 90%）。
     *
     * @param nowMs 单调时钟毫秒
     * @param echoRisk 回声风险：true = TTS 出声中/刚结束（打断、自动续听），
     *                 使用完整 [holdoffMs] 回声衰减窗；false = 冷启动/唤醒/手动
     *                 开启且近期（约 3s 内）无 TTS 出声，使用 [quickStartHoldoffMs]
     *                 快速放行窗——首包不等满回声窗（预滚保语音起始不丢）
     */
    fun onListeningStart(nowMs: Long, echoRisk: Boolean = true) {
        isOpen = false
        everOpened = false
        loudStreak = 0
        quietGapFrames = 0
        lastLoudMs = 0L
        lastKeepaliveMs = nowMs
        holdoffUntilMs = nowMs + if (echoRisk) holdoffMs else quickStartHoldoffMs
        preRoll.clear()
        // v2.3.13：观察放行撤销武装；底噪基线跨会话保留（见方法注释）
        observeFallbackArmed = false
        vadSpeechStreakMs = 0L
    }

    /**
     * 逐帧处理（LISTENING 状态下的每一帧麦克风音频调用一次）。
     *
     * @param nowMs 单调时钟毫秒
     * @param rms 本帧 PCM RMS
     * @param frame 本帧 PCM 数据（会按需进入预滚缓冲 / 作为返回值放行）
     * @param vadActive 本帧时刻 silero VAD 是否检出人声（[SpeechEndDetector.isVadSpeechActive]，
     *        录音帧循环轮询，粒度 ~32ms 略滞后于 20ms 音频帧）。仅自适应模式消费：
     *        用于「观察放行」武装判定与放行；默认 false = 无 VAD 信息（观察放行
     *        永不武装，保持旧行为，既有调用/单测兼容）。
     * @return 需要上传的帧（开门：当前帧；开门瞬间：预滚 + 当前帧；
     *         关门且到 keepalive 时刻：当前帧；其余：空列表 = 不上传）
     */
    fun process(
        nowMs: Long,
        rms: Float,
        frame: ShortArray,
        vadActive: Boolean = false,
    ): List<ShortArray> {
        // 预滚缓冲始终维护（关门期间也在滚动，保证开门瞬间有完整上下文）
        preRoll.addLast(frame)
        if (preRoll.size > preRollCapacity) {
            preRoll.removeFirst()
        }

        // ===== 自适应门槛（v2.3.13）：warmup / 底噪 EMA 更新 =====
        // 更新条件（方案 §2.1）：关门期（未开门）且未在 holdoff；达到/超过当前
        // 门槛的帧不参与（防语音与瞬态抬高基线，基线语义=稳态噪音）
        val openThreshold = currentOpenThresholdRms()
        if (adaptive && !isOpen && nowMs >= holdoffUntilMs && rms < openThreshold) {
            val nf = noiseFloorRms
            if (nf == null) {
                // warmup：前 N 帧采样，取中位数初始化（中位数抗瞬态污染）
                warmupSamples.add(rms)
                if (warmupSamples.size >= noiseFloorWarmupFrames) {
                    val sorted = warmupSamples.sorted()
                    noiseFloorRms = sorted[sorted.size / 2]
                    warmupSamples.clear()
                }
            } else {
                // EMA：nf = nf×(1-α) + rms×α（α=0.1，方案指定）
                noiseFloorRms = nf + noiseFloorEmaAlpha * (rms - nf)
            }
        }

        // ===== VAD 佐证观察放行：武装判定 =====
        // 帧级人声连续 ≥1s 且门仍未开且已出 holdoff（回声尾音期 VAD 不可信）
        if (adaptive && !isOpen) {
            if (vadActive) {
                vadSpeechStreakMs += frameMs
            } else {
                vadSpeechStreakMs = 0L
            }
            if (!observeFallbackArmed &&
                nowMs >= holdoffUntilMs &&
                vadSpeechStreakMs >= vadCorroborateSpeechMs
            ) {
                observeFallbackArmed = true
            }
        }

        val loud = rms >= openThreshold
        if (loud) {
            loudStreak++
            quietGapFrames = 0
            lastLoudMs = nowMs
        } else if (loudStreak > 0 && quietGapFrames < streakGapTolerateFrames) {
            // gap 容忍（评审 🔴 修复）：累计未清零且回落未超容忍窗 → 保持 streak。
            // 轻声/远场语音"响-轻-响-轻"的起振波动不再整句漏传；
            // 回落帧本身不计入 streak，有效能量要求不变
            quietGapFrames++
        } else {
            loudStreak = 0
            quietGapFrames = 0
        }

        // ===== 开门态 =====
        if (isOpen) {
            if (nowMs - lastLoudMs <= hangoverMs) {
                // 挂起保持：句间自然停顿不上传断流。
                // 开门期间预滚无意义，随手清空，防止关门后重开时回放陈旧音频
                preRoll.clear()
                return listOf(frame)
            }
            // 静音超过 hangover → 关门（回到门槛判定）
            isOpen = false
            preRoll.clear()
            lastKeepaliveMs = nowMs
            return emptyList()
        }

        // ===== 关门态 =====
        // holdoff：进入聆听初期，只积累预滚与连续超阈计数，不放行也不 keepalive。
        // 若真人在此期间持续说话（如打断场景），holdoff 结束的第一帧即可带预滚开门。
        if (nowMs < holdoffUntilMs) {
            return emptyList()
        }
        // 开门条件（能量主路径）：累计超阈帧数足够（loud 帧计满 [openFrames]，
        // 容忍窗内的回落帧不计入；若 streak 在 holdoff 期间已计满，过期后第一帧
        // 即开门，即使该帧回落也成立——只是提前 1–2 帧放行，无副作用）。
        // 观察放行（佐证降级路径，v2.3.13）：武装后 VAD 在说话的帧直接放行——
        // 能量门槛把真人轻声整句挡住的实证下，silero VAD 持续检出人声 ≥1s 即
        // 可信为真人语音，不再要求 RMS 过门槛。
        // 预滚已含当前帧（方法入口已入队），直接整体回放，无重复无遗漏
        if (loudStreak >= openFrames || (observeFallbackArmed && vadActive)) {
            isOpen = true
            everOpened = true
            if (!loud) {
                // 观察放行开门：当前帧低于能量门槛（轻声），lastLoudMs 需对齐
                // hangover 语义（该帧时刻起保持开门），否则下一帧立即判关门
                lastLoudMs = nowMs
            }
            val flushed = preRoll.toList()
            preRoll.clear()
            return flushed
        }
        // keepalive：长时间关门时周期性放行 1 帧，维持服务端"有上行"判定
        return if (nowMs - lastKeepaliveMs >= keepaliveIntervalMs) {
            lastKeepaliveMs = nowMs
            listOf(frame)
        } else {
            emptyList()
        }
    }

    companion object {
        /**
         * v2.3.13 生产接线工厂：启用底噪自适应三件套（方案 §2.1 推荐档参数），
         * 其余参数沿用默认（与 v2.3.12 固定门槛版一致，单点差异便于归因）。
         */
        fun adaptive(): ListenGatePolicy = ListenGatePolicy(adaptive = true)
    }
}
