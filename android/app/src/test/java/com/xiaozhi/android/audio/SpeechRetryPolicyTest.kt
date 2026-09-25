package com.xiaozhi.android.audio

import android.speech.SpeechRecognizer
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * B3 热词识别错误码分级策略单测。
 *
 * 规格来源（群管理员派单 / 架构师方案 B3）：
 *  1) ERROR_RECOGNIZER_BUSY → 指数退避 1s→2s→4s 重启；
 *  2) ERROR_INSUFFICIENT_PERMISSIONS → 停止自动重启；
 *  3) 连续 ERROR_AUDIO ≥ 3 → 停止自动重启；
 *  4) 其余常规错误 → 固定延迟正常重启。
 *
 * 注：SpeechRecognizer.ERROR_* 为编译期常量（kotlinc 内联），本地 JVM 单测可安全引用。
 */
class SpeechRetryPolicyTest {

    // ---------- 错误码分类 ----------

    @Test
    fun `ERROR_RECOGNIZER_BUSY 归类为 BUSY`() {
        assertEquals(
            SpeechRetryPolicy.Category.BUSY,
            SpeechRetryPolicy.classify(SpeechRecognizer.ERROR_RECOGNIZER_BUSY)
        )
    }

    @Test
    fun `ERROR_INSUFFICIENT_PERMISSIONS 归类为致命-停止重启`() {
        assertEquals(
            SpeechRetryPolicy.Category.FATAL_NO_PERMISSION,
            SpeechRetryPolicy.classify(SpeechRecognizer.ERROR_INSUFFICIENT_PERMISSIONS)
        )
    }

    @Test
    fun `ERROR_AUDIO 归类为 AUDIO_ERROR`() {
        assertEquals(
            SpeechRetryPolicy.Category.AUDIO_ERROR,
            SpeechRetryPolicy.classify(SpeechRecognizer.ERROR_AUDIO)
        )
    }

    @Test
    fun `常规错误码归类为 ROUTINE 正常重启`() {
        val routineCodes = listOf(
            SpeechRecognizer.ERROR_NO_MATCH,
            SpeechRecognizer.ERROR_SPEECH_TIMEOUT,
            SpeechRecognizer.ERROR_NETWORK_TIMEOUT,
            SpeechRecognizer.ERROR_NETWORK,
            SpeechRecognizer.ERROR_SERVER,
            SpeechRecognizer.ERROR_CLIENT
        )
        for (code in routineCodes) {
            assertEquals("error=$code 应为常规重启", SpeechRetryPolicy.Category.ROUTINE, SpeechRetryPolicy.classify(code))
        }
    }

    // ---------- BUSY 指数退避 1s→2s→4s ----------

    @Test
    fun `BUSY退避序列 - 第1次1秒`() {
        assertEquals(1000L, SpeechRetryPolicy.busyBackoffDelayMs(0))
    }

    @Test
    fun `BUSY退避序列 - 第2次2秒`() {
        assertEquals(2000L, SpeechRetryPolicy.busyBackoffDelayMs(1))
    }

    @Test
    fun `BUSY退避序列 - 第3次4秒`() {
        assertEquals(4000L, SpeechRetryPolicy.busyBackoffDelayMs(2))
    }

    @Test
    fun `BUSY退避 - 超过3次后封顶4秒不再翻倍`() {
        for (attempt in 3..20) {
            assertEquals("attempt=$attempt 应封顶 4s", 4000L, SpeechRetryPolicy.busyBackoffDelayMs(attempt))
        }
    }

    @Test
    fun `BUSY退避 - 非法负数入参回退为基础延迟`() {
        assertEquals(1000L, SpeechRetryPolicy.busyBackoffDelayMs(-1))
    }

    @Test
    fun `BUSY退避常量规格 - 基础1s上限4s`() {
        assertEquals(1000L, SpeechRetryPolicy.BUSY_BACKOFF_BASE_MS)
        assertEquals(4000L, SpeechRetryPolicy.BUSY_BACKOFF_CAP_MS)
    }

    // ---------- 连续 AUDIO 错误停止阈值 ----------

    @Test
    fun `AUDIO常量规格 - 连续3次为停止阈值`() {
        assertEquals(3, SpeechRetryPolicy.MAX_CONSECUTIVE_AUDIO_ERRORS)
    }

    @Test
    fun `连续AUDIO错误不足3次 - 不停止自动重启`() {
        assertFalse(SpeechRetryPolicy.shouldStopAutoRestart(0))
        assertFalse(SpeechRetryPolicy.shouldStopAutoRestart(1))
        assertFalse(SpeechRetryPolicy.shouldStopAutoRestart(2))
    }

    @Test
    fun `连续AUDIO错误达到及超过3次 - 停止自动重启`() {
        assertTrue(SpeechRetryPolicy.shouldStopAutoRestart(3))
        assertTrue(SpeechRetryPolicy.shouldStopAutoRestart(5))
    }

    // ---------- 用户提示语 ----------

    @Test
    fun `致命错误提示语 - 非空且可指导用户操作`() {
        assertTrue(SpeechRetryPolicy.noPermissionMessage().contains("权限"))
        assertTrue(SpeechRetryPolicy.audioErrorMessage(3).contains("3"))
    }
}
