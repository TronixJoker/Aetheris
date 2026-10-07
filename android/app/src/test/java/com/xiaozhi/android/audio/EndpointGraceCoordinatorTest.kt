package com.xiaozhi.android.audio

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * [EndpointGraceCoordinator] 单元测试（v2.3.9.1 端点收尾状态机）。
 *
 * 覆盖规格（群管理员派单「识别结果时间太长」核心修复 + 架构师评审 🔴-1/🔴-2/🟡-1）：
 *  1. 切段 → 生成世代号与宽限计划（首轮 1.2s+400ms=1.6s 与 v2.3.9 持平）；
 *  2. 帧级续说（句中停顿主路径）：宽限期内检出人声 → 撤销收尾 + 宽限上调，
 *     返回被撤销收尾的世代号（调用方凭此补挂尾扫兜底计时，评审 🔴-1）；
 *  3. 尾扫兜底（评审 🔴-1 防线）：撤销后短促噪音不成段 → 尾扫到期静音超 1s
 *     必须收尾（杜绝聆听态永久挂起）；仍在说话 → 顺延；成段/重置 → 作废；
 *  4. 世代核对：宽限内又成段 → 到期核对失败，不得收尾（不切断语义）；
 *  5. 干净收尾：宽限期满无续说 → 核对通过 + 宽限逐轮收敛（下限 300ms，评审 🔴-2）；
 *  6. CAS 认领（评审 🟡-1）：收尾到期与帧级续说并发时只允许一方放行（消除 TOCTOU）；
 *  7. 会话重置：在途状态清除、世代号单调不归零、宽限学习值保留。
 */
class EndpointGraceCoordinatorTest {

    private companion object {
        const val VAD_SILENCE_MS = 1200L // SpeechEndDetector.silenceDuration（v2.3.9.1 回调后）
        const val INITIAL_GRACE_MS = 400L // EndpointGracePolicy 默认首轮宽限
        const val VOICE_QUIET_MS = EndpointGraceCoordinator.TAIL_SCAN_VOICE_QUIET_MS // 尾扫静音门槛 1s
    }

    private fun newCoordinator() = EndpointGraceCoordinator(EndpointGracePolicy())

    // ---------- 1. 切段计划 ----------

    @Test
    fun `首段切段 - 世代1且宽限400ms - 端点总时长1点6秒与v2点3点9持平`() {
        val c = newCoordinator()
        val plan = c.onSegmentArrive()
        assertEquals(1L, plan.generation)
        assertEquals(INITIAL_GRACE_MS, plan.graceMs)
        assertEquals(VAD_SILENCE_MS + plan.graceMs, 1600L)
    }

    @Test
    fun `连续切段 - 世代号单调递增`() {
        val c = newCoordinator()
        val p1 = c.onSegmentArrive()
        val p2 = c.onSegmentArrive()
        assertEquals(1L, p1.generation)
        assertEquals(2L, p2.generation)
    }

    // ---------- 2. 帧级续说（句中停顿主路径） ----------

    @Test
    fun `宽限期内帧级续说 - 撤销收尾并上调宽限 - 返回被撤销收尾的世代号`() {
        val c = newCoordinator()
        val plan = c.onSegmentArrive() // seg1 切段，在途收尾
        // +100ms 用户续说（VAD 帧级检出人声）→ 撤销在途收尾，
        // 返回被撤销收尾所属世代号（MainViewModel 凭它键控尾扫兜底计时）
        assertEquals("撤销成功应返回在途收尾的世代号", plan.generation, c.onSpeechResumedWithinGrace())
        // 该用户停顿偏长 → 宽限 400+300 封顶 400（端点永不慢于 v2.3.9）
        assertEquals(INITIAL_GRACE_MS, c.graceMs)
        // 续说撤销后无在途收尾 → 再次信号应为空操作
        assertEquals("无在途收尾时续说信号应返回 -1", -1L, c.onSpeechResumedWithinGrace())
    }

    @Test
    fun `会话内首次开口 - 无在途收尾 - 续说信号为空操作且不改宽限`() {
        val c = newCoordinator()
        assertEquals(-1L, c.onSpeechResumedWithinGrace())
        val plan = c.onSegmentArrive()
        assertEquals("首次开口不消耗上调", INITIAL_GRACE_MS, plan.graceMs)
    }

    // ---------- 3. 尾扫兜底（评审 🔴-1 防线） ----------

    @Test
    fun `尾扫兜底-撤销后短噪音不成段 - 到期静音超1s - 必须收尾`() {
        // 评审 🔴-1 挂起路径复现：宽限内续说是 <0.4s 的人声型噪音 → 撤销收尾但
        // 不成段、世代不前进 → 用户不再说话。无尾扫时收尾队列已空 → 聆听态
        // 永久挂起；有尾扫时必须兜底收尾（识别结果永不丢失）
        val c = newCoordinator()
        val plan = c.onSegmentArrive()
        assertEquals(plan.generation, c.onSpeechResumedWithinGrace()) // 噪音触发帧级撤销
        // 尾扫到期：世代未变 + 距最后说话（噪音结束）已超 1s 静音 → FINALIZE
        val decision = c.onTailScanDue(plan.generation, VOICE_QUIET_MS + 100, 0L)
        assertEquals(EndpointGraceCoordinator.TailScanDecision.FINALIZE, decision)
        // 兜底收尾 = 干净收尾：宽限同规则下调（首轮 400 已被上调封顶，此处 -100）
        assertEquals(300L, c.graceMs)
    }

    @Test
    fun `尾扫兜底-到期仍在说话距今不足1s - 顺延重挂不收尾 - 宽限不动`() {
        val c = newCoordinator()
        val plan = c.onSegmentArrive()
        c.onSpeechResumedWithinGrace() // 撤销 + 补挂尾扫
        // 尾扫到期时用户仍在连续说话（距最后说话 300ms < 1s 门槛）
        val decision = c.onTailScanDue(plan.generation, 300L, 0L)
        assertEquals(EndpointGraceCoordinator.TailScanDecision.POSTPONE, decision)
        // 顺延重挂不收尾：宽限不得下调（保留学习值），世代不变、pending 保持已清
        assertEquals(INITIAL_GRACE_MS, c.graceMs)
        // 顺延后再到期：真正静音超 1s → 收尾
        assertEquals(
            EndpointGraceCoordinator.TailScanDecision.FINALIZE,
            c.onTailScanDue(plan.generation, VOICE_QUIET_MS + 1, 0L)
        )
    }

    @Test
    fun `尾扫兜底-撤销后真的又成段 - 世代前进 - 尾扫到期作废让位正常收尾`() {
        val c = newCoordinator()
        val p1 = c.onSegmentArrive()
        assertEquals(p1.generation, c.onSpeechResumedWithinGrace()) // 宽限内续说（真语音）
        // 用户继续说完 → 新段成段（世代前进，正常宽限收尾接管）
        val p2 = c.onSegmentArrive()
        assertTrue(p2.generation > p1.generation)
        // 旧的尾扫到期：世代核对失败 → VOID，不得与正常收尾抢跑
        assertEquals(
            EndpointGraceCoordinator.TailScanDecision.VOID,
            c.onTailScanDue(p1.generation, VOICE_QUIET_MS + 500, 0L)
        )
        // 正常路径不受影响：新世代宽限期满 → 干净收尾
        assertTrue(c.onFinalizeDue(p2.generation))
    }

    @Test
    fun `尾扫兜底-会话重置后到期 - 世代作废 - 不得误停新会话`() {
        val c = newCoordinator()
        val p1 = c.onSegmentArrive()
        c.onSpeechResumedWithinGrace()
        c.reset() // 手动停止 / 打断重启 / 新会话启动
        assertEquals(
            "重置后旧世代尾扫必须作废",
            EndpointGraceCoordinator.TailScanDecision.VOID,
            c.onTailScanDue(p1.generation, Long.MAX_VALUE, 0L)
        )
    }

    // ---------- 4. 世代核对（兜底路径） ----------

    @Test
    fun `宽限期内又成段 - 到期世代核对失败 - 不得收尾`() {
        val c = newCoordinator()
        val p1 = c.onSegmentArrive()
        // 宽限期内用户继续说并成段（帧级信号丢失的兜底场景）→ seg2 世代前进
        val p2 = c.onSegmentArrive()
        assertTrue(p2.generation > p1.generation)
        // job1 到期拿旧世代核对 → 作废（不 stopListening、不切断句中语义）
        assertFalse("旧世代收尾必须作废", c.onFinalizeDue(p1.generation))
        // job2 到期拿新世代核对 → 通过
        assertTrue(c.onFinalizeDue(p2.generation))
    }

    @Test
    fun `段级兜底续说 - 新段到达时在途收尾未撤销 - 补一次宽限上调`() {
        val c = newCoordinator()
        // 干净收尾一轮 → 宽限已收敛到下限 300ms（评审 🔴-2）
        repeat(1) { c.onSegmentArrive().let { assertTrue(c.onFinalizeDue(it.generation)) } }
        assertEquals(300L, c.graceMs)
        // segA 切段后在途（pending=false→true，本次不触发上调）
        c.onSegmentArrive()
        // segB 到达时 pending 仍为 true（帧级信号本次未触发的兜底路径）→ 补上调
        val pB = c.onSegmentArrive()
        assertEquals("段级观测到宽限内续说 → 宽限上调 300+300 封顶 400", INITIAL_GRACE_MS, pB.graceMs)
        // 兜底上调后旧收尾因世代前进作废、新收尾用新宽限
        assertTrue(c.onFinalizeDue(pB.generation))
    }

    // ---------- 5. 干净收尾（收敛） ----------

    @Test
    fun `干净收尾 - 宽限一轮收敛到下限300ms - 端点总时长1点5秒`() {
        val c = newCoordinator()
        repeat(1) {
            val plan = c.onSegmentArrive()
            assertTrue("宽限期满无续说 → 世代核对通过", c.onFinalizeDue(plan.generation))
        }
        assertEquals(300L, c.graceMs)
        assertEquals(VAD_SILENCE_MS + c.graceMs, 1500L)
        // 收敛到下限后继续干净收尾 → 保持 300 不再下降（评审 🔴-2）
        val plan = c.onSegmentArrive()
        assertTrue(c.onFinalizeDue(plan.generation))
        assertEquals(300L, c.graceMs)
    }

    @Test
    fun `收尾后宽限自动自愈 - 上调到400再逐轮回落 - 伸缩有界`() {
        val c = newCoordinator()
        repeat(1) { c.onSegmentArrive().let { assertTrue(c.onFinalizeDue(it.generation)) } }
        assertEquals(300L, c.graceMs)
        // 误切场景：帧级续说信号 → 上调封顶 400
        c.onSegmentArrive()
        assertTrue(c.onSpeechResumedWithinGrace() > 0)
        assertEquals(INITIAL_GRACE_MS, c.graceMs)
        // 用户说完（干净收尾）→ 重新收敛，始终有界 [300, 400]
        repeat(1) { c.onSegmentArrive().let { assertTrue(c.onFinalizeDue(it.generation)) } }
        assertEquals(300L, c.graceMs)
    }

    // ---------- 6. CAS 认领（评审 🟡-1，消除收尾/续说并发 TOCTOU） ----------

    @Test
    fun `续说先认领 - 收尾到期不得照发 - 双方只允许一方放行`() {
        val c = newCoordinator()
        val plan = c.onSegmentArrive()
        // 帧级续说（VAD 线程）先一步撤销在途收尾
        assertEquals(plan.generation, c.onSpeechResumedWithinGrace())
        // 收尾任务（主线程）晚一步到期：修复前 gen 核对通过 + 无条件清 pending
        // → 照发收尾（撤销+收尾双双放行）；修复后 CAS 认领失败 → 必须作废
        assertFalse("pending 已被续说认领，收尾不得照发", c.onFinalizeDue(plan.generation))
        assertEquals("作废路径不得下调宽限", INITIAL_GRACE_MS, c.graceMs)
    }

    @Test
    fun `收尾先认领 - 续说信号不得再撤销 - 双方只允许一方放行`() {
        val c = newCoordinator()
        val plan = c.onSegmentArrive()
        // 收尾任务（主线程）先一步 CAS 认领成功 → 干净收尾
        assertTrue(c.onFinalizeDue(plan.generation))
        // 帧级续说（VAD 线程）晚一步：pending 已清 → -1（MainViewModel 不补挂尾扫）
        assertEquals("收尾已认领，续说信号不得再撤销", -1L, c.onSpeechResumedWithinGrace())
    }

    // ---------- 7. 收敛态 + 1.4s 句中停顿（评审 🔴-2 场景） ----------

    @Test
    fun `收敛态1点4秒停顿 - 宽限300兜住续说 - 不误切且尾扫让位正常收尾`() {
        val c = newCoordinator()
        // 用户说话不停顿 → 一轮干净收尾收敛到下限 300（端点 1.5s）
        c.onSegmentArrive().let { assertTrue(c.onFinalizeDue(it.generation)) }
        assertEquals(300L, c.graceMs)
        // 下一轮句中停顿 1.4s：1.2s 切段 + 200ms 后续说 → 落在 300ms 宽限窗内
        val plan = c.onSegmentArrive()
        assertEquals(plan.generation, c.onSpeechResumedWithinGrace()) // 兜住，不切断
        // 撤销后补挂尾扫：用户继续说完 → 新段接管，尾扫让位（VOID）
        val next = c.onSegmentArrive()
        assertEquals(
            EndpointGraceCoordinator.TailScanDecision.VOID,
            c.onTailScanDue(plan.generation, VOICE_QUIET_MS, 0L)
        )
        // 用户说完 → 正常干净收尾，收敛值保持下限（伸缩有界）
        assertTrue(c.onFinalizeDue(next.generation))
        assertEquals(300L, c.graceMs)
    }

    // ---------- 8. 会话重置 ----------

    @Test
    fun `会话重置 - 在途收尾清除且旧世代作废 - 世代号单调且宽限学习值保留`() {
        val c = newCoordinator()
        val p1 = c.onSegmentArrive()
        c.reset() // 用户手动停止 / 新会话启动
        // reset 递增世代 → 旧会话在途收尾任务即使因主线程排队竞态晚执行，
        // 世代核对也必失败，不会误停新会话的聆听
        assertFalse("reset 后旧世代收尾必须作废", c.onFinalizeDue(p1.generation))
        // 在途状态已清 → 续说信号为空操作（不污染新会话）
        assertEquals(-1L, c.onSpeechResumedWithinGrace())
        // 世代号跨会话单调递增（不归零，reset 只前进）
        val p2 = c.onSegmentArrive()
        assertTrue("世代继续递增", p2.generation > p1.generation)
        // 宽限学习值（收敛/上调结果）跨会话保留
        assertEquals(INITIAL_GRACE_MS, p2.graceMs)
    }

    // ---------- 9. 尾扫链上限（v2.3.11 修复「恒顺延无上限」） ----------

    /**
     * v2.3.11 悬挂治理：持续人声型噪音（电视/音乐/旁人聊天）让 silero 实时语音
     * 状态长期为真、距最后说话恒 <1s → 旧实现 POSTPONE 无限顺延、聆听态永久挂起。
     * 现以尾扫链总时长兜底：达到 TAIL_SCAN_MAX_CHAIN_MS 必须 FORCE_FINALIZE。
     */

    @Test
    fun `尾扫链上限-噪音恒刷新最后说话时刻 - 链长达到上限 - 强制收尾`() {
        val c = newCoordinator()
        c.onSegmentArrive()
        // 噪音续说撤销收尾 → 补挂尾扫（链起点=此刻，世代键=返回值）
        val gen = c.onSpeechResumedWithinGrace()
        // 6 轮顺延后链长达到 10s 上限，噪音仍在发声（距最后说话 300ms）：
        // 旧实现第 7 轮继续 POSTPONE 无限循环；新实现必须终结链条
        val decision = c.onTailScanDue(
            gen, 300L,
            EndpointGraceCoordinator.TAIL_SCAN_MAX_CHAIN_MS,
        )
        assertEquals(EndpointGraceCoordinator.TailScanDecision.FORCE_FINALIZE, decision)
    }

    @Test
    fun `尾扫链上限-未达上限时噪音仍在说话 - 仍顺延（不提前收）`() {
        val c = newCoordinator()
        c.onSegmentArrive()
        val gen = c.onSpeechResumedWithinGrace()
        val decision = c.onTailScanDue(
            gen, 300L,
            EndpointGraceCoordinator.TAIL_SCAN_MAX_CHAIN_MS - 1,
        )
        assertEquals(EndpointGraceCoordinator.TailScanDecision.POSTPONE, decision)
    }

    @Test
    fun `尾扫链上限-已达上限但世代已前进 - 作废（正常收尾接管）`() {
        val c = newCoordinator()
        val gen = c.onSegmentArrive().generation
        c.onSpeechResumedWithinGrace()
        // 宽限内续说真的成段：世代前进 → 链上限判定之前先被世代核对挡下
        c.onSegmentArrive()
        val decision = c.onTailScanDue(
            gen, 300L,
            EndpointGraceCoordinator.TAIL_SCAN_MAX_CHAIN_MS + 1,
        )
        assertEquals(EndpointGraceCoordinator.TailScanDecision.VOID, decision)
    }

    @Test
    fun `尾扫链上限-强制收尾不污染宽限学习值 - 宽限保持不变`() {
        val c = newCoordinator()
        c.onSegmentArrive()
        val gen = c.onSpeechResumedWithinGrace()
        val graceBefore = c.graceMs
        c.onTailScanDue(gen, 300L, EndpointGraceCoordinator.TAIL_SCAN_MAX_CHAIN_MS)
        // FORCE_FINALIZE 是兜底不是干净收尾（噪音场景），宽限不得下调
        assertEquals("兜底收尾不应污染宽限自适应值", graceBefore, c.graceMs)
    }

    @Test
    fun `尾扫链上限-链长静音超过门槛 - 优先正常FINALIZE（下调宽限）`() {
        val c = newCoordinator()
        c.onSegmentArrive()
        val gen = c.onSpeechResumedWithinGrace()
        val graceBefore = c.graceMs
        // 链长未达上限 + 已静音超 1s：走正常 FINALIZE，宽限按干净收尾规则下调
        val decision = c.onTailScanDue(
            gen, VOICE_QUIET_MS + 100,
            EndpointGraceCoordinator.TAIL_SCAN_MAX_CHAIN_MS - 1,
        )
        assertEquals(EndpointGraceCoordinator.TailScanDecision.FINALIZE, decision)
        assertTrue("干净收尾应下调宽限", c.graceMs < graceBefore)
    }
}
