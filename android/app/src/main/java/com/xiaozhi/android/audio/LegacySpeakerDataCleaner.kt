package com.xiaozhi.android.audio

import java.io.File

/**
 * 人物识别（声纹）功能移除后的遗留数据一次性清理器。
 *
 * 背景：历史版本（≤ v2.3.9.1）曾内置「声纹人物识别」，在
 * filesDir/speaker_profiles/ 下持久化用户声纹（.bin 二进制向量，属
 * 生物特征隐私数据）。该功能已彻底移除（模型资产、调用链、配置项、
 * 设置页 UI 全部清除，不留开关），但老版本升级用户的本地残留必须清理。
 *
 * 设计约束：
 * - 纯 JVM 实现（只依赖 java.io.File），不碰 Android API，便于单测覆盖；
 * - 幂等：目录不存在 / 已清理时为空操作，可安全重复调用；
 * - 尽力而为：调用方（MainViewModel.initSpeechModules）以 runCatching 包裹，
 *   任何 IO 异常都不会影响 VAD 等语音主链路。
 */
object LegacySpeakerDataCleaner {

    /** 老版本声纹档案目录名（与已移除的 SpeakerRecognitionManager 的 profilesDir 一致） */
    const val LEGACY_DIR_NAME = "speaker_profiles"

    /**
     * 递归删除 [filesDir]/speaker_profiles/（含全部子目录），返回删除的文件数（目录不计入）。
     *
     * @param filesDir 应用私有 files 目录（Context.filesDir）
     * @return 实际删除的文件个数；目录不存在时返回 0
     */
    fun purgeLegacySpeakerProfiles(filesDir: File): Int {
        val dir = File(filesDir, LEGACY_DIR_NAME)
        if (!dir.exists()) return 0

        var removed = 0
        // 后序遍历（walkBottomUp，子节点先于父节点）：文件直接删除，
        // 子目录此时必为空可一并删除，最终顶层目录也能删干净。
        // （注意不能用 walkTopDown 只删文件：残留的空子目录会让顶层
        //   dir.delete() 静默失败，遗留目录树无法彻底清除）
        // 计数细节：必须先取 isFile 再调 delete()——delete 之后路径已不存在，
        // 再 stat 恒为 false，会导致"文件删了但计数为 0"。
        dir.walkBottomUp().forEach { f ->
            val isFile = f.isFile
            if (f.delete() && isFile) removed++
        }
        return removed
    }
}
