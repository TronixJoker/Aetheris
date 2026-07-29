package com.xiaozhi.android.audio

import android.util.Log
import okhttp3.OkHttpClient
import okhttp3.Request
import java.io.BufferedReader
import java.io.InputStreamReader
import java.io.OutputStream
import java.net.ServerSocket
import java.net.URLEncoder
import java.util.concurrent.TimeUnit
import java.util.concurrent.atomic.AtomicBoolean

/**
 * 本地 HTTP 代理服务器
 *
 * 用途：MediaPlayer 原生不支持自定义请求头，而 B站音频流必须带 Referer 否则 403。
 * 通过启动本地 HTTP 代理，MediaPlayer 访问 `http://127.0.0.1:PORT/?url=<encoded>&referer=<encoded>`，
 * 代理转发请求时附加所需的请求头，从而实现流式播放。
 *
 * 支持：
 * - Range 请求（MediaPlayer seek 时使用）
 * - 流式转发（边下边播，无需等待完整下载）
 * - 自定义请求头透传
 */
class LocalAudioProxyServer {
    companion object {
        private const val TAG = "LocalAudioProxy"
        private const val START_PORT = 18080
        private const val MAX_PORT_ATTEMPTS = 20
    }

    private val client = OkHttpClient.Builder()
        .connectTimeout(10, TimeUnit.SECONDS)
        .readTimeout(30, TimeUnit.SECONDS)
        .build()

    private var serverSocket: ServerSocket? = null
    private var listenThread: Thread? = null
    private val running = AtomicBoolean(false)
    private var port: Int = 0

    /**
     * 启动代理服务器（如已启动则复用）。
     * @return 本地代理的根 URL，如 "http://127.0.0.1:18080"
     */
    fun start(): String? {
        if (running.get() && port > 0) {
            return "http://127.0.0.1:$port"
        }
        return try {
            // 尝试在 START_PORT..START_PORT+MAX_PORT_ATTEMPTS 之间寻找可用端口
            var bound: ServerSocket? = null
            var boundPort = 0
            for (offset in 0 until MAX_PORT_ATTEMPTS) {
                val p = START_PORT + offset
                try {
                    bound = ServerSocket(p)
                    boundPort = p
                    Log.d(TAG, "Bound to port $p")
                    break
                } catch (e: Exception) {
                    Log.d(TAG, "Port $p unavailable, try next: ${e.message}")
                }
            }
            if (bound == null) {
                Log.e(TAG, "No available port in range $START_PORT..${START_PORT + MAX_PORT_ATTEMPTS}")
                return null
            }
            serverSocket = bound
            port = boundPort
            running.set(true)

            listenThread = Thread({
                while (running.get()) {
                    try {
                        val socket = bound.accept()
                        // 每个连接开线程处理，避免阻塞主监听
                        Thread { handleClient(socket) }.start()
                    } catch (e: Exception) {
                        if (running.get()) {
                            Log.w(TAG, "Accept failed: ${e.message}")
                        }
                    }
                }
            }, "LocalAudioProxy-Listen").apply {
                isDaemon = true
                start()
            }

            "http://127.0.0.1:$port"
        } catch (e: Exception) {
            Log.e(TAG, "Failed to start proxy: ${e.message}")
            null
        }
    }

    /**
     * 构建代理 URL。
     * @param targetUrl 真实的音频流URL
     * @param headers 需要附加的请求头
     * @return 经过代理转发的本地URL，可直接交给 MediaPlayer
     */
    fun buildProxyUrl(targetUrl: String, headers: Map<String, String>): String {
        val sb = StringBuilder("http://127.0.0.1:$port/?url=")
        sb.append(URLEncoder.encode(targetUrl, "UTF-8"))
        if (headers.isNotEmpty()) {
            // 将 headers 拼接为 "k=v|k=v" 形式
            val headersStr = headers.entries.joinToString("|") {
                "${it.key}=${URLEncoder.encode(it.value, "UTF-8")}"
            }
            sb.append("&headers=")
            sb.append(URLEncoder.encode(headersStr, "UTF-8"))
        }
        return sb.toString()
    }

    /**
     * 停止代理服务器。
     */
    fun stop() {
        running.set(false)
        try {
            serverSocket?.close()
        } catch (e: Exception) {
            Log.w(TAG, "Close serverSocket failed: ${e.message}")
        }
        serverSocket = null
        listenThread = null
        port = 0
        Log.d(TAG, "Proxy stopped")
    }

    /**
     * 处理单个客户端连接。
     */
    private fun handleClient(socket: java.net.Socket) {
        try {
            socket.soTimeout = 60_000
            val input = socket.getInputStream()
            val output = socket.getOutputStream()

            // 读取HTTP请求行和头部
            val reader = BufferedReader(InputStreamReader(input))
            val requestLine = reader.readLine() ?: return
            Log.d(TAG, "Request: ${requestLine.take(200)}")

            // 解析请求行：GET /?url=... HTTP/1.1
            val parts = requestLine.split(" ")
            if (parts.size < 3) {
                writeError(output, 400, "Bad Request")
                return
            }
            val method = parts[0]
            val path = parts[1]
            if (method != "GET") {
                writeError(output, 405, "Method Not Allowed")
                return
            }

            // 读取所有请求头（直到空行）
            val requestHeaders = mutableMapOf<String, String>()
            while (true) {
                val line = reader.readLine() ?: break
                if (line.isEmpty()) break
                val colonIdx = line.indexOf(':')
                if (colonIdx > 0) {
                    val key = line.substring(0, colonIdx).trim().lowercase()
                    val value = line.substring(colonIdx + 1).trim()
                    requestHeaders[key] = value
                }
            }

            // 解析查询参数中的目标URL和headers
            val queryStart = path.indexOf('?')
            if (queryStart < 0) {
                writeError(output, 400, "Missing query")
                return
            }
            val query = path.substring(queryStart + 1)
            val params = parseQuery(query)
            val targetUrl = params["url"]
            if (targetUrl.isNullOrBlank()) {
                writeError(output, 400, "Missing url param")
                return
            }
            val headersStr = params["headers"] ?: ""
            val extraHeaders = parseHeadersParam(headersStr)

            // 构造转发请求
            val reqBuilder = Request.Builder()
                .url(targetUrl)
                .header("User-Agent", "Mozilla/5.0 (Linux; Android 10) AppleWebKit/537.36")
            // 附加来源音频流要求的请求头
            for ((k, v) in extraHeaders) {
                reqBuilder.header(k, v)
            }
            // 透传 Range 请求（支持 seek）
            val range = requestHeaders["range"]
            if (range != null) {
                reqBuilder.header("Range", range)
                Log.d(TAG, "Forward Range: $range")
            }

            val response = client.newCall(reqBuilder.build()).execute()
            try {
                val body = response.body
                if (body == null) {
                    writeError(output, 502, "No body from upstream")
                    return
                }

                val statusCode = response.code
                val contentLength = body.contentLength()
                val contentType = body.contentType()?.toString() ?: "audio/mpeg"

                // 写响应状态行
                val statusText = when (statusCode) {
                    200 -> "OK"
                    206 -> "Partial Content"
                    416 -> "Range Not Satisfiable"
                    else -> "OK"
                }
                output.write("HTTP/1.1 $statusCode $statusText\r\n".toByteArray())
                output.write("Content-Type: $contentType\r\n".toByteArray())
                if (contentLength >= 0) {
                    output.write("Content-Length: $contentLength\r\n".toByteArray())
                }
                // 支持 MediaPlayer 的 seek，必须允许 Range
                output.write("Accept-Ranges: bytes\r\n".toByteArray())
                // 关键：必须 close 连接后立即发送，避免 MediaPlayer 等待
                output.write("Connection: close\r\n".toByteArray())
                output.write("\r\n".toByteArray())
                output.flush()

                // 流式转发 body
                val upstream = body.byteStream()
                val buffer = ByteArray(16 * 1024)
                while (true) {
                    val read = upstream.read(buffer)
                    if (read < 0) break
                    output.write(buffer, 0, read)
                    output.flush()
                }
                Log.d(TAG, "Stream forwarded done (status=$statusCode)")
            } finally {
                response.close()
            }
        } catch (e: Exception) {
            Log.w(TAG, "handleClient error: ${e.message}")
        } finally {
            try {
                socket.close()
            } catch (e: Exception) {
                Log.w(TAG, "Close socket failed: ${e.message}")
            }
        }
    }

    private fun writeError(output: OutputStream, code: Int, msg: String) {
        try {
            val body = msg.toByteArray()
            output.write("HTTP/1.1 $code $msg\r\n".toByteArray())
            output.write("Content-Type: text/plain\r\n".toByteArray())
            output.write("Content-Length: ${body.size}\r\n".toByteArray())
            output.write("Connection: close\r\n".toByteArray())
            output.write("\r\n".toByteArray())
            output.write(body)
            output.flush()
        } catch (e: Exception) {
            Log.w(TAG, "writeError failed: ${e.message}")
        }
    }

    /** 解析 URL 查询字符串为 Map（key 小写） */
    private fun parseQuery(query: String): Map<String, String> {
        val result = mutableMapOf<String, String>()
        for (pair in query.split("&")) {
            val eq = pair.indexOf('=')
            if (eq > 0) {
                val k = pair.substring(0, eq)
                val v = pair.substring(eq + 1)
                result[k] = java.net.URLDecoder.decode(v, "UTF-8")
            }
        }
        return result
    }

    /** 解析 headers 参数（格式 "k=v|k=v"）为 Map */
    private fun parseHeadersParam(param: String): Map<String, String> {
        if (param.isBlank()) return emptyMap()
        val result = mutableMapOf<String, String>()
        for (pair in param.split("|")) {
            val eq = pair.indexOf('=')
            if (eq > 0) {
                val k = pair.substring(0, eq)
                val v = pair.substring(eq + 1)
                result[k] = java.net.URLDecoder.decode(v, "UTF-8")
            }
        }
        return result
    }
}
