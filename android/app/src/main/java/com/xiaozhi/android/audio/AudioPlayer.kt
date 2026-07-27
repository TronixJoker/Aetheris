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
                    .setContentType(AudioAttributes.CONTENT_TYPE_SPEECH)
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