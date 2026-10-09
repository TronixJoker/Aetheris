package com.xiaozhi.android.audio

/**
 * 说话端点自适应宽限策略（纯 Kotlin，可单测）。
 *
 * 背景（v2.3.9 用户反馈）：「说完话到出识别结果的等待明显变长」。
 * v2.3.9 为治理句中停顿误切段，把本地 VAD 静音判定固定收紧为 1.6s——
 * 所有用户「说完 → stopListening → 服务端出结果」的链路被无条件拖慢 0.4s。
 *
 * 设计（静音判定回调 + 按停顿自适应，保住误切治理效果的同时压缩尾延迟）：
 *  - 端点判定拆成两级：本地 VAD 静音 [SpeechEndDetector.silenceDuration] 切段
 *    （v2.3.13 起为 0.8s，负责切段 + 挡住 <0.8s 的换气/字间顿挫），
 *    切段后不再立即停，而是经过一道「弹性宽限」[graceMs]：
 *      - 宽限期内用户继续说（句中停顿）→ 取消收尾、同一轮聆听继续，不切断语义；
 *      - 宽限期满无续说 → 才真正判定"说完了"，通知服务端出结果；
 *  - 宽限自适应伸缩（本类核心，v2.3.13 收窄至 [200, 300]ms 自适应窗）：
 *      - 首轮 [initialGraceMs]=300ms → 端点总时长 0.8+0.3=1.1s
 *        （架构师方案 §1.1 推荐档，达成「说完→停止识别」1 秒级）；
 *      - 每次干净说完（宽限期满、无续说）→ 宽限 -[decayStepMs]（[onCleanFinalize]），
 *        说话不停顿的用户 1 轮内收敛到 [minGraceMs]=200ms → 端点 1.0s；
 *      - 出现「宽限内续说」（句中停顿被兜住）或「收尾后 2.5s 内秒续说」
 *        （大概率上句被切早）→ 宽限 +[raiseStepMs]（[onResumeWithinGrace]），
 *        上限 [maxGraceMs]=300ms → 收敛态误切后立即恢复保护窗；
 *  - 误切安全性：0.8s 静音线 + 200ms 最小宽限下，0.6~0.8s 句中停顿仍 100% 被
 *    帧级续说撤销兜住（v2.3.13 验收 §5-2）；>1s 停顿允许切段（切段后照常收尾）。
 *  - 状态保留：宽限值跨聆听会话持续学习（App 进程生命周期内不重置），
 *    用户的停顿习惯在数轮对话内自动收敛。
 *
 * 线程语义：[graceMs] 可能被 VAD 工作线程（上调）与主线程（下调）并发读写，
 * 声明为 @Volatile 保证 arm32 上的原子性与可见性。
 */
class EndpointGracePolicy(
    /** 首轮宽限：端点总时长 0.8+0.3=1.1s（架构师方案 §1.1 推荐档） */
    initialGraceMs: Long = 300L,
    /** 收敛下限：端点总时长 0.8+0.2=1.0s（v2.3.13 收窄）。
     *  200ms 下限的安全边界：0.8s 静音线本身已挡住 <0.8s 停顿，宽限只需覆盖
     *  「0.8s 切段后 +0.2s 内续说」的最坏窗；更长的句中停顿由帧级续说撤销
     *  （切段前）与尾扫兜底（切段后不成段噪音）分别保护，不再依赖加长宽限 */
    private val minGraceMs: Long = 200L,
    /** 收敛上限：收敛态遇误切/秒续说恢复到首轮水位 300ms（端点 1.1s 封顶） */
    private val maxGraceMs: Long = 300L,
    /** 误切自愈步长：宽限内续说 / 秒续说时上调幅度 */
    private val raiseStepMs: Long = 300L,
    /** 干净收尾步长：每次"说完了且无续说"后下调幅度 */
    private val decayStepMs: Long = 100L,
) {

    /** 当前弹性宽限时长（切段后等待续说的窗口） */
    @Volatile
    var graceMs: Long = initialGraceMs
        private set

    /**
     * 宽限期内用户继续说话 / 收尾后很快又开始说话：说明上一段大概率是
     * 句中停顿（或被切早了），上调宽限以覆盖该用户的停顿习惯。
     * 上限 [maxGraceMs]——端点总时长永不慢于 v2.3.9。
     */
    fun onResumeWithinGrace() {
        graceMs = (graceMs + raiseStepMs).coerceAtMost(maxGraceMs)
    }

    /**
     * 干净收尾（宽限期满无续说，确实说完了）：说话不停顿的用户逐步收敛，
     * 下限 [minGraceMs]——仍保留最小弹性，避免完全退化回 v2.3.8 的裸 1.2s。
     */
    fun onCleanFinalize() {
        graceMs = (graceMs - decayStepMs).coerceAtLeast(minGraceMs)
    }
}
