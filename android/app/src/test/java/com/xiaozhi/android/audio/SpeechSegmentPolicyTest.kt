package com.xiaozhi.android.audio

import org.junit.Assert.assertEquals
import org.junit.Test

/**
 * 语音段→端点收尾判定策略单测（v2.3.10「识别中悬挂」修复）。
 *
 * 回归场景：旧实现 `durationMs in 1200..15000` 把 0.4~1.2s 的短命令语音段
 * （"好的"/"几点了"）与 >15s 的长独白段静默丢弃 → 端点收尾永不触发 →
 * 服务端（auto 模式等 listen stop）永不返回 stt →「识别中」无限悬挂。
 * 修复：>=0.6s 即端点（<0.4s 由 VAD 成段层过滤，0.6~1.2s 误切由弹性宽限撤销），
 * >15s 强制端点（对齐"强制切段"设计意图）。
 */
class SpeechSegmentPolicyTest {

    // ---------- DROP：过短段（口头禅/瞬态） ----------

    @Test
    fun `低于下限的段应丢弃 - 不触发端点`() {
        // "嗯"短促口头禅（<0.6s 纯语音）维持丢弃，保留"不因口头禅误停"的治理
        assertEquals(SpeechSegmentPolicy.Decision.DROP, SpeechSegmentPolicy.decide(0L))
        assertEquals(SpeechSegmentPolicy.Decision.DROP, SpeechSegmentPolicy.decide(400L))
        assertEquals(SpeechSegmentPolicy.Decision.DROP, SpeechSegmentPolicy.decide(599L))
    }

    @Test
    fun `负值时长按丢弃处理 - 防御非法输入`() {
        assertEquals(SpeechSegmentPolicy.Decision.DROP, SpeechSegmentPolicy.decide(-1L))
        assertEquals(SpeechSegmentPolicy.Decision.DROP, SpeechSegmentPolicy.decide(Long.MIN_VALUE))
    }

    // ---------- ENDPOINT：正常端点（含原被误杀的短命令区间） ----------

    @Test
    fun `恰好等于下限 - 触发端点`() {
        assertEquals(SpeechSegmentPolicy.Decision.ENDPOINT, SpeechSegmentPolicy.decide(600L))
    }

    @Test
    fun `短命令区间 0_6 到 1_2s - 修复后必须触发端点（回归核心用例）`() {
        // 旧实现丢弃该区间 → "好的""几点了"说完永不收尾 → 识别中悬挂；
        // 新实现该区间即正常端点
        assertEquals(SpeechSegmentPolicy.Decision.ENDPOINT, SpeechSegmentPolicy.decide(700L))
        assertEquals(SpeechSegmentPolicy.Decision.ENDPOINT, SpeechSegmentPolicy.decide(1000L))
        assertEquals(SpeechSegmentPolicy.Decision.ENDPOINT, SpeechSegmentPolicy.decide(1199L))
    }

    @Test
    fun `常规句子时长 - 触发端点`() {
        assertEquals(SpeechSegmentPolicy.Decision.ENDPOINT, SpeechSegmentPolicy.decide(1200L))
        assertEquals(SpeechSegmentPolicy.Decision.ENDPOINT, SpeechSegmentPolicy.decide(8000L))
        assertEquals(SpeechSegmentPolicy.Decision.ENDPOINT, SpeechSegmentPolicy.decide(15000L))
    }

    // ---------- FORCE_ENDPOINT：超长段强制收尾 ----------

    @Test
    fun `超过上限的独白段 - 强制触发端点（修复后不再丢弃）`() {
        // 旧实现丢弃 >15s 段 → 长独白永不收尾 → 同样悬挂
        assertEquals(SpeechSegmentPolicy.Decision.FORCE_ENDPOINT, SpeechSegmentPolicy.decide(15001L))
        assertEquals(SpeechSegmentPolicy.Decision.FORCE_ENDPOINT, SpeechSegmentPolicy.decide(30_000L))
    }

    // ---------- 常量合理性 ----------

    @Test
    fun `常量合理性 - 下限须高于 VAD 成段门槛且低于短命令时长`() {
        // VAD 成段门槛 0.40s（v2.3.9 收紧）：下限必须 >= 它，瞬态才进不到这里
        assert(SpeechSegmentPolicy.MIN_ENDPOINT_MS >= 400L)
        // 常见短命令（"好的"约 0.5~0.9s）必须能触发端点，否则悬挂复现
        assert(SpeechSegmentPolicy.MIN_ENDPOINT_MS <= 600L)
        // 上限须显著大于正常句子，同时防止样本无限堆积
        assert(SpeechSegmentPolicy.MAX_FORCE_ENDPOINT_MS >= 10_000L)
    }
}
