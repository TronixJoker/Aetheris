package com.xiaozhi.android.pet

import android.content.Context
import android.opengl.GLSurfaceView
import android.opengl.GLU
import android.util.Log
import javax.microedition.khronos.egl.EGLConfig
import javax.microedition.khronos.opengles.GL10

/**
 * 3D 桌面宠物渲染视图。
 *
 * 渲染方案与 1.9.19（显示正常版本）完全一致，从其 smali 精确复刻：
 *  - 模型：assets/pet_model.bin（含原生 位置/法线/UV，不重算不翻转）
 *  - 纹理：assets/pet_texture.png（原始 bitmap，不做 alpha 预处理）
 *  - 投影：gluPerspective(45, ratio, 0.1, 100)
 *  - 平移：glTranslatef(0, 0, -3.0)
 *  - 光照：不启用（drawModel 用 GL_REPLACE 让纹理原样显示）
 *  - 混合：glEnable(GL_BLEND) + glBlendFunc(SRC_ALPHA, ONE_MINUS_SRC_ALPHA) 实现透明背景
 *
 * 状态动画（IDLE 自转 / LISTENING 脉动 / SPEAKING 摇摆 / THINKING 倾斜）为 APP 原有功能，保留。
 */
class PetGLSurfaceView(context: Context) : GLSurfaceView(context) {

    private val petRenderer: PetRenderer

    init {
        setEGLContextClientVersion(1)
        setEGLConfigChooser(8, 8, 8, 8, 16, 0)
        holder.setFormat(android.graphics.PixelFormat.TRANSLUCENT)
        setZOrderOnTop(true)

        val model = PetModel()
        val loaded = model.loadFromAssets(context, "pet_model.bin")
        if (!loaded) {
            Log.e(TAG, "Failed to load pet_model.bin")
        }

        petRenderer = PetRenderer(context, model)
        setRenderer(petRenderer)
        renderMode = RENDERMODE_CONTINUOUSLY
    }

    fun setState(state: Int) {
        petRenderer.state = state
    }

    class PetRenderer(private val context: Context, private val model: PetModel) : GLSurfaceView.Renderer {
        var state: Int = 0

        private var rotation = 0f
        private var swayAngle = 0f
        private var timeMs: Long = 0L
        private var textureId: Int = 0

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
         * 加载 assets/pet_texture.png 作为纹理，原始 bitmap 直接上传，不做 alpha 预处理。
         * （1.9.19 即如此，纹理本身的透明像素由 GL_BLEND 混合处理）
         */
        private fun loadTexture(gl: GL10) {
            try {
                val bitmap = context.assets.open("pet_texture.png").use {
                    android.graphics.BitmapFactory.decodeStream(it)
                } ?: run {
                    Log.e(TAG, "Failed to decode pet_texture.png")
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
                Log.i(TAG, "Texture loaded: pet_texture.png, id=$textureId")
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

            // 状态动画（APP 原有功能，保留）
            when (state) {
                STATE_LISTENING -> {
                    val scale = 1f + 0.05f * Math.sin(timeMs * 0.005).toFloat()
                    gl.glScalef(scale, scale, scale)
                }
                STATE_SPEAKING -> {
                    swayAngle = 12f * Math.sin(timeMs * 0.008).toFloat()
                    gl.glRotatef(swayAngle, 0f, 0f, 1f)
                }
                STATE_THINKING -> {
                    gl.glRotatef(8f, 0f, 0f, 1f)
                    rotation += 0.5f
                    gl.glRotatef(rotation * 0.3f, 0f, 1f, 0f)
                }
                else -> {
                    rotation += 0.8f
                    gl.glRotatef(rotation, 0f, 1f, 0f)
                }
            }

            drawModel(gl)

            // 粒子在模型之后绘制，不修改模型本身
            if (state == STATE_LISTENING || state == STATE_SPEAKING || state == STATE_THINKING) {
                drawParticles(gl)
            }
        }

        private fun drawModel(gl: GL10) {
            val vb = model.vertexBuffer ?: return
            val nb = model.normalBuffer ?: return

            // 纹理：GL_REPLACE 让纹理颜色原样显示，关闭光照避免影响颜色（与 1.9.19 一致）
            if (textureId != 0) {
                gl.glEnable(GL10.GL_TEXTURE_2D)
                gl.glBindTexture(GL10.GL_TEXTURE_2D, textureId)
                gl.glEnableClientState(GL10.GL_TEXTURE_COORD_ARRAY)
                model.textureBuffer?.let { tb ->
                    gl.glTexCoordPointer(2, GL10.GL_FLOAT, 0, tb)
                }
                gl.glTexEnvf(GL10.GL_TEXTURE_ENV, GL10.GL_TEXTURE_ENV_MODE, GL10.GL_REPLACE.toFloat())
                gl.glDisable(GL10.GL_LIGHTING)
            }

            gl.glEnableClientState(GL10.GL_VERTEX_ARRAY)
            gl.glEnableClientState(GL10.GL_NORMAL_ARRAY)

            gl.glVertexPointer(3, GL10.GL_FLOAT, 0, vb)
            gl.glNormalPointer(GL10.GL_FLOAT, 0, nb)
            gl.glDrawArrays(GL10.GL_TRIANGLES, 0, model.vertexCount)

            gl.glDisableClientState(GL10.GL_VERTEX_ARRAY)
            gl.glDisableClientState(GL10.GL_NORMAL_ARRAY)

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
