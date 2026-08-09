.class public final Lcom/xiaozhi/android/audio/AudioPlayer;
.super Ljava/lang/Object;
.source "AudioPlayer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaozhi/android/audio/AudioPlayer$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0017\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\t\u0008\u0007\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u0014\u001a\u00020\u0015J\u000e\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\nJ\u0006\u0010\u0018\u001a\u00020\u0015J\u0006\u0010\u0019\u001a\u00020\u0015J\u0006\u0010\u001a\u001a\u00020\u0015J\u0006\u0010\u001b\u001a\u00020\u0015J\u0006\u0010\u001c\u001a\u00020\u0015R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0013\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/xiaozhi/android/audio/AudioPlayer;",
        "",
        "<init>",
        "()V",
        "audioTrack",
        "Landroid/media/AudioTrack;",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "bufferQueue",
        "Ljava/util/concurrent/ConcurrentLinkedQueue;",
        "",
        "isPlaying",
        "",
        "playJob",
        "Lkotlinx/coroutines/Job;",
        "_isPlayingState",
        "Lkotlinx/coroutines/flow/MutableSharedFlow;",
        "isPlayingState",
        "Lkotlinx/coroutines/flow/SharedFlow;",
        "()Lkotlinx/coroutines/flow/SharedFlow;",
        "start",
        "",
        "enqueueAudio",
        "pcmData",
        "stopAndClear",
        "resumePlayback",
        "resetForNewPlayback",
        "stop",
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

.field private static final CHANNEL:I = 0x4

.field public static final Companion:Lcom/xiaozhi/android/audio/AudioPlayer$Companion;

.field private static final FORMAT:I = 0x2

.field private static final SAMPLE_RATE:I = 0x5dc0

.field private static final TAG:Ljava/lang/String; = "AudioPlayer"


# instance fields
.field private final _isPlayingState:Lkotlinx/coroutines/flow/MutableSharedFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableSharedFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private audioTrack:Landroid/media/AudioTrack;

.field private final bufferQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "[S>;"
        }
    .end annotation
.end field

.field private isPlaying:Z

.field private final isPlayingState:Lkotlinx/coroutines/flow/SharedFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/SharedFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private playJob:Lkotlinx/coroutines/Job;

.field private final scope:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/xiaozhi/android/audio/AudioPlayer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaozhi/android/audio/AudioPlayer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/xiaozhi/android/audio/AudioPlayer;->Companion:Lcom/xiaozhi/android/audio/AudioPlayer$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/xiaozhi/android/audio/AudioPlayer;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2, v1}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v3

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    invoke-virtual {v0, v3}, Lkotlinx/coroutines/CoroutineDispatcher;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaozhi/android/audio/AudioPlayer;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 23
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/xiaozhi/android/audio/AudioPlayer;->bufferQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const/4 v0, 0x0

    const/4 v3, 0x6

    .line 27
    invoke-static {v2, v0, v1, v3, v1}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaozhi/android/audio/AudioPlayer;->_isPlayingState:Lkotlinx/coroutines/flow/MutableSharedFlow;

    .line 28
    check-cast v0, Lkotlinx/coroutines/flow/SharedFlow;

    iput-object v0, p0, Lcom/xiaozhi/android/audio/AudioPlayer;->isPlayingState:Lkotlinx/coroutines/flow/SharedFlow;

    return-void
.end method

.method public static final synthetic access$getAudioTrack$p(Lcom/xiaozhi/android/audio/AudioPlayer;)Landroid/media/AudioTrack;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/xiaozhi/android/audio/AudioPlayer;->audioTrack:Landroid/media/AudioTrack;

    return-object p0
.end method

.method public static final synthetic access$getBufferQueue$p(Lcom/xiaozhi/android/audio/AudioPlayer;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/xiaozhi/android/audio/AudioPlayer;->bufferQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object p0
.end method

.method public static final synthetic access$get_isPlayingState$p(Lcom/xiaozhi/android/audio/AudioPlayer;)Lkotlinx/coroutines/flow/MutableSharedFlow;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/xiaozhi/android/audio/AudioPlayer;->_isPlayingState:Lkotlinx/coroutines/flow/MutableSharedFlow;

    return-object p0
.end method

.method public static final synthetic access$isPlaying$p(Lcom/xiaozhi/android/audio/AudioPlayer;)Z
    .locals 0

    .line 13
    iget-boolean p0, p0, Lcom/xiaozhi/android/audio/AudioPlayer;->isPlaying:Z

    return p0
.end method


# virtual methods
.method public final destroy()V
    .locals 3

    .line 137
    invoke-virtual {p0}, Lcom/xiaozhi/android/audio/AudioPlayer;->stop()V

    .line 138
    iget-object v0, p0, Lcom/xiaozhi/android/audio/AudioPlayer;->scope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel$default(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    return-void
.end method

.method public final enqueueAudio([S)V
    .locals 1

    const-string v0, "pcmData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/xiaozhi/android/audio/AudioPlayer;->bufferQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method public final isPlayingState()Lkotlinx/coroutines/flow/SharedFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/SharedFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/xiaozhi/android/audio/AudioPlayer;->isPlayingState:Lkotlinx/coroutines/flow/SharedFlow;

    return-object v0
.end method

.method public final resetForNewPlayback()V
    .locals 9

    .line 111
    iget-object v0, p0, Lcom/xiaozhi/android/audio/AudioPlayer;->bufferQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 112
    iget-object v0, p0, Lcom/xiaozhi/android/audio/AudioPlayer;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 114
    :try_start_0
    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 115
    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 116
    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 118
    const-string v1, "resetForNewPlayback failed"

    check-cast v0, Ljava/lang/Throwable;

    const-string v2, "AudioPlayer"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/xiaozhi/android/audio/AudioPlayer;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/xiaozhi/android/audio/AudioPlayer$resetForNewPlayback$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaozhi/android/audio/AudioPlayer$resetForNewPlayback$2;-><init>(Lcom/xiaozhi/android/audio/AudioPlayer;Lkotlin/coroutines/Continuation;)V

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final resumePlayback()V
    .locals 9

    .line 94
    iget-object v0, p0, Lcom/xiaozhi/android/audio/AudioPlayer;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 96
    :try_start_0
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 97
    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 100
    const-string v1, "resumePlayback failed"

    check-cast v0, Ljava/lang/Throwable;

    const-string v2, "AudioPlayer"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/xiaozhi/android/audio/AudioPlayer;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/xiaozhi/android/audio/AudioPlayer$resumePlayback$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaozhi/android/audio/AudioPlayer$resumePlayback$2;-><init>(Lcom/xiaozhi/android/audio/AudioPlayer;Lkotlin/coroutines/Continuation;)V

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final start()V
    .locals 8

    .line 31
    iget-boolean v0, p0, Lcom/xiaozhi/android/audio/AudioPlayer;->isPlaying:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lcom/xiaozhi/android/audio/AudioPlayer;->isPlaying:Z

    const/16 v1, 0x5dc0

    const/4 v2, 0x4

    const/4 v3, 0x2

    .line 34
    invoke-static {v1, v2, v3}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v4

    .line 35
    new-instance v5, Landroid/media/AudioTrack$Builder;

    invoke-direct {v5}, Landroid/media/AudioTrack$Builder;-><init>()V

    .line 37
    new-instance v6, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v6}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 38
    invoke-virtual {v6, v0}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v6

    .line 39
    invoke-virtual {v6, v3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v6

    .line 40
    invoke-virtual {v6}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v6

    .line 36
    invoke-virtual {v5, v6}, Landroid/media/AudioTrack$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioTrack$Builder;

    move-result-object v5

    .line 43
    new-instance v6, Landroid/media/AudioFormat$Builder;

    invoke-direct {v6}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 44
    invoke-virtual {v6, v3}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v6

    .line 45
    invoke-virtual {v6, v1}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    .line 46
    invoke-virtual {v1, v2}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    .line 47
    invoke-virtual {v1}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v1

    .line 42
    invoke-virtual {v5, v1}, Landroid/media/AudioTrack$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioTrack$Builder;

    move-result-object v1

    mul-int/2addr v4, v3

    .line 49
    invoke-virtual {v1, v4}, Landroid/media/AudioTrack$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioTrack$Builder;

    move-result-object v1

    .line 50
    invoke-virtual {v1, v0}, Landroid/media/AudioTrack$Builder;->setTransferMode(I)Landroid/media/AudioTrack$Builder;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Landroid/media/AudioTrack$Builder;->build()Landroid/media/AudioTrack;

    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/xiaozhi/android/audio/AudioPlayer;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_1

    .line 53
    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 55
    :cond_1
    iget-object v1, p0, Lcom/xiaozhi/android/audio/AudioPlayer;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/xiaozhi/android/audio/AudioPlayer$start$1;

    const/4 v7, 0x0

    invoke-direct {v0, p0, v7}, Lcom/xiaozhi/android/audio/AudioPlayer$start$1;-><init>(Lcom/xiaozhi/android/audio/AudioPlayer;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaozhi/android/audio/AudioPlayer;->playJob:Lkotlinx/coroutines/Job;

    .line 66
    iget-object v1, p0, Lcom/xiaozhi/android/audio/AudioPlayer;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/xiaozhi/android/audio/AudioPlayer$start$2;

    invoke-direct {v0, p0, v7}, Lcom/xiaozhi/android/audio/AudioPlayer$start$2;-><init>(Lcom/xiaozhi/android/audio/AudioPlayer;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final stop()V
    .locals 8

    const/4 v0, 0x0

    .line 125
    iput-boolean v0, p0, Lcom/xiaozhi/android/audio/AudioPlayer;->isPlaying:Z

    .line 126
    iget-object v0, p0, Lcom/xiaozhi/android/audio/AudioPlayer;->playJob:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/xiaozhi/android/audio/AudioPlayer;->bufferQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 128
    iget-object v0, p0, Lcom/xiaozhi/android/audio/AudioPlayer;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_1

    .line 129
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 130
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 132
    :cond_1
    iput-object v1, p0, Lcom/xiaozhi/android/audio/AudioPlayer;->audioTrack:Landroid/media/AudioTrack;

    .line 133
    iget-object v2, p0, Lcom/xiaozhi/android/audio/AudioPlayer;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/xiaozhi/android/audio/AudioPlayer$stop$2;

    invoke-direct {v0, p0, v1}, Lcom/xiaozhi/android/audio/AudioPlayer$stop$2;-><init>(Lcom/xiaozhi/android/audio/AudioPlayer;Lkotlin/coroutines/Continuation;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final stopAndClear()V
    .locals 9

    .line 78
    iget-object v0, p0, Lcom/xiaozhi/android/audio/AudioPlayer;->bufferQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 79
    iget-object v0, p0, Lcom/xiaozhi/android/audio/AudioPlayer;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 81
    :try_start_0
    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 82
    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 84
    const-string v1, "stopAndClear flush failed"

    check-cast v0, Ljava/lang/Throwable;

    const-string v2, "AudioPlayer"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/xiaozhi/android/audio/AudioPlayer;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/xiaozhi/android/audio/AudioPlayer$stopAndClear$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaozhi/android/audio/AudioPlayer$stopAndClear$2;-><init>(Lcom/xiaozhi/android/audio/AudioPlayer;Lkotlin/coroutines/Continuation;)V

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
