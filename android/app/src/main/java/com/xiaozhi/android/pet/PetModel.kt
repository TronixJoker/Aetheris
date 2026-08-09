package com.xiaozhi.android.pet

import android.content.Context
import android.util.Log
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.nio.FloatBuffer

/**
 * 二进制模型加载器：从 assets 读取 pet_model.bin。
 *
 * 文件格式（与 1.9.19 完全一致，勿改）：
 *   - 4 字节 int：vertexCount
 *   - 随后 vertexCount × 8 个 float，每顶点布局：
 *       [px, py, pz, nx, ny, nz, u, v]
 *   - 位置/法线/UV 均为模型原生数据，直接使用，不做任何重算或翻转。
 *
 * 这是 1.9.19 显示正常的渲染方案，从其 smali 精确复刻而来。
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
        return try {
            val bytes = context.assets.open(fileName).use { it.readBytes() }
            val bb = ByteBuffer.wrap(bytes).order(ByteOrder.nativeOrder())
            vertexCount = bb.int
            // 读取全部顶点数据（每顶点 8 个 float）
            val all = FloatArray(vertexCount * 8)
            bb.asFloatBuffer().get(all)

            // 拆分为位置 / 法线 / UV 三个数组（直接使用，不重算、不翻转）
            val vertices = FloatArray(vertexCount * 3)
            val normals = FloatArray(vertexCount * 3)
            val texcoords = FloatArray(vertexCount * 2)
            for (i in 0 until vertexCount) {
                val src = i * 8
                val dst3 = i * 3
                val dst2 = i * 2
                vertices[dst3] = all[src]
                vertices[dst3 + 1] = all[src + 1]
                vertices[dst3 + 2] = all[src + 2]
                normals[dst3] = all[src + 3]
                normals[dst3 + 1] = all[src + 4]
                normals[dst3 + 2] = all[src + 5]
                texcoords[dst2] = all[src + 6]
                texcoords[dst2 + 1] = all[src + 7]
            }

            vertexBuffer = ByteBuffer
                .allocateDirect(vertexCount * 3 * 4)
                .order(ByteOrder.nativeOrder())
                .asFloatBuffer().apply { put(vertices); position(0) }
            normalBuffer = ByteBuffer
                .allocateDirect(vertexCount * 3 * 4)
                .order(ByteOrder.nativeOrder())
                .asFloatBuffer().apply { put(normals); position(0) }
            textureBuffer = ByteBuffer
                .allocateDirect(vertexCount * 2 * 4)
                .order(ByteOrder.nativeOrder())
                .asFloatBuffer().apply { put(texcoords); position(0) }

            Log.i(TAG, "Loaded $fileName: $vertexCount verts")
            true
        } catch (e: Exception) {
            Log.e(TAG, "Failed to load $fileName", e)
            false
        }
    }

    companion object {
        private const val TAG = "PetModel"
    }
}
