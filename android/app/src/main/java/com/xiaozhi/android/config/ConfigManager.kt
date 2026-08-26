package com.xiaozhi.android.config

import android.content.Context
import androidx.datastore.core.DataStore
import androidx.datastore.preferences.core.Preferences
import androidx.datastore.preferences.core.booleanPreferencesKey
import androidx.datastore.preferences.core.edit
import androidx.datastore.preferences.core.floatPreferencesKey
import androidx.datastore.preferences.core.stringPreferencesKey
import androidx.datastore.preferences.preferencesDataStore
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.first
import kotlinx.coroutines.flow.map
import kotlinx.coroutines.runBlocking
import kotlinx.serialization.Serializable
import kotlinx.serialization.builtins.ListSerializer
import kotlinx.serialization.json.Json
import java.util.UUID

private val Context.dataStore: DataStore<Preferences> by preferencesDataStore(name = "xiaozhi_settings")

class ConfigManager(private val context: Context) {

    // ==================== 外部 API URL 配置项 ====================
    // 用 ApiKey 枚举统一管理所有外部 API 的配置项，避免重复样板代码。
    // 注意：放在 class 顶层（而非 companion object 内），否则 Kotlin K2 在跨文件
    // 通过 ConfigManager.ApiKey 访问时会报 "Unresolved reference 'ApiKey'"。
    enum class ApiKey(
        val prefKey: Preferences.Key<String>,
        val defaultUrl: String,
        val displayName: String,
    ) {
        WEATHER(
            stringPreferencesKey("api_weather"),
            "https://wttr.in/",
            "天气查询 API (wttr.in)"
        ),
        WEATHER_FALLBACK(
            stringPreferencesKey("api_weather_fallback"),
            "https://www.baidu.com/s?wd=",
            "天气备用搜索 URL (百度)"
        ),
        NEWS(
            stringPreferencesKey("api_news"),
            "https://news.baidu.com/ns?word=",
            "百度新闻搜索 API"
        ),
        STOCK(
            stringPreferencesKey("api_stock"),
            "https://hq.sinajs.cn/list=",
            "新浪股票行情 API"
        ),
        STOCK_SUGGEST(
            stringPreferencesKey("api_stock_suggest"),
            "https://suggest3.sinajs.cn/suggest/type=&key=",
            "新浪股票搜索建议 API"
        ),
        MUSIC_SEARCH(
            stringPreferencesKey("api_music_search"),
            "https://music.163.com/api/search/get?",
            "网易云音乐搜索 API"
        ),
        MUSIC_PLAY(
            stringPreferencesKey("api_music_play"),
            "https://music.163.com/song/media/outer/url?id=",
            "网易云音乐外链播放 URL"
        ),
        BILIBILI_SEARCH(
            stringPreferencesKey("api_bilibili_search"),
            "https://api.bilibili.com/x/web-interface/search/type?",
            "B站视频搜索 API"
        ),
        BILIBILI_VIEW(
            stringPreferencesKey("api_bilibili_view"),
            "https://api.bilibili.com/x/web-interface/view?bvid=",
            "B站视频信息 API"
        ),
        BILIBILI_PLAYURL(
            stringPreferencesKey("api_bilibili_playurl"),
            "https://api.bilibili.com/x/player/playurl?",
            "B站音频流 API"
        ),
        SEARCH_BAIDU(
            stringPreferencesKey("api_search_baidu"),
            "https://www.baidu.com/s?wd=",
            "百度网页搜索 URL"
        ),
        SEARCH_DUCKDUCKGO(
            stringPreferencesKey("api_search_duckduckgo"),
            "https://lite.duckduckgo.com/lite/?q=",
            "DuckDuckGo 搜索 URL"
        ),
        WIKI(
            stringPreferencesKey("api_wiki"),
            "https://zh.wikipedia.org/w/api.php?",
            "维基百科 API"
        ),
        TRANSLATE(
            stringPreferencesKey("api_translate"),
            "https://api.mymemory.translated.net/get?",
            "MyMemory 翻译 API"
        ),
    }

    // ==================== 自定义 API 条目（用户可在管理页增删改） ====================
    // 与内置 ApiKey 区分：内置的由 ApiService 代码引用，不可删除只能改 URL；
    // 自定义的完全由用户管理，存储为 JSON 列表。
    @Serializable
    data class CustomApi(
        val name: String,
        val url: String,
    )

    companion object {
        private val KEY_WEBSOCKET_URL = stringPreferencesKey("websocket_url")
        private val KEY_ACCESS_TOKEN = stringPreferencesKey("access_token")
        private val KEY_DEVICE_ID = stringPreferencesKey("device_id")
        private val KEY_CLIENT_ID = stringPreferencesKey("client_id")
        private val KEY_OTA_URL = stringPreferencesKey("ota_url")
        private val KEY_ACTIVATION_VERSION = stringPreferencesKey("activation_version")
        private val KEY_ACTIVATED = stringPreferencesKey("activated")
        private val KEY_HMAC_KEY = stringPreferencesKey("hmac_key")
        private val KEY_SERIAL_NUMBER = stringPreferencesKey("serial_number")
        private val KEY_CUSTOM_APIS = stringPreferencesKey("custom_apis")

        // 语音端点检测（VAD）与声纹识别
        private val KEY_VAD_ENABLED = booleanPreferencesKey("vad_enabled")
        private val KEY_SPEAKER_ENABLED = booleanPreferencesKey("speaker_enabled")
        private val KEY_SPEAKER_THRESHOLD = floatPreferencesKey("speaker_threshold")
        private val KEY_SPEAKER_OWNER_NAME = stringPreferencesKey("speaker_owner_name")

        // 自定义 API 列表的 JSON 序列化器与缓存
        private val json = Json { ignoreUnknownKeys = true; isLenient = true }
        private val customApisCache: MutableList<CustomApi> = mutableListOf()
        @Volatile
        private var customApisLoaded = false

        const val DEFAULT_WS_URL = "wss://api.tenclass.net/xiaozhi/v1/"
        const val DEFAULT_OTA_URL = "https://api.tenclass.net/xiaozhi/ota/"
        const val ACTIVATION_V1 = "v1"
        const val ACTIVATION_V2 = "v2"

        // 内存缓存：ApiService 在同步代码中读取，避免每次都 runBlocking 拉取 DataStore
        private val apiUrlCache = HashMap<ApiKey, String>()

        // 全局实例，供 ApiService 静态访问（在 Application.onCreate 中初始化）
        @Volatile
        private var globalInstance: ConfigManager? = null

        fun initGlobal(context: Context) {
            if (globalInstance == null) {
                globalInstance = ConfigManager(context.applicationContext)
            }
        }

        // 同步读取 API URL（给 ApiService 用），命中缓存则直接返回，否则 runBlocking 拉取并缓存
        @JvmStatic
        fun getApiUrlSync(apiKey: ApiKey): String {
            apiUrlCache[apiKey]?.let { return it }
            val inst = globalInstance ?: return apiKey.defaultUrl
            val value = runBlocking { inst.readApiUrl(apiKey) }
            apiUrlCache[apiKey] = value
            return value
        }
    }

    private var _clientId: String? = null

    suspend fun initializeClientId(): String {
        if (_clientId != null) return _clientId!!
        val stored = context.dataStore.data.first()[KEY_CLIENT_ID]
        if (stored != null) {
            _clientId = stored
            return stored
        }
        val newId = UUID.randomUUID().toString()
        context.dataStore.edit { it[KEY_CLIENT_ID] = newId }
        _clientId = newId
        return newId
    }

    // 读取某个外部 API 的 URL（含默认值），同时写入内存缓存供 ApiService 同步读取
    private suspend fun readApiUrl(apiKey: ApiKey): String {
        val value = context.dataStore.data.first()[apiKey.prefKey] ?: apiKey.defaultUrl
        apiUrlCache[apiKey] = value
        return value
    }

    // 设置某个外部 API 的 URL，同时更新内存缓存
    suspend fun setApiUrl(apiKey: ApiKey, url: String) {
        context.dataStore.edit { it[apiKey.prefKey] = url }
        apiUrlCache[apiKey] = url
    }

    // 批量读取所有外部 API 配置（设置页初始化用）
    suspend fun getAllApiUrls(): Map<ApiKey, String> {
        val prefs = context.dataStore.data.first()
        return ApiKey.values().associateWith { apiKey ->
            (prefs[apiKey.prefKey] ?: apiKey.defaultUrl).also { apiUrlCache[apiKey] = it }
        }
    }

    // 批量设置所有外部 API 配置（设置页保存用）
    suspend fun setAllApiUrls(urls: Map<ApiKey, String>) {
        context.dataStore.edit { prefs ->
            urls.forEach { (apiKey, url) ->
                prefs[apiKey.prefKey] = url
                apiUrlCache[apiKey] = url
            }
        }
    }

    // 重置所有外部 API 配置为默认值
    suspend fun resetApiUrls() {
        context.dataStore.edit { prefs ->
            ApiKey.values().forEach { apiKey ->
                prefs.remove(apiKey.prefKey)
                apiUrlCache[apiKey] = apiKey.defaultUrl
            }
        }
    }

    // ==================== 自定义 API 列表的读写 ====================

    /** 读取全部自定义 API（首次读取后缓存）。 */
    suspend fun getCustomApis(): List<CustomApi> {
        if (customApisLoaded) return customApisCache.toList()
        val raw = context.dataStore.data.first()[KEY_CUSTOM_APIS]
        val list = if (raw.isNullOrBlank()) {
            emptyList()
        } else {
            try {
                json.decodeFromString(ListSerializer(CustomApi.serializer()), raw)
            } catch (e: Exception) {
                emptyList()
            }
        }
        synchronized(customApisCache) {
            customApisCache.clear()
            customApisCache.addAll(list)
            customApisLoaded = true
        }
        return list
    }

    /** 整体写入自定义 API 列表（增删改都基于此），并刷新缓存。 */
    suspend fun setCustomApis(list: List<CustomApi>) {
        val raw = json.encodeToString(ListSerializer(CustomApi.serializer()), list)
        context.dataStore.edit { it[KEY_CUSTOM_APIS] = raw }
        synchronized(customApisCache) {
            customApisCache.clear()
            customApisCache.addAll(list)
            customApisLoaded = true
        }
    }

    /** 追加一个自定义 API。 */
    suspend fun addCustomApi(name: String, url: String) {
        val current = getCustomApis().toMutableList()
        current.add(CustomApi(name = name.trim(), url = url.trim()))
        setCustomApis(current)
    }

    /** 删除指定下标的自定义 API。 */
    suspend fun removeCustomApi(index: Int) {
        val current = getCustomApis().toMutableList()
        if (index in current.indices) {
            current.removeAt(index)
            setCustomApis(current)
        }
    }

    suspend fun getWebsocketUrl(): String =
        context.dataStore.data.first()[KEY_WEBSOCKET_URL] ?: DEFAULT_WS_URL

    suspend fun getAccessToken(): String =
        context.dataStore.data.first()[KEY_ACCESS_TOKEN] ?: "test-token"

    suspend fun getDeviceId(): String? =
        context.dataStore.data.first()[KEY_DEVICE_ID]

    suspend fun getClientId(): String =
        context.dataStore.data.first()[KEY_CLIENT_ID] ?: initializeClientId()

    suspend fun getOtaUrl(): String =
        context.dataStore.data.first()[KEY_OTA_URL] ?: DEFAULT_OTA_URL

    suspend fun getActivationVersion(): String =
        context.dataStore.data.first()[KEY_ACTIVATION_VERSION] ?: ACTIVATION_V1

    suspend fun isActivated(): Boolean =
        context.dataStore.data.first()[KEY_ACTIVATED] == "true"

    suspend fun getHmacKey(): String? =
        context.dataStore.data.first()[KEY_HMAC_KEY]

    suspend fun getSerialNumber(): String? =
        context.dataStore.data.first()[KEY_SERIAL_NUMBER]

    suspend fun setWebsocketUrl(url: String) {
        context.dataStore.edit { it[KEY_WEBSOCKET_URL] = url }
    }

    suspend fun setAccessToken(token: String) {
        context.dataStore.edit { it[KEY_ACCESS_TOKEN] = token }
    }

    suspend fun setDeviceId(id: String) {
        context.dataStore.edit { it[KEY_DEVICE_ID] = id }
    }

    suspend fun setOtaUrl(url: String) {
        context.dataStore.edit { it[KEY_OTA_URL] = url }
    }

    suspend fun setActivationVersion(version: String) {
        context.dataStore.edit { it[KEY_ACTIVATION_VERSION] = version }
    }

    suspend fun setActivated(activated: Boolean) {
        context.dataStore.edit { it[KEY_ACTIVATED] = activated.toString() }
    }

    suspend fun setHmacKey(key: String) {
        context.dataStore.edit { it[KEY_HMAC_KEY] = key }
    }

    suspend fun setSerialNumber(sn: String) {
        context.dataStore.edit { it[KEY_SERIAL_NUMBER] = sn }
    }

    /**
     * 重置所有网络配置为默认值（OTA URL、WebSocket URL、Token）
     * 用于配置被改错导致连不上的情况
     */
    suspend fun resetNetworkConfig() {
        context.dataStore.edit {
            it.remove(KEY_WEBSOCKET_URL)
            it.remove(KEY_ACCESS_TOKEN)
            it.remove(KEY_OTA_URL)
        }
    }

    // ==================== VAD / 声纹识别配置 ====================

    /** 客户端 VAD（说完话自动停止识别）是否启用，默认开 */
    suspend fun isVadEnabled(): Boolean =
        context.dataStore.data.first()[KEY_VAD_ENABLED] ?: true

    suspend fun setVadEnabled(enabled: Boolean) {
        context.dataStore.edit { it[KEY_VAD_ENABLED] = enabled }
    }

    /** 声纹人物识别是否启用，默认开 */
    suspend fun isSpeakerIdEnabled(): Boolean =
        context.dataStore.data.first()[KEY_SPEAKER_ENABLED] ?: true

    suspend fun setSpeakerIdEnabled(enabled: Boolean) {
        context.dataStore.edit { it[KEY_SPEAKER_ENABLED] = enabled }
    }

    /** 声纹匹配阈值，默认 0.55 */
    suspend fun getSpeakerThreshold(): Float =
        context.dataStore.data.first()[KEY_SPEAKER_THRESHOLD] ?: 0.55f

    suspend fun setSpeakerThreshold(value: Float) {
        context.dataStore.edit { it[KEY_SPEAKER_THRESHOLD] = value.coerceIn(0.3f, 0.9f) }
    }

    /** 主人称呼，默认"主人" */
    suspend fun getSpeakerOwnerName(): String =
        context.dataStore.data.first()[KEY_SPEAKER_OWNER_NAME] ?: "主人"

    suspend fun setSpeakerOwnerName(name: String) {
        context.dataStore.edit { it[KEY_SPEAKER_OWNER_NAME] = name.ifBlank { "主人" } }
    }
}
