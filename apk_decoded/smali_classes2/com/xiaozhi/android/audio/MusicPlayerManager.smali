.class public final Lcom/xiaozhi/android/audio/MusicPlayerManager;
.super Ljava/lang/Object;
.source "MusicPlayerManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaozhi/android/audio/MusicPlayerManager$Companion;,
        Lcom/xiaozhi/android/audio/MusicPlayerManager$PlayState;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010$\n\u0002\u0008\u0007\u0008\u0007\u0018\u0000 #2\u00020\u0001:\u0002#$B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J4\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00122\u0006\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u001c\u001a\u00020\u00122\u0014\u0008\u0002\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00120\u001eJ\u0006\u0010\u001f\u001a\u00020\u0019J\u0006\u0010 \u001a\u00020\u0019J\u0006\u0010!\u001a\u00020\u0019J\u0006\u0010\"\u001a\u00020\u0019R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0016\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0019\u0010\u0013\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0010R\u0016\u0010\u0015\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0019\u0010\u0016\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0010\u00a8\u0006%"
    }
    d2 = {
        "Lcom/xiaozhi/android/audio/MusicPlayerManager;",
        "",
        "<init>",
        "()V",
        "mediaPlayer",
        "Landroid/media/MediaPlayer;",
        "proxyServer",
        "Lcom/xiaozhi/android/audio/LocalAudioProxyServer;",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "_playState",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Lcom/xiaozhi/android/audio/MusicPlayerManager$PlayState;",
        "playState",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "getPlayState",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "_currentSong",
        "",
        "currentSong",
        "getCurrentSong",
        "_currentArtist",
        "currentArtist",
        "getCurrentArtist",
        "play",
        "",
        "url",
        "songName",
        "artist",
        "headers",
        "",
        "pause",
        "resume",
        "stop",
        "release",
        "Companion",
        "PlayState",
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

.field public static final Companion:Lcom/xiaozhi/android/audio/MusicPlayerManager$Companion;

.field private static final TAG:Ljava/lang/String; = "MusicPlayerManager"


# instance fields
.field private final _currentArtist:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final _currentSong:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final _playState:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/xiaozhi/android/audio/MusicPlayerManager$PlayState;",
            ">;"
        }
    .end annotation
.end field

.field private final currentArtist:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final currentSong:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private final playState:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/xiaozhi/android/audio/MusicPlayerManager$PlayState;",
            ">;"
        }
    .end annotation
.end field

.field private final proxyServer:Lcom/xiaozhi/android/audio/LocalAudioProxyServer;

.field private final scope:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/xiaozhi/android/audio/MusicPlayerManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaozhi/android/audio/MusicPlayerManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/xiaozhi/android/audio/MusicPlayerManager;->Companion:Lcom/xiaozhi/android/audio/MusicPlayerManager$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/xiaozhi/android/audio/MusicPlayerManager;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/xiaozhi/android/audio/LocalAudioProxyServer;

    invoke-direct {v0}, Lcom/xiaozhi/android/audio/LocalAudioProxyServer;-><init>()V

    iput-object v0, p0, Lcom/xiaozhi/android/audio/MusicPlayerManager;->proxyServer:Lcom/xiaozhi/android/audio/LocalAudioProxyServer;

    .line 37
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v1, v2}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/MainCoroutineDispatcher;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaozhi/android/audio/MusicPlayerManager;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 39
    sget-object v0, Lcom/xiaozhi/android/audio/MusicPlayerManager$PlayState;->IDLE:Lcom/xiaozhi/android/audio/MusicPlayerManager$PlayState;

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaozhi/android/audio/MusicPlayerManager;->_playState:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 40
    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaozhi/android/audio/MusicPlayerManager;->playState:Lkotlinx/coroutines/flow/StateFlow;

    .line 42
    invoke-static {v2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaozhi/android/audio/MusicPlayerManager;->_currentSong:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 43
    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaozhi/android/audio/MusicPlayerManager;->currentSong:Lkotlinx/coroutines/flow/StateFlow;

    .line 45
    invoke-static {v2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaozhi/android/audio/MusicPlayerManager;->_currentArtist:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 46
    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaozhi/android/audio/MusicPlayerManager;->currentArtist:Lkotlinx/coroutines/flow/StateFlow;

    return-void
.end method

.method public static final synthetic access$getProxyServer$p(Lcom/xiaozhi/android/audio/MusicPlayerManager;)Lcom/xiaozhi/android/audio/LocalAudioProxyServer;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/xiaozhi/android/audio/MusicPlayerManager;->proxyServer:Lcom/xiaozhi/android/audio/LocalAudioProxyServer;

    return-object p0
.end method

.method public static final synthetic access$get_currentArtist$p(Lcom/xiaozhi/android/audio/MusicPlayerManager;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/xiaozhi/android/audio/MusicPlayerManager;->_currentArtist:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object p0
.end method

.method public static final synthetic access$get_currentSong$p(Lcom/xiaozhi/android/audio/MusicPlayerManager;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/xiaozhi/android/audio/MusicPlayerManager;->_currentSong:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object p0
.end method

.method public static final synthetic access$get_playState$p(Lcom/xiaozhi/android/audio/MusicPlayerManager;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/xiaozhi/android/audio/MusicPlayerManager;->_playState:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object p0
.end method

.method public static final synthetic access$setMediaPlayer$p(Lcom/xiaozhi/android/audio/MusicPlayerManager;Landroid/media/MediaPlayer;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/xiaozhi/android/audio/MusicPlayerManager;->mediaPlayer:Landroid/media/MediaPlayer;

    return-void
.end method

.method public static synthetic play$default(Lcom/xiaozhi/android/audio/MusicPlayerManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 55
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p4

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/xiaozhi/android/audio/MusicPlayerManager;->play(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final getCurrentArtist()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/xiaozhi/android/audio/MusicPlayerManager;->currentArtist:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final getCurrentSong()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/xiaozhi/android/audio/MusicPlayerManager;->currentSong:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final getPlayState()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/xiaozhi/android/audio/MusicPlayerManager$PlayState;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/xiaozhi/android/audio/MusicPlayerManager;->playState:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final pause()V
    .locals 4

    .line 139
    const-string v0, "MusicPlayerManager"

    .line 140
    :try_start_0
    iget-object v1, p0, Lcom/xiaozhi/android/audio/MusicPlayerManager;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 141
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 142
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    .line 143
    iget-object v1, p0, Lcom/xiaozhi/android/audio/MusicPlayerManager;->_playState:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v2, Lcom/xiaozhi/android/audio/MusicPlayerManager$PlayState;->PAUSED:Lcom/xiaozhi/android/audio/MusicPlayerManager$PlayState;

    invoke-interface {v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 144
    const-string v1, "Playback paused"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 148
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Pause failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public final play(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "songName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "artist"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headers"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-interface {p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "play: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", headers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicPlayerManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v0, p0, Lcom/xiaozhi/android/audio/MusicPlayerManager;->_playState:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v2, Lcom/xiaozhi/android/audio/MusicPlayerManager$PlayState;->LOADING:Lcom/xiaozhi/android/audio/MusicPlayerManager$PlayState;

    invoke-interface {v0, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 58
    iget-object v0, p0, Lcom/xiaozhi/android/audio/MusicPlayerManager;->_currentSong:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, p2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 59
    iget-object p2, p0, Lcom/xiaozhi/android/audio/MusicPlayerManager;->_currentArtist:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p2, p3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 62
    :try_start_0
    iget-object p2, p0, Lcom/xiaozhi/android/audio/MusicPlayerManager;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 63
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "release old player: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const/4 p2, 0x0

    .line 65
    iput-object p2, p0, Lcom/xiaozhi/android/audio/MusicPlayerManager;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 67
    iget-object v0, p0, Lcom/xiaozhi/android/audio/MusicPlayerManager;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance p3, Lcom/xiaozhi/android/audio/MusicPlayerManager$play$1;

    invoke-direct {p3, p4, p0, p1, p2}, Lcom/xiaozhi/android/audio/MusicPlayerManager$play$1;-><init>(Ljava/util/Map;Lcom/xiaozhi/android/audio/MusicPlayerManager;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v3, p3

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final release()V
    .locals 3

    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/xiaozhi/android/audio/MusicPlayerManager;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 193
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Release failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicPlayerManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 195
    iput-object v0, p0, Lcom/xiaozhi/android/audio/MusicPlayerManager;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 196
    iget-object v1, p0, Lcom/xiaozhi/android/audio/MusicPlayerManager;->proxyServer:Lcom/xiaozhi/android/audio/LocalAudioProxyServer;

    invoke-virtual {v1}, Lcom/xiaozhi/android/audio/LocalAudioProxyServer;->stop()V

    .line 197
    iget-object v1, p0, Lcom/xiaozhi/android/audio/MusicPlayerManager;->scope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v0}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel$default(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 198
    iget-object v1, p0, Lcom/xiaozhi/android/audio/MusicPlayerManager;->_playState:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v2, Lcom/xiaozhi/android/audio/MusicPlayerManager$PlayState;->IDLE:Lcom/xiaozhi/android/audio/MusicPlayerManager$PlayState;

    invoke-interface {v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 199
    iget-object v1, p0, Lcom/xiaozhi/android/audio/MusicPlayerManager;->_currentSong:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 200
    iget-object v1, p0, Lcom/xiaozhi/android/audio/MusicPlayerManager;->_currentArtist:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final resume()V
    .locals 4

    .line 156
    const-string v0, "MusicPlayerManager"

    .line 157
    :try_start_0
    iget-object v1, p0, Lcom/xiaozhi/android/audio/MusicPlayerManager;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 158
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_0

    .line 159
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 160
    iget-object v1, p0, Lcom/xiaozhi/android/audio/MusicPlayerManager;->_playState:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v2, Lcom/xiaozhi/android/audio/MusicPlayerManager$PlayState;->PLAYING:Lcom/xiaozhi/android/audio/MusicPlayerManager$PlayState;

    invoke-interface {v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 161
    const-string v1, "Playback resumed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 165
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Resume failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public final stop()V
    .locals 5

    .line 173
    const-string v0, "MusicPlayerManager"

    const/4 v1, 0x0

    .line 174
    :try_start_0
    iget-object v2, p0, Lcom/xiaozhi/android/audio/MusicPlayerManager;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    .line 175
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->stop()V

    .line 176
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 178
    :cond_0
    iput-object v1, p0, Lcom/xiaozhi/android/audio/MusicPlayerManager;->mediaPlayer:Landroid/media/MediaPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 180
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Stop failed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :goto_0
    iget-object v2, p0, Lcom/xiaozhi/android/audio/MusicPlayerManager;->_playState:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v3, Lcom/xiaozhi/android/audio/MusicPlayerManager$PlayState;->IDLE:Lcom/xiaozhi/android/audio/MusicPlayerManager$PlayState;

    invoke-interface {v2, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 183
    iget-object v2, p0, Lcom/xiaozhi/android/audio/MusicPlayerManager;->_currentSong:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v2, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 184
    iget-object v2, p0, Lcom/xiaozhi/android/audio/MusicPlayerManager;->_currentArtist:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v2, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 185
    const-string v1, "Playback stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
