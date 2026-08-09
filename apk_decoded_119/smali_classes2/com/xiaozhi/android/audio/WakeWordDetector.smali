.class public final Lcom/xiaozhi/android/audio/WakeWordDetector;
.super Ljava/lang/Object;
.source "WakeWordDetector.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaozhi/android/audio/WakeWordDetector$Companion;,
        Lcom/xiaozhi/android/audio/WakeWordDetector$WakeRecognitionListener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWakeWordDetector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WakeWordDetector.kt\ncom/xiaozhi/android/audio/WakeWordDetector\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,160:1\n1755#2,3:161\n*S KotlinDebug\n*F\n+ 1 WakeWordDetector.kt\ncom/xiaozhi/android/audio/WakeWordDetector\n*L\n100#1:161,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 \u00152\u00020\u0001:\u0002\u0015\u0016B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0006\u0010\u000f\u001a\u00020\u0006J\u0008\u0010\u0010\u001a\u00020\u0006H\u0002J\u0006\u0010\u0011\u001a\u00020\u0006J\u0010\u0010\u0012\u001a\u00020\u000c2\u0006\u0010\u0013\u001a\u00020\u0014H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/xiaozhi/android/audio/WakeWordDetector;",
        "",
        "context",
        "Landroid/content/Context;",
        "onWakeWordDetected",
        "Lkotlin/Function0;",
        "",
        "<init>",
        "(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V",
        "speechRecognizer",
        "Landroid/speech/SpeechRecognizer;",
        "isRunning",
        "",
        "handler",
        "Landroid/os/Handler;",
        "start",
        "startListening",
        "stop",
        "checkWakeWord",
        "text",
        "",
        "Companion",
        "WakeRecognitionListener",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I

.field public static final Companion:Lcom/xiaozhi/android/audio/WakeWordDetector$Companion;

.field private static final RESTART_DELAY_MS:J = 0x1f4L

.field private static final TAG:Ljava/lang/String; = "WakeWordDetector"

.field private static final WAKE_WORDS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final context:Landroid/content/Context;

.field private final handler:Landroid/os/Handler;

.field private isRunning:Z

.field private final onWakeWordDetected:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private speechRecognizer:Landroid/speech/SpeechRecognizer;


# direct methods
.method public static synthetic $r8$lambda$EZeCBNnpGdU-MR9w_HXnJYYVsAE(Lcom/xiaozhi/android/audio/WakeWordDetector;)V
    .locals 0

    invoke-static {p0}, Lcom/xiaozhi/android/audio/WakeWordDetector;->stop$lambda$3(Lcom/xiaozhi/android/audio/WakeWordDetector;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Mn3PqCjBFqJCkBJCeoW22oalE6U(Lcom/xiaozhi/android/audio/WakeWordDetector;)V
    .locals 0

    invoke-static {p0}, Lcom/xiaozhi/android/audio/WakeWordDetector;->startListening$lambda$2(Lcom/xiaozhi/android/audio/WakeWordDetector;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hgZ5_HxFKBdiDCHfCujmLVd7uNI(Lcom/xiaozhi/android/audio/WakeWordDetector;)V
    .locals 0

    invoke-static {p0}, Lcom/xiaozhi/android/audio/WakeWordDetector;->start$lambda$0(Lcom/xiaozhi/android/audio/WakeWordDetector;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/xiaozhi/android/audio/WakeWordDetector$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaozhi/android/audio/WakeWordDetector$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/xiaozhi/android/audio/WakeWordDetector;->Companion:Lcom/xiaozhi/android/audio/WakeWordDetector$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/xiaozhi/android/audio/WakeWordDetector;->$stable:I

    const/16 v1, 0xe

    .line 28
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "\u73e9\u676c"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "\u8861\u8fdc"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "\u6052\u8fdc"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "\u73e9\u8fdc"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "\u8861\u5143"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "\u6a2a\u8fdc"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "\u54fc\u8fdc"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    .line 29
    const-string v3, "\u884c\u8fdc"

    aput-object v3, v1, v2

    const-string v2, "\u6052\u5143"

    aput-object v2, v1, v0

    const/16 v0, 0x9

    const-string v2, "\u8861\u539f"

    aput-object v2, v1, v0

    const/16 v0, 0xa

    const-string v2, "\u73e9\u5143"

    aput-object v2, v1, v0

    const/16 v0, 0xb

    const-string v2, "\u6052\u539f"

    aput-object v2, v1, v0

    const/16 v0, 0xc

    const-string v2, "\u8861\u613f"

    aput-object v2, v1, v0

    const/16 v0, 0xd

    const-string v2, "\u73e9\u539f"

    aput-object v2, v1, v0

    .line 27
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/xiaozhi/android/audio/WakeWordDetector;->WAKE_WORDS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onWakeWordDetected"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/xiaozhi/android/audio/WakeWordDetector;->context:Landroid/content/Context;

    .line 22
    iput-object p2, p0, Lcom/xiaozhi/android/audio/WakeWordDetector;->onWakeWordDetected:Lkotlin/jvm/functions/Function0;

    .line 36
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xiaozhi/android/audio/WakeWordDetector;->handler:Landroid/os/Handler;

    return-void
.end method

.method public static final synthetic access$checkWakeWord(Lcom/xiaozhi/android/audio/WakeWordDetector;Ljava/lang/String;)Z
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/xiaozhi/android/audio/WakeWordDetector;->checkWakeWord(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getHandler$p(Lcom/xiaozhi/android/audio/WakeWordDetector;)Landroid/os/Handler;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/xiaozhi/android/audio/WakeWordDetector;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic access$getOnWakeWordDetected$p(Lcom/xiaozhi/android/audio/WakeWordDetector;)Lkotlin/jvm/functions/Function0;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/xiaozhi/android/audio/WakeWordDetector;->onWakeWordDetected:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public static final synthetic access$getSpeechRecognizer$p(Lcom/xiaozhi/android/audio/WakeWordDetector;)Landroid/speech/SpeechRecognizer;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/xiaozhi/android/audio/WakeWordDetector;->speechRecognizer:Landroid/speech/SpeechRecognizer;

    return-object p0
.end method

.method public static final synthetic access$isRunning$p(Lcom/xiaozhi/android/audio/WakeWordDetector;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lcom/xiaozhi/android/audio/WakeWordDetector;->isRunning:Z

    return p0
.end method

.method public static final synthetic access$setRunning$p(Lcom/xiaozhi/android/audio/WakeWordDetector;Z)V
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcom/xiaozhi/android/audio/WakeWordDetector;->isRunning:Z

    return-void
.end method

.method public static final synthetic access$startListening(Lcom/xiaozhi/android/audio/WakeWordDetector;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/xiaozhi/android/audio/WakeWordDetector;->startListening()V

    return-void
.end method

.method private final checkWakeWord(Ljava/lang/String;)Z
    .locals 13

    .line 90
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string p1, "toLowerCase(...)"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 91
    const-string v2, " "

    const-string v3, ""

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x4

    const/4 v12, 0x0

    .line 92
    const-string v8, ","

    const-string v9, ""

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 93
    const-string v1, "\u3002"

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x4

    const/4 v11, 0x0

    .line 94
    const-string v7, "."

    const-string v8, ""

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 95
    const-string v1, "?"

    const-string v2, ""

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 96
    const-string v7, "\uff1f"

    const-string v8, ""

    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 97
    const-string v1, "!"

    const-string v2, ""

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 98
    const-string v7, "\uff01"

    const-string v8, ""

    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 99
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    return v1

    .line 100
    :cond_0
    sget-object v0, Lcom/xiaozhi/android/audio/WakeWordDetector;->WAKE_WORDS:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 161
    instance-of v3, v0, Ljava/util/Collection;

    if-eqz v3, :cond_1

    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 162
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 100
    move-object v4, p1

    check-cast v4, Ljava/lang/CharSequence;

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    invoke-static {v4, v3, v1, v2, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {v3, v4, v1, v2, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_3
    const/4 v1, 0x1

    :cond_4
    :goto_0
    return v1
.end method

.method private static final start$lambda$0(Lcom/xiaozhi/android/audio/WakeWordDetector;)V
    .locals 4

    .line 45
    const-string v0, "WakeWordDetector"

    iget-boolean v1, p0, Lcom/xiaozhi/android/audio/WakeWordDetector;->isRunning:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 46
    iput-boolean v1, p0, Lcom/xiaozhi/android/audio/WakeWordDetector;->isRunning:Z

    .line 48
    :try_start_0
    iget-object v1, p0, Lcom/xiaozhi/android/audio/WakeWordDetector;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/speech/SpeechRecognizer;->createSpeechRecognizer(Landroid/content/Context;)Landroid/speech/SpeechRecognizer;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaozhi/android/audio/WakeWordDetector;->speechRecognizer:Landroid/speech/SpeechRecognizer;

    if-eqz v1, :cond_1

    .line 49
    new-instance v2, Lcom/xiaozhi/android/audio/WakeWordDetector$WakeRecognitionListener;

    invoke-direct {v2, p0}, Lcom/xiaozhi/android/audio/WakeWordDetector$WakeRecognitionListener;-><init>(Lcom/xiaozhi/android/audio/WakeWordDetector;)V

    check-cast v2, Landroid/speech/RecognitionListener;

    invoke-virtual {v1, v2}, Landroid/speech/SpeechRecognizer;->setRecognitionListener(Landroid/speech/RecognitionListener;)V

    .line 50
    :cond_1
    invoke-direct {p0}, Lcom/xiaozhi/android/audio/WakeWordDetector;->startListening()V

    .line 51
    const-string v1, "\u70ed\u8bcd\u68c0\u6d4b\u5df2\u542f\u52a8\uff08\u5524\u9192\u8bcd\uff1a\u73e9\u676c\uff09"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 53
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to start wake word detector: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/xiaozhi/android/audio/WakeWordDetector;->isRunning:Z

    :goto_0
    return-void
.end method

.method private final startListening()V
    .locals 4

    .line 60
    iget-boolean v0, p0, Lcom/xiaozhi/android/audio/WakeWordDetector;->isRunning:Z

    if-nez v0, :cond_0

    return-void

    .line 61
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 62
    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    const-string v2, "free_form"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    const-string v1, "android.speech.extra.LANGUAGE"

    const-string v2, "zh-CN"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    const-string v1, "android.speech.extra.PARTIAL_RESULTS"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 65
    const-string v1, "android.speech.extra.MAX_RESULTS"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 68
    :try_start_0
    iget-object v1, p0, Lcom/xiaozhi/android/audio/WakeWordDetector;->speechRecognizer:Landroid/speech/SpeechRecognizer;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/speech/SpeechRecognizer;->startListening(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 70
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "startListening failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", retrying..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WakeWordDetector"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v0, p0, Lcom/xiaozhi/android/audio/WakeWordDetector;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaozhi/android/audio/WakeWordDetector$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/xiaozhi/android/audio/WakeWordDetector$$ExternalSyntheticLambda1;-><init>(Lcom/xiaozhi/android/audio/WakeWordDetector;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private static final startListening$lambda$2(Lcom/xiaozhi/android/audio/WakeWordDetector;)V
    .locals 1

    .line 71
    iget-boolean v0, p0, Lcom/xiaozhi/android/audio/WakeWordDetector;->isRunning:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/xiaozhi/android/audio/WakeWordDetector;->startListening()V

    :cond_0
    return-void
.end method

.method private static final stop$lambda$3(Lcom/xiaozhi/android/audio/WakeWordDetector;)V
    .locals 4

    .line 77
    const-string v0, "WakeWordDetector"

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/xiaozhi/android/audio/WakeWordDetector;->isRunning:Z

    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/xiaozhi/android/audio/WakeWordDetector;->speechRecognizer:Landroid/speech/SpeechRecognizer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/speech/SpeechRecognizer;->stopListening()V

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/xiaozhi/android/audio/WakeWordDetector;->speechRecognizer:Landroid/speech/SpeechRecognizer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/speech/SpeechRecognizer;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 82
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error stopping: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 84
    iput-object v1, p0, Lcom/xiaozhi/android/audio/WakeWordDetector;->speechRecognizer:Landroid/speech/SpeechRecognizer;

    .line 85
    const-string p0, "\u70ed\u8bcd\u68c0\u6d4b\u5df2\u505c\u6b62"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final start()V
    .locals 2

    .line 39
    iget-boolean v0, p0, Lcom/xiaozhi/android/audio/WakeWordDetector;->isRunning:Z

    if-eqz v0, :cond_0

    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/xiaozhi/android/audio/WakeWordDetector;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer;->isRecognitionAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 41
    const-string v0, "WakeWordDetector"

    const-string v1, "Speech recognition not available on this device"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/xiaozhi/android/audio/WakeWordDetector;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaozhi/android/audio/WakeWordDetector$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/xiaozhi/android/audio/WakeWordDetector$$ExternalSyntheticLambda0;-><init>(Lcom/xiaozhi/android/audio/WakeWordDetector;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final stop()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/xiaozhi/android/audio/WakeWordDetector;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaozhi/android/audio/WakeWordDetector$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/xiaozhi/android/audio/WakeWordDetector$$ExternalSyntheticLambda2;-><init>(Lcom/xiaozhi/android/audio/WakeWordDetector;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
