package com.xiaozhi.android.audio

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * B5 观测埋点诊断快照格式单测。
 *
 * 规格来源（群管理员派单 / 架构师方案 B5）：
 * 出现全零/空 stt 时 dump 当前音源、frameMax、activeRecordingConfigurations 摘要、
 * 设备型号与系统版本，形成用户反馈闭环。
 * 快照格式是"用户反馈 → 根因定位"的约定，用单测锁定字段齐全性与格式稳定性。
 */
class MicDiagnosticsFormatterTest {

    private val sample = MicDiagnosticsFormatter.Fields(
        reason = "EMPTY_STT",
        sourceName = "VOICE_COMMUNICATION",
        frames = 25,
        frameMax = 0,
        rebuildRounds = 1,
        healRounds = 2,
        activeConfigSummary = "1个会话 [sess=123 src=VOICE_RECOGNITION]",
        device = "Google Pixel 8",
        androidVersion = "14(SDK 34)"
    )

    // ---------- 字段齐全性（防后续改动丢字段） ----------

    @Test
    fun `快照包含全部九个关键字段`() {
        val snapshot = MicDiagnosticsFormatter.build(sample)
        // 字段名齐全
        listOf(
            "[MicDiag]", "reason=", "src=", "frames=", "frameMax=",
            "rebuildRounds=", "healRounds=", "cfgs=", "device=", "android="
        ).forEach { token ->
            assertTrue("快照应包含 $token：\n$snapshot", snapshot.contains(token))
        }
    }

    @Test
    fun `快照字段值正确拼接`() {
        val snapshot = MicDiagnosticsFormatter.build(sample)
        assertTrue(snapshot.contains("reason=EMPTY_STT"))
        assertTrue(snapshot.contains("src=VOICE_COMMUNICATION"))
        assertTrue(snapshot.contains("frames=25"))
        assertTrue(snapshot.contains("frameMax=0"))
        assertTrue(snapshot.contains("rebuildRounds=1"))
        assertTrue(snapshot.contains("healRounds=2"))
        assertTrue(snapshot.contains("cfgs=1个会话 [sess=123 src=VOICE_RECOGNITION]"))
        assertTrue(snapshot.contains("device=Google Pixel 8"))
        assertTrue(snapshot.contains("android=14(SDK 34)"))
    }

    @Test
    fun `快照以固定前缀开头 - 便于用户日志检索`() {
        assertTrue(MicDiagnosticsFormatter.build(sample).startsWith("[MicDiag] "))
    }

    // ---------- 全零场景（B5 核心观测目标） ----------

    @Test
    fun `全零场景快照 - frameMax为0仍完整呈现`() {
        // 全零是根因判定的关键证据，任何字段缺失都会误导定位
        val zero = sample.copy(frameMax = 0, frames = 50, reason = "SOURCE_ESCALATED_TO_MIC")
        val snapshot = MicDiagnosticsFormatter.build(zero)
        assertTrue(snapshot.contains("frameMax=0"))
        assertTrue(snapshot.contains("frames=50"))
        assertTrue(snapshot.contains("reason=SOURCE_ESCALATED_TO_MIC"))
    }

    // ---------- 边界与容错 ----------

    @Test
    fun `空配置摘要与空音源 - 不抛异常且字段保留`() {
        val snapshot = MicDiagnosticsFormatter.build(
            sample.copy(activeConfigSummary = "无活跃采集会话", sourceName = "UNINITIALIZED")
        )
        assertTrue(snapshot.contains("cfgs=无活跃采集会话"))
        assertTrue(snapshot.contains("src=UNINITIALIZED"))
    }

    // ---------- UI 日志截断 ----------

    @Test
    fun `UI面板截断到160字符`() {
        val snapshot = MicDiagnosticsFormatter.build(sample)
        assertTrue(snapshot.length > MicDiagnosticsFormatter.UI_LOG_MAX_LENGTH)
        assertEquals(
            snapshot.take(MicDiagnosticsFormatter.UI_LOG_MAX_LENGTH),
            MicDiagnosticsFormatter.forUiLog(snapshot)
        )
    }

    @Test
    fun `UI面板 - 短快照不截断`() {
        val short = "[MicDiag] reason=OK"
        assertEquals(short, MicDiagnosticsFormatter.forUiLog(short))
    }
}
