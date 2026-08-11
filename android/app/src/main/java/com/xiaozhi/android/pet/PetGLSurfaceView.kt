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

        // === 粒子系统：在模型周边显示动态粒子作为状态反馈（不修改模型本身）===
        private val particleCount = 42
        private val particleAngle = FloatArray(particleCount)
        private val particleOrbitRadius = FloatArray(particleCount)
        private val particleHeight = FloatArray(particleCount)
        private val particleSpeed = FloatArray(particleCount)
        private val particlePhase = FloatArray(particleCount)
        private val particlePositions = FloatArray(particleCount * 3)
        private val particleBuffer: java.nio.FloatBuffer = java.nio.ByteBuffer
            .allocateDirect(particleCount * 3 * 4)
            .order(java.nio.ByteOrder.nativeOrder())
            .asFloatBuffer()

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
            if (state == STATE_LISTENING || state == STATE_SPEAKING) {
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
         * 初始化粒子参数（随机分布角度、半径、高度、速度）。
         */
        private fun initParticles() {
            val rnd = java.util.Random()
            for (i in 0 until particleCount) {
                particleAngle[i] = rnd.nextFloat() * 360f
                particleOrbitRadius[i] = 1.0f + rnd.nextFloat() * 0.8f
                particleHeight[i] = (rnd.nextFloat() - 0.5f) * 2.0f
                particleSpeed[i] = 30f + rnd.nextFloat() * 60f
                particlePhase[i] = rnd.nextFloat() * (Math.PI.toFloat() * 2f)
            }
        }

        /**
         * 绘制状态粒子（在模型周边，不修改模型本身）。
         * - LISTENING：蓝色粒子环绕模型旋转，表示正在聆听用户说话
         * - SPEAKING：绿色粒子向上飘散，表示 AI 正在说话
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

            particleBuffer.clear()
            for (i in 0 until particleCount) {
                when (state) {
                    STATE_LISTENING -> {
                        // 环绕旋转 + 轻微脉动
                        particleAngle[i] += particleSpeed[i] * 0.016f
                        if (particleAngle[i] > 360f) particleAngle[i] -= 360f
                        val pulseR = particleOrbitRadius[i] *
                            (1f + 0.15f * Math.sin(timeMs * 0.003 + particlePhase[i]).toFloat())
                        val a = Math.toRadians(particleAngle[i].toDouble())
                        particlePositions[i * 3] = (pulseR * Math.cos(a)).toFloat()
                        particlePositions[i * 3 + 1] = particleHeight[i] +
                            0.15f * Math.sin(timeMs * 0.004 + particlePhase[i]).toFloat()
                        particlePositions[i * 3 + 2] = (pulseR * Math.sin(a)).toFloat()
                    }
                    STATE_SPEAKING -> {
                        // 向上飘散 + 向外扩散，到顶后重生
                        particleHeight[i] += particleSpeed[i] * 0.012f
                        particleAngle[i] += particleSpeed[i] * 0.3f
                        if (particleAngle[i] > 360f) particleAngle[i] -= 360f
                        val expandR = particleOrbitRadius[i] + (particleHeight[i] + 1f) * 0.25f
                        val a = Math.toRadians(particleAngle[i].toDouble())
                        particlePositions[i * 3] = (expandR * Math.cos(a)).toFloat()
                        particlePositions[i * 3 + 1] = particleHeight[i]
                        particlePositions[i * 3 + 2] = (expandR * Math.sin(a)).toFloat()
                        if (particleHeight[i] > 1.5f) {
                            particleHeight[i] = -1.2f
                            particleAngle[i] = Math.random().toFloat() * 360f
                        }
                    }
                }
                particleBuffer.put(particlePositions[i * 3])
                particleBuffer.put(particlePositions[i * 3 + 1])
                particleBuffer.put(particlePositions[i * 3 + 2])
            }
            particleBuffer.position(0)

            gl.glEnableClientState(GL10.GL_VERTEX_ARRAY)
            gl.glVertexPointer(3, GL10.GL_FLOAT, 0, particleBuffer)

            when (state) {
                STATE_LISTENING -> gl.glColor4f(0.2f, 0.6f, 1.0f, 0.85f)
                STATE_SPEAKING -> gl.glColor4f(0.3f, 0.9f, 0.4f, 0.85f)
                else -> gl.glColor4f(1f, 1f, 1f, 0.8f)
            }

            gl.glPointSize(8f)
            gl.glDrawArrays(GL10.GL_POINTS, 0, particleCount)

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
