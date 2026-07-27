package com.xiaozhi.android.config

import android.content.Context
import androidx.datastore.core.DataStore
import androidx.datastore.preferences.core.Preferences
import androidx.datastore.preferences.core.edit
import androidx.datastore.preferences.core.stringPreferencesKey
import androidx.datastore.preferences.preferencesDataStore
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.first
import kotlinx.coroutines.flow.map
import java.util.UUID

private val Context.dataStore: DataStore<Preferences> by preferencesDataStore(name = "xiaozhi_settings")

class ConfigManager(private val context: Context) {
    companion object {
        private val KEY_WEBSOCKET_URL = stringPreferencesKey("websocket_url")
        private val KEY_ACCESS_TOKEN = stringPreferencesKey("access_token")
        private val KEY_DEVICE_ID = stringPreferencesKey("device_id")
        private val KEY_CLIENT_ID = stringPreferencesKey("client_id")
        private val KEY_OTA_URL = stringPreferencesKey("ota_url")
        private val KEY_ACTIVATION_VERSION = stringPreferencesKey("activation_version")
        private val KEY_ACTIVATED = stringPreferencesKey("activated")
        private val KEY_HMAC_KEY = stringPreferencesKey("hmac_key")
        private val KEY_SERIAL_NUMBER = stringPreferencesKey("serial_number")

        const val DEFAULT_WS_URL = "wss://api.tenclass.net/xiaozhi/v1/"
        const val DEFAULT_OTA_URL = "https://api.tenclass.net/xiaozhi/ota/"
        const val ACTIVATION_V1 = "v1"
        const val ACTIVATION_V2 = "v2"
    }

    private var _clientId: String? = null

    suspend fun initializeClientId(): String {
        if (_clientId != null) return _clientId!!
        val stored = context.dataStore.data.first()[KEY_CLIENT_ID]
        if (stored != null) {
            _clientId = stored
            return stored
        }
        val newId = UUID.randomUUID().toString()
        context.dataStore.edit { it[KEY_CLIENT_ID] = newId }
        _clientId = newId
        return newId
    }

    suspend fun getWebsocketUrl(): String =
        context.dataStore.data.first()[KEY_WEBSOCKET_URL] ?: DEFAULT_WS_URL

    suspend fun getAccessToken(): String =
        context.dataStore.data.first()[KEY_ACCESS_TOKEN] ?: "test-token"

    suspend fun getDeviceId(): String? =
        context.dataStore.data.first()[KEY_DEVICE_ID]

    suspend fun getClientId(): String =
        context.dataStore.data.first()[KEY_CLIENT_ID] ?: initializeClientId()

    suspend fun getOtaUrl(): String =
        context.dataStore.data.first()[KEY_OTA_URL] ?: DEFAULT_OTA_URL

    suspend fun getActivationVersion(): String =
        context.dataStore.data.first()[KEY_ACTIVATION_VERSION] ?: ACTIVATION_V1

    suspend fun isActivated(): Boolean =
        context.dataStore.data.first()[KEY_ACTIVATED] == "true"

    suspend fun getHmacKey(): String? =
        context.dataStore.data.first()[KEY_HMAC_KEY]

    suspend fun getSerialNumber(): String? =
        context.dataStore.data.first()[KEY_SERIAL_NUMBER]

    suspend fun setWebsocketUrl(url: String) {
        context.dataStore.edit { it[KEY_WEBSOCKET_URL] = url }
    }

    suspend fun setAccessToken(token: String) {
        context.dataStore.edit { it[KEY_ACCESS_TOKEN] = token }
    }

    suspend fun setDeviceId(id: String) {
        context.dataStore.edit { it[KEY_DEVICE_ID] = id }
    }

    suspend fun setOtaUrl(url: String) {
        context.dataStore.edit { it[KEY_OTA_URL] = url }
    }

    suspend fun setActivationVersion(version: String) {
        context.dataStore.edit { it[KEY_ACTIVATION_VERSION] = version }
    }

    suspend fun setActivated(activated: Boolean) {
        context.dataStore.edit { it[KEY_ACTIVATED] = activated.toString() }
    }

    suspend fun setHmacKey(key: String) {
        context.dataStore.edit { it[KEY_HMAC_KEY] = key }
    }

    suspend fun setSerialNumber(sn: String) {
        context.dataStore.edit { it[KEY_SERIAL_NUMBER] = sn }
    }

    /**
     * 重置所有网络配置为默认值（OTA URL、WebSocket URL、Token）
     * 用于配置被改错导致连不上的情况
     */
    suspend fun resetNetworkConfig() {
        context.dataStore.edit {
            it.remove(KEY_WEBSOCKET_URL)
            it.remove(KEY_ACCESS_TOKEN)
            it.remove(KEY_OTA_URL)
        }
    }
}