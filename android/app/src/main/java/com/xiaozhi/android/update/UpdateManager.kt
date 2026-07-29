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
        // jsdelivr 有 CDN 缓存，作为最后备用
        private const val UPDATE_INFO_URL =
            "https://raw.githubusercontent.com/TronixJoker/py-xiaozhi/main/android-update.json"
        private val UPDATE_INFO_FALLBACK_URLS = listOf(
            "https://api.github.com/repos/TronixJoker/py-xiaozhi/contents/android-update.json?ref=main",
            "https://cdn.jsdelivr.net/gh/TronixJoker/py-xiaozhi@main/android-update.json"
        )
        // 下载卡死检测：超过该时间没有任何数据流入则判定为卡死
        private const val DOWNLOAD_STALL_TIMEOUT_MS = 30_000L
        private val json = Json { ignoreUnknownKeys = true }
        private const val MAX_RETRIES = 2
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

    private var downloadJob: Job? = null
    private var pendingApkFile: File? = null
    private var lastDownloadedUrl: String? = null

    enum class UpdateState {
        IDLE, CHECKING, NO_UPDATE, UPDATE_AVAILABLE, DOWNLOADING, DOWNLOAD_COMPLETE, INSTALLING, NEED_PERMISSION, ERROR
    }

    @Serializable
    data class UpdateInfo(
        val versionCode: Int = 0,
        val versionName: String = "",
        val downloadUrl: String = "",
        val changelog: String = ""
    )

    data class UpdateResult(
        val hasUpdate: Boolean = false,
        val versionName: String = "",
        val changelog: String = "",
        val downloadUrl: String = ""
    )

    fun checkForUpdates(updateUrl: String = UPDATE_INFO_URL, callback: (UpdateResult) -> Unit) {
        _updateState.value = UpdateState.CHECKING
        scope.launch {
            val currentVersionCode = getCurrentVersionCode()
            Log.d(TAG, "Current versionCode=$currentVersionCode")

            // 构建更新源列表：非CDN源(可靠)优先，CDN源(jsDelivr)降级为仅在无可靠源时使用
            data class UpdateSource(val url: String, val isReliable: Boolean)

            val sources = mutableListOf<UpdateSource>()
            // 1. raw.githubusercontent.com - 无CDN缓存，最可靠
            sources.add(UpdateSource(updateUrl, isReliable = true))
            // 2. GitHub API - 无CDN缓存，可能限流但可靠
            sources.add(UpdateSource(UPDATE_INFO_FALLBACK_URLS[0], isReliable = true))
            // 3. jsDelivr 镜像 - 有CDN缓存，不可靠，仅作最后备用
            for (i in 1 until UPDATE_INFO_FALLBACK_URLS.size) {
                sources.add(UpdateSource(UPDATE_INFO_FALLBACK_URLS[i], isReliable = false))
            }

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
                _updateState.value = UpdateState.UPDATE_AVAILABLE
                callback(UpdateResult(
                    hasUpdate = true,
                    versionName = finalInfo.versionName,
                    changelog = finalInfo.changelog,
                    downloadUrl = finalInfo.downloadUrl
                ))
            } else {
                _updateState.value = UpdateState.NO_UPDATE
                callback(UpdateResult())
            }
        }
    }

    fun downloadUpdate(downloadUrl: String) {
        _updateState.value = UpdateState.DOWNLOADING
        _downloadProgress.value = 0
        _downloadSize.value = "0 MB"
        downloadJob = scope.launch {
            // 构建备用下载 URL 列表：原始 URL + jsDelivr 镜像切换
            val downloadUrls = buildDownloadUrlCandidates(downloadUrl)

            var lastError: Exception? = null
            for ((index, url) in downloadUrls.withIndex()) {
                try {
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
        }
    }

    /**
     * 构建下载 URL 候选列表：优先无缓存源(raw.githubusercontent.com)，CDN 镜像作备用
     * 核心原则：raw 源永远排第一（无 CDN 缓存，确保版本正确），CDN 仅在 raw 失败时使用
     */
    private fun buildDownloadUrlCandidates(originalUrl: String): List<String> {
        val candidates = mutableListOf<String>()
        val lowerUrl = originalUrl.lowercase()

        // 先计算对应的 raw.githubusercontent.com URL（永远最优先）
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

        // 1. 最优先：raw.githubusercontent.com（无 CDN 缓存，100%是最新版本）
        if (rawUrl != null && rawUrl !in candidates) candidates.add(rawUrl)

        // 2. 其次：其他无 CDN 缓存的 GitHub 直链镜像
        // （如果以后有更多镜像可以在这里加）

        // 3. 最后：jsDelivr CDN 镜像（有缓存风险，但国内速度快）
        if (jsDelivrBaseUrl != null) {
            // cdn.jsdelivr.net
            val cdnUrl = jsDelivrBaseUrl
            if (cdnUrl !in candidates) candidates.add(cdnUrl)
            // fastly.jsdelivr.net
            val fastlyUrl = jsDelivrBaseUrl.replaceFirst("https://cdn.jsdelivr.net/", "https://fastly.jsdelivr.net/")
            if (fastlyUrl !in candidates) candidates.add(fastlyUrl)
            // gcore.jsdelivr.net
            val gcoreUrl = jsDelivrBaseUrl.replaceFirst("https://cdn.jsdelivr.net/", "https://gcore.jsdelivr.net/")
            if (gcoreUrl !in candidates) candidates.add(gcoreUrl)
        }

        // 如果 candidates 为空，兜底用 originalUrl
        if (candidates.isEmpty()) candidates.add(originalUrl)

        Log.d(TAG, "Download URL candidates (priority order): $candidates")
        return candidates
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