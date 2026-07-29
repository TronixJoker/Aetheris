package com.xiaozhi.android.control

import android.content.Context
import android.content.Intent
import android.net.Uri
import android.provider.AlarmClock
import android.provider.Settings
import android.util.Log
import androidx.core.content.ContextCompat

/**
 * 命令执行器：执行 AI 下发的系统命令。
 * 包括：打开应用、发短信、打电话、设闹钟、打开网页、获取已安装应用列表。
 */
class CommandExecutor(private val context: Context) {
    companion object {
        private const val TAG = "CommandExecutor"
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
            // 直接打开短信应用并预填内容和收件人，更安全（不需要 SEND_SMS 权限）
            val intent = Intent(Intent.ACTION_SENDTO, Uri.parse("smsto:$phone")).apply {
                addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                putExtra("sms_body", message)
            }
            ContextCompat.startActivity(context, intent, null)
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
            ContextCompat.startActivity(context, intent, null)
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
        return try {
            val intent = Intent(AlarmClock.ACTION_SET_ALARM).apply {
                addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                putExtra(AlarmClock.EXTRA_HOUR, h)
                putExtra(AlarmClock.EXTRA_MINUTES, m)
                putExtra(AlarmClock.EXTRA_MESSAGE, message.ifBlank { "小智闹钟" })
                putExtra(AlarmClock.EXTRA_SKIP_UI, false)
            }
            ContextCompat.startActivity(context, intent, null)
            "已设置闹钟：${"%02d".format(h)}:${"%02d".format(m)} ${message.ifBlank { "" }}"
        } catch (e: Exception) {
            Log.e(TAG, "setAlarm failed: ${e.message}")
            "设置闹钟失败：${e.message}"
        }
    }

    /**
     * 设置定时器
     * @param seconds 秒数
     * @param message 标签
     */
    fun setTimer(seconds: Int, message: String): String {
        val s = seconds.coerceAtLeast(1)
        return try {
            val intent = Intent(AlarmClock.ACTION_SET_TIMER).apply {
                addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                putExtra(AlarmClock.EXTRA_LENGTH, s)
                putExtra(AlarmClock.EXTRA_MESSAGE, message.ifBlank { "小智定时器" })
                putExtra(AlarmClock.EXTRA_SKIP_UI, false)
            }
            ContextCompat.startActivity(context, intent, null)
            "已设置定时器：${s}秒 ${message.ifBlank { "" }}"
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
     * 播放音乐：打开音乐应用搜索指定歌曲/歌手
     * @param query 歌曲名或歌手名
     */
    fun playMusic(query: String): String {
        val q = query.trim()
        if (q.isEmpty()) return "播放内容为空"
        return try {
            // 尝试打开网易云音乐的搜索deeplink，失败则回退到网页搜索
            val intent = Intent(Intent.ACTION_VIEW, Uri.parse("orpiescheme://music/search?keyword=${java.net.URLEncoder.encode(q, "UTF-8")}")).apply {
                addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
            }
            ContextCompat.startActivity(context, intent, null)
            "正在播放：$q"
        } catch (e: Exception) {
            // 回退：打开网页搜索
            Log.w(TAG, "playMusic deeplink failed, fallback to web: ${e.message}")
            try {
                val url = "https://music.163.com/m/search?s=${java.net.URLEncoder.encode(q, "UTF-8")}&type=1"
                val webIntent = Intent(Intent.ACTION_VIEW, Uri.parse(url)).apply {
                    addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                }
                ContextCompat.startActivity(context, webIntent, null)
                "已打开音乐搜索：$q"
            } catch (e2: Exception) {
                "播放音乐失败：${e2.message}"
            }
        }
    }

    /**
     * 调度工具调用分发
     * @param toolName 工具名
     * @param arguments 参数 map
     */
    fun execute(toolName: String, arguments: Map<String, String>): String {
        return try {
            when (toolName) {
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
                "get_weather" -> getWeather(arguments["city"] ?: arguments["location"] ?: "")
                "search" -> search(arguments["query"] ?: arguments["keyword"] ?: arguments["q"] ?: "")
                "play_music" -> playMusic(arguments["query"] ?: arguments["song"] ?: arguments["name"] ?: "")
                else -> "未知命令：$toolName"
            }
        } catch (e: Exception) {
            Log.e(TAG, "execute $toolName failed: ${e.message}", e)
            "执行命令 $toolName 失败：${e.message}"
        }
    }
}
