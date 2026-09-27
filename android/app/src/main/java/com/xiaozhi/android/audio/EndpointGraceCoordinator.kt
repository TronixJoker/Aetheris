package com.xiaozhi.android.audio

import java.util.concurrent.atomic.AtomicBoolean
import java.util.concurrent.atomic.AtomicLong

/**
 * 端点收尾协调器（纯 Kotlin，可单测）：把「切段 → 弹性宽限 → 收尾」的判定状态机
 * 从 MainViewModel 下沉为纯逻辑。本类只做判定、不持有时钟/协程——计时由调用方
 * （MainViewModel，主线程 Job.delay）执行，回调可能来自 VAD 工作线程与主线程，
 * 因此内部状态全部使用原子变量。
 *
 * 状态模型（v2.3.9.1 端点自适应收尾）：
 *  - [generation] 世代号：每切出一段语音自增；收尾计时到期时核对世代，
 *    不一致 = 宽限期内又切出新段 = 用户还在说，本次收尾作废；
 *  - pending（在途收尾）：切段后置 true，收尾执行/续说撤销/会话重置后清除。
 *    pending 为 true 期间的续说信号 = 「句中停顿被兜住」的证据。
 *
 * 续说信号分两级（为什么需要两级见 [onSpeechResumedWithinGrace] 的 KDoc）：
 *  - 帧级（主路径）：[SpeechEndDetector.onSpeechStart] 在宽限窗内以 ~32ms 粒度
 *    感知续说 → [onSpeechResumedWithinGrace]；
 *  - 段级（兜底）：新段成段（≥0.4s 语音 + 1.2s 静音）后才到达 → [onSegmentArrive]
 *    读到 pending 仍为 true → 补一次上调（帧级信号正常时此处读到的恒为 false）。
 *
 * 「必然收尾」不变量（v2.3.9.1 评审 🔴-1 修复，见 [onTailScanDue]）：
 * 帧级续说撤销在途收尾后，若该次续说是 <0.4s 的短促人声型噪音（不成段、世代不前进），
 * 正常宽限收尾队列即被清空——必须由调用方补挂「尾扫兜底计时」（世代键控），
 * 到期经 [onTailScanDue] 判定，恢复「说完必然出结果」的闭环，杜绝聆听态永久挂起。
 *
 * 线程语义：onSegmentArrive / onSpeechResumedWithinGrace 在 VAD 工作线程调用，
 * onFinalizeDue / onTailScanDue / reset 在主线程调用；原子变量保证跨线程可见性与原子性。
 *
 * @param grace 弹性宽限策略（伸缩规则与上下限见 [EndpointGracePolicy]）
 */
class EndpointGraceCoordinator(private val grace: EndpointGracePolicy) {

    /** 一次切段的收尾计划：世代号用于到期核对，graceMs 为本次应收尾的宽限时长 */
    data class SegmentPlan(val generation: Long, val graceMs: Long)

    /** 尾扫兜底计时到期时的判定结论（v2.3.9.1 评审 🔴-1） */
    enum class TailScanDecision {
        /** 世代已前进（宽限内真的又成段）或会话已重置：正常收尾路径接管，本次尾扫作废 */
        VOID,
        /** 到期时距最后检出人声不足 [TAIL_SCAN_VOICE_QUIET_MS]（还在说话/刚开口）：顺延重挂 */
        POSTPONE,
        /** 世代未变且已静音超过门槛：确实说完了，执行收尾（stopListening 出结果） */
        FINALIZE,
    }

    private val generation = AtomicLong(0)
    private val pending = AtomicBoolean(false)

    /** 当前宽限值（透传给调用方打点/日志用） */
    val graceMs: Long get() = grace.graceMs

    companion object {
        /** 尾扫兜底计时的静音基准：对齐 [SpeechEndDetector].silenceDuration 的 1.2s 切段静音线
         *  （语义：若宽限内续说是真语音，成段要到「其结束后 1.2s」才发生——尾扫至少等够同一静音线，
         *  让正常成段路径优先接管，尾扫只兜「不成段的短噪音」的底） */
        const val TAIL_SCAN_SILENCE_MS = 1200L

        /** 尾扫到期允许收尾的最小「距最后检出人声」间隔（评审 🔴-1 指定 >1s）：
         *  说话中 lastVoice 持续刷新 → 恒判定 POSTPONE 顺延，直到真正静音，不伤连续语流 */
        const val TAIL_SCAN_VOICE_QUIET_MS = 1000L
    }

    /**
     * 尾扫兜底计时延迟：撤销收尾后补挂的兜底计时 = 静音线 + 当前宽限。
     * 宽限取当前值（续说撤销路径刚刚完成上调，反映该用户最新的停顿画像）。
     */
    fun tailScanDelayMs(): Long = TAIL_SCAN_SILENCE_MS + graceMs

    /**
     * VAD 切出一段语音（VAD 工作线程）：
     * 若上一段的收尾仍在宽限期内（pending=true）= 段级兜底观测到「宽限内续说」
     * （帧级主路径正常时读不到）→ 上调宽限自愈。
     *
     * @return 本段世代号与应收尾宽限，调用方据此启动收尾计时任务
     */
    fun onSegmentArrive(): SegmentPlan {
        val resumedWithinGrace = pending.getAndSet(false)
        if (resumedWithinGrace) {
            grace.onResumeWithinGrace()
        }
        pending.set(true)
        return SegmentPlan(generation.incrementAndGet(), grace.graceMs)
    }

    /**
     * 帧级续说信号（VAD 工作线程）：宽限期内 VAD 重新检出人声（说完→停顿→又开口）。
     *
     * 为什么必须存在：段级感知要求新段「成段」（≥0.4s 语音 + 1.2s 静音），
     * 相对切段至少滞后 1.6s，而宽限窗只有 300-400ms——句中停顿的续说只能靠
     * 帧级信号在窗内感知，否则宽限「保护句中停顿」的语义形同虚设。
     *
     * 世代号在认领【前】读取（而非认领后）：若主线程 reset 恰落在两次原子操作之间，
     * 读到旧世代 → 尾扫到期世代核对必失败（作废，安全方向）；反之认领后读新世代，
     * 尾扫可能错误键控到新会话的世代。同线程的 onSegmentArrive 不可能插入两者之间。
     *
     * @return 被撤销的在途收尾所属世代号（>0 = 撤销成功，调用方【必须】补挂尾扫兜底
     *         计时 [onTailScanDue]，否则短促噪音撤销收尾后聆听态会永久挂起）；
     *         -1 = 当前无在途收尾（通常是会话内首次开口，无需任何动作）
     */
    fun onSpeechResumedWithinGrace(): Long {
        val genAtSignal = generation.get()
        if (!pending.getAndSet(false)) return -1L
        // 该用户停顿偏长（切段线落在停顿里）→ 上调宽限自适应，端点永不慢于 v2.3.9
        grace.onResumeWithinGrace()
        return genAtSignal
    }

    /**
     * 收尾计时到期（主线程）：世代核对 + pending CAS 认领 + 干净收尾。
     *
     * 🟡 加固（评审 🟡-1）：pending 用 compareAndSet 认领制——与 VAD 线程的
     * 帧级续说撤销并发时（主线程 delay 恢复后数条语句的执行窗口），只有一方能
     * 认领成功，消除「收尾照发 stop + 续说撤销也成功」双双放行的 TOCTOU 窗口。
     *
     * @return true = 世代未变且认领成功（宽限期内无续说）→ 确实说完了：已下调宽限
     *         （逐轮收敛），调用方应执行 stopListening 通知服务端出结果；
     *         false = 宽限期内又成段（世代已前进）或续说已抢先撤销在途收尾，
     *         本次收尾作废，继续聆听
     */
    fun onFinalizeDue(generation: Long): Boolean {
        if (this.generation.get() != generation) return false
        // 认领制：pending 已被帧级续说撤销清掉 → 认领失败 → 本次收尾作废
        if (!pending.compareAndSet(true, false)) return false
        // 干净收尾：宽限期满无续说 → 宽限逐轮下调收敛（下限 300ms，见策略类）
        grace.onCleanFinalize()
        return true
    }

    /**
     * 尾扫兜底计时到期（主线程，v2.3.9.1 评审 🔴-1 修复）：
     * 恢复「必然收尾」不变量——帧级续说撤销在途收尾后，若该续说是 <0.4s 的短促
     * 人声型噪音（不成段 → 世代不前进 → 正常收尾队列已空），由本判定兜底收尾。
     *
     * 判定顺序：
     *  1. 世代核对：宽限内续说真的成了段（世代前进）→ 正常宽限收尾已接管 → VOID；
     *  2. 静音核查：调用方传入「距最后检出人声的毫秒数」（检测器帧级维护，
     *     inSpeech=true 时持续刷新）——不足 [TAIL_SCAN_VOICE_QUIET_MS] 说明还在
     *     说话/刚开口 → POSTPONE 顺延重挂（连续说话一路顺延直到静音）；
     *  3. 世代未变 + 已静音超门槛 → FINALIZE（下调宽限，与干净收尾同规则）。
     *
     * @param generation 挂载尾扫时帧级续说所属的世代号（[onSpeechResumedWithinGrace] 返回值）
     * @param msSinceLastVoiceMs 距最后一次检出人声的毫秒数（检测器无观测时传 Long.MAX_VALUE）
     */
    fun onTailScanDue(generation: Long, msSinceLastVoiceMs: Long): TailScanDecision {
        if (this.generation.get() != generation) return TailScanDecision.VOID
        if (msSinceLastVoiceMs <= TAIL_SCAN_VOICE_QUIET_MS) return TailScanDecision.POSTPONE
        // 兜底收尾 = 干净收尾（最后检出人声已静音超 1s）：宽限同规则下调收敛
        grace.onCleanFinalize()
        return TailScanDecision.FINALIZE
    }

    /**
     * 会话级重置（主线程）：手动停止/新聆听会话启动/打断重启时调用，
     * 清掉上一会话遗留的在途状态，防止旧宽限状态污染新会话。
     * 世代号单调递增（不归零）：reset 即作废上一会话所有在途收尾任务（含尾扫兜底）
     * 的世代核对——即使旧任务因主线程排队竞态在新会话启动后才执行，也不会误停新会话的聆听。
     * 宽限学习值保留（跨会话自适应）。
     */
    fun reset() {
        generation.incrementAndGet()
        pending.set(false)
    }
}
