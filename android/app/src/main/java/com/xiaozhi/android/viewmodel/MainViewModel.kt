package com.xiaozhi.android.viewmodel

import android.app.Application
import android.content.Intent
import android.os.Build
import android.util.Log
import androidx.lifecycle.AndroidViewModel
import androidx.lifecycle.viewModelScope
import com.xiaozhi.android.XiaozhiApp
import com.xiaozhi.android.activation.ActivationService
import com.xiaozhi.android.audio.AudioPlayer
import com.xiaozhi.android.audio.AudioRecorder
import com.xiaozhi.android.audio.OpusCodec
import com.xiaozhi.android.config.ConfigManager
import com.xiaozhi.android.control.CommandExecutor
import com.xiaozhi.android.model.DeviceState
import com.xiaozhi.android.network.WebSocketManager
import com.xiaozhi.android.pet.FloatingPetService
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.*
import kotlinx.coroutines.launch
import kotlinx.serialization.json.*

class MainViewModel(application: Application) : AndroidViewModel(application) {
    companion object {
        private const val TAG = "MainViewModel"
        private val json = Json { ignoreUnknownKeys = true }
    }

    private val configManager = ConfigManager(application)
    val activationService = ActivationService(configManager)
    val webSocketManager = WebSocketManager()
    private val audioRecorder = AudioRecorder(application)
    private val audioPlayer = AudioPlayer()
    private val opusCodec = OpusCodec()
    private val commandExecutor = CommandExecutor(application)

    // UI state
    private val _deviceState = MutableStateFlow(DeviceState.IDLE)
    val deviceState: StateFlow<DeviceState> = _deviceState

    private val _logMessages = MutableStateFlow<List<String>>(emptyList())
    val logMessages: StateFlow<List<String>> = _logMessages

    private val _emotion = MutableStateFlow("neutral")
    val emotion: StateFlow<String> = _emotion

    private val _sessionId = MutableStateFlow<String?>(null)
    val sessionId: StateFlow<String?> = _sessionId

    private var isRunning = false
    private var audioChannelOpened = false

    // VAD（语音活动检测）自动打断相关参数
    // 小智说话时监测麦克风，若用户声音能量显著高于背景基线并持续若干帧，自动打断。
    // 采用"动态基线 + 突变检测"：基线随 TTS 残留/环境噪声自适应更新，
    // 用户说话时能量会显著突增，从而触发打断。比固定阈值更鲁棒。
    private val vadTriggerFrames = 5            // 连续突增帧数才触发（约 100ms，平衡灵敏度与稳定性）
    private var vadOverThresholdCount = 0
    // 动态噪声基线（RMS 指数移动平均），初始值较低
    private var vadNoiseBaseline = 300f
    // 触发倍数：当前 RMS 超过 基线 × 该倍数 且高于最低绝对阈值，才算突增
    private val vadRatioThreshold = 2.5f
    // 最低绝对能量阈值：低于此值视为静音，避免极低底噪下误触发
    private val vadAbsoluteMin = 350f
    // 打断后的冷却时间，避免连续打断
    private var lastInterruptTimeMs = 0L
    private val vadCooldownMs = 1000L
    // 调试：每隔若干帧打印一次 RMS，便于排查
    private var vadDebugCounter = 0

    private val _otaStatus = MutableStateFlow<String?>(null)
    val otaStatus: StateFlow<String?> = _otaStatus

    fun init() {
        // 注册到 Application，供桌面宠物点击时触发聆听
        (getApplication<Application>() as? XiaozhiApp)?.lastViewModel = this

        viewModelScope.launch {
            // 同步初始化：只做本地配置，秒返回，不发起网络请求
            configManager.initializeClientId()
            activationService.initializeSync()

            // 立即用当前配置（默认或上次的）连接 WebSocket，不等 OTA
            addLog("🚀 启动连接...")
            startConnection()

            // OTA 在后台异步执行，不阻塞 UI
            viewModelScope.launch(Dispatchers.IO) {
                addLog("🔄 后台获取OTA配置...")
                val otaResult = activationService.fetchOtaAsync()
                when (otaResult) {
                    "activated" -> {
                        addLog("✅ 设备已激活，配置已更新，重新连接...")
                        webSocketManager.disconnect()
                        kotlinx.coroutines.delay(300)
                        startConnection()
                    }
                    "need_code" -> {
                        addLog("📋 设备未激活，请到 xiaozhi.me 输入验证码")
                    }
                    else -> {
                        val otaErr = activationService.otaError.value
                        if (otaErr != null) {
                            _otaStatus.value = otaErr
                            addLog("⚠️ $otaErr")
                        }
                    }
                }
            }
        }

        // Observe activation state
        viewModelScope.launch {
            activationService.activationState.collect { state ->
                if (state == ActivationService.ActivationState.ACTIVATION_SUCCESS) {
                    _otaStatus.value = null
                    startConnection()
                }
            }
        }

        // Observe WebSocket messages
        viewModelScope.launch {
            webSocketManager.incomingJson.collect { message ->
                handleJsonMessage(message)
            }
        }

        // Observe WebSocket audio
        viewModelScope.launch {
            webSocketManager.incomingAudio.collect { audioData ->
                handleIncomingAudio(audioData)
            }
        }

        // Observe WebSocket connection state
        viewModelScope.launch {
            webSocketManager.connectionState.collect { state ->
                when (state) {
                    WebSocketManager.ConnectionState.CONNECTED -> {
                        addLog("✅ 服务器已连接")
                        _deviceState.value = DeviceState.IDLE
                    }
                    WebSocketManager.ConnectionState.CONNECTING -> {
                        if (!isRunning) {
                            addLog("🔄 正在连接服务器...")
                        }
                        _deviceState.value = DeviceState.CONNECTING
                    }
                    WebSocketManager.ConnectionState.DISCONNECTED -> {
                        if (isRunning) {
                            val reason = webSocketManager.disconnectReason.value
                            if (reason != null) {
                                addLog("❌ 连接断开: ${reason.take(60)}")
                            } else {
                                addLog("❌ 连接已断开")
                            }
                            _deviceState.value = DeviceState.IDLE
                        }
                    }
                }
            }
        }

        // Observe audio recorder data
        viewModelScope.launch {
            audioRecorder.pcmData.collect { pcm ->
                when (_deviceState.value) {
                    DeviceState.LISTENING -> {
                        // 正常聆听：上传音频
                        if (audioChannelOpened) {
                            val encoded = opusCodec.encode(pcm)
                            if (encoded != null) {
                                webSocketManager.sendAudio(encoded)
                            }
                        }
                    }
                    DeviceState.SPEAKING -> {
                        // 小智说话时：检测用户声音，自动打断（VAD）
                        if (detectUserInterruption(pcm)) {
                            interruptSpeaking()
                        }
                    }
                    else -> { /* IDLE / CONNECTING 不处理 */ }
                }
            }
        }
    }

    private suspend fun startConnection() {
        val wsUrl = configManager.getWebsocketUrl()
        val token = configManager.getAccessToken()
        val deviceId = configManager.getDeviceId() ?: "android-device"
        val clientId = configManager.getClientId()

        addLog("🔗 服务器: $wsUrl")
        addLog("🆔 设备ID: $deviceId")
        Log.i(TAG, "Connecting: wsUrl=$wsUrl, deviceId=$deviceId, clientId=$clientId")
        webSocketManager.configure(wsUrl, token, deviceId, clientId)
        webSocketManager.connect()
        isRunning = true

        // Initialize Opus codec
        opusCodec.initialize()
        audioPlayer.start()
    }

    private fun handleJsonMessage(message: String) {
        try {
            val data = json.parseToJsonElement(message).jsonObject
            val type = data["type"]?.jsonPrimitive?.content ?: return

            when (type) {
                "hello" -> {
                    // Server hello response
                    Log.i(TAG, "Server hello received")
                    val sessionId = data["session_id"]?.jsonPrimitive?.content
                    if (sessionId != null) {
                        webSocketManager.updateSessionId(sessionId)
                        _sessionId.value = sessionId
                    }
                    audioChannelOpened = true
                    addLog("✅ 音频通道已就绪")
                }

                "mcp" -> {
                    // MCP protocol messages - must respond to requests
                    handleMcpMessage(data)
                }

                "tts" -> {
                    // TTS state changes
                    val state = data["state"]?.jsonPrimitive?.content
                    when (state) {
                        "start" -> {
                            _deviceState.value = DeviceState.SPEAKING
                            // 重置播放器：清除上一轮打断后可能残留的音频，恢复播放
                            audioPlayer.resetForNewPlayback()
                            // 设置冷却期：TTS 开始后的 1.5 秒内不检测打断
                            // 避免 TTS 第一帧冲击被误判为用户说话
                            lastInterruptTimeMs = System.currentTimeMillis()
                            // 保持/启动麦克风录音，用于 VAD 自动打断检测
                            if (!audioRecorder.isRunning()) {
                                audioRecorder.start()
                            }
                            vadOverThresholdCount = 0
                            addLog("AI 正在说话...")
                        }
                        "stop" -> {
                            _deviceState.value = DeviceState.IDLE
                            // AI 说完后停止麦克风（节省电量）
                            audioRecorder.stop()
                            addLog("AI 说话结束")
                            // 自动连续对话：0.4 秒后自动重新进入聆听
                            viewModelScope.launch {
                                kotlinx.coroutines.delay(400)
                                // 仅在仍处于 IDLE 且连接正常时自动开启聆听
                                if (_deviceState.value == DeviceState.IDLE &&
                                    webSocketManager.connectionState.value == WebSocketManager.ConnectionState.CONNECTED &&
                                    audioChannelOpened) {
                                    addLog("🔄 自动继续聆听，可直接说话")
                                    tryStartListeningInternal()
                                }
                            }
                        }
                        "sentence_start" -> {
                            val text = data["text"]?.jsonPrimitive?.content ?: ""
                            addLog("AI: $text")
                        }
                    }
                }

                "stt" -> {
                    // Speech-to-text results
                    val text = data["text"]?.jsonPrimitive?.content ?: ""
                    if (text.isNotEmpty()) {
                        addLog("用户: $text")
                    }
                }

                "llm" -> {
                    // LLM emotion
                    val emotion = data["emotion"]?.jsonPrimitive?.content
                    if (emotion != null) {
                        _emotion.value = emotion
                    }
                }

                "error" -> {
                    val errorMsg = data["message"]?.jsonPrimitive?.content ?: "未知错误"
                    Log.e(TAG, "Server error: $errorMsg")
                    addLog("服务器错误: $errorMsg")
                }
            }
        } catch (e: Exception) {
            Log.w(TAG, "Failed to parse message: ${e.message}")
        }
    }

    private fun handleMcpMessage(data: JsonObject) {
        try {
            val payload = data["payload"]?.jsonObject ?: return
            val method = payload["method"]?.jsonPrimitive?.content ?: return
            val mcpId = payload["id"]?.jsonPrimitive?.content
            val sessionId = data["session_id"]?.jsonPrimitive?.content ?: ""

            // Only respond to requests (messages with an id)
            if (mcpId == null) {
                Log.d(TAG, "MCP notification: $method")
                return
            }

            Log.d(TAG, "MCP request: $method (id=$mcpId)")

            val result: JsonObject = when (method) {
                "initialize" -> buildJsonObject {
                    put("protocolVersion", "2024-11-05")
                    put("capabilities", buildJsonObject {})
                    put("serverInfo", buildJsonObject {
                        put("name", "xiaozhi-android")
                        put("version", "1.1.0")
                    })
                }
                "tools/list" -> buildJsonObject {
                    put("tools", buildJsonArray {
                        add(buildJsonObject {
                            put("name", "get_weather")
                            put("description", "【查询天气】当用户问天气、气温、下雨、穿什么衣服、是否需要带伞等问题时必须调用此工具。例如：今天天气怎么样、北京天气、明天会下雨吗。Args: `city` - 城市名称（如北京、上海、深圳），不填则查询默认天气")
                            put("inputSchema", buildJsonObject {
                                put("type", "object")
                                put("properties", buildJsonObject {
                                    put("city", buildJsonObject { put("type", "string") })
                                })
                                put("required", buildJsonArray {})
                            })
                        })
                        add(buildJsonObject {
                            put("name", "set_alarm")
                            put("description", "【设置闹钟】当用户要求设闹钟、叫醒、提醒、起床时必须调用此工具。例如：设个7点的闹钟、明早6点半叫我、设闹钟。24小时制。Args: `hour` - 小时(0-23); `minute` - 分钟(0-59); `message` - 闹钟标签(可选)")
                            put("inputSchema", buildJsonObject {
                                put("type", "object")
                                put("properties", buildJsonObject {
                                    put("hour", buildJsonObject { put("type", "integer") })
                                    put("minute", buildJsonObject { put("type", "integer") })
                                    put("message", buildJsonObject { put("type", "string") })
                                })
                                put("required", buildJsonArray { add("hour"); add("minute") })
                            })
                        })
                        add(buildJsonObject {
                            put("name", "set_timer")
                            put("description", "【设置倒计时/定时器】当用户要求倒计时、定时N分钟/秒后提醒时必须调用。例如：5分钟后提醒我、倒计时30秒。Args: `seconds` - 秒数; `message` - 标签(可选)")
                            put("inputSchema", buildJsonObject {
                                put("type", "object")
                                put("properties", buildJsonObject {
                                    put("seconds", buildJsonObject { put("type", "integer") })
                                    put("message", buildJsonObject { put("type", "string") })
                                })
                                put("required", buildJsonArray { add("seconds") })
                            })
                        })
                        add(buildJsonObject {
                            put("name", "search")
                            put("description", "【搜索】当用户要求搜索信息、查资料、问问题且需要联网搜索时调用。例如：搜一下量子力学、查一下红烧肉怎么做。Args: `query` - 搜索关键词")
                            put("inputSchema", buildJsonObject {
                                put("type", "object")
                                put("properties", buildJsonObject {
                                    put("query", buildJsonObject { put("type", "string") })
                                })
                                put("required", buildJsonArray { add("query") })
                            })
                        })
                        add(buildJsonObject {
                            put("name", "play_music")
                            put("description", "【播放音乐】当用户要求播放歌曲、听音乐、放首歌时调用。例如：播放周杰伦的歌、来一首晴天。Args: `query` - 歌曲名或歌手名")
                            put("inputSchema", buildJsonObject {
                                put("type", "object")
                                put("properties", buildJsonObject {
                                    put("query", buildJsonObject { put("type", "string") })
                                })
                                put("required", buildJsonArray { add("query") })
                            })
                        })
                        add(buildJsonObject {
                            put("name", "open_app")
                            put("description", "【打开应用】当用户要求打开、启动、进入某个应用时调用。例如：打开微信、启动抖音、打开相机。Args: `name` - 应用名称（中文或英文均可）")
                            put("inputSchema", buildJsonObject {
                                put("type", "object")
                                put("properties", buildJsonObject {
                                    put("name", buildJsonObject { put("type", "string") })
                                })
                                put("required", buildJsonArray { add("name") })
                            })
                        })
                        add(buildJsonObject {
                            put("name", "send_sms")
                            put("description", "【发送短信】当用户要求发短信、发信息时调用。会打开短信应用预填内容和收件人，需用户确认发送。Args: `to` - 收件人手机号; `message` - 短信内容")
                            put("inputSchema", buildJsonObject {
                                put("type", "object")
                                put("properties", buildJsonObject {
                                    put("to", buildJsonObject { put("type", "string") })
                                    put("message", buildJsonObject { put("type", "string") })
                                })
                                put("required", buildJsonArray { add("to"); add("message") })
                            })
                        })
                        add(buildJsonObject {
                            put("name", "make_call")
                            put("description", "【拨打电话】当用户要求打电话、拨打某号码时调用。会打开拨号界面，需用户确认拨出。Args: `number` - 电话号码")
                            put("inputSchema", buildJsonObject {
                                put("type", "object")
                                put("properties", buildJsonObject {
                                    put("number", buildJsonObject { put("type", "string") })
                                })
                                put("required", buildJsonArray { add("number") })
                            })
                        })
                        add(buildJsonObject {
                            put("name", "open_url")
                            put("description", "【打开网页】当用户要求打开网址、访问网站时调用。Args: `url` - 网址")
                            put("inputSchema", buildJsonObject {
                                put("type", "object")
                                put("properties", buildJsonObject {
                                    put("url", buildJsonObject { put("type", "string") })
                                })
                                put("required", buildJsonArray { add("url") })
                            })
                        })
                        add(buildJsonObject {
                            put("name", "open_settings")
                            put("description", "【打开系统设置】当用户要求打开WiFi、蓝牙、显示、声音等系统设置时调用。Args: `page` - 设置页(wifi/bluetooth/display/sound/notifications/location/battery/apps)")
                            put("inputSchema", buildJsonObject {
                                put("type", "object")
                                put("properties", buildJsonObject {
                                    put("page", buildJsonObject { put("type", "string") })
                                })
                                put("required", buildJsonArray { add("page") })
                            })
                        })
                    })
                }
                "tools/call" -> {
                    // 执行工具调用
                    val params = payload["params"]?.jsonObject ?: buildJsonObject {}
                    val toolName = params["name"]?.jsonPrimitive?.content ?: ""
                    val arguments = mutableMapOf<String, String>()
                    params["arguments"]?.jsonObject?.forEach { (key, value) ->
                        // 兼容整数/浮点/字符串：整数可能被序列化为 7.0，需取整
                        val primitive = value.jsonPrimitive
                        val content = primitive.content
                        arguments[key] = if (primitive.isString) content else {
                            // 非字符串：尝试取整（处理 7.0 -> 7）
                            content.toDoubleOrNull()?.let { it.toInt().toString() } ?: content
                        }
                    }
                    Log.i(TAG, "Tool call: $toolName, args=$arguments")
                    addLog("🔧 执行命令: $toolName")
                    val execResult = commandExecutor.execute(toolName, arguments)
                    addLog("→ $execResult")
                    buildJsonObject {
                        put("content", buildJsonArray {
                            add(buildJsonObject {
                                put("type", "text")
                                put("text", execResult)
                            })
                        })
                    }
                }
                else -> buildJsonObject {}
            }

            val response = buildJsonObject {
                put("type", "mcp")
                put("session_id", sessionId)
                put("payload", buildJsonObject {
                    put("jsonrpc", "2.0")
                    val idLong = mcpId.toLongOrNull()
                    if (idLong != null) {
                        put("id", idLong)
                    } else {
                        put("id", mcpId)
                    }
                    put("result", result)
                })
            }

            webSocketManager.sendText(response.toString())
            Log.d(TAG, "Sent MCP response for $method")
        } catch (e: Exception) {
            Log.e(TAG, "Failed to handle MCP message: ${e.message}")
        }
    }

    private fun handleIncomingAudio(audioData: ByteArray) {
        val decoded = opusCodec.decode(audioData)
        if (decoded != null) {
            audioPlayer.enqueueAudio(decoded)
        }
    }

    fun toggleListening() {
        when (_deviceState.value) {
            DeviceState.IDLE -> startListening()
            DeviceState.LISTENING -> stopListening()
            DeviceState.SPEAKING -> interruptSpeaking()
            DeviceState.CONNECTING -> {
                addLog("⏳ 正在连接中，请稍候...")
            }
        }
    }

    fun startListening() {
        val wsState = webSocketManager.connectionState.value
        if (wsState != WebSocketManager.ConnectionState.CONNECTED) {
            val stateText = when (wsState) {
                WebSocketManager.ConnectionState.CONNECTING -> "正在连接服务器，请稍候..."
                WebSocketManager.ConnectionState.DISCONNECTED -> "连接已断开，正在强制重连..."
                else -> "连接状态异常"
            }
            addLog("⚠️ $stateText")
            // 断开或正在连接时，启动强制重连+等待流程
            viewModelScope.launch {
                addLog("🔄 强制重连中...")
                // 重置音频通道标志，必须等收到新的 hello 才能算就绪
                audioChannelOpened = false
                // 重新读取配置并 configure（防止后台被杀后配置丢失）
                val wsUrl = configManager.getWebsocketUrl()
                val token = configManager.getAccessToken()
                val deviceId = configManager.getDeviceId() ?: "android-device"
                val clientId = configManager.getClientId()
                webSocketManager.configure(wsUrl, token, deviceId, clientId)
                // 强制重连（绕过重连次数限制）
                webSocketManager.forceReconnect()
                _deviceState.value = DeviceState.CONNECTING
                // 轮询等待连接+音频通道就绪，最多等 15 秒
                var waited = 0
                while (waited < 15000) {
                    kotlinx.coroutines.delay(500)
                    waited += 500
                    val state = webSocketManager.connectionState.value
                    if (state == WebSocketManager.ConnectionState.CONNECTED && audioChannelOpened) {
                        addLog("✅ 连接就绪")
                        tryStartListeningInternal()
                        return@launch
                    }
                    if (state == WebSocketManager.ConnectionState.DISCONNECTED) {
                        // 重连失败，再试一次
                        addLog("⚠️ 重连失败，再试...")
                        kotlinx.coroutines.delay(1000)
                        webSocketManager.forceReconnect()
                    }
                }
                addLog("❌ 连接超时，请检查网络后重试")
                _deviceState.value = DeviceState.IDLE
            }
            return
        }
        tryStartListeningInternal()
    }

    private fun tryStartListeningInternal() {
        val wsState = webSocketManager.connectionState.value
        if (wsState != WebSocketManager.ConnectionState.CONNECTED) {
            addLog("⚠️ 仍未连接，稍后重试")
            return
        }
        if (!audioRecorder.hasPermission()) {
            addLog("⚠️ 没有录音权限，请在设置中开启")
            return
        }
        if (!audioChannelOpened) {
            addLog("⚠️ 音频通道未就绪，请稍候再试...")
            return
        }
        _deviceState.value = DeviceState.LISTENING
        webSocketManager.sendListenStart("auto")
        audioRecorder.start()
        addLog("🎤 开始聆听...")
    }

    fun stopListening() {
        _deviceState.value = DeviceState.IDLE
        webSocketManager.sendListenStop()
        audioRecorder.stop()
        addLog("停止聆听")
    }

    fun interruptSpeaking() {
        // 1. 通知服务器中止 TTS 下发
        webSocketManager.sendAbort()
        // 2. 立即停止本地音频播放并清空缓冲（关键修复：否则已缓冲的 TTS 会继续播完）
        audioPlayer.stopAndClear()
        // 3. 切到聆听状态并重启麦克风
        _deviceState.value = DeviceState.LISTENING
        webSocketManager.sendListenStart("auto")
        if (!audioRecorder.isRunning()) {
            audioRecorder.start()
        }
        lastInterruptTimeMs = System.currentTimeMillis()
        vadOverThresholdCount = 0
        addLog("打断说话，重新聆听...")
    }

    /**
     * VAD：检测用户是否在说话（用于自动打断）。
     * 采用"动态噪声基线 + 突变倍数 + 最低绝对阈值"三重判定：
     *  - 基线随环境/TTS 残留自适应更新（指数移动平均）
     *  - 用户说话时 RMS 会显著高于基线（突增）
     *  - 同时要求绝对能量高于最低阈值，避免极低底噪误触发
     * 连续若干帧满足条件才触发，避免短促噪声。
     * 注意：SPEAKING 期间麦克风需保持开启才能工作。
     */
    private fun detectUserInterruption(pcm: ShortArray): Boolean {
        val now = System.currentTimeMillis()
        if (now - lastInterruptTimeMs < vadCooldownMs) {
            vadOverThresholdCount = 0
            return false
        }

        // 计算 RMS 能量
        var sumSq = 0.0
        for (s in pcm) {
            val v = s.toDouble()
            sumSq += v * v
        }
        val rms = Math.sqrt(sumSq / pcm.size).toFloat()

        // 调试日志：每 25 帧（约 0.5s）打印一次 RMS 和基线，便于排查
        vadDebugCounter++
        if (vadDebugCounter >= 25) {
            vadDebugCounter = 0
            Log.d(TAG, "VAD rms=$rms baseline=$vadNoiseBaseline threshold=${vadNoiseBaseline * vadRatioThreshold}")
        }

        // 判定是否为"突增"：高于最低绝对阈值 且 高于基线倍数
        val isBurst = rms > vadAbsoluteMin && rms > vadNoiseBaseline * vadRatioThreshold

        if (isBurst) {
            vadOverThresholdCount++
            if (vadOverThresholdCount >= vadTriggerFrames) {
                vadOverThresholdCount = 0
                addLog("🔊 检测到用户说话，自动打断 (rms=$rms)")
                return true
            }
            // 突增期间不更新基线，避免把用户说话吸收进基线
        } else {
            // 能量回落，重置计数
            vadOverThresholdCount = 0
            // 平静期更新基线（指数移动平均，alpha=0.1，缓慢跟踪环境噪声）
            // 仅当 RMS 不特别高时才更新，防止偶发高能量污染基线
            if (rms < vadNoiseBaseline * vadRatioThreshold) {
                vadNoiseBaseline = vadNoiseBaseline * 0.9f + rms * 0.1f
                // 基线下限保护，避免基线过低导致过于敏感
                if (vadNoiseBaseline < 150f) vadNoiseBaseline = 150f
            }
        }
        return false
    }

    fun retryOta() {
        viewModelScope.launch(Dispatchers.IO) {
            _otaStatus.value = null
            addLog("正在重试OTA请求...")
            val otaResult = activationService.fetchOtaAsync()
            when (otaResult) {
                "activated" -> {
                    addLog("✅ 设备已激活，配置已更新，重新连接...")
                    webSocketManager.disconnect()
                    kotlinx.coroutines.delay(300)
                    startConnection()
                }
                "need_code" -> {
                    addLog("📋 设备未激活，请到 xiaozhi.me 输入验证码")
                }
                else -> {
                    val otaErr = activationService.otaError.value
                    if (otaErr != null) {
                        _otaStatus.value = otaErr
                        addLog("⚠️ $otaErr")
                    }
                }
            }
        }
    }

    /**
     * 用户在 xiaozhi.me 网页绑定设备后，手动触发重新检查 OTA。
     * 如果服务器确认已激活，则更新配置并重连。
     */
    fun checkAfterBinding() {
        viewModelScope.launch(Dispatchers.IO) {
            addLog("🔍 正在检查设备是否已绑定...")
            val otaResult = activationService.fetchOtaAsync()
            when (otaResult) {
                "activated" -> {
                    addLog("✅ 设备已激活！正在连接服务器...")
                    webSocketManager.disconnect()
                    kotlinx.coroutines.delay(300)
                    startConnection()
                }
                "need_code" -> {
                    addLog("❌ 设备还未绑定，请在 xiaozhi.me 完成添加后再点此按钮")
                }
                else -> {
                    val otaErr = activationService.otaError.value
                    if (otaErr != null) {
                        _otaStatus.value = otaErr
                        addLog("⚠️ $otaErr")
                    }
                }
            }
        }
    }

    fun skipOtaAndConnect() {
        viewModelScope.launch {
            webSocketManager.disconnect()
            _otaStatus.value = null
            addLog("🚫 跳过OTA，重置配置并直接连接...")
            // 强制重置网络配置为默认值，防止之前被改错
            configManager.resetNetworkConfig()
            // 强制设置为已激活状态
            activationService.forceActivated()
            startConnection()
        }
    }

    fun reconnectWebSocket() {
        viewModelScope.launch {
            if (webSocketManager.connectionState.value == WebSocketManager.ConnectionState.CONNECTED) {
                addLog("已经在连接中")
                return@launch
            }
            addLog("🔄 重新连接服务器...")
            webSocketManager.disconnect()
            kotlinx.coroutines.delay(500)
            startConnection()
        }
    }

    /**
     * 开启/关闭桌面宠物悬浮窗。
     * 需要悬浮窗权限（SYSTEM_ALERT_WINDOW），没有权限时引导用户去授权。
     * @return true=已发起开启/关闭操作, false=需要授权
     */
    fun togglePet(): Boolean {
        val context = getApplication<Application>()
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M && !android.provider.Settings.canDrawOverlays(context)) {
            addLog("⚠️ 需要悬浮窗权限，请在设置中开启\"显示在其他应用上层\"")
            // 引导用户授权（通过 Activity 触发，这里只返回 false 让 UI 处理）
            return false
        }
        val intent = Intent(context, FloatingPetService::class.java).apply {
            action = FloatingPetService.ACTION_TOGGLE
        }
        // Android 8+ 必须用 startForegroundService 启动前台服务，否则后台启动会被系统拒绝
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            context.startForegroundService(intent)
        } else {
            context.startService(intent)
        }
        addLog("🐾 切换桌面宠物 (当前: ${if (FloatingPetService.petVisible) "显示中" else "隐藏"})")
        return true
    }

    fun resetDeviceIdentity() {
        viewModelScope.launch {
            webSocketManager.disconnect()
            _otaStatus.value = null
            addLog("正在重置设备身份...")
            activationService.resetDeviceIdentity()
            val otaErr = activationService.otaError.value
            if (otaErr != null) {
                _otaStatus.value = otaErr
                addLog("⚠️ $otaErr")
            } else {
                addLog("✅ 设备身份已重置")
            }
            // Reconnect with current config
            startConnection()
        }
    }

    private fun addLog(message: String) {
        val current = _logMessages.value.toMutableList()
        current.add(message)
        if (current.size > 100) current.removeAt(0)
        _logMessages.value = current
    }

    override fun onCleared() {
        super.onCleared()
        (getApplication<Application>() as? XiaozhiApp)?.lastViewModel = null
        isRunning = false
        audioRecorder.destroy()
        audioPlayer.destroy()
        opusCodec.release()
        webSocketManager.destroy()
        activationService.destroy()
    }
}