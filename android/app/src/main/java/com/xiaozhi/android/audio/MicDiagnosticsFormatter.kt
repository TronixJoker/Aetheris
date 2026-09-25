package com.xiaozhi.android.audio

import android.os.Build

/**
 * B5 观测埋点：诊断快照格式化（纯 Kotlin，可单测）。
 *
 * 触发场景（由 ViewModel 调用）：全零/空 stt、B1 等待超时、自愈轮次等异常时刻，
 * 输出一行结构化快照，写 logcat（用户可导出）+ 应用内日志面板（用户可截图），
 * 形成"用户反馈 → 根因定位"的闭环。
 *
 * 快照字段（与架构师方案 B5 对齐）：
 *  - reason      触发原因标记（如 EMPTY_STT / FIRST_FRAME_SILENT_R1 / B1_WAIT_TIMEOUT）
 *  - src         当前实际音源（AudioRecorder.currentSourceName()）
 *  - frames      本次 start() 起已读帧数
 *  - frameMax    本次 start() 起帧最大绝对值（0 = 数字静音）
 *  - rebuildRounds  B2 首帧静音重建轮数
 *  - healRounds  ViewModel 侧静音自愈轮数
 *  - cfgs        系统活跃采集会话摘要（activeRecordingConfigurations）
 *  - device      设备型号
 *  - android     系统版本
 *
 * 抽为独立 object 的原因：快照格式是"用户反馈闭环"的约定，
 * 需要单测锁定字段齐全性与格式稳定性，防止后续改动丢字段。
 */
object MicDiagnosticsFormatter {

    /** 日志面板展示的最大长度（防止面板溢出，超出部分由调用方截断） */
    const val UI_LOG_MAX_LENGTH = 160

    /**
     * 快照各字段的数据载体（与 Android 环境解耦，便于纯 JVM 单测构造）。
     */
    data class Fields(
        val reason: String,
        val sourceName: String,
        val frames: Int,
        val frameMax: Int,
        val rebuildRounds: Int,
        val healRounds: Int,
        val activeConfigSummary: String,
        val device: String = Build.MANUFACTURER + " " + Build.MODEL,
        val androidVersion: String = Build.VERSION.RELEASE + "(SDK " + Build.VERSION.SDK_INT + ")"
    )

    /**
     * 生成一行诊断快照，格式示例：
     * `[MicDiag] reason=EMPTY_STT | src=VOICE_COMMUNICATION | frames=25 | frameMax=0 |
     *  rebuildRounds=1 | healRounds=1 | cfgs=1个会话 [sess=123 src=VOICE_RECOGNITION] |
     *  device=Google Pixel 8 | android=14(SDK 34)`
     *
     * 所有字段做 null 容错（任一采集接口失败不应让诊断本身抛异常）。
     */
    fun build(f: Fields): String = buildString {
        append("[MicDiag] reason=").append(f.reason)
        append(" | src=").append(f.sourceName)
        append(" | frames=").append(f.frames)
        append(" | frameMax=").append(f.frameMax)
        append(" | rebuildRounds=").append(f.rebuildRounds)
        append(" | healRounds=").append(f.healRounds)
        append(" | cfgs=").append(f.activeConfigSummary)
        append(" | device=").append(f.device)
        append(" | android=").append(f.androidVersion)
    }

    /** 日志面板展示用：截断到 [UI_LOG_MAX_LENGTH]（用户截图看关键字段足够） */
    fun forUiLog(snapshot: String): String = snapshot.take(UI_LOG_MAX_LENGTH)
}
