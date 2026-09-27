package com.xiaozhi.android.audio

/**
 * 说话端点自适应宽限策略（纯 Kotlin，可单测）。
 *
 * 背景（v2.3.9 用户反馈）：「说完话到出识别结果的等待明显变长」。
 * v2.3.9 为治理句中停顿误切段，把本地 VAD 静音判定固定收紧为 1.6s——
 * 所有用户「说完 → stopListening → 服务端出结果」的链路被无条件拖慢 0.4s。
 *
 * 设计（静音判定回调 + 按停顿自适应，保住 v2.3.9 治理效果的同时压缩尾延迟）：
 *  - 端点判定拆成两级：本地 VAD 静音 [SpeechEndDetector.silenceDuration] 回调到
 *    1.2s（v2.3.8 水位，负责切段 + 挡住 <1.2s 的换气/字间顿挫），
 *    切段后不再立即停，而是经过一道「弹性宽限」[graceMs]：
 *      - 宽限期内用户继续说（句中停顿）→ 取消收尾、同一轮聆听继续，不切断语义；
 *      - 宽限期满无续说 → 才真正判定"说完了"，通知服务端出结果；
 *  - 宽限自适应伸缩（本类核心）：
 *      - 首轮 [initialGraceMs]=400ms → 端点总时长 1.2+0.4=1.6s，与 v2.3.9 完全一致，
 *        升级首日对慢语速用户零劣化（治理效果不打折）；
 *      - 每次干净说完（宽限期满、无续说）→ 宽限 -[decayStepMs]（[onCleanFinalize]），
 *        说话不停顿的用户 1 轮内收敛到 [minGraceMs]=300ms → 端点 1.5s，
 *        较 v2.3.9 提速 0.1s；
 *      - 出现「宽限内续说」（句中停顿被兜住）或「收尾后 2.5s 内秒续说」
 *        （大概率上句被切早）→ 宽限 +[raiseStepMs]（[onResumeWithinGrace]），
 *        上限 [maxGraceMs]=400ms → 端点永不慢于 v2.3.9 的 1.6s；
 *  - 状态保留：宽限值跨聆听会话持续学习（App 进程生命周期内不重置），
 *    用户的停顿习惯在数轮对话内自动收敛。
 *
 * 线程语义：[graceMs] 可能被 VAD 工作线程（上调）与主线程（下调）并发读写，
 * 声明为 @Volatile 保证 arm32 上的原子性与可见性。
 */
class EndpointGracePolicy(
    /** 首轮宽限：端点总时长 1.2+0.4=1.6s，与 v2.3.9 对齐（首日不劣化） */
    initialGraceMs: Long = 400L,
    /** 收敛下限：端点总时长 1.2+0.3=1.5s（较 v2.3.9 -0.1s）。
     *  v2.3.9.1 评审 🔴-2 修复：150→300——150 下限使收敛态端点 1.35s，会把
     *  「句中停顿 1.35~1.6s」的用户逐轮误切（该区间正是 v2.3.9 加长所保护的人群，
     *  且其续说信号在 AI 应答链路延迟下无法触发自愈上调）；300 下限保证最坏情况
     *  只比 v2.3.9 紧 100ms，仍有 onResumeWithinGrace 自愈兜底 */
    private val minGraceMs: Long = 300L,
    /** 收敛上限：端点总时长永不慢于 v2.3.9 的 1.6s */
    private val maxGraceMs: Long = 400L,
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
