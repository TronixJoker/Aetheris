package com.xiaozhi.android.audio

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Assert.fail
import org.junit.Rule
import org.junit.Test
import org.junit.rules.TemporaryFolder
import java.io.File

/**
 * 人物识别（声纹）移除相关的单测：
 *  1) 遗留声纹档案清理器（LegacySpeakerDataCleaner）行为规格；
 *  2) 「人物识别已彻底移除」防回归门禁——重新引入该类会导致本套件失败。
 */
class LegacySpeakerDataCleanerTest {

    @get:Rule
    val tmp = TemporaryFolder()

    // ---------- 遗留数据清理 ----------

    @Test
    fun `purge删除遗留声纹目录-返回文件数且目录消失`() {
        val filesDir = tmp.newFolder("files")
        val legacy = File(filesDir, "speaker_profiles").apply { mkdirs() }
        File(legacy, "主人.bin").writeBytes(ByteArray(16))
        File(legacy, "陌生人1.bin").writeBytes(ByteArray(8))
        File(File(legacy, "nested").apply { mkdirs() }, "x.bin").writeBytes(ByteArray(4))

        val removed = LegacySpeakerDataCleaner.purgeLegacySpeakerProfiles(filesDir)

        assertEquals("应删除全部 3 个声纹文件", 3, removed)
        assertFalse("遗留目录应被删除", File(filesDir, "speaker_profiles").exists())
    }

    @Test
    fun `目录不存在时purge为空操作-返回0`() {
        val filesDir = tmp.newFolder("files")
        assertEquals(0, LegacySpeakerDataCleaner.purgeLegacySpeakerProfiles(filesDir))
    }

    @Test
    fun `空目录时purge返回0且目录删除`() {
        val filesDir = tmp.newFolder("files")
        File(filesDir, "speaker_profiles").mkdirs()
        assertEquals(0, LegacySpeakerDataCleaner.purgeLegacySpeakerProfiles(filesDir))
        assertFalse(File(filesDir, "speaker_profiles").exists())
    }

    @Test
    fun `purge不动filesDir下其他文件-幂等可重复调用`() {
        val filesDir = tmp.newFolder("files")
        File(filesDir, "speaker_profiles").apply { mkdirs() }
            .resolve("a.bin").writeBytes(ByteArray(2))
        val keep = File(filesDir, "other.txt").apply { writeText("keep") }

        assertEquals(1, LegacySpeakerDataCleaner.purgeLegacySpeakerProfiles(filesDir))
        // 幂等：二次调用无文件可删
        assertEquals(0, LegacySpeakerDataCleaner.purgeLegacySpeakerProfiles(filesDir))
        assertTrue("非声纹目录文件不应被误删", keep.exists() && keep.readText() == "keep")
    }

    // ---------- 「人物识别已彻底移除」防回归门禁 ----------

    @Test
    fun `人物识别类已移除-SpeakerRecognitionManager不应再存在`() {
        try {
            Class.forName("com.xiaozhi.android.audio.SpeakerRecognitionManager")
            fail("SpeakerRecognitionManager 已随人物识别功能彻底移除（2026-09 派单），" +
                "重新引入该类属于功能回归：它会重新加载 28MB 声纹模型并在 VAD 回调内" +
                "串行推理，拖慢「说完→出结果」链路。如确需恢复，必须先评估本单测与产品决策。")
        } catch (expected: ClassNotFoundException) {
            // 期望路径：类不存在 = 移除彻底
        }
    }
}
