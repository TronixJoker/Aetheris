package com.xiaozhi.android.network

import android.os.SystemClock
import android.util.Log
import com.xiaozhi.android.model.HelloMessage
import com.xiaozhi.android.model.ListenMessage
import kotlinx.coroutines.*
import kotlinx.coroutines.flow.MutableSharedFlow
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.SharedFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.serialization.json.Json
import kotlinx.serialization.json.buildJsonObject
import kotlinx.serialization.json.put
import okhttp3.*
import okio.ByteString
import java.util.concurrent.TimeUnit

class WebSocketManager {
    companion object {
        private const val TAG = "WebSocketManager"
        private const val MAX_RECONNECT_ATTEMPTS = 5
        private val json = Json { ignoreUnknownKeys = true; encodeDefaults = true }
    }

    private var webSocket: WebSocket? = null
    private val client = OkHttpClient.Builder()
        .pingInterval(20, TimeUnit.SECONDS)
        .connectTimeout(10, TimeUnit.SECONDS)
        .readTimeout(0, TimeUnit.MILLISECONDS)
        .build()

    private val scope = CoroutineScope(Dispatchers.IO + SupervisorJob())

    private val _connectionState = MutableStateFlow(ConnectionState.DISCONNECTED)
    val connectionState: StateFlow<ConnectionState> = _connectionState

    private val _disconnectReason = MutableStateFlow<String?>(null)
    val disconnectReason: StateFlow<String?> = _disconnectReason

    private val _incomingJson = MutableSharedFlow<String>(extraBufferCapacity = 64)
    val incomingJson: SharedFlow<String> = _incomingJson

    private val _incomingAudio = MutableSharedFlow<ByteArray>(extraBufferCapacity = 64)
    val incomingAudio: SharedFlow<ByteArray> = _incomingAudio

    private val _sessionId = MutableStateFlow<String?>(null)
    val sessionId: StateFlow<String?> = _sessionId

    private var reconnectAttempts = 0
    private var autoReconnect = false
    private var wsUrl = ""
    // 保存重连任务引用，断开时取消，避免后台持续重连干扰下次进入
    private var reconnectJob: kotlinx.coroutines.Job? = null
    private var accessToken = ""
    private var deviceId = ""
    private var clientId = ""

    // ==================== 1005 重连循环治理（v2.3.7 回归修复） ====================
    // 现象：B1 超时取消聆听后设备长时间零上行，服务端主动关闭（close 帧不带状态码 →
    // okhttp 上报 1005），客户端无条件重连 → 再次空闲被关 → 反复「断开 1005 → 重连」刷屏。
    // 修复：识别"服务端空闲类关闭"并按 [WsIdleClosePolicy] 优雅降级（最多重试一次后停连）。
    // 本次连接期间客户端是否有上行活动（任何 sendText/sendAudio）：
    private var upstreamActivitySinceConnect = false
    // 本地主动关闭标记：disconnect()/forceReconnect() 主动 close 后，回调里再收到的
    // onClosing/onClosed 属于本地关闭的回执，不应计入"服务端空闲类关闭"
    private var localCloseRequested = false
    // 空闲类关闭连击状态（策略与窗口见 [WsIdleClosePolicy]）
    private var idleCloseState = WsIdleClosePolicy.INITIAL

    enum class ConnectionState {
        DISCONNECTED, CONNECTING, CONNECTED
    }

    fun configure(url: String, token: String, devId: String, cliId: String) {
        wsUrl = url
        accessToken = token
        deviceId = devId
        clientId = cliId
    }

    fun connect() {
        if (_connectionState.value == ConnectionState.CONNECTING) return
        if (_connectionState.value == ConnectionState.CONNECTED) return

        autoReconnect = true
        reconnectAttempts = 0
        // 用户/业务侧发起新连接 → 空闲关闭连击与本地关闭标记清零
        idleCloseState = WsIdleClosePolicy.reset()
        localCloseRequested = false
        _disconnectReason.value = null
        doConnect()
    }

    private fun doConnect() {
        _connectionState.value = ConnectionState.CONNECTING
        Log.d(TAG, "Connecting to $wsUrl")

        val request = Request.Builder()
            .url(wsUrl)
            .addHeader("Authorization", "Bearer $accessToken")
            .addHeader("Protocol-Version", "1")
            .addHeader("Device-Id", deviceId)
            .addHeader("Client-Id", clientId)
            .build()

        webSocket = client.newWebSocket(request, object : WebSocketListener() {
            override fun onOpen(ws: WebSocket, response: Response) {
                Log.i(TAG, "WebSocket connected")
                _connectionState.value = ConnectionState.CONNECTED
                reconnectAttempts = 0
                // 新连接开始统计"本次连接期间的上行活动"（hello 是握手不算）
                upstreamActivitySinceConnect = false
                localCloseRequested = false

                // Send hello message
                val hello = HelloMessage()
                ws.send(json.encodeToString(HelloMessage.serializer(), hello))
            }

            override fun onMessage(ws: WebSocket, text: String) {
                scope.launch {
                    _incomingJson.emit(text)
                }
            }

            override fun onMessage(ws: WebSocket, bytes: ByteString) {
                scope.launch {
                    _incomingAudio.emit(bytes.toByteArray())
                }
            }

            override fun onClosing(ws: WebSocket, code: Int, reason: String) {
                ws.close(1000, null)
                // 服务端发来的 close 帧（1005 = 未带状态码）→ 服务端主动关闭
                handleDisconnect("Connection closing: $code $reason", serverInitiated = true)
            }

            override fun onClosed(ws: WebSocket, code: Int, reason: String) {
                handleDisconnect("Connection closed: $code $reason", serverInitiated = true)
            }

            override fun onFailure(ws: WebSocket, t: Throwable, response: Response?) {
                // 网络层异常（超时/断流等）不属于服务端空闲类关闭，走常规重连
                handleDisconnect("Connection failed: ${t.message}", serverInitiated = false)
            }
        })
    }

    /**
     * 连接断开统一处理。
     *
     * @param reason 断开原因（会透出到 UI 日志）
     * @param serverInitiated true=服务端主动关闭（onClosing/onClosed）；
     *                        false=网络异常或本地主动关闭
     */
    private fun handleDisconnect(reason: String, serverInitiated: Boolean) {
        var finalReason = reason

        if (serverInitiated && !localCloseRequested) {
            if (upstreamActivitySinceConnect) {
                // 连接期间有过上行活动后仍被服务端关闭 → 视为异常断开，
                // 连击清零，走常规自动重连（真正的网络/服务端问题）
                idleCloseState = WsIdleClosePolicy.reset()
            } else {
                // 无任何上行活动就被服务端关闭 → 空闲类关闭（1005 重连循环的源头）。
                // 按 [WsIdleClosePolicy] 优雅降级：窗口内连击达到上限则停止自动重连，
                // 待用户点按「开始对话」或热词唤醒时经 forceReconnect 按需恢复。
                idleCloseState = WsIdleClosePolicy.onIdleClose(idleCloseState, SystemClock.elapsedRealtime())
                if (!WsIdleClosePolicy.shouldAutoReconnect(idleCloseState)) {
                    autoReconnect = false
                    // 面向用户的简洁提示（UI 日志按 60 字符截断，提示放在前面）
                    finalReason = "服务器空闲超时主动断开，已暂停自动重连；点按「开始对话」将自动重连"
                    Log.w(TAG, "Idle-close streak=${idleCloseState.streak}，停止自动重连。原始原因: $reason")
                }
            }
        } else {
            // 网络异常 / 本地主动关闭 → 连击清零
            idleCloseState = WsIdleClosePolicy.reset()
        }
        localCloseRequested = false
        upstreamActivitySinceConnect = false

        Log.w(TAG, finalReason)
        _connectionState.value = ConnectionState.DISCONNECTED
        _disconnectReason.value = finalReason
        webSocket = null

        if (autoReconnect && reconnectAttempts < MAX_RECONNECT_ATTEMPTS) {
            reconnectAttempts++
            val delay = minOf(reconnectAttempts * 2L, 30L) * 1000
            Log.i(TAG, "Reconnecting in ${delay}ms (attempt $reconnectAttempts/$MAX_RECONNECT_ATTEMPTS)")
            // 取消旧的重连任务，避免多个重连并发竞争导致连接反复断开
            reconnectJob?.cancel()
            reconnectJob = scope.launch {
                delay(delay)
                doConnect()
            }
        }
    }

    fun disconnect() {
        autoReconnect = false
        // 取消挂起中的重连任务，彻底停止后台重连
        reconnectJob?.cancel()
        reconnectJob = null
        // 标记本地主动关闭：随后的 close 回执不计入服务端空闲类关闭连击
        localCloseRequested = true
        try {
            webSocket?.close(1000, "User disconnect")
        } catch (_: Exception) {}
        webSocket = null
        _connectionState.value = ConnectionState.DISCONNECTED
    }

    /**
     * 强制重连：绕过重连次数限制，重置计数器后立即连接。
     * 适用于后台长时间空闲后用户主动唤醒的场景（如点击桌面宠物）。
     */
    fun forceReconnect() {
        // 关闭旧连接（如果还残留）
        // 标记本地主动关闭：旧连接随后的 close 回执不计入空闲类关闭连击
        localCloseRequested = true
        try {
            webSocket?.close(1000, "Force reconnect")
        } catch (_: Exception) {}
        webSocket = null
        // 取消旧的重连任务
        reconnectJob?.cancel()
        reconnectJob = null
        // 重置状态，启用自动重连
        reconnectAttempts = 0
        autoReconnect = true
        // 用户/业务侧主动重连 → 空闲关闭连击清零
        idleCloseState = WsIdleClosePolicy.reset()
        _disconnectReason.value = null
        _connectionState.value = ConnectionState.DISCONNECTED
        Log.i(TAG, "Force reconnect triggered")
        // 立即发起连接
        if (wsUrl.isNotEmpty()) {
            doConnect()
        } else {
            Log.w(TAG, "forceReconnect: wsUrl is empty, configure first")
        }
    }

    fun sendAudio(data: ByteArray) {
        // 上行音频 = 连接活跃证据（服务端空闲超时判定主要看音频流）
        upstreamActivitySinceConnect = true
        webSocket?.send(ByteString.of(*data))
    }

    fun sendText(text: String) {
        // 上行文本消息（listen/abort/stt 等）同样计入连接活跃证据
        upstreamActivitySinceConnect = true
        webSocket?.send(text)
    }

    fun sendListenStart(mode: String = "auto") {
        val msg = json.encodeToString(
            ListenMessage.serializer(),
            ListenMessage(
                session_id = _sessionId.value,
                state = "start",
                mode = mode
            )
        )
        sendText(msg)
    }

    fun sendListenStop() {
        val msg = json.encodeToString(
            ListenMessage.serializer(),
            ListenMessage(
                session_id = _sessionId.value,
                state = "stop"
            )
        )
        sendText(msg)
    }

    fun sendWakeWordDetected(wakeWord: String) {
        val msg = json.encodeToString(
            ListenMessage.serializer(),
            ListenMessage(
                session_id = _sessionId.value,
                state = "detect",
                text = wakeWord
            )
        )
        sendText(msg)
    }

    fun sendAbort(reason: String = "wake_word_detected") {
        val msg = buildJsonObject {
            put("session_id", _sessionId.value ?: "")
            put("type", "abort")
            put("reason", reason)
        }
        sendText(msg.toString())
    }

    /**
     * 发送系统文本给 AI 服务器，让它处理并用语音播报。
     * 用于联网搜索结果、本地命令结果等需要 AI 语音回复的场景。
     * 模拟 STT 识别结果，让 AI 将其视为用户输入并生成回复。
     */
    fun sendSystemText(text: String) {
        val msg = buildJsonObject {
            put("session_id", _sessionId.value ?: "")
            put("type", "stt")
            put("text", text)
            put("is_final", true)
        }
        sendText(msg.toString())
    }

    fun updateSessionId(id: String) {
        _sessionId.value = id
    }

    fun destroy() {
        disconnect()
        scope.cancel()
        client.dispatcher.executorService.shutdown()
        client.connectionPool.evictAll()
    }
}