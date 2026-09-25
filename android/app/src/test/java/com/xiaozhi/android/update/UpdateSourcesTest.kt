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

    // ===== 评审 R2：APK 下载候选源优先级回归测试 =====
    // 结论要求：官方 raw 源最优先；gh-proxy/ghfast 第三方反代降至末位兜底，
    // 且元数据未提供 SHA-256（allowThirdPartyMirror=false）时完全禁用。

    private val apkRawUrl =
        "https://raw.githubusercontent.com/TronixJoker/Aetheris/main/Aetheris-v2.3.6-arm64.apk"

    @Test
    fun `下载候选_官方raw源排第一`() {
        val urls = UpdateManager.buildDownloadUrlCandidates(apkRawUrl, allowThirdPartyMirror = true)
        assertEquals(apkRawUrl, urls.first())
    }

    @Test
    fun `下载候选_第三方反代镜像降至末位`() {
        val urls = UpdateManager.buildDownloadUrlCandidates(apkRawUrl, allowThirdPartyMirror = true)
        assertEquals("gh-proxy 应排倒数第二", "gh-proxy.com", java.net.URI(urls[urls.size - 2]).host)
        assertEquals("ghfast 应排最后", "ghfast.top", java.net.URI(urls.last()).host)
        val mirrorIndex = urls.indexOfFirst { it.contains("gh-proxy.com") }
        assertTrue("raw 源必须排在所有第三方镜像之前", urls.indexOf(apkRawUrl) < mirrorIndex)
    }

    @Test
    fun `下载候选_元数据无哈希时禁用第三方镜像`() {
        val urls = UpdateManager.buildDownloadUrlCandidates(apkRawUrl, allowThirdPartyMirror = false)
        assertFalse("无校验能力时不得启用 gh-proxy 镜像", urls.any { it.contains("gh-proxy.com") })
        assertFalse("无校验能力时不得启用 ghfast 镜像", urls.any { it.contains("ghfast.top") })
        assertEquals("官方 raw 源仍然排第一", apkRawUrl, urls.first())
    }

    @Test
    fun `下载候选_jsDelivr输入会反推raw并排第一`() {
        val jsUrl = "https://cdn.jsdelivr.net/gh/TronixJoker/Aetheris@main/Aetheris-v2.3.6-arm64.apk"
        val urls = UpdateManager.buildDownloadUrlCandidates(jsUrl, allowThirdPartyMirror = true)
        assertEquals(apkRawUrl, urls.first())
    }

    @Test
    fun `下载候选_无重复`() {
        val urls = UpdateManager.buildDownloadUrlCandidates(apkRawUrl, allowThirdPartyMirror = true)
        assertEquals(urls.size, urls.distinct().size)
    }
}
