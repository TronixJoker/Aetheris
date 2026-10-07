package com.xiaozhi.android.viewmodel

import android.app.Application
import android.content.Context
import android.content.Intent
import android.media.AudioManager
import android.os.Build
import android.os.SystemClock
import android.util.Log
import androidx.lifecycle.AndroidViewModel
import androidx.lifecycle.viewModelScope
import com.xiaozhi.android.XiaozhiApp
import com.xiaozhi.android.activation.ActivationService
import com.xiaozhi.android.audio.AudioPlayer
import com.xiaozhi.android.audio.AudioRecorder
import com.xiaozhi.android.audio.BargeInPolicy
import com.xiaozhi.android.audio.EndpointGraceCoordinator
import com.xiaozhi.android.audio.ListenGatePolicy
import com.xiaozhi.android.audio.ListeningSessionWatchdogPolicy
import com.xiaozhi.android.audio.MicCaptureMonitor
import com.xiaozhi.android.audio.MicDiagnosticsFormatter
import com.xiaozhi.android.audio.MicForegroundPolicy
import com.xiaozhi.android.audio.MicSelfHealPolicy
import com.xiaozhi.android.audio.MusicPlayerManager
import com.xiaozhi.android.audio.OpusCodec
import com.xiaozhi.android.audio.XiaozhiForegroundService
import com.xiaozhi.android.config.ConfigManager
import com.xiaozhi.android.control.CommandExecutor
import com.xiaozhi.android.model.DeviceState
import com.xiaozhi.android.network.ResultWaitWatchdogPolicy
import com.xiaozhi.android.network.WebSocketManager
import com.xiaozhi.android.pet.FloatingPetService
import com.xiaozhi.android.update.UpdateManager
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.Job
import kotlinx.coroutines.flow.*
import kotlinx.coroutines.launch
import kotlinx.serialization.json.*

class MainViewModel(application: Application) : AndroidViewModel(application) {
    companion object {
        private const val TAG = "MainViewModel"
        private val json = Json { ignoreUnknownKeys = true }

        // B1：启动聆听前观测"疑似他方采集客户端"的最长等待（方案 B1 规格：最多等 2s。
        // v2.3.7 回归修复后 B1 降级为「提示不拦截」——超时仅提示，不再取消本次聆听，
        // 麦克风真伪由 B2 首帧实证判定）
        private const val MIC_FREE_WAIT_TIMEOUT_MS = 2000L

        // v2.3.9.1 端点自适应/首包提速参数：
        // TTS 出声结束后的回声衰减观察窗——窗内开始聆听视为有回声风险（完整 holdoff）；
        // 超过该窗才开始的聆听（唤醒/手动）视为无回声风险（快速放行窗 200ms）
        private const val TTS_ECHO_DECAY_MS = 3000L
        // 端点收尾后多久内又开始聆听视为「秒续说」（上句大概率被切早，上调宽限）
        private const val RESUME_AFTER_FINALIZE_MS = 2500L

        // B1 配套：热词检测器停止后给系统 SpeechRecognizer 的麦克风归还窗口。
        // 识别器 stopListening/destroy 后系统异步归还音频输入，短暂等待可显著降低
        // B1 观测到残留会话的概率（等待期间事件驱动，不会阻塞真实释放事件）
        private const val WAKE_RELEASE_GRACE_MS = 200L
    }

    private val configManager = ConfigManager(application)
    val activationService = ActivationService(configManager)
    val webSocketManager = WebSocketManager()
    private val audioRecorder = AudioRecorder(application)

    // ==================== 方案 B 快速加固（架构师 v1 报告） ====================

    // B1/B5：麦克风采集会话监听器——事件驱动等待"无他方采集客户端"，
    // 并提供 activeRecordingConfigurations 摘要给观测埋点
    private val micMonitor = MicCaptureMonitor(
        application.getSystemService(Context.AUDIO_SERVICE) as AudioManager
    )

    // B2：连续"静音自愈"轮数（由 1.5s 健康检查 / 空 stt 触发的重建计入；
    // 检测到有效音频或新一轮聆听时归零）。轮次上限后停止自动重启并明确提示。
    @Volatile private var silentRounds = 0

    // B4：本次聆听是否由 ViewModel 拉起了兜底前台服务（宠物未启用场景），聆听结束后回收
    @Volatile private var micFallbackServiceStarted = false

    private val audioPlayer = AudioPlayer()
    private val opusCodec = OpusCodec()
    private val commandExecutor = CommandExecutor(application)
    val musicPlayer = MusicPlayerManager()
    val updateManager = UpdateManager(application)

    // 热词唤醒检测器（检测"珩杬"自动触发聆听）
    private var wakeWordDetector: com.xiaozhi.android.audio.WakeWordDetector? = null
    private var wakeWordJob: kotlinx.coroutines.Job? = null

    // 更新提醒状态：非 null 表示有可用更新，UI 在设置入口显示红点提醒
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
    // 是否已自动开启过聆听（每次进入APP只自动开启一次，避免反复打断）
    private var hasAutoStartedListening = false

    // ==================== 打断灵敏度治理（v2.3.9）：Barge-in 判定 + 聆听上传门槛 ====================
    // 旧实现（内联 RMS 判定：绝对阈值 500 + 8 帧约 160ms）过灵敏，环境噪音与
    // TTS 回声都会触发打断，形成「噪音→识别→应答→误打断」循环。
    // 治理：判定逻辑下沉为纯 Kotlin 策略类（可单测），VM 只做状态接线——
    //  - [BargeInPolicy]：能量门槛 500→1000、时长门槛 160ms→480ms（有效人声才允许打断）、
    //    TTS start 豁免窗 1s→1.5s、触发冷却 2s（防抖）、基线下限 150→300；
    //  - [ListenGatePolicy]：聆听期间低于门槛的噪音不再上传（收紧识别触发条件），
    //    带预滚防丢语音起始、带 keepalive 防 1005 空闲断链、带 holdoff 挡回声尾音。
    // 参数语义与根因详见各类注释。
    private val bargeInPolicy = BargeInPolicy()
    private val listenGate = ListenGatePolicy()
    // 播放器是否正在实际出声（AudioPlayer.isPlayingState 回放最新值）：
    // 传入 [BargeInPolicy.process] 用于回声余量判定（播放中→更高能量门槛）
    @Volatile
    private var ttsPlaybackActive = false
    // 调试：SPEAKING 期间每隔若干帧打印一次 RMS/基线，便于真机排查
    private var vadDebugCounter = 0

    // ==================== 端点自适应收尾（v2.3.9.1「说完→出结果」提速） ====================
    // 根因：v2.3.9 把本地 VAD 静音判定固定收紧到 1.6s，所有用户说完后都要等满
    // 1.6s 才 stopListening 通知服务端出结果。优化：静音判定回调 1.2s（切段）+
    // [EndpointGracePolicy] 弹性宽限（300-400ms 自适应）负责"真的说完了"的收尾——
    // 宽限期内续说不停机（句中停顿不切断），宽限满才通知服务端，治理效果不回退。
    // 帧级续说撤销收尾后必须补挂「尾扫兜底计时」（评审 🔴-1，见 scheduleEndpointTailScan），
    // 保证短促噪音不成段时也能兜底收尾，聆听态永不永久挂起。
    // VM 只做状态接线；世代/在途判定下沉 [EndpointGraceCoordinator]（纯逻辑可单测），
    // 伸缩规则见 [EndpointGracePolicy] 类注释。
    private val endpointGrace = com.xiaozhi.android.audio.EndpointGracePolicy()
    /** 端点收尾状态机：世代核对 + 在途收尾判定 + 宽限伸缩联动（VAD 线程/主线程混用，内部原子化） */
    private val endpointCoordinator = com.xiaozhi.android.audio.EndpointGraceCoordinator(endpointGrace)
    /** 在途的收尾任务句柄：用户手动停止/新会话启动时撤销，防止误杀新聆听会话 */
    @Volatile
    private var pendingEndpointJob: Job? = null
    /** 最近一次端点干净收尾时刻（elapsedRealtime）：供「收尾后秒续说→上调宽限」判定 */
    @Volatile
    private var lastEndpointFinalizeElapsed = 0L
    /** 最近一次 TTS 实际出声结束时刻：供聆听会话启动时的回声风险分级判定 */
    @Volatile
    private var lastTtsPlaybackEndElapsed = 0L

    private val _otaStatus = MutableStateFlow<String?>(null)
    val otaStatus: StateFlow<String?> = _otaStatus

    // ==================== 本地 VAD（sherpa-onnx） ====================
    // 客户端 VAD：说完话自动停止识别，不再依赖服务端判定。
    // 注：「人物识别（声纹）」已彻底移除（2026-09 派单）：其 CAM++ 模型加载
    //   （28MB / 1-2s）与每句串行推理原本拖慢「说完→出结果」链路，现已连同
    //   模型资产、配置项、设置页 UI 一并清除，不留开关；老用户本地残留的
    //   声纹档案由 [com.xiaozhi.android.audio.LegacySpeakerDataCleaner] 一次性清理。
    private var speechEndDetector: com.xiaozhi.android.audio.SpeechEndDetector? = null
    @Volatile private var vadAutoStopEnabled = true

    // 防止 init() 被重复调用（Compose 重组会多次执行），避免重复 collect 和连接
    private var isInitialized = false

    fun init() {
        if (isInitialized) return
        isInitialized = true
        // 注册到 Application，供桌面宠物点击时触发聆听
        (getApplication<Application>() as? XiaozhiApp)?.lastViewModel = this

        // ===== B2 回调接入：AudioRecorder 首帧实证事件 → 观测 + 兜底提示 =====
        // 注：回调在 AudioRecorder 的 IO 读帧协程里触发，需切主线程操作 UI 状态
        audioRecorder.onSilentRebuild = { round ->
            viewModelScope.launch(Dispatchers.Main) {
                dumpMicDiagnostics("FIRST_FRAME_SILENT_R$round")
                addLog("⚠️ 检测到麦克风静音，已快速重建采集（第 $round/${MicSelfHealPolicy.MAX_SILENT_ROUNDS} 轮）...")
            }
        }
        audioRecorder.onMicSeized = {
            viewModelScope.launch(Dispatchers.Main) {
                // B2 轮次上限触发：连续 3 轮首帧仍全零 → 不再无限自愈，明确提示并复位
                dumpMicDiagnostics("FIRST_FRAME_SILENT_GIVE_UP")
                addLog(MicSelfHealPolicy.USER_MESSAGE)
                if (_deviceState.value == DeviceState.LISTENING) {
                    stopListening()
                }
            }
        }
        // B5 观测埋点：VOICE_COMMUNICATION 持续全零触发音源降级（设备级路由问题证据）
        audioRecorder.onSourceEscalated = {
            viewModelScope.launch(Dispatchers.Main) {
                dumpMicDiagnostics("SOURCE_ESCALATED_TO_MIC")
            }
        }

        // 后台初始化本地 VAD（IO 线程加载模型，不阻塞连接），
        // 并顺带一次性清理历史版本遗留的声纹档案（人物识别已移除）
        initSpeechModules()

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
                        // 本地 VAD：喂给端点检测器（说完话自动停止，仅在 arm 状态消费；
                        // 端点检测需要完整音频，不受上传门槛影响）
                        speechEndDetector?.feed(pcm)
                        // 正常聆听：上传音频前先过 [ListenGatePolicy] 门槛——
                        // 低于门槛的环境噪音不再上传（收紧"识别触发条件"，
                        // 噪音不再被服务端当作语音转写），开门瞬间回放预滚不丢语音起始
                        if (audioChannelOpened) {
                            val nowMs = SystemClock.elapsedRealtime()
                            val rms = BargeInPolicy.rmsOf(pcm)
                            for (frame in listenGate.process(nowMs, rms, pcm)) {
                                val encoded = opusCodec.encode(frame)
                                if (encoded != null) {
                                    webSocketManager.sendAudio(encoded)
                                }
                            }
                        }
                    }
                    DeviceState.SPEAKING -> {
                        // AI 播报期间：用 [BargeInPolicy] 判定"有效人声"（时长+能量双门槛，
                        // 播放中叠加回声余量）才允许自动打断，环境噪音与 TTS 回声不再中断输出
                        val nowMs = SystemClock.elapsedRealtime()
                        val rms = BargeInPolicy.rmsOf(pcm)
                        vadDebugCounter++
                        if (vadDebugCounter >= 75) {
                            vadDebugCounter = 0
                            Log.d(TAG, "Barge-in 观测: rms=$rms baseline=${bargeInPolicy.baseline} playing=$ttsPlaybackActive")
                        }
                        if (bargeInPolicy.process(nowMs, rms, ttsPlaybackActive)) {
                            addLog("🔊 检测到有效人声（能量+持续时长达标），自动打断")
                            interruptSpeaking()
                        }
                    }
                    else -> { /* IDLE / CONNECTING 不处理 */ }
                }
            }
        }

        // 播放器出声状态：回放最新值，供 [BargeInPolicy] 做回声余量判定；
        // 出声→静音的下降沿记录 [lastTtsPlaybackEndElapsed]，
        // 供聆听会话启动时的 holdoff 回声风险分级（v2.3.9.1 首包提速）
        viewModelScope.launch {
            audioPlayer.isPlayingState.collect { playing ->
                if (!playing && ttsPlaybackActive) {
                    lastTtsPlaybackEndElapsed = SystemClock.elapsedRealtime()
                }
                ttsPlaybackActive = playing
            }
        }

        // 热词唤醒：IDLE 状态持续检测"珩杬"，检测到自动开始聆听
        viewModelScope.launch {
            _deviceState.collect { state ->
                // 本地 VAD 门控：仅聆听状态下检测语音结束
                val detector = speechEndDetector
                if (state == DeviceState.LISTENING) detector?.arm() else detector?.disarm()
                wakeWordJob?.cancel()
                when (state) {
                    DeviceState.IDLE -> {
                        // 延迟启动，避免 TTS 结束后自动继续聆听的短暂 IDLE 误触发
                        wakeWordJob = viewModelScope.launch {
                            kotlinx.coroutines.delay(2000)
                            if (_deviceState.value == DeviceState.IDLE) {
                                startWakeWordDetection()
                            }
                        }
                    }
                    else -> {
                        wakeWordDetector?.stop()
                    }
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
     * 启动热词检测（热词识别是本地 SpeechRecognizer，不依赖服务器连接）。
     * SpeechRecognizer 占用麦克风，需确保 AudioRecorder 已停止。
     *
     * v2.3.7 回归修复：允许在 DISCONNECTED 状态运行。
     * 原因：服务端对长时间无上行音频的连接会主动断开（1005 现象），
     * 修复后为避免重连刷屏会在确认空闲后暂停自动重连（见 WebSocketManager），
     * 若热词仍被 CONNECTED 门控，断连期间热词将静默失效。
     * 放开后：热词持续可用，唤醒后经 startListening 的重连流程按需恢复连接。
     */
    private fun startWakeWordDetection() {
        val wsState = webSocketManager.connectionState.value
        if (wsState != WebSocketManager.ConnectionState.CONNECTED &&
            wsState != WebSocketManager.ConnectionState.DISCONNECTED
        ) return
        if (!audioChannelOpened) return
        if (wakeWordDetector == null) {
            wakeWordDetector = com.xiaozhi.android.audio.WakeWordDetector(
                context = getApplication(),
                onWakeWordDetected = {
                    addLog("🔔 检测到唤醒词「珩杬」，开始聆听...")
                    wakeWordDetector?.stop()
                    viewModelScope.launch {
                        kotlinx.coroutines.delay(500)
                        startListening()
                    }
                }
            )
            // B3：权限不足 / 连续音频错误导致热词检测停止自动重启时，给用户明确提示
            wakeWordDetector?.onErrorFatal = { message ->
                viewModelScope.launch(Dispatchers.Main) { addLog("❌ $message") }
            }
        }
        wakeWordDetector?.start()
    }

    /**
     * 检查更新（手动或自动触发）。
     * 检测到新版本时填充 [updateInfo]，UI 据此在设置入口显示红点提醒。
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
                    // 进入APP后自动开始聆听（仅首次），说话即识别内容
                    if (!hasAutoStartedListening) {
                        hasAutoStartedListening = true
                        viewModelScope.launch {
                            kotlinx.coroutines.delay(300)
                            if (_deviceState.value == DeviceState.IDLE) {
                                tryStartListeningInternal()
                            }
                        }
                    }
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
                            // v2.3.10：TTS 开始 = 两个等待窗口全部解除（无论 stt 是否
                            // 先到——服务端也可能直接开说），撤销所有结果等待看门狗
                            cancelResultWaitWatchdogs()
                            // 重置播放器：清除上一轮打断后可能残留的音频，恢复播放
                            audioPlayer.resetForNewPlayback()
                            // TTS 开始：开启豁免窗（1.5s，旧实现实际只有 1s）——
                            // AEC 收敛期 + TTS 开场能量冲击期不判定打断、不吸基线，
                            // 防止自身回声被误判为用户语音（见 [BargeInPolicy] 类注释）
                            bargeInPolicy.onTtsStart(SystemClock.elapsedRealtime())
                            // 保持/启动麦克风录音，用于自动打断检测
                            if (!audioRecorder.isRunning()) {
                                audioRecorder.start()
                            }
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
                        // （原「声纹标注说话人前缀」已随人物识别功能移除）
                        addLog("用户: $text")
                        // 收到识别结果后切到 THINKING：停止"聆听中"粒子，
                        // 宠物显示思考动画，让用户知道"说完了，正在处理"
                        _deviceState.value = DeviceState.THINKING
                        // v2.3.10 看门狗接力：首个结果已到 → 撤销阶段一（收尾→结果），
                        // 改守阶段二"stt→tts start"窗口——LLM/TTS 链路挂起时
                        // 「正在思考」不再无限卡住（ResultWaitWatchdogPolicy）
                        resultWaitJob?.cancel()
                        armTtsStartWaitWatchdog()
                        // 本地命令解析：直接识别常用语音命令并执行，不依赖服务器 MCP 工具调用
                        parseAndExecuteLocalCommand(text)
                    } else {
                        // 空识别结果不能静默吞掉：给用户明确反馈，并触发一次录音自愈重启
                        // （服务端返回空文本通常意味着收到的是无效/全零音频，重开录音可恢复路由）
                        // B5 观测埋点：空 stt = 疑似全零音频送达服务端，dump 快照供用户反馈闭环
                        dumpMicDiagnostics("EMPTY_STT")
                        addLog("⚠️ 未识别到内容，请靠近手机再说一次")
                        Log.w(TAG, "Received empty stt result, restarting capture for self-heal")
                        if (_deviceState.value == DeviceState.LISTENING && audioRecorder.isRunning()) {
                            audioRecorder.stop()
                            viewModelScope.launch {
                                kotlinx.coroutines.delay(400)
                                if (_deviceState.value == DeviceState.LISTENING) {
                                    audioRecorder.start()
                                }
                            }
                        }
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
                            put("description", "【搜索视频】当用户要求找视频、搜视频时调用。搜索B站视频，返回带序号的列表语音播报，用户可接着说「播放第几个」。例如：搜一下猫猫视频、找编程教程。Args: `query` - 视频关键词")
                            put("inputSchema", buildJsonObject {
                                put("type", "object")
                                put("properties", buildJsonObject {
                                    put("query", buildJsonObject { put("type", "string") })
                                })
                                put("required", buildJsonArray { add("query") })
                            })
                        })
                        add(buildJsonObject {
                            put("name", "play_video")
                            put("description", "【播放视频】当用户要求播放、观看、看视频时必须调用此工具（而不是只播报文字）。会在手机上打开视频播放界面并自动播放。三种用法：①用户指定序号（先 search_video 过）→ 传 index；②直接给视频名 → 传 query（自动搜索取第一个）；③已知B站视频ID → 传 bvid。例如：播放第2个视频（index=2）、播放流浪地球（query=流浪地球）。Args: `index` - 序号(1-5，可选)；`query` - 视频关键词(可选)；`bvid` - B站视频ID(可选)")
                            put("inputSchema", buildJsonObject {
                                put("type", "object")
                                put("properties", buildJsonObject {
                                    put("index", buildJsonObject { put("type", "integer") })
                                    put("query", buildJsonObject { put("type", "string") })
                                    put("bvid", buildJsonObject { put("type", "string") })
                                })
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
            DeviceState.THINKING -> {
                addLog("⏳ 正在思考中，请稍候...")
            }
            DeviceState.WAITING_RESULT -> {
                // v2.3.10：收尾→结果窗口的等待态，与 THINKING 同为"轮次进行中"，
                // 点按不切换状态；若服务端结果迟迟不到，看门狗（≤6s）会自动恢复聆听
                addLog("⏳ 正在识别中，请稍候...")
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
        viewModelScope.launch { tryStartListeningInternal() }
    }

    private suspend fun tryStartListeningInternal() {
        // 已在聆听中 → 忽略重复触发（多路径并发：自动续听 / 热词唤醒 / 手动点按 / 桌面宠物）
        if (_deviceState.value == DeviceState.LISTENING) return
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
        // ===== B1 观测等待（v2.3.7 回归修复：降级为「提示不拦截」） =====
        // 回归根因（两个都成立，任一都会导致误判）：
        // 1) 自身会话误判：AudioManager.activeRecordingConfigurations /
        //    AudioRecordingCallback 会把本 APP 自己的 AudioRecord 会话也上报，
        //    且 AudioRecordingConfiguration 无公开 UID 可区分调用方。上一轮录音的
        //    VOICE_COMMUNICATION 会话在列表中残留（或尚未释放）时被算作"他方"——
        //    用户埋点 sess=10489 src=VOICE_COMMUNICATION 正是自家音源特征；
        // 2) 系统 SpeechRecognizer 常驻不释放：热词检测器停掉后，系统识别服务的
        //    采集会话释放是异步的且部分 ROM 长时间不归还，2s 预检必然超时。
        // 旧逻辑超时即取消本次聆听 → 用户点按开始对话必然失败 → 完全无法对话。
        //
        // 修复原则：B1 只做观测与短暂等待，超时仅提示，绝不拦截本次聆听；
        // 麦克风真伪由 B2 首帧实证判定（300ms 全零 → 换音源重建 → 轮次上限自愈）。
        // 1) 先停热词检测器：stop() 已改为主线程同步执行（stopListening + destroy
        //    + removeCallbacks 清退队列里的重启任务），返回时释放动作已发出；
        // 2) 取消挂起的 wakeWordJob：防止 B1 等待期间 IDLE 态的 2s 定时任务
        //    又把热词检测器拉起来抢麦克风（状态此时仍为 IDLE）。
        val wakeDetector = wakeWordDetector
        wakeWordJob?.cancel()
        val wakeWasRunning = wakeDetector?.isRunning == true
        wakeDetector?.stop()
        if (wakeWasRunning) {
            // 给系统一小段归还窗口：SpeechRecognizer 释放是异步的，
            // 200ms 足够让 destroy 的释放动作反映到活跃会话列表，
            // 避免 B1 一进等待就撞上必然存在的残留会话而白耗等待预算
            kotlinx.coroutines.delay(WAKE_RELEASE_GRACE_MS)
        }
        // 3) 排除自身会话后再判定（AudioRecorder 记录了最近一次自身 AudioRecord 会话 ID）
        if (!micMonitor.awaitMicFree(MIC_FREE_WAIT_TIMEOUT_MS, audioRecorder.activeAudioSessionIds())) {
            // ⚠️ 降级语义：仅观测埋点 + 用户提示，仍照常启动录音；
            //    真被抢占时 B2 首帧实证（全零）会自动自愈或明确给出占用结论
            dumpMicDiagnostics("B1_BUSY_HINT")
            addLog("⚠️ 麦克风可能被其他应用/系统服务占用（等待 ${MIC_FREE_WAIT_TIMEOUT_MS / 1000}s），仍尝试启动聆听；若录到静音将自动自愈")
            Log.w(TAG, "B1 疑似占用（不拦截）: ${micMonitor.dumpActiveConfigurations()}")
        }

        // ===== B4 麦克风资格兜底：宠物悬浮窗未启用时拉起 microphone 类型前台服务 =====
        ensureMicForegroundService()

        // 先重置上传门槛再切状态（评审 🟡 换序竞态修复）：若先切 LISTENING 再重置 gate，
        // 已在队列中的一帧音频（20ms）会以旧门状态被处理——极端情况下旧门仍开着，
        // 会放行一帧陈旧音频；先重置保证新状态下的第一帧必然走新 holdoff 窗。
        // holdoff 回声风险分级（v2.3.9.1 首包提速）：TTS 出声中/刚结束（3s 衰减窗内）
        // → 完整 600ms 回声衰减窗（治理效果不变）；冷启动/唤醒等无近期 TTS 场景
        // → 200ms 快速放行窗，首包提前 400ms（语音起始仍由预滚兜底不丢失）
        val gateStartMs = SystemClock.elapsedRealtime()
        val echoRisk = ttsPlaybackActive ||
            (gateStartMs - lastTtsPlaybackEndElapsed < TTS_ECHO_DECAY_MS)
        listenGate.onListeningStart(gateStartMs, echoRisk)
        // 秒续说上调宽限（v2.3.9.1 端点自适应）：上一轮收尾后 2.5s 内又开始说话，
        // 大概率上句在宽限外被切早了（意犹未尽）→ 抬宽本轮收尾宽限（自适应上浮）
        if (lastEndpointFinalizeElapsed > 0 &&
            gateStartMs - lastEndpointFinalizeElapsed < RESUME_AFTER_FINALIZE_MS
        ) {
            endpointGrace.onResumeWithinGrace()
        }
        // 撤销上一会话遗留的在途收尾任务：防止旧任务在新会话中误触发 stopListening
        // （任务内有世代号+状态双保险，此处显式取消是最直接的防线）
        pendingEndpointJob?.cancel()
        endpointCoordinator.reset()
        _deviceState.value = DeviceState.LISTENING
        webSocketManager.sendListenStart("auto")
        if (!audioRecorder.start()) {
            // 启动失败：等 500ms 再重试一次（麦克风可能刚释放还没就绪）
            addLog("⚠️ 麦克风启动失败，重试中...")
            kotlinx.coroutines.delay(500)
            if (!audioRecorder.start()) {
                dumpMicDiagnostics("AUDIO_RECORD_START_FAIL")
                addLog("❌ 麦克风启动失败，可能被其他应用占用，请重试")
                _deviceState.value = DeviceState.IDLE
                webSocketManager.sendListenStop()
                return
            }
        }
        addLog("🎤 开始聆听...")
        // 会话级兜底看门狗（v2.3.11）：正常/自动续听/唤醒路径进入聆听后挂载，
        // 保证本轮聆听无论如何都在 MAX_LISTEN_SESSION_MS 内收敛
        armListeningSessionWatchdog()
        // B2：新一轮聆听重置"连续静音自愈轮数"
        silentRounds = 0
        // 麦克风健康自检：1.5 秒后若仍无任何有效音频（数字静音），进入带轮次上限的自愈流程
        scheduleMicHealthCheck()
    }

    /** 麦克风健康自检任务（每次开始聆听时重新调度） */
    private var micHealthJob: kotlinx.coroutines.Job? = null

    /**
     * 自愈机制：聆听开始 1.5 秒后检查麦克风是否真正在输出音频。
     * "启动成功但读到全零"是麦克风被占用/路由失败的典型表现
     * （真实麦克风必然有底噪，不会是绝对零）。
     * B2 改造：失效后进入 [rebuildCaptureAfterSilence]——带轮次上限的自愈，
     * 连续 [MicSelfHealPolicy.MAX_SILENT_ROUNDS] 轮仍静音则停止自动重启并明确提示。
     */
    private fun scheduleMicHealthCheck() {
        micHealthJob?.cancel()
        micHealthJob = viewModelScope.launch {
            kotlinx.coroutines.delay(1500)
            if (_deviceState.value != DeviceState.LISTENING) return@launch
            if (!audioRecorder.isRunning()) return@launch
            if (audioRecorder.hasAudioSinceStart()) {
                // 已有有效音频 → 重置连续静音轮数（B2：正常使用即清零）
                silentRounds = 0
                return@launch
            }
            rebuildCaptureAfterSilence()
        }
    }

    /**
     * B2 静音自愈统一入口（1.5s 健康检查 / 空 stt 共用）：
     *  - 轮次未达上限：停止录音 → 等 400ms → 重启 → 继续自检；
     *  - 达到上限（连续 3 轮静音）：停止无限自愈，dump 观测埋点，
     *    明确提示"麦克风被占用"，把控制权交还用户。
     */
    private suspend fun rebuildCaptureAfterSilence() {
        silentRounds++
        if (!MicSelfHealPolicy.shouldAutoRebuild(silentRounds)) {
            // B2：不再无限自愈
            dumpMicDiagnostics("SELF_HEAL_GIVE_UP")
            addLog(MicSelfHealPolicy.USER_MESSAGE)
            if (_deviceState.value == DeviceState.LISTENING) {
                stopListening()
            }
            return
        }
        dumpMicDiagnostics("SELF_HEAL_ROUND_$silentRounds")
        addLog("⚠️ 检测到麦克风无输入，自动恢复中（第 $silentRounds/${MicSelfHealPolicy.MAX_SILENT_ROUNDS} 轮）...")
        audioRecorder.stop()
        kotlinx.coroutines.delay(400)
        if (_deviceState.value == DeviceState.LISTENING) {
            if (audioRecorder.start()) {
                addLog("✅ 麦克风已重启，请说话")
                scheduleMicHealthCheck() // 恢复后再自检一轮，确认真正恢复
            } else {
                dumpMicDiagnostics("SELF_HEAL_RESTART_FAIL")
                // v2.3.11 悬挂治理：重启失败后聆听态不得挂着——录音已死，端点链路
                //（切段需要静音帧喂入）必然永不完成，收尾看门狗也要干等 60s。
                // 立即退出聆听态，把控制权交还用户（提示明确，用户点按即重开）
                addLog("❌ 麦克风恢复失败，已自动停止聆听（请点按重试；其他应用可能占用麦克风）")
                stopListening()
            }
        }
    }

    // ==================== B4 兜底前台服务 ====================

    /**
     * B4 麦克风资格兜底：宠物悬浮窗未启用而后台聆听时，
     * 进程内没有带 microphone 类型的前台服务，Android 11+ 的 while-in-use
     * 策略会直接静音后台采集（录到全零）——这正是"桌面识别不到说话"的根因之一。
     * 此时真正拉起 [XiaozhiForegroundService]（microphone 类型 FGS）兜底。
     * 仅在宠物未显示时启动，避免与宠物服务的常驻通知重复。
     */
    private fun ensureMicForegroundService() {
        // B4 判定下沉 MicForegroundPolicy：宠物未启用才需要兜底（可单测）
        if (!MicForegroundPolicy.shouldStartFallback(FloatingPetService.petVisible)) {
            // 宠物 FGS 已带 MICROPHONE 类型，无需兜底
            return
        }
        try {
            val context = getApplication<Application>()
            val intent = Intent(context, XiaozhiForegroundService::class.java)
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
                context.startForegroundService(intent)
            } else {
                context.startService(intent)
            }
            micFallbackServiceStarted = true
            Log.i(TAG, "B4: 宠物未启用，已拉起 XiaozhiForegroundService 兜底麦克风资格")
        } catch (e: Exception) {
            // 后台启动 FGS 可能被系统限制（无 SYSTEM_ALERT_WINDOW 豁免的场景），
            // 失败不阻断聆听流程，由 B1/B2 的实证与提示兜底
            Log.w(TAG, "B4: 启动兜底前台服务失败: ${e.message}")
        }
    }

    /** 聆听结束后回收 B4 兜底前台服务（宠物未启用时） */
    private fun maybeStopMicForegroundService() {
        // B4 判定下沉 MicForegroundPolicy：仅回收"自己拉起的"兜底服务，且宠物仍未启用
        if (!MicForegroundPolicy.shouldStopFallback(micFallbackServiceStarted, FloatingPetService.petVisible)) return
        try {
            getApplication<Application>().stopService(
                Intent(getApplication(), XiaozhiForegroundService::class.java)
            )
            Log.i(TAG, "B4: 聆听结束，已停止兜底前台服务")
        } catch (e: Exception) {
            Log.w(TAG, "B4: 停止兜底前台服务失败: ${e.message}")
        }
        micFallbackServiceStarted = false
    }

    // ==================== B5 观测埋点 ====================

    /**
     * B5 观测埋点：出现全零/空 stt 等异常场景时输出诊断快照，形成用户反馈闭环。
     * 内容：触发原因、当前音源、帧统计（帧数/最大绝对值/重建轮数）、
     * 系统活跃采集会话摘要（activeRecordingConfigurations）、设备型号与系统版本。
     * 同时写 logcat（供用户导出日志）与应用内日志面板（供用户截图反馈）。
     */
    private fun dumpMicDiagnostics(reason: String) {
        try {
            // B5 快照格式下沉 MicDiagnosticsFormatter（格式锁定由单测保证）
            val snapshot = MicDiagnosticsFormatter.build(
                MicDiagnosticsFormatter.Fields(
                    reason = reason,
                    sourceName = audioRecorder.currentSourceName(),
                    frames = audioRecorder.framesReadSinceStart(),
                    frameMax = audioRecorder.frameMaxSinceStart(),
                    rebuildRounds = audioRecorder.silentRebuildRounds,
                    healRounds = silentRounds,
                    activeConfigSummary = micMonitor.dumpActiveConfigurations(),
                    device = "${Build.MANUFACTURER} ${Build.MODEL}",
                    androidVersion = "${Build.VERSION.RELEASE}(SDK ${Build.VERSION.SDK_INT})"
                )
            )
            Log.w(TAG, snapshot)
            // 日志面板同步展示（截断防止面板溢出）
            addLog("🩺 ${MicDiagnosticsFormatter.forUiLog(snapshot)}")
        } catch (e: Exception) {
            Log.w(TAG, "B5 诊断 dump 失败: ${e.message}")
        }
    }

    fun stopListening() {
        // 撤销在途的自适应端点收尾任务（v2.3.9.1）：用户手动停止/状态切换时，
        // 不能让宽限计时任务稍后误发 stop。若本方法由收尾任务自身调用，
        // 自取消无副作用——协程取消是协作式的，方法内无挂起点，剩余语句照常执行
        pendingEndpointJob?.cancel()
        endpointCoordinator.reset()
        micHealthJob?.cancel()
        // 撤销会话级兜底看门狗（v2.3.11）：正常收尾/手动停止后不再需要；
        // stopListening 是所有收尾路径（干净收尾/尾扫兜底/会话超时/手动）的必经点
        sessionListenJob?.cancel()
        // 撤销结果等待看门狗（v2.3.10）：手动停止/收尾清理时不再需要；
        // 正常收尾路径会在 stopListening 之后重新挂载（进入 WAITING_RESULT 态）
        cancelResultWaitWatchdogs()
        _deviceState.value = DeviceState.IDLE
        webSocketManager.sendListenStop()
        audioRecorder.stop()
        // B2：聆听会话结束，重置连续静音轮数
        silentRounds = 0
        // B4：回收兜底前台服务（宠物未启用时）
        maybeStopMicForegroundService()
        addLog("停止聆听")
    }

    // ==================== 会话级最长聆听看门狗（v2.3.11） ====================
    // 修复「说完话不自动停止、一直聆听」悬挂的最后防线：
    // v2.3.10 的结果等待看门狗只覆盖【收尾后】的 WAITING_RESULT/THINKING 窗口，
    // LISTENING 态本身无任何时长上限——端点链路任一环失效（VAD 工作线程被 native
    // 异常瘫痪、AudioRecorder 自愈重建期间喂帧断流、尾扫顺延路径等）都会让聆听态
    // 永久挂起，用户只能杀 APP。现按 [ListeningSessionWatchdogPolicy] 给单次聆听
    // 会话设 60s 硬上限：到期仍 LISTENING → 强制收尾（stopListening → WAITING_RESULT
    // → 结果等待看门狗接管）：服务端已收到的语音正常出结果；从未收到则 6s 后自动
    // 恢复聆听。把「永久悬挂」收敛为「有界会话 + 可恢复」，满足不变量
    // 「任何异常/噪音/竞态路径下聆听态都不得永久挂起」。

    /** 会话级看门狗 Job（挂载/撤销见 [armListeningSessionWatchdog]/[stopListening]） */
    private var sessionListenJob: kotlinx.coroutines.Job? = null

    /** 本轮聆听会话开始时刻（elapsedRealtime，主线程维护） */
    private var sessionListenStartElapsed = 0L

    /**
     * 挂载会话级看门狗。所有进入 LISTENING 态的入口都必须调用：
     * [tryStartListeningInternal]（正常/自动续听/唤醒路径）与 [interruptSpeaking]
     * （打断重听路径），漏一处即存在无兜底会话。
     */
    private fun armListeningSessionWatchdog() {
        sessionListenStartElapsed = SystemClock.elapsedRealtime()
        sessionListenJob?.cancel()
        sessionListenJob = viewModelScope.launch(Dispatchers.Main) {
            kotlinx.coroutines.delay(ListeningSessionWatchdogPolicy.MAX_LISTEN_SESSION_MS)
            val elapsed = SystemClock.elapsedRealtime() - sessionListenStartElapsed
            // 到期双核对（策略判定）：仍处于 LISTENING 才动作；正常收尾/被打断/
            // 手动停止的会话已提前由 stopListening 撤销本 Job，不会到达这里
            if (!ListeningSessionWatchdogPolicy.shouldForceFinalize(
                    sessionElapsedMs = elapsed,
                    stillListening = _deviceState.value == DeviceState.LISTENING,
                )
            ) return@launch
            forceFinalizeListeningSession("SESSION_TIMEOUT(${elapsed / 1000}s)")
        }
    }

    /**
     * 会话级兜底强制收尾：与干净收尾同动作链（保证「说完必然出结果」路径被走一遍），
     * 仅多一步诊断埋点与用户提示——服务端若已收到有效语音则正常出结果，
     * 若从未收到（feed 断流/门槛挡下）则空结果处理 + 结果等待看门狗 6s 恢复聆听。
     * @param reason 触发原因（诊断埋点/日志用）：SESSION_TIMEOUT / VAD_FATAL
     */
    private fun forceFinalizeListeningSession(reason: String) {
        Log.w(TAG, "聆听会话兜底强制收尾: $reason")
        dumpMicDiagnostics("LISTEN_SESSION_FORCE_FINALIZE")
        lastEndpointFinalizeElapsed = SystemClock.elapsedRealtime()
        stopListening()
        _deviceState.value = DeviceState.WAITING_RESULT
        armResultWaitWatchdog()
        addLog("⏱️ 本次聆听已达上限（${ListeningSessionWatchdogPolicy.MAX_LISTEN_SESSION_MS / 1000}s），自动结束等待识别结果；若无结果将自动恢复聆听")
    }

    // ==================== 结果等待看门狗（v2.3.10） ====================
    // 修复「说完话后停留在识别中迟迟不结束 / 停止之后半天识别不出内容」：
    // 收尾上报 listen stop 之后，客户端对服务端结果（stt / tts start）原先是
    // 无限等待——STT/LLM/TTS 链路任一环节挂起都会让用户永远卡在等待态。
    // 现按 [ResultWaitWatchdogPolicy] 对两个窗口分别设防（有界等待+自动恢复）：
    //   阶段一 WAITING_RESULT（收尾→首个结果）：超时恢复聆听；
    //   阶段二 THINKING（stt→tts start）：超时恢复聆听。
    // 服务端稍后补发的结果不受影响：stt/tts start 处理器照常切换状态。
    // 手动停止（stopListening）会撤销两个看门狗。

    /** 阶段一看门狗 Job：WAITING_RESULT 态等待 stt / tts start */
    private var resultWaitJob: kotlinx.coroutines.Job? = null

    /** 阶段二看门狗 Job：THINKING 态等待 tts start */
    private var ttsStartWaitJob: kotlinx.coroutines.Job? = null

    /** 收尾后挂载：阶段一看门狗（结果迟迟不到 → 提示 + 自动恢复聆听） */
    private fun armResultWaitWatchdog() {
        resultWaitJob?.cancel()
        resultWaitJob = viewModelScope.launch(Dispatchers.Main) {
            kotlinx.coroutines.delay(ResultWaitWatchdogPolicy.RESULT_WAIT_TIMEOUT_MS)
            val shouldRecover = ResultWaitWatchdogPolicy.shouldRecover(
                phase = ResultWaitWatchdogPolicy.WaitPhase.WAIT_RESULT,
                elapsedMs = ResultWaitWatchdogPolicy.RESULT_WAIT_TIMEOUT_MS,
                stillWaiting = _deviceState.value == DeviceState.WAITING_RESULT,
                connected = webSocketManager.connectionState.value ==
                    WebSocketManager.ConnectionState.CONNECTED
            )
            if (shouldRecover) {
                // B5 风格埋点：等待超时=疑似服务端未返回结果（或整句未送达），
                // dump 快照供用户反馈闭环
                dumpMicDiagnostics("STT_RESULT_TIMEOUT")
                addLog("⏳ 迟迟未收到识别结果，已自动恢复聆听，请再说一次")
                tryStartListeningInternal()
            }
        }
    }

    /** 非空 stt 到达后挂载：阶段二看门狗（tts start 迟迟不到 → 提示 + 自动恢复聆听） */
    private fun armTtsStartWaitWatchdog() {
        ttsStartWaitJob?.cancel()
        ttsStartWaitJob = viewModelScope.launch(Dispatchers.Main) {
            kotlinx.coroutines.delay(ResultWaitWatchdogPolicy.TTS_START_WAIT_TIMEOUT_MS)
            val shouldRecover = ResultWaitWatchdogPolicy.shouldRecover(
                phase = ResultWaitWatchdogPolicy.WaitPhase.WAIT_TTS_START,
                elapsedMs = ResultWaitWatchdogPolicy.TTS_START_WAIT_TIMEOUT_MS,
                stillWaiting = _deviceState.value == DeviceState.THINKING,
                connected = webSocketManager.connectionState.value ==
                    WebSocketManager.ConnectionState.CONNECTED
            )
            if (shouldRecover) {
                addLog("⏳ AI 迟迟未开始回复，已自动恢复聆听")
                tryStartListeningInternal()
            }
        }
    }

    /** 撤销两个结果等待看门狗（手动停止 / tts start 到达 / 正常轮次推进时调用） */
    private fun cancelResultWaitWatchdogs() {
        resultWaitJob?.cancel()
        ttsStartWaitJob?.cancel()
    }

    // ==================== 本地 VAD ====================

    /**
     * 后台初始化本地 VAD（IO 线程加载模型，约 1 秒内）。
     * 失败不影响基础语音功能，仅关闭对应特性。
     * （原「声纹识别初始化」已随人物识别功能移除，见类字段注释）
     */
    private fun initSpeechModules() {
        viewModelScope.launch(Dispatchers.IO) {
            try {
                vadAutoStopEnabled = configManager.isVadEnabled()
            } catch (e: Exception) {
                Log.w(TAG, "读取语音设置失败，使用默认值: ${e.message}")
            }

            // 本地 VAD：说完话自动停止识别
            if (vadAutoStopEnabled) {
                buildSpeechEndDetector()
            }

            // 人物识别（声纹）已彻底移除，不再加载 speaker_model.onnx，
            // 也不再产生任何初始化耗时与常驻内存。
            // 唯一保留动作：一次性清理老版本升级用户的遗留声纹档案数据
            // （生物特征隐私数据，静默删除，失败不影响任何功能）
            runCatching {
                // 注意：getApplication<T> 是泛型方法（T : Application），直接传给
                // 形参为 File 的清理函数会让类型推断产生双上界冲突，故显式指定
                val removed = com.xiaozhi.android.audio.LegacySpeakerDataCleaner
                    .purgeLegacySpeakerProfiles(getApplication<android.app.Application>().filesDir)
                if (removed > 0) Log.i(TAG, "已清理历史版本遗留声纹档案 $removed 个文件")
            }
        }
    }

    /**
     * 创建并启动本地 VAD 检测器（IO 线程调用；初始化与 VAD 故障重建共用）。
     * v2.3.11：新增 [SpeechEndDetector.onVadWorkerFatal] 接线——工作线程推理
     * 连续异常自愈失败时上报，本端兜底收尾当前聆听会话并重建整个检测器，
     * 确保故障不静默、后续会话不失去本地 VAD（否则每轮都退化到 60s 看门狗）。
     */
    private fun buildSpeechEndDetector() {
        try {
            val detector = com.xiaozhi.android.audio.SpeechEndDetector(getApplication())
            detector.onSpeechEnd = { samples, durationMs ->
                onLocalSpeechEnd(samples, durationMs)
            }
            // 帧级续说信号（v2.3.9.1）：弹性宽限期内 VAD 重新检出人声 →
            // 撤销在途收尾，句中停顿不切断（详见 [onLocalSpeechResumed]）
            detector.onSpeechStart = {
                onLocalSpeechResumed()
            }
            // VAD 工作线程致命故障上报（v2.3.11）：自愈重建连续失败，检测器已不可用。
            // 回调来自 VAD 工作线程 → 切主线程处理状态与 UI
            detector.onVadWorkerFatal = { reason ->
                onVadWorkerFatal(reason)
            }
            if (detector.start()) {
                speechEndDetector = detector
                addLog("✅ 本地VAD已启用：说完话将自动停止识别")
            } else {
                addLog("⚠️ 本地VAD模型加载失败，使用服务端停止判定")
            }
        } catch (e: Exception) {
            Log.w(TAG, "VAD 初始化失败: ${e.message}")
            addLog("⚠️ 本地VAD初始化失败：${e.message}")
        }
    }

    /**
     * VAD 工作线程致命故障处理（v2.3.11，主线程）：
     *  1. 当前处于 LISTENING → 立即兜底强制收尾（本会话端点感知已失效，
     *     不收尾 = 聆听态悬挂到 60s 看门狗才收敛，用户等待体验极差）；
     *  2. 重建整个检测器（IO 线程）：旧实例 VAD 已判定不可恢复，只换实例
     *     才能恢复后续会话的本地端点能力；重建失败则保留旧引用为 null，
     *     退化为服务端判定 + 会话级看门狗兜底（不变量仍成立）。
     * 注意：旧实例 start 前已 stop（释放线程与 native 模型，防泄漏）。
     */
    private fun onVadWorkerFatal(reason: String) {
        viewModelScope.launch(Dispatchers.Main) {
            addLog("⚠️ 本地VAD推理异常（$reason），正在自动重建...")
            val old = speechEndDetector
            speechEndDetector = null // 先摘除：避免收尾路径再依赖已瘫痪的实例
            Log.w(TAG, "VAD worker fatal($reason)，重建检测器")
            viewModelScope.launch(Dispatchers.IO) {
                try {
                    old?.stop()
                } catch (e: Exception) {
                    Log.w(TAG, "旧 VAD 实例停止异常: ${e.message}")
                }
                viewModelScope.launch(Dispatchers.Main) {
                    if (vadAutoStopEnabled) {
                        buildSpeechEndDetector()
                    }
                    // 重建后若仍在聆听（尚未被看门狗收尾），立即兜底收尾本会话：
                    // 端点感知在重建期间仍是空窗，收尾交给服务端已收到的音频出结果
                    if (_deviceState.value == DeviceState.LISTENING) {
                        forceFinalizeListeningSession("VAD_FATAL")
                    }
                }
            }
        }
    }

    /**
     * 本地 VAD 检测到一段语音结束（VAD 工作线程回调）。
     * 过 [EndpointGracePolicy] 弹性宽限后自动结束本轮聆听（v2.3.9.1 端点自适应）。
     *
     * 人物识别移除说明（2026-09 派单）：原实现会在本回调内【同步】执行声纹
     * 提取（CAM++ 模型，1 线程 CPU，整段音频前向推理），带来两重延迟——
     *  ① 推理耗时直接串在端点收尾之前，宽限计时起点被推迟 → 每句话的
     *     「说完→出结果」固定叠加数十至数百毫秒（低端机更久）；
     *  ② 推理期间 VAD 工作线程被占死，帧级续说检测（[onLocalSpeechResumed]）
     *     无法及时感知，宽限内续说的撤销灵敏度被拖低。
     * 移除后本回调只做端点收尾，零额外耗时。
     *
     * v2.3.9.1 语义变化：本地 VAD 在静音 1.2s 时切段（v2.3.9 固定 1.6s）——切段
     * ≠ 说完了：切段后先启动一道弹性宽限计时（300-400ms 自适应），宽限内用户
     * 继续说 → 撤销收尾、同一轮聆听继续（句中停顿不切断语义）；宽限期满无续说
     * → 才 stopListening 通知服务端出结果。
     * 「宽限内续说」的感知走两条线：
     *  - 帧级主路径：[SpeechEndDetector.onSpeechStart] → [onLocalSpeechResumed]，
     *    ~32ms 粒度在宽限窗内撤销收尾（撤销后【必须】补挂尾扫兜底计时，见
     *    [scheduleEndpointTailScan]，否则短促噪音撤销收尾后聆听态会永久挂起）；
     *  - 世代核对兜底：收尾任务到期时 [EndpointGraceCoordinator.onFinalizeDue]
     *    发现世代已前进（宽限内又切出新段）则作废本次收尾。
     * 端点总时长 = 1.2s + grace：首轮 1.6s（与 v2.3.9 持平，升级首日不劣化），
     * 干净收尾逐轮收敛至 1.5s（评审 🔴-2 下限 300ms），误切/秒续说自动上浮回 1.6s 封顶。
     */
    private fun onLocalSpeechEnd(samples: FloatArray, durationMs: Long) {
        // 评审 🔴 配套观测（everOpened 漏判埋点）：本地 VAD（置信度判定，独立于上传
        // 门槛）认为用户说了一句话，但本次聆听从未开过上传门 → 整句语音大概率被
        // 门槛挡下、服务端一个字都没收到（轻声/远场漏判路径，用户"说了话无反应"）。
        // 输出 B5 风格诊断快照，让该漏判在真机数据中可见（门限是否需要继续调整，
        // 以这里的观测分布为准）
        if (!listenGate.everOpened) {
            Log.w(TAG, "ListenGate 漏判观测: 本地VAD判定说完(${durationMs}ms)但上传门从未打开，本次语音未上传服务端")
            dumpMicDiagnostics("GATE_NEVER_OPENED")
            // v2.3.10：用户可见提示——整句被上传门槛挡下、服务端一个字都没收到，
            // 后续必然「未识别到内容」。明确告知原因（而不是让用户面对无解释的
            // "识别不出"），上传门槛治理本身保持不变（守噪音治理成果）
            addLog("⚠️ 听到你说话但音量偏轻，未能上传（可靠近手机或稍微大声一点）")
        }

        if (!vadAutoStopEnabled) return

        // ===== 自适应端点收尾（v2.3.9.1） =====
        // 本方法在 VAD 工作线程调用；世代/在途判定下沉 [EndpointGraceCoordinator]
        // （原子状态机，跨线程安全），计时任务在主线程执行。
        // 时序示例（grace=400ms，句中停顿 1.3s 场景）：
        //   seg1 切段（gen=1，pending=true，job1 定时 400ms）
        //   └ +100ms 用户续说：VAD 帧级检出人声 → [onLocalSpeechResumed] 撤销 job1、
        //     宽限上调（停顿型用户自适应）→ 同一轮聆听继续，silero 积累新段
        //   └ 新段说完 +1.2s 静音 → seg2 切段（gen=2，pending=true，job2 定时宽限）
        //   └ job2 到期：世代核对通过且状态仍 LISTENING → 干净收尾：
        //     宽限下调（收敛）、stopListening 通知服务端出结果
        val plan = endpointCoordinator.onSegmentArrive()
        pendingEndpointJob = viewModelScope.launch(Dispatchers.Main) {
            kotlinx.coroutines.delay(plan.graceMs)
            // 先核对聆听状态：会话已结束（手动停止/断连）则不动协调器状态
            if (_deviceState.value != DeviceState.LISTENING) return@launch
            // 世代核对：宽限期间用户又说话（新段已自增世代）→ 不是说完，继续聆听
            if (!endpointCoordinator.onFinalizeDue(plan.generation)) return@launch
            // 干净收尾：确实说完了。记录收尾时刻（秒续说观测用），stopListening 通知服务端
            lastEndpointFinalizeElapsed = SystemClock.elapsedRealtime()
            stopListening()
            // v2.3.10：收尾后进入「识别中」（WAITING_RESULT）而非回落 IDLE——
            // 会话仍在进行、服务端正在识别，旧实现显示"点击按钮开始对话"与事实
            // 相悖（用户误以为对话卡死）；同时挂结果等待看门狗（6s 有界自愈）
            _deviceState.value = DeviceState.WAITING_RESULT
            armResultWaitWatchdog()
            addLog("🛑 检测到你说完了（${durationMs / 1000.0}s），等待识别结果...")
        }
    }

    /**
     * 帧级续说信号（VAD 工作线程回调，[SpeechEndDetector.onSpeechStart] 接线）：
     * 宽限期内 VAD 重新检出人声 = 上一段切在句中停顿里、用户还在继续说。
     * 撤销在途收尾任务、同一轮聆听继续；协调器同时上调宽限（停顿型用户自适应，
     * 端点永不慢于 v2.3.9 的 1.6s 封顶）。无在途收尾时（会话内首次开口）为空操作。
     *
     * v2.3.9.1 评审 🔴-1：撤销成功后【必须】补挂尾扫兜底计时——
     * 若该次续说是 <0.4s 的短促人声型噪音（不成段 → 世代不前进），撤销后
     * 在途收尾队列即被清空，之后用户不再说话时无人收尾，聆听态将永久挂起、
     * 识别结果永不返回。尾扫兜底见 [scheduleEndpointTailScan]。
     */
    private fun onLocalSpeechResumed() {
        val claimedGeneration = endpointCoordinator.onSpeechResumedWithinGrace()
        if (claimedGeneration >= 0) {
            pendingEndpointJob?.cancel()
            Log.d(TAG, "端点宽限内检出续说（句中停顿兜住），收尾撤销，grace=${endpointGrace.graceMs}ms")
            // 🔴-1 防线：撤销的同时补挂「尾扫兜底计时」，恢复「说完必然收尾」闭环
            scheduleEndpointTailScan(claimedGeneration)
        }
    }

    /**
     * 尾扫兜底计时（v2.3.9.1 评审 🔴-1 防线，主线程）。
     *
     * 挂载时机：帧级续说撤销在途收尾后（[onLocalSpeechResumed]）。
     * 消除的挂起路径：宽限内出现短促人声型噪音（"嗯"、咳嗽等 <0.4s 不成段）
     * → 帧级续说撤销了正常收尾 → 若用户此后不再说话，世代不再前进、收尾队列
     * 已空 → 聆听态永久挂起（keepalive 维持连接，连 1005 空闲断链都不触发）。
     *
     * 防线设计（世代键控 + 链上限 + 到期先查最后说话时刻，三层过滤）：
     *  1. 延迟 = VAD 静音线 1.2s + 当前宽限：若宽限内续说是真语音（≥0.4s），
     *     新段会在「其结束后 1.2s」成段并接管正常收尾 → 尾扫到期世代核对失败，
     *     自动作废（不与正常路径抢跑）；
     *  2. 链上限（v2.3.11 修复「恒顺延无上限」）：POSTPONE 的顺延条件是「距最后
     *     检出人声 <1s」，持续人声型噪音（电视/音乐）会让该条件永远成立——旧实现
     *     无限顺延、聆听态永久挂起。现记录尾扫链起点，顺延透传不清零，总时长
     *     达 [EndpointGraceCoordinator.TAIL_SCAN_MAX_CHAIN_MS] 即强制收尾；
     *  3. 到期时核查 [SpeechEndDetector.msSinceLastVoiceMs]（检测器帧级维护，
     *     说话中持续刷新）：距最后说话不足 1s = 还在说话/刚开口 → 顺延重挂，
     *     连续说话一路顺延直到真正静音（不伤连续语流）；
     *  4. 世代未变 + 已静音超 1s → 兜底收尾（与干净收尾同规则下调宽限）。
     * 任何收尾都会被 [stopListening]/[reset]/打断路径的 cancel+reset 双保险清理。
     *
     * @param claimedGeneration 被撤销收尾的世代号
     * @param chainStartElapsed 尾扫链起点（elapsedRealtime）；默认 now = 新链首挂
     */
    private fun scheduleEndpointTailScan(
        claimedGeneration: Long,
        chainStartElapsed: Long = SystemClock.elapsedRealtime(),
    ) {
        pendingEndpointJob = viewModelScope.launch(Dispatchers.Main) {
            kotlinx.coroutines.delay(endpointCoordinator.tailScanDelayMs())
            // 先核对聆听状态：会话已结束（手动停止/断连）则不碰协调器状态
            if (_deviceState.value != DeviceState.LISTENING) return@launch
            val voiceAgeMs = speechEndDetector?.msSinceLastVoiceMs() ?: Long.MAX_VALUE
            val chainElapsed = SystemClock.elapsedRealtime() - chainStartElapsed
            when (endpointCoordinator.onTailScanDue(claimedGeneration, voiceAgeMs, chainElapsed)) {
                EndpointGraceCoordinator.TailScanDecision.FINALIZE -> {
                    // 兜底收尾：确实说完了。与正常收尾同规则记录时刻并通知服务端
                    lastEndpointFinalizeElapsed = SystemClock.elapsedRealtime()
                    Log.d(TAG, "尾扫兜底收尾：gen=$claimedGeneration 距最后说话 ${voiceAgeMs}ms")
                    stopListening()
                    // 与干净收尾同语义：进入「识别中」+ 挂结果等待看门狗（v2.3.10）
                    _deviceState.value = DeviceState.WAITING_RESULT
                    armResultWaitWatchdog()
                    addLog("🛑 检测到你说完了，等待识别结果...")
                }
                EndpointGraceCoordinator.TailScanDecision.FORCE_FINALIZE -> {
                    // 链上限强制收尾（v2.3.11）：持续噪音使「还在说话」永远成立时，
                    // 必须在有限时长内终结尾扫链——最坏代价是噪音段出一条空结果，
                    // 换取聆听态绝不永久挂起（见协调器 TAIL_SCAN_MAX_CHAIN_MS 注释）
                    Log.w(TAG, "尾扫链达上限强制收尾：gen=$claimedGeneration 链长=${chainElapsed}ms")
                    dumpMicDiagnostics("TAIL_SCAN_FORCE_FINALIZE")
                    stopListening()
                    _deviceState.value = DeviceState.WAITING_RESULT
                    armResultWaitWatchdog()
                    addLog("🛑 环境音持续，已按兜底规则结束聆听...")
                }
                EndpointGraceCoordinator.TailScanDecision.POSTPONE ->
                    // 还在说话/刚开口：顺延重挂（同一世代键控 + 同一链起点，静音或达上限后再收）
                    scheduleEndpointTailScan(claimedGeneration, chainStartElapsed)
                EndpointGraceCoordinator.TailScanDecision.VOID ->
                    // 宽限内续说真的又成段（正常收尾已接管）或会话已重置：作废
                    Unit
            }
        }
    }

    /** 设置页保存后热应用语音设置（无需重启）。
     *  （原声纹阈值/称呼热应用逻辑已随人物识别功能移除，仅保留 VAD 开关热应用） */
    fun applySpeechSettings() {
        viewModelScope.launch(Dispatchers.IO) {
            try {
                vadAutoStopEnabled = configManager.isVadEnabled()
            } catch (e: Exception) {
                Log.w(TAG, "应用语音设置失败: ${e.message}")
            }
        }
    }

    fun interruptSpeaking() {
        // 1. 通知服务器中止 TTS 下发
        webSocketManager.sendAbort()
        // 2. 立即停止本地音频播放并清空缓冲（关键修复：否则已缓冲的 TTS 会继续播完）
        audioPlayer.stopAndClear()
        // 2.5 撤销可能遗留的端点收尾任务（防御）：正常时序下 SPEAKING 态不会有在途
        //     收尾（收尾仅在 LISTENING 态调度，且到期有状态核对），但断连等异常路径
        //     可能让旧任务存活到本方法之后——进入新聆听会话前显式清掉最稳妥
        pendingEndpointJob?.cancel()
        endpointCoordinator.reset()
        // 3. 先重置上传门槛再切聆听状态（评审 🟡 换序竞态修复，同 tryStartListeningInternal）：
        //    上传门槛重置 + holdoff 窗：打断瞬间扬声器仍在出声（回声尾音衰减需数百 ms），
        //    600ms 内不放行上传，避免回声尾音被服务端转写为"用户语音"而形成
        //    「打断→识别回声→AI 再应答→再打断」的循环（见 [ListenGatePolicy] 类注释）。
        //    打断路径 TTS 必然正在出声 → 显式 echoRisk=true，走完整 600ms 回声衰减窗
        //    （v2.3.9.1 的快速放行窗只用于无近期 TTS 的冷启动/唤醒场景，此处不适用）
        listenGate.onListeningStart(SystemClock.elapsedRealtime(), echoRisk = true)
        _deviceState.value = DeviceState.LISTENING
        webSocketManager.sendListenStart("auto")
        if (!audioRecorder.isRunning()) {
            audioRecorder.start()
        }
        // 会话级兜底看门狗（v2.3.11）：打断重听路径同样挂载（漏挂=该路径无兜底）
        armListeningSessionWatchdog()
        addLog("打断说话，重新聆听...")
    }

    // 旧内联 RMS 打断判定（detectUserInterruption）已删除，
    // 逻辑下沉至 [BargeInPolicy]（纯 Kotlin 策略类，带单测），
    // 接线点见上方 pcmData 采集分发的 DeviceState.SPEAKING 分支。

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
    /**
     * 把本地工具（天气/新闻/股票/视频/搜索/翻译/音乐等 API）查询到的结果，
     * 交给小智大模型（LLM）做合理总结后用语音播报给用户。
     *
     * 实现方式：把 API 原始结果包装成一段明确的「系统提示」，
     * 通过 sendSystemText（模拟 STT）发给 AI 服务器，让 LLM 把它理解为
     * 「这是本地工具查询到的信息，需要整理成自然口语播报给用户」，
     * 而不是把原始数据直接念出来或当成用户输入。
     *
     * @param intent  用户意图描述（如"北京天气""贵州茅台股票"），用于让 LLM 知道语境
     * @param result  本地工具返回的原始结果
     */
    private fun reportToolResult(intent: String, result: String) {
        if (result.isBlank()) return
        val prompt = "（系统提示：用户询问$intent，本地工具查询到以下信息，" +
            "请基于这些信息用自然、简洁的口语向用户播报要点，不要复述原始格式。）\n$result"
        addLog("🤖 交由大模型整理播报：$intent")
        webSocketManager.sendSystemText(prompt)
    }

    private fun parseAndExecuteLocalCommand(text: String) {
        val lower = text.lowercase().trim()
        Log.d(TAG, "Local command parsing: $text")

        // ★ 天气优先级最高：含天气/体感/出行词时直接查天气，避免被搜索拦截
        // （如"今天冷吗""出门要带伞吗"含问句词会被误判为搜索）
        if (containsAny(text, "天气", "气温", "温度", "几度", "多少度",
                "下雨", "下雪", "刮风", "打雷", "雾霾", "PM2", "pm2",
                "冷不冷", "热不热", "冷吗", "热吗", "冻", "晒",
                "穿什么", "穿几件", "带伞", "带雨伞", "出门",
                "晴", "阴天", "多云", "阵雨", "暴雨", "大风")) {
            val city = extractCity(text)
            addLog("🌤️ 本地解析天气查询: ${city.ifBlank { "默认" }}")
            viewModelScope.launch {
                val result = commandExecutor.getWeatherVoice(city)
                addLog("→ $result")
                reportToolResult("${city.ifBlank { "当前" }}天气", result)
            }
            return
        }

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
                        reportToolResult(query, summary)
                    } else {
                        addLog("⚠️ 搜索失败，建议您手动搜索")
                        webSocketManager.sendSystemText("抱歉，联网搜索暂时不可用，请稍后再试")
                    }
                }
            }
            return
        }

        // 1. 查新闻（关键词扩展：新闻词 + 时事问法）
        if (containsAny(text, "新闻", "头条", "热点", "资讯", "早报", "晚报", "日报",
                "最近发生", "有什么事", "新鲜事", "时事", "时政", "要闻")) {
            val query = text
                .replace(Regex("""(今天|有什么|最新|最近|看|听|帮我|给我|查一下|发生了)?"""), "")
                .replace(Regex("""(新闻|头条|热点|资讯|早报|晚报|日报|事|时事|时政|要闻)"""), "")
                .trim()
            addLog("📰 本地解析新闻: ${query.ifBlank { "热点" }}")
            viewModelScope.launch {
                val result = commandExecutor.getNews(query)
                addLog("→ $result")
                reportToolResult("${query.ifBlank { "热点" }}新闻", result)
            }
            return
        }

        // 2. 查股票（关键词扩展：行情词 + 知名标的 + 代码特征）
        if (containsAny(text, "股票", "股价", "行情", "基金", "A股", "港股", "美股",
                "涨停", "跌停", "涨了", "跌了", "多少钱", "走势", "市值",
                "市盈率", "K线", "盘面", "大盘", "创业板", "科创板") ||
            Regex("""(茅台|腾讯|阿里|比亚迪|宁德时代|中石油|工商银行|平安|京东|美团|小米|百度|网易)[^\s]{0,6}(多少钱|股价|行情|涨|跌)?""").containsMatchIn(text) ||
            Regex("""\b(60[0-9]{4}|00[0-9]{4}|30[0-9]{4}|688[0-9]{3})\b""").containsMatchIn(text)) {
            val query = text
                .replace(Regex("""(帮我|给我|查一下|看一下|查询|现在|今天)?"""), "")
                .replace(Regex("""(股票|股价|行情|基金|A股|港股|美股|的|了|多少钱|走势|市值)"""), "")
                .trim()
            if (query.isNotEmpty()) {
                addLog("📈 本地解析股票: $query")
                viewModelScope.launch {
                    val result = commandExecutor.getStock(query)
                    addLog("→ $result")
                    reportToolResult("$query 股票行情", result)
                }
                return
            }
        }

        // 3. 视频意图（关键词扩展：平台词 + 视频意图词）
        if (containsAny(text, "搜视频", "找视频", "B站", "b站", "bilibili", "看视频",
                "抖音", "快手", "推荐视频", "有意思的视频", "短视频", "视频")) {
            val query = text
                .replace(Regex("""(帮我|给我|搜一下|搜索|找一下|找|推荐|有意思的)?"""), "")
                .replace(Regex("""(视频|B站|b站|bilibili|抖音|快手|短视频|的)"""), "")
                .trim()
            if (query.isNotEmpty()) {
                // 意图区分：明确要"播放/观看" → 直接打开播放界面；
                // 只是"搜/找" → 播报带序号的列表（用户可再说"播放第N个"）
                val wantPlay = containsAny(text, "播放", "观看", "放个", "放一", "来个", "来一", "看一下", "看个")
                if (wantPlay) {
                    addLog("🎬 本地解析播放视频: $query")
                    viewModelScope.launch {
                        val result = commandExecutor.playVideo(null, "", query, "")
                        addLog("→ $result")
                        reportToolResult("$query 视频", result)
                    }
                } else {
                    addLog("🎬 本地解析视频搜索: $query")
                    viewModelScope.launch {
                        val result = commandExecutor.searchVideo(query)
                        addLog("→ $result")
                        reportToolResult("$query 视频", result)
                    }
                }
                return
            }
        }

        // 3b. 播放搜索结果序号（"播放第2个"/"看第二个"）——引用最近一次视频搜索
        val playIndexMatch = Regex("""(?:播放|看|观看|打开)第?([一二两三四五\d]+)个""").find(text)
        if (playIndexMatch != null) {
            val idxStr = playIndexMatch.groupValues[1]
            val idx = when (idxStr) {
                "一" -> 1; "两" -> 2; "二" -> 2; "三" -> 3; "四" -> 4; "五" -> 5
                else -> idxStr.toIntOrNull()
            }
            if (idx != null && idx in 1..5) {
                addLog("🎬 本地解析播放第 $idx 个视频")
                viewModelScope.launch {
                    val result = commandExecutor.playVideo(idx, "", "", "")
                    addLog("→ $result")
                    reportToolResult("播放视频", result)
                }
                return
            }
        }

        // 4. 翻译（关键词扩展：翻译动词 + "怎么说/怎么拼"等口语问法）
        if (containsAny(text, "翻译", "译成", "翻译成", "怎么说", "怎么拼", "用英语说", "用英文说",
                "用日语说", "用韩语说", "英文翻译", "英语翻译")) {
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
                .replace(Regex("""(翻译|译成|翻译成|怎么说|怎么拼|用|说)"""), "")
                .replace(Regex("""(英语|英文|日语|日文|韩语|韩文|法语|法文|德语|德文|中文|汉语|en|jp|ko|fr|de)"""), "")
                .replace(Regex("""(成|为)"""), "")
                .trim()
            if (content.isNotEmpty()) {
                addLog("🌐 本地解析翻译: $content -> $targetLang")
                viewModelScope.launch {
                    val result = commandExecutor.translate(content, targetLang)
                    addLog("→ $result")
                    reportToolResult("$content 翻译", result)
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

        // 7. 查天气（已上移到最前，此处保留编号占位）

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
                reportToolResult("$musicQuery 音乐搜索", result)
            }
        }
    }

    /**
     * 判断是否为需要联网搜索的问题。
     * 触发条件：问句（什么/怎么/为什么/多少...）或 搜索意图（搜/查/找...）
     * 或知识获取意图（想知道/了解一下/科普/是什么意思）
     */
    private fun isSearchQuery(text: String): Boolean {
        val questionWords = listOf(
            "什么", "怎么", "如何", "为什么", "谁", "哪", "多少", "几", "吗", "呢",
            "是不是", "啥", "为何", "啥意思", "什么意思", "是什么意思", "区别"
        )
        val searchWords = listOf(
            "搜", "搜索", "查一下", "查查", "找一下", "百度", "谷歌", "查查看",
            "想知道", "了解一下", "了解下", "科普", "百科", "解释一下", "介绍一下"
        )

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
        wakeWordDetector?.stop()
        audioRecorder.destroy()
        audioPlayer.destroy()
        opusCodec.release()
        webSocketManager.destroy()
        activationService.destroy()
        musicPlayer.release()
        updateManager.destroy()
    }
}