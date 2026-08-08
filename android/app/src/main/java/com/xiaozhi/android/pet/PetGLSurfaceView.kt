package com.xiaozhi.android.pet

import android.content.Context
import android.opengl.GLSurfaceView
import android.opengl.GLUtils
import android.graphics.BitmapFactory
import android.util.Log
import java.io.InputStream
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.nio.FloatBuffer
import javax.microedition.khronos.egl.EGLConfig
import javax.microedition.khronos.opengles.GL10

/**
 * 二进制模型加载器：从 assets 读取 .bin 文件（GLB 简化转换而来）。
 * 格式: vertexCount(4) + [pos(3)+normal(3)+uv(2)]×vertexCount
 * 非索引渲染，直接 glDrawArrays。
 */
class PetModel {

    var vertexCount: Int = 0
        private set

    var vertexBuffer: FloatBuffer? = null
        private set
    var normalBuffer: FloatBuffer? = null
        private set
    var textureBuffer: FloatBuffer? = null
        private set

    fun loadFromAssets(context: Context, fileName: String): Boolean {
        try {
            val input = context.assets.open(fileName)
            val allBytes = input.readBytes()
            input.close()

            val buf = ByteBuffer.wrap(allBytes)
            buf.order(ByteOrder.nativeOrder())
            vertexCount = buf.int

            // 每顶点 8 个 float: pos(3) + normal(3) + uv(2)
            val data = FloatArray(vertexCount * 8)
            buf.asFloatBuffer().get(data)

            // 拆分为三个独立缓冲
            val verts = FloatArray(vertexCount * 3)
            val norms = FloatArray(vertexCount * 3)
            val uvs = FloatArray(vertexCount * 2)
            for (i in 0 until vertexCount) {
                val src = i * 8
                val dst = i * 3
                verts[dst]     = data[src]
                verts[dst + 1] = data[src + 1]
                verts[dst + 2] = data[src + 2]
                norms[dst]     = data[src + 3]
                norms[dst + 1] = data[src + 4]
                norms[dst + 2] = data[src + 5]
                uvs[i * 2]     = data[src + 6]
                uvs[i * 2 + 1] = data[src + 7]
            }

            val vbb = ByteBuffer.allocateDirect(verts.size * 4)
            vbb.order(ByteOrder.nativeOrder())
            vertexBuffer = vbb.asFloatBuffer().apply { put(verts); position(0) }

            val nbb = ByteBuffer.allocateDirect(norms.size * 4)
            nbb.order(ByteOrder.nativeOrder())
            normalBuffer = nbb.asFloatBuffer().apply { put(norms); position(0) }

            val tbb = ByteBuffer.allocateDirect(uvs.size * 4)
            tbb.order(ByteOrder.nativeOrder())
            textureBuffer = tbb.asFloatBuffer().apply { put(uvs); position(0) }

            Log.i("PetModel", "Loaded $fileName: $vertexCount verts")
            return true
        } catch (e: Exception) {
            Log.e("PetModel", "Failed to load $fileName", e)
            return false
        }
    }
}

class PetGLSurfaceView(context: Context) : GLSurfaceView(context) {

    private val renderer: PetRenderer

    init {
        setEGLContextClientVersion(1)
        renderer = PetRenderer(context)
        setRenderer(renderer)
        renderMode = RENDERMODE_CONTINUOUSLY
    }

    fun updateState(state: Int) {
        renderer.petState = state
    }

    fun destroy() {
        renderer.destroy()
    }

    class PetRenderer(private val context: Context) : Renderer {
        private var model: PetModel? = null
        private var textureId: Int = 0
        var petState: Int = 0

        var rotationAngle: Float = 0f
        private val rotationSpeed = 0.5f

        fun setState(s: Int) { petState = s }

        override fun onSurfaceCreated(gl: GL10, config: EGLConfig) {
            gl.glEnable(GL10.GL_DEPTH_TEST)
            gl.glEnable(GL10.GL_TEXTURE_2D)

            // 加载模型
            model = PetModel().also { m ->
                if (!m.loadFromAssets(context, "pet_model.bin")) {
                    Log.e("PetGLSurfaceView", "Failed to load model")
                }
            }

            // 加载纹理
            textureId = loadTexture(gl)
        }

        private fun loadTexture(gl: GL10): Int {
            try {
                val input: InputStream = context.assets.open("pet_texture.png")
                val bmp = BitmapFactory.decodeStream(input)
                input.close()
                if (bmp == null) {
                    Log.e("PetGLSurfaceView", "Failed to decode texture")
                    return 0
                }
                val textures = IntArray(1)
                gl.glGenTextures(1, textures, 0)
                val id = textures[0]
                gl.glBindTexture(GL10.GL_TEXTURE_2D, id)
                gl.glTexParameterf(GL10.GL_TEXTURE_2D, GL10.GL_TEXTURE_MIN_FILTER, GL10.GL_LINEAR.toFloat())
                gl.glTexParameterf(GL10.GL_TEXTURE_2D, GL10.GL_TEXTURE_MAG_FILTER, GL10.GL_LINEAR.toFloat())
                gl.glTexParameterf(GL10.GL_TEXTURE_2D, GL10.GL_TEXTURE_WRAP_S, GL10.GL_CLAMP_TO_EDGE.toFloat())
                gl.glTexParameterf(GL10.GL_TEXTURE_2D, GL10.GL_TEXTURE_WRAP_T, GL10.GL_CLAMP_TO_EDGE.toFloat())
                GLUtils.texImage2D(GL10.GL_TEXTURE_2D, 0, bmp, 0)
                bmp.recycle()
                Log.i("PetGLSurfaceView", "Texture loaded: $id")
                return id
            } catch (e: Exception) {
                Log.e("PetGLSurfaceView", "Failed to load texture", e)
                return 0
            }
        }

        override fun onSurfaceChanged(gl: GL10, width: Int, height: Int) {
            gl.glViewport(0, 0, width, height)
            gl.glMatrixMode(GL10.GL_PROJECTION)
            gl.glLoadIdentity()
            val ratio = width.toFloat() / height
            val aspect = if (ratio > 1f) 1f / ratio else ratio
            android.opengl.GLU.gluPerspective(gl, 45f, ratio, 0.1f, 100f)
            gl.glMatrixMode(GL10.GL_MODELVIEW)
            gl.glLoadIdentity()
        }

        override fun onDrawFrame(gl: GL10) {
            gl.glClearColor(0f, 0f, 0f, 0f)
            gl.glClear(GL10.GL_COLOR_BUFFER_BIT or GL10.GL_DEPTH_BUFFER_BIT)
            gl.glLoadIdentity()

            gl.glTranslatef(0f, 0f, -3f)
            rotationAngle += rotationSpeed
            gl.glRotatef(rotationAngle, 0f, 1f, 0f)

            val m = model ?: return
            val vb = m.vertexBuffer ?: return
            val nb = m.normalBuffer ?: return

            if (textureId != 0) {
                gl.glEnable(GL10.GL_TEXTURE_2D)
                gl.glBindTexture(GL10.GL_TEXTURE_2D, textureId)
                gl.glEnableClientState(GL10.GL_TEXTURE_COORD_ARRAY)
                val tb = m.textureBuffer
                if (tb != null) {
                    gl.glTexCoordPointer(2, GL10.GL_FLOAT, 0, tb)
                }
                // 用 GL_REPLACE 直接显示纹理颜色，不受光照影响
                gl.glTexEnvf(GL10.GL_TEXTURE_ENV, GL10.GL_TEXTURE_ENV_MODE, GL10.GL_REPLACE.toFloat())
                gl.glDisable(GL10.GL_LIGHTING)
            }

            gl.glEnableClientState(GL10.GL_VERTEX_ARRAY)
            gl.glEnableClientState(GL10.GL_NORMAL_ARRAY)

            gl.glVertexPointer(3, GL10.GL_FLOAT, 0, vb)
            gl.glNormalPointer(GL10.GL_FLOAT, 0, nb)
            gl.glDrawArrays(GL10.GL_TRIANGLES, 0, m.vertexCount)

            gl.glDisableClientState(GL10.GL_VERTEX_ARRAY)
            gl.glDisableClientState(GL10.GL_NORMAL_ARRAY)

            if (textureId != 0) {
                gl.glDisableClientState(GL10.GL_TEXTURE_COORD_ARRAY)
                gl.glDisable(GL10.GL_TEXTURE_2D)
            }
        }

        fun destroy() {
            model = null
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
