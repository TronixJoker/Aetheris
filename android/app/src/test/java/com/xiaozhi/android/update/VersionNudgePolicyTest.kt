package com.xiaozhi.android.update

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * [VersionNudgePolicy] 单元测试（v2.3.13 §4.2.1 版本差距分提醒）。
 *
 * 规格（群管理员派单 + 架构师方案 §4）：
 *  - 差 ≥3 → FORCE_PROMPT（启动必弹窗，验收 §5-10「差≥3 必弹」）；
 *  - 差 1~2 → RED_DOT（仅设置页红点，不打扰轻度滞后用户）；
 *  - 无更新/本地更新 → NONE；
 *  - 同版本会话只弹一次（防打扰），跨进程重启复弹。
 */
class VersionNudgePolicyTest {

    // ---------- 差距分级 ----------

    @Test
    fun `差距0及负数 - NONE - 不打扰`() {
        assertEquals(VersionNudgePolicy.NudgeLevel.NONE, VersionNudgePolicy.decide(123, 123))
        assertEquals("本地比远端新（不应出现）→ NONE", VersionNudgePolicy.NudgeLevel.NONE, VersionNudgePolicy.decide(123, 122))
    }

    @Test
    fun `差距1到2 - 仅RED_DOT - 轻度滞后不打扰`() {
        assertEquals("v2.3.12→v2.3.13 常态差 1", VersionNudgePolicy.NudgeLevel.RED_DOT, VersionNudgePolicy.decide(122, 123))
        assertEquals(VersionNudgePolicy.NudgeLevel.RED_DOT, VersionNudgePolicy.decide(121, 123))
    }

    @Test
    fun `差距3及以上 - FORCE_PROMPT - 大幅滞后必弹窗`() {
        assertEquals("差 3 恰达阈值", VersionNudgePolicy.NudgeLevel.FORCE_PROMPT, VersionNudgePolicy.decide(120, 123))
        assertEquals("v2.3.7→v2.3.13 用户实证差距", VersionNudgePolicy.NudgeLevel.FORCE_PROMPT, VersionNudgePolicy.decide(115, 123))
        assertEquals("差 10 仍弹窗（封顶无上限）", VersionNudgePolicy.NudgeLevel.FORCE_PROMPT, VersionNudgePolicy.decide(113, 123))
    }

    @Test
    fun `阈值常量锁定为3 - 防后续静默调整打扰策略`() {
        assertEquals(3, VersionNudgePolicy.FORCE_DIFF_THRESHOLD)
    }

    // ---------- 同版本会话只弹一次 ----------

    @Test
    fun `同版本会话只弹一次 - 未弹过或换版本才复弹`() {
        assertTrue("本会话从未弹过（哨兵 -1）→ 允许弹", VersionNudgePolicy.shouldPromptAgain(-1, 123))
        assertTrue("上次弹的是 122，本次远端 123 → 允许弹", VersionNudgePolicy.shouldPromptAgain(122, 123))
        assertFalse("本会话已弹过 123 → 不重复弹", VersionNudgePolicy.shouldPromptAgain(123, 123))
    }
}
