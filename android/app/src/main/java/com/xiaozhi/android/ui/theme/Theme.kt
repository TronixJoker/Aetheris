package com.xiaozhi.android.ui.theme

import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.darkColorScheme
import androidx.compose.material3.lightColorScheme
import androidx.compose.runtime.Composable
import androidx.compose.ui.graphics.Color

private val LightColorScheme = lightColorScheme(
    primary = XiaozhiBlue,
    onPrimary = Color.White,
    primaryContainer = XiaozhiLightBlue,
    secondary = XiaozhiGreen,
    background = XiaozhiBackground,
    surface = XiaozhiSurface,
    onBackground = XiaozhiOnSurface,
    onSurface = XiaozhiOnSurface,
    onSurfaceVariant = XiaozhiOnSurfaceVariant,
    error = XiaozhiRed
)

private val DarkColorScheme = darkColorScheme(
    primary = XiaozhiBlue,
    onPrimary = Color.White,
    primaryContainer = XiaozhiDarkBlue,
    secondary = XiaozhiGreen,
    background = XiaozhiDarkBackground,
    surface = XiaozhiDarkSurface,
    onBackground = XiaozhiDarkOnSurface,
    onSurface = XiaozhiDarkOnSurface,
    onSurfaceVariant = XiaozhiDarkOnSurfaceVariant,
    error = XiaozhiRed
)

@Composable
fun XiaozhiTheme(
    darkTheme: Boolean = false,
    content: @Composable () -> Unit
) {
    MaterialTheme(
        colorScheme = if (darkTheme) DarkColorScheme else LightColorScheme,
        content = content
    )
}