package com.xiaozhi.android

import android.app.Application
import com.xiaozhi.android.viewmodel.MainViewModel

class XiaozhiApp : Application() {
    override fun onCreate() {
        super.onCreate()
    }

    // 用于桌面宠物点击时触发聆听（避免 Activity 重建丢失 ViewModel 引用）
    @Volatile
    var lastViewModel: MainViewModel? = null
}
