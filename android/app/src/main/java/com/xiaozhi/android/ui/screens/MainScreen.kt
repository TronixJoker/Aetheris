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
import androidx.compose.ui.graphics.StrokeCap
import androidx.compose.ui.graphics.StrokeJoin
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

    // 自然眨眼：通过 Y 轴缩放实现真正闭眼（每 3-6 秒一次）
    val blinkProgress = remember { androidx.compose.runtime.mutableStateOf(1f) }
    LaunchedEffect(Unit) {
        while (true) {
            kotlinx.coroutines.delay((3000L..6000L).random())
            // 快速闭眼再睁开（150ms 闭 + 120ms 开）
            blinkProgress.value = 0f
            kotlinx.coroutines.delay(150)
            blinkProgress.value = 1f
            kotlinx.coroutines.delay(120)
        }
    }
    val blinkScale by animateFloatAsState(
        targetValue = blinkProgress.value,
        animationSpec = tween(120, easing = FastOutSlowInEasing),
        label = "blink_scale"
    )

    // 呼吸：极缓慢的整体微缩放（让机器人有生命感）
    val breathPhase = remember { androidx.compose.runtime.mutableFloatStateOf(0f) }
    LaunchedEffect(Unit) {
        while (true) {
            kotlinx.coroutines.delay(16)
            breathPhase.floatValue += 0.02f
        }
    }
    val breathScale = 1f + 0.015f * kotlin.math.sin(breathPhase.floatValue).toFloat()

    // 嘴巴说话动画：用正弦波让开合更自然（非对称开合）
    val mouthPhase = remember { androidx.compose.runtime.mutableFloatStateOf(0f) }
    LaunchedEffect(deviceState) {
        if (deviceState == DeviceState.SPEAKING) {
            while (true) {
                kotlinx.coroutines.delay(50)
                mouthPhase.floatValue += 0.3f
            }
        } else {
            mouthPhase.floatValue = 0f
        }
    }
    val naturalMouthOpen = if (deviceState == DeviceState.SPEAKING) {
        // 非对称：开得快合得慢，更像说话
        val raw = kotlin.math.sin(mouthPhase.floatValue).toFloat()
        (0.3f + 0.7f * (raw * 0.5f + 0.5f))
    } else 0f

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
                        .scale(scale * breathScale)
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
                        .scale(scale * breathScale)
                        .graphicsLayer {
                            rotationZ = bodyRotation
                            translationY = bodyOffsetY + shakeOffset
                            translationX = shakeOffset
                        }
                ) {
                    drawFaceExpression(deviceState, naturalMouthOpen, blinkAlpha, emotion, blinkScale, breathScale)
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
    emotion: String = "neutral",
    blinkScale: Float = 1f,
    breathScale: Float = 1f
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
    // 圆角描边让线条柔和自然
    val softStroke = Stroke(width = w * 0.008f, cap = StrokeCap.Round, join = StrokeJoin.Round)
    val thinStroke = Stroke(width = w * 0.006f, cap = StrokeCap.Round, join = StrokeJoin.Round)

    // 辅助：绘制带高光的圆眼（眨眼时 Y 轴压缩）
    fun drawEye(cx: Float, cy: Float, radius: Float, alpha: Float = blinkAlpha) {
        // 眨眼通过 Y 缩放实现（0=完全闭眼，1=正常）
        val ry = radius * blinkScale.coerceAtLeast(0.05f)
        if (ry < radius * 0.15f) {
            // 几乎闭眼：画一条线
            drawLine(
                color = eyeColor.copy(alpha = alpha),
                start = Offset(cx - radius, cy),
                end = Offset(cx + radius, cy),
                strokeWidth = w * 0.006f,
                cap = StrokeCap.Round
            )
        } else {
            // 椭圆眼睛（Y轴随眨眼压缩）
            drawOval(
                color = eyeColor.copy(alpha = alpha),
                topLeft = Offset(cx - radius, cy - ry),
                size = Size(radius * 2, ry * 2)
            )
            // 高光（眨眼幅度足够时才显示）
            if (blinkScale > 0.5f) {
                drawCircle(
                    color = Color.White.copy(alpha = 0.85f * alpha),
                    radius = radius * 0.3f,
                    center = Offset(cx + radius * 0.35f, cy - ry * 0.4f)
                )
            }
        }
    }

    // 辅助：绘制弯月眼（笑眼），happy=true 向上弯，false 向下弯
    fun drawCrescentEye(cx: Float, cy: Float, width: Float, happy: Boolean, alpha: Float = blinkAlpha) {
        val sweepAngle = if (happy) 180f else 180f
        val startAngle = if (happy) 0f else 180f
        // 眨眼时压扁弧线高度
        val arcHeight = width * 0.5f * blinkScale.coerceAtLeast(0.1f)
        drawArc(
            color = eyeColor.copy(alpha = alpha),
            startAngle = startAngle, sweepAngle = sweepAngle, useCenter = false,
            topLeft = Offset(cx - width / 2, cy - arcHeight / 2),
            size = Size(width, arcHeight),
            style = softStroke
        )
    }

    // 辅助：自然嘴巴（说话时根据 mouthOpen 开合）
    fun drawSmileMouth(cx: Float, cy: Float, width: Float, open: Float = 0f) {
        val baseHeight = width * 0.15f
        val openHeight = baseHeight + open * width * 0.25f
        if (open > 0.1f && deviceState == DeviceState.SPEAKING) {
            // 说话时：椭圆开合 + 微笑弧度
            drawOval(
                color = mouthColor,
                topLeft = Offset(cx - width / 2, cy - openHeight / 2),
                size = Size(width, openHeight)
            )
        } else {
            // 静态：弯月微笑
            drawArc(
                color = mouthColor,
                startAngle = 180f, sweepAngle = 180f, useCenter = false,
                topLeft = Offset(cx - width / 2, cy - baseHeight / 2),
                size = Size(width, baseHeight),
                style = softStroke
            )
        }
    }

    // 如果有特定情绪，优先绘制情绪表情
    when (emotion.lowercase()) {
        "neutral", "calm" -> {
            // 平静：正常圆眼 + 直线嘴
            drawEye(faceCenterX - eyeSpacing, eyeY, w * 0.022f)
            drawEye(faceCenterX + eyeSpacing, eyeY, w * 0.022f)
            drawLine(mouthColor.copy(alpha = 0.7f),
                Offset(faceCenterX - w * 0.02f, mouthY),
                Offset(faceCenterX + w * 0.02f, mouthY),
                strokeWidth = thinStroke.width, cap = thinStroke.cap)
        }
        "thinking", "confused" -> {
            // 思考/困惑：圆眼 + 一边眉毛上扬 + 歪嘴
            drawEye(faceCenterX - eyeSpacing, eyeY, w * 0.022f)
            drawEye(faceCenterX + eyeSpacing, eyeY, w * 0.022f)
            // 右眉上扬
            drawLine(eyeColor,
                Offset(faceCenterX + eyeSpacing - w * 0.02f, eyeY - w * 0.04f),
                Offset(faceCenterX + eyeSpacing + w * 0.02f, eyeY - w * 0.035f),
                strokeWidth = thinStroke.width, cap = thinStroke.cap)
            // 歪嘴
            drawLine(mouthColor,
                Offset(faceCenterX - w * 0.02f, mouthY + w * 0.01f),
                Offset(faceCenterX + w * 0.02f, mouthY - w * 0.005f),
                strokeWidth = thinStroke.width, cap = thinStroke.cap)
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
                strokeWidth = thinStroke.width, cap = thinStroke.cap)
            // 镜片反光
            drawLine(Color(0xFF00E5FF).copy(alpha = 0.6f),
                Offset(faceCenterX - eyeSpacing - w * 0.02f, eyeY - w * 0.008f),
                Offset(faceCenterX - eyeSpacing - w * 0.005f, eyeY - w * 0.008f),
                strokeWidth = thinStroke.width, cap = thinStroke.cap)
            drawLine(Color(0xFF00E5FF).copy(alpha = 0.6f),
                Offset(faceCenterX + eyeSpacing - w * 0.02f, eyeY - w * 0.008f),
                Offset(faceCenterX + eyeSpacing - w * 0.005f, eyeY - w * 0.008f),
                strokeWidth = thinStroke.width, cap = thinStroke.cap)
            // 微笑
            drawSmileMouth(faceCenterX, mouthY, w * 0.05f, mouthOpen)
        }
        "silly", "derp" -> {
            // 呆：斗鸡眼 + 吐舌
            drawEye(faceCenterX - w * 0.005f, eyeY, w * 0.022f)
            drawEye(faceCenterX + w * 0.005f, eyeY, w * 0.022f)
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
                strokeWidth = softStroke.width, cap = softStroke.cap)
            drawLine(eyeColor.copy(alpha = blinkAlpha),
                Offset(faceCenterX + eyeSpacing - w * 0.02f, eyeY),
                Offset(faceCenterX + eyeSpacing + w * 0.02f, eyeY - w * 0.005f),
                strokeWidth = softStroke.width, cap = softStroke.cap)
            // 坏笑
            drawArc(mouthColor,
                startAngle = 200f, sweepAngle = 140f, useCenter = false,
                topLeft = Offset(faceCenterX - w * 0.025f, mouthY - w * 0.005f),
                size = Size(w * 0.05f, w * 0.025f),
                style = thinStroke)
        }
        "embarrassed", "blush" -> {
            // 害羞：圆眼 + 大腮红 + 小嘴
            drawEye(faceCenterX - eyeSpacing, eyeY, w * 0.022f)
            drawEye(faceCenterX + eyeSpacing, eyeY, w * 0.022f)
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
            drawEye(faceCenterX - eyeSpacing, eyeY, w * 0.028f)
            drawEye(faceCenterX + eyeSpacing, eyeY, w * 0.028f)
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
                strokeWidth = thinStroke.width, cap = thinStroke.cap)
            drawLine(eyeColor,
                Offset(faceCenterX - eyeSpacing - w * 0.02f, eyeY + w * 0.02f),
                Offset(faceCenterX - eyeSpacing + w * 0.02f, eyeY - w * 0.02f),
                strokeWidth = thinStroke.width, cap = thinStroke.cap)
            // 右X
            drawLine(eyeColor,
                Offset(faceCenterX + eyeSpacing - w * 0.02f, eyeY - w * 0.02f),
                Offset(faceCenterX + eyeSpacing + w * 0.02f, eyeY + w * 0.02f),
                strokeWidth = thinStroke.width, cap = thinStroke.cap)
            drawLine(eyeColor,
                Offset(faceCenterX + eyeSpacing - w * 0.02f, eyeY + w * 0.02f),
                Offset(faceCenterX + eyeSpacing + w * 0.02f, eyeY - w * 0.02f),
                strokeWidth = thinStroke.width, cap = thinStroke.cap)
            // 大张嘴
            drawOval(mouthColor,
                topLeft = Offset(faceCenterX - w * 0.025f, mouthY - w * 0.02f),
                size = Size(w * 0.05f, w * 0.04f))
        }
        "kiss" -> {
            // 飞吻：眨眼 + 嘴唇
            drawEye(faceCenterX - eyeSpacing, eyeY, w * 0.025f)
            drawLine(eyeColor.copy(alpha = blinkAlpha),
                Offset(faceCenterX + eyeSpacing - w * 0.02f, eyeY),
                Offset(faceCenterX + eyeSpacing + w * 0.02f, eyeY),
                strokeWidth = softStroke.width, cap = softStroke.cap)
            // 嘴唇（两个椭圆）
            drawOval(Color(0xFFFF6B9D),
                topLeft = Offset(faceCenterX - w * 0.02f, mouthY - w * 0.012f),
                size = Size(w * 0.04f, w * 0.024f))
            drawLine(Color(0xFFFF1493),
                Offset(faceCenterX - w * 0.02f, mouthY),
                Offset(faceCenterX + w * 0.02f, mouthY),
                strokeWidth = thinStroke.width, cap = thinStroke.cap)
        }
        "smirk" -> {
            // 坏笑：圆眼 + 单边上扬
            drawEye(faceCenterX - eyeSpacing, eyeY, w * 0.022f)
            drawEye(faceCenterX + eyeSpacing, eyeY, w * 0.022f)
            // 坏笑嘴
            drawLine(mouthColor,
                Offset(faceCenterX - w * 0.025f, mouthY + w * 0.005f),
                Offset(faceCenterX + w * 0.025f, mouthY - w * 0.015f),
                strokeWidth = thinStroke.width, cap = thinStroke.cap)
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
            drawPath(leftSpiral, eyeColor, style = thinStroke)
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
            drawPath(rightSpiral, eyeColor, style = thinStroke)
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
            drawPath(wavePath, mouthColor, style = thinStroke)
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
            drawSmileMouth(faceCenterX, mouthY, w * 0.05f, mouthOpen)
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
                strokeWidth = softStroke.width, cap = softStroke.cap)
            drawLine(Color(0xFFFF3344),
                Offset(faceCenterX + eyeSpacing + w * 0.025f, eyeY - w * 0.035f),
                Offset(faceCenterX + eyeSpacing - w * 0.015f, eyeY - w * 0.015f),
                strokeWidth = softStroke.width, cap = softStroke.cap)
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
                strokeWidth = thinStroke.width, cap = thinStroke.cap)
            drawLine(eyeColor.copy(alpha = 0.5f),
                Offset(faceCenterX + eyeSpacing - w * 0.02f, eyeY + w * 0.005f),
                Offset(faceCenterX + eyeSpacing + w * 0.02f, eyeY - w * 0.005f),
                strokeWidth = thinStroke.width, cap = thinStroke.cap)
            // 大下弯嘴
            drawArc(mouthColor.copy(alpha = 0.6f),
                startAngle = 0f, sweepAngle = 180f, useCenter = false,
                topLeft = Offset(faceCenterX - w * 0.04f, mouthY - w * 0.005f),
                size = Size(w * 0.08f, w * 0.04f),
                style = thinStroke)
        }
        "happy", "smile", "excited", "laughing" -> {
            // 开心/兴奋：弯月笑眼 + 大笑
            drawCrescentEye(faceCenterX - eyeSpacing, eyeY, w * 0.04f, happy = true)
            drawCrescentEye(faceCenterX + eyeSpacing, eyeY, w * 0.04f, happy = true)
            drawSmileMouth(faceCenterX, mouthY, w * 0.06f, mouthOpen)
        }
        "sad", "cry", "tearful" -> {
            // 伤心：弯月眼（下弯）+ 泪水 + 下弯嘴
            drawCrescentEye(faceCenterX - eyeSpacing, eyeY, w * 0.04f, happy = false)
            drawCrescentEye(faceCenterX + eyeSpacing, eyeY, w * 0.04f, happy = false)
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
                style = softStroke
            )
        }
        "angry", "mad", "furious" -> {
            // 生气：怒视眼 + 紧抿嘴
            // 眼睛
            drawEye(faceCenterX - eyeSpacing, eyeY, w * 0.02f)
            drawEye(faceCenterX + eyeSpacing, eyeY, w * 0.02f)
            // 眉毛（倒八字）
            val leftBrowPath = Path().apply {
                moveTo(faceCenterX - eyeSpacing - w * 0.03f, eyeY - w * 0.03f)
                lineTo(faceCenterX - eyeSpacing + w * 0.01f, eyeY - w * 0.015f)
            }
            drawPath(leftBrowPath, eyeColor, style = softStroke)
            val rightBrowPath = Path().apply {
                moveTo(faceCenterX + eyeSpacing + w * 0.03f, eyeY - w * 0.03f)
                lineTo(faceCenterX + eyeSpacing - w * 0.01f, eyeY - w * 0.015f)
            }
            drawPath(rightBrowPath, eyeColor, style = softStroke)
            // 紧抿的嘴
            drawLine(
                color = mouthColor,
                start = Offset(faceCenterX - w * 0.03f, mouthY),
                end = Offset(faceCenterX + w * 0.03f, mouthY),
                strokeWidth = softStroke.width, cap = softStroke.cap
            )
        }
        "surprised", "shocked" -> {
            // 惊讶：大圆眼 + O型嘴
            drawEye(faceCenterX - eyeSpacing, eyeY, w * 0.03f)
            drawEye(faceCenterX + eyeSpacing, eyeY, w * 0.03f)
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
            drawEye(faceCenterX - eyeSpacing, eyeY, w * 0.025f)
            drawEye(faceCenterX + eyeSpacing, eyeY, w * 0.025f)
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
                style = thinStroke
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
                style = thinStroke
            )
            // 嘴巴下撇
            drawArc(
                color = mouthColor,
                startAngle = 0f, sweepAngle = 120f, useCenter = false,
                topLeft = Offset(faceCenterX - w * 0.025f, mouthY - w * 0.01f),
                size = Size(w * 0.05f, w * 0.025f),
                style = thinStroke
            )
        }
        "cute", "happy_cute" -> {
            // 可爱：大圆眼 + 腮红 + 小嘴
            drawEye(faceCenterX - eyeSpacing, eyeY, w * 0.03f)
            drawEye(faceCenterX + eyeSpacing, eyeY, w * 0.03f)
            // 腮红
            drawCircle(Color(0xFFFFB6C1).copy(alpha = 0.6f), radius = w * 0.02f,
                center = Offset(faceCenterX - eyeSpacing - w * 0.025f, eyeY + w * 0.02f))
            drawCircle(Color(0xFFFFB6C1).copy(alpha = 0.6f), radius = w * 0.02f,
                center = Offset(faceCenterX + eyeSpacing + w * 0.025f, eyeY + w * 0.02f))
            // 小嘴
            drawSmileMouth(faceCenterX, mouthY, w * 0.03f, mouthOpen)
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
            drawPath(heartPathLeft, Color(0xFFFF4081), style = thinStroke)
            val heartPathRight = Path().apply {
                val cx = faceCenterX + eyeSpacing
                val cy = eyeY
                moveTo(cx, cy + w * 0.015f)
                cubicTo(cx - w * 0.04f, cy - w * 0.02f, cx - w * 0.02f, cy - w * 0.04f, cx, cy - w * 0.01f)
                cubicTo(cx + w * 0.02f, cy - w * 0.04f, cx + w * 0.04f, cy - w * 0.02f, cx, cy + w * 0.015f)
            }
            drawPath(heartPathRight, Color(0xFFFF4081), style = thinStroke)
            // 微笑
            drawSmileMouth(faceCenterX, mouthY, w * 0.06f, mouthOpen)
        }
        "sleepy", "tired" -> {
            // 困：闭眼
            drawLine(
                color = eyeColor.copy(alpha = blinkAlpha),
                start = Offset(faceCenterX - eyeSpacing - w * 0.02f, eyeY),
                end = Offset(faceCenterX - eyeSpacing + w * 0.02f, eyeY),
                strokeWidth = softStroke.width, cap = softStroke.cap
            )
            drawLine(
                color = eyeColor.copy(alpha = blinkAlpha),
                start = Offset(faceCenterX + eyeSpacing - w * 0.02f, eyeY),
                end = Offset(faceCenterX + eyeSpacing + w * 0.02f, eyeY),
                strokeWidth = softStroke.width, cap = softStroke.cap
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
            drawEye(faceCenterX - eyeSpacing, eyeY, w * 0.025f)
            drawLine(
                color = eyeColor.copy(alpha = blinkAlpha),
                start = Offset(faceCenterX + eyeSpacing - w * 0.02f, eyeY),
                end = Offset(faceCenterX + eyeSpacing + w * 0.02f, eyeY),
                strokeWidth = softStroke.width, cap = softStroke.cap
            )
            // 微笑
            drawSmileMouth(faceCenterX, mouthY, w * 0.05f, mouthOpen)
        }
        else -> {
            // 默认：根据 deviceState 绘制
            when (deviceState) {
                DeviceState.LISTENING -> {
                    drawEye(faceCenterX - eyeSpacing, eyeY, w * 0.025f)
                    drawEye(faceCenterX + eyeSpacing, eyeY, w * 0.025f)
                    drawCircle(
                        color = mouthColor.copy(alpha = 0.7f),
                        radius = w * 0.015f,
                        center = Offset(faceCenterX, mouthY)
                    )
                }
                DeviceState.SPEAKING -> {
                    drawCrescentEye(faceCenterX - eyeSpacing, eyeY, w * 0.04f, happy = true)
                    drawCrescentEye(faceCenterX + eyeSpacing, eyeY, w * 0.04f, happy = true)
                    drawSmileMouth(faceCenterX, mouthY, w * 0.04f, mouthOpen)
                }
                DeviceState.CONNECTING -> {
                    drawEye(faceCenterX - eyeSpacing, eyeY, w * 0.018f)
                    drawEye(faceCenterX + eyeSpacing, eyeY, w * 0.018f)
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
                        style = thinStroke
                    )
                }
                else -> {
                    drawEye(faceCenterX - eyeSpacing, eyeY, w * 0.015f, 0.4f)
                    drawEye(faceCenterX + eyeSpacing, eyeY, w * 0.015f, 0.4f)
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