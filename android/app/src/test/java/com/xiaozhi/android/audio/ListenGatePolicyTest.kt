package com.xiaozhi.android.audio

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * 聆听上传门槛策略（ListenGatePolicy）单测（v2.3.9 识别触发条件收紧）。
 *
 * 规格来源（群管理员派单）：
 *  - 收紧识别触发条件：轻微动静（环境噪音）不再上传服务端被当作语音识别；
 *  - 短促瞬态（关门/碰撞）凑不满连续 100ms 不开门；
 *  - 开门回放预滚，真实语音起始不丢失；
 *  - holdoff 挡 TTS 尾音/打断瞬间回声，真人插话不丢；
 *  - keepalive 维持服务端有上行判定（防 1005 空闲断链，v2.3.8 治理成果不回退）。
 *
 * 模拟帧节拍：20ms/帧；预滚容量 600ms/20ms = 30 帧；门槛 400 RMS（评审 🔴 后 450→400）。
 * 用 marker（帧内唯一递增值）验证回放帧的身份，杜绝"重复/遗漏/陈旧"类回归。
 */
class ListenGatePolicyTest {

    private companion object {
        const val FRAME_MS = 20L
        const val OPEN_RMS = 2000f     // 典型人声能量（> 门槛 400）
        const val NOISE_RMS = 300f     // 典型环境底噪（< 门槛 400）
        fun newPolicy() = ListenGatePolicy()
    }

    /** 帧序号发生器：每帧内容唯一，用于校验回放内容身份 */
    private var seq = 0
    private fun mkFrame(): ShortArray {
        seq++
        return ShortArray(320) { seq.toShort() }
    }
    private fun markerOf(frame: ShortArray) = frame[0].toInt()

    private fun feed(p: ListenGatePolicy, t: Long, rms: Float): List<ShortArray> =
        p.process(t, rms, mkFrame())

    private fun feedVad(p: ListenGatePolicy, t: Long, rms: Float, vad: Boolean): List<ShortArray> =
        p.process(t, rms, mkFrame(), vad)

    // ---------- 基本状态 ----------

    @Test
    fun `初始状态为关门`() {
        assertFalse(newPolicy().isOpen)
    }

    // ---------- 关门：环境噪音不再上传 ----------

    @Test
    fun `低于门槛的环境噪音持续4秒 - 全部不上传且不开门`() {
        val p = newPolicy()
        p.onListeningStart(0L)
        var uploaded = 0
        var t = 0L
        repeat(200) { // 4s @ 20ms
            uploaded += feed(p, t, NOISE_RMS).size
            t += FRAME_MS
        }
        assertEquals("低于开门门槛的噪音一律关门", 0, uploaded)
        assertFalse(p.isOpen)
    }

    @Test
    fun `短促瞬态噪音2帧超阈即回落 - 不开门不上传`() {
        val p = newPolicy()
        p.onListeningStart(0L)
        // holdoff（600ms）已过的时刻起：2 帧超阈（关门/碰撞瞬态）→ 回落 → 再 2 帧超阈
        var t = 600L
        assertEquals(0, feed(p, t, OPEN_RMS).size)      // streak=1
        t += FRAME_MS
        assertEquals(0, feed(p, t, OPEN_RMS).size)      // streak=2，不足 5 帧
        t += FRAME_MS
        assertEquals(0, feed(p, t, NOISE_RMS).size)     // 回落清零
        t += FRAME_MS
        assertEquals(0, feed(p, t, OPEN_RMS).size)      // streak 重新=1
        t += FRAME_MS
        assertEquals(0, feed(p, t, OPEN_RMS).size)      // 仍不足
        assertFalse("瞬态凑不满连续 100ms 不应开门", p.isOpen)
    }

    // ---------- 开门 + 预滚 ----------

    @Test
    fun `连续5帧超阈100ms开门 - 回放600ms预滚且包含开门当前帧`() {
        val p = newPolicy()
        p.onListeningStart(0L)
        var t = 0L
        repeat(30) { feed(p, t, NOISE_RMS); t += FRAME_MS } // 30 帧安静 → 预滚填满
        repeat(4) { // 前 4 帧超阈：未开门
            assertEquals(0, feed(p, t, OPEN_RMS).size)
            t += FRAME_MS
        }
        val flushed = feed(p, t, OPEN_RMS) // 第 5 帧：开门，回放预滚
        assertTrue(p.isOpen)
        assertEquals("回放应为 600ms 预滚（30 帧）", 30, flushed.size)
        // 已喂 35 帧，回放最近 30 帧：marker 6..35（含开门当前帧，无重复无遗漏）
        assertEquals(6, markerOf(flushed.first()))
        assertEquals(35, markerOf(flushed.last()))
        assertEquals("回放帧不应重复", flushed.size, flushed.distinctBy { markerOf(it) }.size)
    }

    @Test
    fun `持续人声远超门槛 - 开门后逐帧上传不丢帧`() {
        val p = newPolicy()
        p.onListeningStart(0L)
        var t = 0L
        repeat(30) { feed(p, t, NOISE_RMS); t += FRAME_MS }
        repeat(5) { feed(p, t, OPEN_RMS); t += FRAME_MS } // 开门
        var uploaded = 0
        repeat(50) { // 开门后持续说话 1s
            uploaded += feed(p, t, OPEN_RMS).size
            t += FRAME_MS
        }
        assertEquals("开门期间每一帧都应上传", 50, uploaded)
        assertTrue(p.isOpen)
    }

    // ---------- holdoff：TTS 尾音/打断回声衰减窗 ----------

    @Test
    fun `holdoff窗600ms内即使超阈也不放行 - 结束瞬间带预滚开门`() {
        val p = newPolicy()
        p.onListeningStart(0L)
        // 真人从聆听一开始就持续说话（打断场景）：holdoff 内不放行
        var t = 0L
        var flushed = emptyList<ShortArray>()
        while (t <= 600L) {
            flushed = feed(p, t, OPEN_RMS)
            if (t < 600L) assertEquals("holdoff 内不放行", 0, flushed.size)
            t += FRAME_MS
        }
        // t=600 恰好 holdoff 结束：立即开门并回放预滚（真人插话不丢）
        assertTrue("holdoff 结束时持续说话应立即开门", p.isOpen)
        assertEquals("回放预滚 30 帧（含 holdoff 期间的语音）", 30, flushed.size)
        assertEquals(2, markerOf(flushed.first())) // t=0 的帧已被滚出，t=20 起保留
    }

    @Test
    fun `holdoff内已衰减的回声尾音 - 不开门不被转写`() {
        val p = newPolicy()
        p.onListeningStart(0L)
        // TTS 尾音：仅 holdoff 窗内短暂超阈（600ms 内 5 帧以上但随后消失）
        var t = 0L
        repeat(10) { assertEquals(0, feed(p, t, 800f).size); t += FRAME_MS } // 回声衰减期
        repeat(30) { assertEquals(0, feed(p, t, NOISE_RMS).size); t += FRAME_MS } // 归于安静
        assertFalse("holdoff 内的回声尾音不应开门", p.isOpen)
    }

    // ---------- 开门后 hangover：句间停顿不断流 ----------

    @Test
    fun `开门后句间停顿800ms内继续上传 - 超过即关门`() {
        val p = newPolicy()
        p.onListeningStart(0L)
        var t = 0L
        repeat(30) { feed(p, t, NOISE_RMS); t += FRAME_MS }
        repeat(5) { feed(p, t, OPEN_RMS); t += FRAME_MS } // t=680 开门，lastLoud=680
        // 句间停顿：t=700..1480（距 lastLoud ≤ 800ms）逐帧上传
        repeat(40) {
            val out = feed(p, t, NOISE_RMS)
            assertEquals("hangover 内应保持上传", 1, out.size)
            t += FRAME_MS
        }
        // t=1500：距 lastLoud=820ms > 800ms → 关门
        assertTrue(p.isOpen)
        assertEquals(0, feed(p, t, NOISE_RMS).size)
        assertFalse("静音超过 hangover 应关门", p.isOpen)
    }

    @Test
    fun `hangover期间再次说话 - 刷新计时且不关门`() {
        val p = newPolicy()
        p.onListeningStart(0L)
        var t = 0L
        repeat(30) { feed(p, t, NOISE_RMS); t += FRAME_MS }
        repeat(5) { feed(p, t, OPEN_RMS); t += FRAME_MS }  // 开门
        repeat(10) { assertEquals(1, feed(p, t, NOISE_RMS).size); t += FRAME_MS } // 停顿 200ms
        assertEquals("停顿中再次说话仍上传", 1, feed(p, t, OPEN_RMS).size) // lastLoud 刷新
        t += FRAME_MS
        repeat(39) { assertEquals(1, feed(p, t, NOISE_RMS).size); t += FRAME_MS } // 新的 780ms 停顿
        assertEquals(1, feed(p, t, NOISE_RMS).size) // t-lastLoud=800 边界内仍上传
        t += FRAME_MS
        assertEquals(0, feed(p, t, NOISE_RMS).size) // 820ms > 800 → 关门
        assertFalse(p.isOpen)
    }

    // ---------- 关门后重开：不回放陈旧预滚 ----------

    @Test
    fun `关门后重开 - 只回放关门之后的新帧不含陈旧音频`() {
        val p = newPolicy()
        p.onListeningStart(0L)
        var t = 0L
        repeat(30) { feed(p, t, NOISE_RMS); t += FRAME_MS }
        repeat(5) { feed(p, t, OPEN_RMS); t += FRAME_MS }  // 开门
        repeat(40) { assertEquals(1, feed(p, t, NOISE_RMS).size); t += FRAME_MS } // 停顿 800ms
        val staleMarker = seq
        assertEquals(0, feed(p, t, NOISE_RMS).size) // 关门
        assertFalse(p.isOpen)
        // 关门后重新积累并再次开门
        t += FRAME_MS
        repeat(30) { feed(p, t, NOISE_RMS); t += FRAME_MS }
        repeat(4) { assertEquals(0, feed(p, t, OPEN_RMS).size); t += FRAME_MS }
        val flushed = feed(p, t, OPEN_RMS)
        assertTrue(p.isOpen)
        assertEquals(30, flushed.size)
        assertTrue(
            "重开回放不应包含关门前的陈旧帧",
            flushed.all { markerOf(it) > staleMarker },
        )
    }

    // ---------- keepalive：维持服务端有上行（防 1005） ----------

    @Test
    fun `长时间关门 - 每5秒放行1帧keepalive且不开门`() {
        val p = newPolicy()
        p.onListeningStart(0L)
        var t = 0L
        var uploaded = 0
        var keepalives = 0
        repeat(600) { // 12s 安静
            val n = feed(p, t, NOISE_RMS).size
            uploaded += n
            if (n > 0) keepalives++
            t += FRAME_MS
        }
        assertEquals("12s 应恰好放行 2 帧 keepalive（t=5s、t=10s）", 2, keepalives)
        assertFalse("keepalive 单帧不应触发开门", p.isOpen)
    }

    // ---------- onListeningStart 重置语义 ----------

    @Test
    fun `onListeningStart清空预滚 - 重开后回放不含历史帧`() {
        val p = newPolicy()
        p.onListeningStart(0L)
        var t = 0L
        repeat(10) { feed(p, t, NOISE_RMS); t += FRAME_MS } // 预滚积累 10 帧
        // 重新进入聆听（打断/自动续听场景）：预滚必须清空
        p.onListeningStart(1000L)
        assertFalse(p.isOpen)
        // 重开后 holdoff（至 1600ms）内持续超阈：streak 累计满 5，但不放行
        repeat(5) { assertEquals(0, feed(p, t, OPEN_RMS).size); t += FRAME_MS } // marker 11..15
        // 直接跳到 holdoff 结束（t=1600）：streak 已满，第一帧即开门，
        // 回放的只应是重开以来的帧（6 帧），绝不带重开前的历史帧
        t = 1600L
        val flushed = feed(p, t, OPEN_RMS) // marker 16
        assertTrue(p.isOpen)
        assertEquals("预滚若未清空会带回历史帧（应为 6 帧而非 16 帧）", 6, flushed.size)
        assertEquals(11, markerOf(flushed.first()))
        assertEquals(16, markerOf(flushed.last()))
    }

    @Test
    fun `onListeningStart重启holdoff - 新窗口内超阈不放行`() {
        val p = newPolicy()
        p.onListeningStart(0L)
        // 第一次 holdoff 已过（t=600 后正常开门流程）
        var t = 0L
        repeat(30) { feed(p, t, NOISE_RMS); t += FRAME_MS }
        repeat(5) { feed(p, t, OPEN_RMS); t += FRAME_MS }
        assertTrue(p.isOpen)
        // 模拟打断 → 重新聆听：t=2000 重置
        p.onListeningStart(2000L)
        assertFalse(p.isOpen)
        // 新 holdoff（至 2600ms）内超阈帧不放行
        t = 2000L
        repeat(10) {
            assertEquals("新 holdoff 窗内不放行", 0, feed(p, t, OPEN_RMS).size)
            t += FRAME_MS
        }
    }

    // ---------- 评审 🔴 修复：gap 容忍 + 门槛下调（轻声/远场漏判路径） ----------

    @Test
    fun `波动越阈响轻交替 - gap容忍内不清零仍能开门`() {
        val p = newPolicy()
        p.onListeningStart(0L)
        var t = 0L
        repeat(30) { feed(p, t, NOISE_RMS); t += FRAME_MS } // 预滚填满
        // 响-轻-响-轻：5 帧超阈，帧间各夹 1 帧回落。
        // 旧实现任何一帧回落即清零 streak → 永远凑不满"连续"5 帧 → 整句漏传
        var flushed = emptyList<ShortArray>()
        repeat(4) {
            assertEquals("累计不足 5 帧不开门", 0, feed(p, t, OPEN_RMS).size)
            t += FRAME_MS
            assertEquals(0, feed(p, t, 350f).size) // 轻（gap 容忍内，不清零不计入）
            t += FRAME_MS
        }
        flushed = feed(p, t, OPEN_RMS) // 第 5 帧超阈 → 开门
        assertTrue("波动语音（gap ≤ 容忍）应能开门", p.isOpen)
        assertEquals("开门回放 600ms 预滚", 30, flushed.size)
    }

    @Test
    fun `轻声整句RMS在400下450上波动 - 门槛下调加gap容忍后能开门`() {
        val p = newPolicy()
        p.onListeningStart(0L)
        var t = 0L
        repeat(30) { feed(p, t, NOISE_RMS); t += FRAME_MS }
        // 轻声/远场整句：有效帧 RMS 410–445（≥新门槛 400、< 旧门槛 450），
        // 帧间夹 1 帧低于门槛的回落——旧实现（450 + 严格连续）下整句凑不满，
        // 用户说了话却无反应；门槛下调 + gap 容忍后应正常开门
        val softSentence = floatArrayOf(430f, 350f, 415f, 340f, 440f, 360f, 420f, 330f, 425f)
        var flushed = emptyList<ShortArray>()
        for ((i, rms) in softSentence.withIndex()) {
            flushed = feed(p, t, rms)
            t += FRAME_MS
            if (i < softSentence.lastIndex) assertEquals("开门前不应放行", 0, flushed.size)
        }
        assertTrue("轻声整句应能开门（评审 🔴 漏判路径修复）", p.isOpen)
        assertTrue("开门应回放预滚", flushed.isNotEmpty())
    }

    @Test
    fun `gap超过容忍帧数 - streak清零需重新累计`() {
        val p = newPolicy()
        p.onListeningStart(0L)
        var t = 0L
        repeat(30) { feed(p, t, NOISE_RMS); t += FRAME_MS }
        repeat(3) { feed(p, t, OPEN_RMS); t += FRAME_MS } // streak=3
        repeat(3) { feed(p, t, 350f); t += FRAME_MS }     // 3 帧回落 > 容忍 2 → 清零
        repeat(4) { feed(p, t, OPEN_RMS); t += FRAME_MS } // 重新累计 4 < 5
        assertFalse("gap 超容忍应清零 streak（防持续波动噪声开门）", p.isOpen)
        val flushed = feed(p, t, OPEN_RMS) // streak=5 → 开门并回放预滚
        assertTrue(p.isOpen)
        assertEquals("第 5 帧超阈开门并回放 600ms 预滚", 30, flushed.size)
    }

    @Test
    fun `everOpened观测 - 开门置位且onListeningStart复位`() {
        val p = newPolicy()
        p.onListeningStart(0L)
        assertFalse("新会话初始未开门", p.everOpened)
        // 整句低于新门槛 400（真说了话但整句被挡下）：本地 VAD 仍会判定"说完"，
        // 调用方据此（everOpened=false）输出 GATE_NEVER_OPENED 诊断快照
        var t = 0L
        repeat(50) { feed(p, t, 380f); t += FRAME_MS }
        assertFalse(p.isOpen)
        assertFalse("从未开门的会话 everOpened 应为 false（漏判埋点依据）", p.everOpened)
        // 正常开门后置位
        repeat(5) { feed(p, t, OPEN_RMS); t += FRAME_MS }
        assertTrue(p.isOpen)
        assertTrue("开过门后 everOpened 置位", p.everOpened)
        // 下一轮聆听（打断/自动续听）必须复位，否则埋点失真
        p.onListeningStart(t)
        assertFalse("onListeningStart 应复位 everOpened", p.everOpened)
    }

    // ---------- v2.3.9.1 回声风险分级 holdoff：快速放行窗（首包提速） ----------

    @Test
    fun `echoRisk为false - holdoff降为200ms快速放行 - 真人说话提前开门`() {
        val p = newPolicy()
        // 冷启动/唤醒场景：近期无 TTS 出声 → echoRisk=false
        p.onListeningStart(0L, echoRisk = false)
        var t = 0L
        var flushed = emptyList<ShortArray>()
        // 快速放行窗 200ms 内不放行，持续说话的 streak 先行累计
        while (t < 200L) {
            flushed = feed(p, t, OPEN_RMS)
            assertEquals("200ms 快速放行窗内不放行", 0, flushed.size)
            t += FRAME_MS
        }
        // t=200 恰好快速窗结束：立即开门并回放预滚（语音起始由预滚兜底不丢失）。
        // 预滚只积累本次聆听开始以来的帧：快速窗 200ms（10 帧）+ 当前帧 = 11 帧，
        // （对比 echoRisk=true 的 600ms holdoff 场景恰好攒满 30 帧）
        flushed = feed(p, t, OPEN_RMS)
        assertTrue("快速放行窗结束时持续说话应立即开门", p.isOpen)
        assertEquals("回放 200ms 预滚 + 当前帧", 11, flushed.size)
        assertEquals("回放从本会话第 1 帧起：起始无丢失", 1, markerOf(flushed.first()))
    }

    @Test
    fun `echoRisk默认true - 保持完整600ms回声衰减窗不回退`() {
        val p = newPolicy()
        p.onListeningStart(0L) // 默认参数 = 回声风险场景（打断/自动续听）
        var t = 0L
        while (t < 600L) {
            val flushed = feed(p, t, OPEN_RMS)
            assertEquals("echoRisk=true（默认）600ms 内不放行，治理效果不回退", 0, flushed.size)
            t += FRAME_MS
        }
        val flushed = feed(p, t, OPEN_RMS)
        assertTrue("600ms 回声窗结束时开门", p.isOpen)
        assertEquals(30, flushed.size)
    }

    @Test
    fun `echoRisk为false且快速窗内静音 - 不开门也不误放预滚`() {
        val p = newPolicy()
        p.onListeningStart(0L, echoRisk = false)
        var t = 0L
        repeat(20) { feed(p, t, NOISE_RMS); t += FRAME_MS } // 400ms 底噪
        assertFalse("快速窗内底噪不应开门", p.isOpen)
        // 越过快速窗后 2 帧瞬态 + 回落 + 2 帧：streak 不满 5 仍不开门（治理逻辑不变）
        repeat(2) { feed(p, t, OPEN_RMS); t += FRAME_MS }
        feed(p, t, NOISE_RMS); t += FRAME_MS
        repeat(2) { feed(p, t, OPEN_RMS); t += FRAME_MS }
        assertFalse("streak 不满 5 不开门", p.isOpen)
    }

    // ==================== v2.3.13 自适应三件套（架构师方案 §2.1） ====================

    /** 安静房场景：底噪 ~130（warmup 25 帧取中位数） */
    private fun newAdaptivePolicy() = ListenGatePolicy.adaptive()

    @Test
    fun `固定模式构造保持v2点3点12行为 - 不消费VAD - 门槛恒400`() {
        // 向后兼容锚点：默认构造（adaptive=false）下，VAD 佐证不武装、门槛恒定，
        // 轻声（300 < 400）即使 VAD 持续在说话也永不开门（与旧版逐帧一致）
        val p = ListenGatePolicy()
        p.onListeningStart(0L, echoRisk = false)
        var t = 0L
        repeat(60) { feedVad(p, t, NOISE_RMS, vad = true); t += FRAME_MS } // 1.2s 轻声+VAD
        assertFalse("固定模式不启用观察放行", p.isOpen)
        assertFalse(p.isObserveFallbackArmed())
        assertEquals("固定模式门槛恒定", 400f, p.currentOpenThresholdRms())
    }

    @Test
    fun `安静房门槛下调到下限250 - 轻声300可开门 - 识别不到的主要受益场景`() {
        val p = newAdaptivePolicy()
        p.onListeningStart(0L, echoRisk = false)
        var t = 0L
        // 35 帧安静底噪（前 10 帧在 200ms 快速窗内不参与 warmup，t=200 起满 25 帧）
        repeat(35) { feed(p, t, 130f); t += FRAME_MS }
        assertEquals("warmup 完成：底噪=中位数 130", 130f, p.currentNoiseFloorRms())
        assertEquals("门槛 = clamp(130×1.8=234, 250, 400) → 下限 250", 250f, p.currentOpenThresholdRms())
        // 轻声说话 RMS 300：旧门槛 400 挡死 → 新门槛 250 放行（本修复核心场景）
        var opened = false
        repeat(6) {
            val flushed = feed(p, t, 300f)
            if (flushed.isNotEmpty()) opened = true
            t += FRAME_MS
        }
        assertTrue("轻声 300 ≥ 动态门槛 250 → 开门", opened)
        assertTrue(p.isOpen)
        assertTrue("开门回放预滚不丢语音起始", p.everOpened)
    }

    @Test
    fun `普通房门槛维持400 - 抗噪效果不回退`() {
        val p = newAdaptivePolicy()
        p.onListeningStart(0L, echoRisk = false)
        var t = 0L
        repeat(35) { feed(p, t, 230f); t += FRAME_MS } // 底噪 230
        assertEquals("门槛 = clamp(230×1.8=414, 250, 400) → 上限封顶 400", 400f, p.currentOpenThresholdRms())
        // 底噪 300（< 400）持续 4s 依旧关门：环境噪音不上传的治理成果不回退
        var uploaded = 0
        repeat(60) { uploaded += feed(p, t, 300f).size; t += FRAME_MS }
        assertEquals("普通房噪音仍被挡住", 0, uploaded)
        assertFalse(p.isOpen)
    }

    @Test
    fun `嘈杂房底噪很高 - 门槛封顶400不上浮 - 杜绝随噪音失控`() {
        val p = newAdaptivePolicy()
        p.onListeningStart(0L, echoRisk = false)
        var t = 0L
        repeat(35) { feed(p, t, 800f); t += FRAME_MS } // 极吵底噪 800
        assertEquals("800×1.8=1440 → 封顶 400", 400f, p.currentOpenThresholdRms())
    }

    @Test
    fun `warmup用中位数初始化 - 单帧瞬态尖峰不污染底噪`() {
        val p = newAdaptivePolicy()
        p.onListeningStart(0L, echoRisk = false)
        var t = 0L
        // 36 帧：第 10 帧混入关门碰撞瞬态（RMS 3000，被门槛排除不进采样），
        // warmup 有效样本 = 36 - 10（holdoff 期）- 1（尖峰）= 25 → 中位数照常完成
        repeat(36) {
            feed(p, t, if (t == 400L) 3000f else 130f)
            t += FRAME_MS
        }
        assertEquals("中位数抗瞬态：底噪仍为 130", 130f, p.currentNoiseFloorRms())
    }

    @Test
    fun `超阈帧不参与EMA - 语音不抬高底噪基线`() {
        val p = newAdaptivePolicy()
        p.onListeningStart(0L, echoRisk = false)
        var t = 0L
        repeat(35) { feed(p, t, 130f); t += FRAME_MS } // warmup → nf=130
        // 短促说话 2000（streak 不满 5 不开门，但帧超阈）：不得抬高基线
        repeat(3) { feed(p, t, 2000f); t += FRAME_MS }
        feed(p, t, 130f); t += FRAME_MS
        assertEquals("超阈帧被排除在 EMA 外", 130f, p.currentNoiseFloorRms())
    }

    @Test
    fun `VAD佐证观察放行 - 轻声整句被能量门槛挡住1秒后 - VAD持续人声即放行带预滚`() {
        // 场景：极轻声 RMS 150（< 任何档位门槛），silero VAD 持续检出人声。
        // 能量路径整句挡住（GATE_NEVER_OPENED 的真机实证）→ 佐证降级路径兜底
        val p = newAdaptivePolicy()
        p.onListeningStart(0L, echoRisk = false)
        var t = 0L
        var openedAt = -1L
        repeat(60) { // 1.2s 连续轻声 + VAD 人声
            val flushed = feedVad(p, t, 150f, vad = true)
            if (flushed.isNotEmpty() && openedAt < 0) openedAt = t
            t += FRAME_MS
        }
        assertTrue("VAD 佐证 ≥1s → 武装观察放行", p.isObserveFallbackArmed())
        assertTrue("武装后 VAD 人声帧直接开门", p.isOpen)
        assertTrue("观察放行开门也应记 everOpened（诊断语义一致）", p.everOpened)
        // 佐证累计只从出 holdoff（快速窗 200ms）后起算（评审 🟡-1 门控）：
        // 出窗后连续观察满 1s → t≈1180 开门（旧口径 980 + 快速窗 200ms）
        assertTrue("开门不晚于佐证满足 +1 帧（t≈1180）", openedAt in 0..1200L)
    }

    @Test
    fun `VAD佐证武装条件 - 回声尾音期不武装 - 静音间隔重置佐证累计`() {
        val p = newAdaptivePolicy()
        p.onListeningStart(0L, echoRisk = true) // holdoff 600ms
        var t = 0L
        // TTS 尾音期（0~600ms）VAD 被扬声器误触发：窗内不累计（评审 🟡-1 门控），不武装
        repeat(30) { feedVad(p, t, 150f, vad = true); t += FRAME_MS }
        assertFalse("holdoff 期内不得武装", p.isObserveFallbackArmed())
        // 回声停止 → 静音帧清零佐证累计（窗内本就未累计）
        repeat(10) { feedVad(p, t, 100f, vad = false); t += FRAME_MS }
        // 此后真人轻声重新累计：需再满 1s 才武装（防回声污染佐证）
        repeat(30) { feedVad(p, t, 150f, vad = true); t += FRAME_MS } // 600ms < 1s
        assertFalse("佐证累计被静音重置后未满 1s，不武装", p.isObserveFallbackArmed())
        assertFalse(p.isOpen)
        repeat(20) { feedVad(p, t, 150f, vad = true); t += FRAME_MS } // 凑满 1s
        assertTrue("静音后重新观察满 1s → 武装放行", p.isObserveFallbackArmed())
        assertTrue(p.isOpen)
    }

    @Test
    fun `VAD佐证累计不出holdoff - 回声持续跨过holdoff不武装 - 出窗后重新满1秒才武装`() {
        // 评审 🟡-1 回归锚：回声从 holdoff 窗内（0~600ms）一直持续到窗后 1100ms——
        // 旧实现窗内 600ms + 窗后 500ms = 1100ms ≥ 1s 会在回声未消时误武装 →
        // 观察放行把回声帧当人声放行（幽灵识别）。门控后窗内不累计，必须出窗后
        // 重新连续观察满 1s 才武装
        val p = newAdaptivePolicy()
        p.onListeningStart(0L, echoRisk = true) // holdoff 600ms
        var t = 0L
        while (t <= 1100L) { // 回声跨窗持续 vadActive（窗内 600ms + 窗后 500ms）
            feedVad(p, t, 150f, vad = true)
            t += FRAME_MS
        }
        assertFalse("回声跨过 holdoff 不得武装（窗内时长不计入佐证）", p.isObserveFallbackArmed())
        assertFalse("未武装则不得开门", p.isOpen)
        // 出窗后连续 vadActive 满 1s（t=1120 起算）：t≈2100 处武装
        while (t <= 2100L) {
            feedVad(p, t, 150f, vad = true)
            t += FRAME_MS
        }
        assertTrue("出窗后重新观察满 1s → 武装（真人轻声兜底不回退）", p.isObserveFallbackArmed())
    }

    @Test
    fun `观察放行武装跨会话撤销 - 新会话重新观察1秒`() {
        val p = newAdaptivePolicy()
        p.onListeningStart(0L, echoRisk = false)
        var t = 0L
        // 60 帧 = 快速窗 200ms（不累计）+ 出窗后 1s（50 帧满 1s → 武装）
        repeat(60) { feedVad(p, t, 150f, vad = true); t += FRAME_MS }
        assertTrue(p.isObserveFallbackArmed())
        // 新一轮聆听：武装必须撤销（防陈旧佐证把噪音当人声放行）
        p.onListeningStart(t + 1000L, echoRisk = false)
        assertFalse("onListeningStart 撤销武装", p.isObserveFallbackArmed())
    }
}
