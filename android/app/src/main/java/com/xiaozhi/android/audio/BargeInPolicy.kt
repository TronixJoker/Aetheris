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
 *     连续突增，造成「AI 每一句都被自己的回声打断」的循环。
 *
 * v2.3.9 策略（收紧判定 + 防抖）：
 *  - 能量门槛：绝对 RMS ≥ [absoluteMinRms]（500→1000）且 ≥ 基线×[ratioThreshold]；
 *    播放器实际出声期间（[process] 的 playbackActive=true）绝对门槛再乘
 *    [echoAbsoluteFactor]（回声余量）：真人插话需要盖过扬声器音量，
 *    同时覆盖 VOICE_COMMUNICATION AEC 对媒体外放回声抑制不足的残余；
 *  - 时长门槛 / 豁免窗 / 冷却 / 基线 EMA 同类注释见各参数 KDoc。
 *
 * hotfix 125.1（v2.3.13.3，架构师定稿 §1.2）两项修订：
 *  A. 时域全局放宽（修「播报中打不断」主诉）：[minVoiceMs] 480→360、
 *     [graceMs] 1500→1000——收益对所有机型成立、回归面可控（定稿裁决）；
 *     AEC 正常态的 [echoAbsoluteFactor] 维持 2.0 不动，v2.3.9 误打断治理零回退。
 *  B. 降级态差异化门槛 + echoGuard 循环误打断熔断器（Rev 2，修「MIC 无 AEC →
 *     回声更响 → 门槛 2000 打不断」的病灶机型链路，并防 E>1500 纯回声的
 *     循环自触发——v2.3.7 时代最恶性症状的复发路径）：
 *     - 音源降级（P1-A：VOICE_COMMUNICATION 全零→MIC 粘性）或 FAITHFUL 保真
 *       模式时（[process] 传 micDegraded=true），播放中回声余量倍数改用
 *       [degradedEchoAbsoluteFactor]=1.5（两案保守交集，未熔断态门槛 1500）；
 *     - echoGuard（Rev 2 行为级熔断器）：不做连续能量估计——无 AEC 场景
 *       「回声抬升」与「真人叠加」在能量域信息论不可分（Rev1 帧级下包络 EMA
 *       已被测试 OP-2 证伪并废除），改为在**打断触发瞬间**以三条件判定
 *       「疑似非真人打断」，连续 2 次即熔断（详见 [guardStrike] KDoc）。
 *       TRIP 后本会话降级态门槛 = max(2000, 1.3×rAvg)（rAvg=已证实的回声
 *       观测值，无估计误差），循环误打断止于 2 次；reset() 恢复未熔断态。
 *       两类失效模式后果均为已知行为域（漏熔断 → 12s 内至多 2 次/段误打断；
 *       误熔断 → 回到 v2.3.13.2 现状门槛），方向性安全。
 *
 * 时间语义：所有时间参数使用调用方注入的单调时钟毫秒（App 侧用 SystemClock.elapsedRealtime），
 * 本类不读系统时钟，保证可确定性单测。
 */
class BargeInPolicy(
    /** 最低绝对能量门槛（PCM16 RMS）。低于此值一律视为静音/底噪 */
    private val absoluteMinRms: Float = 1000f,
    /** 播放器实际出声期间的回声余量倍数：绝对门槛 × 此倍数（AEC 正常态，
     *  hotfix 125.1 定稿维持 2.0 不动——误打断治理不回退） */
    private val echoAbsoluteFactor: Float = 2.0f,
    /** 突增倍数：RMS 需 ≥ 噪声基线 × 此倍数 */
    private val ratioThreshold: Float = 3.5f,
    /** 基线下限保护：安静房间基线不会低于此值，防止倍数判定过于敏感 */
    private val baselineFloor: Float = 300f,
    /**
     * 有效人声时长门槛：连续超阈累计达到该毫秒数才允许打断。
     * hotfix 125.1（§1.2 定稿）：480→360 全局放宽——「等一下」「别说了」等短插话
     * 约 300~500ms，480ms 下轻量词常凑不满（打不断主诉的时域构成）；放宽后
     * 能量双门槛与防抖仍在，瞬态噪声（<360ms）安全性不受影响。
     */
    private val minVoiceMs: Long = 360L,
    /**
     * TTS start 豁免窗（AEC 收敛 + 开场冲击期）。
     * hotfix 125.1（§1.2 定稿）：1500→1000 全局放宽——原 1.5s 覆盖了短句播报全程
     * （「好的」≈1s），用户整句无打断机会；AEC 收敛实际在数百 ms 级完成，
     * 1s 已覆盖冲击期。
     */
    private val graceMs: Long = 1000L,
    /** 触发打断后的冷却窗（防抖，杜绝连续打断）。hotfix 125.1：维持 2000 不动 */
    private val cooldownMs: Long = 2000L,
    /** 单帧时长（AudioRecorder 固定 20ms/帧） */
    private val frameMs: Long = 20L,
    /** 字间顿挫容忍帧数：短促的低于阈值帧不清零累计时长。
     *  3→6（评审 🟡）：爆破音闭合/字间停顿常见 50–150ms，60ms 偏紧，
     *  "等一下""停一下"这类短插话可能凑不满时长门槛；放宽到 120ms（6 帧），
     *  能量双门槛仍在，安全性不受影响 */
    private val gapTolerateFrames: Int = 6,
    /**
     * 降级态（micDegraded=true，无硬件 AEC/NS 的 MIC 直采）播放中回声余量倍数：
     * 替代 [echoAbsoluteFactor]。hotfix 125.1 Rev 2（§1.2 定稿）取 1.5——
     * 后端案（1.5）与 SRE 案（1.2~1.4 区间）的保守上界交集，争议最小。
     * 病灶链路：降级机型回声无 AEC 抑制、本就更难盖过，若仍用 2.0×1000=2000
     * 绝对门槛，真人插话 RMS 典型 1200~1800 永远打不断。
     * TRIP 熔断后由 [guardTripCeiling]/[guardTripFactor] 接管（见熔断器参数）。
     */
    private val degradedEchoAbsoluteFactor: Float = 1.5f,
    // ==================== echoGuard 熔断器参数（Rev 2，§1.2 定稿「一字不差」） ====================
    /** 抬升判定倍数：rAvg < 此值×qFlat 判「无叠加抬升」（疑似非真人） */
    private val guardTripRatio: Float = 1.5f,
    /** 循环节奏窗：距上一次 guard 打断 ≤ 此值才视为循环（打断→应答→复播→再打断
     *  的自然循环 ≈3~5s；真人正常对话一轮 ≥8s，留余量） */
    private val guardLoopWindowMs: Long = 12_000L,
    /** 熔断计数上限：无抬升触发累计达到此值（含本次）即 TRIP */
    private val guardStrikeLimit: Int = 2,
    /** 前置安全阀：本播放期回声样本（qFlat 环形窗）< 此帧数（0.8s）时跳过熔断判定
     *  （数据不足不做毁灭性判定，strike 不增——短应答快问快打场景） */
    private val guardMinEchoFrames: Int = 40,
    /** TRIP 门槛兜底：熔断后降级态门槛下限（与 AEC 态门槛同水位，绝不更宽） */
    private val guardTripCeiling: Float = 2000f,
    /** TRIP 门槛自适应系数：熔断后门槛 = max(兜底, 此系数 × rAvg) */
    private val guardTripFactor: Float = 1.3f,
    /** qFlat 环形窗容量（帧）：100 帧 = 2s 回声底估计窗 */
    private val qFlatRingFrames: Int = 100,
) {

    /**
     * echoGuard TRIP 观测事件（Rev 2 §1.2 观测最小集）：熔断发生时由
     * [consumeGuardTrip] 一次性取出，MainViewModel 打点
     * `ECHO_GUARD_TRIP{rAvg, qFlat, newThreshold}` 留档（SRE P2 数据锚点）。
     */
    data class GuardTrip(
        /** 触发判定窗（360ms）内超阈帧 RMS 均值 */
        val rAvg: Float,
        /** 本次播放期回声底估计（环形窗均值） */
        val qFlat: Float,
        /** 熔断后的新门槛（max(2000, 1.3×rAvg)） */
        val newThreshold: Float,
    )

    /** 动态噪声基线（RMS 指数移动平均），仅由"平静帧"更新 */
    var baseline: Float = baselineFloor
        private set

    /**
     * echoGuard 无抬升触发计数（会话级单调累计，公开只读供观测/单测）：
     * 仅「无叠加抬升」的触发计数（真人打断不计数也不清零——历史 strike 保留，
     * 真人插话后回声再闹即达限）；[reset] 才清零。
     */
    var guardStrike: Int = 0
        private set

    /** 本会话是否已熔断（TRIP）。TRIP 后降级态门槛 = [tripThreshold]，会话级生效 */
    var isTripped: Boolean = false
        private set

    /** 熔断后门槛（仅 [isTripped]=true 有效） */
    var tripThreshold: Float = 0f
        private set

    /** qFlat 环形窗当前样本数（本播放期回声帧计数，含豁免窗内开场期） */
    var echoRingCount: Int = 0
        private set

    /** 当前累计的连续（含短顿挫）超阈时长 */
    private var voiceAccumMs = 0L
    /** 当前连续低于阈值的帧数（超过容忍值则清零累计） */
    private var gapFrames = 0
    /** 豁免窗截止时刻（单调时钟毫秒），0 表示无豁免 */
    private var graceUntilMs = 0L
    /** 上次触发打断的时刻（单调时钟毫秒），null 表示尚未触发过 */
    private var lastTriggerMs: Long? = null
    /** 上一次 guard 打断（无抬升计数型触发）时刻；间隔判定基准 */
    private var lastGuardTriggerMs: Long? = null

    /** qFlat 环形窗（回声底估计）：仅收 playbackActive ∧ micDegraded 帧 RMS */
    private val echoRing = FloatArray(qFlatRingFrames)
    private var echoRingPos = 0

    /**
     * 触发判定窗 RMS 收集（rAvg 的数据源）：判定态中降级态超阈帧逐帧入列，
     * 触发成功时求均值（不用峰值帧，防 TTS 波形波动误判），随后与累计一起清空。
     */
    private val triggerRmsWindow = ArrayList<Float>(qFlatRingFrames)

    /** 待消费的 TRIP 观测事件（一次性读出） */
    private var pendingGuardTrip: GuardTrip? = null

    /**
     * AI 播报开始（tts start 消息到达）时调用：开启豁免窗并清空累计，
     * 保留噪声基线（它反映房间底噪，跨轮次持续自适应）。
     * echoGuard 环形窗同步清空（§1.2「播放期对齐」：qFlat 语义=本播放期的
     * 回声底，跨播放期混合会让稳态估计失真）；guardStrike 会话级单调、不清。
     */
    fun onTtsStart(nowMs: Long) {
        graceUntilMs = nowMs + graceMs
        voiceAccumMs = 0L
        gapFrames = 0
        echoRingPos = 0
        echoRingCount = 0
        triggerRmsWindow.clear()
    }

    /**
     * 一次性取出 TRIP 观测事件（读后即清，防重复打点）。
     * MainViewModel 在 process 返回 true 后调用，非 null 即输出
     * `ECHO_GUARD_TRIP{rAvg, qFlat, newThreshold}` 观测行。
     */
    fun consumeGuardTrip(): GuardTrip? {
        val trip = pendingGuardTrip
        pendingGuardTrip = null
        return trip
    }

    /**
     * 逐帧判定（SPEAKING 状态下的每一帧麦克风音频调用一次）。
     *
     * @param nowMs 单调时钟毫秒
     * @param rms 本帧 PCM RMS
     * @param playbackActive 播放器是否正在实际出声（AudioPlayer.isPlayingState）。
     *        true 时绝对能量门槛乘以回声余量倍数——AEC 正常态用
     *        [echoAbsoluteFactor]（既"压制 AEC 残余回声误判"又符合"插话需
     *        盖过扬声器"的物理直觉）；micDegraded 态用
     *        [degradedEchoAbsoluteFactor]（未熔断）或 [tripThreshold]（已熔断）。
     * @param micDegraded 麦克风链路是否无硬件回声抑制（音源降级为 MIC 或
     *        FAITHFUL 保真模式，见 AudioRecorder.isEchoUnguarded）。默认 false
     *        ——既有调用点/单测零改动兼容（hotfix 125.1 §1.2 接线要求）；
     *        false 时 echoGuard 全逻辑不激活（qFlat 窗不收、strike 不计、
     *        熔断门槛不生效）。
     * @return true = 确认有效人声（时长 + 能量双门槛满足），应执行打断。
     *         打断后本类进入冷却窗，冷却期内不会再次返回 true。
     */
    fun process(
        nowMs: Long,
        rms: Float,
        playbackActive: Boolean = false,
        micDegraded: Boolean = false,
    ): Boolean {
        // 0) echoGuard 观测采样（不参与判定，仅熔断器数据源）：
        //    仅降级态 + 播放中收帧（回声只在该组合下存在——打断后播放器
        //    stopAndClear → playbackActive=false，冷却期帧自然不收）；
        //    豁免窗内照收（开场期回声是真实回声底样本，且窗清空以
        //    onTtsStart 为界，播放期对齐）。AEC 态（micDegraded=false）不收。
        if (playbackActive && micDegraded) {
            echoRing[echoRingPos] = rms
            echoRingPos = (echoRingPos + 1) % qFlatRingFrames
            if (echoRingCount < qFlatRingFrames) echoRingCount++
        }
        // 1) TTS start 豁免窗：不判定、不累计、不吸基线
        //    （回声在窗内持续超阈，若此时更新基线会把回声能量灌进基线，
        //      导致下一轮真人语音反而过不了倍数判定）
        if (nowMs < graceUntilMs) {
            resetAccumulation()
            return false
        }
        // 2) 冷却窗（防抖）：刚打断过，短期内不再二次打断（状态同样冻结）
        val lastTrigger = lastTriggerMs
        if (lastTrigger != null && nowMs - lastTrigger < cooldownMs) {
            resetAccumulation()
            return false
        }
        // 3) 能量双门槛：绝对能量（播放中带回声余量）+ 相对基线突增
        val effectiveAbsMin = if (playbackActive) {
            if (micDegraded) {
                if (isTripped) {
                    // TRIP 熔断后（会话级生效）：max(2000, 1.3×rAvg)，
                    // rAvg 是触发瞬间的已证实回声观测值，无估计误差
                    tripThreshold
                } else {
                    absoluteMinRms * degradedEchoAbsoluteFactor
                }
            } else {
                // AEC 正常态：维持 v2.3.9 治理参数，hotfix 125.1 定稿明确不动
                absoluteMinRms * echoAbsoluteFactor
            }
        } else {
            absoluteMinRms
        }
        val isBurst = rms >= effectiveAbsMin && rms >= baseline * ratioThreshold
        return if (isBurst) {
            gapFrames = 0
            voiceAccumMs += frameMs
            if (micDegraded) triggerRmsWindow.add(rms) // rAvg 数据源（仅降级态）
            if (voiceAccumMs >= minVoiceMs) {
                // 有效人声确认：触发打断、进入冷却窗
                // 3.5) echoGuard 熔断判定（Rev 2，仅降级态；在触发瞬间做行为级判定）
                if (micDegraded) evaluateEchoGuard(nowMs)
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
            // 若回声（如 600–900，低于播放中绝对门槛）走"平静帧"分支被 EMA
            // 持续灌进基线，几秒后基线升至回声水平、3.5× 倍数判定随之失效抬升，
            // 真人插话会被"绝对 + 相对"双门卡死，愈发插不进话
            if (!playbackActive && rms < baseline * ratioThreshold) {
                baseline = baseline * BASELINE_EMA_KEEP + rms * (1f - BASELINE_EMA_KEEP)
                if (baseline < baselineFloor) baseline = baselineFloor
            }
            false
        }
    }

    /**
     * echoGuard 三条件熔断判定（Rev 2 §1.1，在触发瞬间调用，仅降级态）：
     *  1. 无叠加抬升：rAvg（触发判定窗 360ms 内超阈帧均值）< 1.5 × qFlat
     *     （本播放期回声底=环形窗均值）。真人插话必有叠加抬升（V≥1100 时
     *     rAvg/qFlat ≥ 1.5，与门槛可达条件数学重合）；纯回声/稳态噪声
     *     rAvg≈qFlat；
     *  2. 循环节奏：距上一次 guard 打断 ≤ 12s（打断→应答→复播→再打断的
     *     自然循环 ≈3~5s；真人正常对话一轮 ≥8s）；
     *  3. 计数达限：guardStrike ≥ 2（含本次；strike 仅无抬升触发计数、
     *     单调累计，真人打断不计数也不清零）。
     * 前置安全阀：本播放期回声样本 <40 帧（0.8s）→ 跳过全部判定
     * （数据不足不做毁灭性判定，strike 不增）——短应答快问快打场景。
     * TRIP 动作：本会话余下降级态门槛 = max(2000, 1.3×rAvg)，并生成
     * [GuardTrip] 观测事件（MainViewModel 打 ECHO_GUARD_TRIP 行）。
     */
    private fun evaluateEchoGuard(nowMs: Long) {
        // 前置安全阀：样本量不足（本播放期 <0.8s 回声）跳过判定，strike 不增
        if (echoRingCount < guardMinEchoFrames) return
        val rAvg = if (triggerRmsWindow.isEmpty()) 0f else {
            var sum = 0f
            for (r in triggerRmsWindow) sum += r
            sum / triggerRmsWindow.size
        }
        var qSum = 0f
        for (i in 0 until echoRingCount) qSum += echoRing[i]
        val qFlat = qSum / echoRingCount
        // 条件 1：无叠加抬升（有抬升=疑似真人：不计数、不清零、不熔断）
        val noLift = rAvg < guardTripRatio * qFlat
        if (!noLift) return
        // 无抬升（疑似回声/稳态噪声）：guard 计数（与间隔无关——偶发误打断
        // 也累计，间隔条件只约束 TRIP，§1.3 行 8 口径）
        guardStrike++
        val last = lastGuardTriggerMs
        // 条件 2：循环节奏（距上一次 guard 打断 ≤12s）
        val inLoop = last != null && nowMs - last <= guardLoopWindowMs
        // 条件 3：计数达限（含本次）→ TRIP
        if (guardStrike >= guardStrikeLimit && inLoop) {
            isTripped = true
            tripThreshold = maxOf(guardTripCeiling, guardTripFactor * rAvg)
            pendingGuardTrip = GuardTrip(rAvg, qFlat, tripThreshold)
        }
        lastGuardTriggerMs = nowMs
    }

    /**
     * 完全重置（新会话/手动打断重启/状态切换时可选调用）：
     * 保留噪声基线（跨轮次持续自适应）；清空 echoGuard 全部状态——
     * strike/时间戳/环形窗/触发窗清零、熔断态恢复（门槛回 1500 重新观察；
     * 若真处大回声环境将再次 2 次熔断，节奏可控，§1.1 Rev 2 定稿）。
     */
    fun reset() {
        graceUntilMs = 0L
        lastTriggerMs = null
        guardStrike = 0
        lastGuardTriggerMs = null
        echoRingPos = 0
        echoRingCount = 0
        triggerRmsWindow.clear()
        isTripped = false
        tripThreshold = 0f
        pendingGuardTrip = null
        resetAccumulation()
    }

    private fun resetAccumulation() {
        voiceAccumMs = 0L
        gapFrames = 0
        triggerRmsWindow.clear()
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
