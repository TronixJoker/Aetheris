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

    // ---------- v2.3.7 回归修复锁定用例（B1 自身会话误判） ----------

    @Test
    fun `回归 - 自家VOICE_COMMUNICATION会话残留期被正确排除`() {
        // 用户实机埋点：B1 超时 dump 显示 sess=10489 src=VOICE_COMMUNICATION——
        // 正是本 APP 上一轮 AudioRecord 的音源特征。修复前调用方传空排除集，
        // 自家残留会话被判"他方占用"→ 2s 超时 → 取消聆听（点按开始对话必失败）。
        // 修复后调用方传入 AudioRecorder.activeAudioSessionIds()，残留会话应被排除。
        val configs = listOf(client(10489, MediaRecorder.AudioSource.VOICE_COMMUNICATION))
        assertFalse(
            "自身会话（含释放后列表残留期）不得判为他方",
            MicCapturePolicy.hasOtherPartyClients(
                configs,
                ownSessionIds = setOf(10489) // AudioRecorder.lastAudioSessionId
            )
        )
    }

    @Test
    fun `回归 - 自家残留会话之外仍有真他方时必须如实上报占用`() {
        // 排除自身会话的能力不能掩盖真实的他方占用：
        // 自家 VOICE_COMMUNICATION 残留 + 系统 SpeechRecognizer（VOICE_RECOGNITION）仍在采集
        val configs = listOf(
            client(10489, MediaRecorder.AudioSource.VOICE_COMMUNICATION), // 自己（残留）
            client(20001, MediaRecorder.AudioSource.VOICE_RECOGNITION)    // 热词识别服务
        )
        assertTrue(
            "排除自身后仍存在他方会话时必须如实判定被占用（由 B2 实证兜底）",
            MicCapturePolicy.hasOtherPartyClients(configs, ownSessionIds = setOf(10489))
        )
    }

    @Test
    fun `契约 - 未传排除集时任何会话仍算他方（行为不变）`() {
        // 空排除集 = 无法区分自身与他方，维持保守判定（与 v2.3.7 语义一致），
        // 修复发生在调用方（传入自身会话集），策略层语义保持不变
        val configs = listOf(client(10489, MediaRecorder.AudioSource.VOICE_COMMUNICATION))
        assertTrue(MicCapturePolicy.hasOtherPartyClients(configs))
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
