package com.xiaozhi.android.audio

/**
 * Barge-in（AI 播报期间用户自动打断）判定策略（纯 Kotlin，可单测）。
 *
 * 背景（v2.3.9 用户反馈）：「停止说话检测太灵敏，一点动静（环境噪音）就被当作语音，
 * AI 输出被多次中断」。
 *
 * 旧实现（MainViewModel 内联 RMS 判定）的过灵敏根因：
 *  1) 绝对能量门槛过低（RMS 500 ≈ 满量程 1.5%）：关门、脚步、键盘、空调等环境噪音
 *     均可超过。且 AcousticEchoCanceler 只在通话下行链路生效，TTS 走媒体外放通道时
 *     回声会泄漏进麦克风，其 RMS 常年高于 500（音源降级为 MIC 时更甚）；
 *  2) 时长门槛过短（8 帧 ≈ 160ms 连续超阈）：短促噪声的瞬态 + 混响尾即可凑满，
 *     防抖形同虚设；
 *  3) TTS start 后豁免窗实际仅 1s（注释写 1.5s 但误用了 vadCooldownMs=1000）。
 *     AEC 收敛期过后 TTS 回声是"持续超阈"的——豁免窗一过，回声自己就能凑满 8 帧
 *     连续突增，造成「AI 每说一句都被自己的回声打断」的循环。
 *
 * 新策略（本类，收紧判定 + 防抖）：
 *  - 能量门槛：绝对 RMS ≥ [absoluteMinRms]（500→1000）且 ≥ 基线×[ratioThreshold]；
 *    播放器实际出声期间（[process] 的 playbackActive=true）绝对门槛再乘
 *    [echoAbsoluteFactor]（回声余量）：真人插话需要盖过扬声器音量，
 *    同时覆盖 VOICE_COMMUNICATION AEC 对媒体外放回声抑制不足的残余；
 *  - 时长门槛：连续超阈累计 ≥ [minVoiceMs]（480ms）才算"有效人声"，
 *    允许 ≤[gapTolerateFrames] 帧的字间顿挫不被清零；
 *  - TTS start 后 [graceMs]（1.5s）豁免窗：AEC 收敛 + TTS 开场冲击期不判定、不吸基线；
 *  - 触发打断后 [cooldownMs]（2s）冷却，杜绝连续打断（防抖）；
 *  - 噪声基线 EMA 只在"平静帧"更新（播放中不更新：回声不是底噪，评审 🟡），
 *    且下限 [baselineFloor]（150→300），
 *    避免安静房间里倍数判定形同虚设，也避免人声被吸收进基线。
 *
 * 时间语义：所有时间参数使用调用方注入的单调时钟毫秒（App 侧用 SystemClock.elapsedRealtime），
 * 本类不读系统时钟，保证可确定性单测。
 */
class BargeInPolicy(
    /** 最低绝对能量门槛（PCM16 RMS）。低于此值一律视为静音/底噪 */
    private val absoluteMinRms: Float = 1000f,
    /** 播放器实际出声期间的回声余量倍数：绝对门槛 × 此倍数 */
    private val echoAbsoluteFactor: Float = 2.0f,
    /** 突增倍数：RMS 需 ≥ 噪声基线 × 此倍数 */
    private val ratioThreshold: Float = 3.5f,
    /** 基线下限保护：安静房间基线不会低于此值，防止倍数判定过于敏感 */
    private val baselineFloor: Float = 300f,
    /** 有效人声时长门槛：连续超阈累计达到该毫秒数才允许打断 */
    private val minVoiceMs: Long = 480L,
    /** TTS start 豁免窗（AEC 收敛 + 开场冲击期） */
    private val graceMs: Long = 1500L,
    /** 触发打断后的冷却窗（防抖，杜绝连续打断） */
    private val cooldownMs: Long = 2000L,
    /** 单帧时长（AudioRecorder 固定 20ms/帧） */
    private val frameMs: Long = 20L,
    /** 字间顿挫容忍帧数：短促的低于阈值帧不清零累计时长。
     *  3→6（评审 🟡）：爆破音闭合/字间停顿常见 50–150ms，60ms 偏紧，
     *  "等一下""停一下"这类短插话可能凑不满 480ms；放宽到 120ms（6 帧），
     *  能量双门槛仍在，安全性不受影响 */
    private val gapTolerateFrames: Int = 6,
) {

    /** 动态噪声基线（RMS 指数移动平均），仅由"平静帧"更新 */
    var baseline: Float = baselineFloor
        private set

    /** 当前累计的连续（含短顿挫）超阈时长 */
    private var voiceAccumMs = 0L
    /** 当前连续低于阈值的帧数（超过容忍值则清零累计） */
    private var gapFrames = 0
    /** 豁免窗截止时刻（单调时钟毫秒），0 表示无豁免 */
    private var graceUntilMs = 0L
    /** 上次触发打断的时刻（单调时钟毫秒），null 表示尚未触发过 */
    private var lastTriggerMs: Long? = null

    /**
     * AI 播报开始（tts start 消息到达）时调用：开启豁免窗并清空累计，
     * 但保留噪声基线（它反映房间底噪，跨轮次持续自适应）。
     */
    fun onTtsStart(nowMs: Long) {
        graceUntilMs = nowMs + graceMs
        voiceAccumMs = 0L
        gapFrames = 0
    }

    /**
     * 逐帧判定（SPEAKING 状态下的每一帧麦克风音频调用一次）。
     *
     * @param nowMs 单调时钟毫秒
     * @param rms 本帧 PCM RMS
     * @param playbackActive 播放器是否正在实际出声（AudioPlayer.isPlayingState）。
     *        true 时绝对能量门槛乘以 [echoAbsoluteFactor]（回声余量）：
     *        既能压制 AEC 残余回声误判，也符合"插话需要盖过扬声器"的物理直觉。
     * @return true = 确认有效人声（时长 + 能量双门槛满足），应执行打断。
     *         打断后本类进入冷却窗，冷却期内不会再次返回 true。
     */
    fun process(nowMs: Long, rms: Float, playbackActive: Boolean = false): Boolean {
        // 1) TTS start 豁免窗：不判定、不累计、不吸基线
        //    （回声在窗内持续超阈，若此时更新基线会把回声能量灌进基线，
        //      导致下一轮真人语音反而过不了倍数判定）
        if (nowMs < graceUntilMs) {
            resetAccumulation()
            return false
        }
        // 2) 冷却窗（防抖）：刚打断过，短期内不再二次打断
        val lastTrigger = lastTriggerMs
        if (lastTrigger != null && nowMs - lastTrigger < cooldownMs) {
            resetAccumulation()
            return false
        }
        // 3) 能量双门槛：绝对能量（播放中带回声余量）+ 相对基线突增
        val effectiveAbsMin = if (playbackActive) absoluteMinRms * echoAbsoluteFactor else absoluteMinRms
        val isBurst = rms >= effectiveAbsMin && rms >= baseline * ratioThreshold
        return if (isBurst) {
            gapFrames = 0
            voiceAccumMs += frameMs
            if (voiceAccumMs >= minVoiceMs) {
                // 有效人声确认：触发打断并进入冷却窗
                resetAccumulation()
                lastTriggerMs = nowMs
                true
            } else {
                false
            }
        } else {
            // 平静帧：短顿挫容忍（≤ gapTolerateFrames 帧不清零），
            // 真正的静音段才清零累计，避免"你-好"这类字间停顿永远凑不满时长
            if (gapFrames < gapTolerateFrames) {
                gapFrames++
            } else {
                voiceAccumMs = 0L
            }
            // 基线只在明显平静的帧更新（EMA），且不向上吸收人声、不低于下限。
            // 播放中跳过更新（评审 🟡 修复）：TTS 回声不是房间底噪，本就不该吸——
            // 若回声（如 600–900，低于播放中绝对门槛 2000）走"平静帧"分支被 EMA
            // 持续灌进基线，几秒后基线升至回声水平、3.5× 倍数判定随之失效抬升，
            // 真人插话会被"绝对 + 相对"双门卡死，愈发插不进话
            if (!playbackActive && rms < baseline * ratioThreshold) {
                baseline = baseline * BASELINE_EMA_KEEP + rms * (1f - BASELINE_EMA_KEEP)
                if (baseline < baselineFloor) baseline = baselineFloor
            }
            false
        }
    }

    /** 完全重置（新一轮对话/状态切换时可选调用），保留噪声基线 */
    fun reset() {
        graceUntilMs = 0L
        lastTriggerMs = null
        resetAccumulation()
    }

    private fun resetAccumulation() {
        voiceAccumMs = 0L
        gapFrames = 0
    }

    companion object {
        /** 基线 EMA 平滑系数：新值权重 0.1（与旧实现一致，慢速自适应） */
        private const val BASELINE_EMA_KEEP = 0.9f

        /** PCM16 帧 RMS（与旧实现口径一致：sqrt(mean(x^2))，满量程 32768） */
        fun rmsOf(pcm: ShortArray): Float {
            if (pcm.isEmpty()) return 0f
            var sum = 0.0
            for (s in pcm) {
                val v = s.toDouble()
                sum += v * v
            }
            return kotlin.math.sqrt(sum / pcm.size).toFloat()
        }
    }
}
