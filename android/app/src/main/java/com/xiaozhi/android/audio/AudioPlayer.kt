package com.xiaozhi.android.audio

import android.media.AudioAttributes
import android.media.AudioFormat
import android.media.AudioManager
import android.media.AudioTrack
import android.util.Log
import kotlinx.coroutines.*
import kotlinx.coroutines.flow.MutableSharedFlow
import kotlinx.coroutines.flow.SharedFlow
import java.util.concurrent.ConcurrentLinkedQueue

class AudioPlayer {
    companion object {
        private const val TAG = "AudioPlayer"
        private const val SAMPLE_RATE = 24000
        private const val CHANNEL = AudioFormat.CHANNEL_OUT_MONO
        private const val FORMAT = AudioFormat.ENCODING_PCM_16BIT
    }

    private var audioTrack: AudioTrack? = null
    private val scope = CoroutineScope(Dispatchers.IO + SupervisorJob())
    private val bufferQueue = ConcurrentLinkedQueue<ShortArray>()
    private var isPlaying = false
    private var playJob: Job? = null

    private val _isPlayingState = MutableSharedFlow<Boolean>(replay = 1)
    val isPlayingState: SharedFlow<Boolean> = _isPlayingState

    fun start() {
        if (isPlaying) return
        isPlaying = true

        val bufferSize = AudioTrack.getMinBufferSize(SAMPLE_RATE, CHANNEL, FORMAT)
        audioTrack = AudioTrack.Builder()
            .setAudioAttributes(
                AudioAttributes.Builder()
                    .setUsage(AudioAttributes.USAGE_MEDIA)
                    .setContentType(AudioAttributes.CONTENT_TYPE_MUSIC)
                    .build()
            )
            .setAudioFormat(
                AudioFormat.Builder()
                    .setEncoding(FORMAT)
                    .setSampleRate(SAMPLE_RATE)
                    .setChannelMask(CHANNEL)
                    .build()
            )
            .setBufferSizeInBytes(bufferSize * 2)
            .setTransferMode(AudioTrack.MODE_STREAM)
            .build()

        audioTrack?.play()

        playJob = scope.launch {
            while (isActive && isPlaying) {
                val buffer = bufferQueue.poll()
                if (buffer != null) {
                    audioTrack?.write(buffer, 0, buffer.size)
                } else {
                    delay(10)
                }
            }
        }

        scope.launch { _isPlayingState.emit(true) }
    }

    fun enqueueAudio(pcmData: ShortArray) {
        bufferQueue.offer(pcmData)
    }

    /**
     * 立即停止播放并清空所有已缓冲的音频（用于打断场景）。
     * 不释放 AudioTrack，保持播放器存活以便下一轮 TTS 使用。
     */
    fun stopAndClear() {
        bufferQueue.clear()
        audioTrack?.apply {
            try {
                pause()
                flush()
            } catch (e: Exception) {
                Log.w(TAG, "stopAndClear flush failed", e)
            }
        }
        scope.launch { _isPlayingState.emit(false) }
    }

    /**
     * 从中断状态恢复播放（用于打断后新一轮 TTS）。
     */
    fun resumePlayback() {
        audioTrack?.apply {
            try {
                if (playState != AudioTrack.PLAYSTATE_PLAYING) {
                    play()
                }
            } catch (e: Exception) {
                Log.w(TAG, "resumePlayback failed", e)
            }
        }
        scope.launch { _isPlayingState.emit(true) }
    }

    /**
     * 为新一轮 TTS 重置播放器：清空残留缓冲、flush 已写入数据、恢复播放。
     * 用于 tts "start" 时确保上一轮打断后的残留音频不会先播出来。
     */
    fun resetForNewPlayback() {
        bufferQueue.clear()
        audioTrack?.apply {
            try {
                pause()
                flush()
                play()
            } catch (e: Exception) {
                Log.w(TAG, "resetForNewPlayback failed", e)
            }
        }
        scope.launch { _isPlayingState.emit(true) }
    }

    fun stop() {
        isPlaying = false
        playJob?.cancel()
        bufferQueue.clear()
        audioTrack?.apply {
            stop()
            release()
        }
        audioTrack = null
        scope.launch { _isPlayingState.emit(false) }
    }

    fun destroy() {
        stop()
        scope.cancel()
    }
}