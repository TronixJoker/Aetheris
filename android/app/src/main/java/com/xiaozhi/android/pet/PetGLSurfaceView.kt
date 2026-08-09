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

        override fun onSurfaceCreated(gl: GL10, config: EGLConfig) {
            // 与 1.9.19 一致：仅开深度测试 + 2D 纹理，不设光照
            gl.glEnable(GL10.GL_DEPTH_TEST)
            gl.glEnable(GL10.GL_TEXTURE_2D)
            loadTexture(gl)
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
