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
                // 面部表情（跟随图片同步运动，完全相同的变换）
                androidx.compose.foundation.Canvas(
                    modifier = Modifier
                        .size(280.dp)
                        .scale(scale)
                        .graphicsLayer {
                            rotationZ = bodyRotation
                            translationY = bodyOffsetY + shakeOffset
                            translationX = shakeOffset
                        }
                ) {
                    drawFaceExpression(deviceState, mouthOpen, blinkAlpha, emotion)
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
    blinkAlpha: Float,
    emotion: String = "neutral"
) {
    val w = size.width
    val h = size.height

    // 面部表情位置（用户微调：右移+上移）
    val faceCenterX = w * 0.515f
    val faceCenterY = h * 0.235f
    val eyeSpacing = w * 0.04f
    val eyeY = faceCenterY - h * 0.025f
    val mouthY = faceCenterY + h * 0.045f

    val eyeColor = Color(0xFF00E5FF)
    val mouthColor = Color(0xFF00E5FF)

    // 如果有特定情绪，优先绘制情绪表情
    when (emotion.lowercase()) {
        "neutral", "calm" -> {
            // 平静：正常圆眼 + 直线嘴
            drawCircle(eyeColor.copy(alpha = blinkAlpha), w * 0.022f,
                Offset(faceCenterX - eyeSpacing, eyeY))
            drawCircle(eyeColor.copy(alpha = blinkAlpha), w * 0.022f,
                Offset(faceCenterX + eyeSpacing, eyeY))
            drawLine(mouthColor.copy(alpha = 0.7f),
                Offset(faceCenterX - w * 0.02f, mouthY),
                Offset(faceCenterX + w * 0.02f, mouthY), strokeWidth = w * 0.006f)
        }
        "thinking", "confused" -> {
            // 思考/困惑：圆眼 + 一边眉毛上扬 + 歪嘴
            drawCircle(eyeColor.copy(alpha = blinkAlpha), w * 0.022f,
                Offset(faceCenterX - eyeSpacing, eyeY))
            drawCircle(eyeColor.copy(alpha = blinkAlpha), w * 0.022f,
                Offset(faceCenterX + eyeSpacing, eyeY))
            // 右眉上扬
            drawLine(eyeColor,
                Offset(faceCenterX + eyeSpacing - w * 0.02f, eyeY - w * 0.04f),
                Offset(faceCenterX + eyeSpacing + w * 0.02f, eyeY - w * 0.035f),
                strokeWidth = w * 0.006f)
            // 歪嘴
            drawLine(mouthColor,
                Offset(faceCenterX - w * 0.02f, mouthY + w * 0.01f),
                Offset(faceCenterX + w * 0.02f, mouthY - w * 0.005f),
                strokeWidth = w * 0.006f)
        }
        "cool", "sunglasses" -> {
            // 酷：墨镜 + 微笑
            // 墨镜框
            drawRect(Color(0xFF1A1A1A),
                topLeft = Offset(faceCenterX - eyeSpacing - w * 0.03f, eyeY - w * 0.015f),
                size = Size(w * 0.06f, w * 0.03f))
            drawRect(Color(0xFF1A1A1A),
                topLeft = Offset(faceCenterX + eyeSpacing - w * 0.03f, eyeY - w * 0.015f),
                size = Size(w * 0.06f, w * 0.03f))
            // 镜片桥
            drawLine(Color(0xFF1A1A1A),
                Offset(faceCenterX - eyeSpacing + w * 0.03f, eyeY),
                Offset(faceCenterX + eyeSpacing - w * 0.03f, eyeY),
                strokeWidth = w * 0.006f)
            // 镜片反光
            drawLine(Color(0xFF00E5FF).copy(alpha = 0.6f),
                Offset(faceCenterX - eyeSpacing - w * 0.02f, eyeY - w * 0.008f),
                Offset(faceCenterX - eyeSpacing - w * 0.005f, eyeY - w * 0.008f),
                strokeWidth = w * 0.004f)
            drawLine(Color(0xFF00E5FF).copy(alpha = 0.6f),
                Offset(faceCenterX + eyeSpacing - w * 0.02f, eyeY - w * 0.008f),
                Offset(faceCenterX + eyeSpacing - w * 0.005f, eyeY - w * 0.008f),
                strokeWidth = w * 0.004f)
            // 微笑
            drawArc(mouthColor,
                startAngle = 180f, sweepAngle = 180f, useCenter = false,
                topLeft = Offset(faceCenterX - w * 0.025f, mouthY - w * 0.01f),
                size = Size(w * 0.05f, w * 0.025f),
                style = Stroke(width = w * 0.006f))
        }
        "silly", "derp" -> {
            // 呆：斗鸡眼 + 吐舌
            drawCircle(eyeColor.copy(alpha = blinkAlpha), w * 0.022f,
                Offset(faceCenterX - w * 0.005f, eyeY))
            drawCircle(eyeColor.copy(alpha = blinkAlpha), w * 0.022f,
                Offset(faceCenterX + w * 0.005f, eyeY))
            // 吐舌
            drawOval(Color(0xFFFF6B9D),
                topLeft = Offset(faceCenterX - w * 0.008f, mouthY),
                size = Size(w * 0.016f, w * 0.03f))
        }
        "proud", "smug" -> {
            // 得意：半闭眼 + 坏笑
            drawLine(eyeColor.copy(alpha = blinkAlpha),
                Offset(faceCenterX - eyeSpacing - w * 0.02f, eyeY),
                Offset(faceCenterX - eyeSpacing + w * 0.02f, eyeY - w * 0.005f),
                strokeWidth = w * 0.008f)
            drawLine(eyeColor.copy(alpha = blinkAlpha),
                Offset(faceCenterX + eyeSpacing - w * 0.02f, eyeY),
                Offset(faceCenterX + eyeSpacing + w * 0.02f, eyeY - w * 0.005f),
                strokeWidth = w * 0.008f)
            // 坏笑
            drawArc(mouthColor,
                startAngle = 200f, sweepAngle = 140f, useCenter = false,
                topLeft = Offset(faceCenterX - w * 0.025f, mouthY - w * 0.005f),
                size = Size(w * 0.05f, w * 0.025f),
                style = Stroke(width = w * 0.006f))
        }
        "embarrassed", "blush" -> {
            // 害羞：圆眼 + 大腮红 + 小嘴
            drawCircle(eyeColor.copy(alpha = blinkAlpha), w * 0.022f,
                Offset(faceCenterX - eyeSpacing, eyeY))
            drawCircle(eyeColor.copy(alpha = blinkAlpha), w * 0.022f,
                Offset(faceCenterX + eyeSpacing, eyeY))
            // 大腮红
            drawCircle(Color(0xFFFFB6C1).copy(alpha = 0.8f), w * 0.028f,
                Offset(faceCenterX - eyeSpacing - w * 0.022f, eyeY + w * 0.02f))
            drawCircle(Color(0xFFFFB6C1).copy(alpha = 0.8f), w * 0.028f,
                Offset(faceCenterX + eyeSpacing + w * 0.022f, eyeY + w * 0.02f))
            // 小嘴
            drawCircle(mouthColor.copy(alpha = 0.7f), w * 0.01f,
                Offset(faceCenterX, mouthY))
        }
        "curious" -> {
            // 好奇：大圆眼 + 问号嘴
            drawCircle(eyeColor.copy(alpha = blinkAlpha), w * 0.028f,
                Offset(faceCenterX - eyeSpacing, eyeY))
            drawCircle(eyeColor.copy(alpha = blinkAlpha), w * 0.028f,
                Offset(faceCenterX + eyeSpacing, eyeY))
            // 眼睛高光
            drawCircle(Color.White, w * 0.008f,
                Offset(faceCenterX - eyeSpacing + w * 0.01f, eyeY - w * 0.01f))
            drawCircle(Color.White, w * 0.008f,
                Offset(faceCenterX + eyeSpacing + w * 0.01f, eyeY - w * 0.01f))
            // 问号（小圆点）
            drawCircle(mouthColor.copy(alpha = 0.8f), w * 0.012f,
                Offset(faceCenterX, mouthY))
            drawCircle(mouthColor.copy(alpha = 0.8f), w * 0.005f,
                Offset(faceCenterX, mouthY + w * 0.025f))
        }
        "exhausted", "dead" -> {
            // 崩溃：X眼 + 大张嘴
            // 左X
            drawLine(eyeColor,
                Offset(faceCenterX - eyeSpacing - w * 0.02f, eyeY - w * 0.02f),
                Offset(faceCenterX - eyeSpacing + w * 0.02f, eyeY + w * 0.02f),
                strokeWidth = w * 0.006f)
            drawLine(eyeColor,
                Offset(faceCenterX - eyeSpacing - w * 0.02f, eyeY + w * 0.02f),
                Offset(faceCenterX - eyeSpacing + w * 0.02f, eyeY - w * 0.02f),
                strokeWidth = w * 0.006f)
            // 右X
            drawLine(eyeColor,
                Offset(faceCenterX + eyeSpacing - w * 0.02f, eyeY - w * 0.02f),
                Offset(faceCenterX + eyeSpacing + w * 0.02f, eyeY + w * 0.02f),
                strokeWidth = w * 0.006f)
            drawLine(eyeColor,
                Offset(faceCenterX + eyeSpacing - w * 0.02f, eyeY + w * 0.02f),
                Offset(faceCenterX + eyeSpacing + w * 0.02f, eyeY - w * 0.02f),
                strokeWidth = w * 0.006f)
            // 大张嘴
            drawOval(mouthColor,
                topLeft = Offset(faceCenterX - w * 0.025f, mouthY - w * 0.02f),
                size = Size(w * 0.05f, w * 0.04f))
        }
        "kiss" -> {
            // 飞吻：眨眼 + 嘴唇
            drawCircle(eyeColor.copy(alpha = blinkAlpha), w * 0.025f,
                Offset(faceCenterX - eyeSpacing, eyeY))
            drawLine(eyeColor.copy(alpha = blinkAlpha),
                Offset(faceCenterX + eyeSpacing - w * 0.02f, eyeY),
                Offset(faceCenterX + eyeSpacing + w * 0.02f, eyeY),
                strokeWidth = w * 0.008f)
            // 嘴唇（两个椭圆）
            drawOval(Color(0xFFFF6B9D),
                topLeft = Offset(faceCenterX - w * 0.02f, mouthY - w * 0.012f),
                size = Size(w * 0.04f, w * 0.024f))
            drawLine(Color(0xFFFF1493),
                Offset(faceCenterX - w * 0.02f, mouthY),
                Offset(faceCenterX + w * 0.02f, mouthY),
                strokeWidth = w * 0.004f)
        }
        "smirk" -> {
            // 坏笑：圆眼 + 单边上扬
            drawCircle(eyeColor.copy(alpha = blinkAlpha), w * 0.022f,
                Offset(faceCenterX - eyeSpacing, eyeY))
            drawCircle(eyeColor.copy(alpha = blinkAlpha), w * 0.022f,
                Offset(faceCenterX + eyeSpacing, eyeY))
            // 坏笑嘴
            drawLine(mouthColor,
                Offset(faceCenterX - w * 0.025f, mouthY + w * 0.005f),
                Offset(faceCenterX + w * 0.025f, mouthY - w * 0.015f),
                strokeWidth = w * 0.006f)
        }
        "dizzy" -> {
            // 晕：螺旋眼 + 波浪嘴
            // 左螺旋
            val leftSpiral = Path().apply {
                moveTo(faceCenterX - eyeSpacing, eyeY)
                cubicTo(
                    faceCenterX - eyeSpacing - w * 0.02f, eyeY - w * 0.015f,
                    faceCenterX - eyeSpacing + w * 0.015f, eyeY - w * 0.02f,
                    faceCenterX - eyeSpacing, eyeY
                )
                cubicTo(
                    faceCenterX - eyeSpacing + w * 0.01f, eyeY + w * 0.01f,
                    faceCenterX - eyeSpacing - w * 0.01f, eyeY + w * 0.01f,
                    faceCenterX - eyeSpacing, eyeY
                )
            }
            drawPath(leftSpiral, eyeColor, style = Stroke(width = w * 0.005f))
            // 右螺旋
            val rightSpiral = Path().apply {
                moveTo(faceCenterX + eyeSpacing, eyeY)
                cubicTo(
                    faceCenterX + eyeSpacing - w * 0.02f, eyeY - w * 0.015f,
                    faceCenterX + eyeSpacing + w * 0.015f, eyeY - w * 0.02f,
                    faceCenterX + eyeSpacing, eyeY
                )
                cubicTo(
                    faceCenterX + eyeSpacing + w * 0.01f, eyeY + w * 0.01f,
                    faceCenterX + eyeSpacing - w * 0.01f, eyeY + w * 0.01f,
                    faceCenterX + eyeSpacing, eyeY
                )
            }
            drawPath(rightSpiral, eyeColor, style = Stroke(width = w * 0.005f))
            // 波浪嘴
            val wavePath = Path().apply {
                moveTo(faceCenterX - w * 0.025f, mouthY)
                cubicTo(
                    faceCenterX - w * 0.015f, mouthY - w * 0.012f,
                    faceCenterX - w * 0.005f, mouthY + w * 0.012f,
                    faceCenterX, mouthY
                )
                cubicTo(
                    faceCenterX + w * 0.005f, mouthY - w * 0.012f,
                    faceCenterX + w * 0.015f, mouthY + w * 0.012f,
                    faceCenterX + w * 0.025f, mouthY
                )
            }
            drawPath(wavePath, mouthColor, style = Stroke(width = w * 0.005f))
        }
        "star", "awesome" -> {
            // 星星眼：五角星 + 微笑
            fun drawStar(cx: Float, cy: Float, r: Float) {
                val starPath = Path()
                for (i in 0..4) {
                    val outerAngle = Math.PI / 2 + i * 2 * Math.PI / 5
                    val innerAngle = outerAngle + Math.PI / 5
                    val ox = cx + r * Math.cos(outerAngle).toFloat()
                    val oy = cy - r * Math.sin(outerAngle).toFloat()
                    val ix = cx + (r * 0.4f) * Math.cos(innerAngle).toFloat()
                    val iy = cy - (r * 0.4f) * Math.sin(innerAngle).toFloat()
                    if (i == 0) starPath.moveTo(ox, oy) else starPath.lineTo(ox, oy)
                    starPath.lineTo(ix, iy)
                }
                starPath.close()
                drawPath(starPath, Color(0xFFFFD700))
            }
            drawStar(faceCenterX - eyeSpacing, eyeY, w * 0.025f)
            drawStar(faceCenterX + eyeSpacing, eyeY, w * 0.025f)
            // 微笑
            drawArc(mouthColor,
                startAngle = 180f, sweepAngle = 180f, useCenter = false,
                topLeft = Offset(faceCenterX - w * 0.025f, mouthY - w * 0.01f),
                size = Size(w * 0.05f, w * 0.025f),
                style = Stroke(width = w * 0.006f))
        }
        "rage", "furious" -> {
            // 暴怒：怒视 + 震动嘴
            drawCircle(Color(0xFFFF3344), w * 0.025f,
                Offset(faceCenterX - eyeSpacing, eyeY))
            drawCircle(Color(0xFFFF3344), w * 0.025f,
                Offset(faceCenterX + eyeSpacing, eyeY))
            // 眉毛
            drawLine(Color(0xFFFF3344),
                Offset(faceCenterX - eyeSpacing - w * 0.025f, eyeY - w * 0.035f),
                Offset(faceCenterX - eyeSpacing + w * 0.015f, eyeY - w * 0.015f),
                strokeWidth = w * 0.01f)
            drawLine(Color(0xFFFF3344),
                Offset(faceCenterX + eyeSpacing + w * 0.025f, eyeY - w * 0.035f),
                Offset(faceCenterX + eyeSpacing - w * 0.015f, eyeY - w * 0.015f),
                strokeWidth = w * 0.01f)
            // 张大嘴
            drawOval(Color(0xFFFF3344),
                topLeft = Offset(faceCenterX - w * 0.025f, mouthY - w * 0.015f),
                size = Size(w * 0.05f, w * 0.03f))
        }
        "depressed" -> {
            // 抑郁：半闭眼 + 大下弯嘴
            drawLine(eyeColor.copy(alpha = 0.5f),
                Offset(faceCenterX - eyeSpacing - w * 0.02f, eyeY + w * 0.005f),
                Offset(faceCenterX - eyeSpacing + w * 0.02f, eyeY - w * 0.005f),
                strokeWidth = w * 0.006f)
            drawLine(eyeColor.copy(alpha = 0.5f),
                Offset(faceCenterX + eyeSpacing - w * 0.02f, eyeY + w * 0.005f),
                Offset(faceCenterX + eyeSpacing + w * 0.02f, eyeY - w * 0.005f),
                strokeWidth = w * 0.006f)
            // 大下弯嘴
            drawArc(mouthColor.copy(alpha = 0.6f),
                startAngle = 0f, sweepAngle = 180f, useCenter = false,
                topLeft = Offset(faceCenterX - w * 0.04f, mouthY - w * 0.005f),
                size = Size(w * 0.08f, w * 0.04f),
                style = Stroke(width = w * 0.006f))
        }
        "happy", "smile", "excited", "laughing" -> {
            // 开心/兴奋：弯月笑眼 + 大笑
            drawArc(
                color = eyeColor.copy(alpha = blinkAlpha),
                startAngle = 0f, sweepAngle = 180f, useCenter = false,
                topLeft = Offset(faceCenterX - eyeSpacing - w * 0.02f, eyeY - w * 0.01f),
                size = Size(w * 0.04f, w * 0.02f),
                style = Stroke(width = w * 0.008f)
            )
            drawArc(
                color = eyeColor.copy(alpha = blinkAlpha),
                startAngle = 0f, sweepAngle = 180f, useCenter = false,
                topLeft = Offset(faceCenterX + eyeSpacing - w * 0.02f, eyeY - w * 0.01f),
                size = Size(w * 0.04f, w * 0.02f),
                style = Stroke(width = w * 0.008f)
            )
            if (deviceState == DeviceState.SPEAKING) {
                val mouthHeight = w * 0.02f + mouthOpen * w * 0.03f
                drawArc(
                    color = mouthColor,
                    startAngle = 180f, sweepAngle = 180f, useCenter = false,
                    topLeft = Offset(faceCenterX - w * 0.04f, mouthY - mouthHeight / 2),
                    size = Size(w * 0.08f, mouthHeight),
                    style = Stroke(width = w * 0.008f)
                )
            } else {
                drawArc(
                    color = mouthColor,
                    startAngle = 180f, sweepAngle = 180f, useCenter = false,
                    topLeft = Offset(faceCenterX - w * 0.03f, mouthY - w * 0.015f),
                    size = Size(w * 0.06f, w * 0.03f),
                    style = Stroke(width = w * 0.008f)
                )
            }
        }
        "sad", "cry", "tearful" -> {
            // 伤心：弯月眼（下弯）+ 泪水 + 下弯嘴
            drawArc(
                color = eyeColor.copy(alpha = blinkAlpha),
                startAngle = 180f, sweepAngle = 180f, useCenter = false,
                topLeft = Offset(faceCenterX - eyeSpacing - w * 0.02f, eyeY - w * 0.01f),
                size = Size(w * 0.04f, w * 0.02f),
                style = Stroke(width = w * 0.008f)
            )
            drawArc(
                color = eyeColor.copy(alpha = blinkAlpha),
                startAngle = 180f, sweepAngle = 180f, useCenter = false,
                topLeft = Offset(faceCenterX + eyeSpacing - w * 0.02f, eyeY - w * 0.01f),
                size = Size(w * 0.04f, w * 0.02f),
                style = Stroke(width = w * 0.008f)
            )
            // 泪水
            drawCircle(
                color = Color(0xFF00BFFF).copy(alpha = 0.8f),
                radius = w * 0.008f,
                center = Offset(faceCenterX - eyeSpacing, eyeY + w * 0.04f)
            )
            drawCircle(
                color = Color(0xFF00BFFF).copy(alpha = 0.8f),
                radius = w * 0.008f,
                center = Offset(faceCenterX + eyeSpacing, eyeY + w * 0.04f)
            )
            // 嘴巴下弯
            drawArc(
                color = mouthColor,
                startAngle = 0f, sweepAngle = 180f, useCenter = false,
                topLeft = Offset(faceCenterX - w * 0.03f, mouthY - w * 0.01f),
                size = Size(w * 0.06f, w * 0.03f),
                style = Stroke(width = w * 0.008f)
            )
        }
        "angry", "mad", "furious" -> {
            // 生气：怒视眼 + 紧抿嘴
            // 眼睛
            drawCircle(
                color = eyeColor.copy(alpha = blinkAlpha),
                radius = w * 0.02f,
                center = Offset(faceCenterX - eyeSpacing, eyeY)
            )
            drawCircle(
                color = eyeColor.copy(alpha = blinkAlpha),
                radius = w * 0.02f,
                center = Offset(faceCenterX + eyeSpacing, eyeY)
            )
            // 眉毛（倒八字）
            val leftBrowPath = Path().apply {
                moveTo(faceCenterX - eyeSpacing - w * 0.03f, eyeY - w * 0.03f)
                lineTo(faceCenterX - eyeSpacing + w * 0.01f, eyeY - w * 0.015f)
            }
            drawPath(leftBrowPath, eyeColor, style = Stroke(width = w * 0.008f))
            val rightBrowPath = Path().apply {
                moveTo(faceCenterX + eyeSpacing + w * 0.03f, eyeY - w * 0.03f)
                lineTo(faceCenterX + eyeSpacing - w * 0.01f, eyeY - w * 0.015f)
            }
            drawPath(rightBrowPath, eyeColor, style = Stroke(width = w * 0.008f))
            // 紧抿的嘴
            drawLine(
                color = mouthColor,
                start = Offset(faceCenterX - w * 0.03f, mouthY),
                end = Offset(faceCenterX + w * 0.03f, mouthY),
                strokeWidth = w * 0.008f
            )
        }
        "surprised", "shocked" -> {
            // 惊讶：大圆眼 + O型嘴
            drawCircle(
                color = eyeColor.copy(alpha = blinkAlpha),
                radius = w * 0.03f,
                center = Offset(faceCenterX - eyeSpacing, eyeY)
            )
            drawCircle(
                color = eyeColor.copy(alpha = blinkAlpha),
                radius = w * 0.03f,
                center = Offset(faceCenterX + eyeSpacing, eyeY)
            )
            if (deviceState == DeviceState.SPEAKING) {
                drawCircle(
                    color = mouthColor,
                    radius = w * 0.025f + mouthOpen * w * 0.015f,
                    center = Offset(faceCenterX, mouthY)
                )
            } else {
                drawCircle(
                    color = mouthColor,
                    radius = w * 0.02f,
                    center = Offset(faceCenterX, mouthY)
                )
            }
        }
        "fearful", "worried", "scared" -> {
            // 担心/害怕：稍大眼 + 抖动嘴
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
            // 嘴巴微张
            drawOval(
                color = mouthColor.copy(alpha = 0.8f),
                topLeft = Offset(faceCenterX - w * 0.015f, mouthY - w * 0.01f),
                size = Size(w * 0.03f, w * 0.025f)
            )
        }
        "disgusted" -> {
            // 厌恶：波浪眼 + 撇嘴
            drawPath(
                path = Path().apply {
                    moveTo(faceCenterX - eyeSpacing - w * 0.02f, eyeY)
                    cubicTo(
                        faceCenterX - eyeSpacing - w * 0.01f, eyeY - w * 0.015f,
                        faceCenterX - eyeSpacing + w * 0.01f, eyeY + w * 0.015f,
                        faceCenterX - eyeSpacing + w * 0.02f, eyeY
                    )
                },
                color = eyeColor.copy(alpha = blinkAlpha),
                style = Stroke(width = w * 0.006f)
            )
            drawPath(
                path = Path().apply {
                    moveTo(faceCenterX + eyeSpacing - w * 0.02f, eyeY)
                    cubicTo(
                        faceCenterX + eyeSpacing - w * 0.01f, eyeY - w * 0.015f,
                        faceCenterX + eyeSpacing + w * 0.01f, eyeY + w * 0.015f,
                        faceCenterX + eyeSpacing + w * 0.02f, eyeY
                    )
                },
                color = eyeColor.copy(alpha = blinkAlpha),
                style = Stroke(width = w * 0.006f)
            )
            // 嘴巴下撇
            drawArc(
                color = mouthColor,
                startAngle = 0f, sweepAngle = 120f, useCenter = false,
                topLeft = Offset(faceCenterX - w * 0.025f, mouthY - w * 0.01f),
                size = Size(w * 0.05f, w * 0.025f),
                style = Stroke(width = w * 0.006f)
            )
        }
        "cute", "happy_cute" -> {
            // 可爱：大圆眼 + 腮红 + 小嘴
            drawCircle(
                color = eyeColor.copy(alpha = blinkAlpha),
                radius = w * 0.03f,
                center = Offset(faceCenterX - eyeSpacing, eyeY)
            )
            drawCircle(
                color = eyeColor.copy(alpha = blinkAlpha),
                radius = w * 0.03f,
                center = Offset(faceCenterX + eyeSpacing, eyeY)
            )
            // 眼睛高光
            drawCircle(Color.White.copy(alpha = 0.8f), radius = w * 0.008f,
                center = Offset(faceCenterX - eyeSpacing + w * 0.01f, eyeY - w * 0.01f))
            drawCircle(Color.White.copy(alpha = 0.8f), radius = w * 0.008f,
                center = Offset(faceCenterX + eyeSpacing + w * 0.01f, eyeY - w * 0.01f))
            // 腮红
            drawCircle(Color(0xFFFFB6C1).copy(alpha = 0.6f), radius = w * 0.02f,
                center = Offset(faceCenterX - eyeSpacing - w * 0.025f, eyeY + w * 0.02f))
            drawCircle(Color(0xFFFFB6C1).copy(alpha = 0.6f), radius = w * 0.02f,
                center = Offset(faceCenterX + eyeSpacing + w * 0.025f, eyeY + w * 0.02f))
            // 小嘴
            drawArc(
                color = mouthColor,
                startAngle = 180f, sweepAngle = 180f, useCenter = false,
                topLeft = Offset(faceCenterX - w * 0.015f, mouthY - w * 0.008f),
                size = Size(w * 0.03f, w * 0.015f),
                style = Stroke(width = w * 0.006f)
            )
        }
        "love", "loving" -> {
            // 爱心眼
            val heartPathLeft = Path().apply {
                val cx = faceCenterX - eyeSpacing
                val cy = eyeY
                moveTo(cx, cy + w * 0.015f)
                cubicTo(cx - w * 0.04f, cy - w * 0.02f, cx - w * 0.02f, cy - w * 0.04f, cx, cy - w * 0.01f)
                cubicTo(cx + w * 0.02f, cy - w * 0.04f, cx + w * 0.04f, cy - w * 0.02f, cx, cy + w * 0.015f)
            }
            drawPath(heartPathLeft, Color(0xFFFF4081), style = Stroke(width = w * 0.006f))
            val heartPathRight = Path().apply {
                val cx = faceCenterX + eyeSpacing
                val cy = eyeY
                moveTo(cx, cy + w * 0.015f)
                cubicTo(cx - w * 0.04f, cy - w * 0.02f, cx - w * 0.02f, cy - w * 0.04f, cx, cy - w * 0.01f)
                cubicTo(cx + w * 0.02f, cy - w * 0.04f, cx + w * 0.04f, cy - w * 0.02f, cx, cy + w * 0.015f)
            }
            drawPath(heartPathRight, Color(0xFFFF4081), style = Stroke(width = w * 0.006f))
            // 微笑
            drawArc(
                color = mouthColor,
                startAngle = 180f, sweepAngle = 180f, useCenter = false,
                topLeft = Offset(faceCenterX - w * 0.03f, mouthY - w * 0.01f),
                size = Size(w * 0.06f, w * 0.03f),
                style = Stroke(width = w * 0.008f)
            )
        }
        "sleepy", "tired" -> {
            // 困：闭眼
            drawLine(
                color = eyeColor.copy(alpha = blinkAlpha),
                start = Offset(faceCenterX - eyeSpacing - w * 0.02f, eyeY),
                end = Offset(faceCenterX - eyeSpacing + w * 0.02f, eyeY),
                strokeWidth = w * 0.008f
            )
            drawLine(
                color = eyeColor.copy(alpha = blinkAlpha),
                start = Offset(faceCenterX + eyeSpacing - w * 0.02f, eyeY),
                end = Offset(faceCenterX + eyeSpacing + w * 0.02f, eyeY),
                strokeWidth = w * 0.008f
            )
            // 小嘴微张
            drawOval(
                color = mouthColor.copy(alpha = 0.5f),
                topLeft = Offset(faceCenterX - w * 0.01f, mouthY - w * 0.008f),
                size = Size(w * 0.02f, w * 0.016f)
            )
        }
        "wink" -> {
            // 眨眼：一只眼闭一只眼睁
            drawCircle(
                color = eyeColor.copy(alpha = blinkAlpha),
                radius = w * 0.025f,
                center = Offset(faceCenterX - eyeSpacing, eyeY)
            )
            drawLine(
                color = eyeColor.copy(alpha = blinkAlpha),
                start = Offset(faceCenterX + eyeSpacing - w * 0.02f, eyeY),
                end = Offset(faceCenterX + eyeSpacing + w * 0.02f, eyeY),
                strokeWidth = w * 0.008f
            )
            // 微笑
            drawArc(
                color = mouthColor,
                startAngle = 180f, sweepAngle = 180f, useCenter = false,
                topLeft = Offset(faceCenterX - w * 0.025f, mouthY - w * 0.01f),
                size = Size(w * 0.05f, w * 0.025f),
                style = Stroke(width = w * 0.006f)
            )
        }
        else -> {
            // 默认：根据 deviceState 绘制
            when (deviceState) {
                DeviceState.LISTENING -> {
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
                    drawCircle(
                        color = mouthColor.copy(alpha = 0.7f),
                        radius = w * 0.015f,
                        center = Offset(faceCenterX, mouthY)
                    )
                }
                DeviceState.SPEAKING -> {
                    drawArc(
                        color = eyeColor,
                        startAngle = 0f, sweepAngle = 180f, useCenter = false,
                        topLeft = Offset(faceCenterX - eyeSpacing - w * 0.02f, eyeY - w * 0.01f),
                        size = Size(w * 0.04f, w * 0.02f),
                        style = Stroke(width = w * 0.008f)
                    )
                    drawArc(
                        color = eyeColor,
                        startAngle = 0f, sweepAngle = 180f, useCenter = false,
                        topLeft = Offset(faceCenterX + eyeSpacing - w * 0.02f, eyeY - w * 0.01f),
                        size = Size(w * 0.04f, w * 0.02f),
                        style = Stroke(width = w * 0.008f)
                    )
                    val mouthHeight = w * 0.01f + mouthOpen * w * 0.025f
                    drawOval(
                        color = mouthColor,
                        topLeft = Offset(faceCenterX - w * 0.02f, mouthY - mouthHeight / 2),
                        size = Size(w * 0.04f, mouthHeight)
                    )
                }
                DeviceState.CONNECTING -> {
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