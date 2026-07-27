package com.xiaozhi.android.model

import kotlinx.serialization.Serializable
import kotlinx.serialization.json.JsonObject

@Serializable
data class ProtocolMessage(
    val type: String,
    val session_id: String? = null,
    val version: Int? = null,
    val transport: String? = null,
    val features: Map<String, Boolean>? = null,
    val audio_params: AudioParams? = null,
    val state: String? = null,
    val mode: String? = null,
    val text: String? = null,
    val reason: String? = null,
    val payload: JsonObject? = null,
    val update: Boolean? = null,
    val descriptors: List<JsonObject>? = null,
    val states: List<JsonObject>? = null
)

@Serializable
data class AudioParams(
    val format: String,
    val sample_rate: Int,
    val channels: Int,
    val frame_duration: Int
)

@Serializable
data class HelloMessage(
    val type: String = "hello",
    val version: Int = 1,
    val features: Map<String, Boolean> = mapOf("mcp" to true),
    val transport: String = "websocket",
    val audio_params: AudioParams = AudioParams(
        format = "opus",
        sample_rate = 16000,
        channels = 1,
        frame_duration = 20
    )
)

@Serializable
data class ListenMessage(
    val session_id: String? = null,
    val type: String = "listen",
    val state: String,
    val mode: String? = null,
    val text: String? = null
)

@Serializable
data class AbortMessage(
    val session_id: String? = null,
    val type: String = "abort",
    val reason: String? = null
)