package com.xiaozhi.android.activation

import android.util.Log
import com.xiaozhi.android.config.ConfigManager
import kotlinx.coroutines.*
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.serialization.json.Json
import kotlinx.serialization.json.buildJsonObject
import kotlinx.serialization.json.put
import kotlinx.serialization.json.jsonObject
import kotlinx.serialization.json.jsonPrimitive
import okhttp3.*
import okhttp3.MediaType.Companion.toMediaType
import java.security.MessageDigest
import java.util.concurrent.TimeUnit
import javax.crypto.Mac
import javax.crypto.spec.SecretKeySpec
import javax.net.ssl.SSLContext
import javax.net.ssl.TrustManager
import javax.net.ssl.X509TrustManager

class ActivationService(private val configManager: ConfigManager) {
    companion object {
        private const val TAG = "ActivationService"
        private val json = Json { ignoreUnknownKeys = true }
    }

    private val scope = CoroutineScope(Dispatchers.IO + SupervisorJob())
    private val _activationState = MutableStateFlow(ActivationState.INITIALIZING)
    val activationState: StateFlow<ActivationState> = _activationState

    private val _activationCode = MutableStateFlow<String?>(null)
    val activationCode: StateFlow<String?> = _activationCode

    private val trustAllCerts = arrayOf<TrustManager>(object : X509TrustManager {
        override fun checkClientTrusted(chain: Array<java.security.cert.X509Certificate>, authType: String) {}
        override fun checkServerTrusted(chain: Array<java.security.cert.X509Certificate>, authType: String) {}
        override fun getAcceptedIssuers(): Array<java.security.cert.X509Certificate> = arrayOf()
    })

    private val client = OkHttpClient.Builder()
        .connectTimeout(15, TimeUnit.SECONDS)
        .readTimeout(15, TimeUnit.SECONDS)
        .sslSocketFactory(
            SSLContext.getInstance("TLS").apply { init(null, trustAllCerts, java.security.SecureRandom()) }.socketFactory,
            trustAllCerts[0] as X509TrustManager
        )
        .hostnameVerifier { _, _ -> true }
        .build()

    enum class ActivationState {
        INITIALIZING, ACTIVATED, NEED_ACTIVATION, ACTIVATING, ACTIVATION_FAILED, ACTIVATION_SUCCESS, OTA_FAILED
    }

    private val _otaError = MutableStateFlow<String?>(null)
    val otaError: StateFlow<String?> = _otaError

    suspend fun initialize(): ActivationState {
        _activationState.value = ActivationState.INITIALIZING
        _otaError.value = null

        // Initialize client ID
        configManager.initializeClientId()

        // Generate device identity if not exists
        val deviceId = configManager.getDeviceId()
        if (deviceId == null) {
            val newDeviceId = generateDeviceId()
            configManager.setDeviceId(newDeviceId)
            Log.i(TAG, "Generated device ID: $newDeviceId")
        }

        // Ensure HMAC key exists (required for OTA elf_sha256)
        ensureHmacKey()

        // Fetch OTA config with retry - failure is non-fatal, app can still connect with defaults
        val otaResult = fetchOtaConfigWithRetry()
        if (otaResult == null) {
            Log.w(TAG, "OTA request failed after retries, continuing with default config")
            _otaError.value = "OTA请求失败，已使用默认配置连接"
            // Don't block user - return ACTIVATED so app can connect with default config
            _activationState.value = ActivationState.ACTIVATED
            return ActivationState.ACTIVATED
        }

        // Skip activation, always return activated
        _activationState.value = ActivationState.ACTIVATED
        return ActivationState.ACTIVATED
    }

    /**
     * 同步初始化：只做本地配置（clientId/deviceId/hmacKey），秒返回，不发起任何网络请求。
     * 用于启动时立即进入连接阶段，OTA 放到后台异步执行。
     */
    suspend fun initializeSync(): ActivationState {
        _activationState.value = ActivationState.INITIALIZING
        _otaError.value = null

        // Initialize client ID
        configManager.initializeClientId()

        // Generate device identity if not exists
        val deviceId = configManager.getDeviceId()
        if (deviceId == null) {
            val newDeviceId = generateDeviceId()
            configManager.setDeviceId(newDeviceId)
            Log.i(TAG, "Generated device ID: $newDeviceId")
        }

        // Ensure HMAC key exists (required for OTA elf_sha256)
        ensureHmacKey()

        // 立即标记为已激活，让 APP 可以连接
        _activationState.value = ActivationState.ACTIVATED
        return ActivationState.ACTIVATED
    }

    /**
     * 后台异步获取 OTA 配置。
     * 返回值：
     *   - "activated"   设备已激活，websocket 配置已更新，建议重连
     *   - "need_code"   设备未激活，已显示验证码，不要重连
     *   - "failed"      OTA 请求失败，使用默认配置
     */
    suspend fun fetchOtaAsync(): String {
        Log.i(TAG, "Background OTA fetch started")
        val otaResult = fetchOtaConfigWithRetry()
        return when {
            otaResult == null -> {
                Log.w(TAG, "Background OTA fetch failed, using existing config")
                _otaError.value = "OTA请求失败，已使用默认配置连接"
                "failed"
            }
            otaResult.activated -> {
                Log.i(TAG, "Background OTA: device activated, config updated")
                _otaError.value = null
                "activated"
            }
            else -> {
                Log.i(TAG, "Background OTA: device not activated, code displayed")
                _otaError.value = null
                "need_code"
            }
        }
    }

    suspend fun resetDeviceIdentity() {
        // Clear all device identity to force re-registration
        configManager.setDeviceId(generateDeviceId())
        ensureHmacKey()
        _otaError.value = null

        // Re-fetch OTA config - failure is non-fatal
        val otaResult = fetchOtaConfigWithRetry()
        if (otaResult == null) {
            _otaError.value = "OTA请求失败，已使用默认配置连接"
            _activationState.value = ActivationState.ACTIVATED
        } else {
            _activationState.value = ActivationState.ACTIVATED
        }
    }

    private suspend fun fetchOtaConfigWithRetry(): OtaResult? {
        val maxAttempts = 2
        for (attempt in 1..maxAttempts) {
            if (attempt > 1) {
                Log.d(TAG, "OTA retry attempt $attempt/$maxAttempts")
                delay(2000L)
            }
            val result = fetchOtaConfig()
            if (result != null) return result
        }
        val err = _otaError.value ?: "OTA请求失败"
        Log.e(TAG, "OTA request failed after $maxAttempts attempts: $err")
        _otaError.value = "OTA请求失败（重试${maxAttempts}次）: $err"
        return null
    }

    private suspend fun ensureHmacKey() {
        val existingKey = configManager.getHmacKey()
        if (existingKey == null) {
            // Generate HMAC key from device ID (matching Python's fingerprint-based approach)
            val newKey = MessageDigest.getInstance("SHA-256")
                .digest((configManager.getDeviceId() ?: "default").toByteArray())
                .joinToString("") { "%02x".format(it) }
            configManager.setHmacKey(newKey)
            Log.i(TAG, "Generated HMAC key for OTA")
        }
    }

    suspend fun activate(code: String): Boolean {
        _activationState.value = ActivationState.ACTIVATING
        val challenge = generateChallenge()
        val hmac = generateHmac(challenge)

        val otaUrl = configManager.getOtaUrl()
        val activateUrl = "${otaUrl.trimEnd('/')}/activate"

        val payload = buildJsonObject {
            put("Payload", buildJsonObject {
                put("algorithm", "hmac-sha256")
                put("serial_number", configManager.getSerialNumber() ?: "")
                put("challenge", challenge)
                put("hmac", hmac)
            })
        }

        val jsonBody = RequestBody.create("application/json".toMediaType(), payload.toString())
        val request = Request.Builder()
            .url(activateUrl)
            .addHeader("Activation-Version", "2")
            .addHeader("Device-Id", configManager.getDeviceId() ?: "")
            .addHeader("Client-Id", configManager.getClientId())
            .addHeader("Content-Type", "application/json")
            .post(jsonBody)
            .build()

        // Retry up to 60 times with 5s interval
        val maxRetries = 60
        for (attempt in 1..maxRetries) {
            try {
                val response = client.newCall(request).execute()
                when (response.code) {
                    200 -> {
                        configManager.setActivated(true)
                        _activationState.value = ActivationState.ACTIVATION_SUCCESS
                        return true
                    }
                    202 -> {
                        Log.d(TAG, "Waiting for activation code input (attempt $attempt)")
                        delay(5000)
                    }
                    else -> {
                        Log.w(TAG, "Activation server returned ${response.code}")
                        delay(5000)
                    }
                }
            } catch (e: Exception) {
                Log.w(TAG, "Activation request failed: ${e.message}")
                delay(5000)
            }
        }
        _activationState.value = ActivationState.ACTIVATION_FAILED
        return false
    }

    private suspend fun fetchOtaConfig(): OtaResult? {
        val otaUrl = configManager.getOtaUrl()
        val deviceId = configManager.getDeviceId() ?: return null
        val clientId = configManager.getClientId()
        val hmacKey = configManager.getHmacKey() ?: "unknown"

        Log.i(TAG, "OTA request: url=$otaUrl, deviceId=$deviceId, clientId=$clientId")

        val payload = buildJsonObject {
            put("application", buildJsonObject {
                put("version", "2.0.8")
                put("elf_sha256", hmacKey)
            })
            put("board", buildJsonObject {
                put("type", "bread-compact-wifi")
                put("name", "py-xiaozhi")
                put("ip", "127.0.0.1")
                put("mac", deviceId)
            })
        }

        val jsonBody = RequestBody.create("application/json".toMediaType(), payload.toString())
        val request = Request.Builder()
            .url(otaUrl)
            .addHeader("Device-Id", deviceId)
            .addHeader("Client-Id", clientId)
            .addHeader("Content-Type", "application/json")
            .addHeader("User-Agent", "bread-compact-wifi/py-xiaozhi-2.0.8")
            .addHeader("Accept-Language", "zh-CN")
            .post(jsonBody)
            .build()

        return try {
            val response = client.newCall(request).execute()
            val responseBody = response.body?.string() ?: ""
            if (response.code != 200) {
                Log.e(TAG, "OTA server returned ${response.code}: $responseBody")
                // 尝试解析服务器返回的错误信息
                val errorMsg = try {
                    val errorData = json.parseToJsonElement(responseBody).jsonObject
                    errorData["message"]?.jsonPrimitive?.content
                        ?: errorData["error"]?.jsonPrimitive?.content
                        ?: "服务器返回 ${response.code}"
                } catch (_: Exception) {
                    "服务器返回 ${response.code}"
                }
                _otaError.value = "OTA请求失败: $errorMsg"
                return null
            }
            val data = json.parseToJsonElement(responseBody).jsonObject

            // Update WebSocket config
            data["websocket"]?.jsonObject?.let { ws ->
                ws["url"]?.jsonPrimitive?.content?.let { url ->
                    configManager.setWebsocketUrl(url)
                }
                ws["token"]?.jsonPrimitive?.content?.let { token ->
                    configManager.setAccessToken(token.ifEmpty { "test-token" })
                }
            }

            // Update MQTT config
            data["mqtt"]?.let { /* Store MQTT config if needed */ }

            // Check activation
            val activation = data["activation"]?.jsonObject
            val activationCode = activation?.get("code")?.jsonPrimitive?.content

            // 设备未激活：服务器返回验证码，设置 NEED_ACTIVATION 状态并保存验证码
            if (activationCode != null) {
                Log.i(TAG, "OTA returned activation code (device not activated): $activationCode")
                _activationCode.value = activationCode
                _activationState.value = ActivationState.NEED_ACTIVATION
                _otaError.value = null
                return OtaResult(activationCode = activationCode, activated = false)
            }

            // 设备已激活：服务器返回了 websocket 配置（无 activation code）
            Log.i(TAG, "OTA succeeded, device activated, websocket config updated")
            _activationCode.value = null
            _activationState.value = ActivationState.ACTIVATED
            _otaError.value = null
            OtaResult(activationCode = null, activated = true)
        } catch (e: Exception) {
            Log.e(TAG, "OTA request failed: ${e.message}", e)
            _otaError.value = "网络错误: ${e.message ?: "未知错误"}"
            null
        }
    }

    private fun generateDeviceId(): String {
        // Generate a MAC-address-like device ID (required by OTA server)
        val bytes = ByteArray(6)
        java.security.SecureRandom().nextBytes(bytes)
        // Set locally administered bit and unicast bit
        bytes[0] = (bytes[0].toInt() or 0x02 and 0xFE).toByte()
        return bytes.joinToString(":") { "%02x".format(it) }
    }

    private fun generateChallenge(): String {
        return (1..32).map { "0123456789abcdef".random() }.joinToString("")
    }

    private suspend fun generateHmac(challenge: String): String {
        val key = configManager.getHmacKey() ?: run {
            // Generate a default HMAC key
            val newKey = MessageDigest.getInstance("SHA-256")
                .digest(configManager.getDeviceId()?.toByteArray() ?: "default".toByteArray())
                .joinToString("") { "%02x".format(it) }
            configManager.setHmacKey(newKey)
            newKey
        }
        val mac = Mac.getInstance("HmacSHA256")
        mac.init(SecretKeySpec(key.toByteArray(), "HmacSHA256"))
        return mac.doFinal(challenge.toByteArray()).joinToString("") { "%02x".format(it) }
    }

    data class OtaResult(val activationCode: String? = null, val activated: Boolean = false)

    fun forceActivated() {
        _activationState.value = ActivationState.ACTIVATED
        _otaError.value = null
        Log.i(TAG, "Forced activated state (OTA skipped)")
    }

    fun destroy() {
        scope.cancel()
    }
}