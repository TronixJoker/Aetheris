package com.xiaozhi.android.audio

import android.Manifest
import android.content.Context
import android.content.pm.PackageManager
import android.media.AudioFormat
import android.media.AudioRecord
import android.media.MediaRecorder
import android.util.Log
import androidx.core.content.ContextCompat
import kotlinx.coroutines.*
import kotlinx.coroutines.flow.MutableSharedFlow
import kotlinx.coroutines.flow.SharedFlow

class AudioRecorder(private val context: Context) {
    companion object {
        private const val TAG = "AudioRecorder"
        private const val SAMPLE_RATE = 16000
        private const val CHANNEL = AudioFormat.CHANNEL_IN_MONO
        private const val FORMAT = AudioFormat.ENCODING_PCM_16BIT
        private const val FRAME_SIZE_MS = 20
        private const val SAMPLES_PER_FRAME = SAMPLE_RATE * FRAME_SIZE_MS / 1000 // 320 samples
    }

    private var audioRecord: AudioRecord? = null
    private val scope = CoroutineScope(Dispatchers.IO + SupervisorJob())
    private var isRecording = false
    private var recordJob: Job? = null

    private val _pcmData = MutableSharedFlow<ShortArray>(extraBufferCapacity = 32)
    val pcmData: SharedFlow<ShortArray> = _pcmData

    private val _isRecordingState = MutableSharedFlow<Boolean>(replay = 1)
    val isRecordingState: SharedFlow<Boolean> = _isRecordingState

    fun hasPermission(): Boolean =
        ContextCompat.checkSelfPermission(context, Manifest.permission.RECORD_AUDIO) ==
            PackageManager.PERMISSION_GRANTED

    fun start(): Boolean {
        if (!hasPermission()) {
            Log.w(TAG, "No RECORD_AUDIO permission")
            return false
        }
        if (isRecording) return true

        val bufferSize = maxOf(
            AudioRecord.getMinBufferSize(SAMPLE_RATE, CHANNEL, FORMAT),
            SAMPLES_PER_FRAME * 2
        )

        try {
            audioRecord = AudioRecord.Builder()
                .setAudioSource(MediaRecorder.AudioSource.MIC)
                .setAudioFormat(
                    AudioFormat.Builder()
                        .setEncoding(FORMAT)
                        .setSampleRate(SAMPLE_RATE)
                        .setChannelMask(CHANNEL)
                        .build()
                )
                .setBufferSizeInBytes(bufferSize)
                .build()

            if (audioRecord?.state != AudioRecord.STATE_INITIALIZED) {
                Log.e(TAG, "AudioRecord failed to initialize")
                audioRecord?.release()
                audioRecord = null
                return false
            }

            audioRecord?.startRecording()
            isRecording = true

            recordJob = scope.launch {
                val buffer = ShortArray(SAMPLES_PER_FRAME)
                while (isActive && isRecording) {
                    val read = audioRecord?.read(buffer, 0, SAMPLES_PER_FRAME) ?: -1
                    if (read > 0) {
                        _pcmData.emit(buffer.copyOf(read))
                    }
                }
            }

            scope.launch { _isRecordingState.emit(true) }
            Log.i(TAG, "Recording started")
            return true
        } catch (e: Exception) {
            Log.e(TAG, "Failed to start recording: ${e.message}")
            return false
        }
    }

    fun stop() {
        isRecording = false
        recordJob?.cancel()
        try {
            audioRecord?.apply {
                stop()
                release()
            }
        } catch (e: Exception) {
            Log.w(TAG, "Error releasing AudioRecord: ${e.message}")
        }
        audioRecord = null
        scope.launch { _isRecordingState.emit(false) }
        Log.i(TAG, "Recording stopped")
    }

    fun destroy() {
        stop()
        scope.cancel()
    }
}