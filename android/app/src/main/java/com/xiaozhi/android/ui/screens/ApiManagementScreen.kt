package com.xiaozhi.android.ui.screens

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.itemsIndexed
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Add
import androidx.compose.material.icons.filled.ArrowBack
import androidx.compose.material.icons.filled.Delete
import androidx.compose.material3.AlertDialog
import androidx.compose.material3.Button
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.HorizontalDivider
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedButton
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.Scaffold
import androidx.compose.material3.SnackbarHost
import androidx.compose.material3.SnackbarHostState
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.material3.TopAppBar
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateListOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.xiaozhi.android.config.ConfigManager
import kotlinx.coroutines.launch

/**
 * API 管理页面：独立于设置页。
 *
 * 分两个区域：
 * 1. 内置 API（14 个）：由 ApiService 代码引用，可编辑 URL / 重置为默认，但不可删除。
 * 2. 自定义 API：用户自由增删改，存储于 DataStore。
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun ApiManagementScreen(
    onNavigateBack: () -> Unit,
    context: android.content.Context,
) {
    val scope = rememberCoroutineScope()
    val snackbarHostState = remember { SnackbarHostState() }

    // 内置 API：每个 key 对应当前输入值
    val builtinKeys = remember { ConfigManager.ApiKey.values().toList() }
    val builtinUrls = remember { mutableStateListOf<String>().apply { addAll(builtinKeys.map { it.defaultUrl }) } }

    // 自定义 API 列表
    val customApis = remember { mutableStateListOf<ConfigManager.CustomApi>() }

    // 添加对话框状态
    var showAddDialog by remember { mutableStateOf(false) }
    var newName by remember { mutableStateOf("") }
    var newUrl by remember { mutableStateOf("") }

    // 初次加载：内置 + 自定义
    LaunchedEffect(Unit) {
        val cm = ConfigManager(context)
        val urls = cm.getAllApiUrls()
        builtinKeys.forEachIndexed { i, k -> builtinUrls[i] = urls[k] ?: k.defaultUrl }
        customApis.clear()
        customApis.addAll(cm.getCustomApis())
    }

    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text("API 管理") },
                navigationIcon = {
                    IconButton(onClick = onNavigateBack) {
                        Icon(Icons.Filled.ArrowBack, contentDescription = "返回")
                    }
                }
            )
        },
        snackbarHost = { SnackbarHost(snackbarHostState) }
    ) { padding ->
        LazyColumn(
            modifier = Modifier
                .fillMaxSize()
                .padding(padding)
                .padding(horizontal = 16.dp),
            verticalArrangement = Arrangement.spacedBy(12.dp)
        ) {
            item {
                Spacer(Modifier.height(4.dp))
                Text(
                    "内置 API（系统调用，可恢复默认）",
                    fontWeight = FontWeight.SemiBold,
                    fontSize = 14.sp,
                    color = MaterialTheme.colorScheme.primary
                )
            }

            // 内置 API 列表
            itemsIndexed(builtinKeys) { index, apiKey ->
                Card(
                    modifier = Modifier.fillMaxWidth(),
                    colors = CardDefaults.cardColors(
                        containerColor = MaterialTheme.colorScheme.secondaryContainer.copy(alpha = 0.25f)
                    )
                ) {
                    Row(
                        modifier = Modifier
                            .fillMaxWidth()
                            .padding(12.dp),
                        verticalAlignment = Alignment.CenterVertically,
                        horizontalArrangement = Arrangement.SpaceBetween
                    ) {
                        Column(modifier = Modifier.weight(1f)) {
                            Text(apiKey.displayName, fontWeight = FontWeight.Medium, fontSize = 14.sp)
                            Text(
                                builtinUrls[index],
                                fontSize = 12.sp,
                                color = MaterialTheme.colorScheme.onSurfaceVariant,
                                maxLines = 1,
                                overflow = TextOverflow.Ellipsis
                            )
                        }
                        TextButton(onClick = {
                            builtinUrls[index] = apiKey.defaultUrl
                            scope.launch {
                                ConfigManager(context).setApiUrl(apiKey, apiKey.defaultUrl)
                                snackbarHostState.showSnackbar("已删除自定义地址，恢复默认")
                            }
                        }) {
                            Text("删除")
                        }
                    }
                }
            }

            item {
                Spacer(Modifier.height(8.dp))
                HorizontalDivider()
                Spacer(Modifier.height(8.dp))
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.SpaceBetween,
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Text(
                        "自定义 API（可添加 / 删除）",
                        fontWeight = FontWeight.SemiBold,
                        fontSize = 14.sp,
                        color = MaterialTheme.colorScheme.primary
                    )
                    IconButton(onClick = {
                        newName = ""
                        newUrl = ""
                        showAddDialog = true
                    }) {
                        Icon(Icons.Filled.Add, contentDescription = "添加", tint = MaterialTheme.colorScheme.primary)
                    }
                }
            }

            if (customApis.isEmpty()) {
                item {
                    Box(
                        modifier = Modifier
                            .fillMaxWidth()
                            .padding(vertical = 24.dp),
                        contentAlignment = Alignment.Center
                    ) {
                        Text(
                            "暂无自定义 API，点右上角 + 添加",
                            fontSize = 13.sp,
                            color = MaterialTheme.colorScheme.onSurfaceVariant
                        )
                    }
                }
            } else {
                itemsIndexed(customApis) { index, api ->
                    Card(
                        modifier = Modifier.fillMaxWidth(),
                        shape = RoundedCornerShape(10.dp)
                    ) {
                        Row(
                            modifier = Modifier
                                .fillMaxWidth()
                                .padding(12.dp),
                            verticalAlignment = Alignment.CenterVertically
                        ) {
                            Column(modifier = Modifier.weight(1f)) {
                                Text(api.name, fontWeight = FontWeight.Medium, fontSize = 14.sp)
                                Text(
                                    api.url,
                                    fontSize = 12.sp,
                                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                                    maxLines = 2,
                                    overflow = TextOverflow.Ellipsis
                                )
                            }
                        }
                    }
                }
            }

            item {
                Spacer(Modifier.height(16.dp))
                OutlinedButton(
                    onClick = {
                        scope.launch {
                            ConfigManager(context).resetApiUrls()
                            builtinKeys.forEachIndexed { i, k -> builtinUrls[i] = k.defaultUrl }
                            snackbarHostState.showSnackbar("内置 API 已全部重置为默认")
                        }
                    },
                    modifier = Modifier.fillMaxWidth()
                ) { Text("重置全部内置 API") }
                Spacer(Modifier.height(24.dp))
            }
        }
    }

    // 添加自定义 API 对话框
    if (showAddDialog) {
        AlertDialog(
            onDismissRequest = { showAddDialog = false },
            title = { Text("添加自定义 API") },
            text = {
                Column {
                    OutlinedTextField(
                        value = newName,
                        onValueChange = { newName = it },
                        label = { Text("名称") },
                        modifier = Modifier.fillMaxWidth(),
                        singleLine = true
                    )
                    Spacer(Modifier.height(8.dp))
                    OutlinedTextField(
                        value = newUrl,
                        onValueChange = { newUrl = it },
                        label = { Text("API 地址") },
                        modifier = Modifier.fillMaxWidth(),
                        singleLine = true
                    )
                }
            },
            confirmButton = {
                TextButton(
                    onClick = {
                        if (newName.isNotBlank() && newUrl.isNotBlank()) {
                            scope.launch {
                                ConfigManager(context).addCustomApi(newName, newUrl)
                                customApis.clear()
                                customApis.addAll(ConfigManager(context).getCustomApis())
                                snackbarHostState.showSnackbar("已添加：$newName")
                            }
                            showAddDialog = false
                        }
                    }
                ) { Text("添加") }
            },
            dismissButton = {
                TextButton(onClick = { showAddDialog = false }) { Text("取消") }
            }
        )
    }
}
