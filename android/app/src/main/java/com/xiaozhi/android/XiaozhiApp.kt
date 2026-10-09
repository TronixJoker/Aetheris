package com.xiaozhi.android

import android.app.Activity
import android.app.Application
import android.content.Context
import android.os.Bundle
import com.xiaozhi.android.config.ConfigManager
import com.xiaozhi.android.viewmodel.MainViewModel

class XiaozhiApp : Application() {

    // ==================== 前台/后台状态计数（v2.3.13 §3.2） ====================
    // onActivityStarted/onActivityStopped 成对回调，started 计数 >0 即视为前台。
    // 用途：B2 放弃自愈（麦克风持续静音）时区分提示文案——APP 在后台时，
    // Android while-in-use 策略可能限制后台麦克风采集（录到全零），此时引导
    // 用户把麦克风权限改为「始终允许」比"关闭占用应用"更对症。
    @Volatile
    private var startedActivities = 0

    /** APP 是否处于前台（任一 Activity 可见） */
    val isAppInForeground: Boolean
        get() = startedActivities > 0

    private val lifecycleCallbacks = object : Application.ActivityLifecycleCallbacks {
        override fun onActivityStarted(activity: Activity) {
            startedActivities++
        }

        override fun onActivityStopped(activity: Activity) {
            // coerceAtLeast(0)：防御异常路径下 stop 多于 start 导致计数变负
            startedActivities = (startedActivities - 1).coerceAtLeast(0)
        }

        // 其余回调与本需求无关，空实现
        override fun onActivityCreated(activity: Activity, savedInstanceState: Bundle?) = Unit
        override fun onActivityResumed(activity: Activity) = Unit
        override fun onActivityPaused(activity: Activity) = Unit
        override fun onActivitySaveInstanceState(activity: Activity, outState: Bundle) = Unit
        override fun onActivityDestroyed(activity: Activity) = Unit
    }

    override fun onCreate() {
        super.onCreate()
        appContext = this
        // 初始化 ConfigManager 全局实例，供 ApiService 同步读取 API URL
        ConfigManager.initGlobal(this)
        // 前台计数注册（v2.3.13 §3.2 后台权限引导文案的判定依据）
        registerActivityLifecycleCallbacks(lifecycleCallbacks)
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
