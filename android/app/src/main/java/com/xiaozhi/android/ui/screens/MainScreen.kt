package com.xiaozhi.android.ui.screens

import androidx.compose.animation.animateColorAsState
import androidx.compose.animation.core.*
import androidx.compose.foundation.Image
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.lazy.rememberLazyListState
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.draw.scale
import androidx.compose.ui.graphics.graphicsLayer
import androidx.compose.ui.graphics.TransformOrigin
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.geometry.Size
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.drawscope.Stroke
import androidx.compose.ui.graphics.Path
import androidx.compose.ui.graphics.drawscope.DrawScope
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import com.xiaozhi.android.activation.ActivationService
import com.xiaozhi.android.model.DeviceState
import com.xiaozhi.android.network.WebSocketManager
import com.xiaozhi.android.ui.theme.*
import com.xiaozhi.android.viewmodel.MainViewModel

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun MainScreen(
    viewModel: MainViewModel,
    onNavigateToSettings: () -> Unit,
    onNavigateToActivation: () -> Unit
) {
    val deviceState by viewModel.deviceState.collectAsStateWithLifecycle()
    val emotion by viewModel.emotion.collectAsStateWithLifecycle()
    val logMessages by viewModel.logMessages.collectAsStateWithLifecycle()
    val activationState by viewModel.activationService.activationState.collectAsStateWithLifecycle()
    val wsConnectionState by viewModel.webSocketManager.connectionState.collectAsStateWithLifecycle()
    val activationCode by viewModel.activationService.activationCode.collectAsStateWithLifecycle()
    val otaStatus by viewModel.otaStatus.collectAsStateWithLifecycle()
    val listState = rememberLazyListState()

    // Auto-scroll logs
    LaunchedEffect(logMessages.size) {
        if (logMessages.isNotEmpty()) {
            listState.animateScrollToItem(logMessages.size - 1)
        }
    }

    // 不再自动跳转到激活页，主界面直接显示验证码和"已绑定重新检查"按钮

    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text("小智AI", fontWeight = FontWeight.Bold) },
                actions = {
                    IconButton(onClick = {
                        val ok = viewModel.togglePet()
                        if (!ok) {
                            // 需要悬浮窗权限，跳转授权
                            val ctx = viewModel.getApplication<android.app.Application>()
                            val intent = android.content.Intent(
                                android.provider.Settings.ACTION_MANAGE_OVERLAY_PERMISSION,
                                android.net.Uri.parse("package:${ctx.packageName}")
                            )
                            intent.addFlags(android.content.Intent.FLAG_ACTIVITY_NEW_TASK)
                            ctx.startActivity(intent)
                        }
                    }) {
                        Icon(Icons.Filled.Pets, contentDescription = "桌面宠物")
                    }
                    IconButton(onClick = onNavigateToActivation) {
                        Icon(Icons.Filled.VerifiedUser, contentDescription = "激活")
                    }
                    IconButton(onClick = onNavigateToSettings) {
                        Icon(Icons.Filled.Settings, contentDescription = "设置")
                    }
                },
                colors = TopAppBarDefaults.topAppBarColors(
                    containerColor = MaterialTheme.colorScheme.surface
                )
            )
        }
    ) { padding ->
        Column(
            modifier = Modifier
                .fillMaxSize()
                .padding(padding)
        ) {
            // Emotion display area
            EmotionDisplay(
                emotion = emotion,
                deviceState = deviceState,
                modifier = Modifier
                    .fillMaxWidth()
                    .weight(0.4f)
            )

            // Activation status banner
            when (activationState) {
                ActivationService.ActivationState.INITIALIZING -> {
                    Card(
                        modifier = Modifier.fillMaxWidth().padding(horizontal = 16.dp, vertical = 8.dp),
                        colors = CardDefaults.cardColors(containerColor = MaterialTheme.colorScheme.secondaryContainer)
                    ) {
                        Row(
                            modifier = Modifier.padding(12.dp),
                            verticalAlignment = Alignment.CenterVertically
                        ) {
                            CircularProgressIndicator(modifier = Modifier.size(20.dp), strokeWidth = 2.dp)
                            Spacer(Modifier.width(12.dp))
                            Text("正在初始化...", fontSize = 14.sp)
                        }
                    }
                }
                ActivationService.ActivationState.NEED_ACTIVATION -> {
                    Card(
                        modifier = Modifier.fillMaxWidth().padding(horizontal = 16.dp, vertical = 8.dp),
                        colors = CardDefaults.cardColors(containerColor = XiaozhiOrange.copy(alpha = 0.15f))
                    ) {
                        Column(modifier = Modifier.padding(12.dp)) {
                            Row(verticalAlignment = Alignment.CenterVertically) {
                                Icon(Icons.Filled.Warning, contentDescription = null, tint = XiaozhiOrange)
                                Spacer(Modifier.width(12.dp))
                                Text("设备未激活", fontWeight = FontWeight.Bold, fontSize = 14.sp)
                            }
                            Spacer(Modifier.height(8.dp))
                            val code = activationCode
                            if (code != null) {
                                Text("请在 xiaozhi.me 控制面板添加设备，输入验证码：",
                                    fontSize = 13.sp, color = MaterialTheme.colorScheme.onSurfaceVariant)
                                Spacer(Modifier.height(4.dp))
                                Text(
                                    text = code,
                                    fontSize = 28.sp,
                                    fontWeight = FontWeight.Bold,
                                    letterSpacing = 6.sp,
                                    color = MaterialTheme.colorScheme.primary
                                )
                                Spacer(Modifier.height(8.dp))
                                Text("网页绑定完成后，点下方按钮重新检查",
                                    fontSize = 12.sp, color = MaterialTheme.colorScheme.onSurfaceVariant)
                                Spacer(Modifier.height(8.dp))
                                Button(
                                    onClick = { viewModel.checkAfterBinding() },
                                    modifier = Modifier.fillMaxWidth()
                                ) {
                                    Text("我已绑定，重新检查")
                                }
                            } else {
                                Text("正在获取验证码...", fontSize = 13.sp,
                                    color = MaterialTheme.colorScheme.onSurfaceVariant)
                            }
                        }
                    }
                }
                ActivationService.ActivationState.ACTIVATING -> {
                    Card(
                        modifier = Modifier.fillMaxWidth().padding(horizontal = 16.dp, vertical = 8.dp),
                        colors = CardDefaults.cardColors(containerColor = MaterialTheme.colorScheme.secondaryContainer)
                    ) {
                        Row(
                            modifier = Modifier.padding(12.dp),
                            verticalAlignment = Alignment.CenterVertically
                        ) {
                            CircularProgressIndicator(modifier = Modifier.size(20.dp), strokeWidth = 2.dp)
                            Spacer(Modifier.width(12.dp))
                            Text("正在激活...", fontSize = 14.sp)
                        }
                    }
                }
                ActivationService.ActivationState.OTA_FAILED -> {
                    // Fallback - shouldn't reach here since OTA failure now returns ACTIVATED
                    Card(
                        modifier = Modifier.fillMaxWidth().padding(horizontal = 16.dp, vertical = 8.dp),
                        colors = CardDefaults.cardColors(containerColor = XiaozhiOrange.copy(alpha = 0.15f))
                    ) {
                        Row(
                            modifier = Modifier.padding(12.dp),
                            verticalAlignment = Alignment.CenterVertically
                        ) {
                            Icon(Icons.Filled.Info, contentDescription = null, tint = XiaozhiOrange)
                            Spacer(Modifier.width(12.dp))
                            Column(modifier = Modifier.weight(1f)) {
                                Text("使用默认配置连接", fontWeight = FontWeight.Medium, fontSize = 14.sp)
                                Text(otaStatus ?: "OTA未完成，已使用默认配置", fontSize = 12.sp,
                                    color = MaterialTheme.colorScheme.onSurfaceVariant)
                            }
                            TextButton(onClick = { viewModel.retryOta() }) {
                                Text("重试")
                            }
                        }
                    }
                }
                else -> {
                    // Activated - show OTA status as non-blocking info if present
                    if (otaStatus != null) {
                        Card(
                            modifier = Modifier.fillMaxWidth().padding(horizontal = 16.dp, vertical = 4.dp),
                            colors = CardDefaults.cardColors(containerColor = MaterialTheme.colorScheme.secondaryContainer.copy(alpha = 0.5f))
                        ) {
                            Row(
                                modifier = Modifier.padding(10.dp),
                                verticalAlignment = Alignment.CenterVertically
                            ) {
                                Icon(Icons.Filled.Info, contentDescription = null,
                                    tint = MaterialTheme.colorScheme.primary, modifier = Modifier.size(16.dp))
                                Spacer(Modifier.width(8.dp))
                                Text(otaStatus!!, fontSize = 12.sp,
                                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                                    modifier = Modifier.weight(1f))
                                TextButton(
                                    onClick = { viewModel.retryOta() },
                                    contentPadding = PaddingValues(horizontal = 8.dp, vertical = 0.dp)
                                ) {
                                    Text("重试", fontSize = 12.sp)
                                }
                            }
                        }
                    }
                }
            }

            // Main control button
            Box(
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(vertical = 16.dp),
                contentAlignment = Alignment.Center
            ) {
                MainControlButton(
                    deviceState = deviceState,
                    wsConnectionState = wsConnectionState,
                    activationState = activationState,
                    onClick = { viewModel.toggleListening() }
                )
            }

            // Status text
            StatusText(
                deviceState = deviceState,
                wsConnectionState = wsConnectionState,
                activationState = activationState,
                disconnectReason = viewModel.webSocketManager.disconnectReason.collectAsStateWithLifecycle().value
            )

            // Log area
            Card(
                modifier = Modifier
                    .fillMaxWidth()
                    .weight(0.4f)
                    .padding(horizontal = 16.dp),
                shape = RoundedCornerShape(16.dp),
                colors = CardDefaults.cardColors(
                    containerColor = MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.5f)
                )
            ) {
                LazyColumn(
                    state = listState,
                    modifier = Modifier
                        .fillMaxSize()
                        .padding(12.dp)
                ) {
                    items(logMessages) { log ->
                        Text(
                            text = log,
                            fontSize = 13.sp,
                            color = MaterialTheme.colorScheme.onSurfaceVariant,
                            modifier = Modifier.padding(vertical = 2.dp)
                        )
                    }
                }
            }
        }
    }
}

@Composable
fun EmotionDisplay(
    emotion: String,
    deviceState: DeviceState,
    modifier: Modifier = Modifier
) {
    val isActive = deviceState == DeviceState.LISTENING || deviceState == DeviceState.SPEAKING
    val scale by animateFloatAsState(
        targetValue = if (isActive) 1.05f else 1f,
        animationSpec = infiniteRepeatable(
            animation = tween(1000, easing = FastOutSlowInEasing),
            repeatMode = RepeatMode.Reverse
        ),
        label = "emotion_scale"
    )

    // 身体摇摆角度（说话时左右摆动）
    val bodyRotation by animateFloatAsState(
        targetValue = if (deviceState == DeviceState.SPEAKING) 3f else 0f,
        animationSpec = if (deviceState == DeviceState.SPEAKING) infiniteRepeatable(
            animation = tween(500, easing = FastOutSlowInEasing),
            repeatMode = RepeatMode.Reverse
        ) else tween(300),
        label = "body_rotation"
    )

    // 身体上下浮动（聆听时微微弹跳）
    val bodyOffsetY by animateFloatAsState(
        targetValue = if (deviceState == DeviceState.LISTENING) -8f else 0f,
        animationSpec = if (deviceState == DeviceState.LISTENING) infiniteRepeatable(
            animation = tween(600, easing = FastOutSlowInEasing),
            repeatMode = RepeatMode.Reverse
        ) else tween(300),
        label = "body_offset_y"
    )

    // 连接时抖动
    val shakeOffset by animateFloatAsState(
        targetValue = if (deviceState == DeviceState.CONNECTING) 2f else 0f,
        animationSpec = if (deviceState == DeviceState.CONNECTING) infiniteRepeatable(
            animation = tween(100, easing = LinearEasing),
            repeatMode = RepeatMode.Reverse
        ) else tween(200),
        label = "shake_offset"
    )

    // 头部摇摆角度（说话时头部左右轻摆）
    val headRotation by animateFloatAsState(
        targetValue = when (deviceState) {
            DeviceState.SPEAKING -> 4f
            DeviceState.LISTENING -> 2f
            DeviceState.CONNECTING -> -5f
            else -> 0f
        },
        animationSpec = when (deviceState) {
            DeviceState.SPEAKING -> infiniteRepeatable(
                animation = tween(700, easing = FastOutSlowInEasing),
                repeatMode = RepeatMode.Reverse
            )
            DeviceState.LISTENING -> infiniteRepeatable(
                animation = tween(1500, easing = FastOutSlowInEasing),
                repeatMode = RepeatMode.Reverse
            )
            else -> tween(400)
        },
        label = "head_rotation"
    )

    val color by animateColorAsState(
        targetValue = when (deviceState) {
            DeviceState.LISTENING -> XiaozhiGreen
            DeviceState.SPEAKING -> XiaozhiBlue
            DeviceState.CONNECTING -> XiaozhiOrange
            DeviceState.IDLE -> MaterialTheme.colorScheme.onSurface.copy(alpha = 0.3f)
        },
        label = "emotion_color"
    )

    // 说话时嘴巴动画
    val mouthOpen by animateFloatAsState(
        targetValue = if (deviceState == DeviceState.SPEAKING) 1f else 0f,
        animationSpec = if (deviceState == DeviceState.SPEAKING) infiniteRepeatable(
            animation = tween(200, easing = LinearEasing),
            repeatMode = RepeatMode.Reverse
        ) else tween(300),
        label = "mouth_anim"
    )

    // 思考时眨眼动画
    val blinkAlpha by animateFloatAsState(
        targetValue = if (deviceState == DeviceState.CONNECTING) 0.3f else 1f,
        animationSpec = if (deviceState == DeviceState.CONNECTING)
            infiniteRepeatable(
                animation = tween(800, easing = FastOutSlowInEasing),
                repeatMode = RepeatMode.Reverse
            )
        else tween(300),
        label = "blink_anim"
    )

    Box(
        modifier = modifier,
        contentAlignment = Alignment.Center
    ) {
        Column(
            horizontalAlignment = Alignment.CenterHorizontally
        ) {
            Box(contentAlignment = Alignment.Center) {
                // 机器人主体图片（身体+头部整体，应用身体摇摆和浮动）
                Image(
                    painter = painterResource(id = com.xiaozhi.android.R.drawable.ic_pet),
                    contentDescription = "小智",
                    modifier = Modifier
                        .size(280.dp)
                        .scale(scale)
                        .graphicsLayer {
                            rotationZ = bodyRotation
                            translationY = bodyOffsetY + shakeOffset
                            translationX = shakeOffset
                        }
                )
                // 面部表情（应用头部摇摆，以头部中心为轴心）
                androidx.compose.foundation.Canvas(
                    modifier = Modifier
                        .size(280.dp)
                        .scale(scale)
                        .graphicsLayer {
                            // 头部屏幕中心约在 (0.497w, 0.254h)，以此为轴心旋转
                            rotationZ = headRotation + bodyRotation
                            translationY = bodyOffsetY + shakeOffset
                            translationX = shakeOffset
                            // 头部旋转的轴心设在屏幕中心位置
                            transformOrigin = TransformOrigin(0.497f, 0.254f)
                        }
                ) {
                    drawFaceExpression(deviceState, mouthOpen, blinkAlpha)
                }
            }

            Spacer(modifier = Modifier.height(8.dp))

            Box(
                modifier = Modifier
                    .size(12.dp)
                    .clip(CircleShape)
                    .background(color)
            )
        }
    }
}

/**
 * 在2D图片上叠加绘制面部表情（眼睛和嘴巴）。
 * 根据设备状态绘制不同的表情。
 */
private fun DrawScope.drawFaceExpression(
    deviceState: DeviceState,
    mouthOpen: Float,
    blinkAlpha: Float
) {
    val w = size.width
    val h = size.height

    // 面部黑色屏幕区域（像素分析精确测量 new_robot.png）
    // 脸部屏幕: x=0.258w~0.698w, y=0.148h~0.375h  宽0.440 高0.226
    // 精确中心: (0.4775w, 0.2615h)
    val faceCenterX = w * 0.4775f
    val faceCenterY = h * 0.2615f
    val eyeSpacing = w * 0.04f
    val eyeY = faceCenterY - h * 0.025f
    val mouthY = faceCenterY + h * 0.045f

    val eyeColor = Color(0xFF00E5FF)
    val mouthColor = Color(0xFF00E5FF)

    when (deviceState) {
        DeviceState.LISTENING -> {
            // 眼睛：大圆点（专注）
            drawCircle(
                color = eyeColor.copy(alpha = blinkAlpha),
                radius = w * 0.025f,
                center = Offset(faceCenterX - eyeSpacing, eyeY)
            )
            drawCircle(
                color = eyeColor.copy(alpha = blinkAlpha),
                radius = w * 0.025f,
                center = Offset(faceCenterX + eyeSpacing, eyeY)
            )
            // 嘴巴：小圆（微张）
            drawCircle(
                color = mouthColor.copy(alpha = 0.7f),
                radius = w * 0.015f,
                center = Offset(faceCenterX, mouthY)
            )
        }
        DeviceState.SPEAKING -> {
            // 眼睛：弯月形（开心）
            drawArc(
                color = eyeColor,
                startAngle = 0f,
                sweepAngle = 180f,
                useCenter = false,
                topLeft = Offset(faceCenterX - eyeSpacing - w * 0.02f, eyeY - w * 0.01f),
                size = Size(w * 0.04f, w * 0.02f),
                style = Stroke(width = w * 0.008f)
            )
            drawArc(
                color = eyeColor,
                startAngle = 0f,
                sweepAngle = 180f,
                useCenter = false,
                topLeft = Offset(faceCenterX + eyeSpacing - w * 0.02f, eyeY - w * 0.01f),
                size = Size(w * 0.04f, w * 0.02f),
                style = Stroke(width = w * 0.008f)
            )
            // 嘴巴：说话时开合动画
            val mouthHeight = w * 0.01f + mouthOpen * w * 0.025f
            drawOval(
                color = mouthColor,
                topLeft = Offset(faceCenterX - w * 0.02f, mouthY - mouthHeight / 2),
                size = Size(w * 0.04f, mouthHeight)
            )
        }
        DeviceState.CONNECTING -> {
            // 眼睛：半闭（思考/连接中）
            drawCircle(
                color = eyeColor.copy(alpha = blinkAlpha),
                radius = w * 0.018f,
                center = Offset(faceCenterX - eyeSpacing, eyeY)
            )
            drawCircle(
                color = eyeColor.copy(alpha = blinkAlpha),
                radius = w * 0.018f,
                center = Offset(faceCenterX + eyeSpacing, eyeY)
            )
            // 嘴巴：波浪线（思考）
            val path = Path().apply {
                moveTo(faceCenterX - w * 0.03f, mouthY)
                cubicTo(
                    faceCenterX - w * 0.015f, mouthY - w * 0.015f,
                    faceCenterX - w * 0.005f, mouthY + w * 0.015f,
                    faceCenterX, mouthY
                )
                cubicTo(
                    faceCenterX + w * 0.005f, mouthY - w * 0.015f,
                    faceCenterX + w * 0.015f, mouthY + w * 0.015f,
                    faceCenterX + w * 0.03f, mouthY
                )
            }
            drawPath(
                path = path,
                color = mouthColor.copy(alpha = 0.6f),
                style = Stroke(width = w * 0.006f)
            )
        }
        else -> {
            // IDLE：眼睛微亮（待机）
            drawCircle(
                color = eyeColor.copy(alpha = 0.4f),
                radius = w * 0.015f,
                center = Offset(faceCenterX - eyeSpacing, eyeY)
            )
            drawCircle(
                color = eyeColor.copy(alpha = 0.4f),
                radius = w * 0.015f,
                center = Offset(faceCenterX + eyeSpacing, eyeY)
            )
        }
    }
}

@Composable
fun MainControlButton(
    deviceState: DeviceState,
    wsConnectionState: WebSocketManager.ConnectionState,
    activationState: ActivationService.ActivationState,
    onClick: () -> Unit
) {
    val isDisabled = activationState != ActivationService.ActivationState.ACTIVATED &&
            activationState != ActivationService.ActivationState.ACTIVATION_SUCCESS

    val colors = when {
        isDisabled -> Color.Gray
        deviceState == DeviceState.LISTENING -> XiaozhiGreen
        deviceState == DeviceState.SPEAKING -> XiaozhiOrange
        deviceState == DeviceState.CONNECTING -> XiaozhiOrange
        else -> XiaozhiBlue
    }

    val icon = when {
        isDisabled -> Icons.Filled.Lock
        deviceState == DeviceState.LISTENING -> Icons.Filled.Mic
        deviceState == DeviceState.SPEAKING -> Icons.Filled.Stop
        deviceState == DeviceState.CONNECTING -> Icons.Filled.HourglassTop
        else -> Icons.Filled.Mic
    }

    val isPulsing = deviceState == DeviceState.LISTENING
    val pulseScale by animateFloatAsState(
        targetValue = if (isPulsing) 1.1f else 1f,
        animationSpec = if (isPulsing) {
            infiniteRepeatable(
                animation = tween(800, easing = FastOutSlowInEasing),
                repeatMode = RepeatMode.Reverse
            )
        } else {
            tween(300)
        },
        label = "pulse"
    )

    FloatingActionButton(
        onClick = { if (!isDisabled) onClick() },
        modifier = Modifier
            .size(80.dp)
            .scale(pulseScale),
        containerColor = colors,
        contentColor = Color.White,
        shape = CircleShape
    ) {
        Icon(
            imageVector = icon,
            contentDescription = when {
                isDisabled -> "需要激活"
                deviceState == DeviceState.LISTENING -> "聆听中"
                deviceState == DeviceState.SPEAKING -> "打断"
                deviceState == DeviceState.CONNECTING -> "连接中"
                else -> "开始对话"
            },
            modifier = Modifier.size(36.dp)
        )
    }
}

@Composable
fun StatusText(
    deviceState: DeviceState,
    wsConnectionState: WebSocketManager.ConnectionState,
    activationState: ActivationService.ActivationState,
    disconnectReason: String? = null
) {
    val text = when {
        activationState == ActivationService.ActivationState.INITIALIZING -> "正在初始化..."
        activationState == ActivationService.ActivationState.NEED_ACTIVATION -> "请先激活设备"
        activationState == ActivationService.ActivationState.ACTIVATING -> "正在激活设备..."
        activationState == ActivationService.ActivationState.ACTIVATION_FAILED -> "激活失败，请重试"
        activationState == ActivationService.ActivationState.OTA_FAILED -> "OTA请求失败，点击重试或跳过"
        wsConnectionState == WebSocketManager.ConnectionState.CONNECTING -> "正在连接服务器..."
        wsConnectionState == WebSocketManager.ConnectionState.DISCONNECTED -> {
            if (disconnectReason != null) "连接断开: ${disconnectReason.take(20)}" else "服务器未连接"
        }
        deviceState == DeviceState.IDLE -> "点击按钮开始对话"
        deviceState == DeviceState.LISTENING -> "正在聆听..."
        deviceState == DeviceState.SPEAKING -> "AI 正在说话..."
        else -> "就绪"
    }

    Text(
        text = text,
        fontSize = 14.sp,
        fontWeight = FontWeight.Medium,
        color = if (wsConnectionState == WebSocketManager.ConnectionState.DISCONNECTED &&
            activationState != ActivationService.ActivationState.OTA_FAILED &&
            activationState != ActivationService.ActivationState.INITIALIZING
        ) MaterialTheme.colorScheme.error else MaterialTheme.colorScheme.onSurfaceVariant,
        modifier = Modifier
            .fillMaxWidth()
            .padding(horizontal = 16.dp),
        textAlign = androidx.compose.ui.text.style.TextAlign.Center
    )
}