package com.xiaozhi.android.audio

import android.content.Context
import android.util.Log
import com.k2fsa.sherpa.onnx.SpeakerEmbeddingExtractor
import com.k2fsa.sherpa.onnx.SpeakerEmbeddingExtractorConfig
import com.k2fsa.sherpa.onnx.SpeakerEmbeddingManager
import java.io.DataInputStream
import java.io.DataOutputStream
import java.io.File
import kotlin.math.abs
import kotlin.math.sqrt

/**
 * 声纹识别（人物识别）管理器。
 *
 * 工作流程：
 * 1. 首次使用：前 [enrollSegments] 句有效语音自动注册为主人声纹
 * 2. 之后每句语音（由 VAD 切好的段）提取声纹与已注册声纹比对
 * 3. 相似度 >= [threshold] → 识别为对应人物；否则 → 陌生人
 *
 * 声纹持久化在 filesDir/speaker_profiles/，重启后免重新注册。
 * 所有回调在调用线程（VAD 工作线程）执行，UI 更新需自行调度。
 */
class SpeakerRecognitionManager(private val context: Context) {

    companion object {
        private const val TAG = "SpeakerRecognition"
        private const val SAMPLE_RATE = 16000
        // 提取声纹所需的最短语音时长（CAM++ 需要 >= 0.5s，留余量）
        private const val MIN_SEGMENT_SAMPLES = SAMPLE_RATE // 1 秒
    }

    /** 识别结果回调：name 为空字符串表示陌生人 */
    @Volatile
    var onIdentified: ((name: String, score: Float) -> Unit)? = null

    /** 注册进度回调 */
    @Volatile
    var onEnrollProgress: ((current: Int, total: Int) -> Unit)? = null

    /** 注册完成回调 */
    @Volatile
    var onEnrolled: ((name: String) -> Unit)? = null

    @Volatile
    var enabled = false
        private set

    /** 相似度阈值（同一人通常 >0.7，不同人 <0.4） */
    @Volatile
    var threshold = 0.55f

    /** 自动注册主人所需语音段数 */
    @Volatile
    var enrollSegments = 3

    /** 主人称呼 */
    @Volatile
    var ownerName = "主人"

    private var extractor: SpeakerEmbeddingExtractor? = null
    private var manager: SpeakerEmbeddingManager? = null
    private val lock = Any()
    private val enrollEmbeddings = ArrayList<FloatArray>()
    // 主人声纹的内存缓存（识别时算相似度用，避免每次读磁盘）
    private var ownerEmbedding: FloatArray? = null

    @Volatile
    private var enrollDone = false

    private val profilesDir: File
        get() = File(context.filesDir, "speaker_profiles")

    /** 主人声纹是否已注册 */
    val isEnrolled: Boolean
        get() = enrollDone

    /** 已注册人数 */
    val registeredCount: Int
        get() = synchronized(lock) { manager?.numSpeakers() ?: 0 }

    /** 已注册人物名列表 */
    val registeredNames: List<String>
        get() = synchronized(lock) { manager?.allSpeakerNames()?.toList() ?: emptyList() }

    /** 加载模型与已注册声纹档案。必须在后台线程调用。 */
    fun initialize(): Boolean {
        if (enabled) return true
        return try {
            val config = SpeakerEmbeddingExtractorConfig(
                model = "models/speaker_model.onnx",
                numThreads = 1,
                debug = false,
                provider = "cpu",
            )
            val ex = SpeakerEmbeddingExtractor(context.assets, config)
            extractor = ex
            synchronized(lock) {
                manager = SpeakerEmbeddingManager(ex.dim())
                loadProfiles()
            }
            enabled = true
            Log.i(TAG, "声纹识别初始化成功 (dim=${ex.dim()}, 已注册 ${registeredCount} 人)")
            true
        } catch (e: Exception) {
            Log.e(TAG, "声纹模型加载失败: ${e.message}")
            extractor = null
            manager = null
            false
        }
    }

    fun release() {
        enabled = false
        synchronized(lock) {
            try {
                manager?.release()
            } catch (_: Exception) {
            }
            try {
                extractor?.release()
            } catch (_: Exception) {
            }
            manager = null
            extractor = null
            enrollEmbeddings.clear()
        }
    }

    /**
     * 处理一段完整语音（VAD 切段后回调，工作线程调用）。
     * 注册阶段：攒够 [enrollSegments] 句自动注册主人；
     * 注册后：每句识别说话人。
     */
    fun processSpeech(samples: FloatArray) {
        if (!enabled) return
        if (samples.size < MIN_SEGMENT_SAMPLES) return

        val embedding = extract(samples) ?: return
        val name: String
        val score: Float

        synchronized(lock) {
            // 阶段 1：自动注册主人
            if (!enrollDone) {
                enrollEmbeddings.add(embedding)
                val current = enrollEmbeddings.size
                Log.i(TAG, "声纹注册：采集第 $current/$enrollSegments 句主人语音")
                onEnrollProgress?.invoke(current, enrollSegments)
                if (current >= enrollSegments) {
                    finishEnrollment()
                }
                return
            }

            // 阶段 2：识别说话人
            val mgr = manager ?: return
            name = mgr.search(embedding, threshold)
            val ownerRef = ownerEmbedding
            score = if (ownerRef != null) similarity(embedding, ownerRef) else 0f
        }

        if (name.isNotEmpty()) {
            Log.i(TAG, "说话人识别：$name (相似度 ${"%.3f".format(score)})")
        } else {
            Log.i(TAG, "说话人识别：陌生人")
        }
        onIdentified?.invoke(name, score)
    }

    /** 重置声纹档案：清空运行时状态与磁盘档案，重新进入注册流程 */
    fun resetProfiles() {
        synchronized(lock) {
            enrollDone = false
            enrollEmbeddings.clear()
            ownerEmbedding = null
            manager?.let { mgr ->
                mgr.allSpeakerNames().forEach { mgr.remove(it) }
            }
        }
        try {
            if (profilesDir.exists()) {
                profilesDir.listFiles()?.forEach { it.delete() }
            }
        } catch (e: Exception) {
            Log.w(TAG, "清理声纹档案失败: ${e.message}")
        }
        Log.i(TAG, "声纹档案已重置")
    }

    /** 主人改名：更新运行时管理器与磁盘档案（已注册时有效） */
    fun renameOwner(newName: String) {
        synchronized(lock) {
            val old = ownerName
            if (old == newName) return
            val emb = ownerEmbedding
            if (emb != null) {
                manager?.remove(old)
                manager?.add(newName, emb)
                saveProfile(newName, emb)
                try {
                    File(profilesDir, "$old.bin").delete()
                } catch (_: Exception) {
                }
            }
            Log.i(TAG, "主人称呼变更：$old → $newName")
        }
    }

    // -------------------------
    // 内部实现
    // -------------------------

    private fun finishEnrollment() {
        // 多句取平均，声纹更稳定
        val dim = enrollEmbeddings[0].size
        val mean = FloatArray(dim)
        for (emb in enrollEmbeddings) {
            for (i in 0 until dim) mean[i] += emb[i]
        }
        for (i in 0 until dim) mean[i] /= enrollEmbeddings.size

        manager?.add(ownerName, mean)
        saveProfile(ownerName, mean)
        ownerEmbedding = mean
        enrollDone = true
        enrollEmbeddings.clear()
        Log.i(TAG, "主人「$ownerName」声纹注册完成")
        onEnrolled?.invoke(ownerName)
    }

    private fun extract(samples: FloatArray): FloatArray? {
        val ex = extractor ?: return null
        return try {
            val stream = ex.createStream()
            stream.acceptWaveform(samples, SAMPLE_RATE)
            ex.compute(stream)
        } catch (e: Exception) {
            Log.w(TAG, "声纹提取失败: ${e.message}")
            null
        }
    }

    // 档案持久化：int(dim) + float[dim]

    private fun saveProfile(name: String, embedding: FloatArray) {
        try {
            profilesDir.mkdirs()
            val f = File(profilesDir, "$name.bin")
            DataOutputStream(f.outputStream().buffered()).use { out ->
                out.writeInt(embedding.size)
                for (v in embedding) out.writeFloat(v)
            }
        } catch (e: Exception) {
            Log.w(TAG, "保存声纹档案失败: ${e.message}")
        }
    }

    private fun loadProfile(name: String): FloatArray? {
        try {
            val f = File(profilesDir, "$name.bin")
            if (!f.exists()) return null
            DataInputStream(f.inputStream().buffered()).use { input ->
                val dim = input.readInt()
                if (dim <= 0 || dim > 4096) return null
                val emb = FloatArray(dim)
                for (i in 0 until dim) emb[i] = input.readFloat()
                return emb
            }
        } catch (e: Exception) {
            Log.w(TAG, "读取声纹档案失败: ${e.message}")
            return null
        }
    }

    private fun loadProfiles() {
        if (!profilesDir.exists()) return
        val files = profilesDir.listFiles { f -> f.name.endsWith(".bin") } ?: return
        for (f in files) {
            val name = f.name.removeSuffix(".bin")
            val emb = loadProfile(name) ?: continue
            if (manager?.add(name, emb) == true && name == ownerName) {
                ownerEmbedding = emb
                enrollDone = true
            }
        }
        if (enrollDone) enrollEmbeddings.clear()
    }

    private fun similarity(a: FloatArray, b: FloatArray?): Float {
        if (b == null || a.size != b.size) return 0f
        var dot = 0f
        var na = 0f
        var nb = 0f
        for (i in a.indices) {
            dot += a[i] * b[i]
            na += a[i] * a[i]
            nb += b[i] * b[i]
        }
        if (na == 0f || nb == 0f) return 0f
        val s = dot / (sqrt(na) * sqrt(nb))
        return if (abs(s) <= 1f) s else 0f
    }
}
