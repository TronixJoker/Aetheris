package com.xiaozhi.android.audio

/**
 * VAD 推理异常自愈策略（纯 Kotlin，可单测）。
 *
 * 背景（v2.3.11 现网复发「说完话不自动停止、一直聆听」的硬根因之一）：
 * [SpeechEndDetector] 工作线程旧实现在 `acceptWaveform` 抛异常时直接 `return`——
 * 线程被永久杀死且上层毫无感知：`running/active` 仍为 true，`feed` 继续入队
 * （内存缓慢堆积），`onSpeechEnd/onSpeechStart` 从此永不触发。此后无论用户说
 * 什么，本地 VAD 都不会再产生端点事件 → 聆听态永久悬挂（keepalive 维持连接，
 * 连空闲断链都不触发）。silero VAD 为 native（onnxruntime/JNI）实现，异常在
 * 特定机型/内存压力/音频数据下偶发，一旦发生即瘫痪，这正是多轮治理仍未根治
 * 的复发点。
 *
 * 策略（与 B2 麦克风自愈同一设计哲学——「有界自愈 + 明确上抛，绝不静默死亡」）：
 *  - 连续异常前 [MAX_REBUILD_ATTEMPTS] 次：允许重建 VAD 实例（release → 重新加载
 *    模型）自愈——单次异常大概率是 native 层瞬态（内存紧张/状态损坏），重建即恢复；
 *  - 超过上限：判定为持续性故障，不再原地空转重建（白耗 CPU + 反复失败刷日志），
 *    上报 FATAL，由 ViewModel 层感知并重建整个检测器（线程死亡不得静默）。
 *
 * 连续语义：任一窗口推理/状态读取成功即清零计数（偶发单次异常不累积）。
 */
object VadSelfHealPolicy {

    /**
     * 连续异常后允许原地重建 VAD 的最大次数。
     * 取 5：与 B2 的 MicSelfHealPolicy.MAX_SILENT_ROUNDS 轮次口径一致——
     * 足够覆盖瞬态故障（重建成功即恢复），又不至于在持续性故障下长时间
     * 空转（每次重建含模型加载约 1s，5 次后必须把故障上抛给上层决策）。
     */
    const val MAX_REBUILD_ATTEMPTS = 5

    /** 连续异常后的处置决策。 */
    enum class Decision {
        /** 第 1~5 次连续异常：release 旧实例并重建 VAD（自愈） */
        REBUILD,
        /** 连续异常超过上限：原地重建已无意义，上抛 FATAL（上层重建整个检测器） */
        FATAL,
    }

    /**
     * 对「连续第 failureStreak 次异常」给出处置决策。
     * @param failureStreak 连续异常次数（>=1；调用方在异常时 +1 后传入）
     */
    fun decide(failureStreak: Int): Decision =
        if (failureStreak in 1..MAX_REBUILD_ATTEMPTS) Decision.REBUILD else Decision.FATAL
}
