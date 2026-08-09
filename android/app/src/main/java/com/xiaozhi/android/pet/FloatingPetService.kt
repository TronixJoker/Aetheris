package com.xiaozhi.android.pet

import android.app.Notification
import android.app.NotificationChannel
import android.app.NotificationManager
import android.app.Service
import android.content.Intent
import android.graphics.Color
import android.graphics.PixelFormat
import android.graphics.drawable.GradientDrawable
import android.os.Build
import android.os.IBinder
import android.os.VibrationEffect
import android.os.Vibrator
import android.os.VibratorManager
import android.provider.Settings
import android.util.Log
import android.util.TypedValue
import android.view.Gravity
import android.view.MotionEvent
import android.view.View
import android.view.WindowManager
import android.widget.TextView
import android.widget.Toast
import androidx.core.app.NotificationCompat
import com.xiaozhi.android.MainActivity
import com.xiaozhi.android.XiaozhiApp
import com.xiaozhi.android.model.DeviceState
import com.xiaozhi.android.network.WebSocketManager
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.Job
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.cancel
import kotlinx.coroutines.launch
import kotlin.math.abs

/**
 * 桌面宠物悬浮窗服务。
 * 使用 OpenGL ES 渲染 3D 机器人角色，点击直接对话（不跳转页面）。
 * 需要 SYSTEM_ALERT_WINDOW 权限。
 */
class FloatingPetService : Service() {
    companion object {
        private const val TAG = "FloatingPetService"
        private const val CHANNEL_ID = "xiaozhi_pet"
        private const val NOTIFICATION_ID = 2
        const val ACTION_TOGGLE = "com.xiaozhi.android.pet.TOGGLE"
        const val ACTION_SHOW = "com.xiaozhi.android.pet.SHOW"
        const val ACTION_HIDE = "com.xiaozhi.android.pet.HIDE"

        @Volatile
        @JvmStatic
        var petVisible: Boolean = false
            private set
    }

    private var windowManager: WindowManager? = null
    private var petView: View? = null
    private var layoutParams: WindowManager.LayoutParams? = null
    // 状态指示条：显示「正在聆听...」「AI 正在说话...」等，让用户明确知道当前状态
    private var statusView: TextView? = null
    private var statusLayoutParams: WindowManager.LayoutParams? = null
    // 宠物下方状态条的垂直间距（dp）
    private val statusMarginTopDp = 4f

    private val serviceScope = CoroutineScope(Dispatchers.Main + SupervisorJob())
    private var stateJob: Job? = null

    override fun onCreate() {
        super.onCreate()
        Log.i(TAG, "Service onCreate")
        createNotificationChannel()
        try {
            startForeground(NOTIFICATION_ID, buildNotification())
            Log.i(TAG, "startForeground succeeded")
        } catch (e: Exception) {
            Log.e(TAG, "startForeground failed: ${e.message}", e)
        }
    }

    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        Log.d(TAG, "onStartCommand action=${intent?.action}")
        when (intent?.action) {
            ACTION_TOGGLE -> {
                if (petView != null) hidePet() else showPet()
            }
            ACTION_SHOW -> showPet()
            ACTION_HIDE -> hidePet()
            else -> showPet()
        }
        return START_STICKY
    }

    private fun showPet() {
        if (petView != null) {
            Log.d(TAG, "showPet: already shown")
            return
        }
        if (!Settings.canDrawOverlays(this)) {
            Log.w(TAG, "showPet: no overlay permission")
            toast("请先授予\"显示在其他应用上层\"权限")
            return
        }

        windowManager = getSystemService(WINDOW_SERVICE) as WindowManager

        val type = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY
        } else {
            @Suppress("DEPRECATION")
            WindowManager.LayoutParams.TYPE_PHONE
        }

        val dm = resources.displayMetrics
        val screenWidth = dm.widthPixels
        val screenHeight = dm.heightPixels
        // 3D 宠物尺寸：160dp（放大窗口以充分展示精细模型细节）
        val petSize = TypedValue.applyDimension(
            TypedValue.COMPLEX_UNIT_DIP, 160f, dm
        ).toInt()
        val posX = (screenWidth - petSize) / 2
        val posY = screenHeight / 4

        layoutParams = WindowManager.LayoutParams(
            petSize,
            petSize,
            type,
            WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE or
                WindowManager.LayoutParams.FLAG_LAYOUT_NO_LIMITS,
            PixelFormat.TRANSLUCENT
        ).apply {
            gravity = Gravity.TOP or Gravity.START
            x = posX
            y = posY
        }
        Log.d(TAG, "showPet: screen=${screenWidth}x${screenHeight}, pet=$petSize, pos=($posX,$posY)")

        // 使用 3D OpenGL 视图
        val glView = PetGLSurfaceView(this).apply {
            // 透明背景，让 3D 内容透明叠加在桌面上
            setZOrderOnTop(true)
            holder.setFormat(PixelFormat.TRANSLUCENT)
        }

        setupTouchListener(glView)

        try {
            windowManager?.addView(glView, layoutParams)
            petView = glView
            petVisible = true
            Log.i(TAG, "3D Pet shown successfully")
            toast("桌面宠物已显示，点击直接对话，长按隐藏")
            // 创建并添加状态指示条（位于宠物正下方）
            addStatusOverlay(posX, posY, petSize, type)
            // 开始监听 ViewModel 状态
            startStateObserving()
        } catch (e: Exception) {
            Log.e(TAG, "Failed to show pet: ${e.message}", e)
            toast("显示宠物失败：${e.message}")
        }
    }

    /**
     * 在宠物正下方添加一个状态指示条，文字与配色与 2D 界面 [com.xiaozhi.android.ui.screens.StatusText] 保持一致。
     * 解决 3D 模型动画太微弱、用户看不出「在听」还是「在说」的问题。
     */
    private fun addStatusOverlay(posX: Int, posY: Int, petSize: Int, type: Int) {
        val dp = TypedValue.applyDimension(TypedValue.COMPLEX_UNIT_DIP, 1f, resources.displayMetrics)
        val tv = TextView(this).apply {
            text = "点击对话"
            setTextColor(Color.WHITE)
            textSize = 12f
            gravity = Gravity.CENTER
            val padH = (12f * dp).toInt()
            val padV = (5f * dp).toInt()
            setPadding(padH, padV, padH, padV)
            // 圆角半透明背景，初始为 IDLE 灰色
            background = GradientDrawable().apply {
                cornerRadius = 14f * dp
                setColor(Color.parseColor("#80000000"))
            }
        }
        val lp = WindowManager.LayoutParams(
            WindowManager.LayoutParams.WRAP_CONTENT,
            WindowManager.LayoutParams.WRAP_CONTENT,
            type,
            WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE or
                WindowManager.LayoutParams.FLAG_LAYOUT_NO_LIMITS,
            PixelFormat.TRANSLUCENT
        ).apply {
            gravity = Gravity.TOP or Gravity.START
            // 水平居中于宠物下方；先给一个估算 x，addView 后用真实宽度修正
            x = posX
            y = posY + petSize + (statusMarginTopDp * dp).toInt()
        }
        try {
            windowManager?.addView(tv, lp)
            statusView = tv
            statusLayoutParams = lp
            // measure 后用真实宽度水平居中
            tv.measure(View.MeasureSpec.UNSPECIFIED, View.MeasureSpec.UNSPECIFIED)
            val statusW = tv.measuredWidth.coerceAtLeast(1)
            lp.x = posX + (petSize - statusW) / 2
            windowManager?.updateViewLayout(tv, lp)
        } catch (e: Exception) {
            Log.w(TAG, "addStatusOverlay failed: ${e.message}")
            statusView = null
            statusLayoutParams = null
        }
    }

    /**
     * 根据设备状态更新状态指示条的文案、配色与可见性。
     */
    private fun updateStatusOverlay(state: DeviceState, wsConnected: Boolean) {
        val tv = statusView ?: return
        val lp = statusLayoutParams ?: return
        val (text, color) = when {
            !wsConnected -> "正在连接服务器..." to Color.parseColor("#80FF9800")
            state == DeviceState.LISTENING -> "正在聆听..." to Color.parseColor("#802196F3")
            state == DeviceState.SPEAKING -> "AI 正在说话..." to Color.parseColor("#804CAF50")
            state == DeviceState.CONNECTING -> "正在连接..." to Color.parseColor("#80FF9800")
            else -> "点击对话" to Color.parseColor("#80000000")
        }
        tv.text = text
        (tv.background as? GradientDrawable)?.setColor(color)
        // 文案长度变化后重新测量并水平居中于宠物下方
        tv.measure(View.MeasureSpec.UNSPECIFIED, View.MeasureSpec.UNSPECIFIED)
        val statusW = tv.measuredWidth.coerceAtLeast(1)
        val petLp = layoutParams ?: return
        val petSize = petLp.width
        lp.x = petLp.x + (petSize - statusW) / 2
        lp.y = petLp.y + petSize + TypedValue.applyDimension(
            TypedValue.COMPLEX_UNIT_DIP, statusMarginTopDp, resources.displayMetrics
        ).toInt()
        try {
            windowManager?.updateViewLayout(tv, lp)
        } catch (e: Exception) {
            Log.w(TAG, "updateStatusOverlay: ${e.message}")
        }
    }

    /**
     * 监听 ViewModel 的设备状态，同步更新 3D 宠物的动画状态与状态指示条。
     */
    private fun startStateObserving() {
        val viewModel = (application as? XiaozhiApp)?.lastViewModel
        if (viewModel == null) {
            Log.w(TAG, "ViewModel is null, cannot observe state")
            return
        }
        stateJob?.cancel()
        stateJob = serviceScope.launch {
            // 同时监听设备状态与 WebSocket 连接状态，任一变化都刷新状态条
            launch {
                viewModel.deviceState.collect { state ->
                    val petState = when (state) {
                        DeviceState.LISTENING -> PetGLSurfaceView.PetRenderer.STATE_LISTENING
                        DeviceState.SPEAKING -> PetGLSurfaceView.PetRenderer.STATE_SPEAKING
                        DeviceState.CONNECTING -> PetGLSurfaceView.PetRenderer.STATE_THINKING
                        else -> PetGLSurfaceView.PetRenderer.STATE_IDLE
                    }
                    Log.d(TAG, "Pet state -> $petState (deviceState=$state)")
                    (petView as? PetGLSurfaceView)?.setState(petState)
                    updateStatusOverlay(state, viewModel.webSocketManager.connectionState.value == WebSocketManager.ConnectionState.CONNECTED)
                }
            }
            launch {
                viewModel.webSocketManager.connectionState.collect { wsState ->
                    val connected = wsState == WebSocketManager.ConnectionState.CONNECTED
                    updateStatusOverlay(viewModel.deviceState.value, connected)
                }
            }
        }
        Log.i(TAG, "State observing started")
    }

    private fun hidePet() {
        stateJob?.cancel()
        try {
            statusView?.let { windowManager?.removeView(it) }
        } catch (e: Exception) {
            Log.w(TAG, "removeView status: ${e.message}")
        }
        try {
            petView?.let { windowManager?.removeView(it) }
        } catch (e: Exception) {
            Log.w(TAG, "removeView: ${e.message}")
        }
        statusView = null
        statusLayoutParams = null
        petView = null
        petVisible = false
        Log.i(TAG, "Pet hidden")
        toast("桌面宠物已隐藏")
    }

    private var initialX = 0
    private var initialY = 0
    private var initialTouchX = 0f
    private var initialTouchY = 0f
    private var isDragging = false
    private var longPressCheckRunnable: Runnable? = null
    private val longPressTimeout = 600L

    private fun setupTouchListener(view: View) {
        view.setOnTouchListener { v, event ->
            when (event.action) {
                MotionEvent.ACTION_DOWN -> {
                    initialX = layoutParams?.x ?: 0
                    initialY = layoutParams?.y ?: 0
                    initialTouchX = event.rawX
                    initialTouchY = event.rawY
                    isDragging = false
                    longPressCheckRunnable = Runnable {
                        if (!isDragging) {
                            Log.d(TAG, "Long press detected")
                            hidePet()
                        }
                    }
                    view.postDelayed(longPressCheckRunnable, longPressTimeout)
                    true
                }
                MotionEvent.ACTION_MOVE -> {
                    val dx = event.rawX - initialTouchX
                    val dy = event.rawY - initialTouchY
                    if (abs(dx) > 10 || abs(dy) > 10) {
                        isDragging = true
                        longPressCheckRunnable?.let { view.removeCallbacks(it) }
                    }
                    if (isDragging) {
                        layoutParams?.x = initialX + dx.toInt()
                        layoutParams?.y = initialY + dy.toInt()
                        try {
                            windowManager?.updateViewLayout(view, layoutParams)
                        } catch (_: Exception) {}
                        // 状态条跟随宠物移动
                        val petLp = layoutParams ?: return@setOnTouchListener true
                        val sLp = statusLayoutParams ?: return@setOnTouchListener true
                        val tv = statusView ?: return@setOnTouchListener true
                        val petSize = petLp.width
                        val statusW = tv.width.coerceAtLeast(1)
                        sLp.x = petLp.x + (petSize - statusW) / 2
                        sLp.y = petLp.y + petSize + TypedValue.applyDimension(
                            TypedValue.COMPLEX_UNIT_DIP, statusMarginTopDp, resources.displayMetrics
                        ).toInt()
                        try {
                            windowManager?.updateViewLayout(tv, sLp)
                        } catch (_: Exception) {}
                    }
                    true
                }
                MotionEvent.ACTION_UP -> {
                    longPressCheckRunnable?.let { view.removeCallbacks(it) }
                    val wasDragging = isDragging
                    isDragging = false
                    if (!wasDragging) {
                        Log.d(TAG, "ACTION_UP: triggering click")
                        performPetClick()
                    }
                    true
                }
                MotionEvent.ACTION_CANCEL -> {
                    longPressCheckRunnable?.let { view.removeCallbacks(it) }
                    isDragging = false
                    true
                }
                else -> false
            }
        }
    }

    /**
     * 点击宠物：直接在悬浮窗内开始/停止对话，不跳转页面。
     * 只有 APP 被系统杀掉时才启动 Activity（冷启动）。
     * 点击时会触发震动反馈，不同状态采用不同的震动模式，让用户能"摸"出当前操作。
     */
    private fun performPetClick() {
        Log.i(TAG, "Pet clicked")
        val app = application as? XiaozhiApp
        val viewModel = app?.lastViewModel
        if (viewModel != null) {
            // APP 还活着 → 直接在悬浮窗内对话，不跳转页面
            val state = viewModel.deviceState.value
            Log.i(TAG, "ViewModel found, state=$state, toggling directly (no Activity jump)")
            when (state) {
                com.xiaozhi.android.model.DeviceState.CONNECTING -> {
                    // 连接中：轻震一下表示"稍候"
                    vibrate(longArrayOf(0L, 30L), 60)
                    toast("正在连接中，请稍候...")
                }
                com.xiaozhi.android.model.DeviceState.LISTENING -> {
                    // 停止聆听：短-短 双震
                    vibrate(longArrayOf(0L, 40L, 60L, 40L), 80)
                    toast("停止聆听")
                    viewModel.toggleListening()
                }
                com.xiaozhi.android.model.DeviceState.SPEAKING -> {
                    // 打断 AI：强而短的一震
                    vibrate(longArrayOf(0L, 80L), 120)
                    toast("打断 AI")
                    viewModel.toggleListening()
                }
                else -> {
                    // IDLE 或断开状态 → 启动聆听（内部会处理重连）
                    // 唤醒：短-停-长 的"嘀哒"震感
                    vibrate(longArrayOf(0L, 30L, 80L, 100L), 100)
                    toast("唤醒小智...")
                    viewModel.toggleListening()
                }
            }
        } else {
            // APP 被系统杀掉 → 只能启动 Activity 重建 ViewModel
            // 冷启动：单次中等震感
            vibrate(longArrayOf(0L, 60L), 80)
            Log.w(TAG, "ViewModel is null, launching MainActivity (cold start)")
            toast("正在启动小智...")
            val intent = Intent(this, MainActivity::class.java).apply {
                addFlags(Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_SINGLE_TOP)
                action = MainActivity.ACTION_PET_LISTEN
            }
            startActivity(intent)
        }
    }

    /**
     * 触发震动反馈。
     * @param timings 震动模式（毫秒）：[off, on, off, on, ...]，第一个值是首次震动前的等待时间
     * @param amplitude 震动强度（1-255），低于 API26 的设备忽略此参数
     */
    private fun vibrate(timings: LongArray, amplitude: Int) {
        try {
            val vibrator = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.S) {
                val vibratorManager = getSystemService(VibratorManager::class.java)
                vibratorManager?.defaultVibrator
            } else {
                @Suppress("DEPRECATION")
                getSystemService(VIBRATOR_SERVICE) as? Vibrator
            } ?: return
            if (!vibrator.hasVibrator()) return
            val amp = amplitude.coerceIn(1, 255)
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
                // 注意：createWaveform(timings, int) 的第二个参数是「重复索引」而非强度，
                // 这里必须使用带 amplitudes 数组的重载，否则会越界崩溃。
                // amplitudes 数组长度 = timings.size / 2（每段 "on" 对应一个强度）
                val amplitudes = IntArray(timings.size / 2) { amp }
                val effect = VibrationEffect.createWaveform(timings, amplitudes, -1)
                vibrator.vibrate(effect)
            } else {
                @Suppress("DEPRECATION")
                vibrator.vibrate(timings, -1)
            }
        } catch (e: Exception) {
            Log.w(TAG, "vibrate failed: ${e.message}")
        }
    }

    private fun toast(msg: String) {
        try {
            Toast.makeText(this, msg, Toast.LENGTH_SHORT).show()
        } catch (_: Exception) {}
    }

    private fun buildNotification(): Notification {
        val pendingIntent = android.app.PendingIntent.getActivity(
            this, 0,
            Intent(this, MainActivity::class.java),
            android.app.PendingIntent.FLAG_UPDATE_CURRENT or android.app.PendingIntent.FLAG_IMMUTABLE
        )
        return NotificationCompat.Builder(this, CHANNEL_ID)
            .setContentTitle("小智桌面宠物")
            .setContentText("小智正在后台待命，点击宠物直接对话")
            .setSmallIcon(com.xiaozhi.android.R.drawable.ic_notification)
            .setContentIntent(pendingIntent)
            .setOngoing(true)
            .build()
    }

    private fun createNotificationChannel() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            val channel = NotificationChannel(
                CHANNEL_ID, "小智桌面宠物",
                NotificationManager.IMPORTANCE_LOW
            ).apply { description = "保持桌面宠物悬浮窗运行" }
            getSystemService(NotificationManager::class.java).createNotificationChannel(channel)
        }
    }

    override fun onDestroy() {
        super.onDestroy()
        Log.i(TAG, "Service onDestroy")
        stateJob?.cancel()
        serviceScope.cancel()
        hidePet()
    }

    override fun onBind(intent: Intent?): IBinder? = null
}
