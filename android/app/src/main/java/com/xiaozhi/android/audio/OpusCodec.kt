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
    }

    private var encoder: OpusEncoder? = null
    private var decoder: OpusDecoder? = null

    fun initialize() {
        try {
            encoder = OpusEncoder(INPUT_SAMPLE_RATE, CHANNELS, OpusApplication.OPUS_APPLICATION_VOIP)
            decoder = OpusDecoder(OUTPUT_SAMPLE_RATE, CHANNELS)
            Log.i(TAG, "Opus codec initialized (encoder: ${INPUT_SAMPLE_RATE}Hz, decoder: ${OUTPUT_SAMPLE_RATE}Hz)")
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