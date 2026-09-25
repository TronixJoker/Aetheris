package com.xiaozhi.android.audio

/**
 * B2 首帧实证与自愈轮次上限策略（纯 Kotlin，可单测）。
 *
 * 背景（架构师《桌面语音识别_根因分析与修复方案_v1.md》B2）：
 * 旧实现的重启自愈是"无限循环"——1.5s 健康检查失败 → 重启录音 → 再失败 → 再重启……
 * 在"系统识别器未释放/并发策略静音后台应用"的根因下，重启自己永远赢不了，
 * 用户侧表现为"一直转圈但永远听不到"。本轮加入：
 *  1) 首帧实证：启动后 [FIRST_FRAME_SILENCE_MS] 内读到全零帧 → 立即原地重建（不等 1.5s 健康检查）；
 *  2) 轮次上限：连续 [MAX_SILENT_ROUNDS] 轮仍全零 → 停止自愈并明确提示"麦克风被占用"。
 */
object MicSelfHealPolicy {

    /**
     * 首帧实证判定窗口（ms）。
     * 真实麦克风必然有底噪，启动 300ms 内读到全零（数字静音）即可判定采集失效，
     * 无需等 1.5s 健康检查，立刻重建换源。
     */
    const val FIRST_FRAME_SILENCE_MS = 300L

    /**
     * 允许自动重建的最大轮数。
     * 连续 3 轮（每轮 = 启动 + 首帧实证失败）仍全零，判定麦克风被其他应用/系统持续占用，
     * 停止自动重启，把控制权交还给用户（明确提示）。
     */
    const val MAX_SILENT_ROUNDS = 3

    /** 放弃自愈时的用户提示语（明确指向根因：麦克风被占用） */
    const val USER_MESSAGE: String =
        "❌ 麦克风被系统语音服务或其他应用持续占用，自动恢复已停止。请关闭正在使用麦克风的应用（如语音助手、录音/通话类 APP）后重试"

    /**
     * 首帧实证判定：启动后 [FIRST_FRAME_SILENCE_MS] 窗口内是否已可确认"数字静音"。
     *
     * @param elapsedMsSinceStart 自本次采集启动起经过的毫秒数
     * @param framesRead 已读取的帧数（必须 >0，说明 AudioRecord 读循环在正常运转）
     * @param frameMax 期间帧最大绝对值（0 = 全部为数字静音）
     * @return true = 已到窗口期且确认全零，应立即重建
     */
    fun isFirstFrameSilent(elapsedMsSinceStart: Long, framesRead: Int, frameMax: Int): Boolean =
        elapsedMsSinceStart >= FIRST_FRAME_SILENCE_MS && framesRead > 0 && frameMax == 0

    /**
     * 连续静音轮数是否仍允许自动重建（不再无限自愈）。
     * @param silentRounds 已完成的连续静音轮数（0 表示尚未轮空过）
     */
    fun shouldAutoRebuild(silentRounds: Int): Boolean =
        silentRounds in 0 until MAX_SILENT_ROUNDS
}
