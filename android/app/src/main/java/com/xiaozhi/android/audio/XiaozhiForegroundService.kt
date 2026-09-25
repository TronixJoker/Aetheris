package com.xiaozhi.android.audio

import android.app.Notification
import android.app.NotificationChannel
import android.app.NotificationManager
import android.app.PendingIntent
import android.app.Service
import android.content.Intent
import android.content.pm.ServiceInfo
import android.os.Build
import android.os.IBinder
import androidx.core.app.NotificationCompat
import androidx.core.app.ServiceCompat
import com.xiaozhi.android.MainActivity

class XiaozhiForegroundService : Service() {
    companion object {
        const val CHANNEL_ID = "xiaozhi_audio"
        const val NOTIFICATION_ID = 1
    }

    override fun onCreate() {
        super.onCreate()
        createNotificationChannel()
    }

    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        val pendingIntent = PendingIntent.getActivity(
            this, 0,
            Intent(this, MainActivity::class.java),
            PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE
        )

        val notification = NotificationCompat.Builder(this, CHANNEL_ID)
            .setContentTitle("小智AI")
            .setContentText("正在运行中...")
            .setSmallIcon(com.xiaozhi.android.R.drawable.ic_notification)
            .setContentIntent(pendingIntent)
            .setOngoing(true)
            .build()

        // ===== B4 FGS 加固 =====
        // 显式声明 MICROPHONE|SPECIAL_USE 前台服务类型：
        //  - MICROPHONE 类型是 Android 11+ "while-in-use" 策略下，后台聆听获得
        //    麦克风访问资格的关键（宠物悬浮窗未启用时的兜底，方案 B4）；
        //  - SPECIAL_USE 与 Manifest 中 foregroundServiceType 声明保持一致
        //    （API 34+ 要求 startForeground 传入的类型必须是 Manifest 已声明类型的子集，
        //    否则会抛 MissingForegroundServiceTypeException）；
        //  - ServiceCompat.startForeground 会按 API 级别自动降级处理
        //    （低版本自动屏蔽未支持的类型位），跨版本不会崩溃。
        ServiceCompat.startForeground(
            this, NOTIFICATION_ID, notification,
            ServiceInfo.FOREGROUND_SERVICE_TYPE_MICROPHONE or
                ServiceInfo.FOREGROUND_SERVICE_TYPE_SPECIAL_USE
        )
        return START_STICKY
    }

    override fun onBind(intent: Intent?): IBinder? = null

    private fun createNotificationChannel() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            val channel = NotificationChannel(
                CHANNEL_ID, "小智音频服务",
                NotificationManager.IMPORTANCE_LOW
            ).apply {
                description = "保持音频服务在后台运行"
            }
            val manager = getSystemService(NotificationManager::class.java)
            manager.createNotificationChannel(channel)
        }
    }
}