package com.xiaozhi.android.control

import org.jsoup.Jsoup

/**
 * 搜索/视频结果 HTML & JSON 解析器（纯函数，无 Android 依赖，可单元测试）。
 */
object HtmlParsers {

    /**
     * 解析必应中国搜索结果页 HTML。
     * 结构：li.b_algo > h2 > a（标题）+ .b_caption p / .b_lineclamp2 / .b_algoSlug（摘要）
     * @return 拼接好的搜索摘要（每行一条：标题：摘要），无结果返回空串
     */
    fun parseBingResults(html: String): String {
        return try {
            val doc = Jsoup.parse(html)
            val items = doc.select("li.b_algo")
            val parts = mutableListOf<String>()
            for (item in items.take(5)) {
                val title = item.selectFirst("h2 a")?.text()?.trim() ?: continue
                if (title.length < 4) continue
                val snippet = item.selectFirst(".b_caption p, .b_lineclamp2, .b_algoSlug")?.text()?.trim() ?: ""
                parts.add(if (snippet.isNotBlank()) "$title：${snippet.take(80)}" else title)
            }
            parts.joinToString("\n").take(600)
        } catch (_: Exception) {
            ""
        }
    }

    /** B 站视频条目 */
    data class VideoItem(val title: String, val author: String, val bvid: String)

    /**
     * 解析 B 站搜索 API 返回的 JSON（正则提取，兼容嵌套结构）。
     * @return 前 5 条（title/author/bvid 对齐的）视频条目，无 bvid 的条目被过滤
     */
    fun parseBilibiliResults(body: String): List<VideoItem> {
        val titleRegex = Regex(""""title"\s*:\s*"((?:[^"\\]|\\.)*)"""")
        val authorRegex = Regex(""""author"\s*:\s*"([^"]+)"""")
        val bvidRegex = Regex(""""bvid"\s*:\s*"(BV[A-Za-z0-9]+)"""")

        val titles = titleRegex.findAll(body).take(5).map { it.groupValues[1]
            .replace("\\\"", "\"")   // 先还原 JSON 转义（真实响应里标签是 <em class=\"keyword\"> 形式）
            .replace("<em class=\"keyword\">", "")  // 再去掉搜索关键词高亮标签
            .replace("</em>", "")
        }.toList()
        val authors = authorRegex.findAll(body).take(5).map { it.groupValues[1] }.toList()
        val bvids = bvidRegex.findAll(body).take(5).map { it.groupValues[1] }.toList()

        return titles.mapIndexed { i, title ->
            VideoItem(
                title = title.trim(),
                author = authors.getOrNull(i) ?: "",
                bvid = bvids.getOrNull(i) ?: ""
            )
        }.filter { it.title.isNotBlank() && it.bvid.isNotBlank() }
    }
}
