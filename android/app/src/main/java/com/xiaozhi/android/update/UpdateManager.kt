package com.xiaozhi.android.update

import android.content.Context
import android.content.Intent
import android.net.Uri
import android.os.Build
import android.util.Base64
import android.util.Log
import androidx.core.content.FileProvider
import kotlinx.coroutines.*
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.Json
import kotlinx.serialization.json.jsonObject
import kotlinx.serialization.json.jsonPrimitive
import okhttp3.OkHttpClient
import okhttp3.Request
import okio.buffer
import okio.sink
import java.io.File
import java.util.concurrent.TimeUnit

class UpdateManager(private val context: Context) {
    companion object {
        private const val TAG = "UpdateManager"
        // raw.githubusercontent.com 没有 CDN 缓存，是最可靠的源（虽然国内可能慢，但一定是最新的）
        private const val UPDATE_INFO_URL =
            "https://raw.githubusercontent.com/TronixJoker/Aetheris/main/android-update.json"

        /**
         * Releases 页浏览器直链（v2.3.13 §4.2.4 检查失败可见化）：
         * 所有检查源失败时，日志面板给出兜底路径——浏览器打开 Releases 页
         * 手动下载 APK（页面在 GitHub 域，直连失败率低于 raw/API 源）。
         */
        const val BROWSER_RELEASES_URL = "https://github.com/TronixJoker/Aetheris/releases/latest"
        // 备用源：GitHub API（无缓存，可能限流）+ 国内镜像（快，可能有短暂缓存）
        // jsDelivr 是 CDN 缓存源，单独维护（不可靠，仅最后备用）
        // ⚠️ 教训：此列表曾被硬编码索引引用（[4]），删元素后越界 → v2.3.4 启动 3 秒必崩。
        //    现在统一用 buildUpdateSources() 遍历构建，禁止按下标访问。
        private val UPDATE_INFO_RELIABLE_FALLBACKS = listOf(
            "https://api.github.com/repos/TronixJoker/Aetheris/contents/android-update.json?ref=main",
            // 国内 GitHub 代理镜像（直接拼接 raw URL，国内访问快）
            "https://gh-proxy.com/https://raw.githubusercontent.com/TronixJoker/Aetheris/main/android-update.json",
            "https://ghfast.top/https://raw.githubusercontent.com/TronixJoker/Aetheris/main/android-update.json"
        )
        private val UPDATE_INFO_CDN_FALLBACKS = listOf(
            "https://cdn.jsdelivr.net/gh/TronixJoker/Aetheris@main/android-update.json"
        )
        // 下载卡死检测：超过该时间没有任何数据流入则判定为卡死
        private const val DOWNLOAD_STALL_TIMEOUT_MS = 20_000L
        private val json = Json { ignoreUnknownKeys = true }
        private const val MAX_RETRIES = 2

        /** 更新检查源（url + 是否可靠：可靠源数据可信，CDN 缓存源仅作参考） */
        internal data class UpdateSource(val url: String, val isReliable: Boolean)

        /**
         * 构建更新检查源列表（纯函数，可单元测试）。
         * 结构：主源(raw,可靠) + 可靠备用源(API/国内镜像) + CDN 缓存源(jsDelivr,不可靠)。
         * 返回列表供 checkForUpdates 并行请求。
         */
        internal fun buildUpdateSources(updateUrl: String): List<UpdateSource> {
            val sources = mutableListOf<UpdateSource>()
            // 1. 主源：raw.githubusercontent.com（无 CDN 缓存，最可靠）
            sources.add(UpdateSource(updateUrl, isReliable = true))
            // 2. 可靠备用：GitHub API + 国内镜像（遍历，无索引访问）
            UPDATE_INFO_RELIABLE_FALLBACKS.forEach {
                sources.add(UpdateSource(it, isReliable = true))
            }
            // 3. CDN 缓存源：jsDelivr（有缓存风险，标记不可靠，仅最后备用）
            UPDATE_INFO_CDN_FALLBACKS.forEach {
                sources.add(UpdateSource(it, isReliable = false))
            }
            return sources
        }

        /**
         * 构建 APK 下载 URL 候选列表（评审 R2 调整，纯函数无副作用，可单元测试）。
         *
         * 优先级（评审结论：gh-proxy/ghfast 这类第三方拼接反代存在被劫持投毒风险，
         * 由"最优先"降为"末位兜底"，且仅在下载后可做 SHA-256 校验时才启用）：
         * 1. raw.githubusercontent.com —— 官方源，无 CDN 缓存，确保版本正确，永远最优先
         * 2. jsDelivr CDN（cdn/fastly/gcore）—— 知名公共 CDN，缓存可能过期但由路径版本锁定
         * 3. gh-proxy.com / ghfast.top —— 第三方反代镜像，仅作末位兜底；
         *    allowThirdPartyMirror=false（元数据未提供 SHA-256）时完全不启用，
         *    杜绝"既无校验又走高风险镜像"的供应链攻击面
         *
         * @param originalUrl 更新元数据下发的原始 APK 地址
         * @param allowThirdPartyMirror 元数据是否提供了 SHA-256（可校验才允许走第三方镜像）
         */
        internal fun buildDownloadUrlCandidates(originalUrl: String, allowThirdPartyMirror: Boolean): List<String> {
            val candidates = mutableListOf<String>()
            val lowerUrl = originalUrl.lowercase()

            // 先计算对应的 raw.githubusercontent.com URL（官方源，永远最优先）
            var rawUrl: String? = null
            var jsDelivrBaseUrl: String? = null

            when {
                lowerUrl.contains("raw.githubusercontent.com") -> {
                    rawUrl = originalUrl
                    // 反推出 jsDelivr URL
                    jsDelivrBaseUrl = originalUrl
                        .replaceFirst("https://raw.githubusercontent.com/", "https://cdn.jsdelivr.net/gh/")
                        .replaceFirst("/main/", "@main/")
                        .replaceFirst("/master/", "@master/")
                }
                lowerUrl.contains("cdn.jsdelivr.net") -> {
                    jsDelivrBaseUrl = originalUrl
                    // 转成 raw 格式
                    rawUrl = originalUrl
                        .replaceFirst("https://cdn.jsdelivr.net/gh/", "https://raw.githubusercontent.com/")
                        .replaceFirst("@main", "/main")
                        .replaceFirst("@master", "/master")
                        .replaceFirst("@latest", "/main")
                }
                lowerUrl.contains("fastly.jsdelivr.net") -> {
                    jsDelivrBaseUrl = originalUrl.replaceFirst("https://fastly.jsdelivr.net/", "https://cdn.jsdelivr.net/")
                    rawUrl = originalUrl
                        .replaceFirst("https://fastly.jsdelivr.net/gh/", "https://raw.githubusercontent.com/")
                        .replaceFirst("@main", "/main")
                        .replaceFirst("@master", "/master")
                }
                lowerUrl.contains("gcore.jsdelivr.net") -> {
                    jsDelivrBaseUrl = originalUrl.replaceFirst("https://gcore.jsdelivr.net/", "https://cdn.jsdelivr.net/")
                    rawUrl = originalUrl
                        .replaceFirst("https://gcore.jsdelivr.net/gh/", "https://raw.githubusercontent.com/")
                        .replaceFirst("@main", "/main")
                        .replaceFirst("@master", "/master")
                }
                else -> {
                    // 未知 URL，原封不动
                    rawUrl = originalUrl
                }
            }

            // 1. 最优先：官方 raw 源（无 CDN 缓存，100% 是最新版本，国内可能慢）
            rawUrl?.let { raw ->
                if (raw !in candidates) candidates.add(raw)
            }

            // 2. 其次：jsDelivr CDN 镜像（知名公共 CDN，有缓存过期风险但非恶意注入面）
            jsDelivrBaseUrl?.let { base ->
                // cdn.jsdelivr.net
                if (base !in candidates) candidates.add(base)
                // fastly.jsdelivr.net
                val fastlyUrl = base.replaceFirst("https://cdn.jsdelivr.net/", "https://fastly.jsdelivr.net/")
                if (fastlyUrl !in candidates) candidates.add(fastlyUrl)
                // gcore.jsdelivr.net
                val gcoreUrl = base.replaceFirst("https://cdn.jsdelivr.net/", "https://gcore.jsdelivr.net/")
                if (gcoreUrl !in candidates) candidates.add(gcoreUrl)
            }

            // 3. 末位兜底：第三方 GitHub 反代镜像（ghproxy.net 已实测不可用，移除减少无效等待）。
            //    仅在元数据提供 SHA-256、下载后可校验完整性时启用（评审 R2）
            if (allowThirdPartyMirror) {
                rawUrl?.let { raw ->
                    candidates.add("https://gh-proxy.com/$raw")
                    candidates.add("https://ghfast.top/$raw")
                }
            }

            // 如果 candidates 为空，兜底用 originalUrl
            if (candidates.isEmpty()) candidates.add(originalUrl)

            return candidates
        }
    }

    /**
     * 动态读取当前已安装 APK 的 versionCode。
     * 避免硬编码导致版本号滞后（之前固定写 21，导致 v1.1.5 还提示有更新）。
     */
    private fun getCurrentVersionCode(): Int {
        return try {
            val info = context.packageManager.getPackageInfo(context.packageName, 0)
            if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.P) {
                info.longVersionCode.toInt()
            } else {
                @Suppress("DEPRECATION")
                info.versionCode
            }
        } catch (e: Exception) {
            Log.e(TAG, "Failed to read current versionCode: ${e.message}")
            0
        }
    }

    private val scope = CoroutineScope(Dispatchers.IO + SupervisorJob())
    // 检查更新用短超时（快速失败，切换备用源）
    private val checkClient = OkHttpClient.Builder()
        .connectTimeout(8, TimeUnit.SECONDS)
        .readTimeout(15, TimeUnit.SECONDS)
        .followRedirects(true)
        .followSslRedirects(true)
        .retryOnConnectionFailure(false)
        .build()
    // 下载用长超时
    private val client = OkHttpClient.Builder()
        .connectTimeout(15, TimeUnit.SECONDS)
        .readTimeout(120, TimeUnit.SECONDS)
        .writeTimeout(30, TimeUnit.SECONDS)
        .followRedirects(true)
        .followSslRedirects(true)
        .retryOnConnectionFailure(true)
        .build()

    private val _updateState = MutableStateFlow(UpdateState.IDLE)
    val updateState: StateFlow<UpdateState> = _updateState

    private val _downloadProgress = MutableStateFlow(0)
    val downloadProgress: StateFlow<Int> = _downloadProgress

    private val _downloadSize = MutableStateFlow("0 MB")
    val downloadSize: StateFlow<String> = _downloadSize

    // 当前下载源描述（下载时可见，如"gh-proxy.com (1/5)"；切源/失败用户可见）
    private val _downloadSource = MutableStateFlow("")
    val downloadSource: StateFlow<String> = _downloadSource

    /**
     * 生成浏览器下载 URL（更新对话框"用浏览器下载"逃生通道用）。
     * 浏览器下载器比 APP 内下载更抗网络干扰（支持断点续传、多线程）。
     * 优先国内镜像，失败用户可自行换源。
     */
    fun getBrowserDownloadUrl(rawUrl: String): String {
        return if (rawUrl.contains("raw.githubusercontent.com")) {
            "https://gh-proxy.com/$rawUrl"
        } else rawUrl
    }

    private var downloadJob: Job? = null
    private var pendingApkFile: File? = null
    private var lastDownloadedUrl: String? = null
    // 本次下载的预期 SHA-256（评审 R2）。null = 元数据未提供哈希：
    // 此时跳过校验，且第三方反代镜像会被禁用（只从官方/知名 CDN 源下载）
    private var pendingExpectedSha256: String? = null

    enum class UpdateState {
        IDLE, CHECKING, NO_UPDATE, UPDATE_AVAILABLE, DOWNLOADING, DOWNLOAD_COMPLETE, INSTALLING, NEED_PERMISSION, ERROR
    }

    @Serializable
    data class UpdateInfo(
        val versionCode: Int = 0,
        val versionName: String = "",
        val downloadUrl: String = "",
        // 32 位 ARM 专用包（ABI 拆分瘦身）。无此字段或为空时回退 downloadUrl（通用包）
        val downloadUrlArm32: String = "",
        // 完整性校验（评审 R2）：对应 APK 的 SHA-256 十六进制摘要（校验时大小写不敏感）。
        // 旧版 update.json 无此字段时为空串 → 下载后跳过哈希校验，
        // 但同时禁用第三方反代镜像（见 buildDownloadUrlCandidates），避免"无校验+走镜像"的不安全组合
        val sha256: String = "",
        val sha256Arm32: String = "",
        val changelog: String = ""
    )

    data class UpdateResult(
        val hasUpdate: Boolean = false,
        val versionName: String = "",
        // v2.3.13 §4.2.1 版本差距分提醒：远端/本地 versionCode（纯 versionName
        // 无法判差值——"2.3.13"减"2.3.7"不是合法算术）
        val versionCode: Int = 0,
        val localVersionCode: Int = 0,
        val changelog: String = "",
        val downloadUrl: String = "",
        // 与 downloadUrl 配套的预期 SHA-256（元数据未提供时为空串）
        val sha256: String = ""
    )

    fun checkForUpdates(updateUrl: String = UPDATE_INFO_URL, callback: (UpdateResult) -> Unit) {
        _updateState.value = UpdateState.CHECKING
        scope.launch {
            // 安全兜底：更新检查的任何异常都不允许崩溃 APP（更新只是辅助功能）
            try {
                val currentVersionCode = getCurrentVersionCode()
                Log.d(TAG, "Current versionCode=$currentVersionCode")

                val sources = buildUpdateSources(updateUrl)
                Log.d(TAG, "Update sources (${sources.size}): ${sources.joinToString { it.url.take(50) }}")

            // 并行请求所有源
            val deferreds = sources.map { source ->
                async(Dispatchers.IO) {
                    try {
                        val requestUrl = if (!source.isReliable) {
                            // 对 jsDelivr 加缓存破坏参数（虽然可能无效，但聊胜于无）
                            "${source.url}?t=${System.currentTimeMillis()}_${(0..999).random()}"
                        } else {
                            source.url
                        }
                        Log.d(TAG, "Checking update from: $requestUrl (reliable=${source.isReliable})")
                        val request = Request.Builder()
                            .url(requestUrl)
                            .header("Cache-Control", "no-cache, no-store, must-revalidate")
                            .header("Pragma", "no-cache")
                            .header("Expires", "0")
                            .build()
                        val response = checkClient.newCall(request).execute()
                        if (response.code != 200) {
                            Log.w(TAG, "Update check HTTP ${response.code} from ${source.url}")
                            response.close()
                            return@async null
                        }
                        val body = response.body?.string() ?: ""
                        val info = try {
                            json.decodeFromString(UpdateInfo.serializer(), body)
                        } catch (e: Exception) {
                            try {
                                val githubJson = json.parseToJsonElement(body).jsonObject
                                val content = githubJson["content"]?.jsonPrimitive?.content ?: ""
                                val decoded = String(Base64.decode(content.replace("\n", ""), Base64.DEFAULT))
                                json.decodeFromString(UpdateInfo.serializer(), decoded)
                            } catch (e2: Exception) {
                                Log.e(TAG, "JSON parse failed: ${e2.message}")
                                null
                            }
                        }
                        Log.d(TAG, "Got versionCode=${info?.versionCode} from ${source.url}")
                        info
                    } catch (e: Exception) {
                        Log.w(TAG, "Update check failed from ${source.url}: ${e.message}")
                        null
                    }
                }
            }

            // 收集所有结果，按可靠性分层
            var bestReliableInfo: UpdateInfo? = null
            var bestCacheInfo: UpdateInfo? = null
            var reliableSuccessCount = 0
            var cacheSuccessCount = 0
            val outdatedCacheResults = mutableListOf<UpdateInfo>()

            for ((index, deferred) in deferreds.withIndex()) {
                val source = sources[index]
                try {
                    val info = deferred.await()
                    if (info == null) continue

                    if (source.isReliable) {
                        reliableSuccessCount++
                        if (bestReliableInfo == null || info.versionCode > bestReliableInfo!!.versionCode) {
                            bestReliableInfo = info
                        }
                    } else {
                        cacheSuccessCount++
                        // 对于CDN缓存源：如果返回的versionCode <= 当前版本，说明是旧缓存
                        // 不纳入比较结果，单独记录
                        if (info.versionCode <= currentVersionCode) {
                            outdatedCacheResults.add(info)
                            Log.d(TAG, "CDN cached outdated version ${info.versionCode} (<= current $currentVersionCode), ignoring")
                        } else if (bestCacheInfo == null || info.versionCode > bestCacheInfo!!.versionCode) {
                            bestCacheInfo = info
                        }
                    }
                } catch (_: Exception) {}
            }

            // 决策逻辑：优先使用可靠源，CDN仅在无可靠源时使用
            val finalInfo: UpdateInfo? = when {
                bestReliableInfo != null -> {
                    Log.d(TAG, "Using reliable source result: versionCode=${bestReliableInfo!!.versionCode}")
                    bestReliableInfo
                }
                bestCacheInfo != null -> {
                    Log.d(TAG, "No reliable source available, using CDN result: versionCode=${bestCacheInfo!!.versionCode}")
                    bestCacheInfo
                }
                outdatedCacheResults.isNotEmpty() -> {
                    // 所有源都只有旧缓存数据，无法确定最新版本
                    // 显示错误而非虚假的"已是最新版"
                    Log.e(TAG, "All sources returned outdated data (best outdated versionCode=${outdatedCacheResults.maxOf { it.versionCode }})")
                    _updateState.value = UpdateState.ERROR
                    callback(UpdateResult())
                    return@launch
                }
                else -> {
                    Log.e(TAG, "Update check failed after trying ${sources.size} URLs")
                    _updateState.value = UpdateState.ERROR
                    callback(UpdateResult())
                    return@launch
                }
            }

            if (finalInfo == null) {
                _updateState.value = UpdateState.ERROR
                callback(UpdateResult())
                return@launch
            }

            val successCount = reliableSuccessCount + cacheSuccessCount
            Log.d(TAG, "Best versionCode=${finalInfo.versionCode} from $successCount sources (current=$currentVersionCode, reliable=$reliableSuccessCount, cache=$cacheSuccessCount)")

            if (finalInfo.versionCode > currentVersionCode) {
                // 选定设备匹配的下载目标（URL + 配套 SHA-256，一并透传给下载流程）
                val deviceDownload = pickDownloadForDevice(finalInfo)
                _updateState.value = UpdateState.UPDATE_AVAILABLE
                callback(UpdateResult(
                    hasUpdate = true,
                    versionName = finalInfo.versionName,
                    versionCode = finalInfo.versionCode,
                    localVersionCode = currentVersionCode,
                    changelog = finalInfo.changelog,
                    downloadUrl = deviceDownload.url,
                    sha256 = deviceDownload.sha256
                ))
            } else {
                _updateState.value = UpdateState.NO_UPDATE
                callback(UpdateResult())
            }
            } catch (e: Exception) {
                Log.e(TAG, "Update check failed (caught, no crash): ${e.message}", e)
                _updateState.value = UpdateState.ERROR
                try {
                    callback(UpdateResult())
                } catch (_: Exception) {
                }
            }
        }
    }

    /**
     * 按设备 CPU 架构选定最终下载目标（URL + 配套的预期 SHA-256，ABI 拆分瘦身）。
     * - 32 位设备（仅 armeabi-v7a）→ downloadUrlArm32（无则回退通用包）
     * - 64 位设备 → downloadUrl
     */
    internal data class DeviceDownload(val url: String, val sha256: String)

    internal fun pickDownloadForDevice(info: UpdateInfo): DeviceDownload {
        return try {
            val abis = Build.SUPPORTED_ABIS ?: emptyArray()
            val is32BitOnly = abis.isNotEmpty() &&
                abis.none { it.contains("arm64") || it.contains("x86_64") } &&
                abis.any { it.contains("armeabi") }
            if (is32BitOnly && info.downloadUrlArm32.isNotBlank()) {
                Log.d(TAG, "32-bit device, using arm32 APK: ${info.downloadUrlArm32}")
                DeviceDownload(info.downloadUrlArm32, info.sha256Arm32)
            } else {
                DeviceDownload(info.downloadUrl, info.sha256)
            }
        } catch (e: Exception) {
            Log.w(TAG, "Failed to pick ABI-specific URL, fallback: ${e.message}")
            DeviceDownload(info.downloadUrl, info.sha256)
        }
    }

    /**
     * 下载更新包。
     * @param downloadUrl 更新元数据下发的 APK 地址
     * @param expectedSha256 预期 SHA-256（评审 R2 新增，元数据未提供时传 null/空串）
     */
    fun downloadUpdate(downloadUrl: String, expectedSha256: String? = null) {
        _updateState.value = UpdateState.DOWNLOADING
        _downloadProgress.value = 0
        _downloadSize.value = "0 MB"
        // 归一化：空串/纯空白视为"未提供"，避免无效哈希参与比较
        pendingExpectedSha256 = expectedSha256?.trim()?.takeIf { it.isNotEmpty() }
        downloadJob = scope.launch {
            // 安全兜底：下载流程的任何异常都不允许崩溃 APP
            try {
            // 构建备用下载 URL 列表：官方源最优先；
            // 第三方反代镜像仅在"下载后能做 SHA-256 校验"时才允许启用（评审 R2）
            val allowThirdPartyMirror = pendingExpectedSha256 != null
            val downloadUrls = buildDownloadUrlCandidates(downloadUrl, allowThirdPartyMirror)
            Log.d(TAG, "Download URL candidates (mirror=$allowThirdPartyMirror): $downloadUrls")
            if (!allowThirdPartyMirror) {
                Log.w(TAG, "Metadata has no sha256: third-party mirrors disabled, integrity check skipped")
            }

            var lastError: Exception? = null
            for ((index, url) in downloadUrls.withIndex()) {
                try {
                    // 源可见性：让用户看到当前在从哪个源下载、第几个（卡 0% 时不再干等）
                    val host = try {
                        java.net.URI(url).host ?: url
                    } catch (_: Exception) {
                        url.take(30)
                    }
                    _downloadSource.value = "$host (${index + 1}/${downloadUrls.size})"
                    Log.d(TAG, "Download attempt ${index + 1}/${downloadUrls.size} from: $url")
                    if (index > 0) {
                        _downloadProgress.value = 0
                        _downloadSize.value = "0 MB"
                    }
                    val request = Request.Builder().url(url).build()
                    val response = withContext(Dispatchers.IO) {
                        client.newCall(request).execute()
                    }
                    if (!response.isSuccessful) {
                        Log.w(TAG, "Download HTTP ${response.code} from $url")
                        lastError = Exception("HTTP ${response.code}")
                        response.close()
                        continue
                    }

                    val body = response.body
                    if (body == null) {
                        lastError = Exception("Empty response body")
                        response.close()
                        continue
                    }

                    val totalBytes = body.contentLength()
                    val apkFile = File(context.cacheDir, "update.apk")

                    Log.d(TAG, "Download started, totalBytes=$totalBytes, url=$url")

                    val source = body.source()
                    var downloadStalled = false
                    apkFile.sink().buffer().use { sink ->
                        var downloadedBytes = 0L
                        var lastProgressUpdate = 0L
                        var lastDataTime = System.currentTimeMillis()
                        val buffer = okio.Buffer()
                        while (true) {
                            val read = source.read(buffer, 8192)
                            if (read == -1L) break
                            sink.write(buffer, read)
                            downloadedBytes += read
                            lastDataTime = System.currentTimeMillis()

                            // Update progress at most every 64KB or 1% to avoid UI lag
                            if (downloadedBytes - lastProgressUpdate >= 65536 ||
                               (totalBytes > 0 && downloadedBytes == totalBytes)) {
                                lastProgressUpdate = downloadedBytes
                                val sizeStr = String.format("%.1f MB", downloadedBytes / 1048576.0)
                                _downloadSize.value = sizeStr

                                if (totalBytes > 0) {
                                    val progress = ((downloadedBytes * 100) / totalBytes).toInt()
                                    _downloadProgress.value = progress
                                } else {
                                    // Unknown size: show indeterminate progress based on downloaded amount
                                    _downloadProgress.value = -1
                                }
                            }

                            // 卡死检测：长时间无数据流入则切换备用源
                            if (System.currentTimeMillis() - lastDataTime > DOWNLOAD_STALL_TIMEOUT_MS) {
                                Log.w(TAG, "Download stalled for ${DOWNLOAD_STALL_TIMEOUT_MS}ms, switching source")
                                downloadStalled = true
                                break
                            }
                        }
                        // Final update
                        _downloadSize.value = String.format("%.1f MB", downloadedBytes / 1048576.0)
                    }

                    if (downloadStalled) {
                        lastError = Exception("Download stalled")
                        response.close()
                        continue
                    }

                    // 安全校验（评审 R2）：流式计算 SHA-256，与元数据一致才允许进入安装流程。
                    // 不匹配视为该源被污染/回源错误：删除本地文件并切换下一候选源
                    if (pendingExpectedSha256 != null) {
                        val actualSha256 = sha256OfFile(apkFile)
                        if (!actualSha256.equals(pendingExpectedSha256, ignoreCase = true)) {
                            Log.e(TAG, "SHA-256 mismatch from $host! expected=$pendingExpectedSha256 actual=$actualSha256, discard and try next source")
                            apkFile.delete()
                            response.close()
                            lastError = Exception("SHA-256 mismatch (source: $host)")
                            continue
                        }
                        Log.d(TAG, "SHA-256 verified OK: $actualSha256")
                    } else {
                        Log.w(TAG, "No expected sha256 in metadata, install without integrity check (source: $host)")
                    }

                    Log.d(TAG, "Download complete, file size=${apkFile.length()}")
                    _downloadProgress.value = 100
                    _updateState.value = UpdateState.DOWNLOAD_COMPLETE
                    lastDownloadedUrl = url
                    installApk(apkFile)
                    return@launch
                } catch (e: Exception) {
                    Log.w(TAG, "Download failed from $url: ${e.message}")
                    lastError = e
                }
            }
            Log.e(TAG, "Download failed after trying ${downloadUrls.size} URLs: ${lastError?.message}")
            _updateState.value = UpdateState.ERROR
            } catch (e: Exception) {
                Log.e(TAG, "Download crashed (caught, no crash): ${e.message}", e)
                _updateState.value = UpdateState.ERROR
            }
        }
    }

    /**
     * 流式计算文件 SHA-256（十六进制小写，评审 R2）。
     * 分块读取，避免大体积 APK 整体载入内存。
     */
    private fun sha256OfFile(file: File): String {
        val digest = java.security.MessageDigest.getInstance("SHA-256")
        file.inputStream().use { input ->
            val buffer = ByteArray(64 * 1024)
            while (true) {
                val read = input.read(buffer)
                if (read < 0) break
                digest.update(buffer, 0, read)
            }
        }
        return digest.digest().joinToString("") { "%02x".format(it) }
    }

    private fun installApk(apkFile: File) {
        try {
            // 保存 APK 路径，便于用户授权后重试
            pendingApkFile = apkFile
            _updateState.value = UpdateState.INSTALLING

            // Android 8.0+ 需要检查"安装未知应用"权限
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
                if (!context.packageManager.canRequestPackageInstalls()) {
                    Log.d(TAG, "Missing install permission, jumping to settings")
                    // 跳转到系统设置让用户授权，不设置 ERROR 状态
                    // UI 会显示 NEED_PERMISSION 引导用户授权后返回重试
                    _updateState.value = UpdateState.NEED_PERMISSION
                    val intent = Intent(android.provider.Settings.ACTION_MANAGE_UNKNOWN_APP_SOURCES).apply {
                        data = Uri.parse("package:${context.packageName}")
                        flags = Intent.FLAG_ACTIVITY_NEW_TASK
                    }
                    context.startActivity(intent)
                    return
                }
            }

            launchPackageInstaller(apkFile)
        } catch (e: Exception) {
            Log.e(TAG, "Install failed: ${e.message}")
            _updateState.value = UpdateState.ERROR
        }
    }

    /**
     * 用户从"安装未知应用"系统设置返回后调用此方法重试安装。
     * 仅当之前已下载完成 APK 文件存在时才生效。
     */
    fun retryInstall() {
        val apkFile = pendingApkFile
        if (apkFile == null) {
            Log.w(TAG, "retryInstall: no pending apk file")
            _updateState.value = UpdateState.ERROR
            return
        }
        if (!apkFile.exists()) {
            Log.w(TAG, "retryInstall: pending apk file missing: ${apkFile.absolutePath}")
            pendingApkFile = null
            _updateState.value = UpdateState.ERROR
            return
        }
        Log.d(TAG, "retryInstall: file=${apkFile.absolutePath}, size=${apkFile.length()}")
        installApk(apkFile)
    }

    private fun launchPackageInstaller(apkFile: File) {
        val apkUri = FileProvider.getUriForFile(
            context,
            "${context.packageName}.fileprovider",
            apkFile
        )
        val intent = Intent(Intent.ACTION_VIEW).apply {
            setDataAndType(apkUri, "application/vnd.android.package-archive")
            flags = Intent.FLAG_ACTIVITY_NEW_TASK
            addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION)
            addFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP)
        }
        context.startActivity(intent)
    }

    fun reset() {
        _updateState.value = UpdateState.IDLE
        _downloadProgress.value = 0
        // 注意：不清理 pendingApkFile，允许用户在安装失败后重试
    }

    fun destroy() {
        downloadJob?.cancel()
        scope.cancel()
    }
}