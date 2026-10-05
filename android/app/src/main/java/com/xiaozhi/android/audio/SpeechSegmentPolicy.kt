package com.xiaozhi.android.audio

/**
 * 语音段→端点收尾判定策略（纯 Kotlin，可单测）。
 *
 * 背景（v2.3.10 用户反馈「说完话后仍停留在识别中，迟迟不结束」）：
 * 旧实现在 [SpeechEndDetector] 里用 `durationMs in 1200..15000` 过滤切段结果——
 *  1. 0.4s~1.2s 的语音段被【静默丢弃】：「好的」「几点了」「打开音乐」等短命令
 *     永不触发端点收尾 → 客户端停在聆听态、服务端（auto 模式等 listen stop）
 *     永远等不到收尾信号 → stt 结果永不返回 →「识别中」无限悬挂；
 *  2. >15s 的长独白段同样被丢弃（注释宣称「强制切段」，实现却漏掉了上界分支）
 *     → 同样悬挂。
 *
 * ## 1200 → 600 的依据（为什么现在敢降）
 * v2.3.3 设 1.2s 时 minSpeechDuration 仅 0.25s，0.25~1.2s 区间充斥「嗯/啊」
 * 口头禅，降门槛会「整句只剩嗯被送去识别」；v2.3.9 已将 minSpeechDuration
 * 提到 0.40s（瞬态噪音在 VAD 层就不成段），且 v2.3.9.1 弹性宽限（300~400ms）
 * 会在用户续说时【撤销】收尾——「口头禅后继续说话」的场景已被宽限机制兜住。
 * 因此 0.6~1.2s 的真实语音段（典型=短命令）现在触发端点是安全的：
 *  - 若后面还有话 → 宽限撤销，无副作用；
 *  - 若确实说完了 → 正常收尾，服务端识别（修复短命令悬挂）。
 */
object SpeechSegmentPolicy {

    /** 触发端点收尾的最短语音段时长。低于此值丢弃（口头禅/瞬态，见类注释）。 */
    const val MIN_ENDPOINT_MS = 600L

    /** 超过此长度的语音段强制收尾（「强制切段」防长独白悬挂与样本堆积）。 */
    const val MAX_FORCE_ENDPOINT_MS = 15000L

    /** 判定结果：丢弃 / 正常端点 / 超长强制端点。 */
    enum class Decision { DROP, ENDPOINT, FORCE_ENDPOINT }

    /**
     * 对一段已完成的 VAD 语音段（durationMs = 纯语音时长）判定是否触发端点收尾。
     * @param durationMs 语音段时长（毫秒），须 >= 0；负值视为非法按 DROP 处理
     */
    fun decide(durationMs: Long): Decision {
        if (durationMs < MIN_ENDPOINT_MS) return Decision.DROP
        if (durationMs > MAX_FORCE_ENDPOINT_MS) return Decision.FORCE_ENDPOINT
        return Decision.ENDPOINT
    }
}
