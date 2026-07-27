package com.xiaozhi.android

import android.Manifest
import android.content.Intent
import android.content.pm.PackageManager
import android.net.Uri
import android.os.Build
import android.os.Bundle
import android.provider.Settings
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.result.contract.ActivityResultContracts
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.ui.Modifier
import androidx.core.content.ContextCompat
import androidx.lifecycle.viewmodel.compose.viewModel
import androidx.navigation.compose.NavHost
import androidx.navigation.compose.composable
import androidx.navigation.compose.rememberNavController
import com.xiaozhi.android.ui.screens.ActivationScreen
import com.xiaozhi.android.ui.screens.MainScreen
import com.xiaozhi.android.ui.screens.SettingsScreen
import com.xiaozhi.android.ui.theme.XiaozhiTheme
import com.xiaozhi.android.viewmodel.MainViewModel

class MainActivity : ComponentActivity() {
    companion object {
        const val ACTION_PET_LISTEN = "com.xiaozhi.android.PET_LISTEN"
    }

    private val requestPermissionLauncher = registerForActivityResult(
        ActivityResultContracts.RequestPermission()
    ) { isGranted ->
        if (isGranted) {
            // Permission granted, viewModel can now record audio
        }
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        // Request audio permission
        if (ContextCompat.checkSelfPermission(this, Manifest.permission.RECORD_AUDIO)
            != PackageManager.PERMISSION_GRANTED
        ) {
            requestPermissionLauncher.launch(Manifest.permission.RECORD_AUDIO)
        }

        // Android 13+ 必须请求通知权限，否则前台服务通知无法显示，服务会被系统杀死
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU &&
            ContextCompat.checkSelfPermission(this, Manifest.permission.POST_NOTIFICATIONS)
            != PackageManager.PERMISSION_GRANTED
        ) {
            requestPermissionLauncher.launch(Manifest.permission.POST_NOTIFICATIONS)
        }

        // 桌面宠物点击触发的冷启动：处理 ACTION_PET_LISTEN
        // 在 setContent 后 ViewModel init 完成会自动连接，这里只标记
        val petListenAction = intent?.action == ACTION_PET_LISTEN

        setContent {
            XiaozhiTheme {
                Surface(
                    modifier = Modifier.fillMaxSize(),
                    color = MaterialTheme.colorScheme.background
                ) {
                    val viewModel: MainViewModel = viewModel()
                    viewModel.init()

                    // 桌面宠物点击触发的冷启动：等连接就绪后自动开始聆听
                    androidx.compose.runtime.LaunchedEffect(petListenAction) {
                        if (petListenAction) {
                            // 给 init() 里的连接一些时间，3秒后尝试聆听
                            kotlinx.coroutines.delay(3000)
                            viewModel.startListening()
                        }
                    }

                    val navController = rememberNavController()

                    NavHost(
                        navController = navController,
                        startDestination = "main"
                    ) {
                        composable("main") {
                            MainScreen(
                                viewModel = viewModel,
                                onNavigateToSettings = {
                                    navController.navigate("settings")
                                },
                                onNavigateToActivation = {
                                    navController.navigate("activation")
                                }
                            )
                        }

                        composable("settings") {
                            SettingsScreen(
                                onNavigateBack = { navController.popBackStack() },
                                viewModel = viewModel
                            )
                        }

                        composable("activation") {
                            ActivationScreen(
                                onNavigateBack = { navController.popBackStack() },
                                viewModel = viewModel
                            )
                        }
                    }
                }
            }
        }
    }

    override fun onNewIntent(intent: Intent) {
        super.onNewIntent(intent)
        setIntent(intent)
        // 桌面宠物点击 → 自动开始聆听
        if (intent.action == ACTION_PET_LISTEN) {
            // 通过 ViewModel 单例触发聆听
            val viewModel = (application as? XiaozhiApp)?.lastViewModel
            viewModel?.startListening()
        }
    }

    /**
     * 请求悬浮窗权限
     */
    fun requestOverlayPermission() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M && !Settings.canDrawOverlays(this)) {
            val intent = Intent(
                Settings.ACTION_MANAGE_OVERLAY_PERMISSION,
                Uri.parse("package:$packageName")
            )
            startActivity(intent)
        }
    }
}