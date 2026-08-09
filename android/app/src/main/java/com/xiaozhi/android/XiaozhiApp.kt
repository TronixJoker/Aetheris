package com.xiaozhi.android

import android.app.Application
import android.content.Context
import com.xiaozhi.android.config.ConfigManager
import com.xiaozhi.android.viewmodel.MainViewModel

class XiaozhiApp : Application() {
    override fun onCreate() {
        super.onCreate()
        appContext = this
        // 初始化 ConfigManager 全局实例，供 ApiService 同步读取 API URL
        ConfigManager.initGlobal(this)
    }

    // 用于桌面宠物点击时触发聆听（避免 Activity 重建丢失 ViewModel 引用）
    @Volatile
    var lastViewModel: MainViewModel? = null

    companion object {
        // 全局应用上下文，供 ApiService 等无法直接拿到 Context 的组件使用
        @Volatile
        var appContext: Context? = null
            private set
    }
}
