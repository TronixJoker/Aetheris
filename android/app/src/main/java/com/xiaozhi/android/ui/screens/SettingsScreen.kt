package com.xiaozhi.android.ui.screens

import androidx.compose.animation.AnimatedVisibility
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.text.KeyboardOptions
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.ArrowBack
import androidx.compose.material.icons.filled.ChevronRight
import androidx.compose.material.icons.filled.SystemUpdate
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import androidx.lifecycle.viewmodel.compose.viewModel
import com.xiaozhi.android.config.ConfigManager
import com.xiaozhi.android.update.UpdateManager
import com.xiaozhi.android.viewmodel.MainViewModel
import kotlinx.coroutines.launch

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun SettingsScreen(
    onNavigateBack: () -> Unit,
    onNavigateToApiManagement: () -> Unit,
    viewModel: MainViewModel = viewModel()
) {
    val scope = rememberCoroutineScope()
    val context = viewModel.getApplication<android.app.Application>()
    var wsUrl by remember { mutableStateOf("") }
    var accessToken by remember { mutableStateOf("") }
    var otaUrl by remember { mutableStateOf("") }
    var deviceId by remember { mutableStateOf("") }
    var clientId by remember { mutableStateOf("") }
    var activationVersion by remember { mutableStateOf("") }
    var showUpdateDialog by remember { mutableStateOf(false) }
    var updateResult by remember { mutableStateOf<UpdateManager.UpdateResult?>(null) }

    // 语音设置（本地 VAD + 声纹识别）
    var vadEnabled by remember { mutableStateOf(true) }
    var speakerEnabled by remember { mutableStateOf(true) }
    var speakerThreshold by remember { mutableStateOf(0.55f) }
    var speakerOwnerName by remember { mutableStateOf("主人") }
    var showResetSpeakerDialog by remember { mutableStateOf(false) }
    val speakerStatus by viewModel.speakerStatus.collectAsStateWithLifecycle()

    val updateManager = remember { UpdateManager(context) }
    val updateState by updateManager.updateState.collectAsStateWithLifecycle()
    val downloadProgress by updateManager.downloadProgress.collectAsStateWithLifecycle()
    val downloadSize by updateManager.downloadSize.collectAsStateWithLifecycle()

    // Get current version from package
    val currentVersionName = remember {
        try {
            context.packageManager.getPackageInfo(context.packageName, 0).versionName ?: "1.0.0"
        } catch (e: Exception) {
            "1.0.0"
        }
    }

    // Load current settings
    LaunchedEffect(Unit) {
        val configManager = ConfigManager(viewModel.getApplication())
        wsUrl = configManager.getWebsocketUrl()
        accessToken = configManager.getAccessToken()
        otaUrl = configManager.getOtaUrl()
        deviceId = configManager.getDeviceId() ?: ""
        clientId = configManager.getClientId()
        activationVersion = configManager.getActivationVersion()
        vadEnabled = configManager.isVadEnabled()
        speakerEnabled = configManager.isSpeakerIdEnabled()
        speakerThreshold = configManager.getSpeakerThreshold()
        speakerOwnerName = configManager.getSpeakerOwnerName()
    }

    /** 语音设置改动即保存并热应用 */
    fun saveSpeechSettings() {
        scope.launch {
            val configManager = ConfigManager(viewModel.getApplication())
            configManager.setVadEnabled(vadEnabled)
            configManager.setSpeakerIdEnabled(speakerEnabled)
            configManager.setSpeakerThreshold(speakerThreshold)
            configManager.setSpeakerOwnerName(speakerOwnerName)
            viewModel.applySpeechSettings()
        }
    }

    // Auto-close dialog for certain states
    LaunchedEffect(updateState) {
        when (updateState) {
            UpdateManager.UpdateState.ERROR -> {
                kotlinx.coroutines.delay(3000)
                showUpdateDialog = false
                updateManager.reset()
            }
            UpdateManager.UpdateState.NO_UPDATE -> {
                kotlinx.coroutines.delay(2000)
                showUpdateDialog = false
                updateManager.reset()
            }
            else -> {}
        }
    }

    // Update dialog
    if (showUpdateDialog) {
        AlertDialog(
            onDismissRequest = {
                showUpdateDialog = false
                updateManager.reset()
            },
            title = {
                Text(
                    when (updateState) {
                        UpdateManager.UpdateState.UPDATE_AVAILABLE -> "发现新版本"
                        UpdateManager.UpdateState.DOWNLOAD_COMPLETE -> "下载完成"
                        UpdateManager.UpdateState.INSTALLING -> "正在安装"
                        UpdateManager.UpdateState.NEED_PERMISSION -> "需要安装权限"
                        UpdateManager.UpdateState.ERROR -> "更新失败"
                        else -> "检查更新"
                    },
                    fontWeight = FontWeight.Bold
                )
            },
            text = {
                Column {
                    when (updateState) {
                        UpdateManager.UpdateState.CHECKING -> {
                            Row(verticalAlignment = Alignment.CenterVertically) {
                                CircularProgressIndicator(modifier = Modifier.size(24.dp), strokeWidth = 2.dp)
                                Spacer(Modifier.width(12.dp))
                                Text("正在检查更新...")
                            }
                        }
                        UpdateManager.UpdateState.UPDATE_AVAILABLE -> {
                            if (updateResult != null && updateResult!!.hasUpdate) {
                                Text("新版本: ${updateResult!!.versionName}")
                                Spacer(Modifier.height(8.dp))
                                if (updateResult!!.changelog.isNotEmpty()) {
                                    Text("更新内容:", fontWeight = FontWeight.Medium, fontSize = 14.sp)
                                    Spacer(Modifier.height(4.dp))
                                    Text(updateResult!!.changelog, fontSize = 13.sp,
                                        color = MaterialTheme.colorScheme.onSurfaceVariant)
                                }
                            }
                        }
                        UpdateManager.UpdateState.DOWNLOADING -> {
                            Column(horizontalAlignment = Alignment.CenterHorizontally) {
                                Text("正在下载更新...", modifier = Modifier.fillMaxWidth())
                                Spacer(Modifier.height(12.dp))
                                if (downloadProgress >= 0) {
                                    LinearProgressIndicator(
                                        progress = { downloadProgress / 100f },
                                        modifier = Modifier.fillMaxWidth()
                                    )
                                    Spacer(Modifier.height(4.dp))
                                    Text("$downloadProgress%  ($downloadSize)", fontSize = 12.sp,
                                        color = MaterialTheme.colorScheme.onSurfaceVariant)
                                } else {
                                    // Unknown size - show indeterminate progress
                                    LinearProgressIndicator(
                                        modifier = Modifier.fillMaxWidth()
                                    )
                                    Spacer(Modifier.height(4.dp))
                                    Text("已下载 $downloadSize", fontSize = 12.sp,
                                        color = MaterialTheme.colorScheme.onSurfaceVariant)
                                }
                            }
                        }
                        UpdateManager.UpdateState.DOWNLOAD_COMPLETE -> {
                            Row(verticalAlignment = Alignment.CenterVertically) {
                                Text("下载完成，正在准备安装...")
                            }
                        }
                        UpdateManager.UpdateState.INSTALLING -> {
                            Row(verticalAlignment = Alignment.CenterVertically) {
                                CircularProgressIndicator(modifier = Modifier.size(24.dp), strokeWidth = 2.dp)
                                Spacer(Modifier.width(12.dp))
                                Text("正在打开安装界面...")
                            }
                        }
                        UpdateManager.UpdateState.NEED_PERMISSION -> {
                            Column {
                                Text("已跳转到系统设置，请开启\"允许安装未知应用\"权限。")
                                Spacer(Modifier.height(8.dp))
                                Text("授权完成后返回此页面，点击下方按钮继续安装。",
                                    fontSize = 13.sp,
                                    color = MaterialTheme.colorScheme.onSurfaceVariant)
                            }
                        }
                        UpdateManager.UpdateState.NO_UPDATE -> {
                            Text("当前已是最新版本")
                        }
                        UpdateManager.UpdateState.ERROR -> {
                            Text("更新失败，请检查网络连接后重试")
                        }
                        UpdateManager.UpdateState.IDLE -> {}
                    }
                }
            },
            confirmButton = {
                when (updateState) {
                    UpdateManager.UpdateState.UPDATE_AVAILABLE -> {
                        TextButton(onClick = {
                            updateManager.downloadUpdate(updateResult!!.downloadUrl)
                        }) {
                            Text("立即更新")
                        }
                    }
                    UpdateManager.UpdateState.NEED_PERMISSION -> {
                        TextButton(onClick = {
                            updateManager.retryInstall()
                        }) {
                            Text("已授权，重新安装")
                        }
                    }
                    UpdateManager.UpdateState.DOWNLOADING,
                    UpdateManager.UpdateState.CHECKING,
                    UpdateManager.UpdateState.INSTALLING -> {
                        // 进行中状态不显示确认按钮
                        Spacer(Modifier.width(0.dp))
                    }
                    else -> {
                        TextButton(onClick = {
                            showUpdateDialog = false
                            updateManager.reset()
                        }) {
                            Text("确定")
                        }
                    }
                }
            },
            dismissButton = {
                when (updateState) {
                    UpdateManager.UpdateState.UPDATE_AVAILABLE -> {
                        TextButton(onClick = {
                            showUpdateDialog = false
                            updateManager.reset()
                        }) {
                            Text("稍后")
                        }
                    }
                    UpdateManager.UpdateState.NEED_PERMISSION -> {
                        TextButton(onClick = {
                            showUpdateDialog = false
                            updateManager.reset()
                        }) {
                            Text("取消")
                        }
                    }
                    else -> {}
                }
            }
        )
    }

    // 声纹重置确认对话框
    if (showResetSpeakerDialog) {
        AlertDialog(
            onDismissRequest = { showResetSpeakerDialog = false },
            title = { Text("重置声纹档案？", fontWeight = FontWeight.Bold) },
            text = {
                Text("将删除已注册的声纹数据，下次对话时会重新采集并注册。此操作不可撤销。")
            },
            confirmButton = {
                TextButton(onClick = {
                    showResetSpeakerDialog = false
                    viewModel.resetSpeakerProfiles()
                }) {
                    Text("重置", color = MaterialTheme.colorScheme.error)
                }
            },
            dismissButton = {
                TextButton(onClick = { showResetSpeakerDialog = false }) {
                    Text("取消")
                }
            }
        )
    }

    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text("设置") },
                navigationIcon = {
                    IconButton(onClick = onNavigateBack) {
                        Icon(Icons.Filled.ArrowBack, contentDescription = "返回")
                    }
                }
            )
        }
    ) { padding ->
        Column(
            modifier = Modifier
                .fillMaxSize()
                .padding(padding)
                .verticalScroll(rememberScrollState())
                .padding(16.dp),
            verticalArrangement = Arrangement.spacedBy(16.dp)
        ) {
            // Update section
            Card(
                modifier = Modifier.fillMaxWidth(),
                colors = CardDefaults.cardColors(
                    containerColor = MaterialTheme.colorScheme.primaryContainer.copy(alpha = 0.3f)
                )
            ) {
                Column(modifier = Modifier.padding(16.dp)) {
                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        verticalAlignment = Alignment.CenterVertically,
                        horizontalArrangement = Arrangement.SpaceBetween
                    ) {
                        Row(verticalAlignment = Alignment.CenterVertically) {
                            Icon(Icons.Filled.SystemUpdate, contentDescription = null, tint = MaterialTheme.colorScheme.primary)
                            Spacer(Modifier.width(12.dp))
                            Column {
                                Text("版本更新", fontWeight = FontWeight.Medium)
                                Text("当前版本 $currentVersionName", fontSize = 13.sp,
                                    color = MaterialTheme.colorScheme.onSurfaceVariant)
                            }
                        }
                        // 检查更新按钮：有新版本时右上角显示红点提醒
                        Box(contentAlignment = Alignment.TopEnd) {
                            Button(onClick = {
                                showUpdateDialog = true
                                updateManager.checkForUpdates { result ->
                                    updateResult = result
                                }
                            }) {
                                Text("检查更新")
                            }
                            if (updateResult != null && updateResult!!.hasUpdate) {
                                Badge(
                                    modifier = Modifier
                                        .offset(x = 6.dp, y = (-6).dp)
                                        .size(10.dp)
                                )
                            }
                        }
                    }
                }
            }

            // ==================== 语音识别设置（本地 VAD + 声纹） ====================
            Card(modifier = Modifier.fillMaxWidth()) {
                Column(modifier = Modifier.padding(16.dp)) {
                    Text("语音识别", fontWeight = FontWeight.Bold)
                    Spacer(Modifier.height(4.dp))
                    Text(
                        "本地运行，不上传任何音频。说完话自动停止识别；识别当前说话人身份。",
                        fontSize = 12.sp,
                        color = MaterialTheme.colorScheme.onSurfaceVariant
                    )
                    Spacer(Modifier.height(12.dp))

                    // VAD 自动停止开关
                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        verticalAlignment = Alignment.CenterVertically,
                        horizontalArrangement = Arrangement.SpaceBetween
                    ) {
                        Column(Modifier.weight(1f)) {
                            Text("说完话自动停止识别", fontSize = 14.sp)
                            Text(
                                "关闭后将依赖服务器判定语音结束",
                                fontSize = 12.sp,
                                color = MaterialTheme.colorScheme.onSurfaceVariant
                            )
                        }
                        Switch(
                            checked = vadEnabled,
                            onCheckedChange = {
                                vadEnabled = it
                                saveSpeechSettings()
                            }
                        )
                    }

                    Spacer(Modifier.height(8.dp))

                    // 声纹识别开关
                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        verticalAlignment = Alignment.CenterVertically,
                        horizontalArrangement = Arrangement.SpaceBetween
                    ) {
                        Column(Modifier.weight(1f)) {
                            Text("声纹人物识别", fontSize = 14.sp)
                            Text(
                                "自动识别说话的是否为注册用户",
                                fontSize = 12.sp,
                                color = MaterialTheme.colorScheme.onSurfaceVariant
                            )
                        }
                        Switch(
                            checked = speakerEnabled,
                            onCheckedChange = {
                                speakerEnabled = it
                                saveSpeechSettings()
                            }
                        )
                    }

                    // 声纹详细设置（开启时显示）
                    AnimatedVisibility(visible = speakerEnabled) {
                        Column {
                            Spacer(Modifier.height(12.dp))
                            HorizontalDivider()
                            Spacer(Modifier.height(12.dp))

                            // 主人称呼
                            OutlinedTextField(
                                value = speakerOwnerName,
                                onValueChange = { speakerOwnerName = it.take(12) },
                                label = { Text("主人称呼") },
                                modifier = Modifier.fillMaxWidth(),
                                singleLine = true,
                                trailingIcon = {
                                    if (speakerOwnerName != "主人") {
                                        TextButton(onClick = {
                                            speakerOwnerName = "主人"
                                            saveSpeechSettings()
                                        }) { Text("恢复") }
                                    }
                                }
                            )
                            Spacer(Modifier.height(8.dp))

                            // 识别阈值
                            Text("识别阈值：${"%.2f".format(speakerThreshold)}", fontSize = 14.sp)
                            Text(
                                "越高越严格（同一人通常 >0.7，不同人 <0.4）",
                                fontSize = 12.sp,
                                color = MaterialTheme.colorScheme.onSurfaceVariant
                            )
                            Slider(
                                value = speakerThreshold,
                                onValueChange = { speakerThreshold = it },
                                onValueChangeFinished = { saveSpeechSettings() },
                                valueRange = 0.3f..0.9f
                            )
                            Spacer(Modifier.height(8.dp))

                            // 注册状态 + 重置按钮
                            Row(
                                modifier = Modifier.fillMaxWidth(),
                                verticalAlignment = Alignment.CenterVertically,
                                horizontalArrangement = Arrangement.SpaceBetween
                            ) {
                                Text(
                                    speakerStatus,
                                    fontSize = 13.sp,
                                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                                    modifier = Modifier.weight(1f)
                                )
                                Spacer(Modifier.width(8.dp))
                                OutlinedButton(
                                    onClick = { showResetSpeakerDialog = true },
                                    colors = ButtonDefaults.outlinedButtonColors(
                                        contentColor = MaterialTheme.colorScheme.error
                                    )
                                ) {
                                    Text("重置声纹")
                                }
                            }
                        }
                    }
                }
            }

            OutlinedTextField(
                value = wsUrl,
                onValueChange = { wsUrl = it },
                label = { Text("WebSocket 地址") },
                modifier = Modifier.fillMaxWidth(),
                singleLine = true
            )

            OutlinedTextField(
                value = accessToken,
                onValueChange = { accessToken = it },
                label = { Text("访问令牌") },
                modifier = Modifier.fillMaxWidth(),
                singleLine = true
            )

            OutlinedTextField(
                value = otaUrl,
                onValueChange = { otaUrl = it },
                label = { Text("OTA 服务器地址") },
                modifier = Modifier.fillMaxWidth(),
                singleLine = true
            )

            OutlinedTextField(
                value = deviceId,
                onValueChange = {},
                label = { Text("设备 ID") },
                modifier = Modifier.fillMaxWidth(),
                singleLine = true,
                enabled = false
            )

            OutlinedTextField(
                value = clientId,
                onValueChange = {},
                label = { Text("客户端 ID") },
                modifier = Modifier.fillMaxWidth(),
                singleLine = true,
                enabled = false
            )

            // ==================== API 管理入口（点击进入独立管理页） ====================
            Card(
                modifier = Modifier
                    .fillMaxWidth()
                    .clickable { onNavigateToApiManagement() },
                colors = CardDefaults.cardColors(
                    containerColor = MaterialTheme.colorScheme.secondaryContainer.copy(alpha = 0.3f)
                )
            ) {
                Row(
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(16.dp),
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Column(modifier = Modifier.weight(1f)) {
                        Text("API 管理", fontWeight = FontWeight.Medium)
                        Text(
                            "查看并管理 APP 调用的所有 API（内置可改地址，自定义可增删）",
                            fontSize = 13.sp,
                            color = MaterialTheme.colorScheme.onSurfaceVariant
                        )
                    }
                    Icon(
                        Icons.Filled.ChevronRight,
                        contentDescription = "进入",
                        tint = MaterialTheme.colorScheme.onSurfaceVariant
                    )
                }
            }

            Button(
                onClick = {
                    scope.launch {
                        val configManager = ConfigManager(viewModel.getApplication())
                        configManager.setWebsocketUrl(wsUrl)
                        configManager.setAccessToken(accessToken)
                        configManager.setOtaUrl(otaUrl)
                    }
                    onNavigateBack()
                },
                modifier = Modifier.fillMaxWidth()
            ) {
                Text("保存设置")
            }

            OutlinedButton(
                onClick = {
                    scope.launch {
                        val configManager = ConfigManager(viewModel.getApplication())
                        configManager.resetNetworkConfig()
                        // 更新界面显示
                        wsUrl = ConfigManager.DEFAULT_WS_URL
                        accessToken = "test-token"
                        otaUrl = ConfigManager.DEFAULT_OTA_URL
                    }
                },
                modifier = Modifier.fillMaxWidth()
            ) {
                Text("恢复默认配置")
            }
        }
    }
}