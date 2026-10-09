package com.xiaozhi.android.pet

import android.content.Context
import android.opengl.GLSurfaceView
import android.opengl.GLU
import android.util.Log
import javax.microedition.khronos.egl.EGLConfig
import javax.microedition.khronos.opengles.GL10

/**
 * 桌面宠物渲染视图（v2.3.13 起为"启动器头像面片"渲染：单个纹理化 quad + 三层状态粒子）。
 *
 * v2.3.13 头像化改造（2026-10）：桌面宠物形象统一更换为 APP 启动器图标（蓝色机器人头像）。
 *  - 旧方案：assets/pet_model.bin 3D 网格 + assets/pet_texture.png UV 图集（白色机器人玩具）
 *  - 新方案：代码内置正方形面片（quad），纹理直接取 mipmap/ic_launcher_playstore（512px 启动器图标），
 *    UV 裁剪到图标内容区（含机器人的圆角方块），透明背景仍由 GL_BLEND 实现干净抠图。
 *  - 保留：45° 透视 / 摄像机 -3.0 / GL_REPLACE 纹理环境 / 三层粒子状态反馈，全部不变。
 *  - 动画适配：面片是平面，IDLE 的整周 Y 轴自转会在 90° 时侧对视线"消失"，
 *    故改为 ±16° 缓摆 + 微幅 Z 轴呼吸摆动；LISTENING 脉动 / SPEAKING 摇摆 / THINKING 倾斜语义不变。
 */
class PetGLSurfaceView(context: Context) : GLSurfaceView(context) {

    private val petRenderer: PetRenderer

    init {
        setEGLContextClientVersion(1)
        setEGLConfigChooser(8, 8, 8, 8, 16, 0)
        holder.setFormat(android.graphics.PixelFormat.TRANSLUCENT)
        setZOrderOnTop(true)

        petRenderer = PetRenderer(context)
        setRenderer(petRenderer)
        renderMode = RENDERMODE_CONTINUOUSLY
    }

    fun setState(state: Int) {
        petRenderer.state = state
    }

    class PetRenderer(private val context: Context) : GLSurfaceView.Renderer {
        var state: Int = 0

        private var swayAngle = 0f
        private var timeMs: Long = 0L
        private var textureId: Int = 0

        // === 头像面片几何：单位半边长 1.02（视锥半高 1.2426，约占窗口高度 82%，与旧 3D 模型占比相当） ===
        private val quadHalf = 1.02f
        // 6 顶点（x,y,z）两个独立三角形（drawArrays(GL_TRIANGLES,0,6) 恰好消费 6 个顶点）：
        // 三角1 左下/右下/左上，三角2 左上/右下/右上（均为 CCW，与 GL 惯例一致）。
        // 注意：不可用 4 顶点 + drawArrays(6)（越界读，第二个三角形未定义）；
        // 若想省 2 个顶点须改 drawElements + 索引缓冲 [0,1,2,2,1,3]。
        private val quadVertices = floatArrayOf(
            -quadHalf, -quadHalf, 0f,   quadHalf, -quadHalf, 0f,   -quadHalf,  quadHalf, 0f,
            -quadHalf,  quadHalf, 0f,   quadHalf, -quadHalf, 0f,    quadHalf,  quadHalf, 0f
        )
        private val quadBuffer: java.nio.FloatBuffer = java.nio.ByteBuffer
            .allocateDirect(quadVertices.size * 4)
            .order(java.nio.ByteOrder.nativeOrder())
            .asFloatBuffer()
            .apply { put(quadVertices); position(0) }

        // 启动器图标 512px 画布中内容区（圆角方块）bbox：x[66,444] y[63,442]，像素级实测。
        // UV 的 v 轴与 bitmap 行序相反（GL 纹理原点在左下），故 v = 1 - y/512。
        private val U_L = 0.12891f   // 66 / 512
        private val U_R = 0.86719f   // 444 / 512
        private val V_T = 0.87695f   // 1 - 63/512（内容区顶）
        private val V_B = 0.13672f   // 1 - 442/512（内容区底）

        // UV 与 quadVertices 6 顶点一一对应：左下/右下/左上/左上/右下/右上
        private val quadUVs = floatArrayOf(
            U_L, V_B,   U_R, V_B,   U_L, V_T,
            U_L, V_T,   U_R, V_B,   U_R, V_T
        )
        private val uvBuffer: java.nio.FloatBuffer = java.nio.ByteBuffer
            .allocateDirect(quadUVs.size * 4)
            .order(java.nio.ByteOrder.nativeOrder())
            .asFloatBuffer()
            .apply { put(quadUVs); position(0) }

        // === 粒子系统：多层粒子（环绕层 + 上升层 + 脉冲层），在模型周边显示动态粒子作为状态反馈 ===
        // Layer 1: 环绕粒子（LISTENING 时蓝色环绕旋转）
        private val orbitCount = 28
        private val orbitAngle = FloatArray(orbitCount)
        private val orbitRadius = FloatArray(orbitCount)
        private val orbitHeight = FloatArray(orbitCount)
        private val orbitSpeed = FloatArray(orbitCount)
        private val orbitPhase = FloatArray(orbitCount)
        private val orbitPositions = FloatArray(orbitCount * 3)
        private val orbitBuffer: java.nio.FloatBuffer = java.nio.ByteBuffer
            .allocateDirect(orbitCount * 3 * 4)
            .order(java.nio.ByteOrder.nativeOrder())
            .asFloatBuffer()

        // Layer 2: 上升粒子（SPEAKING 时绿色粒子向上飘散）
        private val riseCount = 20
        private val riseAngle = FloatArray(riseCount)
        private val riseHeight = FloatArray(riseCount)
        private val riseSpeed = FloatArray(riseCount)
        private val riseRadius = FloatArray(riseCount)
        private val riseLife = FloatArray(riseCount)   // 0~1 生命周期，控制大小和透明度
        private val risePositions = FloatArray(riseCount * 3)
        private val riseBuffer: java.nio.FloatBuffer = java.nio.ByteBuffer
            .allocateDirect(riseCount * 3 * 4)
            .order(java.nio.ByteOrder.nativeOrder())
            .asFloatBuffer()

        // Layer 3: 脉冲粒子（THINKING 时紫色粒子向内收缩再外扩）
        private val pulseCount = 16
        private val pulseAngle = FloatArray(pulseCount)
        private val pulseRadius = FloatArray(pulseCount)
        private val pulseSpeed = FloatArray(pulseCount)
        private val pulsePhase = FloatArray(pulseCount)
        private val pulsePositions = FloatArray(pulseCount * 3)
        private val pulseBuffer: java.nio.FloatBuffer = java.nio.ByteBuffer
            .allocateDirect(pulseCount * 3 * 4)
            .order(java.nio.ByteOrder.nativeOrder())
            .asFloatBuffer()

        private var frameTime = 0L

        override fun onSurfaceCreated(gl: GL10, config: EGLConfig) {
            // 与 1.9.19 一致：仅开深度测试 + 2D 纹理，不设光照
            gl.glEnable(GL10.GL_DEPTH_TEST)
            gl.glEnable(GL10.GL_TEXTURE_2D)
            loadTexture(gl)
            initParticles()
        }

        /**
         * 加载启动器图标作为宠物纹理（v2.3.13）。
         * ic_launcher_playstore.png（512×512，xxxhdpi）是启动器图标的最高清版本，
         * 与桌面图标完全同源，保证"悬浮窗形象 = 启动器形象"。
         * inPremultiplied=false：上传非预乘 RGBA，配合 SRC_ALPHA 混合得到正确的圆角透明边缘。
         */
        private fun loadTexture(gl: GL10) {
            try {
                val opts = android.graphics.BitmapFactory.Options().apply {
                    inPremultiplied = false
                    // 关键：关闭密度缩放。mipmap 资源会被 Resource 按屏幕密度缩放
                    // （512px@xxxhdpi 在 mdpi 设备上会被压到 128px，纹理发虚），
                    // GL 纹理需要原生 512px 全分辨率。
                    inScaled = false
                }
                val bitmap = android.graphics.BitmapFactory.decodeResource(
                    context.resources,
                    com.xiaozhi.android.R.mipmap.ic_launcher_playstore,
                    opts
                ) ?: run {
                    Log.e(TAG, "Failed to decode ic_launcher_playstore")
                    return
                }
                val textures = IntArray(1)
                gl.glGenTextures(1, textures, 0)
                textureId = textures[0]
                gl.glBindTexture(GL10.GL_TEXTURE_2D, textureId)
                gl.glTexParameterf(GL10.GL_TEXTURE_2D, GL10.GL_TEXTURE_MIN_FILTER, GL10.GL_LINEAR.toFloat())
                gl.glTexParameterf(GL10.GL_TEXTURE_2D, GL10.GL_TEXTURE_MAG_FILTER, GL10.GL_LINEAR.toFloat())
                gl.glTexParameterf(GL10.GL_TEXTURE_2D, GL10.GL_TEXTURE_WRAP_S, GL10.GL_CLAMP_TO_EDGE.toFloat())
                gl.glTexParameterf(GL10.GL_TEXTURE_2D, GL10.GL_TEXTURE_WRAP_T, GL10.GL_CLAMP_TO_EDGE.toFloat())
                android.opengl.GLUtils.texImage2D(GL10.GL_TEXTURE_2D, 0, bitmap, 0)
                bitmap.recycle()
                Log.i(TAG, "Texture loaded: ic_launcher_playstore, id=$textureId")
            } catch (e: Exception) {
                Log.e(TAG, "Failed to load texture: ${e.message}", e)
            }
        }

        override fun onSurfaceChanged(gl: GL10, width: Int, height: Int) {
            gl.glViewport(0, 0, width, height)
            gl.glMatrixMode(GL10.GL_PROJECTION)
            gl.glLoadIdentity()
            val ratio = width.toFloat() / height
            // 与 1.9.19 一致：45 度透视投影
            GLU.gluPerspective(gl, 45.0f, ratio, 0.1f, 100.0f)
            gl.glMatrixMode(GL10.GL_MODELVIEW)
            gl.glLoadIdentity()
        }

        override fun onDrawFrame(gl: GL10) {
            gl.glClearColor(0f, 0f, 0f, 0f)
            gl.glClear(GL10.GL_COLOR_BUFFER_BIT or GL10.GL_DEPTH_BUFFER_BIT)
            // 透明背景混合
            gl.glEnable(GL10.GL_BLEND)
            gl.glBlendFunc(GL10.GL_SRC_ALPHA, GL10.GL_ONE_MINUS_SRC_ALPHA)

            gl.glMatrixMode(GL10.GL_MODELVIEW)
            gl.glLoadIdentity()
            // 与 1.9.19 一致：摄像机距离 -3.0
            gl.glTranslatef(0f, 0f, -3.0f)

            timeMs = System.currentTimeMillis()

            // 状态动画（v2.3.13 适配面片：避免整周自转让平面卡片侧对视线消失）
            when (state) {
                STATE_LISTENING -> {
                    // 聆听：呼吸脉动（保留原节奏）
                    val scale = 1f + 0.05f * Math.sin(timeMs * 0.005).toFloat()
                    gl.glScalef(scale, scale, scale)
                }
                STATE_SPEAKING -> {
                    // 说话：Z 轴摇摆（保留原节奏）
                    swayAngle = 12f * Math.sin(timeMs * 0.008).toFloat()
                    gl.glRotatef(swayAngle, 0f, 0f, 1f)
                }
                STATE_THINKING -> {
                    // 思考：右倾 + 缓慢小幅摆动（原为持续自转，面片化后改为摆动）
                    gl.glRotatef(8f, 0f, 0f, 1f)
                    gl.glRotatef(10f * Math.sin(timeMs * 0.002).toFloat(), 0f, 1f, 0f)
                }
                else -> {
                    // 待机：±16° Y 轴缓摆 + ±3° Z 轴呼吸摆，营造"悬浮活着"的感觉
                    gl.glRotatef(16f * Math.sin(timeMs * 0.0012).toFloat(), 0f, 1f, 0f)
                    gl.glRotatef(3f * Math.sin(timeMs * 0.0019).toFloat(), 0f, 0f, 1f)
                }
            }

            drawQuad(gl)

            // 粒子在模型之后绘制，不修改模型本身
            if (state == STATE_LISTENING || state == STATE_SPEAKING || state == STATE_THINKING) {
                drawParticles(gl)
            }
        }

        /**
         * 绘制头像面片（v2.3.13）：两个三角形 + 图标纹理。
         * 平面无需法线（无光照），纹理环境 GL_REPLACE 保持图标原色。
         */
        private fun drawQuad(gl: GL10) {
            if (textureId != 0) {
                gl.glEnable(GL10.GL_TEXTURE_2D)
                gl.glBindTexture(GL10.GL_TEXTURE_2D, textureId)
                gl.glEnableClientState(GL10.GL_TEXTURE_COORD_ARRAY)
                gl.glTexCoordPointer(2, GL10.GL_FLOAT, 0, uvBuffer)
                gl.glTexEnvf(GL10.GL_TEXTURE_ENV, GL10.GL_TEXTURE_ENV_MODE, GL10.GL_REPLACE.toFloat())
                gl.glDisable(GL10.GL_LIGHTING)
            }

            gl.glEnableClientState(GL10.GL_VERTEX_ARRAY)
            gl.glVertexPointer(3, GL10.GL_FLOAT, 0, quadBuffer)
            gl.glDrawArrays(GL10.GL_TRIANGLES, 0, 6)

            gl.glDisableClientState(GL10.GL_VERTEX_ARRAY)

            if (textureId != 0) {
                gl.glDisableClientState(GL10.GL_TEXTURE_COORD_ARRAY)
                gl.glDisable(GL10.GL_TEXTURE_2D)
            }
        }

        /**
         * 初始化三层粒子参数（范围紧凑，贴近模型）。
         */
        private fun initParticles() {
            val rnd = java.util.Random()
            // Layer 1: 环绕粒子——紧贴模型外圈，高度范围小
            for (i in 0 until orbitCount) {
                orbitAngle[i] = rnd.nextFloat() * 360f
                orbitRadius[i] = 0.40f + rnd.nextFloat() * 0.20f  // 0.40~0.60 紧贴模型
                orbitHeight[i] = (rnd.nextFloat() - 0.5f) * 0.50f  // 高度范围 ±0.25
                orbitSpeed[i] = 40f + rnd.nextFloat() * 50f
                orbitPhase[i] = rnd.nextFloat() * (Math.PI.toFloat() * 2f)
            }
            // Layer 2: 上升粒子——从模型底部往上飘
            for (i in 0 until riseCount) {
                riseAngle[i] = rnd.nextFloat() * 360f
                riseRadius[i] = 0.25f + rnd.nextFloat() * 0.20f  // 紧贴模型
                riseHeight[i] = -0.5f + rnd.nextFloat() * 1.0f    // 初始高度分散
                riseSpeed[i] = 0.4f + rnd.nextFloat() * 0.6f
                riseLife[i] = rnd.nextFloat()
            }
            // Layer 3: 脉冲粒子——向内收缩再外扩
            for (i in 0 until pulseCount) {
                pulseAngle[i] = rnd.nextFloat() * 360f
                pulseRadius[i] = 0.35f + rnd.nextFloat() * 0.15f
                pulseSpeed[i] = 0.8f + rnd.nextFloat() * 0.6f
                pulsePhase[i] = rnd.nextFloat() * (Math.PI.toFloat() * 2f)
            }
        }

        /**
         * 绘制状态粒子——三层粒子系统，各状态不同视觉反馈。
         * - LISTENING：蓝色环绕粒子旋转（2 层：主粒子 + 星尘）
         * - SPEAKING：绿色上升粒子飘散（2 层：主粒子 + 拖尾）
         * - THINKING：紫色脉冲粒子收缩外扩（2 层：外圈 + 内圈）
         * 范围紧凑，粒子大小和透明度有变化，视觉丰富不单调。
         */
        private fun drawParticles(gl: GL10) {
            // 重置到世界空间（与模型相同的摄像机，但不应用模型动画）
            gl.glMatrixMode(GL10.GL_MODELVIEW)
            gl.glLoadIdentity()
            gl.glTranslatef(0f, 0f, -3.0f)

            // 粒子作为反馈始终可见，禁用深度测试避免被模型遮挡
            gl.glDisable(GL10.GL_DEPTH_TEST)
            gl.glDisable(GL10.GL_TEXTURE_2D)
            gl.glEnable(GL10.GL_POINT_SMOOTH)
            gl.glHint(GL10.GL_POINT_SMOOTH_HINT, GL10.GL_NICEST)
            gl.glEnable(GL10.GL_BLEND)
            gl.glBlendFunc(GL10.GL_SRC_ALPHA, GL10.GL_ONE_MINUS_SRC_ALPHA)
            gl.glEnableClientState(GL10.GL_VERTEX_ARRAY)

            val t = timeMs * 0.001f
            val dt = 0.016f

            // ============ Layer 1: 环绕粒子（LISTENING 时显示）============
            if (state == STATE_LISTENING) {
                // 主粒子：蓝色环绕旋转
                for (i in 0 until orbitCount) {
                    orbitAngle[i] += orbitSpeed[i] * dt
                    if (orbitAngle[i] > 360f) orbitAngle[i] -= 360f
                    val rad = Math.toRadians(orbitAngle[i].toDouble()).toFloat()
                    val rJitter = orbitRadius[i] + 0.04f * kotlin.math.sin(t * 2f + orbitPhase[i])
                    val yJitter = orbitHeight[i] + 0.08f * kotlin.math.sin(t * 1.5f + orbitPhase[i])
                    orbitPositions[i * 3]     = rJitter * kotlin.math.cos(rad)
                    orbitPositions[i * 3 + 1] = yJitter
                    orbitPositions[i * 3 + 2] = rJitter * kotlin.math.sin(rad)
                }
                orbitBuffer.clear()
                orbitBuffer.put(orbitPositions)
                orbitBuffer.position(0)
                gl.glVertexPointer(3, GL10.GL_FLOAT, 0, orbitBuffer)
                gl.glColor4f(0.2f, 0.6f, 1.0f, 0.85f)
                gl.glPointSize(4f)
                gl.glDrawArrays(GL10.GL_POINTS, 0, orbitCount)

                // 星尘层：更小更暗的粒子，反相位旋转
                for (i in 0 until orbitCount) {
                    val angle = orbitAngle[i] + 180f
                    val rad = Math.toRadians(angle.toDouble()).toFloat()
                    val r = orbitRadius[i] * 0.7f + 0.03f * kotlin.math.cos(t * 3f + orbitPhase[i])
                    orbitPositions[i * 3]     = r * kotlin.math.cos(rad)
                    orbitPositions[i * 3 + 1] = orbitHeight[i] * 0.5f + 0.06f * kotlin.math.cos(t * 2f + orbitPhase[i])
                    orbitPositions[i * 3 + 2] = r * kotlin.math.sin(rad)
                }
                orbitBuffer.clear()
                orbitBuffer.put(orbitPositions)
                orbitBuffer.position(0)
                gl.glVertexPointer(3, GL10.GL_FLOAT, 0, orbitBuffer)
                gl.glColor4f(0.5f, 0.8f, 1.0f, 0.5f)
                gl.glPointSize(2f)
                gl.glDrawArrays(GL10.GL_POINTS, 0, orbitCount)
            }

            // ============ Layer 2: 上升粒子（SPEAKING 时显示）============
            if (state == STATE_SPEAKING) {
                // 主粒子：绿色向上飘散
                for (i in 0 until riseCount) {
                    riseHeight[i] += riseSpeed[i] * dt
                    riseLife[i] += dt * 0.5f
                    if (riseLife[i] > 1f || riseHeight[i] > 1.0f) {
                        riseHeight[i] = -0.6f
                        riseLife[i] = 0f
                        riseAngle[i] = java.util.Random().nextFloat() * 360f
                        riseRadius[i] = 0.25f + java.util.Random().nextFloat() * 0.20f
                    }
                    val rad = Math.toRadians(riseAngle[i].toDouble()).toFloat()
                    val sway = 0.05f * kotlin.math.sin(t * 2f + i.toFloat())
                    val r = riseRadius[i] + sway
                    risePositions[i * 3]     = r * kotlin.math.cos(rad)
                    risePositions[i * 3 + 1] = riseHeight[i]
                    risePositions[i * 3 + 2] = r * kotlin.math.sin(rad)
                }
                riseBuffer.clear()
                riseBuffer.put(risePositions)
                riseBuffer.position(0)
                gl.glVertexPointer(3, GL10.GL_FLOAT, 0, riseBuffer)
                gl.glColor4f(0.3f, 0.9f, 0.4f, 0.85f)
                gl.glPointSize(5f)
                gl.glDrawArrays(GL10.GL_POINTS, 0, riseCount)

                // 拖尾层：更小更暗的粒子，略低于主粒子
                for (i in 0 until riseCount) {
                    risePositions[i * 3 + 1] -= 0.12f
                }
                riseBuffer.clear()
                riseBuffer.put(risePositions)
                riseBuffer.position(0)
                gl.glVertexPointer(3, GL10.GL_FLOAT, 0, riseBuffer)
                gl.glColor4f(0.6f, 1.0f, 0.5f, 0.4f)
                gl.glPointSize(2f)
                gl.glDrawArrays(GL10.GL_POINTS, 0, riseCount)
            }

            // ============ Layer 3: 脉冲粒子（THINKING 时显示）============
            if (state == STATE_THINKING) {
                // 外圈：紫色粒子脉冲
                for (i in 0 until pulseCount) {
                    pulseAngle[i] += pulseSpeed[i] * 20f * dt
                    if (pulseAngle[i] > 360f) pulseAngle[i] -= 360f
                    val rad = Math.toRadians(pulseAngle[i].toDouble()).toFloat()
                    val pulse = 0.45f + 0.15f * kotlin.math.sin(t * 2.5f + pulsePhase[i])
                    val r = pulseRadius[i] * pulse
                    pulsePositions[i * 3]     = r * kotlin.math.cos(rad)
                    pulsePositions[i * 3 + 1] = 0.1f * kotlin.math.sin(t * 1.8f + pulsePhase[i])
                    pulsePositions[i * 3 + 2] = r * kotlin.math.sin(rad)
                }
                pulseBuffer.clear()
                pulseBuffer.put(pulsePositions)
                pulseBuffer.position(0)
                gl.glVertexPointer(3, GL10.GL_FLOAT, 0, pulseBuffer)
                gl.glColor4f(0.6f, 0.3f, 0.9f, 0.8f)
                gl.glPointSize(4f)
                gl.glDrawArrays(GL10.GL_POINTS, 0, pulseCount)

                // 内圈：更小更亮的粒子，反相位
                for (i in 0 until pulseCount) {
                    val rad = Math.toRadians(pulseAngle[i].toDouble()).toFloat()
                    val pulse = 0.45f + 0.15f * kotlin.math.sin(t * 2.5f + pulsePhase[i] + 1f)
                    val r = pulseRadius[i] * pulse * 0.5f
                    pulsePositions[i * 3]     = r * kotlin.math.cos(rad)
                    pulsePositions[i * 3 + 1] = 0.05f * kotlin.math.cos(t * 2f + pulsePhase[i])
                    pulsePositions[i * 3 + 2] = r * kotlin.math.sin(rad)
                }
                pulseBuffer.clear()
                pulseBuffer.put(pulsePositions)
                pulseBuffer.position(0)
                gl.glVertexPointer(3, GL10.GL_FLOAT, 0, pulseBuffer)
                gl.glColor4f(0.8f, 0.5f, 1.0f, 0.4f)
                gl.glPointSize(2f)
                gl.glDrawArrays(GL10.GL_POINTS, 0, pulseCount)
            }

            // 恢复 GL 状态
            gl.glColor4f(1f, 1f, 1f, 1f)
            gl.glDisableClientState(GL10.GL_VERTEX_ARRAY)
            gl.glDisable(GL10.GL_POINT_SMOOTH)
            gl.glEnable(GL10.GL_DEPTH_TEST)
        }

        companion object {
            const val STATE_IDLE = 0
            const val STATE_LISTENING = 1
            const val STATE_SPEAKING = 2
            const val STATE_THINKING = 3
        }
    }

    companion object {
        private const val TAG = "PetGLSurfaceView"
    }
}
