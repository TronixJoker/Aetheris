package com.xiaozhi.android.ui.screens

import androidx.compose.foundation.layout.*
import androidx.compose.foundation.text.KeyboardOptions
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.ArrowBack
import androidx.compose.material.icons.filled.CheckCircle
import androidx.compose.material.icons.filled.Warning
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.input.KeyboardType
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import com.xiaozhi.android.activation.ActivationService
import com.xiaozhi.android.viewmodel.MainViewModel
import kotlinx.coroutines.launch

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun ActivationScreen(
    onNavigateBack: () -> Unit,
    viewModel: MainViewModel
) {
    val scope = rememberCoroutineScope()
    val activationState by viewModel.activationService.activationState.collectAsStateWithLifecycle()
    val activationCode by viewModel.activationService.activationCode.collectAsStateWithLifecycle()
    var inputCode by remember { mutableStateOf("") }

    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text("设备激活") },
                navigationIcon = {
                    IconButton(onClick = onNavigateBack) {
                        Icon(Icons.Filled.ArrowBack, contentDescription = "返回")
                    }
                }
            )
        }
    ) { padding ->
        Column(
            modifier = Modifier
                .fillMaxSize()
                .padding(padding)
                .padding(24.dp),
            horizontalAlignment = Alignment.CenterHorizontally,
            verticalArrangement = Arrangement.Center
        ) {
            when (activationState) {
                ActivationService.ActivationState.INITIALIZING -> {
                    CircularProgressIndicator()
                    Spacer(modifier = Modifier.height(16.dp))
                    Text("正在初始化...")
                }

                ActivationService.ActivationState.ACTIVATED,
                ActivationService.ActivationState.ACTIVATION_SUCCESS -> {
                    Icon(
                        imageVector = Icons.Filled.CheckCircle,
                        contentDescription = null,
                        tint = MaterialTheme.colorScheme.primary,
                        modifier = Modifier.size(64.dp)
                    )
                    Spacer(modifier = Modifier.height(16.dp))
                    Text(
                        text = "设备已激活",
                        fontSize = 24.sp,
                        fontWeight = FontWeight.Bold,
                        color = MaterialTheme.colorScheme.primary
                    )
                    Spacer(modifier = Modifier.height(8.dp))
                    Text(
                        text = "您的设备已成功激活，可以正常使用",
                        color = MaterialTheme.colorScheme.onSurfaceVariant,
                        textAlign = TextAlign.Center
                    )
                }

                ActivationService.ActivationState.ACTIVATING -> {
                    CircularProgressIndicator()
                    Spacer(modifier = Modifier.height(16.dp))
                    Text("正在激活，请稍候...")
                }

                ActivationService.ActivationState.OTA_FAILED -> {
                    // Fallback - shouldn't reach here since OTA failure now returns ACTIVATED
                    Icon(
                        imageVector = Icons.Filled.CheckCircle,
                        contentDescription = null,
                        tint = MaterialTheme.colorScheme.primary,
                        modifier = Modifier.size(64.dp)
                    )
                    Spacer(modifier = Modifier.height(16.dp))
                    Text("使用默认配置", fontSize = 24.sp, fontWeight = FontWeight.Bold,
                        color = MaterialTheme.colorScheme.primary)
                    Spacer(modifier = Modifier.height(8.dp))
                    Text("已使用默认配置连接服务器，可正常使用",
                        color = MaterialTheme.colorScheme.onSurfaceVariant, textAlign = TextAlign.Center)
                }

                ActivationService.ActivationState.ACTIVATION_FAILED -> {
                    Text(
                        text = "激活失败",
                        fontSize = 24.sp,
                        fontWeight = FontWeight.Bold,
                        color = MaterialTheme.colorScheme.error
                    )
                    Spacer(modifier = Modifier.height(8.dp))
                    Text(
                        text = "请检查激活码是否正确，或稍后重试",
                        color = MaterialTheme.colorScheme.onSurfaceVariant,
                        textAlign = TextAlign.Center
                    )
                }

                ActivationService.ActivationState.NEED_ACTIVATION -> {
                    Text(
                        text = "设备需要激活",
                        fontSize = 24.sp,
                        fontWeight = FontWeight.Bold
                    )
                    Spacer(modifier = Modifier.height(8.dp))

                    if (activationCode != null) {
                        Text(
                            text = "请在 xiaozhi.me 控制面板输入验证码",
                            color = MaterialTheme.colorScheme.onSurfaceVariant,
                            textAlign = TextAlign.Center
                        )
                        Spacer(modifier = Modifier.height(16.dp))

                        // Display activation code
                        Card(
                            colors = CardDefaults.cardColors(
                                containerColor = MaterialTheme.colorScheme.primaryContainer
                            )
                        ) {
                            Text(
                                text = activationCode!!,
                                fontSize = 36.sp,
                                fontWeight = FontWeight.Bold,
                                letterSpacing = 8.sp,
                                textAlign = TextAlign.Center,
                                modifier = Modifier.padding(horizontal = 24.dp, vertical = 16.dp)
                            )
                        }
                    }

                    Spacer(modifier = Modifier.height(24.dp))

                    OutlinedTextField(
                        value = inputCode,
                        onValueChange = { inputCode = it },
                        label = { Text("激活码") },
                        modifier = Modifier.fillMaxWidth(),
                        singleLine = true,
                        keyboardOptions = KeyboardOptions(keyboardType = KeyboardType.Ascii)
                    )

                    Spacer(modifier = Modifier.height(16.dp))

                    Button(
                        onClick = {
                            scope.launch {
                                viewModel.activationService.activate(inputCode)
                            }
                        },
                        modifier = Modifier.fillMaxWidth(),
                        enabled = inputCode.isNotBlank()
                    ) {
                        Text("激活")
                    }
                }
            }
        }
    }
}