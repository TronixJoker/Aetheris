package com.xiaozhi.android.audio

import android.speech.SpeechRecognizer

/**
 * B3 热词识别错误码分级策略（纯 Kotlin，可单测）。
 *
 * 背景（架构师《桌面语音识别_根因分析与修复方案_v1.md》B3）：
 * 旧实现把 SpeechRecognizer 所有错误一律按固定 500ms 无脑重启，
 * 在"系统识别服务仍占用麦克风"的桌面场景下会形成【抢麦循环】——
 * APP 重启热词检测 → 系统 busy → 500ms 后再重启 → 再 busy ……。
 *
 * 业界共识（主流开源实现 + AOSP 文档）是按错误码分级处理：
 *  - ERROR_RECOGNIZER_BUSY      → 指数退避重启（1s→2s→4s，封顶 4s）；
 *  - ERROR_INSUFFICIENT_PERMISSIONS → 停止自动重启（权限问题重试无意义）；
 *  - ERROR_AUDIO 连续多次       → 停止自动重启并提示（音频链路异常）；
 *  - 其余常规错误（NO_MATCH / SPEECH_TIMEOUT / NETWORK...）→ 常规延迟重启。
 */
object SpeechRetryPolicy {

    /** 错误分类：决定重启策略 */
    enum class Category {
        /** 常规错误：按固定延迟正常重启 */
        ROUTINE,
        /** 识别器忙：指数退避重启 */
        BUSY,
        /** 权限不足：停止自动重启 */
        FATAL_NO_PERMISSION,
        /** 音频错误：连续多次后停止自动重启 */
        AUDIO_ERROR
    }

    // ---------- 阈值常量（供实现与测试共用） ----------

    /** ERROR_AUDIO 连续达到该次数即停止自动重启 */
    const val MAX_CONSECUTIVE_AUDIO_ERRORS = 3

    /** BUSY 指数退避基础延迟（第 1 次 busy 等 1s） */
    const val BUSY_BACKOFF_BASE_MS = 1000L

    /** BUSY 指数退避上限（封顶 4s，避免越等越久失去热词可用性） */
    const val BUSY_BACKOFF_CAP_MS = 4000L

    // ---------- 分类 ----------

    /**
     * 把 SpeechRecognizer 错误码归类到处理策略。
     * @param error SpeechRecognizer.ERROR_* 原始错误码（编译期常量，测试可安全内联引用）
     */
    fun classify(error: Int): Category = when (error) {
        // 忙碌：系统识别服务尚未归还麦克风/识别会话，紧密重启只会加剧抢占
        SpeechRecognizer.ERROR_RECOGNIZER_BUSY -> Category.BUSY
        // 权限不足：重试无意义，必须停止并提示用户授权
        SpeechRecognizer.ERROR_INSUFFICIENT_PERMISSIONS -> Category.FATAL_NO_PERMISSION
        // 音频错误：录音设备/路由异常，连续多次说明链路持续故障
        SpeechRecognizer.ERROR_AUDIO -> Category.AUDIO_ERROR
        // 其余（NO_MATCH/SPEECH_TIMEOUT/CLIENT/NETWORK/SERVER 等）：常规重启
        else -> Category.ROUTINE
    }

    // ---------- 退避计算 ----------

    /**
     * 计算 BUSY 错误的指数退避延迟：1s → 2s → 4s → 4s（封顶）。
     * @param busyAttempt 本次"连续 BUSY"的序号（0 表示第一次 BUSY，成功启动会话后归零）
     */
    fun busyBackoffDelayMs(busyAttempt: Int): Long {
        if (busyAttempt < 0) return BUSY_BACKOFF_BASE_MS
        val shifted = BUSY_BACKOFF_BASE_MS shl busyAttempt.coerceAtMost(16)
        return minOf(shifted, BUSY_BACKOFF_CAP_MS)
    }

    // ---------- 停止条件 ----------

    /**
     * 是否应停止自动重启。
     * @param consecutiveAudioErrors 连续 ERROR_AUDIO 计数（成功启动会话后归零）
     */
    fun shouldStopAutoRestart(consecutiveAudioErrors: Int): Boolean =
        consecutiveAudioErrors >= MAX_CONSECUTIVE_AUDIO_ERRORS

    /** 音频链路异常的停止提示语（用户可见） */
    fun audioErrorMessage(count: Int): String =
        "热词检测已停止：麦克风音频链路连续异常（$count 次），请重启 APP 或检查麦克风权限"

    /** 权限不足的停止提示语（用户可见） */
    fun noPermissionMessage(): String =
        "热词检测已停止：缺少麦克风权限，请在系统设置中授权"
}
