.class final Lcom/xiaozhi/android/audio/WakeWordDetector$WakeRecognitionListener;
.super Ljava/lang/Object;
.source "WakeWordDetector.kt"

# interfaces
.implements Landroid/speech/RecognitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaozhi/android/audio/WakeWordDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WakeRecognitionListener"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u0008\u0010\u0008\u001a\u00020\u0005H\u0016J\u0010\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0012\u0010\u000c\u001a\u00020\u00052\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u0005H\u0016J\u0010\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0012\u0010\u0013\u001a\u00020\u00052\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0007H\u0016J\u0012\u0010\u0015\u001a\u00020\u00052\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0007H\u0016J\u001a\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u00122\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/xiaozhi/android/audio/WakeWordDetector$WakeRecognitionListener;",
        "Landroid/speech/RecognitionListener;",
        "<init>",
        "(Lcom/xiaozhi/android/audio/WakeWordDetector;)V",
        "onReadyForSpeech",
        "",
        "params",
        "Landroid/os/Bundle;",
        "onBeginningOfSpeech",
        "onRmsChanged",
        "rmsdB",
        "",
        "onBufferReceived",
        "buffer",
        "",
        "onEndOfSpeech",
        "onError",
        "error",
        "",
        "onResults",
        "results",
        "onPartialResults",
        "partialResults",
        "onEvent",
        "eventType",
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


# instance fields
.field final synthetic this$0:Lcom/xiaozhi/android/audio/WakeWordDetector;


# direct methods
.method public static synthetic $r8$lambda$HnwmAt92MNGaADcfstLGgU4AsB8(Lcom/xiaozhi/android/audio/WakeWordDetector;)V
    .locals 0

    invoke-static {p0}, Lcom/xiaozhi/android/audio/WakeWordDetector$WakeRecognitionListener;->onResults$lambda$1(Lcom/xiaozhi/android/audio/WakeWordDetector;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YZUho-5hKt7AVJXodW1TXcEE0R4(Lcom/xiaozhi/android/audio/WakeWordDetector;)V
    .locals 0

    invoke-static {p0}, Lcom/xiaozhi/android/audio/WakeWordDetector$WakeRecognitionListener;->onError$lambda$0(Lcom/xiaozhi/android/audio/WakeWordDetector;)V

    return-void
.end method

.method public constructor <init>(Lcom/xiaozhi/android/audio/WakeWordDetector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 103
    iput-object p1, p0, Lcom/xiaozhi/android/audio/WakeWordDetector$WakeRecognitionListener;->this$0:Lcom/xiaozhi/android/audio/WakeWordDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final onError$lambda$0(Lcom/xiaozhi/android/audio/WakeWordDetector;)V
    .locals 1

    .line 123
    invoke-static {p0}, Lcom/xiaozhi/android/audio/WakeWordDetector;->access$isRunning$p(Lcom/xiaozhi/android/audio/WakeWordDetector;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/xiaozhi/android/audio/WakeWordDetector;->access$startListening(Lcom/xiaozhi/android/audio/WakeWordDetector;)V

    :cond_0
    return-void
.end method

.method private static final onResults$lambda$1(Lcom/xiaozhi/android/audio/WakeWordDetector;)V
    .locals 1

    .line 139
    invoke-static {p0}, Lcom/xiaozhi/android/audio/WakeWordDetector;->access$isRunning$p(Lcom/xiaozhi/android/audio/WakeWordDetector;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/xiaozhi/android/audio/WakeWordDetector;->access$startListening(Lcom/xiaozhi/android/audio/WakeWordDetector;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onBeginningOfSpeech()V
    .locals 0

    return-void
.end method

.method public onBufferReceived([B)V
    .locals 0

    return-void
.end method

.method public onEndOfSpeech()V
    .locals 0

    return-void
.end method

.method public onError(I)V
    .locals 4

    packed-switch p1, :pswitch_data_0

    .line 120
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "error_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 119
    :pswitch_1
    const-string p1, "no_permission"

    goto :goto_0

    .line 115
    :pswitch_2
    const-string p1, "recognizer_busy"

    goto :goto_0

    .line 112
    :pswitch_3
    const-string p1, "no_match"

    goto :goto_0

    .line 113
    :pswitch_4
    const-string p1, "speech_timeout"

    goto :goto_0

    .line 116
    :pswitch_5
    const-string p1, "client_error"

    goto :goto_0

    .line 114
    :pswitch_6
    const-string p1, "audio_error"

    goto :goto_0

    .line 117
    :pswitch_7
    const-string p1, "network_error"

    goto :goto_0

    .line 118
    :pswitch_8
    const-string p1, "network_timeout"

    .line 122
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u8bc6\u522b\u9519\u8bef: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", \u91cd\u542f\u4e2d..."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WakeWordDetector"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object p1, p0, Lcom/xiaozhi/android/audio/WakeWordDetector$WakeRecognitionListener;->this$0:Lcom/xiaozhi/android/audio/WakeWordDetector;

    invoke-static {p1}, Lcom/xiaozhi/android/audio/WakeWordDetector;->access$getHandler$p(Lcom/xiaozhi/android/audio/WakeWordDetector;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaozhi/android/audio/WakeWordDetector$WakeRecognitionListener;->this$0:Lcom/xiaozhi/android/audio/WakeWordDetector;

    new-instance v1, Lcom/xiaozhi/android/audio/WakeWordDetector$WakeRecognitionListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/xiaozhi/android/audio/WakeWordDetector$WakeRecognitionListener$$ExternalSyntheticLambda0;-><init>(Lcom/xiaozhi/android/audio/WakeWordDetector;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onPartialResults(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 143
    const-string v0, "results_recognition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 145
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string v0, "iterator(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 146
    iget-object v1, p0, Lcom/xiaozhi/android/audio/WakeWordDetector$WakeRecognitionListener;->this$0:Lcom/xiaozhi/android/audio/WakeWordDetector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1, v0}, Lcom/xiaozhi/android/audio/WakeWordDetector;->access$checkWakeWord(Lcom/xiaozhi/android/audio/WakeWordDetector;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "\u68c0\u6d4b\u5230\u5524\u9192\u8bcd(\u5b9e\u65f6): "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WakeWordDetector"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object p1, p0, Lcom/xiaozhi/android/audio/WakeWordDetector$WakeRecognitionListener;->this$0:Lcom/xiaozhi/android/audio/WakeWordDetector;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xiaozhi/android/audio/WakeWordDetector;->access$setRunning$p(Lcom/xiaozhi/android/audio/WakeWordDetector;Z)V

    .line 149
    :try_start_0
    iget-object p1, p0, Lcom/xiaozhi/android/audio/WakeWordDetector$WakeRecognitionListener;->this$0:Lcom/xiaozhi/android/audio/WakeWordDetector;

    invoke-static {p1}, Lcom/xiaozhi/android/audio/WakeWordDetector;->access$getSpeechRecognizer$p(Lcom/xiaozhi/android/audio/WakeWordDetector;)Landroid/speech/SpeechRecognizer;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/speech/SpeechRecognizer;->stopListening()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :catch_0
    :cond_2
    iget-object p1, p0, Lcom/xiaozhi/android/audio/WakeWordDetector$WakeRecognitionListener;->this$0:Lcom/xiaozhi/android/audio/WakeWordDetector;

    invoke-static {p1}, Lcom/xiaozhi/android/audio/WakeWordDetector;->access$getOnWakeWordDetected$p(Lcom/xiaozhi/android/audio/WakeWordDetector;)Lkotlin/jvm/functions/Function0;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public onReadyForSpeech(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onResults(Landroid/os/Bundle;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 127
    const-string v0, "results_recognition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 129
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string v0, "iterator(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 130
    iget-object v1, p0, Lcom/xiaozhi/android/audio/WakeWordDetector$WakeRecognitionListener;->this$0:Lcom/xiaozhi/android/audio/WakeWordDetector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1, v0}, Lcom/xiaozhi/android/audio/WakeWordDetector;->access$checkWakeWord(Lcom/xiaozhi/android/audio/WakeWordDetector;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 131
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "\u68c0\u6d4b\u5230\u5524\u9192\u8bcd: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WakeWordDetector"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object p1, p0, Lcom/xiaozhi/android/audio/WakeWordDetector$WakeRecognitionListener;->this$0:Lcom/xiaozhi/android/audio/WakeWordDetector;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xiaozhi/android/audio/WakeWordDetector;->access$setRunning$p(Lcom/xiaozhi/android/audio/WakeWordDetector;Z)V

    .line 133
    :try_start_0
    iget-object p1, p0, Lcom/xiaozhi/android/audio/WakeWordDetector$WakeRecognitionListener;->this$0:Lcom/xiaozhi/android/audio/WakeWordDetector;

    invoke-static {p1}, Lcom/xiaozhi/android/audio/WakeWordDetector;->access$getSpeechRecognizer$p(Lcom/xiaozhi/android/audio/WakeWordDetector;)Landroid/speech/SpeechRecognizer;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/speech/SpeechRecognizer;->stopListening()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :catch_0
    :cond_2
    iget-object p1, p0, Lcom/xiaozhi/android/audio/WakeWordDetector$WakeRecognitionListener;->this$0:Lcom/xiaozhi/android/audio/WakeWordDetector;

    invoke-static {p1}, Lcom/xiaozhi/android/audio/WakeWordDetector;->access$getOnWakeWordDetected$p(Lcom/xiaozhi/android/audio/WakeWordDetector;)Lkotlin/jvm/functions/Function0;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void

    .line 139
    :cond_3
    iget-object p1, p0, Lcom/xiaozhi/android/audio/WakeWordDetector$WakeRecognitionListener;->this$0:Lcom/xiaozhi/android/audio/WakeWordDetector;

    invoke-static {p1}, Lcom/xiaozhi/android/audio/WakeWordDetector;->access$getHandler$p(Lcom/xiaozhi/android/audio/WakeWordDetector;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaozhi/android/audio/WakeWordDetector$WakeRecognitionListener;->this$0:Lcom/xiaozhi/android/audio/WakeWordDetector;

    new-instance v1, Lcom/xiaozhi/android/audio/WakeWordDetector$WakeRecognitionListener$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/xiaozhi/android/audio/WakeWordDetector$WakeRecognitionListener$$ExternalSyntheticLambda1;-><init>(Lcom/xiaozhi/android/audio/WakeWordDetector;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onRmsChanged(F)V
    .locals 0

    return-void
.end method
