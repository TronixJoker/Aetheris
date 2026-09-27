package com.xiaozhi.android.audio

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * Barge-in（自动打断）判定策略单测（v2.3.9 打断灵敏度治理）。
 *
 * 规格来源（群管理员派单）：
 *  - AI 播报输出期间仅满足"有效人声"条件（时长 + 能量门槛）才允许打断；
 *  - 提高能量门槛、加防抖，避免环境噪音 / 自身 TTS 回声中断 AI 输出。
 *
 * 模拟帧节拍：20ms/帧（与 AudioRecorder.FRAME_SIZE_MS 一致）。
 */
class BargeInPolicyTest {

    private companion object {
        const val FRAME_MS = 20L
        /** 便捷构造：默认参数的策略（与生产接线一致） */
        fun newPolicy() = BargeInPolicy()
    }

    // ---------- 常量规格锁定（防止后续误改回归） ----------

    @Test
    fun `默认构造参数符合方案规格 - 基线初始值与下限300`() {
        val p = newPolicy()
        // 基线初始值与下限：300（旧实现 150 下限过低，安静房间倍数判定形同虚设）
        assertEquals(300f, p.baseline, 0.01f)
    }

    // ---------- rmsOf ----------

    @Test
    fun `rmsOf 全零帧为0`() {
        assertEquals(0f, BargeInPolicy.rmsOf(ShortArray(320)), 0f)
    }

    @Test
    fun `rmsOf 恒定幅度帧等于幅度值`() {
        val pcm = ShortArray(320) { 1000 }
        assertEquals(1000f, BargeInPolicy.rmsOf(pcm), 0.5f)
    }

    @Test
    fun `rmsOf 空帧为0 不崩溃`() {
        assertEquals(0f, BargeInPolicy.rmsOf(ShortArray(0)), 0f)
    }

    // ---------- 能量门槛：环境噪音不再触发 ----------

    @Test
    fun `安静房间环境噪音RMS600持续5秒 - 不触发打断`() {
        val p = newPolicy()
        var t = 0L
        var triggered = false
        // 5s 的持续噪音（旧实现 abs=500 时会立刻凑满 8 帧触发）
        repeat(250) {
            if (p.process(t, 600f)) triggered = true
            t += FRAME_MS
        }
        assertFalse("低于绝对门槛 1000 的环境噪音不应触发打断", triggered)
    }

    @Test
    fun `底噪150持续10秒 - 不触发且基线吸附后仍不低于下限`() {
        val p = newPolicy()
        var t = 0L
        repeat(500) {
            assertFalse(p.process(t, 150f))
            t += FRAME_MS
        }
        // 基线被 150 持续吸附，但下限保护为 300
        assertEquals(300f, p.baseline, 0.01f)
    }

    // ---------- 时长门槛：短促噪声不再触发 ----------

    @Test
    fun `关门瞬态RMS2500持续300ms后恢复安静 - 不触发打断`() {
        val p = newPolicy()
        var t = 0L
        // 15 帧（300ms）超阈瞬态
        repeat(15) {
            assertFalse(p.process(t, 2500f))
            t += FRAME_MS
        }
        // 之后恢复长时间安静
        repeat(100) {
            assertFalse(p.process(t, 100f))
            t += FRAME_MS
        }
        // 未触发过打断（无冷却标记）
        assertFalse(p.process(t, 2500f)) // 单帧不可能触发（需 480ms）
    }

    @Test
    fun `有效人声RMS2000持续480ms - 触发一次打断`() {
        val p = newPolicy()
        var t = 0L
        var triggers = 0
        repeat(24) { // 24 帧 = 480ms
            if (p.process(t, 2000f)) triggers++
            t += FRAME_MS
        }
        assertEquals("连续 480ms 超阈应在第 24 帧触发一次", 1, triggers)
    }

    // ---------- 字间顿挫（≤6 帧/120ms 短停顿不清零，评审 🟡 后 3→6） ----------

    @Test
    fun `人声字间停顿2帧不清零 - 累计满480ms仍触发`() {
        val p = newPolicy()
        var t = 0L
        var triggers = 0
        // 12 帧人声（240ms）→ 2 帧停顿 → 12 帧人声（240ms）→ 累计 480ms
        repeat(12) {
            if (p.process(t, 2000f)) triggers++
            t += FRAME_MS
        }
        repeat(2) {
            assertFalse(p.process(t, 100f))
            t += FRAME_MS
        }
        repeat(12) {
            if (p.process(t, 2000f)) triggers++
            t += FRAME_MS
        }
        assertEquals("字间短停顿不应打断累计，240+240ms 应触发", 1, triggers)
    }

    @Test
    fun `人声字间停顿6帧容忍内不清零 - 累计满480ms仍触发`() {
        val p = newPolicy()
        var t = 0L
        var triggers = 0
        repeat(12) { if (p.process(t, 2000f)) triggers++; t += FRAME_MS } // 240ms
        repeat(6) { p.process(t, 100f); t += FRAME_MS }                  // 6 帧停顿 = 容忍边界，不清零
        repeat(12) { if (p.process(t, 2000f)) triggers++; t += FRAME_MS } // 再 240ms → 累计 480ms
        assertEquals("恰好在容忍帧数（6 帧/120ms）内的停顿不应清零", 1, triggers)
    }

    @Test
    fun `人声停顿超过6帧容忍清零 - 需重新累计480ms`() {
        val p = newPolicy()
        var t = 0L
        var triggers = 0
        repeat(12) { if (p.process(t, 2000f)) triggers++; t += FRAME_MS } // 240ms
        repeat(7) { p.process(t, 100f); t += FRAME_MS }                   // 7 帧静音 > 容忍 6 → 清零
        repeat(12) { if (p.process(t, 2000f)) triggers++; t += FRAME_MS } // 重新 240ms，不足 480ms
        assertEquals("超过容差的停顿应清零累计，不应触发", 0, triggers)
    }

    // ---------- TTS 豁免窗（1.5s） ----------

    @Test
    fun `tts开始后豁免窗内回声RMS3000持续 - 不触发不吸基线`() {
        val p = newPolicy()
        p.onTtsStart(1000L)
        var t = 1000L
        // 豁免窗 1500ms 内：74 帧高能量"回声"
        repeat(74) {
            assertFalse("豁免窗内不应触发", p.process(t, 3000f))
            t += FRAME_MS
        }
        // 基线未被回声污染
        assertEquals(300f, p.baseline, 0.01f)
    }

    @Test
    fun `豁免窗结束瞬间不满480ms - 不会立即触发`() {
        val p = newPolicy()
        p.onTtsStart(0L)
        var t = 0L
        var triggers = 0
        repeat(100) { // 覆盖豁免窗（75 帧）+ 之后 25 帧（500ms > 480ms 应触发 1 次）
            if (p.process(t, 2000f)) triggers++
            t += FRAME_MS
        }
        assertEquals("豁免窗后重新累计 480ms 才触发，100 帧=2s 窗口恰触发一次", 1, triggers)
    }

    // ---------- 回声余量：播放中门槛翻倍 ----------

    @Test
    fun `播放中AEC残余回声RMS1500持续2秒 - 不触发打断`() {
        val p = newPolicy()
        p.onTtsStart(0L)
        var t = 0L
        repeat(75) { p.process(t, 1500f, playbackActive = true); t += FRAME_MS } // 豁免窗
        repeat(25) {
            assertFalse("播放中 1500 < 1000×2（回声余量），不应触发", p.process(t, 1500f, playbackActive = true))
            t += FRAME_MS
        }
    }

    @Test
    fun `播放中真人插话RMS3000持续480ms - 正常触发打断`() {
        val p = newPolicy()
        p.onTtsStart(0L)
        var t = 0L
        var triggers = 0
        repeat(75) { p.process(t, 1500f, playbackActive = true); t += FRAME_MS } // 回声期过去
        repeat(24) {
            if (p.process(t, 3000f, playbackActive = true)) triggers++
            t += FRAME_MS
        }
        assertEquals("盖过扬声器的人声（≥2000）应能正常打断", 1, triggers)
    }

    @Test
    fun `播放停止后门槛回落 - RMS1500可正常触发`() {
        val p = newPolicy()
        var t = 0L
        var triggers = 0
        repeat(24) {
            if (p.process(t, 1500f, playbackActive = false)) triggers++
            t += FRAME_MS
        }
        assertEquals(1, triggers)
    }

    // ---------- 冷却窗（防抖） ----------

    @Test
    fun `触发打断后2秒冷却内 - 即使满足条件也不再触发`() {
        val p = newPolicy()
        var t = 0L
        var triggers = 0
        // 第一轮：480ms 人声 → 触发
        repeat(30) { if (p.process(t, 2000f)) triggers++; t += FRAME_MS }
        // 冷却窗内继续 2000（模拟回声/持续噪声）
        repeat(100) { if (p.process(t, 2000f)) triggers++; t += FRAME_MS } // 2s
        assertEquals("首轮触发 + 冷却期内不重复触发", 1, triggers)
        // 冷却过后：480ms 人声应可再次触发
        repeat(24) { if (p.process(t, 2000f)) triggers++; t += FRAME_MS }
        assertEquals("冷却结束后恢复正常判定", 2, triggers)
    }

    // ---------- onTtsStart / reset ----------

    @Test
    fun `onTtsStart重开豁免窗并清空累计`() {
        val p = newPolicy()
        var t = 0L
        // 先累计 240ms（未满 480ms，不触发）
        repeat(12) { p.process(t, 2000f); t += FRAME_MS }
        // 新一轮 TTS 开始 → 累计清零 + 豁免窗开启（1.5s）
        p.onTtsStart(t)
        repeat(75) { assertFalse("豁免窗内不触发", p.process(t, 2000f)); t += FRAME_MS }
        // 豁免窗结束后重新累计：23 帧不足 480ms，第 24 帧凑满触发
        repeat(23) { assertFalse(p.process(t, 2000f)); t += FRAME_MS }
        assertTrue("豁免窗后重新累计满 480ms 应触发", p.process(t, 2000f))
    }

    @Test
    fun `reset后豁免窗与冷却均失效`() {
        val p = newPolicy()
        p.onTtsStart(0L)
        p.reset()
        // reset 后豁免窗失效：立即可以正常累计触发
        var t = 0L
        var triggers = 0
        repeat(24) { if (p.process(t, 2000f)) triggers++; t += FRAME_MS }
        assertEquals(1, triggers)
    }

    // ---------- 基线自适应 ----------

    @Test
    fun `噪声环境升高后基线跟随 - 噪音仍不触发`() {
        val p = newPolicy()
        var t = 0L
        // 环境噪声从 400 缓慢抬升到 800（如电视打开），持续 10s：始终低于绝对门槛 1000
        repeat(500) {
            val rms = 400f + it * 0.8f
            assertFalse("持续环境噪声不应触发打断", p.process(t, rms))
            t += FRAME_MS
        }
        // 基线应已抬升（吸噪），但绝对门槛仍然兜底
        assertTrue(p.baseline > 300f)
    }

    @Test
    fun `burst期间不吸基线 - 人声不会抬高判定门槛`() {
        val p = newPolicy()
        var t = 0L
        repeat(20) { p.process(t, 2000f); t += FRAME_MS } // 400ms 超阈人声（未满 480ms）
        val before = p.baseline
        // 人声期间基线不变（burst 帧不更新基线）
        assertEquals("burst 帧不应更新基线", 300f, before, 0.01f)
    }

    // ---------- 评审 🟡 修复：播放中回声不灌基线 ----------

    @Test
    fun `播放中回声RMS800持续10秒 - 基线不被污染仍为初始值`() {
        val p = newPolicy()
        p.onTtsStart(0L)
        var t = 0L
        var triggered = false
        // 豁免窗 75 帧 + 之后 425 帧（共 10s）：持续回声 RMS 800。
        // 800 < 播放中绝对门槛 1000×2=2000 → 走"平静帧"分支；
        // 修复前：回声被 EMA 持续灌进基线（0.9^500 → 趋近 800），
        // 基线抬到回声水平后 3.5× 倍数判定失效，真人插话被双门卡死；
        // 修复后：回声不是房间底噪，播放中跳过基线更新
        repeat(500) {
            if (p.process(t, 800f, playbackActive = true)) triggered = true
            t += FRAME_MS
        }
        assertFalse("持续回声不应触发打断", triggered)
        assertEquals("播放中的回声不应被吸进噪声基线", 300f, p.baseline, 0.01f)
    }

    @Test
    fun `播放结束恢复正常吸噪 - 基线更新逻辑不受影响`() {
        val p = newPolicy()
        p.onTtsStart(0L)
        var t = 0L
        repeat(500) { p.process(t, 800f, playbackActive = true); t += FRAME_MS } // 播放中 10s 回声
        assertEquals("播放中基线不更新", 300f, p.baseline, 0.01f)
        // TTS 结束后（无专门 onTtsEnd，豁免窗早已过期）：房间真实底噪 600 应正常被吸附
        repeat(500) { p.process(t, 600f); t += FRAME_MS }
        assertTrue("播放结束后应恢复基线自适应", p.baseline > 500f)
        assertTrue(p.baseline < 700f)
    }
}
