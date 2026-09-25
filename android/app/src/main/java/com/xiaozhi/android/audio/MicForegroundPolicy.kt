package com.xiaozhi.android.audio

/**
 * B4 麦克风资格兜底策略（纯 Kotlin，可单测）。
 *
 * 背景：Android 11+ 的 while-in-use 策略要求"进程内存在 microphone 类型的前台服务"，
 * 否则 APP 退到后台后麦克风采集会被系统静音（录到全零）——这正是
 * "APP 在前台能识别、退到桌面/锁屏就听不到"的根因之一。
 *
 * 两条麦克风资格来源：
 *  1. [com.xiaozhi.android.pet.FloatingPetService]：宠物悬浮窗启用时常驻，
 *     其 foregroundServiceType 已含 microphone；
 *  2. [XiaozhiForegroundService]：宠物未启用时由 ViewModel 在开始聆听前
 *     临时拉起的兜底 FGS，聆听结束后回收。
 *
 * 判定逻辑下沉为本 object，与 B1~B3 的策略类风格一致，便于纯 JVM 单测覆盖。
 */
object MicForegroundPolicy {

    /**
     * 开始聆听前是否需要拉起兜底前台服务。
     *
     * @param petVisible 宠物悬浮窗是否正在显示（FloatingPetService.petVisible）
     * @return true = 宠物未启用，需拉起 XiaozhiForegroundService 补齐麦克风资格
     */
    fun shouldStartFallback(petVisible: Boolean): Boolean = !petVisible

    /**
     * 聆听结束后是否需要回收兜底前台服务。
     * 必须同时满足：兜底服务是"本次聆听由 ViewModel 自己拉起的"
     * （避免误杀用户/其他入口手动启动的服务实例），且宠物仍未启用
     * （宠物若在聆听期间被启用，麦克风资格已由宠物 FGS 接管，
     *  但通知仍由宠物服务负责，回收判定保持一致性）。
     *
     * @param startedBySelf 本次聆听是否由 [shouldStartFallback] 返回 true 后拉起了兜底服务
     * @param petVisible 宠物悬浮窗当前是否显示
     * @return true = 应调用 stopService 回收兜底服务
     */
    fun shouldStopFallback(startedBySelf: Boolean, petVisible: Boolean): Boolean =
        startedBySelf && !petVisible
}
