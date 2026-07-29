package com.xiaozhi.android.control

import android.content.Context
import android.content.Intent
import android.net.Uri
import android.provider.AlarmClock
import android.provider.Settings
import android.util.Log
import androidx.core.content.ContextCompat
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch

/**
 * 命令执行器：执行 AI 下发的系统命令。
 * 包括：打开应用、发短信、打电话、设闹钟、打开网页、获取已安装应用列表。
 */
class CommandExecutor(private val context: Context) {
    companion object {
        private const val TAG = "CommandExecutor"
    }

    private val apiService = ApiService()

    /**
     * 检查权限是否授予
     */
    private fun hasPermission(permission: String): Boolean {
        return ContextCompat.checkSelfPermission(context, permission) ==
            android.content.pm.PackageManager.PERMISSION_GRANTED
    }

    /**
     * 打开应用（按应用名匹配，支持中英文模糊匹配）
     * @param appName 应用名称，如 "微信"、"WeChat"、"设置"
     */
    fun openApp(appName: String): String {
        val pm = context.packageManager
        val target = appName.trim().lowercase()

        // 先按启动 Intent 查找已安装应用
        val mainIntent = Intent(Intent.ACTION_MAIN).addCategory(Intent.CATEGORY_LAUNCHER)
        val apps = pm.queryIntentActivities(mainIntent, 0)
        val candidates = mutableListOf<Triple<String, String, String>>() // label, packageName, simpleName

        for (info in apps) {
            val label = info.loadLabel(pm).toString()
            val pkg = info.activityInfo.packageName
            val simple = pkg.substringAfterLast('.').lowercase()
            candidates.add(Triple(label, pkg, simple))
        }

        // 匹配优先级：完全相等 > 前缀 > 包含
        fun matchScore(label: String, simple: String): Int {
            val l = label.lowercase()
            return when {
                l == target || simple == target -> 100
                l.startsWith(target) || simple.startsWith(target) -> 80
                l.contains(target) || simple.contains(target) -> 60
                else -> 0
            }
        }

        val best = candidates
            .mapNotNull { (label, pkg, simple) ->
                val score = matchScore(label, simple)
                if (score > 0) Triple(label, pkg, score) else null
            }
            .maxByOrNull { it.third }

        if (best == null) {
            return "未找到名为 \"$appName\" 的应用。可用的应用：${listTopApps(candidates.map { it.first })}"
        }

        val (label, pkg, _) = best
        return try {
            val launchIntent = pm.getLaunchIntentForPackage(pkg)
            if (launchIntent != null) {
                launchIntent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                ContextCompat.startActivity(context, launchIntent, null)
                "已打开应用：$label"
            } else {
                "应用 $label 无法启动"
            }
        } catch (e: Exception) {
            Log.e(TAG, "openApp failed: ${e.message}")
            "打开应用失败：${e.message}"
        }
    }

    /** 列出前 N 个应用名，用于错误提示 */
    private fun listTopApps(labels: List<String>): String {
        val sample = labels.distinct().take(15).joinToString("、")
        return "（部分应用：$sample 等）"
    }

    /**
     * 发送短信
     * @param to 收件人手机号
     * @param message 短信内容
     */
    fun sendSms(to: String, message: String): String {
        val phone = to.trim()
        if (phone.isEmpty()) return "收件人号码为空"
        if (message.isBlank()) return "短信内容为空"
        return try {
            val intent = Intent(Intent.ACTION_SENDTO, Uri.parse("smsto:$phone")).apply {
                addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                putExtra("sms_body", message)
            }
            context.startActivity(intent)
            "已打开短信应用，收件人：$phone，内容：$message，请确认发送"
        } catch (e: Exception) {
            Log.e(TAG, "sendSms failed: ${e.message}")
            "发送短信失败：${e.message}"
        }
    }

    /**
     * 拨打电话（直接拨号界面，不自动拨出，避免误操作）
     * @param number 电话号码
     */
    fun makeCall(number: String): String {
        val phone = number.trim()
        if (phone.isEmpty()) return "电话号码为空"
        return try {
            val intent = Intent(Intent.ACTION_DIAL, Uri.parse("tel:$phone")).apply {
                addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
            }
            context.startActivity(intent)
            "已打开拨号界面，号码：$phone"
        } catch (e: Exception) {
            Log.e(TAG, "makeCall failed: ${e.message}")
            "拨号失败：${e.message}"
        }
    }

    /**
     * 设置闹钟
     * @param hour 小时（24小时制）
     * @param minute 分钟
     * @param message 闹钟标签
     */
    fun setAlarm(hour: Int, minute: Int, message: String): String {
        val h = hour.coerceIn(0, 23)
        val m = minute.coerceIn(0, 59)
        val label = message.ifBlank { "小智闹钟" }
        
        // 方案一：直接尝试 ACTION_SET_ALARM（不依赖 resolveActivity，Android 11+ 可能返回 null）
        try {
            val intent = Intent(AlarmClock.ACTION_SET_ALARM).apply {
                addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                putExtra(AlarmClock.EXTRA_HOUR, h)
                putExtra(AlarmClock.EXTRA_MINUTES, m)
                putExtra(AlarmClock.EXTRA_MESSAGE, label)
                putExtra(AlarmClock.EXTRA_SKIP_UI, false)
            }
            context.startActivity(intent)
            return "已打开闹钟设置界面：${"%02d".format(h)}:${"%02d".format(m)}，请在界面上确认闹钟"
        } catch (e: android.content.ActivityNotFoundException) {
            Log.w(TAG, "ACTION_SET_ALARM not available: ${e.message}")
        } catch (e: Exception) {
            Log.w(TAG, "ACTION_SET_ALARM failed: ${e.message}")
        }

        // 方案二：尝试常见时钟应用的包名直接启动
        val clockPackages = listOf(
            "com.android.deskclock",           // 原生/AOSP
            "com.google.android.deskclock",     // Google Pixel
            "com.sec.android.app.clockpackage", // 三星
            "com.miui.clock",                   // 小米
            "com.huawei.deskclock",             // 华为
            "com.android.systemui"              // 部分系统
        )
        for (pkg in clockPackages) {
            try {
                val launchIntent = context.packageManager.getLaunchIntentForPackage(pkg)
                if (launchIntent != null) {
                    launchIntent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                    context.startActivity(launchIntent)
                    return "已打开时钟应用，请手动设置闹钟：${"%02d".format(h)}:${"%02d".format(m)}"
                }
            } catch (e: Exception) {
                Log.d(TAG, "Clock package $pkg not available: ${e.message}")
            }
        }

        // 方案三：打开应用列表让用户自己找
        return "未找到系统闹钟应用，请手动设置闹钟：${"%02d".format(h)}:${"%02d".format(m)}"
    }

    /**
     * 设置定时器
     * @param seconds 秒数
     * @param message 标签
     */
    fun setTimer(seconds: Int, message: String): String {
        val s = seconds.coerceAtLeast(1)
        val label = message.ifBlank { "小智定时器" }
        
        // 直接尝试 ACTION_SET_TIMER（不依赖 resolveActivity）
        return try {
            val intent = Intent(AlarmClock.ACTION_SET_TIMER).apply {
                addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                putExtra(AlarmClock.EXTRA_LENGTH, s)
                putExtra(AlarmClock.EXTRA_MESSAGE, label)
                putExtra(AlarmClock.EXTRA_SKIP_UI, false)
            }
            context.startActivity(intent)
            "已设置定时器：${s}秒 ${label}"
        } catch (e: android.content.ActivityNotFoundException) {
            Log.w(TAG, "ACTION_SET_TIMER not available: ${e.message}")
            "当前设备不支持设置定时器"
        } catch (e: Exception) {
            Log.e(TAG, "setTimer failed: ${e.message}")
            "设置定时器失败：${e.message}"
        }
    }

    /**
     * 打开网页
     * @param url 网址
     */
    fun openUrl(url: String): String {
        var u = url.trim()
        if (u.isEmpty()) return "网址为空"
        if (!u.startsWith("http://") && !u.startsWith("https://")) {
            u = "https://$u"
        }
        return try {
            val intent = Intent(Intent.ACTION_VIEW, Uri.parse(u)).apply {
                addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
            }
            ContextCompat.startActivity(context, intent, null)
            "已打开网页：$u"
        } catch (e: Exception) {
            Log.e(TAG, "openUrl failed: ${e.message}")
            "打开网页失败：${e.message}"
        }
    }

    /**
     * 打开系统设置页
     * @param page 设置页名称：wifi/bluetooth/display/sound/notifications
     */
    fun openSettings(page: String): String {
        val action = when (page.trim().lowercase()) {
            "wifi", "wlan", "无线" -> Settings.ACTION_WIFI_SETTINGS
            "bluetooth", "蓝牙" -> Settings.ACTION_BLUETOOTH_SETTINGS
            "display", "显示" -> Settings.ACTION_DISPLAY_SETTINGS
            "sound", "声音", "音量" -> Settings.ACTION_SOUND_SETTINGS
            "notifications", "通知" -> Settings.ACTION_APP_NOTIFICATION_SETTINGS
            "location", "位置" -> Settings.ACTION_LOCATION_SOURCE_SETTINGS
            "battery", "电池" -> Settings.ACTION_BATTERY_SAVER_SETTINGS
            "apps", "应用" -> Settings.ACTION_MANAGE_APPLICATIONS_SETTINGS
            else -> Settings.ACTION_SETTINGS
        }
        return try {
            val intent = Intent(action).apply { addFlags(Intent.FLAG_ACTIVITY_NEW_TASK) }
            ContextCompat.startActivity(context, intent, null)
            "已打开设置：$page"
        } catch (e: Exception) {
            Log.e(TAG, "openSettings failed: ${e.message}")
            "打开设置失败：${e.message}"
        }
    }

    /**
     * 查询天气：打开天气网页展示指定城市的天气。
     * 使用中国天气网，支持城市名查询。
     * @param city 城市名（如"北京"、"上海"、"深圳"），为空时打开天气首页
     */
    fun getWeather(city: String): String {
        val c = city.trim()
        return try {
            val url = if (c.isEmpty()) {
                "https://www.weather.com.cn/"
            } else {
                // 中国天气网搜索接口，直接跳转到搜索结果页
                "https://so.weather.com.cn/wap/search.shtml?q=${java.net.URLEncoder.encode(c, "UTF-8")}"
            }
            val intent = Intent(Intent.ACTION_VIEW, Uri.parse(url)).apply {
                addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
            }
            ContextCompat.startActivity(context, intent, null)
            if (c.isEmpty()) "已打开天气查询" else "正在查询 $c 的天气"
        } catch (e: Exception) {
            Log.e(TAG, "getWeather failed: ${e.message}")
            "查询天气失败：${e.message}"
        }
    }

    /**
     * 搜索：通过浏览器搜索关键词
     * @param query 搜索关键词
     */
    fun search(query: String): String {
        val q = query.trim()
        if (q.isEmpty()) return "搜索内容为空"
        return try {
            val url = "https://www.baidu.com/s?wd=${java.net.URLEncoder.encode(q, "UTF-8")}"
            val intent = Intent(Intent.ACTION_VIEW, Uri.parse(url)).apply {
                addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
            }
            ContextCompat.startActivity(context, intent, null)
            "正在搜索：$q"
        } catch (e: Exception) {
            Log.e(TAG, "search failed: ${e.message}")
            "搜索失败：${e.message}"
        }
    }

    /**
     * 播放音乐：尝试打开已安装的音乐应用搜索指定歌曲/歌手。
     * 不跳转浏览器，避免打开下载页面而非播放页面。
     * @param query 歌曲名或歌手名
     */
    fun playMusic(query: String): String {
        val q = query.trim()
        if (q.isEmpty()) return "播放内容为空"
        val encoded = java.net.URLEncoder.encode(q, "UTF-8")

        // 按优先级尝试各音乐 App 的 deeplink
        val musicDeeplinks = listOf(
            "orpiescheme://music/search?keyword=$encoded",            // 网易云音乐
            "qqmusic://qq.com/ui/search?key=$encoded",                // QQ音乐
            "kugou://search?keyword=$encoded",                         // 酷狗音乐
            "kmusic://search?keyword=$encoded",                        // 酷我音乐
            "androidauto://music/search?keyword=$encoded"              // 通用音乐搜索
        )

        for (scheme in musicDeeplinks) {
            try {
                val intent = Intent(Intent.ACTION_VIEW, Uri.parse(scheme)).apply {
                    addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                }
                // 先检查是否有 App 能处理这个 deeplink
                val resolved = intent.resolveActivity(context.packageManager)
                if (resolved != null) {
                    ContextCompat.startActivity(context, intent, null)
                    Log.d(TAG, "playMusic succeeded with: $scheme")
                    return "正在播放：$q"
                }
            } catch (e: Exception) {
                Log.d(TAG, "playMusic deeplink failed: $scheme - ${e.message}")
            }
        }

        // 所有 deeplink 都失败，不打开浏览器，语音提示用户
        Log.w(TAG, "playMusic: no music app installed")
        return "未找到音乐应用，请先安装网易云音乐或QQ音乐等音乐应用"
    }

    /**
     * 调度工具调用分发。
     * 同步工具直接返回结果；异步工具（需网络请求）返回提示语，结果通过 callback 异步回调。
     * @param toolName 工具名
     * @param arguments 参数 map
     * @param asyncCallback 异步结果回调（suspend 工具完成后调用）
     */
    fun execute(
        toolName: String,
        arguments: Map<String, String>,
        asyncCallback: ((String) -> Unit)? = null
    ): String {
        return try {
            when (toolName) {
                // 同步工具
                "open_app" -> openApp(arguments["name"] ?: arguments["app"] ?: "")
                "send_sms" -> sendSms(
                    arguments["to"] ?: arguments["number"] ?: "",
                    arguments["message"] ?: arguments["content"] ?: ""
                )
                "make_call" -> makeCall(arguments["number"] ?: arguments["to"] ?: "")
                "set_alarm" -> setAlarm(
                    (arguments["hour"] ?: "0").toIntOrNull() ?: 0,
                    (arguments["minute"] ?: "0").toIntOrNull() ?: 0,
                    arguments["message"] ?: arguments["label"] ?: ""
                )
                "set_timer" -> setTimer(
                    (arguments["seconds"] ?: "0").toIntOrNull() ?: 0,
                    arguments["message"] ?: ""
                )
                "open_url" -> openUrl(arguments["url"] ?: arguments["link"] ?: "")
                "open_settings" -> openSettings(arguments["page"] ?: arguments["name"] ?: "settings")
                "get_weather" -> {
                    // 天气：优先语音播报，同时也可打开网页
                    val city = arguments["city"] ?: arguments["location"] ?: ""
                    if (asyncCallback != null) {
                        CoroutineScope(Dispatchers.IO).launch {
                            val result = getWeatherVoice(city)
                            asyncCallback(result)
                        }
                        "正在查询${city.ifBlank { "当前" }}天气..."
                    } else {
                        getWeather(city)
                    }
                }
                "search" -> search(arguments["query"] ?: arguments["keyword"] ?: arguments["q"] ?: "")
                "play_music" -> playMusic(arguments["query"] ?: arguments["song"] ?: arguments["name"] ?: "")

                // 异步工具（需网络请求，结果通过回调返回）
                "search_web" -> {
                    val query = arguments["query"] ?: arguments["keyword"] ?: arguments["q"] ?: ""
                    if (asyncCallback != null) {
                        CoroutineScope(Dispatchers.IO).launch {
                            val result = searchWeb(query)
                            asyncCallback(result)
                        }
                        "正在搜索：$query"
                    } else "搜索功能需要异步支持"
                }
                "search_video" -> {
                    val query = arguments["query"] ?: arguments["keyword"] ?: arguments["q"] ?: ""
                    if (asyncCallback != null) {
                        CoroutineScope(Dispatchers.IO).launch {
                            val result = searchVideo(query)
                            asyncCallback(result)
                        }
                        "正在搜索视频：$query"
                    } else "视频搜索功能需要异步支持"
                }
                "get_stock" -> {
                    val query = arguments["query"] ?: arguments["code"] ?: arguments["name"] ?: ""
                    if (asyncCallback != null) {
                        CoroutineScope(Dispatchers.IO).launch {
                            val result = getStock(query)
                            asyncCallback(result)
                        }
                        "正在查询股票：$query"
                    } else "股票查询功能需要异步支持"
                }
                "translate" -> {
                    val text = arguments["text"] ?: arguments["query"] ?: arguments["content"] ?: ""
                    val to = arguments["to"] ?: arguments["target"] ?: arguments["language"] ?: "en"
                    if (asyncCallback != null && text.isNotBlank()) {
                        CoroutineScope(Dispatchers.IO).launch {
                            val result = translate(text, to)
                            asyncCallback(result)
                        }
                        "正在翻译..."
                    } else "翻译内容为空"
                }
                "get_news" -> {
                    val query = arguments["query"] ?: arguments["keyword"] ?: arguments["topic"] ?: ""
                    if (asyncCallback != null) {
                        CoroutineScope(Dispatchers.IO).launch {
                            val result = getNews(query)
                            asyncCallback(result)
                        }
                        "正在获取新闻..."
                    } else "新闻获取功能需要异步支持"
                }
                "search_music" -> {
                    val query = arguments["query"] ?: arguments["keyword"] ?: arguments["song"] ?: arguments["name"] ?: ""
                    if (asyncCallback != null && query.isNotBlank()) {
                        CoroutineScope(Dispatchers.IO).launch {
                            val result = searchMusic(query)
                            asyncCallback(result)
                        }
                        "正在搜索音乐：$query"
                    } else "搜索内容为空"
                }
                else -> "未知命令：$toolName"
            }
        } catch (e: Exception) {
            Log.e(TAG, "execute $toolName failed: ${e.message}", e)
            "执行命令 $toolName 失败：${e.message}"
        }
    }

    /**
     * 联网搜索并返回结果摘要。
     * 使用多源合并搜索：DuckDuckGo + Wikipedia 百科，并行查询，信息更全面。
     *
     * @param query 搜索关键词
     * @return 搜索结果摘要，失败返回空字符串
     */
    suspend fun searchWeb(query: String): String {
        if (query.isBlank()) return ""
        Log.d(TAG, "Multi-source web search: $query")
        val result = apiService.multiSearch(query)
        Log.d(TAG, "Search result: ${result.take(100)}...")
        return result
    }

    /**
     * 搜索视频：通过B站搜索视频，返回标题和UP主信息。
     * 纯语音播报结果，不跳转页面。
     * @param query 视频关键词
     */
    suspend fun searchVideo(query: String): String {
        if (query.isBlank()) return "搜索内容为空"
        Log.d(TAG, "Video search: $query")
        val result = apiService.searchVideo(query)
        return result.ifBlank { "未找到相关视频" }
    }

    /**
     * 查询股票行情：通过新浪财经查询实时股票/基金/外汇数据。
     * 支持股票代码（如600519）或股票名称（如贵州茅台）。
     * @param query 股票代码或名称
     */
    suspend fun getStock(query: String): String {
        if (query.isBlank()) return "查询内容为空"
        Log.d(TAG, "Stock query: $query")
        val result = apiService.getStock(query)
        return result.ifBlank { "未查询到股票行情" }
    }

    /**
     * 查询天气（语音播报版）：通过 wttr.in 免费API获取天气数据。
     * 不跳转浏览器，直接返回天气信息供语音播报。
     * @param city 城市名
     */
    suspend fun getWeatherVoice(city: String): String {
        if (city.isBlank()) return "请告诉我城市名"
        Log.d(TAG, "Weather voice query: $city")
        val result = apiService.getWeather(city)
        return result.ifBlank { "未获取到天气信息" }
    }

    /**
     * 翻译：通过 MyMemory 免费 API 翻译文本。
     * @param text 要翻译的文本
     * @param to 目标语言（如 en、ja、ko、fr），默认英译中
     */
    suspend fun translate(text: String, to: String): String {
        if (text.isBlank()) return "翻译内容为空"
        val target = if (to.isBlank()) "en" else to
        Log.d(TAG, "Translate: $text -> $target")
        val result = apiService.translate(text, target)
        return result.ifBlank { "翻译失败" }
    }

    /**
     * 获取新闻：通过百度新闻聚合最新资讯。
     * @param query 新闻关键词，为空则获取热点新闻
     */
    suspend fun getNews(query: String): String {
        Log.d(TAG, "News fetch: ${query.ifBlank { "热点" }}")
        val result = apiService.getNews(query)
        return result.ifBlank { "暂未获取到新闻" }
    }

    /**
     * 搜索音乐：通过网易云音乐搜索 API 查询歌曲信息。
     * 返回歌曲名、歌手、专辑等信息，语音播报。
     * @param query 歌曲名或歌手名
     */
    suspend fun searchMusic(query: String): String {
        if (query.isBlank()) return "搜索内容为空"
        Log.d(TAG, "Music search: $query")
        val result = apiService.searchMusic(query)
        return result.ifBlank { "未找到相关音乐" }
    }
}
