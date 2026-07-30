package com.xiaozhi.android.control

import android.util.Log
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.async
import kotlinx.coroutines.coroutineScope
import kotlinx.coroutines.withContext
import okhttp3.OkHttpClient
import okhttp3.Request
import org.jsoup.Jsoup
import java.net.URLEncoder
import java.util.concurrent.TimeUnit

/**
 * 多源 API 服务：统一管理所有免费数据源的调用。
 * 所有 API 均为免费、无需 API Key。
 *
 * 数据源列表：
 * - DuckDuckGo Lite：通用搜索引擎（HTML 抓取）
 * - Wikipedia：百科知识（REST API，中文版）
 * - 新浪财经：股票/基金/外汇行情（HTTP 接口）
 * - B站搜索：视频搜索（HTTP API）
 * - 韩小韩API：天气查询（免费接口）
 * - MyMemory：翻译（免费 API）
 * - 百度新闻：新闻聚合（HTML 抓取）
 */
class ApiService {
    companion object {
        private const val TAG = "ApiService"
        private val client = OkHttpClient.Builder()
            .connectTimeout(10, TimeUnit.SECONDS)
            .readTimeout(15, TimeUnit.SECONDS)
            .build()
    }

    // ==================== 通用 HTTP 请求工具 ====================

    private fun buildRequest(url: String, extraHeaders: Map<String, String> = emptyMap()): Request {
        return Request.Builder()
            .url(url)
            .header("User-Agent", "Mozilla/5.0 (Linux; Android 10) AppleWebKit/537.36")
            .header("Accept-Language", "zh-CN,zh;q=0.9")
            .apply { extraHeaders.forEach { (k, v) -> header(k, v) } }
            .build()
    }

    private suspend fun httpGet(url: String, extraHeaders: Map<String, String> = emptyMap()): String {
        return withContext(Dispatchers.IO) {
            try {
                val response = client.newCall(buildRequest(url, extraHeaders)).execute()
                if (!response.isSuccessful) {
                    Log.w(TAG, "HTTP ${response.code} from $url")
                    return@withContext ""
                }
                response.body?.string() ?: ""
            } catch (e: Exception) {
                Log.e(TAG, "HTTP GET failed: ${e.message}")
                ""
            }
        }
    }

    // ==================== 1. DuckDuckGo 搜索（已有逻辑迁移） ====================

    suspend fun searchDuckDuckGo(query: String): String {
        if (query.isBlank()) return ""
        return withContext(Dispatchers.IO) {
            try {
                val url = "https://lite.duckduckgo.com/lite/?q=${URLEncoder.encode(query, "UTF-8")}"
                val html = httpGet(url)
                if (html.isBlank()) return@withContext ""

                val doc = Jsoup.parse(html)
                val results = doc.select("a.result-link")
                if (results.isNotEmpty()) {
                    return@withContext results.take(5).map { it.text().trim() }
                        .filter { it.length > 10 }
                        .joinToString("\n")
                        .take(500)
                }

                // 备用：提取所有有效链接文本
                val allLinks = doc.select("a[href]")
                val snippets = allLinks.mapNotNull { link ->
                    val text = link.text().trim()
                    if (text.length > 20 && !text.contains("DuckDuckGo", ignoreCase = true)) text else null
                }.take(5)
                snippets.joinToString("\n").take(500)
            } catch (e: Exception) {
                Log.e(TAG, "DuckDuckGo search failed: ${e.message}")
                ""
            }
        }
    }

    // ==================== 2. Wikipedia 百科（免费 REST API） ====================

    /**
     * 搜索 Wikipedia 中文百科，返回摘要。
     * API: https://zh.wikipedia.org/w/api.php
     */
    suspend fun searchWikipedia(query: String): String {
        if (query.isBlank()) return ""
        return withContext(Dispatchers.IO) {
            try {
                // 先搜索匹配的条目标题
                val searchUrl = "https://zh.wikipedia.org/w/api.php?" +
                    "action=query&list=search&srsearch=${URLEncoder.encode(query, "UTF-8")}" +
                    "&format=json&srlimit=1&utf8=1"
                val searchBody = httpGet(searchUrl)
                if (searchBody.isBlank()) return@withContext ""

                // 解析搜索结果获取标题
                val titleRegex = Regex(""""title"\s*:\s*"([^"]+)"""")
                val titleMatch = titleRegex.find(searchBody) ?: return@withContext ""
                val title = titleMatch.groupValues[1]

                // 获取条目摘要
                val extractUrl = "https://zh.wikipedia.org/w/api.php?" +
                    "action=query&prop=extracts&exintro=true&explaintext=true" +
                    "&titles=${URLEncoder.encode(title, "UTF-8")}&format=json&utf8=1"
                val extractBody = httpGet(extractUrl)
                if (extractBody.isBlank()) return@withContext ""

                // 提取 extract 内容（纯文本摘要）
                val extractRegex = Regex(""""extract"\s*:\s*"((?:[^"\\]|\\.)*)"""")
                val extractMatch = extractRegex.find(extractBody)
                if (extractMatch != null) {
                    val extract = extractMatch.groupValues[1]
                        .replace("\\n", "\n")
                        .replace("\\\"", "\"")
                        .replace("\\\\", "\\")
                    "【百科】$title：${extract.take(400)}"
                } else ""
            } catch (e: Exception) {
                Log.e(TAG, "Wikipedia search failed: ${e.message}")
                ""
            }
        }
    }

    // ==================== 3. 新浪财经股票行情（免费 HTTP 接口） ====================

    /**
     * 查询股票/基金/外汇行情。
     * 新浪财经实时接口：https://hq.sinajs.cn/list=code
     * 股票代码格式：sh600519（沪市）、sz000001（深市）、基金 fu_000001
     */
    suspend fun getStock(query: String): String {
        if (query.isBlank()) return ""
        return withContext(Dispatchers.IO) {
            try {
                // 智能推断股票代码
                val codes = inferStockCodes(query)
                if (codes.isEmpty()) {
                    // 如果不是代码格式，尝试用关键词搜索
                    return@withContext searchStockByName(query)
                }

                val url = "https://hq.sinajs.cn/list=${codes.joinToString(",")}"
                val body = httpGet(url, mapOf("Referer" to "https://finance.sina.com.cn"))
                if (body.isBlank()) return@withContext "未获取到股票行情"

                val lines = body.split("\n").filter { it.contains("=") }
                val results = lines.mapNotNull { line ->
                    parseSinaStockLine(line)
                }
                if (results.isEmpty()) "未找到股票：$query" else results.joinToString("\n")
            } catch (e: Exception) {
                Log.e(TAG, "Stock query failed: ${e.message}")
                "查询股票失败"
            }
        }
    }

    /** 根据用户输入推断股票代码 */
    private fun inferStockCodes(input: String): List<String> {
        val codes = mutableListOf<String>()
        val cleaned = input.trim()

        // 纯数字：根据范围推断沪市/深市
        if (cleaned.matches(Regex("""\d{6}"""))) {
            codes.add("sh$cleaned")
            codes.add("sz$cleaned")
            return codes
        }
        // 已带前缀
        if (cleaned.matches(Regex("""[a-zA-Z]{2}\d{6}"""))) {
            codes.add(cleaned.lowercase())
            return codes
        }
        // 基金
        if (cleaned.matches(Regex("""\d{5,6}""")) && cleaned.startsWith("0")) {
            codes.add("fu_$cleaned")
        }
        return codes
    }

    /** 用关键词搜索股票代码 */
    private suspend fun searchStockByName(keyword: String): String {
        return try {
            val url = "https://suggest3.sinajs.cn/suggest/type=&key=${URLEncoder.encode(keyword, "UTF-8")}&name=suggestdata"
            val body = httpGet(url, mapOf("Referer" to "https://finance.sina.com.cn"))
            if (body.isBlank()) return "未找到相关股票"

            // 解析格式：var suggestdata="贵州茅台,11,sh600519,茅台,贵州茅台;..."
            val matchResult = Regex("""="([^"]+)"""").find(body)
            if (matchResult != null) {
                val entries = matchResult.groupValues[1].split(";").filter { it.isNotBlank() }
                if (entries.isEmpty()) return "未找到相关股票"

                // 取前3条结果，用第一条查询详情
                val summary = entries.take(3).mapNotNull { entry ->
                    val parts = entry.split(",")
                    if (parts.size >= 3) "${parts[0]}(${parts[2]})" else null
                }.joinToString("、")

                // 查询第一条的实时行情
                if (entries.isNotEmpty()) {
                    val firstCode = entries[0].split(",").getOrNull(2) ?: ""
                    if (firstCode.isNotEmpty()) {
                        val detail = getStock(firstCode)
                        if (detail.isNotBlank() && !detail.startsWith("未")) {
                            return "$detail\n相关：$summary"
                        }
                    }
                }
                "找到相关股票：$summary"
            } else "未找到相关股票"
        } catch (e: Exception) {
            Log.e(TAG, "Stock search failed: ${e.message}")
            "搜索股票失败"
        }
    }

    /** 解析新浪财经返回的单行数据 */
    private fun parseSinaStockLine(line: String): String? {
        return try {
            val codeMatch = Regex("""var\s+(\w+)="""").find(line) ?: return null
            val contentMatch = Regex("""="([^"]*)""""").find(line) ?: return null
            val content = contentMatch.groupValues[1]
            if (content.isBlank()) return null

            val parts = content.split(",")
            if (parts.size < 3) return null

            // 新浪格式：名称,今开,昨收,最新价,最高,最低,买入,卖出,...
            val name = parts[0]
            val price = if (parts.size > 3) parts[3] else parts[1]
            val change = if (parts.size > 3) {
                val current = parts[3].toFloatOrNull() ?: 0f
                val yesterday = parts[2].toFloatOrNull() ?: 0f
                if (yesterday > 0) {
                    val pct = (current - yesterday) / yesterday * 100
                    String.format("%.2f(%+.2f%%)", current - yesterday, pct)
                } else ""
            } else ""
            String.format("%s 最新价：%s %s", name, price, change)
        } catch (e: Exception) {
            null
        }
    }

    // ==================== 4. B站视频搜索（免费 HTTP API） ====================

    /**
     * 搜索B站视频，返回标题和UP主信息。
     * API: https://api.bilibili.com/x/web-interface/search/type
     */
    suspend fun searchVideo(query: String): String {
        if (query.isBlank()) return ""
        return withContext(Dispatchers.IO) {
            try {
                val url = "https://api.bilibili.com/x/web-interface/search/type?" +
                    "search_type=video&keyword=${URLEncoder.encode(query, "UTF-8")}" +
                    "&page=1&page_size=5"
                val body = httpGet(url, mapOf("Referer" to "https://www.bilibili.com"))
                if (body.isBlank()) return@withContext ""

                // 解析 JSON 结果
                val titleRegex = Regex(""""title"\s*:\s*"((?:[^"\\]|\\.)*)"""")
                val authorRegex = Regex(""""author"\s*:\s*"([^"]+)"""")
                val playRegex = Regex(""""play"\s*:\s*(\d+)""")

                val titles = titleRegex.findAll(body).take(5).map { it.groupValues[1]
                    .replace("<em class=\"keyword\">", "")
                    .replace("</em>", "")
                    .replace("\\\"", "\"")
                }.toList()
                val authors = authorRegex.findAll(body).take(5).map { it.groupValues[1] }.toList()

                if (titles.isEmpty()) return@withContext "未找到相关视频"

                val results = titles.mapIndexed { i, title ->
                    val author = authors.getOrNull(i) ?: ""
                    "《$title》" + if (author.isNotEmpty()) " UP主：$author" else ""
                }.joinToString("\n")
                "【B站视频】\n$results"
            } catch (e: Exception) {
                Log.e(TAG, "Bilibili search failed: ${e.message}")
                ""
            }
        }
    }

    // ==================== 5. 天气查询（免费 API） ====================

    /**
     * 查询天气。使用 wttr.in（免费天气服务，无需Key）。
     * 格式简洁，适合语音播报。
     */
    suspend fun getWeather(city: String): String {
        if (city.isBlank()) return ""
        return withContext(Dispatchers.IO) {
            try {
                // wttr.in 免费天气 API，返回简洁文本格式
                val url = "https://wttr.in/${URLEncoder.encode(city, "UTF-8")}?format=%l:+%c+%t+%h+%w+%p&lang=zh"
                val body = httpGet(url)
                if (body.isNotBlank() && !body.contains("ERROR") && !body.contains("Unknown")) {
                    "【天气】$body"
                } else {
                    // 备用：尝试中文天气数据
                    getWeatherFallback(city)
                }
            } catch (e: Exception) {
                Log.e(TAG, "Weather query failed: ${e.message}")
                getWeatherFallback(city)
            }
        }
    }

    private suspend fun getWeatherFallback(city: String): String {
        return try {
            // 备用方案：百度搜索天气 HTML 抓取
            val url = "https://www.baidu.com/s?wd=${URLEncoder.encode("$city 天气", "UTF-8")}"
            val html = httpGet(url)
            if (html.isBlank()) return ""

            val doc = Jsoup.parse(html)
            // 百度天气卡片通常在 class="op_weather4_two49" 等容器中
            val weatherText = doc.select(".op_weather4_two49, .weather-icon, .today_weather").text()
            if (weatherText.isNotBlank()) {
                "【天气】$city $weatherText"
            } else ""
        } catch (e: Exception) {
            Log.e(TAG, "Weather fallback failed: ${e.message}")
            ""
        }
    }

    // ==================== 6. 翻译（MyMemory 免费 API） ====================

    /**
     * 翻译文本。使用 MyMemory 免费 API（每天5000字）。
     * @param text 要翻译的文本
     * @param to 目标语言代码（如 en、ja、ko、fr）
     */
    suspend fun translate(text: String, to: String): String {
        if (text.isBlank()) return ""
        val targetLang = to.trim().lowercase()
        // 默认中译英，如果目标语言是中文则英译中
        val sourceLang = if (targetLang == "zh" || targetLang == "zh-cn") "en" else "zh"

        return withContext(Dispatchers.IO) {
            try {
                val url = "https://api.mymemory.translated.net/get?" +
                    "q=${URLEncoder.encode(text, "UTF-8")}" +
                    "&langpair=$sourceLang|$targetLang"
                val body = httpGet(url)
                if (body.isBlank()) return@withContext "翻译失败"

                // 解析翻译结果
                val translatedRegex = Regex(""""translatedText"\s*:\s*"((?:[^"\\]|\\.)*)"""")
                val match = translatedRegex.find(body)
                if (match != null) {
                    val translated = match.groupValues[1]
                        .replace("\\\"", "\"")
                        .replace("\\\\", "\\")
                    "【翻译】$text → $translated"
                } else "翻译失败"
            } catch (e: Exception) {
                Log.e(TAG, "Translate failed: ${e.message}")
                "翻译失败"
            }
        }
    }

    // ==================== 7. 新闻聚合（百度新闻 HTML 抓取） ====================

    /**
     * 获取最新新闻。使用百度新闻搜索热点。
     */
    suspend fun getNews(query: String = ""): String {
        return withContext(Dispatchers.IO) {
            try {
                val keyword = if (query.isBlank()) "今日热点新闻" else query
                val url = "https://news.baidu.com/ns?word=${URLEncoder.encode(keyword, "UTF-8")}&tn=newsdy&from=news"
                val html = httpGet(url)
                if (html.isBlank()) return@withContext ""

                val doc = Jsoup.parse(html)
                // 百度新闻搜索结果标题
                val titles = doc.select("h3.c-title a, .result-op h3 a, a.news-link-font_1")
                    .map { it.text().trim() }
                    .filter { it.length > 5 }
                    .take(5)

                if (titles.isEmpty()) {
                    // 备用选择器
                    val altTitles = doc.select("a[href]")
                        .map { it.text().trim() }
                        .filter { it.length > 10 && !it.contains("百度") }
                        .take(5)
                    if (altTitles.isEmpty()) return@withContext "暂未获取到新闻"
                    "【新闻】\n${altTitles.joinToString("\n")}"
                } else {
                    "【新闻】\n${titles.joinToString("\n")}"
                }
            } catch (e: Exception) {
                Log.e(TAG, "News fetch failed: ${e.message}")
                "获取新闻失败"
            }
        }
    }

    // ==================== 多源合并搜索 ====================

    /**
     * 多源并行搜索：同时查询 DuckDuckGo + Wikipedia，合并结果。
     * 适用于通用知识问答，信息更全面。
     */
    suspend fun multiSearch(query: String): String {
        return coroutineScope {
            val ddgDeferred = async { searchDuckDuckGo(query) }
            val wikiDeferred = async { searchWikipedia(query) }

            val ddgResult = ddgDeferred.await()
            val wikiResult = wikiDeferred.await()

            val parts = mutableListOf<String>()
            if (wikiResult.isNotBlank()) parts.add(wikiResult)
            if (ddgResult.isNotBlank()) parts.add("【搜索】$ddgResult")

            if (parts.isEmpty()) "" else parts.joinToString("\n\n")
        }
    }

    // ==================== 8. 音乐搜索（网易云音乐 API，免费无Key） ====================

    /**
     * 搜索音乐：通过网易云音乐搜索 API 查询歌曲信息。
     * 返回歌曲名、歌手、专辑等信息，供语音播报。
     * API: https://music.163.com/api/search/get
     *
     * @param query 歌曲名或歌手名
     * @return 搜索结果列表，失败返回空字符串
     */
    suspend fun searchMusic(query: String): String {
        if (query.isBlank()) return ""
        return withContext(Dispatchers.IO) {
            try {
                val url = "https://music.163.com/api/search/get?" +
                    "s=${URLEncoder.encode(query, "UTF-8")}" +
                    "&type=1&limit=5&offset=0"
                val body = httpGet(url, mapOf("Referer" to "https://music.163.com"))
                if (body.isBlank()) return@withContext ""

                // 解析 JSON 中的歌曲信息
                val nameRegex = Regex(""""name"\s*:\s*"((?:[^"\\]|\\.)*)"""")
                val artistRegex = Regex(""""artistName"\s*:\s*"([^"]+)"""")
                val albumRegex = Regex(""""albumName"\s*:\s*"([^"]+)"""")

                val names = nameRegex.findAll(body).take(5).map {
                    it.groupValues[1].replace("\\\"", "\"")
                }.toList()
                val artists = artistRegex.findAll(body).take(5).map {
                    it.groupValues[1]
                }.toList()
                val albums = albumRegex.findAll(body).take(5).map {
                    it.groupValues[1]
                }.toList()

                if (names.isEmpty()) return@withContext "未找到相关音乐"

                val results = names.mapIndexed { i, name ->
                    val artist = artists.getOrNull(i) ?: ""
                    val album = albums.getOrNull(i) ?: ""
                    buildString {
                        append("《$name》")
                        if (artist.isNotEmpty()) append(" 歌手：$artist")
                        if (album.isNotEmpty()) append(" 专辑：$album")
                    }
                }.joinToString("\n")

                "【音乐搜索】\n$results"
            } catch (e: Exception) {
                Log.e(TAG, "Music search failed: ${e.message}")
                ""
            }
        }
    }

    /**
     * 搜索音乐并返回第一首歌的播放信息。
     *
     * 策略（多源回退，规避版权限制）：
     * 1. 优先：B站音乐视频音频流（覆盖最全，几乎不受版权限制）
     * 2. 兜底：网易云音乐外链接口（部分歌曲可播）
     *
     * @param query 歌曲名或歌手名
     * @return MusicInfo 包含歌曲名称、歌手和播放URL；失败返回 null
     */
    suspend fun searchMusicForPlay(query: String): MusicInfo? {
        if (query.isBlank()) return null

        // 优先使用 B 站音乐源（覆盖广、版权限制少）
        val biliResult = searchMusicBilibili(query)
        if (biliResult != null) {
            Log.d(TAG, "Bilibili music source OK: ${biliResult.name}")
            return biliResult
        }

        // 兜底：网易云外链
        return searchMusicNetease(query)
    }

    /**
     * B站音乐源：通过搜索B站音乐视频，获取其 DASH 音频流URL。
     * 适用于 MediaPlayer 直接播放（需配合 Referer 请求头）。
     *
     * 流程：搜索视频 → 取 bvid → 查 cid → 查 playurl(DASH) → 取音频流URL
     * 优化：使用普通搜索接口（非 wbi，避免风控）；关键词追加"音乐"提高命中率；
     * 标题解析兼容 《》、- 、多种格式。
     */
    private suspend fun searchMusicBilibili(query: String): MusicInfo? {
        return withContext(Dispatchers.IO) {
            try {
                data class BiliVideo(val bvid: String, val title: String)

                // 关键词策略：原始query 和 query+" 音乐" 都搜，扩大命中
                val keywords = linkedSetOf(query, "$query 音乐", "$query 歌曲")

                for (kw in keywords) {
                    val videos = searchBilibiliVideos(kw)
                    if (videos.isEmpty()) continue
                    Log.d(TAG, "Bilibili search [$kw] found ${videos.size} videos")

                    // 逐个尝试获取音频流
                    for ((bvid, title) in videos) {
                        val audioUrl = try {
                            getBilibiliAudioStream(bvid)
                        } catch (e: Exception) {
                            Log.w(TAG, "getBilibiliAudioStream error for $bvid: ${e.message}")
                            null
                        }
                        if (audioUrl != null) {
                            val (songName, artist) = parseBiliTitle(title, query)
                            Log.d(TAG, "Bilibili audio stream OK: $songName - $artist")
                            return@withContext MusicInfo(
                                id = 0L,
                                name = songName,
                                artist = artist,
                                playUrl = audioUrl,
                                // B站音频流必须带 Referer 否则 403
                                headers = mapOf("Referer" to "https://www.bilibili.com")
                            )
                        }
                    }
                }
                null
            } catch (e: Exception) {
                Log.e(TAG, "searchMusicBilibili failed: ${e.message}")
                null
            }
        }
    }

    /**
     * 搜索B站视频，返回 (bvid, title) 列表。
     * 使用普通搜索接口（非 wbi），带 Cookie 头降低风控概率。
     */
    private suspend fun searchBilibiliVideos(keyword: String): List<Pair<String, String>> {
        return try {
            val searchUrl = "https://api.bilibili.com/x/web-interface/search/type?" +
                "search_type=video&keyword=${URLEncoder.encode(keyword, "UTF-8")}" +
                "&page=1&page_size=8"
            val searchBody = httpGet(
                searchUrl,
                mapOf(
                    "Referer" to "https://search.bilibili.com",
                    "User-Agent" to "Mozilla/5.0 (Linux; Android 10) AppleWebKit/537.36"
                )
            )
            if (searchBody.isBlank()) return emptyList()

            val bvidRegex = Regex(""""bvid"\s*:\s*"(BV[A-Za-z0-9]+)"""")
            val titleRegex = Regex(""""title"\s*:\s*"((?:[^"\\]|\\.)*)"""")
            val bvids = bvidRegex.findAll(searchBody).map { it.groupValues[1] }.toList()
            val titles = titleRegex.findAll(searchBody).map {
                it.groupValues[1]
                    .replace("<em class=\"keyword\">", "")
                    .replace("</em>", "")
                    .replace("\\\"", "\"")
                    .replace("\\/", "/")
            }.toList()
            val n = minOf(bvids.size, titles.size, 8)
            (0 until n).map { bvids[it] to titles[it] }
        } catch (e: Exception) {
            Log.w(TAG, "searchBilibiliVideos failed: ${e.message}")
            emptyList()
        }
    }

    /**
     * 解析B站视频标题为 (歌名, 歌手)。
     * 兼容多种格式：
     *   "周杰伦 - 晴天" → (晴天, 周杰伦)
     *   "《晴天》周杰伦" → (晴天, 周杰伦)
     *   "周杰伦《晴天》" → (晴天, 周杰伦)
     *   "【周杰伦】晴天" → (晴天, 周杰伦)
     */
    private fun parseBiliTitle(rawTitle: String, query: String): Pair<String, String> {
        var t = rawTitle
            .replace(Regex("【[^】]*】"), "")
            .replace(Regex("\\[[^\\]]*\\]"), "")
            .replace(Regex("[(（][^)）]*[)）]"), "")
            .trim()

        // 优先提取《》中的内容作为歌名
        val bookMatch = Regex("《([^《》]+)》").find(t)
        if (bookMatch != null) {
            val songName = bookMatch.groupValues[1].trim()
            val artist = t.replace(bookMatch.value, "").trim()
                .replace(Regex("[-－—\\s]+"), "")
                .ifBlank { query }
            return songName to artist.ifBlank { "B站音乐" }
        }

        // 尝试 "歌手 - 歌名" / "歌名 - 歌手"
        val parts = t.split(Regex("\\s*[-－—]\\s*"), limit = 2)
        if (parts.size == 2 && parts[0].isNotBlank() && parts[1].isNotBlank()) {
            // 约定：B站音乐视频标题多为 "歌手 - 歌名"
            return parts[1].trim() to parts[0].trim()
        }

        // 兜底：整体作为歌名
        return t.ifBlank { query } to "B站音乐"
    }

    /**
     * 获取B站视频的 DASH 音频流URL。
     * @param bvid 视频BV号
     * @return 音频流URL，失败返回 null
     */
    private suspend fun getBilibiliAudioStream(bvid: String): String? {
        return withContext(Dispatchers.IO) {
            try {
                // Step 1: 通过 bvid 获取 cid
                val viewUrl = "https://api.bilibili.com/x/web-interface/view?bvid=$bvid"
                val viewBody = httpGet(viewUrl, mapOf("Referer" to "https://www.bilibili.com"))
                if (viewBody.isBlank()) return@withContext null
                val cidRegex = Regex(""""cid"\s*:\s*(\d+)""")
                val cidMatch = cidRegex.find(viewBody) ?: return@withContext null
                val cid = cidMatch.groupValues[1]

                // Step 2: 获取播放地址（DASH 格式）
                val playUrl = "https://api.bilibili.com/x/player/playurl?" +
                    "bvid=$bvid&cid=$cid&fnval=16&qn=16"
                val playBody = httpGet(playUrl, mapOf("Referer" to "https://www.bilibili.com"))
                if (playBody.isBlank()) return@withContext null

                // 解析 DASH audio 列表，取最高码率
                val audioBlockRegex = Regex(""""audio"\s*:\s*\[(.*?)\]""", RegexOption.DOT_MATCHES_ALL)
                val audioBlock = audioBlockRegex.find(playBody)?.groupValues?.get(1)
                    ?: return@withContext null

                // 提取所有 baseUrl，并匹配 bandwidth 取最大
                val audioItemRegex = Regex("""\{[^{}]*"bandwidth"\s*:\s*(\d+)[^{}]*"baseUrl"\s*:\s*"([^"]+)"[^{}]*\}""")
                var bestUrl: String? = null
                var bestBand = -1L
                for (match in audioItemRegex.findAll(audioBlock)) {
                    val band = match.groupValues[1].toLongOrNull() ?: 0L
                    val url = match.groupValues[2]
                        .replace("\\/", "/")
                        .replace("\\u0026", "&")
                    if (band > bestBand) {
                        bestBand = band
                        bestUrl = url
                    }
                }
                bestUrl
            } catch (e: Exception) {
                Log.e(TAG, "getBilibiliAudioStream failed: ${e.message}")
                null
            }
        }
    }

    /**
     * 网易云音乐外链（兜底方案，部分歌曲受版权限制无法播放）。
     */
    private suspend fun searchMusicNetease(query: String): MusicInfo? {
        return withContext(Dispatchers.IO) {
            try {
                val url = "https://music.163.com/api/search/get?" +
                    "s=${URLEncoder.encode(query, "UTF-8")}" +
                    "&type=1&limit=1&offset=0"
                val body = httpGet(url, mapOf("Referer" to "https://music.163.com"))
                if (body.isBlank()) return@withContext null

                val idRegex = Regex(""""id"\s*:\s*(\d+)""")
                val nameRegex = Regex(""""name"\s*:\s*"((?:[^"\\]|\\.)*)"""")
                val artistRegex = Regex(""""artistName"\s*:\s*"([^"]+)"""")

                val idMatch = idRegex.find(body) ?: return@withContext null
                val nameMatch = nameRegex.find(body)
                val artistMatch = artistRegex.find(body)

                val songId = idMatch.groupValues[1].toLong()
                val songName = nameMatch?.groupValues[1]?.replace("\\\"", "\"") ?: "未知歌曲"
                val artist = artistMatch?.groupValues[1] ?: "未知歌手"

                val playUrl = "https://music.163.com/song/media/outer/url?id=$songId.mp3"

                MusicInfo(
                    id = songId,
                    name = songName,
                    artist = artist,
                    playUrl = playUrl,
                    headers = emptyMap()
                )
            } catch (e: Exception) {
                Log.e(TAG, "searchMusicNetease failed: ${e.message}")
                null
            }
        }
    }
}

/**
 * 音乐信息数据类
 * @param headers 播放时需附加的 HTTP 请求头（如 B站音频流需要 Referer）
 */
data class MusicInfo(
    val id: Long,
    val name: String,
    val artist: String,
    val playUrl: String,
    val headers: Map<String, String> = emptyMap()
)
