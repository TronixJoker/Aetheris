package com.xiaozhi.android.audio

import android.media.AudioAttributes
import android.media.MediaPlayer
import android.util.Log
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow

/**
 * 音乐播放管理器：在 APP 内部播放音乐，不跳转到其他应用。
 *
 * 支持两种播放源：
 * 1. 直接URL（如网易云外链）- MediaPlayer 直接访问
 * 2. 需自定义请求头的URL（如 B站音频流需 Referer）- 通过 [LocalAudioProxyServer] 本地代理转发
 */
class MusicPlayerManager {
    companion object {
        private const val TAG = "MusicPlayerManager"
    }

    enum class PlayState {
        IDLE, LOADING, PLAYING, PAUSED, ERROR
    }

    private var mediaPlayer: MediaPlayer? = null
    private val proxyServer = LocalAudioProxyServer()

    private val _playState = MutableStateFlow(PlayState.IDLE)
    val playState: StateFlow<PlayState> = _playState.asStateFlow()

    private val _currentSong = MutableStateFlow<String?>(null)
    val currentSong: StateFlow<String?> = _currentSong.asStateFlow()

    private val _currentArtist = MutableStateFlow<String?>(null)
    val currentArtist: StateFlow<String?> = _currentArtist.asStateFlow()

    /**
     * 播放音乐
     * @param url 播放URL
     * @param songName 歌曲名
     * @param artist 歌手名
     * @param headers 播放时附加的 HTTP 请求头（如 B站音频流的 Referer），为空则直接播放
     */
    fun play(url: String, songName: String, artist: String, headers: Map<String, String> = emptyMap()) {
        Log.d(TAG, "play: $songName - $artist, url=$url, headers=${headers.keys}")
        _playState.value = PlayState.LOADING
        _currentSong.value = songName
        _currentArtist.value = artist

        // 先释放旧的播放器
        mediaPlayer?.release()

        // 决定最终播放 URL：有自定义头时通过本地代理转发
        val playUrl = if (headers.isNotEmpty()) {
            val root = proxyServer.start()
            if (root == null) {
                Log.e(TAG, "Failed to start local proxy, cannot play with headers")
                _playState.value = PlayState.ERROR
                _currentSong.value = null
                _currentArtist.value = null
                return
            }
            val proxyUrl = proxyServer.buildProxyUrl(url, headers)
            Log.d(TAG, "Playing via local proxy: $proxyUrl")
            proxyUrl
        } else {
            url
        }

        try {
            mediaPlayer = MediaPlayer().apply {
                setAudioAttributes(
                    AudioAttributes.Builder()
                        .setContentType(AudioAttributes.CONTENT_TYPE_MUSIC)
                        .setUsage(AudioAttributes.USAGE_MEDIA)
                        .build()
                )
                setDataSource(playUrl)
                setOnPreparedListener { mp ->
                    Log.d(TAG, "MediaPlayer prepared, starting playback")
                    _playState.value = PlayState.PLAYING
                    mp.start()
                }
                setOnCompletionListener {
                    Log.d(TAG, "Playback completed")
                    _playState.value = PlayState.IDLE
                    _currentSong.value = null
                    _currentArtist.value = null
                }
                setOnErrorListener { _, what, extra ->
                    Log.e(TAG, "MediaPlayer error: what=$what extra=$extra")
                    _playState.value = PlayState.ERROR
                    _currentSong.value = null
                    _currentArtist.value = null
                    true
                }
                prepareAsync()
            }
        } catch (e: Exception) {
            Log.e(TAG, "Failed to start playback: ${e.message}")
            _playState.value = PlayState.ERROR
            _currentSong.value = null
            _currentArtist.value = null
        }
    }

    /**
     * 暂停播放
     */
    fun pause() {
        try {
            mediaPlayer?.let {
                if (it.isPlaying) {
                    it.pause()
                    _playState.value = PlayState.PAUSED
                    Log.d(TAG, "Playback paused")
                }
            }
        } catch (e: Exception) {
            Log.e(TAG, "Pause failed: ${e.message}")
        }
    }

    /**
     * 继续播放
     */
    fun resume() {
        try {
            mediaPlayer?.let {
                if (!it.isPlaying) {
                    it.start()
                    _playState.value = PlayState.PLAYING
                    Log.d(TAG, "Playback resumed")
                }
            }
        } catch (e: Exception) {
            Log.e(TAG, "Resume failed: ${e.message}")
        }
    }

    /**
     * 停止播放
     */
    fun stop() {
        try {
            mediaPlayer?.let {
                it.stop()
                it.release()
            }
            mediaPlayer = null
        } catch (e: Exception) {
            Log.e(TAG, "Stop failed: ${e.message}")
        }
        _playState.value = PlayState.IDLE
        _currentSong.value = null
        _currentArtist.value = null
        Log.d(TAG, "Playback stopped")
    }

    /**
     * 释放资源（含本地代理服务器）
     */
    fun release() {
        try {
            mediaPlayer?.release()
        } catch (e: Exception) {
            Log.e(TAG, "Release failed: ${e.message}")
        }
        mediaPlayer = null
        proxyServer.stop()
        _playState.value = PlayState.IDLE
        _currentSong.value = null
        _currentArtist.value = null
    }
}
