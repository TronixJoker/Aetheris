package com.xiaozhi.android.audio

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * Barge-in（自动打断）判定策略单测（v2.3.9 打断灵敏度治理 / hotfix 125.1 时域放宽）。
 *
 * 规格来源（群管理员派单）：
 *  - AI 播报输出期间仅满足"有效人声"条件（时长 + 能量门槛）才允许打断；
 *  - 提高能量门槛、加防抖，避免环境噪音 / 自身 TTS 回声中断 AI 输出。
 *
 * hotfix 125.1（v2.3.13.3，架构师定稿 §1.2）时域全局放宽口径：
 *  - minVoiceMs 480→360ms：有效人声时长门槛放宽（轻量插话词 300~500ms 凑不满旧门槛）；
 *  - TTS 豁免窗 1500→1000ms：短句播报不再全程不可打断；
 *  - 能量门槛（absoluteMinRms=1000 / echoAbsoluteFactor=2.0 / ratio 3.5×）与
 *    冷却 2s 零改动——v2.3.9 误打断治理不回退（AEC 正常态行为零变化）。
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

    // ---------- 时长门槛：短促噪声不再触发（hotfix 125.1：480→360） ----------

    @Test
    fun `关门瞬态RMS2500持续300ms后恢复安静 - 不触发打断`() {
        val p = newPolicy()
        var t = 0L
        // 15 帧（300ms）超阈瞬态（< minVoiceMs 360ms，hotfix 125.1 放宽后仍安全）
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
        assertFalse(p.process(t, 2500f)) // 单帧不可能触发（需 360ms 累计）
    }

    @Test
    fun `有效人声RMS2000持续360ms - 触发一次打断`() {
        val p = newPolicy()
        var t = 0L
        var triggers = 0
        repeat(18) { // 18 帧 = 360ms（hotfix 125.1：minVoiceMs 480→360，第 18 帧凑满）
            if (p.process(t, 2000f)) triggers++
            t += FRAME_MS
        }
        assertEquals("连续 360ms 超阈应在第 18 帧触发一次", 1, triggers)
    }

    // ---------- 字间顿挫（≤6 帧/120ms 短停顿不清零，评审 🟡 后 3→6） ----------

    @Test
    fun `人声字间停顿2帧不清零 - 累计满360ms仍触发`() {
        val p = newPolicy()
        var t = 0L
        var triggers = 0
        // 12 帧人声（240ms）→ 2 帧停顿 → 12 帧人声（240ms）→ 第二组第 6 帧累计
        // 240+120=360ms 凑满（hotfix 125.1 口径）
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
        assertEquals("字间短停顿不应打断累计，240+120ms 即凑满 360ms 应触发", 1, triggers)
    }

    @Test
    fun `人声字间停顿6帧容忍内不清零 - 累计满360ms仍触发`() {
        val p = newPolicy()
        var t = 0L
        var triggers = 0
        repeat(12) { if (p.process(t, 2000f)) triggers++; t += FRAME_MS } // 240ms
        repeat(6) { p.process(t, 100f); t += FRAME_MS }                  // 6 帧停顿 = 容忍边界，不清零
        repeat(12) { if (p.process(t, 2000f)) triggers++; t += FRAME_MS } // 再 240ms → 第二组第 6 帧累计 360ms 触发
        assertEquals("恰好在容忍帧数（6 帧/120ms）内的停顿不应清零", 1, triggers)
    }

    @Test
    fun `人声停顿超过6帧容忍清零 - 需重新累计360ms`() {
        val p = newPolicy()
        var t = 0L
        var triggers = 0
        repeat(12) { if (p.process(t, 2000f)) triggers++; t += FRAME_MS } // 240ms
        repeat(7) { p.process(t, 100f); t += FRAME_MS }                   // 7 帧静音 > 容忍 6 → 清零
        repeat(12) { if (p.process(t, 2000f)) triggers++; t += FRAME_MS } // 重新 240ms，不足 360ms
        assertEquals("超过容差的停顿应清零累计，不应触发", 0, triggers)
    }

    // ---------- TTS 豁免窗（hotfix 125.1：1500→1000ms 全局放宽） ----------

    @Test
    fun `tts开始后豁免窗内回声RMS3000持续 - 不触发不吸基线`() {
        val p = newPolicy()
        p.onTtsStart(1000L)
        var t = 1000L
        // 豁免窗 1000ms 内：49 帧（980ms）高能量"回声"——帧数随 hotfix 125.1 的
        // 豁免窗 1500→1000 同步收紧（原 74 帧=1480ms 是 1.5s 窗口径）
        repeat(49) {
            assertFalse("豁免窗内不应触发", p.process(t, 3000f))
            t += FRAME_MS
        }
        // 基线未被回声污染
        assertEquals(300f, p.baseline, 0.01f)
    }

    @Test
    fun `豁免窗结束瞬间不满360ms - 不会立即触发`() {
        val p = newPolicy()
        p.onTtsStart(0L)
        var t = 0L
        var triggers = 0
        repeat(100) { // 覆盖豁免窗（50 帧）+ 之后 50 帧（1000ms > 360ms 恰触发 1 次；
            // minVoiceMs 480→360（hotfix 125.1）后窗后第 18 帧即凑满，100 帧内 1 次）
            if (p.process(t, 2000f)) triggers++
            t += FRAME_MS
        }
        assertEquals("豁免窗后重新累计 360ms 才触发，100 帧=2s 窗口恰触发一次", 1, triggers)
    }

    // ---------- 回声余量：播放中门槛翻倍（hotfix 125.1：维持不动） ----------

    @Test
    fun `播放中AEC残余回声RMS1500持续2秒 - 不触发打断`() {
        val p = newPolicy()
        p.onTtsStart(0L)
        var t = 0L
        repeat(50) { p.process(t, 1500f, playbackActive = true); t += FRAME_MS } // 豁免窗（1000ms）
        repeat(50) {
            assertFalse("播放中 1500 < 1000×2（回声余量），不应触发", p.process(t, 1500f, playbackActive = true))
            t += FRAME_MS
        }
    }

    @Test
    fun `播放中真人插话RMS3000持续360ms - 正常触发打断`() {
        val p = newPolicy()
        p.onTtsStart(0L)
        var t = 0L
        var triggers = 0
        // 豁免窗 1000ms（50 帧）内 AEC 残余回声 1500（< 2000 门槛，不累计）
        repeat(50) { p.process(t, 1500f, playbackActive = true); t += FRAME_MS }
        repeat(18) { // 360ms（hotfix 125.1 口径）
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

    // ---------- 冷却窗（防抖，hotfix 125.1：维持 2s 不动） ----------

    @Test
    fun `触发打断后2秒冷却内 - 即使满足条件也不再触发`() {
        val p = newPolicy()
        var t = 0L
        var triggers = 0
        // 第一轮：30 帧（600ms，第 18 帧即凑满 360ms）→ 触发一次
        repeat(30) { if (p.process(t, 2000f)) triggers++; t += FRAME_MS }
        // 冷却窗内继续 2000（模拟回声/持续噪声）
        repeat(100) { if (p.process(t, 2000f)) triggers++; t += FRAME_MS } // 2s
        assertEquals("首轮触发 + 冷却期内不重复触发", 1, triggers)
        // 冷却过后：360ms 人声应可再次触发
        repeat(24) { if (p.process(t, 2000f)) triggers++; t += FRAME_MS }
        assertEquals("冷却结束后恢复正常判定", 2, triggers)
    }

    // ---------- onTtsStart / reset ----------

    @Test
    fun `onTtsStart重开豁免窗并清空累计`() {
        val p = newPolicy()
        var t = 0L
        // 先累计 240ms（未满 360ms，不触发）
        repeat(12) { p.process(t, 2000f); t += FRAME_MS }
        // 新一轮 TTS 开始 → 累计清零 + 豁免窗开启（1000ms，hotfix 125.1 由 1.5s 收紧）
        p.onTtsStart(t)
        // 窗内 50 帧（t=240..1220，全部 < 240+1000=1240，末帧判定在窗内完成）
        repeat(50) { assertFalse("豁免窗内不触发", p.process(t, 2000f)); t += FRAME_MS }
        // 豁免窗结束后（t≥1240 起）重新累计：17 帧不足 360ms，第 18 帧凑满触发
        // （minVoiceMs 480→360：原口径 23/24 帧 → 现 17/18 帧）
        repeat(17) { assertFalse(p.process(t, 2000f)); t += FRAME_MS }
        assertTrue("豁免窗后重新累计满 360ms 应触发", p.process(t, 2000f))
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
        repeat(20) { p.process(t, 2000f); t += FRAME_MS } // 400ms 超阈人声（未满 360ms 不触发）
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
        // 豁免窗 50 帧 + 之后 450 帧（共 10s）：持续回声 RMS 800。
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
        repeat(50) { p.process(t, 800f, playbackActive = true); t += FRAME_MS } // 豁免窗（1000ms）
        repeat(500) { p.process(t, 800f, playbackActive = true); t += FRAME_MS } // 播放中回声判定态
        assertEquals("播放中基线不更新", 300f, p.baseline, 0.01f)
        // TTS 结束后（无专门 onTtsEnd，豁免窗早已过期）：房间真实底噪 600 应正常被吸附
        repeat(500) { p.process(t, 600f); t += FRAME_MS }
        assertTrue("播放结束后应恢复基线自适应", p.baseline > 500f)
        assertTrue(p.baseline < 700f)
    }

    // ==================== hotfix 125.1 Rev 2：降级态差异化 + echoGuard 循环误打断熔断器 ====================
    // 定稿 §1.1/§1.2/§1.3（Rev 2）与 §3.4 单测清单。场景前提：音源降级为 MIC
    // （P1-A 粘性）/ FAITHFUL 模式后无硬件 AEC，TTS 外放回声全量进麦克风。
    // 未熔断降级态门槛 = 1000×1.5 = 1500；熔断器三条件（无抬升 ∧ 循环节奏 ≤12s ∧
    // strike≥2 含本次）+ 前置安全阀（本播放期回声样本 ≥40 帧）。
    // 帧节拍辅助：onTtsStart 后豁免窗 1000ms（50 帧，窗照收回声样本——播放期对齐），
    // 判定态 18 帧（360ms）凑满触发。

    /** 便捷：模拟一轮降级态播报（豁免窗 50 帧回声 + 判定态 32 帧回声 + 18 帧触发窗）。
     *  注意：echoRms>1500（降级态门槛）时触发会发生在 32 帧回声段（静态回声
     *  自身凑满 360ms）——两段返回值均需捕获（或语义），voice 段随触发进入冷却
     *  属预期，不影响 triggered 判定。 */
    private fun playRound(
        p: BargeInPolicy,
        startMs: Long,
        echoRms: Float,
        voiceRms: Float,
        micDegraded: Boolean = true,
    ): Boolean {
        var t = startMs
        p.onTtsStart(t)
        // 豁免窗 50 帧（回声，进 qFlat 窗但不判定）
        repeat(50) { p.process(t, echoRms, playbackActive = true, micDegraded = micDegraded); t += FRAME_MS }
        // 判定态：32 帧回声（echoRms 超阈时本段即可触发——静态回声场景）
        var triggered = false
        repeat(32) {
            if (p.process(t, echoRms, playbackActive = true, micDegraded = micDegraded)) triggered = true
            t += FRAME_MS
        }
        // 触发窗 18 帧（叠加人声；已触发时处于冷却窗，返回 false 属预期）
        repeat(18) {
            if (p.process(t, voiceRms, playbackActive = true, micDegraded = micDegraded)) triggered = true
            t += FRAME_MS
        }
        return triggered
    }

    @Test
    fun `降级态正常插话 - 触发且判有抬升不计数`() {
        // §1.3 行 75：E=1000/V=1500 叠加（rms=1803>1500）触发；rAvg=1803 ≥ 1.5×qFlat
        // （qFlat=窗均值≈1144，1.5×1144=1716≤1803）判「有抬升」→ strike 不增
        val p = newPolicy()
        val triggered = playRound(p, startMs = 0L, echoRms = 1000f, voiceRms = 1803f)
        assertTrue("降级态叠加真人应触发打断（门槛 1500）", triggered)
        assertEquals("有抬升（疑似真人）不计数", 0, p.guardStrike)
        assertFalse("未熔断", p.isTripped)
    }

    @Test
    fun `降级态纯回声E1000恒定 - 持续不触发`() {
        // §1.3 行 76：1000 < 1500（未熔断门槛）恒不触发
        val p = newPolicy()
        p.onTtsStart(0L)
        var t = 0L
        var triggered = false
        repeat(550) {
            if (p.process(t, 1000f, playbackActive = true, micDegraded = true)) triggered = true
            t += FRAME_MS
        }
        assertFalse("纯回声 E=1000 不触发", triggered)
        assertEquals(0, p.guardStrike)
    }

    @Test
    fun `降级态大音量回声E1800静态 - 触发一次计数不熔断`() {
        // §1.3 行 77（T-B03 Rev 2）：1800>1500 诚实触发；rAvg=1800 < 1.5×qFlat=2700
        // 判无抬升 → strike=1；strike<2 不熔断（防自触发由循环形态的熔断器承接）
        val p = newPolicy()
        val triggered = playRound(p, startMs = 0L, echoRms = 1800f, voiceRms = 1800f)
        assertTrue("静态探针应诚实触发（1800>1500）", triggered)
        assertEquals("无抬升触发计数 strike=1", 1, p.guardStrike)
        assertFalse("单次不熔断", p.isTripped)
    }

    @Test
    fun `降级态回声E1900循环 - 第2次TRIP门槛2470 - 第3次不触发`() {
        // §1.3 行 78（核心断言，T-B06 循环变体）：E=1900 恒定 ×（触发→复播 4s→再触发）
        // 第 2 次触发时 TRIP：门槛 max(2000, 1.3×1900)=2470；第 3 轮 1900<2470 不触发；
        // 观测行 ECHO_GUARD_TRIP{rAvg=1900, qFlat=1900, newThreshold=2470}
        val p = newPolicy()
        // 轮 1（t=0）：触发，strike=1（间隔基准建立）
        assertTrue(playRound(p, startMs = 0L, echoRms = 1900f, voiceRms = 1900f))
        assertEquals(1, p.guardStrike)
        // 轮 2（t=4000，间隔 ≈2.7s ≤12s 循环节奏）：触发且 TRIP
        assertTrue(playRound(p, startMs = 4000L, echoRms = 1900f, voiceRms = 1900f))
        assertEquals("第 2 次无抬升触发 strike=2", 2, p.guardStrike)
        assertTrue("第 2 次达限且循环节奏成立 → TRIP", p.isTripped)
        assertEquals("TRIP 门槛 = max(2000, 1.3×1900) = 2470", 2470f, p.tripThreshold, 1f)
        val trip = p.consumeGuardTrip()
        assertNotNull("TRIP 观测事件应生成", trip)
        assertEquals(1900f, trip!!.rAvg, 1f)
        assertEquals(1900f, trip.qFlat, 1f)
        assertEquals(2470f, trip.newThreshold, 1f)
        assertNull("观测事件读后即清（一次性）", p.consumeGuardTrip())
        // 轮 3（t=8000）：1900 < 2470 → 不触发（循环误打断止于 2 次）
        assertFalse(playRound(p, startMs = 8000L, echoRms = 1900f, voiceRms = 1900f))
    }

    @Test
    fun `TRIP门槛自适应 - rAvg2000时为2600`() {
        // §3.4 清单 ④：rAvg=2000 → max(2000, 1.3×2000)=2600，第 3 轮 2000<2600 不触发
        val p = newPolicy()
        assertTrue(playRound(p, startMs = 0L, echoRms = 2000f, voiceRms = 2000f))
        assertTrue(playRound(p, startMs = 4000L, echoRms = 2000f, voiceRms = 2000f))
        assertEquals("TRIP 门槛 = max(2000, 2600) = 2600", 2600f, p.tripThreshold, 1f)
        assertFalse("第 3 轮 2000<2600 不触发", playRound(p, startMs = 8000L, echoRms = 2000f, voiceRms = 2000f))
    }

    @Test
    fun `真人连续3次插话不误熔断 - 频次误伤被抬升判定消除`() {
        // §1.3 行 80：E=1000/V=1500（叠加 1803）×3 次（间隔 5s>冷却 2s）→ 全部触发，
        // 每次有抬升（rAvg=1803 ≥ 1.5×qFlat≈1716）→ strike 恒 0，不熔断
        val p = newPolicy()
        repeat(3) { round ->
            assertTrue("第 ${round + 1} 次真人插话应触发", playRound(p, startMs = round * 5000L, echoRms = 1000f, voiceRms = 1803f))
        }
        assertEquals("真人打断不计数", 0, p.guardStrike)
        assertFalse(p.isTripped)
    }

    @Test
    fun `稳态噪声循环同受保护 - 第2次TRIP第3次不触发`() {
        // §1.3 行 81：E=1000 + 稳态噪声 1600 → 持续 rms≈1887（√(1000²+1600²)）
        // rAvg≈qFlat≈1887（噪声为主体）判无抬升 → 第 2 次 TRIP：门槛 max(2000,2453)
        val p = newPolicy()
        val noiseRms = kotlin.math.sqrt(1000f * 1000f + 1600f * 1600f) // ≈1886.8
        assertTrue(playRound(p, startMs = 0L, echoRms = noiseRms, voiceRms = noiseRms))
        assertTrue(playRound(p, startMs = 4000L, echoRms = noiseRms, voiceRms = noiseRms))
        assertTrue("稳态噪声循环第 2 次应 TRIP", p.isTripped)
        assertEquals("门槛 = max(2000, 1.3×1887) ≈ 2453", 2453f, p.tripThreshold, 5f)
        assertFalse("第 3 轮 1887<2453 不触发", playRound(p, startMs = 8000L, echoRms = noiseRms, voiceRms = noiseRms))
    }

    @Test
    fun `样本量前置安全阀 - 复播短于0点8s触发跳过熔断判定`() {
        // §1.3 行 82（§3.4 ⑦）：AI 短应答（播放期 <0.8s 即窗 <40 帧）后用户在
        // 非播放态触发 → 照常执行打断，但跳过熔断判定（数据不足不做毁灭性
        // 判定），strike 不增
        val p = newPolicy()
        // 轮 1：正常播放态触发（strike=1，触发时刻 ≈1980ms）
        assertTrue(playRound(p, startMs = 0L, echoRms = 1900f, voiceRms = 1900f))
        assertEquals(1, p.guardStrike)
        // 复播短应答（t=4000，避开 2s 冷却窗）：仅 20 帧（0.4s）播放期回声即停止
        // （窗=20 <40 安全阀阈值）
        var t = 4000L
        p.onTtsStart(t)
        repeat(20) { p.process(t, 1900f, playbackActive = true, micDegraded = true); t += FRAME_MS }
        // 播放结束（playbackActive=false）；跳过豁免窗余量（onTtsStart 起 1000ms，
        // 短应答 0.4s 提前结束，窗语义仍以 TTS start 为界）——豁免窗后才进入判定
        t = maxOf(t, 4000L + 1000L + FRAME_MS)
        // 用户非播放态插话 18 帧（1900 > 非播放门槛 1000）
        var triggered = false
        repeat(18) {
            if (p.process(t, 1900f, playbackActive = false, micDegraded = true)) triggered = true
            t += FRAME_MS
        }
        assertTrue("安全阀场景触发照常执行", triggered)
        assertEquals("样本不足跳过熔断判定，strike 不增", 1, p.guardStrike)
        assertFalse("不熔断", p.isTripped)
    }

    @Test
    fun `间隔大于12秒不熔断 - strike累计但不TRIP`() {
        // §1.3 行 83：两次无抬升触发间隔 15s → strike 累计（=2）但不 TRIP
        // （偶发误打断非循环，仅留档观测）
        val p = newPolicy()
        assertTrue(playRound(p, startMs = 0L, echoRms = 1900f, voiceRms = 1900f))
        assertEquals(1, p.guardStrike)
        // 轮 2 起点 15000ms（触发时刻间隔 ≈15s > 12s 循环节奏窗）
        assertTrue(playRound(p, startMs = 15000L, echoRms = 1900f, voiceRms = 1900f))
        assertEquals("strike 累计至 2", 2, p.guardStrike)
        assertFalse("间隔 >12s 不 TRIP", p.isTripped)
    }

    @Test
    fun `AEC态guard全逻辑不激活 - E1800恒定不触发且状态零`() {
        // §3.4 ⑩：micDegraded=false（AEC 正常态）时 echoGuard 全逻辑不激活——
        // qFlat 窗不收、strike 不计、熔断门槛不生效；E=1800 < 2000（AEC 门槛）不触发
        val p = newPolicy()
        p.onTtsStart(0L)
        var t = 0L
        var triggered = false
        repeat(500) {
            if (p.process(t, 1800f, playbackActive = true, micDegraded = false)) triggered = true
            t += FRAME_MS
        }
        assertFalse("AEC 态 1800 < 2000 不触发", triggered)
        assertEquals("AEC 态 qFlat 窗不收", 0, p.echoRingCount)
        assertEquals(0, p.guardStrike)
        assertFalse(p.isTripped)
    }

    @Test
    fun `reset后echoGuard全状态清零 - 门槛回1500重新观察`() {
        // §1.5 T-B12（Rev 2）：reset() 后 strike/时间戳/环形窗/熔断态清空，
        // 门槛回 1500；E=1000 纯回声仍不触发（T-B02 口径），E=1800 可再触发（新观察周期）
        val p = newPolicy()
        assertTrue(playRound(p, startMs = 0L, echoRms = 1900f, voiceRms = 1900f))
        assertTrue(playRound(p, startMs = 4000L, echoRms = 1900f, voiceRms = 1900f))
        assertTrue("熔断已发生", p.isTripped)
        p.reset()
        assertEquals(0, p.guardStrike)
        assertFalse(p.isTripped)
        assertEquals(0, p.echoRingCount)
        // 门槛回 1500：纯回声 1000 不触发
        p.onTtsStart(0L)
        var t = 0L
        var triggered = false
        repeat(200) {
            if (p.process(t, 1000f, playbackActive = true, micDegraded = true)) triggered = true
            t += FRAME_MS
        }
        assertFalse("reset 后门槛回 1500，纯回声不触发", triggered)
        // 新观察周期：E=1900 可再触发（若真处大回声环境将再次 2 次熔断，节奏可控）
        assertTrue(playRound(p, startMs = 5000L, echoRms = 1900f, voiceRms = 1900f))
        assertEquals("新周期重新计数", 1, p.guardStrike)
    }
}
