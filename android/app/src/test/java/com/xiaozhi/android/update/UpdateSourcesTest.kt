package com.xiaozhi.android.update

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * 更新检查源构建回归测试。
 *
 * 背景（v2.3.4 崩溃事故）：镜像列表删掉一个元素后，
 * 代码里残留的硬编码索引 [4] 越界 → 启动 3 秒后必崩 → 闪退循环。
 * 本测试保证源列表构建逻辑永不越界、结构正确。
 */
class UpdateSourcesTest {

    private val mainUrl = "https://raw.githubusercontent.com/TronixJoker/Aetheris/main/android-update.json"

    @Test
    fun `源列表构建成功且不抛异常`() {
        // v2.3.4 的崩溃就是在这里抛 IndexOutOfBoundsException
        val sources = UpdateManager.buildUpdateSources(mainUrl)
        assertTrue(sources.isNotEmpty())
    }

    @Test
    fun `主源排第一且标记为可靠`() {
        val sources = UpdateManager.buildUpdateSources(mainUrl)
        assertEquals(mainUrl, sources.first().url)
        assertTrue(sources.first().isReliable)
    }

    @Test
    fun `包含国内镜像和GitHub API等可靠源`() {
        val urls = UpdateManager.buildUpdateSources(mainUrl).map { it.url }
        assertTrue("应含 GitHub API 源", urls.any { it.contains("api.github.com") })
        assertTrue("应含 gh-proxy 镜像", urls.any { it.contains("gh-proxy.com") })
        assertTrue("应含 ghfast 镜像", urls.any { it.contains("ghfast.top") })
    }

    @Test
    fun `CDN缓存源排最后且标记为不可靠`() {
        val sources = UpdateManager.buildUpdateSources(mainUrl)
        val cdnSources = sources.filter { !it.isReliable }
        assertEquals("有且仅有一个 CDN 源", 1, cdnSources.size)
        assertTrue("CDN 源是 jsDelivr", cdnSources[0].url.contains("jsdelivr"))
        assertEquals("CDN 源排最后", sources.last().url, cdnSources[0].url)
    }

    @Test
    fun `无重复源`() {
        val urls = UpdateManager.buildUpdateSources(mainUrl).map { it.url }
        assertEquals(urls.size, urls.distinct().size)
    }

    @Test
    fun `主源替换时源列表跟随变化`() {
        val custom = "https://example.com/custom-update.json"
        val sources = UpdateManager.buildUpdateSources(custom)
        assertEquals(custom, sources.first().url)
        assertFalse(sources.drop(1).any { it.url == custom })
    }
}
