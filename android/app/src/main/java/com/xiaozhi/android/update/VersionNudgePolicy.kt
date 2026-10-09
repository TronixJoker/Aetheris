package com.xiaozhi.android.update

/**
 * 版本差距分提醒策略（纯 Kotlin，可单测）。
 *
 * 背景（v2.3.13 §4，架构师方案）：更新提醒此前只藏在设置页红点，
 * 用户没有打开设置页的习惯 → 大量用户停留在 v2.3.7 这类大幅滞后的版本，
 * 早已修复的语音问题（麦克风占用/端点慢/识别不到）持续被投诉。
 *
 * 设计（差距分软强更，替代无条件锁死强更）：
 *  - 个人分发无应用市场兜底，无条件强更 + 下载链路失败（GitHub 直连不稳是常态）
 *    会把 APP 直接锁死成不可用——比停在旧版更糟；
 *  - [decide] 按「远端 versionCode − 本地 versionCode」差距分级：
 *      - 差 ≥ [FORCE_DIFF_THRESHOLD]（3 个版本起）→ [NudgeLevel.FORCE_PROMPT]：
 *        启动必弹窗（调用方控制「同版本会话只弹一次」，见 [shouldPromptAgain]）；
 *      - 差 1~2 → [NudgeLevel.RED_DOT]：仅设置页红点（现状行为，不打扰轻度滞后用户）；
 *      - 无更新 / 本地更新 → [NudgeLevel.NONE]；
 *  - 「问题触发强提醒」不属本策略分级：用户遇到已知已修问题（B2 放弃自愈/
 *    连续空识别）时，调用方无条件置顶弹窗（KNOWN_ISSUE 场景，比差距分更精准）。
 *
 * @param FORCE_DIFF_THRESHOLD 弹窗差距阈值：3 个版本（12 个版本跨度内约每 3 版弹一次，
 *        与发版节奏 2~4 周/版匹配，不会频繁打扰）
 */
object VersionNudgePolicy {

    /** 触发启动弹窗的版本差距下限（差 ≥3 必弹，验收 §5-10） */
    const val FORCE_DIFF_THRESHOLD = 3

    /** 提醒等级：UI 据此决定「弹窗」还是「红点」 */
    enum class NudgeLevel {
        /** 无动作（无更新/本地已是最新） */
        NONE,
        /** 仅设置页红点（差 1~2，轻度滞后） */
        RED_DOT,
        /** 启动强提醒弹窗（差 ≥3，大幅滞后） */
        FORCE_PROMPT,
    }

    /**
     * 差距分级判定。
     * @param localVersionCode 本地已安装 versionCode（如 122）
     * @param remoteVersionCode 更新元数据下发的最新 versionCode（如 123）
     */
    fun decide(localVersionCode: Int, remoteVersionCode: Int): NudgeLevel {
        val diff = remoteVersionCode - localVersionCode
        return when {
            diff <= 0 -> NudgeLevel.NONE
            diff < FORCE_DIFF_THRESHOLD -> NudgeLevel.RED_DOT
            else -> NudgeLevel.FORCE_PROMPT
        }
    }

    /**
     * 「同版本会话只弹一次」判定（防弹窗打扰，方案风险点）：
     * 调用方（MainViewModel）记录本会话已弹过的远端 versionCode，重启进程后
     * 归零 → 实现「每次启动复弹 + 同版本会话内不重复弹」。
     * @param lastPromptedRemoteVersionCode 本会话已弹过的远端 versionCode（无则传 -1）
     * @return true = 允许再弹（该版本本会话尚未弹过）
     */
    fun shouldPromptAgain(lastPromptedRemoteVersionCode: Int, remoteVersionCode: Int): Boolean =
        lastPromptedRemoteVersionCode != remoteVersionCode
}
