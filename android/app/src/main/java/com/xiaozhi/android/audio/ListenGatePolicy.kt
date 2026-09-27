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
 * 设计（收紧识别触发条件，同时不丢失真实语音的起始信息）：
 *  - 平时关门：低于 [openThresholdRms] 的帧不上传；
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
 * 时间语义：所有时间参数使用调用方注入的单调时钟毫秒（App 侧用 SystemClock.elapsedRealtime），
 * 本类不读系统时钟，保证可确定性单测。
 */
class ListenGatePolicy(
    /** 开门能量门槛（PCM16 RMS）：450→400（评审 🔴 修复，380–400 建议区间取 400）。
     *  门槛只是第一道粗滤，服务端 VAD/STT 才是最终判定——轻声/远场语音 RMS
     *  常年在 300–600 波动，450 会把整句挡在门外（用户说了话无反应）；
     *  400 仍明显高于典型房间底噪（约 300），不致噪音回流 */
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
    /** 进入聆听后的延迟开门窗口（TTS 尾音/打断回声衰减期） */
    private val holdoffMs: Long = 600L,
    /** 关门期间的 keepalive 帧间隔 */
    private val keepaliveIntervalMs: Long = 5000L,
    /** 单帧时长（AudioRecorder 固定 20ms/帧） */
    private val frameMs: Long = 20L,
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

    /**
     * 进入聆听状态（LISTENING）时调用：清空历史缓冲、关门并开启 holdoff 窗，
     * 挡下 TTS 尾音/打断瞬间的回声。
     */
    fun onListeningStart(nowMs: Long) {
        isOpen = false
        everOpened = false
        loudStreak = 0
        quietGapFrames = 0
        lastLoudMs = 0L
        lastKeepaliveMs = nowMs
        holdoffUntilMs = nowMs + holdoffMs
        preRoll.clear()
    }

    /**
     * 逐帧处理（LISTENING 状态下的每一帧麦克风音频调用一次）。
     *
     * @param nowMs 单调时钟毫秒
     * @param rms 本帧 PCM RMS
     * @param frame 本帧 PCM 数据（会按需进入预滚缓冲 / 作为返回值放行）
     * @return 需要上传的帧（开门：当前帧；开门瞬间：预滚 + 当前帧；
     *         关门且到 keepalive 时刻：当前帧；其余：空列表 = 不上传）
     */
    fun process(nowMs: Long, rms: Float, frame: ShortArray): List<ShortArray> {
        // 预滚缓冲始终维护（关门期间也在滚动，保证开门瞬间有完整上下文）
        preRoll.addLast(frame)
        if (preRoll.size > preRollCapacity) {
            preRoll.removeFirst()
        }

        val loud = rms >= openThresholdRms
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
        // 开门条件：累计超阈帧数足够（loud 帧计满 [openFrames]，容忍窗内的
        // 回落帧不计入；若 streak 在 holdoff 期间已计满，过期后第一帧即开门，
        // 即使该帧回落也成立——只是提前 1–2 帧放行，无副作用）。
        // 预滚已含当前帧（方法入口已入队），直接整体回放，无重复无遗漏
        if (loudStreak >= openFrames) {
            isOpen = true
            everOpened = true
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
}
