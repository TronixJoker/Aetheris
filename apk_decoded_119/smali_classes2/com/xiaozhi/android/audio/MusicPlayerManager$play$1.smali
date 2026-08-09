.class final Lcom/xiaozhi/android/audio/MusicPlayerManager$play$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MusicPlayerManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaozhi/android/audio/MusicPlayerManager;->play(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.xiaozhi.android.audio.MusicPlayerManager$play$1"
    f = "MusicPlayerManager.kt"
    i = {}
    l = {
        0x46
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $url:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/xiaozhi/android/audio/MusicPlayerManager;


# direct methods
.method public static synthetic $r8$lambda$Cq5ta4uyZvgCfMu1RS4ZeauzRHU(Lcom/xiaozhi/android/audio/MusicPlayerManager;Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/xiaozhi/android/audio/MusicPlayerManager$play$1;->invokeSuspend$lambda$3$lambda$1(Lcom/xiaozhi/android/audio/MusicPlayerManager;Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$E2qCFTl6zM2caopbEV19a_6cuGQ(Lcom/xiaozhi/android/audio/MusicPlayerManager;Landroid/media/MediaPlayer;II)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/xiaozhi/android/audio/MusicPlayerManager$play$1;->invokeSuspend$lambda$3$lambda$2(Lcom/xiaozhi/android/audio/MusicPlayerManager;Landroid/media/MediaPlayer;II)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$PycnTgfjJTnzw1zQgMnqYK9YfKs(Lcom/xiaozhi/android/audio/MusicPlayerManager;Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/xiaozhi/android/audio/MusicPlayerManager$play$1;->invokeSuspend$lambda$3$lambda$0(Lcom/xiaozhi/android/audio/MusicPlayerManager;Landroid/media/MediaPlayer;)V

    return-void
.end method

.method constructor <init>(Ljava/util/Map;Lcom/xiaozhi/android/audio/MusicPlayerManager;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/xiaozhi/android/audio/MusicPlayerManager;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/xiaozhi/android/audio/MusicPlayerManager$play$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaozhi/android/audio/MusicPlayerManager$play$1;->$headers:Ljava/util/Map;

    iput-object p2, p0, Lcom/xiaozhi/android/audio/MusicPlayerManager$play$1;->this$0:Lcom/xiaozhi/android/audio/MusicPlayerManager;

    iput-object p3, p0, Lcom/xiaozhi/android/audio/MusicPlayerManager$play$1;->$url:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$3$lambda$0(Lcom/xiaozhi/android/audio/MusicPlayerManager;Landroid/media/MediaPlayer;)V
    .locals 2

    .line 107
    const-string v0, "MusicPlayerManager"

    const-string v1, "MediaPlayer prepared, starting playback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-static {p0}, Lcom/xiaozhi/android/audio/MusicPlayerManager;->access$get_playState$p(Lcom/xiaozhi/android/audio/MusicPlayerManager;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p0

    sget-object v0, Lcom/xiaozhi/android/audio/MusicPlayerManager$PlayState;->PLAYING:Lcom/xiaozhi/android/audio/MusicPlayerManager$PlayState;

    invoke-interface {p0, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 109
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method

.method private static final invokeSuspend$lambda$3$lambda$1(Lcom/xiaozhi/android/audio/MusicPlayerManager;Landroid/media/MediaPlayer;)V
    .locals 1

    .line 112
    const-string p1, "MusicPlayerManager"

    const-string v0, "Playback completed"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-static {p0}, Lcom/xiaozhi/android/audio/MusicPlayerManager;->access$get_playState$p(Lcom/xiaozhi/android/audio/MusicPlayerManager;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    sget-object v0, Lcom/xiaozhi/android/audio/MusicPlayerManager$PlayState;->IDLE:Lcom/xiaozhi/android/audio/MusicPlayerManager$PlayState;

    invoke-interface {p1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 114
    invoke-static {p0}, Lcom/xiaozhi/android/audio/MusicPlayerManager;->access$get_currentSong$p(Lcom/xiaozhi/android/audio/MusicPlayerManager;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 115
    invoke-static {p0}, Lcom/xiaozhi/android/audio/MusicPlayerManager;->access$get_currentArtist$p(Lcom/xiaozhi/android/audio/MusicPlayerManager;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p0

    invoke-interface {p0, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$3$lambda$2(Lcom/xiaozhi/android/audio/MusicPlayerManager;Landroid/media/MediaPlayer;II)Z
    .locals 1

    .line 118
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "MediaPlayer error: what="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " extra="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MusicPlayerManager"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-static {p0}, Lcom/xiaozhi/android/audio/MusicPlayerManager;->access$get_playState$p(Lcom/xiaozhi/android/audio/MusicPlayerManager;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    sget-object p2, Lcom/xiaozhi/android/audio/MusicPlayerManager$PlayState;->ERROR:Lcom/xiaozhi/android/audio/MusicPlayerManager$PlayState;

    invoke-interface {p1, p2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 120
    invoke-static {p0}, Lcom/xiaozhi/android/audio/MusicPlayerManager;->access$get_currentSong$p(Lcom/xiaozhi/android/audio/MusicPlayerManager;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 121
    invoke-static {p0}, Lcom/xiaozhi/android/audio/MusicPlayerManager;->access$get_currentArtist$p(Lcom/xiaozhi/android/audio/MusicPlayerManager;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p0

    invoke-interface {p0, p2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/xiaozhi/android/audio/MusicPlayerManager$play$1;

    iget-object v0, p0, Lcom/xiaozhi/android/audio/MusicPlayerManager$play$1;->$headers:Ljava/util/Map;

    iget-object v1, p0, Lcom/xiaozhi/android/audio/MusicPlayerManager$play$1;->this$0:Lcom/xiaozhi/android/audio/MusicPlayerManager;

    iget-object v2, p0, Lcom/xiaozhi/android/audio/MusicPlayerManager$play$1;->$url:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/xiaozhi/android/audio/MusicPlayerManager$play$1;-><init>(Ljava/util/Map;Lcom/xiaozhi/android/audio/MusicPlayerManager;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/xiaozhi/android/audio/MusicPlayerManager$play$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/xiaozhi/android/audio/MusicPlayerManager$play$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/xiaozhi/android/audio/MusicPlayerManager$play$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/xiaozhi/android/audio/MusicPlayerManager$play$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 67
    iget v1, p0, Lcom/xiaozhi/android/audio/MusicPlayerManager$play$1;->label:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 69
    iget-object p1, p0, Lcom/xiaozhi/android/audio/MusicPlayerManager$play$1;->$headers:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    if-eqz p1, :cond_3

    .line 70
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/xiaozhi/android/audio/MusicPlayerManager$play$1$playUrl$proxyUrl$1;

    iget-object v4, p0, Lcom/xiaozhi/android/audio/MusicPlayerManager$play$1;->this$0:Lcom/xiaozhi/android/audio/MusicPlayerManager;

    iget-object v5, p0, Lcom/xiaozhi/android/audio/MusicPlayerManager$play$1;->$url:Ljava/lang/String;

    iget-object v6, p0, Lcom/xiaozhi/android/audio/MusicPlayerManager$play$1;->$headers:Ljava/util/Map;

    invoke-direct {v1, v4, v5, v6, v3}, Lcom/xiaozhi/android/audio/MusicPlayerManager$play$1$playUrl$proxyUrl$1;-><init>(Lcom/xiaozhi/android/audio/MusicPlayerManager;Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/xiaozhi/android/audio/MusicPlayerManager$play$1;->label:I

    invoke-static {p1, v1, v4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 67
    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_4

    .line 86
    iget-object p1, p0, Lcom/xiaozhi/android/audio/MusicPlayerManager$play$1;->this$0:Lcom/xiaozhi/android/audio/MusicPlayerManager;

    invoke-static {p1}, Lcom/xiaozhi/android/audio/MusicPlayerManager;->access$get_playState$p(Lcom/xiaozhi/android/audio/MusicPlayerManager;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    sget-object v0, Lcom/xiaozhi/android/audio/MusicPlayerManager$PlayState;->ERROR:Lcom/xiaozhi/android/audio/MusicPlayerManager$PlayState;

    invoke-interface {p1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 87
    iget-object p1, p0, Lcom/xiaozhi/android/audio/MusicPlayerManager$play$1;->this$0:Lcom/xiaozhi/android/audio/MusicPlayerManager;

    invoke-static {p1}, Lcom/xiaozhi/android/audio/MusicPlayerManager;->access$get_currentSong$p(Lcom/xiaozhi/android/audio/MusicPlayerManager;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    invoke-interface {p1, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 88
    iget-object p1, p0, Lcom/xiaozhi/android/audio/MusicPlayerManager$play$1;->this$0:Lcom/xiaozhi/android/audio/MusicPlayerManager;

    invoke-static {p1}, Lcom/xiaozhi/android/audio/MusicPlayerManager;->access$get_currentArtist$p(Lcom/xiaozhi/android/audio/MusicPlayerManager;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    invoke-interface {p1, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 89
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 93
    :cond_3
    iget-object p1, p0, Lcom/xiaozhi/android/audio/MusicPlayerManager$play$1;->$url:Ljava/lang/String;

    .line 98
    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/xiaozhi/android/audio/MusicPlayerManager$play$1;->this$0:Lcom/xiaozhi/android/audio/MusicPlayerManager;

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iget-object v4, p0, Lcom/xiaozhi/android/audio/MusicPlayerManager$play$1;->this$0:Lcom/xiaozhi/android/audio/MusicPlayerManager;

    .line 100
    new-instance v5, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v5}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v6, 0x2

    .line 101
    invoke-virtual {v5, v6}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v5

    .line 102
    invoke-virtual {v5, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    .line 103
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    .line 99
    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 105
    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 106
    new-instance p1, Lcom/xiaozhi/android/audio/MusicPlayerManager$play$1$$ExternalSyntheticLambda0;

    invoke-direct {p1, v4}, Lcom/xiaozhi/android/audio/MusicPlayerManager$play$1$$ExternalSyntheticLambda0;-><init>(Lcom/xiaozhi/android/audio/MusicPlayerManager;)V

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 111
    new-instance p1, Lcom/xiaozhi/android/audio/MusicPlayerManager$play$1$$ExternalSyntheticLambda1;

    invoke-direct {p1, v4}, Lcom/xiaozhi/android/audio/MusicPlayerManager$play$1$$ExternalSyntheticLambda1;-><init>(Lcom/xiaozhi/android/audio/MusicPlayerManager;)V

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 117
    new-instance p1, Lcom/xiaozhi/android/audio/MusicPlayerManager$play$1$$ExternalSyntheticLambda2;

    invoke-direct {p1, v4}, Lcom/xiaozhi/android/audio/MusicPlayerManager$play$1$$ExternalSyntheticLambda2;-><init>(Lcom/xiaozhi/android/audio/MusicPlayerManager;)V

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 124
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 98
    invoke-static {v0, v1}, Lcom/xiaozhi/android/audio/MusicPlayerManager;->access$setMediaPlayer$p(Lcom/xiaozhi/android/audio/MusicPlayerManager;Landroid/media/MediaPlayer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 127
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to start playback: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MusicPlayerManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object p1, p0, Lcom/xiaozhi/android/audio/MusicPlayerManager$play$1;->this$0:Lcom/xiaozhi/android/audio/MusicPlayerManager;

    invoke-static {p1}, Lcom/xiaozhi/android/audio/MusicPlayerManager;->access$get_playState$p(Lcom/xiaozhi/android/audio/MusicPlayerManager;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    sget-object v0, Lcom/xiaozhi/android/audio/MusicPlayerManager$PlayState;->ERROR:Lcom/xiaozhi/android/audio/MusicPlayerManager$PlayState;

    invoke-interface {p1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 129
    iget-object p1, p0, Lcom/xiaozhi/android/audio/MusicPlayerManager$play$1;->this$0:Lcom/xiaozhi/android/audio/MusicPlayerManager;

    invoke-static {p1}, Lcom/xiaozhi/android/audio/MusicPlayerManager;->access$get_currentSong$p(Lcom/xiaozhi/android/audio/MusicPlayerManager;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    invoke-interface {p1, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 130
    iget-object p1, p0, Lcom/xiaozhi/android/audio/MusicPlayerManager$play$1;->this$0:Lcom/xiaozhi/android/audio/MusicPlayerManager;

    invoke-static {p1}, Lcom/xiaozhi/android/audio/MusicPlayerManager;->access$get_currentArtist$p(Lcom/xiaozhi/android/audio/MusicPlayerManager;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    invoke-interface {p1, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 132
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
