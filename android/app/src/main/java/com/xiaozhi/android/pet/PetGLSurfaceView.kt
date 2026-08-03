package com.xiaozhi.android.pet

import android.content.Context
import android.opengl.GLSurfaceView
import android.util.Log
import java.io.BufferedReader
import java.io.InputStreamReader
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.nio.FloatBuffer
import javax.microedition.khronos.egl.EGLConfig
import javax.microedition.khronos.opengles.GL10

/**
 * OBJ 模型加载器：从 assets 读取 .obj 文件，解析顶点和面。
 * 仅支持三角形面，忽略材质、法线、纹理坐标（自动计算法线）。
 */
class ObjModel {

    var vertices: FloatArray = FloatArray(0)
        private set
    var normals: FloatArray = FloatArray(0)
        private set
    var textureCoords: FloatArray = FloatArray(0)
        private set
    var vertexCount: Int = 0
        private set

    /** 顶点缓冲（位置） */
    var vertexBuffer: FloatBuffer? = null
        private set
    /** 法线缓冲 */
    var normalBuffer: FloatBuffer? = null
        private set
    /** 纹理坐标缓冲（平面投影 UV） */
    var textureBuffer: FloatBuffer? = null
        private set

    /**
     * 从 assets 加载 OBJ 文件。
     * @return true 加载成功
     */
    fun loadFromAssets(context: Context, fileName: String): Boolean {
        try {
            val inputStream = context.assets.open(fileName)
            val reader = BufferedReader(InputStreamReader(inputStream))

            val tempVertices = ArrayList<Float>()
            val tempFaces = ArrayList<IntArray>()

            var line: String?
            while (reader.readLine().also { line = it } != null) {
                val ln = line!!.trim()
                if (ln.isEmpty() || ln.startsWith("#")) continue
                val parts = ln.split("\\s+".toRegex())
                when (parts[0]) {
                    "v" -> {
                        // 顶点 x y z
                        if (parts.size >= 4) {
                            tempVertices.add(parts[1].toFloat())
                            tempVertices.add(parts[2].toFloat())
                            tempVertices.add(parts[3].toFloat())
                        }
                    }
                    "f" -> {
                        // 面，可能格式：f v1 v2 v3 或 f v1/vt1/vn1 v2/vt2/vn2 v3/vt3/vn3
                        // OBJ 索引从 1 开始，负数表示相对当前顶点数
                        val face = IntArray(parts.size - 1)
                        for (i in 1 until parts.size) {
                            val idx = parts[i].split("/")[0]
                            var v = idx.toIntOrNull() ?: 0
                            if (v < 0) v = tempVertices.size / 3 + v + 1
                            face[i - 1] = v - 1
                        }
                        // 三角化（fan）
                        if (face.size >= 3) {
                            for (i in 1 until face.size - 1) {
                                tempFaces.add(intArrayOf(face[0], face[i], face[i + 1]))
                            }
                        }
                    }
                    else -> { /* 忽略 vt/vn/mtllib 等 */ }
                }
            }
            reader.close()
            inputStream.close()

            // 计算顶点 X/Y 边界（用于平面投影 UV）
            var minX = Float.MAX_VALUE; var maxX = -Float.MAX_VALUE
            var minY = Float.MAX_VALUE; var maxY = -Float.MAX_VALUE
            for (i in tempVertices.indices step 3) {
                val x = tempVertices[i]
                val y = tempVertices[i + 1]
                if (x < minX) minX = x
                if (x > maxX) maxX = x
                if (y < minY) minY = y
                if (y > maxY) maxY = y
            }
            val rangeX = (maxX - minX).coerceAtLeast(0.001f)
            val rangeY = (maxY - minY).coerceAtLeast(0.001f)

            // 构建展开后的顶点数组（每个面 3 个顶点 × 3 浮点）+ UV 坐标
            vertexCount = tempFaces.size * 3
            vertices = FloatArray(vertexCount * 3)
            textureCoords = FloatArray(vertexCount * 2)
            var idx = 0
            var uvi = 0
            for (face in tempFaces) {
                for (vi in 0 until 3) {
                    val srcIdx = face[vi] * 3
                    val x = tempVertices[srcIdx]
                    val y = tempVertices[srcIdx + 1]
                    vertices[idx++] = x
                    vertices[idx++] = y
                    vertices[idx++] = tempVertices[srcIdx + 2]
                    // 平面投影 UV：X→U，Y→V（V 翻转，因图片 Y 轴向下）
                    textureCoords[uvi++] = (x - minX) / rangeX
                    textureCoords[uvi++] = 1f - (y - minY) / rangeY
                }
            }

            // 计算法线（每顶点法线，用于光照）
            normals = FloatArray(vertexCount * 3)
            for (i in tempFaces.indices) {
                val base = i * 9
                val v0 = floatArrayOf(vertices[base], vertices[base + 1], vertices[base + 2])
                val v1 = floatArrayOf(vertices[base + 3], vertices[base + 4], vertices[base + 5])
                val v2 = floatArrayOf(vertices[base + 6], vertices[base + 7], vertices[base + 8])
                // 边向量
                val e1 = floatArrayOf(v1[0] - v0[0], v1[1] - v0[1], v1[2] - v0[2])
                val e2 = floatArrayOf(v2[0] - v0[0], v2[1] - v0[1], v2[2] - v0[2])
                // 叉积
                val nx = e1[1] * e2[2] - e1[2] * e2[1]
                val ny = e1[2] * e2[0] - e1[0] * e2[2]
                val nz = e1[0] * e2[1] - e1[1] * e2[0]
                // 归一化
                val len = Math.sqrt((nx * nx + ny * ny + nz * nz).toDouble()).toFloat()
                val fnx = if (len > 0) nx / len else 0f
                val fny = if (len > 0) ny / len else 0f
                val fnz = if (len > 0) nz / len else 0f
                // 同一面三个顶点共享法线（flat shading）
                for (j in 0 until 3) {
                    normals[base + j * 3] = fnx
                    normals[base + j * 3 + 1] = fny
                    normals[base + j * 3 + 2] = fnz
                }
            }

            // 转 ByteBuffer
            val vbb = ByteBuffer.allocateDirect(vertices.size * 4)
            vbb.order(ByteOrder.nativeOrder())
            vertexBuffer = vbb.asFloatBuffer().apply {
                put(vertices)
                position(0)
            }

            val nbb = ByteBuffer.allocateDirect(normals.size * 4)
            nbb.order(ByteOrder.nativeOrder())
            normalBuffer = nbb.asFloatBuffer().apply {
                put(normals)
                position(0)
            }

            val tbb = ByteBuffer.allocateDirect(textureCoords.size * 4)
            tbb.order(ByteOrder.nativeOrder())
            textureBuffer = tbb.asFloatBuffer().apply {
                put(textureCoords)
                position(0)
            }

            Log.i(TAG, "OBJ loaded: $vertexCount vertices, ${tempFaces.size} faces")
            return true
        } catch (e: Exception) {
            Log.e(TAG, "Failed to load OBJ: ${e.message}", e)
            return false
        }
    }

    companion object {
        private const val TAG = "ObjModel"
    }
}

/**
 * 3D 桌面宠物渲染视图。
 * 加载 OBJ 模型并用 OpenGL ES 1.0 渲染，支持状态动画。
 *
 * 状态：
 *  - IDLE (0)：缓慢自转
 *  - LISTENING (1)：脉动缩放
 *  - SPEAKING (2)：左右摇摆
 *  - THINKING (3)：倾斜
 */
class PetGLSurfaceView(context: Context) : GLSurfaceView(context) {

    private val petRenderer: PetRenderer

    init {
        setEGLContextClientVersion(1)
        setEGLConfigChooser(8, 8, 8, 8, 16, 0)
        holder.setFormat(android.graphics.PixelFormat.TRANSLUCENT)
        setZOrderOnTop(true)

        val model = ObjModel()
        val loaded = model.loadFromAssets(context, "robot_model.obj")
        if (!loaded) {
            Log.e(TAG, "Failed to load robot model, fallback to nothing")
        }

        petRenderer = PetRenderer(context, model)
        setRenderer(petRenderer)
        renderMode = RENDERMODE_CONTINUOUSLY
    }

    fun setState(state: Int) {
        petRenderer.state = state
    }

    class PetRenderer(private val context: Context, private val model: ObjModel) : GLSurfaceView.Renderer {
        var state: Int = 0
            set(value) { field = value }

        private var rotation = 0f
        private var swayAngle = 0f
        private var timeMs: Long = 0L
        private var textureId: Int = 0

        override fun onSurfaceCreated(gl: GL10, config: EGLConfig) {
            gl.glClearColor(0f, 0f, 0f, 0f)
            gl.glEnable(GL10.GL_DEPTH_TEST)
            gl.glEnable(GL10.GL_BLEND)
            gl.glBlendFunc(GL10.GL_SRC_ALPHA, GL10.GL_ONE_MINUS_SRC_ALPHA)
            gl.glEnable(GL10.GL_NORMALIZE)
            gl.glEnable(GL10.GL_LIGHTING)
            gl.glEnable(GL10.GL_LIGHT0)

            // 环境光（明亮，让纹理白色区域保持白色）
            gl.glLightfv(GL10.GL_LIGHT0, GL10.GL_AMBIENT, floatArrayOf(0.85f, 0.85f, 0.88f, 1f), 0)
            // 漫反射光（柔和，提供立体感）
            gl.glLightfv(GL10.GL_LIGHT0, GL10.GL_DIFFUSE, floatArrayOf(0.5f, 0.5f, 0.52f, 1f), 0)
            gl.glLightfv(GL10.GL_LIGHT0, GL10.GL_POSITION, floatArrayOf(3f, 6f, 4f, 1f), 0)
            gl.glLightfv(GL10.GL_LIGHT0, GL10.GL_SPECULAR, floatArrayOf(0.3f, 0.3f, 0.32f, 1f), 0)

            // 白色材质（纹理提供颜色，材质保持白色让 GL_MODULATE 不改变纹理色）
            gl.glMaterialfv(GL10.GL_FRONT_AND_BACK, GL10.GL_AMBIENT, floatArrayOf(1f, 1f, 1f, 1f), 0)
            gl.glMaterialfv(GL10.GL_FRONT_AND_BACK, GL10.GL_DIFFUSE, floatArrayOf(1f, 1f, 1f, 1f), 0)
            gl.glMaterialfv(GL10.GL_FRONT_AND_BACK, GL10.GL_SPECULAR, floatArrayOf(0.3f, 0.3f, 0.3f, 1f), 0)
            gl.glMaterialf(GL10.GL_FRONT_AND_BACK, GL10.GL_SHININESS, 30f)

            // 加载 2D 图片作为纹理（透明背景预处理为白色）
            loadTexture(gl)
        }

        /**
         * 加载 ic_pet.png 作为纹理，透明像素替换为白色。
         * 这样 3D 模型表面显示 2D 图片的黑白线稿：白的地方白、黑的地方黑。
         */
        private fun loadTexture(gl: GL10) {
            try {
                val rawBitmap = android.graphics.BitmapFactory.decodeResource(
                    context.resources, com.xiaozhi.android.R.drawable.ic_pet
                )
                if (rawBitmap == null) {
                    Log.e(TAG, "Failed to decode ic_pet texture")
                    return
                }
                // 预处理：透明像素 → 白色（让模型实体显示，不透明）
                val w = rawBitmap.width
                val h = rawBitmap.height
                val bmp = android.graphics.Bitmap.createBitmap(w, h, android.graphics.Bitmap.Config.ARGB_8888)
                val pixels = IntArray(w * h)
                rawBitmap.getPixels(pixels, 0, w, 0, 0, w, h)
                for (i in pixels.indices) {
                    val alpha = (pixels[i] shr 24) and 0xFF
                    if (alpha < 128) {
                        pixels[i] = 0xFFFFFFFF.toInt()  // 透明 → 白色
                    }
                }
                bmp.setPixels(pixels, 0, w, 0, 0, w, h)
                rawBitmap.recycle()

                val textures = IntArray(1)
                gl.glGenTextures(1, textures, 0)
                textureId = textures[0]
                gl.glBindTexture(GL10.GL_TEXTURE_2D, textureId)
                gl.glTexParameterf(GL10.GL_TEXTURE_2D, GL10.GL_TEXTURE_MIN_FILTER, GL10.GL_LINEAR.toFloat())
                gl.glTexParameterf(GL10.GL_TEXTURE_2D, GL10.GL_TEXTURE_MAG_FILTER, GL10.GL_LINEAR.toFloat())
                gl.glTexParameterf(GL10.GL_TEXTURE_2D, GL10.GL_TEXTURE_WRAP_S, GL10.GL_CLAMP_TO_EDGE.toFloat())
                gl.glTexParameterf(GL10.GL_TEXTURE_2D, GL10.GL_TEXTURE_WRAP_T, GL10.GL_CLAMP_TO_EDGE.toFloat())
                android.opengl.GLUtils.texImage2D(GL10.GL_TEXTURE_2D, 0, bmp, 0)
                bmp.recycle()
                Log.i(TAG, "Texture loaded: ic_pet ${w}x${h}, id=$textureId")
            } catch (e: Exception) {
                Log.e(TAG, "Failed to load texture: ${e.message}", e)
            }
        }

        override fun onSurfaceChanged(gl: GL10, width: Int, height: Int) {
            gl.glViewport(0, 0, width, height)
            gl.glMatrixMode(GL10.GL_PROJECTION)
            gl.glLoadIdentity()
            val ratio = width.toFloat() / height
            // 视野范围适配新模型（高度4.0），近平面1.0避免裁切
            gl.glFrustumf(-ratio * 0.6f, ratio * 0.6f, -0.6f, 0.6f, 1.0f, 20f)
        }

        override fun onDrawFrame(gl: GL10) {
            gl.glClear(GL10.GL_COLOR_BUFFER_BIT or GL10.GL_DEPTH_BUFFER_BIT)
            gl.glMatrixMode(GL10.GL_MODELVIEW)
            gl.glLoadIdentity()
            // 摄像机距离-6.0，确保高度4.0的模型完全可见
            gl.glTranslatef(0f, -0.15f, -6.0f)

            timeMs = System.currentTimeMillis()

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

            // 启用 2D 纹理（贴上 2D 图片，该白的地方白、该黑的地方黑）
            if (textureId != 0) {
                gl.glEnable(GL10.GL_TEXTURE_2D)
                gl.glBindTexture(GL10.GL_TEXTURE_2D, textureId)
                gl.glTexEnvf(GL10.GL_TEXTURE_ENV, GL10.GL_TEXTURE_ENV_MODE, GL10.GL_MODULATE.toFloat())
                gl.glEnableClientState(GL10.GL_TEXTURE_COORD_ARRAY)
                model.textureBuffer?.let { tb ->
                    gl.glTexCoordPointer(2, GL10.GL_FLOAT, 0, tb)
                }
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
