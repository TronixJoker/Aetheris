.class public final Lcom/xiaozhi/android/audio/AudioRecorder;
.super Ljava/lang/Object;
.source "AudioRecorder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaozhi/android/audio/AudioRecorder$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0006\u0010\u0017\u001a\u00020\u000bJ\u0006\u0010\u0018\u001a\u00020\u000bJ\u0006\u0010\u0019\u001a\u00020\u000bJ\u0006\u0010\u001a\u001a\u00020\u001bJ\u0006\u0010\u001c\u001a\u00020\u001bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0014\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/xiaozhi/android/audio/AudioRecorder;",
        "",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "audioRecord",
        "Landroid/media/AudioRecord;",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "isRecording",
        "",
        "recordJob",
        "Lkotlinx/coroutines/Job;",
        "_pcmData",
        "Lkotlinx/coroutines/flow/MutableSharedFlow;",
        "",
        "pcmData",
        "Lkotlinx/coroutines/flow/SharedFlow;",
        "getPcmData",
        "()Lkotlinx/coroutines/flow/SharedFlow;",
        "_isRecordingState",
        "isRecordingState",
        "hasPermission",
        "isRunning",
        "start",
        "stop",
        "",
        "destroy",
        "Companion",
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

.field private static final CHANNEL:I = 0x10

.field public static final Companion:Lcom/xiaozhi/android/audio/AudioRecorder$Companion;

.field private static final FORMAT:I = 0x2

.field private static final FRAME_SIZE_MS:I = 0x14

.field private static final SAMPLES_PER_FRAME:I = 0x140

.field private static final SAMPLE_RATE:I = 0x3e80

.field private static final TAG:Ljava/lang/String; = "AudioRecorder"


# instance fields
.field private final _isRecordingState:Lkotlinx/coroutines/flow/MutableSharedFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableSharedFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final _pcmData:Lkotlinx/coroutines/flow/MutableSharedFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableSharedFlow<",
            "[S>;"
        }
    .end annotation
.end field

.field private audioRecord:Landroid/media/AudioRecord;

.field private final context:Landroid/content/Context;

.field private isRecording:Z

.field private final isRecordingState:Lkotlinx/coroutines/flow/SharedFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/SharedFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final pcmData:Lkotlinx/coroutines/flow/SharedFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/SharedFlow<",
            "[S>;"
        }
    .end annotation
.end field

.field private recordJob:Lkotlinx/coroutines/Job;

.field private final scope:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/xiaozhi/android/audio/AudioRecorder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaozhi/android/audio/AudioRecorder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/xiaozhi/android/audio/AudioRecorder;->Companion:Lcom/xiaozhi/android/audio/AudioRecorder$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/xiaozhi/android/audio/AudioRecorder;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaozhi/android/audio/AudioRecorder;->context:Landroid/content/Context;

    .line 26
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    invoke-virtual {p1, v2}, Lkotlinx/coroutines/CoroutineDispatcher;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaozhi/android/audio/AudioRecorder;->scope:Lkotlinx/coroutines/CoroutineScope;

    const/16 p1, 0x20

    const/4 v2, 0x5

    const/4 v3, 0x0

    .line 30
    invoke-static {v3, p1, v0, v2, v0}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaozhi/android/audio/AudioRecorder;->_pcmData:Lkotlinx/coroutines/flow/MutableSharedFlow;

    .line 31
    check-cast p1, Lkotlinx/coroutines/flow/SharedFlow;

    iput-object p1, p0, Lcom/xiaozhi/android/audio/AudioRecorder;->pcmData:Lkotlinx/coroutines/flow/SharedFlow;

    const/4 p1, 0x6

    .line 33
    invoke-static {v1, v3, v0, p1, v0}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaozhi/android/audio/AudioRecorder;->_isRecordingState:Lkotlinx/coroutines/flow/MutableSharedFlow;

    .line 34
    check-cast p1, Lkotlinx/coroutines/flow/SharedFlow;

    iput-object p1, p0, Lcom/xiaozhi/android/audio/AudioRecorder;->isRecordingState:Lkotlinx/coroutines/flow/SharedFlow;

    return-void
.end method

.method public static final synthetic access$getAudioRecord$p(Lcom/xiaozhi/android/audio/AudioRecorder;)Landroid/media/AudioRecord;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/xiaozhi/android/audio/AudioRecorder;->audioRecord:Landroid/media/AudioRecord;

    return-object p0
.end method

.method public static final synthetic access$get_isRecordingState$p(Lcom/xiaozhi/android/audio/AudioRecorder;)Lkotlinx/coroutines/flow/MutableSharedFlow;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/xiaozhi/android/audio/AudioRecorder;->_isRecordingState:Lkotlinx/coroutines/flow/MutableSharedFlow;

    return-object p0
.end method

.method public static final synthetic access$get_pcmData$p(Lcom/xiaozhi/android/audio/AudioRecorder;)Lkotlinx/coroutines/flow/MutableSharedFlow;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/xiaozhi/android/audio/AudioRecorder;->_pcmData:Lkotlinx/coroutines/flow/MutableSharedFlow;

    return-object p0
.end method

.method public static final synthetic access$isRecording$p(Lcom/xiaozhi/android/audio/AudioRecorder;)Z
    .locals 0

    .line 15
    iget-boolean p0, p0, Lcom/xiaozhi/android/audio/AudioRecorder;->isRecording:Z

    return p0
.end method


# virtual methods
.method public final destroy()V
    .locals 3

    .line 133
    invoke-virtual {p0}, Lcom/xiaozhi/android/audio/AudioRecorder;->stop()V

    .line 134
    iget-object v0, p0, Lcom/xiaozhi/android/audio/AudioRecorder;->scope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel$default(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    return-void
.end method

.method public final getPcmData()Lkotlinx/coroutines/flow/SharedFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/SharedFlow<",
            "[S>;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/xiaozhi/android/audio/AudioRecorder;->pcmData:Lkotlinx/coroutines/flow/SharedFlow;

    return-object v0
.end method

.method public final hasPermission()Z
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/xiaozhi/android/audio/AudioRecorder;->context:Landroid/content/Context;

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isRecordingState()Lkotlinx/coroutines/flow/SharedFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/SharedFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/xiaozhi/android/audio/AudioRecorder;->isRecordingState:Lkotlinx/coroutines/flow/SharedFlow;

    return-object v0
.end method

.method public final isRunning()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lcom/xiaozhi/android/audio/AudioRecorder;->isRecording:Z

    return v0
.end method

.method public final start()Z
    .locals 11

    const-string v0, "Audio effects not available: "

    .line 43
    invoke-virtual {p0}, Lcom/xiaozhi/android/audio/AudioRecorder;->hasPermission()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "AudioRecorder"

    if-nez v1, :cond_0

    .line 44
    const-string v0, "No RECORD_AUDIO permission"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 47
    :cond_0
    iget-boolean v1, p0, Lcom/xiaozhi/android/audio/AudioRecorder;->isRecording:Z

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    return v4

    :cond_1
    const/16 v1, 0x3e80

    const/16 v5, 0x10

    const/4 v6, 0x2

    .line 50
    invoke-static {v1, v5, v6}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v7

    const/16 v8, 0x280

    .line 51
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 55
    :try_start_0
    new-instance v8, Landroid/media/AudioRecord$Builder;

    invoke-direct {v8}, Landroid/media/AudioRecord$Builder;-><init>()V

    const/4 v9, 0x7

    .line 56
    invoke-virtual {v8, v9}, Landroid/media/AudioRecord$Builder;->setAudioSource(I)Landroid/media/AudioRecord$Builder;

    move-result-object v8

    .line 58
    new-instance v9, Landroid/media/AudioFormat$Builder;

    invoke-direct {v9}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 59
    invoke-virtual {v9, v6}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v6

    .line 60
    invoke-virtual {v6, v1}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    .line 61
    invoke-virtual {v1, v5}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    .line 62
    invoke-virtual {v1}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v1

    .line 57
    invoke-virtual {v8, v1}, Landroid/media/AudioRecord$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioRecord$Builder;

    move-result-object v1

    .line 64
    invoke-virtual {v1, v7}, Landroid/media/AudioRecord$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioRecord$Builder;

    move-result-object v1

    .line 65
    invoke-virtual {v1}, Landroid/media/AudioRecord$Builder;->build()Landroid/media/AudioRecord;

    move-result-object v1

    .line 55
    iput-object v1, p0, Lcom/xiaozhi/android/audio/AudioRecorder;->audioRecord:Landroid/media/AudioRecord;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_4

    .line 72
    :try_start_1
    invoke-virtual {v1}, Landroid/media/AudioRecord;->getAudioSessionId()I

    move-result v1

    .line 73
    invoke-static {}, Landroid/media/audiofx/AcousticEchoCanceler;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 74
    invoke-static {v1}, Landroid/media/audiofx/AcousticEchoCanceler;->create(I)Landroid/media/audiofx/AcousticEchoCanceler;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5, v4}, Landroid/media/audiofx/AcousticEchoCanceler;->setEnabled(Z)I

    .line 76
    :cond_2
    invoke-static {}, Landroid/media/audiofx/NoiseSuppressor;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 77
    invoke-static {v1}, Landroid/media/audiofx/NoiseSuppressor;->create(I)Landroid/media/audiofx/NoiseSuppressor;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5, v4}, Landroid/media/audiofx/NoiseSuppressor;->setEnabled(Z)I

    .line 79
    :cond_3
    invoke-static {}, Landroid/media/audiofx/AutomaticGainControl;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 80
    invoke-static {v1}, Landroid/media/audiofx/AutomaticGainControl;->create(I)Landroid/media/audiofx/AutomaticGainControl;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1, v4}, Landroid/media/audiofx/AutomaticGainControl;->setEnabled(Z)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 84
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/xiaozhi/android/audio/AudioRecorder;->audioRecord:Landroid/media/AudioRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-ne v0, v4, :cond_6

    .line 94
    iget-object v0, p0, Lcom/xiaozhi/android/audio/AudioRecorder;->audioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 95
    :cond_5
    iput-boolean v4, p0, Lcom/xiaozhi/android/audio/AudioRecorder;->isRecording:Z

    .line 97
    iget-object v5, p0, Lcom/xiaozhi/android/audio/AudioRecorder;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/xiaozhi/android/audio/AudioRecorder$start$1;

    invoke-direct {v0, p0, v1}, Lcom/xiaozhi/android/audio/AudioRecorder$start$1;-><init>(Lcom/xiaozhi/android/audio/AudioRecorder;Lkotlin/coroutines/Continuation;)V

    move-object v8, v0

    check-cast v8, Lkotlin/jvm/functions/Function2;

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaozhi/android/audio/AudioRecorder;->recordJob:Lkotlinx/coroutines/Job;

    .line 107
    iget-object v5, p0, Lcom/xiaozhi/android/audio/AudioRecorder;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/xiaozhi/android/audio/AudioRecorder$start$2;

    invoke-direct {v0, p0, v1}, Lcom/xiaozhi/android/audio/AudioRecorder$start$2;-><init>(Lcom/xiaozhi/android/audio/AudioRecorder;Lkotlin/coroutines/Continuation;)V

    move-object v8, v0

    check-cast v8, Lkotlin/jvm/functions/Function2;

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 108
    const-string v0, "Recording started"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 88
    :cond_6
    const-string v0, "AudioRecord failed to initialize"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Lcom/xiaozhi/android/audio/AudioRecorder;->audioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 90
    :cond_7
    iput-object v1, p0, Lcom/xiaozhi/android/audio/AudioRecorder;->audioRecord:Landroid/media/AudioRecord;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return v2

    :catch_1
    move-exception v0

    .line 111
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Failed to start recording: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public final stop()V
    .locals 9

    .line 117
    const-string v0, "AudioRecorder"

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/xiaozhi/android/audio/AudioRecorder;->isRecording:Z

    .line 118
    iget-object v1, p0, Lcom/xiaozhi/android/audio/AudioRecorder;->recordJob:Lkotlinx/coroutines/Job;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 120
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaozhi/android/audio/AudioRecorder;->audioRecord:Landroid/media/AudioRecord;

    if-eqz v1, :cond_1

    .line 121
    invoke-virtual {v1}, Landroid/media/AudioRecord;->stop()V

    .line 122
    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 125
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error releasing AudioRecord: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_1
    :goto_0
    iput-object v2, p0, Lcom/xiaozhi/android/audio/AudioRecorder;->audioRecord:Landroid/media/AudioRecord;

    .line 128
    iget-object v3, p0, Lcom/xiaozhi/android/audio/AudioRecorder;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/xiaozhi/android/audio/AudioRecorder$stop$2;

    invoke-direct {v1, p0, v2}, Lcom/xiaozhi/android/audio/AudioRecorder$stop$2;-><init>(Lcom/xiaozhi/android/audio/AudioRecorder;Lkotlin/coroutines/Continuation;)V

    move-object v6, v1

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 129
    const-string v1, "Recording stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
