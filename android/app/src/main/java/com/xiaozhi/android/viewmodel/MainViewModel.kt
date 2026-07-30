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
import com.xiaozhi.android.audio.MusicPlayerManager
import com.xiaozhi.android.audio.OpusCodec
import com.xiaozhi.android.config.ConfigManager
import com.xiaozhi.android.control.CommandExecutor
import com.xiaozhi.android.model.DeviceState
import com.xiaozhi.android.network.WebSocketManager
import com.xiaozhi.android.pet.FloatingPetService
import com.xiaozhi.android.update.UpdateManager
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
    val musicPlayer = MusicPlayerManager()
    val updateManager = UpdateManager(application)

    // 更新提醒状态：非 null 表示有可用更新，UI 弹窗提醒
    private val _updateInfo = MutableStateFlow<UpdateManager.UpdateResult?>(null)
    val updateInfo: StateFlow<UpdateManager.UpdateResult?> = _updateInfo

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
    private val vadTriggerFrames = 8            // 连续突增帧数才触发（约 160ms，媒体外放回声较大需更多确认）
    private var vadOverThresholdCount = 0
    // 动态噪声基线（RMS 指数移动平均），初始值较低
    private var vadNoiseBaseline = 300f
    // 触发倍数：当前 RMS 超过 基线 × 该倍数 且高于最低绝对阈值，才算突增
    private val vadRatioThreshold = 3.5f
    // 最低绝对能量阈值：低于此值视为静音，避免极低底噪下误触发
    private val vadAbsoluteMin = 500f
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

        // 启动后自动检查更新（延迟 3 秒，避免与启动连接争抢网络）
        viewModelScope.launch {
            kotlinx.coroutines.delay(3000)
            checkForUpdates()
        }
    }

    /**
     * 检查更新（手动或自动触发）。
     * 检测到新版本时填充 [updateInfo]，UI 据此弹出更新提醒对话框。
     */
    fun checkForUpdates() {
        if (updateManager.updateState.value == UpdateManager.UpdateState.CHECKING ||
            updateManager.updateState.value == UpdateManager.UpdateState.DOWNLOADING) {
            return
        }
        addLog("🔄 检查更新...")
        updateManager.checkForUpdates { result ->
            if (result.hasUpdate) {
                addLog("✨ 发现新版本: ${result.versionName}")
                _updateInfo.value = result
            } else {
                addLog("✅ 当前已是最新版本")
                _updateInfo.value = null
            }
        }
    }

    /**
     * 用户在更新提醒对话框点击"立即更新"。
     */
    fun startUpdateDownload() {
        val info = _updateInfo.value ?: return
        addLog("⬇️ 开始下载更新: ${info.versionName}")
        updateManager.downloadUpdate(info.downloadUrl)
    }

    /**
     * 用户在更新提醒对话框点击"稍后再说"，清除提醒状态。
     */
    fun dismissUpdateReminder() {
        _updateInfo.value = null
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
                        // 本地命令解析：直接识别常用语音命令并执行，不依赖服务器 MCP 工具调用
                        parseAndExecuteLocalCommand(text)
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
                            put("description", "【查询天气】当用户问天气、气温、下雨、穿什么衣服、是否需要带伞等问题时必须调用此工具。例如：今天天气怎么样、北京天气、明天会下雨吗。结果直接语音播报。Args: `city` - 城市名称（如北京、上海、深圳），不填则查询默认天气")
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
                            put("name", "search_web")
                            put("description", "【联网搜索】当用户问知识性问题、需要联网查询信息时调用。多源并行搜索（DuckDuckGo+Wikipedia百科），结果直接语音播报，不跳转页面。例如：量子力学是什么、红烧肉怎么做、珠穆朗玛峰有多高。Args: `query` - 搜索关键词")
                            put("inputSchema", buildJsonObject {
                                put("type", "object")
                                put("properties", buildJsonObject {
                                    put("query", buildJsonObject { put("type", "string") })
                                })
                                put("required", buildJsonArray { add("query") })
                            })
                        })
                        add(buildJsonObject {
                            put("name", "search_video")
                            put("description", "【搜索视频】当用户要求找视频、搜视频、看B站时调用。搜索B站视频，返回标题和UP主，结果直接语音播报。例如：搜一下猫猫视频、找B站上的编程教程。Args: `query` - 视频关键词")
                            put("inputSchema", buildJsonObject {
                                put("type", "object")
                                put("properties", buildJsonObject {
                                    put("query", buildJsonObject { put("type", "string") })
                                })
                                put("required", buildJsonArray { add("query") })
                            })
                        })
                        add(buildJsonObject {
                            put("name", "get_stock")
                            put("description", "【查询股票】当用户问股票行情、基金净值、股价时调用。支持股票代码（如600519）或股票名称（如贵州茅台）。结果直接语音播报。例如：贵州茅台股价、600519行情、腾讯股票。Args: `query` - 股票代码或名称")
                            put("inputSchema", buildJsonObject {
                                put("type", "object")
                                put("properties", buildJsonObject {
                                    put("query", buildJsonObject { put("type", "string") })
                                })
                                put("required", buildJsonArray { add("query") })
                            })
                        })
                        add(buildJsonObject {
                            put("name", "translate")
                            put("description", "【翻译】当用户要求翻译文本时调用。支持中英互译及其他多语言翻译。例如：翻译你好、把苹果翻译成英语、翻译成日语。Args: `text` - 要翻译的文本; `to` - 目标语言代码(en/ja/ko/fr/de/zh)")
                            put("inputSchema", buildJsonObject {
                                put("type", "object")
                                put("properties", buildJsonObject {
                                    put("text", buildJsonObject { put("type", "string") })
                                    put("to", buildJsonObject { put("type", "string") })
                                })
                                put("required", buildJsonArray { add("text") })
                            })
                        })
                        add(buildJsonObject {
                            put("name", "get_news")
                            put("description", "【获取新闻】当用户要求听新闻、看新闻、今天有什么新闻时调用。聚合百度新闻最新资讯，结果直接语音播报。例如：今天有什么新闻、科技新闻、体育新闻。Args: `query` - 新闻关键词(可选，为空则获取热点)")
                            put("inputSchema", buildJsonObject {
                                put("type", "object")
                                put("properties", buildJsonObject {
                                    put("query", buildJsonObject { put("type", "string") })
                                })
                                put("required", buildJsonArray {})
                            })
                        })
                        add(buildJsonObject {
                            put("name", "search_music")
                            put("description", "【搜索音乐】当用户要求搜索歌曲、查歌曲信息、找某歌手的歌时调用。通过网易云音乐搜索，返回歌曲名、歌手、专辑，结果直接语音播报。例如：搜一下周杰伦的歌、查一下晴天这首歌、有什么好听的歌。Args: `query` - 歌曲名或歌手名")
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
                            put("description", "【播放音乐】当用户要求播放歌曲、听音乐、放首歌时调用。在APP内直接播放，不跳转其他应用。例如：播放周杰伦的歌、来一首晴天、放一首夜曲。Args: `query` - 歌曲名或歌手名")
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

                    // 拦截 play_music：在 APP 内搜索并播放，不跳转其他应用
                    if (toolName == "play_music") {
                        val musicQuery = arguments["query"] ?: arguments["song"] ?: arguments["name"] ?: ""
                        if (musicQuery.isNotBlank()) {
                            viewModelScope.launch {
                                addLog("🎵 搜索音乐: $musicQuery")
                                val musicInfo = commandExecutor.searchMusicForPlay(musicQuery)
                                if (musicInfo != null) {
                                    addLog("▶️ 播放: ${musicInfo.name} - ${musicInfo.artist}")
                                    musicPlayer.play(musicInfo.playUrl, musicInfo.name, musicInfo.artist, musicInfo.headers)
                                    webSocketManager.sendSystemText("正在播放：${musicInfo.name}，歌手：${musicInfo.artist}")
                                } else {
                                    addLog("⚠️ 未找到音乐")
                                    webSocketManager.sendSystemText("抱歉，未找到相关音乐，请换个关键词试试")
                                }
                            }
                            buildJsonObject {
                                put("content", buildJsonArray {
                                    add(buildJsonObject {
                                        put("type", "text")
                                        put("text", "正在搜索并播放：$musicQuery")
                                    })
                                })
                            }
                        } else {
                            buildJsonObject {
                                put("content", buildJsonArray {
                                    add(buildJsonObject {
                                        put("type", "text")
                                        put("text", "播放内容为空")
                                    })
                                })
                            }
                        }
                    } else {
                        val execResult = commandExecutor.execute(toolName, arguments) { asyncResult ->
                            // 异步结果回调：将 API 查询结果通过 sendSystemText 发给 AI 语音播报
                            Log.d(TAG, "Async result for $toolName: ${asyncResult.take(80)}")
                            addLog("→ $asyncResult")
                            webSocketManager.sendSystemText(asyncResult)
                        }
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

    /**
     * 本地命令解析：从用户语音文本中识别常用命令并直接执行。
     * 这是 AI 服务器 MCP 工具调用的保底方案——即使 AI 只回复文字不调工具，
     * 本地也能识别并执行闹钟、天气、拨号等操作。
     */
    private fun parseAndExecuteLocalCommand(text: String) {
        val lower = text.lowercase().trim()
        Log.d(TAG, "Local command parsing: $text")

        // 0. 联网搜索：识别问句或搜索意图
        if (isSearchQuery(text)) {
            val query = extractSearchQuery(text)
            addLog("🔍 本地解析搜索: $query")

            // 判断用户是否明确要求跳转页面
            val wantBrowser = containsAny(text, "打开网页", "跳转", "浏览器", "链接", "网址", "网站", "页面")

            if (wantBrowser) {
                val result = commandExecutor.search(query)
                addLog("→ $result")
            } else {
                viewModelScope.launch {
                    addLog("🌐 正在联网搜索...")
                    val summary = commandExecutor.searchWeb(query)
                    if (summary.isNotBlank()) {
                        addLog("📖 搜索结果：$summary")
                        webSocketManager.sendSystemText("根据搜索结果：$summary")
                    } else {
                        addLog("⚠️ 搜索失败，建议您手动搜索")
                        webSocketManager.sendSystemText("抱歉，联网搜索暂时不可用，请稍后再试")
                    }
                }
            }
            return
        }

        // 1. 查新闻
        if (containsAny(text, "新闻", "头条", "热点", "资讯")) {
            val query = text
                .replace(Regex("""(今天|有什么|最新|最近|看|听|帮我|给我|查一下)?"""), "")
                .replace(Regex("""(新闻|头条|热点|资讯)"""), "")
                .trim()
            addLog("📰 本地解析新闻: ${query.ifBlank { "热点" }}")
            viewModelScope.launch {
                val result = commandExecutor.getNews(query)
                addLog("→ $result")
                webSocketManager.sendSystemText(result)
            }
            return
        }

        // 2. 查股票
        if (containsAny(text, "股票", "股价", "行情", "基金", "A股", "涨停", "跌")) {
            val query = text
                .replace(Regex("""(帮我|给我|查一下|看一下|查询)?"""), "")
                .replace(Regex("""(股票|股价|行情|基金|的|了)"""), "")
                .trim()
            if (query.isNotEmpty()) {
                addLog("📈 本地解析股票: $query")
                viewModelScope.launch {
                    val result = commandExecutor.getStock(query)
                    addLog("→ $result")
                    webSocketManager.sendSystemText(result)
                }
                return
            }
        }

        // 3. 搜索视频
        if (containsAny(text, "搜视频", "找视频", "B站", "b站", "bilibili", "看视频")) {
            val query = text
                .replace(Regex("""(帮我|给我|搜一下|搜索|找一下|找)?"""), "")
                .replace(Regex("""(视频|B站|b站|bilibili|的)"""), "")
                .trim()
            if (query.isNotEmpty()) {
                addLog("🎬 本地解析视频搜索: $query")
                viewModelScope.launch {
                    val result = commandExecutor.searchVideo(query)
                    addLog("→ $result")
                    webSocketManager.sendSystemText(result)
                }
                return
            }
        }

        // 4. 翻译
        if (containsAny(text, "翻译", "译成", "翻译成")) {
            val targetLang = when {
                text.contains("英语") || text.contains("英文") || text.contains("en") -> "en"
                text.contains("日语") || text.contains("日文") || text.contains("jp") -> "ja"
                text.contains("韩语") || text.contains("韩文") || text.contains("ko") -> "ko"
                text.contains("法语") || text.contains("法文") || text.contains("fr") -> "fr"
                text.contains("德语") || text.contains("德文") || text.contains("de") -> "de"
                text.contains("中文") || text.contains("汉语") -> "zh"
                else -> "en"
            }
            val content = text
                .replace(Regex("""(帮我|给我|请)?"""), "")
                .replace(Regex("""(翻译|译成|翻译成)"""), "")
                .replace(Regex("""(英语|英文|日语|日文|韩语|韩文|法语|法文|德语|德文|中文|汉语|en|jp|ko|fr|de)"""), "")
                .replace(Regex("""(成|为)"""), "")
                .trim()
            if (content.isNotEmpty()) {
                addLog("🌐 本地解析翻译: $content -> $targetLang")
                viewModelScope.launch {
                    val result = commandExecutor.translate(content, targetLang)
                    addLog("→ $result")
                    webSocketManager.sendSystemText(result)
                }
                return
            }
        }

        // 5. 设置闹钟
        if (containsAny(text, "闹钟", "设个", "设一", "叫醒", "起床", "提醒我")) {
            parseAlarmFromText(text)?.let { (hour, minute, label) ->
                addLog("🔔 本地解析闹钟: ${hour}点${minute}分")
                val result = commandExecutor.setAlarm(hour, minute, label)
                addLog("→ $result")
            }
        }

        // 6. 设置定时器
        if (containsAny(text, "倒计时", "定时", "几秒", "秒", "分钟后", "计时器")) {
            parseTimerFromText(text)?.let { (seconds, label) ->
                addLog("⏱️ 本地解析定时器: ${seconds}秒")
                val result = commandExecutor.setTimer(seconds, label)
                addLog("→ $result")
            }
        }

        // 7. 查天气
        if (containsAny(text, "天气", "气温", "下雨", "穿", "带伞", "温度")) {
            val city = extractCity(text)
            addLog("🌤️ 本地解析天气查询: ${city.ifBlank { "默认" }}")
            viewModelScope.launch {
                val result = commandExecutor.getWeatherVoice(city)
                addLog("→ $result")
                webSocketManager.sendSystemText(result)
            }
            return
        }

        // 8. 拨号
        if (containsAny(text, "打给", "拨打", "打电话", "call")) {
            val number = extractPhoneNumber(text)
            if (number.isNotEmpty()) {
                addLog("📞 本地解析拨号: $number")
                val result = commandExecutor.makeCall(number)
                addLog("→ $result")
            }
        }

        // 9. 发短信
        if (containsAny(text, "发短信", "发消息", "告诉")) {
            val match = Regex("""(?:给|跟|发)?([\d]{7,11})""").find(text)
            if (match != null) {
                val phone = match.groupValues[1]
                addLog("📱 本地解析短信: $phone")
                val result = commandExecutor.sendSms(phone, "")
                addLog("→ $result")
            }
        }

        // 10. 搜索音乐信息（搜歌、查歌、找歌）
        // 注意：播放音乐统一由服务器 MCP play_music 工具调用处理，本地不再执行播放，
        // 避免本地与 MCP 同时触发导致"显示未找到但实际在播放"的矛盾，以及重复播放。
        val musicQuery = extractMusicQuery(text)
        if (musicQuery.isNotEmpty() && containsAny(text, "歌", "音乐") &&
            containsAny(text, "搜", "搜索", "查一下", "查查", "找一下", "有什么")) {
            addLog("🎵 本地解析搜索音乐: $musicQuery")
            viewModelScope.launch {
                val result = commandExecutor.searchMusic(musicQuery)
                addLog("→ $result")
                webSocketManager.sendSystemText(result)
            }
        }
    }

    /**
     * 判断是否为需要联网搜索的问题。
     * 触发条件：问句（什么/怎么/为什么/多少...）或 搜索意图（搜/查/找...）
     */
    private fun isSearchQuery(text: String): Boolean {
        val questionWords = listOf("什么", "怎么", "如何", "为什么", "谁", "哪", "多少", "几", "吗", "呢", "是不是")
        val searchWords = listOf("搜", "搜索", "查一下", "查查", "找一下", "百度", "谷歌", "查查看")
        
        val hasQuestion = questionWords.any { text.contains(it) }
        val hasSearchIntent = searchWords.any { text.contains(it) }
        
        // 问句且长度>5，或明确搜索意图
        return (hasQuestion && text.length > 5) || hasSearchIntent
    }

    /**
     * 从文本中提取搜索关键词（去掉问句词）
     */
    private fun extractSearchQuery(text: String): String {
        return text
            .replace(Regex("""(请问|帮我|给我|我想|我要|麻烦|请你)?"""), "")
            .replace(Regex("""(搜一下|搜索|查一下|查查|找一下|百度|谷歌)"""), "")
            .replace(Regex("""(是什么|怎么样|如何|为什么|多少|是谁|在哪)"""), "")
            .replace(Regex("""(吗|呢|啊|吧|呀)"""), "")
            .trim()
            .ifBlank { text }
    }

    private fun containsAny(text: String, vararg keywords: String): Boolean {
        return keywords.any { text.contains(it, ignoreCase = true) }
    }

    /**
     * 从文本中解析闹钟时间。
     * 支持格式：
     *   "7点的闹钟" → 7:00
     *   "设个7点半的闹钟" → 7:30
     *   "明早6点叫我" → 6:00
     *   "半小时后提醒我" → 自动计算
     *   "18:30的闹钟" → 18:30
     */
    private fun parseAlarmFromText(text: String): Triple<Int, Int, String>? {
        // 匹配 "X点Y分" / "X点半" / "X点"
        val timeRegex = Regex("""(\d{1,2})\s*(?:点|时|:|：)\s*(半|(\d{1,2})\s*(?:分|分钟))?""")
        val match = timeRegex.find(text) ?: return null
        
        val hour = match.groupValues[1].toIntOrNull() ?: return null
        val minuteStr = match.groupValues[3]
        val minute = when {
            match.groupValues[2] == "半" -> 30
            minuteStr.isNotEmpty() -> minuteStr.toIntOrNull() ?: 0
            else -> 0
        }
        
        if (hour !in 0..23 || minute !in 0..59) return null
        
        // 提取标签（闹钟用途）
        val label = when {
            text.contains("起床") -> "起床闹钟"
            text.contains("叫醒") -> "叫醒闹钟"
            text.contains("提醒") -> "提醒闹钟"
            else -> ""
        }
        
        return Triple(hour, minute, label)
    }

    /**
     * 从文本中解析定时器秒数。
     * 支持："5分钟" → 300, "30秒" → 30, "1小时" → 3600
     */
    private fun parseTimerFromText(text: String): Pair<Int, String>? {
        // 匹配 "N分钟" / "N秒" / "N小时"
        val minMatch = Regex("""(\d+)\s*(?:分钟|分|min)""").find(text)
        if (minMatch != null) {
            val mins = minMatch.groupValues[1].toIntOrNull() ?: return null
            return Pair(mins * 60, "定时器")
        }
        val secMatch = Regex("""(\d+)\s*(?:秒|秒钟|sec)""").find(text)
        if (secMatch != null) {
            val secs = secMatch.groupValues[1].toIntOrNull() ?: return null
            return Pair(secs, "定时器")
        }
        val hourMatch = Regex("""(\d+)\s*(?:小时|钟头|h)""").find(text)
        if (hourMatch != null) {
            val hours = hourMatch.groupValues[1].toIntOrNull() ?: return null
            return Pair(hours * 3600, "定时器")
        }
        return null
    }

    /**
     * 从文本中提取城市名
     */
    private fun extractCity(text: String): String {
        // 常见城市名列表（简化版）
        val cities = listOf(
            "北京", "上海", "广州", "深圳", "杭州", "成都", "武汉", "南京",
            "西安", "重庆", "天津", "苏州", "郑州", "长沙", "青岛", "大连",
            "厦门", "福州", "宁波", "合肥", "无锡", "昆明", "哈尔滨", "沈阳",
            "石家庄", "济南", "长春", "太原", "贵阳", "南宁", "兰州", "南昌",
            "珠海", "东莞", "佛山", "中山", "惠州", "温州", "嘉兴", "绍兴",
            "洛阳", "桂林", "柳州", "扬州", "徐州", "烟台", "潍坊", "唐山"
        )
        return cities.firstOrNull { text.contains(it) } ?: ""
    }

    /**
     * 从文本中提取电话号码
     */
    private fun extractPhoneNumber(text: String): String {
        // 匹配手机号（1开头11位）或座机
        val mobileMatch = Regex("""1[3-9]\d{9}""").find(text)
        if (mobileMatch != null) return mobileMatch.value
        // 匹配带区号座机
        val landlineMatch = Regex("""0\d{2,3}-?\d{7,8}""").find(text)
        if (landlineMatch != null) return landlineMatch.value
        // 匹配文本中的数字序列
        val digitMatch = Regex("""(\d{7,11})""").find(text)
        return digitMatch?.value ?: ""
    }

    /**
     * 从文本中提取音乐查询关键词
     */
    private fun extractMusicQuery(text: String): String {
        // 去掉 "播放"、"放"、"听" 等动词
        val cleaned = text
            .replace(Regex("""(请|帮我|给我)?(播放|放|听|来|要|我想|我要)?"""), "")
            .replace(Regex("""(一首歌|首歌|音乐|歌曲|的歌)"""), "")
            .replace(Regex("""(吧|一下|下|来)"""), "")
            .trim()
        return cleaned
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
        musicPlayer.release()
        updateManager.destroy()
    }
}