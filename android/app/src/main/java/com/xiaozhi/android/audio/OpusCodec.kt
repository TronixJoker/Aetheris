package com.xiaozhi.android.audio

import android.util.Log
import org.concentus.OpusDecoder
import org.concentus.OpusEncoder
import org.concentus.OpusApplication

class OpusCodec {
    companion object {
        private const val TAG = "OpusCodec"
        private const val INPUT_SAMPLE_RATE = 16000
        private const val OUTPUT_SAMPLE_RATE = 24000
        private const val CHANNELS = 1
        private const val FRAME_SIZE = INPUT_SAMPLE_RATE * 20 / 1000 // 320 samples
        private const val MAX_PACKET = 256

        /** 「识别保真」模式的编码码率（bps）：架构师方案 §2.2——AUDIO 应用类型 +
         *  24kbps，轻声/远场弱信号的频谱细节保留度优于 VOIP 模式的语音增强链路 */
        private const val FAITHFUL_BITRATE_BPS = 24000
    }

    private var encoder: OpusEncoder? = null
    private var decoder: OpusDecoder? = null

    /**
     * 初始化编解码器。
     *
     * @param faithful 「识别保真」模式（v2.3.13 §2.2 音源开关配套）：
     *  - true  → OPUS_APPLICATION_AUDIO + 24kbps：不做语音增强（REDIR/去直流/
     *            预加重等 VOIP 链路处理），最大保留原始频谱，轻声/远场识别更准；
     *  - false → OPUS_APPLICATION_VOIP（默认，与 v2.3.12 一致）：面向人声优化，
     *            抗噪回传质量更稳。
     */
    fun initialize(faithful: Boolean = false) {
        try {
            encoder = if (faithful) {
                OpusEncoder(INPUT_SAMPLE_RATE, CHANNELS, OpusApplication.OPUS_APPLICATION_AUDIO)
                    .apply { setBitrate(FAITHFUL_BITRATE_BPS) }
            } else {
                OpusEncoder(INPUT_SAMPLE_RATE, CHANNELS, OpusApplication.OPUS_APPLICATION_VOIP)
            }
            decoder = OpusDecoder(OUTPUT_SAMPLE_RATE, CHANNELS)
            Log.i(TAG, "Opus codec initialized (mode=${if (faithful) "FAITHFUL/AUDIO-24k" else "AUTO/VOIP"}, encoder: ${INPUT_SAMPLE_RATE}Hz, decoder: ${OUTPUT_SAMPLE_RATE}Hz)")
        } catch (e: Exception) {
            Log.e(TAG, "Failed to initialize Opus codec: ${e.message}")
            encoder = null
            decoder = null
        }
    }

    /**
     * Encode PCM 16-bit short array to Opus bytes.
     */
    fun encode(pcmData: ShortArray): ByteArray? {
        val enc = encoder ?: return null
        return try {
            val outData = ByteArray(MAX_PACKET)
            val bytesEncoded = enc.encode(pcmData, 0, FRAME_SIZE, outData, 0, MAX_PACKET)
            if (bytesEncoded > 0) outData.copyOf(bytesEncoded) else null
        } catch (e: Exception) {
            Log.w(TAG, "Opus encode error: ${e.message}")
            null
        }
    }

    /**
     * Decode Opus bytes to PCM 16-bit short array.
     */
    fun decode(opusData: ByteArray): ShortArray? {
        val dec = decoder ?: return null
        return try {
            val frameSize = OUTPUT_SAMPLE_RATE * 20 / 1000 // 480 samples
            val pcm = ShortArray(frameSize)
            val samplesDecoded = dec.decode(opusData, 0, opusData.size, pcm, 0, frameSize, false)
            if (samplesDecoded > 0) pcm.copyOf(samplesDecoded) else null
        } catch (e: Exception) {
            Log.w(TAG, "Opus decode error: ${e.message}")
            null
        }
    }

    fun release() {
        encoder = null
        decoder = null
        Log.d(TAG, "Opus codec released")
    }
}