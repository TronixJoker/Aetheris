package com.xiaozhi.android.audio

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * B2 首帧实证与自愈轮次上限策略单测。
 *
 * 规格来源（群管理员派单 / 架构师方案 B2）：
 *  1) 启动后 300ms 内 frameMax==0 → 判定首帧静音，立即原地重建；
 *  2) 连续 3 轮仍全零 → 停止自动重建，提示"麦克风被占用"。
 */
class MicSelfHealPolicyTest {

    // ---------- 常量规格锁定（防止后续误改回归） ----------

    @Test
    fun `常量符合方案B2规格 - 首帧窗口300ms`() {
        assertEquals(300L, MicSelfHealPolicy.FIRST_FRAME_SILENCE_MS)
    }

    @Test
    fun `常量符合方案B2规格 - 自愈轮次上限为3`() {
        assertEquals(3, MicSelfHealPolicy.MAX_SILENT_ROUNDS)
    }

    // ---------- 首帧实证判定 ----------

    @Test
    fun `启动满300ms且读帧正常且帧最大值为0 - 判定首帧静音`() {
        assertTrue(
            MicSelfHealPolicy.isFirstFrameSilent(
                elapsedMsSinceStart = 300L,
                framesRead = 15,   // 300ms / 20ms = 15 帧
                frameMax = 0
            )
        )
    }

    @Test
    fun `不足300ms - 不判定首帧静音`() {
        assertFalse(
            MicSelfHealPolicy.isFirstFrameSilent(
                elapsedMsSinceStart = 299L,
                framesRead = 14,
                frameMax = 0
            )
        )
    }

    @Test
    fun `帧最大值大于0 有真实音频底噪 - 不判定首帧静音`() {
        assertFalse(
            MicSelfHealPolicy.isFirstFrameSilent(
                elapsedMsSinceStart = 500L,
                framesRead = 25,
                frameMax = 137
            )
        )
    }

    @Test
    fun `读帧数为0 AudioRecord读循环未运转 - 不判定首帧静音`() {
        // framesRead==0 说明读循环根本没出帧，属于启动失败而非"录到全零"，
        // 交由 start() 返回值 / 1.5s 健康检查处理，首帧实证不应误判
        assertFalse(
            MicSelfHealPolicy.isFirstFrameSilent(
                elapsedMsSinceStart = 300L,
                framesRead = 0,
                frameMax = 0
            )
        )
    }

    @Test
    fun `窗口期边界值 - 远超300ms仍全零也判定静音`() {
        // 首帧检查点被读循环延迟触达（如 CPU 繁忙）时，只要最终确认全零仍应重建
        assertTrue(
            MicSelfHealPolicy.isFirstFrameSilent(
                elapsedMsSinceStart = 2000L,
                framesRead = 100,
                frameMax = 0
            )
        )
    }

    // ---------- 自愈轮次上限 ----------

    @Test
    fun `轮数0到2 - 仍允许自动重建`() {
        for (rounds in 0..2) {
            assertTrue("rounds=$rounds 应允许重建", MicSelfHealPolicy.shouldAutoRebuild(rounds))
        }
    }

    @Test
    fun `连续3轮及以上 - 停止自动重建`() {
        for (rounds in 3..10) {
            assertFalse("rounds=$rounds 应停止自愈", MicSelfHealPolicy.shouldAutoRebuild(rounds))
        }
    }

    @Test
    fun `放弃自愈提示语 - 非空且指向麦克风占用根因`() {
        assertTrue(MicSelfHealPolicy.USER_MESSAGE.isNotBlank())
        assertTrue(MicSelfHealPolicy.USER_MESSAGE.contains("麦克风"))
        assertTrue(MicSelfHealPolicy.USER_MESSAGE.contains("占用"))
    }
}
