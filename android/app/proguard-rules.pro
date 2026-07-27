# ProGuard rules for xiaozhi-android

# OkHttp
-dontwarn okhttp3.**
-dontwarn okio.**
-keep class okhttp3.** { *; }
-keep class okio.** { *; }

# Concentus (Opus)
-keep class org.concentus.** { *; }

# Kotlinx Serialization
-keepattributes *Annotation*, InnerClasses
-dontnote kotlinx.serialization.AnnotationsKt
-keepclassmembers class kotlinx.serialization.json.** { *** Companion; }
-keepclasseswithmembers class kotlinx.serialization.json.** { kotlinx.serialization.KSerializer serializer(...); }
-keep,includedescriptorclasses class com.xiaozhi.android.**$$serializer { *; }
-keepclassmembers class com.xiaozhi.android.** { *** Companion; }
-keepclasseswithmembers class com.xiaozhi.android.** { kotlinx.serialization.KSerializer serializer(...); }