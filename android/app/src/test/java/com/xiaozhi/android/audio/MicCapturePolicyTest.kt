package com.xiaozhi.android.audio

import android.media.MediaRecorder
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * B1 麦克风占用判定与 B5 摘要策略单测。
 *
 * 规格来源（群管理员派单 / 架构师方案 B1）：
 * MainViewModel 启动聆听前，通过 AudioManager.registerAudioRecordingCallback /
 * activeRecordingConfigurations 校验"无他方采集客户端"后再 start；
 * 本 APP 尚未开录时，任何活跃采集会话都算他方（典型：系统 SpeechRecognizer）。
 *
 * 注：Android 侧 [MicCaptureMonitor] 依赖真实 AudioManager 无法在 JVM 单测中构造，
 * 故全部判定/格式化逻辑下沉到纯 Kotlin 的 [MicCapturePolicy]，这里覆盖其全部分支。
 */
class MicCapturePolicyTest {

    private fun client(sessionId: Int, source: Int) = MicClientInfo(sessionId, source)

    // ---------- 他方采集客户端判定 ----------

    @Test
    fun `无活跃采集会话 - 判定麦克风空闲`() {
        assertFalse(MicCapturePolicy.hasOtherPartyClients(emptyList()))
    }

    @Test
    fun `本APP尚未开录且存在他方会话 - 判定被占用`() {
        // 典型场景：热词识别器（VOICE_RECOGNITION）还没归还麦克风
        val configs = listOf(client(101, MediaRecorder.AudioSource.VOICE_RECOGNITION))
        assertTrue(MicCapturePolicy.hasOtherPartyClients(configs))
    }

    @Test
    fun `存在多个他方会话 - 判定被占用`() {
        val configs = listOf(
            client(101, MediaRecorder.AudioSource.VOICE_RECOGNITION),
            client(202, MediaRecorder.AudioSource.MIC)
        )
        assertTrue(MicCapturePolicy.hasOtherPartyClients(configs))
    }

    @Test
    fun `会话全部属于自己 - 判定空闲`() {
        val configs = listOf(client(77, MediaRecorder.AudioSource.VOICE_COMMUNICATION))
        assertFalse(MicCapturePolicy.hasOtherPartyClients(configs, ownSessionIds = setOf(77)))
    }

    @Test
    fun `混合自己与他方会话 - 仍判定被占用`() {
        val configs = listOf(
            client(77, MediaRecorder.AudioSource.VOICE_COMMUNICATION), // 自己
            client(999, MediaRecorder.AudioSource.VOICE_RECOGNITION)   // 他方
        )
        assertTrue(MicCapturePolicy.hasOtherPartyClients(configs, ownSessionIds = setOf(77)))
    }

    // ---------- AudioSource 可读名映射 ----------

    @Test
    fun `AudioSource映射 - 常用音源输出可读名称`() {
        assertEquals("VOICE_COMMUNICATION", MicCapturePolicy.sourceName(MediaRecorder.AudioSource.VOICE_COMMUNICATION))
        assertEquals("MIC", MicCapturePolicy.sourceName(MediaRecorder.AudioSource.MIC))
        assertEquals("VOICE_RECOGNITION", MicCapturePolicy.sourceName(MediaRecorder.AudioSource.VOICE_RECOGNITION))
        assertEquals("DEFAULT", MicCapturePolicy.sourceName(MediaRecorder.AudioSource.DEFAULT))
    }

    @Test
    fun `AudioSource映射 - 未知值输出SOURCE前缀兜底`() {
        assertEquals("SOURCE_12345", MicCapturePolicy.sourceName(12345))
    }

    // ---------- B5 摘要格式化 ----------

    @Test
    fun `摘要 - 无会话时输出明确文案`() {
        assertEquals("无活跃采集会话", MicCapturePolicy.summarize(emptyList()))
    }

    @Test
    fun `摘要 - 多会话时包含数量与逐条信息`() {
        val summary = MicCapturePolicy.summarize(
            listOf(
                client(101, MediaRecorder.AudioSource.VOICE_RECOGNITION),
                client(202, MediaRecorder.AudioSource.MIC)
            )
        )
        assertTrue(summary.startsWith("2个会话"))
        assertTrue(summary.contains("sess=101 src=VOICE_RECOGNITION"))
        assertTrue(summary.contains("sess=202 src=MIC"))
    }

    @Test
    fun `摘要 - 超过上限条数时折叠显示避免刷屏`() {
        val configs = (1..12).map { client(it, MediaRecorder.AudioSource.MIC) }
        val summary = MicCapturePolicy.summarize(configs)
        assertEquals(8, MicCapturePolicy.MAX_DUMP_SESSIONS)
        assertTrue(summary.startsWith("12个会话"))
        assertTrue(summary.contains("…(+4)"))
        assertFalse(summary.contains("sess=12 src")) // 第 9 条起被折叠
    }
}
