package com.xiaozhi.android.ui.screens

import androidx.compose.animation.animateColorAsState
import androidx.compose.animation.core.*
import androidx.compose.foundation.Canvas
import androidx.compose.foundation.Image
import androidx.compose.foundation.clickable
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
import kotlin.math.sin
import kotlin.math.cos

/** 2π 的 Float 版本（避免 PI 的 Double 类型污染整个表达式） */
private const val TAU_F = 6.2831855f

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun MainScreen(
    viewModel: MainViewModel,
    onNavigateToSettings: () -> Unit
) {
    val deviceState by viewModel.deviceState.collectAsStateWithLifecycle()
    val emotion by viewModel.emotion.collectAsStateWithLifecycle()
    val logMessages by viewModel.logMessages.collectAsStateWithLifecycle()
    val activationState by viewModel.activationService.activationState.collectAsStateWithLifecycle()
    val wsConnectionState by viewModel.webSocketManager.connectionState.collectAsStateWithLifecycle()
    val activationCode by viewModel.activationService.activationCode.collectAsStateWithLifecycle()
    val otaStatus by viewModel.otaStatus.collectAsStateWithLifecycle()
    val updateInfo by viewModel.updateInfo.collectAsStateWithLifecycle()
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
                title = { Text("珩杬", fontWeight = FontWeight.Bold) },
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
                    // 设置图标：有新版本时右上角显示红点提醒
                    Box(modifier = Modifier.size(48.dp)) {
                        IconButton(onClick = onNavigateToSettings) {
                            Icon(Icons.Filled.Settings, contentDescription = "设置")
                        }
                        if (updateInfo != null && updateInfo!!.hasUpdate) {
                            Badge(
                                modifier = Modifier
                                    .align(Alignment.TopEnd)
                                    .size(10.dp)
                            )
                        }
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

            // Music player bar
            MusicPlayerBar(viewModel = viewModel)

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
            DeviceState.THINKING -> MaterialTheme.colorScheme.primary.copy(alpha = 0.5f)
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
                // 状态光环：在机器人背后绘制动态光晕
                androidx.compose.foundation.Canvas(
                    modifier = Modifier
                        .size(320.dp)
                        .graphicsLayer {
                            rotationZ = bodyRotation * 0.5f
                            translationY = bodyOffsetY * 0.5f
                        }
                ) {
                    drawStateAura(deviceState, color, breathPhase.floatValue)
                }
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
 * 在机器人周边绘制状态粒子——散布的小光点，不画任何圆环/弧线，避免"边框感"。
 * - LISTENING：蓝色小粒子围绕机器人游动闪烁
 * - SPEAKING：绿色小粒子从机器人向外飘散
 * - THINKING：紫色小粒子缓慢浮动
 * - CONNECTING：橙色小粒子快速闪烁
 * - IDLE：不绘制（保持干净）
 */
private fun DrawScope.drawStateAura(
    deviceState: DeviceState,
    color: Color,
    phase: Float
) {
    if (deviceState == DeviceState.IDLE) return

    val w = size.width
    val cx = w * 0.515f
    val cy = w * 0.35f

    when (deviceState) {
        DeviceState.LISTENING -> {
            // 10 个蓝色小粒子：随机散布，缓慢游动 + 闪烁
            for (i in 0 until 10) {
                val baseAngle = hash01(i * 7.31f) * TAU_F
                val dir = if (i % 2 == 0) 1f else -1f
                val angle = baseAngle + phase * 0.25f * dir
                val r = w * (0.30f + 0.12f * hash01(i * 3.71f)) *
                    (1f + 0.06f * sin(phase * 2f + i * 1.7f))
                val px = cx + r * cos(angle)
                val py = cy + r * sin(angle) * 0.75f  // 椭圆散布，贴合机器人轮廓
                val alpha = (0.35f + 0.25f * sin(phase * 3f + i * 1.3f)).coerceIn(0.1f, 0.6f)
                val size = w * (0.006f + 0.004f * hash01(i * 11.3f))
                drawCircle(
                    color = color.copy(alpha = alpha),
                    radius = size,
                    center = Offset(px, py)
                )
            }
        }
        DeviceState.SPEAKING -> {
            // 12 个绿色小粒子：从机器人中心向外飘散并淡出
            for (i in 0 until 12) {
                val speed = 0.35f + 0.4f * hash01(i * 5.13f)
                val progress = (phase * speed + hash01(i * 9.27f)) % 1f
                val angle = hash01(i * 3.37f) * TAU_F + phase * 0.1f
                val r = w * 0.12f + progress * w * 0.30f
                val px = cx + r * cos(angle)
                val py = cy + r * sin(angle) * 0.75f
                val alpha = (1f - progress) * 0.55f
                val size = w * (0.005f + 0.005f * (1f - progress))
                drawCircle(
                    color = color.copy(alpha = alpha),
                    radius = size,
                    center = Offset(px, py)
                )
            }
        }
        DeviceState.THINKING -> {
            // 8 个紫色小粒子：小范围缓慢游动
            for (i in 0 until 8) {
                val baseAngle = hash01(i * 6.17f) * TAU_F
                val angle = baseAngle + phase * 0.12f
                val r = w * (0.28f + 0.10f * hash01(i * 4.53f)) *
                    (1f + 0.08f * sin(phase * 1.2f + i * 2.1f))
                val px = cx + r * cos(angle)
                val py = cy + r * sin(angle) * 0.75f + 0.03f * w * sin(phase * 1.5f + i)
                val alpha = (0.30f + 0.20f * sin(phase * 2f + i * 1.9f)).coerceIn(0.1f, 0.5f)
                val size = w * (0.005f + 0.004f * hash01(i * 8.91f))
                drawCircle(
                    color = color.copy(alpha = alpha),
                    radius = size,
                    center = Offset(px, py)
                )
            }
        }
        DeviceState.CONNECTING -> {
            // 8 个橙色小粒子：快速闪烁
            for (i in 0 until 8) {
                val angle = hash01(i * 5.71f) * TAU_F + phase * 0.3f
                val r = w * (0.26f + 0.10f * hash01(i * 2.93f))
                val px = cx + r * cos(angle)
                val py = cy + r * sin(angle) * 0.75f
                val alpha = (0.4f * (0.5f + 0.5f * sin(phase * 5f + i * 2.4f))).coerceIn(0f, 0.45f)
                val size = w * 0.007f
                drawCircle(
                    color = color.copy(alpha = alpha),
                    radius = size,
                    center = Offset(px, py)
                )
            }
        }
        else -> {}
    }
}

/** 伪随机哈希：返回 0~1 的稳定伪随机值（同一 seed 恒定） */
private fun hash01(seed: Float): Float {
    val x = sin(seed * 127.1f + 311.7f) * 43758.5453f
    return x - kotlin.math.floor(x)
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

    // 辅助：自然 D 型嘴巴（说话时下方开口，像真人嘴型）
    fun drawSmileMouth(cx: Float, cy: Float, width: Float, open: Float = 0f) {
        val halfW = width / 2
        val smileH = width * 0.12f
        val openH = open * width * 0.3f
        if (open > 0.1f && deviceState == DeviceState.SPEAKING) {
            // 说话时：D 型嘴——上方微笑弧线 + 下方开口
            val mouthPath = Path().apply {
                // 左上起点
                moveTo(cx - halfW, cy)
                // 上弧线（微笑）
                cubicTo(
                    cx - halfW * 0.5f, cy - smileH,
                    cx + halfW * 0.5f, cy - smileH,
                    cx + halfW, cy
                )
                // 右下弧线（开口）
                cubicTo(
                    cx + halfW * 0.6f, cy + openH,
                    cx - halfW * 0.6f, cy + openH,
                    cx - halfW, cy
                )
                close()
            }
            drawPath(mouthPath, mouthColor)
        } else {
            // 静态：弯月微笑（两端上翘）
            drawArc(
                color = mouthColor,
                startAngle = 180f, sweepAngle = 180f, useCenter = false,
                topLeft = Offset(cx - halfW, cy - smileH),
                size = Size(width, smileH * 2),
                style = softStroke
            )
        }
    }

    // 辅助：说话时的自然张合嘴（独立的上下唇）
    fun drawTalkingMouth(cx: Float, cy: Float, width: Float, open: Float) {
        val halfW = width / 2
        val lipH = width * 0.06f
        val gap = open * width * 0.25f
        // 上唇：微笑弧线
        val upperPath = Path().apply {
            moveTo(cx - halfW, cy - gap * 0.3f)
            cubicTo(
                cx - halfW * 0.4f, cy - gap * 0.3f - lipH,
                cx + halfW * 0.4f, cy - gap * 0.3f - lipH,
                cx + halfW, cy - gap * 0.3f
            )
        }
        drawPath(upperPath, mouthColor, style = softStroke)
        // 下唇：微弯
        val lowerPath = Path().apply {
            moveTo(cx - halfW, cy + gap * 0.5f)
            cubicTo(
                cx - halfW * 0.4f, cy + gap * 0.5f + lipH * 0.6f,
                cx + halfW * 0.4f, cy + gap * 0.5f + lipH * 0.6f,
                cx + halfW, cy + gap * 0.5f
            )
        }
        drawPath(lowerPath, mouthColor, style = softStroke)
    }

    // 辅助：自然下弯嘴（伤心）
    fun drawFrownMouth(cx: Float, cy: Float, width: Float) {
        val halfW = width / 2
        val h = width * 0.1f
        drawArc(
            color = mouthColor,
            startAngle = 0f, sweepAngle = 180f, useCenter = false,
            topLeft = Offset(cx - halfW, cy - h),
            size = Size(width, h * 2),
            style = softStroke
        )
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
            // 小嘴：害羞的微笑
            drawArc(mouthColor.copy(alpha = 0.7f),
                startAngle = 180f, sweepAngle = 180f, useCenter = false,
                topLeft = Offset(faceCenterX - w * 0.015f, mouthY - w * 0.008f),
                size = Size(w * 0.03f, w * 0.016f),
                style = thinStroke)
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
            // 大张嘴：D 型
            val deadPath = Path().apply {
                moveTo(faceCenterX - w * 0.025f, mouthY - w * 0.005f)
                cubicTo(
                    faceCenterX - w * 0.015f, mouthY - w * 0.02f,
                    faceCenterX + w * 0.015f, mouthY - w * 0.02f,
                    faceCenterX + w * 0.025f, mouthY - w * 0.005f
                )
                cubicTo(
                    faceCenterX + w * 0.02f, mouthY + w * 0.03f,
                    faceCenterX - w * 0.02f, mouthY + w * 0.03f,
                    faceCenterX - w * 0.025f, mouthY - w * 0.005f
                )
                close()
            }
            drawPath(deadPath, mouthColor)
        }
        "kiss" -> {
            // 飞吻：眨眼 + 嘴唇
            drawEye(faceCenterX - eyeSpacing, eyeY, w * 0.025f)
            drawLine(eyeColor.copy(alpha = blinkAlpha),
                Offset(faceCenterX + eyeSpacing - w * 0.02f, eyeY),
                Offset(faceCenterX + eyeSpacing + w * 0.02f, eyeY),
                strokeWidth = softStroke.width, cap = softStroke.cap)
            // 嘴唇：心形嘴
            val lipPath = Path().apply {
                val cx = faceCenterX
                val cy = mouthY
                moveTo(cx - w * 0.02f, cy - w * 0.003f)
                cubicTo(
                    cx - w * 0.02f, cy - w * 0.015f,
                    cx, cy - w * 0.012f,
                    cx, cy - w * 0.003f
                )
                cubicTo(
                    cx, cy - w * 0.012f,
                    cx + w * 0.02f, cy - w * 0.015f,
                    cx + w * 0.02f, cy - w * 0.003f
                )
                cubicTo(
                    cx + w * 0.018f, cy + w * 0.01f,
                    cx, cy + w * 0.015f,
                    cx, cy + w * 0.015f
                )
                cubicTo(
                    cx, cy + w * 0.015f,
                    cx - w * 0.018f, cy + w * 0.01f,
                    cx - w * 0.02f, cy - w * 0.003f
                )
                close()
            }
            drawPath(lipPath, Color(0xFFFF6B9D))
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
            // 张大嘴：红色 D 型怒吼
            val ragePath = Path().apply {
                moveTo(faceCenterX - w * 0.025f, mouthY - w * 0.008f)
                cubicTo(
                    faceCenterX - w * 0.01f, mouthY - w * 0.02f,
                    faceCenterX + w * 0.01f, mouthY - w * 0.02f,
                    faceCenterX + w * 0.025f, mouthY - w * 0.008f
                )
                cubicTo(
                    faceCenterX + w * 0.02f, mouthY + w * 0.025f,
                    faceCenterX - w * 0.02f, mouthY + w * 0.025f,
                    faceCenterX - w * 0.025f, mouthY - w * 0.008f
                )
                close()
            }
            drawPath(ragePath, Color(0xFFFF3344))
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
            // 惊讶嘴：上窄下宽的 D 型开口
            val surpriseOpen = if (deviceState == DeviceState.SPEAKING) mouthOpen else 0f
            val supPath = Path().apply {
                moveTo(faceCenterX - w * 0.015f, mouthY - w * 0.008f)
                cubicTo(
                    faceCenterX - w * 0.02f, mouthY - w * 0.015f,
                    faceCenterX + w * 0.02f, mouthY - w * 0.015f,
                    faceCenterX + w * 0.015f, mouthY - w * 0.008f
                )
                cubicTo(
                    faceCenterX + w * 0.018f, mouthY + w * 0.015f + surpriseOpen * w * 0.02f,
                    faceCenterX - w * 0.018f, mouthY + w * 0.015f + surpriseOpen * w * 0.02f,
                    faceCenterX - w * 0.015f, mouthY - w * 0.008f
                )
                close()
            }
            drawPath(supPath, mouthColor)
        }
        "fearful", "worried", "scared" -> {
            // 担心/害怕：稍大眼 + 抖动嘴
            drawEye(faceCenterX - eyeSpacing, eyeY, w * 0.025f)
            drawEye(faceCenterX + eyeSpacing, eyeY, w * 0.025f)
            // 嘴巴微张：D 型小开口
            val worryPath = Path().apply {
                moveTo(faceCenterX - w * 0.015f, mouthY - w * 0.005f)
                cubicTo(
                    faceCenterX - w * 0.01f, mouthY - w * 0.012f,
                    faceCenterX + w * 0.01f, mouthY - w * 0.012f,
                    faceCenterX + w * 0.015f, mouthY - w * 0.005f
                )
                cubicTo(
                    faceCenterX + w * 0.012f, mouthY + w * 0.015f,
                    faceCenterX - w * 0.012f, mouthY + w * 0.015f,
                    faceCenterX - w * 0.015f, mouthY - w * 0.005f
                )
                close()
            }
            drawPath(worryPath, mouthColor.copy(alpha = 0.8f))
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
            // 小嘴微张：自然小开口
            val sleepyPath = Path().apply {
                moveTo(faceCenterX - w * 0.012f, mouthY - w * 0.003f)
                cubicTo(
                    faceCenterX - w * 0.008f, mouthY - w * 0.01f,
                    faceCenterX + w * 0.008f, mouthY - w * 0.01f,
                    faceCenterX + w * 0.012f, mouthY - w * 0.003f
                )
                cubicTo(
                    faceCenterX + w * 0.01f, mouthY + w * 0.008f,
                    faceCenterX - w * 0.01f, mouthY + w * 0.008f,
                    faceCenterX - w * 0.012f, mouthY - w * 0.003f
                )
                close()
            }
            drawPath(sleepyPath, mouthColor.copy(alpha = 0.5f))
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

    // 活跃状态（聆听、说话或思考）显示波浪线，否则显示直线
    val isActive = !isDisabled &&
        (deviceState == DeviceState.LISTENING || deviceState == DeviceState.SPEAKING || deviceState == DeviceState.THINKING)

    // 线条颜色随状态变化
    val lineColor = when {
        isDisabled -> Color.Gray
        deviceState == DeviceState.LISTENING -> XiaozhiGreen
        deviceState == DeviceState.SPEAKING -> XiaozhiOrange
        deviceState == DeviceState.THINKING -> Color(0xFF9C27B0)  // 紫色
        deviceState == DeviceState.CONNECTING -> XiaozhiOrange
        else -> Color.White
    }

    WaveformIndicator(
        isActive = isActive,
        color = lineColor,
        modifier = Modifier
            .fillMaxWidth(0.9f)
            .height(40.dp)
            .clip(RoundedCornerShape(20.dp))
            .clickable { if (!isDisabled) onClick() }
    )
}

/**
 * 波形指示器：活跃时显示动态波浪线，空闲时显示水平直线。
 * 无背景圆圈，直接在背景上绘制长细线条。
 */
@Composable
fun WaveformIndicator(
    isActive: Boolean,
    color: Color = Color.White,
    modifier: Modifier = Modifier
) {
    // 波浪相位动画（仅活跃时推进）
    val transition = rememberInfiniteTransition(label = "wave")
    val phase by transition.animateFloat(
        initialValue = 0f,
        targetValue = if (isActive) (2 * Math.PI).toFloat() else 0f,
        animationSpec = infiniteRepeatable(
            animation = tween(if (isActive) 900 else 600, easing = LinearEasing),
            repeatMode = RepeatMode.Restart
        ),
        label = "phase"
    )

    // 振幅过渡：活跃时放大，空闲时收缩为 0（直线）
    val amplitude by animateFloatAsState(
        targetValue = if (isActive) 1f else 0f,
        animationSpec = tween(300),
        label = "amplitude"
    )

    Canvas(modifier = modifier) {
        drawWaveform(amplitude = amplitude, phase = phase, color = color)
    }
}

/**
 * 绘制波形：正弦波，振幅为0时即水平直线。
 * 线条细长：宽度为画布高度的 6%。
 */
private fun DrawScope.drawWaveform(amplitude: Float, phase: Float, color: Color) {
    val w = size.width
    val h = size.height
    val centerY = h / 2f
    // 最大振幅为高度的 35%
    val maxAmp = h * 0.35f
    val amp = maxAmp * amplitude

    val path = Path()
    val steps = 80
    path.moveTo(0f, centerY)
    for (i in 0..steps) {
        val x = w * i / steps
        // 3 个完整波形周期，更密集
        val y = centerY + amp * sin((3.0 * Math.PI * x / w + phase).toDouble()).toFloat()
        path.lineTo(x, y)
    }

    drawPath(
        path = path,
        color = color,
        style = Stroke(
            width = h * 0.06f,
            cap = StrokeCap.Round,
            join = StrokeJoin.Round
        )
    )
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
        deviceState == DeviceState.THINKING -> "正在思考..."
        deviceState == DeviceState.CONNECTING -> "正在连接..."
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

@Composable
fun MusicPlayerBar(viewModel: MainViewModel) {
    val playState by viewModel.musicPlayer.playState.collectAsStateWithLifecycle()
    val songName by viewModel.musicPlayer.currentSong.collectAsStateWithLifecycle()
    val artist by viewModel.musicPlayer.currentArtist.collectAsStateWithLifecycle()

    if (playState != com.xiaozhi.android.audio.MusicPlayerManager.PlayState.IDLE) {
        Card(
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 16.dp, vertical = 4.dp),
            shape = RoundedCornerShape(12.dp),
            colors = CardDefaults.cardColors(
                containerColor = MaterialTheme.colorScheme.primaryContainer.copy(alpha = 0.7f)
            )
        ) {
            Row(
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(horizontal = 12.dp, vertical = 8.dp),
                verticalAlignment = Alignment.CenterVertically
            ) {
                // 歌曲信息
                Column(
                    modifier = Modifier.weight(1f)
                ) {
                    Text(
                        text = songName ?: "未知歌曲",
                        fontSize = 13.sp,
                        fontWeight = FontWeight.Medium,
                        maxLines = 1,
                        color = MaterialTheme.colorScheme.onPrimaryContainer
                    )
                    if (artist != null) {
                        Text(
                            text = artist!!,
                            fontSize = 11.sp,
                            maxLines = 1,
                            color = MaterialTheme.colorScheme.onPrimaryContainer.copy(alpha = 0.7f)
                        )
                    }
                }

                Spacer(Modifier.width(8.dp))

                // 播放/暂停/加载中按钮
                when (playState) {
                    com.xiaozhi.android.audio.MusicPlayerManager.PlayState.LOADING -> {
                        CircularProgressIndicator(
                            modifier = Modifier.size(24.dp),
                            strokeWidth = 2.dp,
                            color = MaterialTheme.colorScheme.primary
                        )
                    }
                    com.xiaozhi.android.audio.MusicPlayerManager.PlayState.PLAYING -> {
                        IconButton(
                            onClick = { viewModel.musicPlayer.pause() },
                            modifier = Modifier.size(36.dp)
                        ) {
                            Icon(
                                Icons.Filled.Pause,
                                contentDescription = "暂停",
                                tint = MaterialTheme.colorScheme.primary
                            )
                        }
                    }
                    com.xiaozhi.android.audio.MusicPlayerManager.PlayState.PAUSED -> {
                        IconButton(
                            onClick = { viewModel.musicPlayer.resume() },
                            modifier = Modifier.size(36.dp)
                        ) {
                            Icon(
                                Icons.Filled.PlayArrow,
                                contentDescription = "继续",
                                tint = MaterialTheme.colorScheme.primary
                            )
                        }
                    }
                    else -> {}
                }

                // 停止按钮
                IconButton(
                    onClick = { viewModel.musicPlayer.stop() },
                    modifier = Modifier.size(36.dp)
                ) {
                    Icon(
                        Icons.Filled.Close,
                        contentDescription = "停止",
                        tint = MaterialTheme.colorScheme.onPrimaryContainer.copy(alpha = 0.6f)
                    )
                }
            }
        }
    }
}