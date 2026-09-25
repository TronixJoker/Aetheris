package com.xiaozhi.android.audio

import com.xiaozhi.android.pet.FloatingPetService
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * B4 麦克风资格兜底策略单测。
 *
 * 规格来源（群管理员派单 / 架构师方案 B4）：
 * 宠物悬浮窗未启用而后台聆听时，真正拉起 XiaozhiForegroundService
 * （microphone 类型 FGS）兜底；聆听结束后回收；宠物启用期间不重复拉起。
 */
class MicForegroundPolicyTest {

    // ---------- 拉起判定（开始聆听前） ----------

    @Test
    fun `宠物未启用 - 需要拉起兜底前台服务`() {
        // 根因：无 microphone 类型 FGS 时，Android 11+ 后台采集被 while-in-use 策略静音
        assertFalse(FloatingPetService.petVisible) // 前置假设锁定：静态初始态为未显示
        assertTrue(MicForegroundPolicy.shouldStartFallback(petVisible = false))
    }

    @Test
    fun `宠物已启用 - 不重复拉起`() {
        // 宠物 FGS 自带 MICROPHONE 类型，麦克风资格已满足
        assertFalse(MicForegroundPolicy.shouldStartFallback(petVisible = true))
    }

    // ---------- 回收判定（聆听结束后） ----------

    @Test
    fun `自己拉起的兜底且宠物仍未启用 - 应回收`() {
        assertTrue(MicForegroundPolicy.shouldStopFallback(startedBySelf = true, petVisible = false))
    }

    @Test
    fun `非自己拉起 - 不回收`() {
        // 防止误杀其他入口启动的服务实例（如未来设置页手动开关）
        assertFalse(MicForegroundPolicy.shouldStopFallback(startedBySelf = false, petVisible = false))
    }

    @Test
    fun `聆听期间宠物被启用 - 不回收`() {
        // 宠物 FGS 在运行时，麦克风资格由宠物服务接管，
        // 此时停掉兜底服务与否由宠物侧管理，兜底回收判定保持保守（不动）
        assertFalse(MicForegroundPolicy.shouldStopFallback(startedBySelf = true, petVisible = true))
    }

    @Test
    fun `未拉起且宠物启用 - 不回收`() {
        assertFalse(MicForegroundPolicy.shouldStopFallback(startedBySelf = false, petVisible = true))
    }

    // ---------- 状态机走查（完整聆听生命周期） ----------

    @Test
    fun `完整生命周期 - 宠物未启用时拉起且聆听结束回收`() {
        var petVisible = false
        var startedBySelf = false

        // 开始聆听：宠物未启用 → 拉起
        if (MicForegroundPolicy.shouldStartFallback(petVisible)) startedBySelf = true
        assertTrue(startedBySelf)

        // 聆听结束：自己拉起的 → 回收
        assertTrue(MicForegroundPolicy.shouldStopFallback(startedBySelf, petVisible))
        startedBySelf = false
    }

    @Test
    fun `完整生命周期 - 宠物启用时全程不涉及兜底服务`() {
        val petVisible = true
        var startedBySelf = false

        // 开始聆听：宠物已启用 → 不拉起
        if (MicForegroundPolicy.shouldStartFallback(petVisible)) startedBySelf = true
        assertFalse(startedBySelf)

        // 聆听结束：未拉起 → 不回收
        assertFalse(MicForegroundPolicy.shouldStopFallback(startedBySelf, petVisible))
    }
}
