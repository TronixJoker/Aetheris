.class public final Lcom/xiaozhi/android/network/WebSocketManager;
.super Ljava/lang/Object;
.source "WebSocketManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaozhi/android/network/WebSocketManager$Companion;,
        Lcom/xiaozhi/android/network/WebSocketManager$ConnectionState;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWebSocketManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WebSocketManager.kt\ncom/xiaozhi/android/network/WebSocketManager\n+ 2 JsonElementBuilders.kt\nkotlinx/serialization/json/JsonElementBuildersKt\n*L\n1#1,264:1\n29#2,3:265\n29#2,3:268\n*S KotlinDebug\n*F\n+ 1 WebSocketManager.kt\ncom/xiaozhi/android/network/WebSocketManager\n*L\n231#1:265,3\n245#1:268,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u001b\u0008\u0007\u0018\u0000 F2\u00020\u0001:\u0002FGB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J&\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020\u00122\u0006\u0010/\u001a\u00020\u00122\u0006\u00100\u001a\u00020\u00122\u0006\u00101\u001a\u00020\u0012J\u0006\u00102\u001a\u00020-J\u0008\u00103\u001a\u00020-H\u0002J\u0010\u00104\u001a\u00020-2\u0006\u00105\u001a\u00020\u0012H\u0002J\u0006\u00106\u001a\u00020-J\u0006\u00107\u001a\u00020-J\u000e\u00108\u001a\u00020-2\u0006\u00109\u001a\u00020\u001cJ\u000e\u0010:\u001a\u00020-2\u0006\u0010;\u001a\u00020\u0012J\u0010\u0010<\u001a\u00020-2\u0008\u0008\u0002\u0010=\u001a\u00020\u0012J\u0006\u0010>\u001a\u00020-J\u000e\u0010?\u001a\u00020-2\u0006\u0010@\u001a\u00020\u0012J\u0010\u0010A\u001a\u00020-2\u0008\u0008\u0002\u00105\u001a\u00020\u0012J\u000e\u0010B\u001a\u00020-2\u0006\u0010;\u001a\u00020\u0012J\u000e\u0010C\u001a\u00020-2\u0006\u0010D\u001a\u00020\u0012J\u0006\u0010E\u001a\u00020-R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0016\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0019\u0010\u0013\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0010R\u0014\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0018\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u0014\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u0018\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001aR\u0016\u0010\u001f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0019\u0010 \u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\u0010R\u000e\u0010\"\u001a\u00020#X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020%X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\'\u001a\u0004\u0018\u00010(X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006H"
    }
    d2 = {
        "Lcom/xiaozhi/android/network/WebSocketManager;",
        "",
        "<init>",
        "()V",
        "webSocket",
        "Lokhttp3/WebSocket;",
        "client",
        "Lokhttp3/OkHttpClient;",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "_connectionState",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Lcom/xiaozhi/android/network/WebSocketManager$ConnectionState;",
        "connectionState",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "getConnectionState",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "_disconnectReason",
        "",
        "disconnectReason",
        "getDisconnectReason",
        "_incomingJson",
        "Lkotlinx/coroutines/flow/MutableSharedFlow;",
        "incomingJson",
        "Lkotlinx/coroutines/flow/SharedFlow;",
        "getIncomingJson",
        "()Lkotlinx/coroutines/flow/SharedFlow;",
        "_incomingAudio",
        "",
        "incomingAudio",
        "getIncomingAudio",
        "_sessionId",
        "sessionId",
        "getSessionId",
        "reconnectAttempts",
        "",
        "autoReconnect",
        "",
        "wsUrl",
        "reconnectJob",
        "Lkotlinx/coroutines/Job;",
        "accessToken",
        "deviceId",
        "clientId",
        "configure",
        "",
        "url",
        "token",
        "devId",
        "cliId",
        "connect",
        "doConnect",
        "handleDisconnect",
        "reason",
        "disconnect",
        "forceReconnect",
        "sendAudio",
        "data",
        "sendText",
        "text",
        "sendListenStart",
        "mode",
        "sendListenStop",
        "sendWakeWordDetected",
        "wakeWord",
        "sendAbort",
        "sendSystemText",
        "updateSessionId",
        "id",
        "destroy",
        "Companion",
        "ConnectionState",
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

.field public static final Companion:Lcom/xiaozhi/android/network/WebSocketManager$Companion;

.field private static final MAX_RECONNECT_ATTEMPTS:I = 0x5

.field private static final TAG:Ljava/lang/String; = "WebSocketManager"

.field private static final json:Lkotlinx/serialization/json/Json;


# instance fields
.field private final _connectionState:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/xiaozhi/android/network/WebSocketManager$ConnectionState;",
            ">;"
        }
    .end annotation
.end field

.field private final _disconnectReason:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final _incomingAudio:Lkotlinx/coroutines/flow/MutableSharedFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableSharedFlow<",
            "[B>;"
        }
    .end annotation
.end field

.field private final _incomingJson:Lkotlinx/coroutines/flow/MutableSharedFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableSharedFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final _sessionId:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private accessToken:Ljava/lang/String;

.field private autoReconnect:Z

.field private final client:Lokhttp3/OkHttpClient;

.field private clientId:Ljava/lang/String;

.field private final connectionState:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/xiaozhi/android/network/WebSocketManager$ConnectionState;",
            ">;"
        }
    .end annotation
.end field

.field private deviceId:Ljava/lang/String;

.field private final disconnectReason:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final incomingAudio:Lkotlinx/coroutines/flow/SharedFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/SharedFlow<",
            "[B>;"
        }
    .end annotation
.end field

.field private final incomingJson:Lkotlinx/coroutines/flow/SharedFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/SharedFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private reconnectAttempts:I

.field private reconnectJob:Lkotlinx/coroutines/Job;

.field private final scope:Lkotlinx/coroutines/CoroutineScope;

.field private final sessionId:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private webSocket:Lokhttp3/WebSocket;

.field private wsUrl:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$XteF7jQmpIVCZ8W7eGPNsiKI7iY(Lkotlinx/serialization/json/JsonBuilder;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/xiaozhi/android/network/WebSocketManager;->json$lambda$2(Lkotlinx/serialization/json/JsonBuilder;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/xiaozhi/android/network/WebSocketManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaozhi/android/network/WebSocketManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/xiaozhi/android/network/WebSocketManager;->Companion:Lcom/xiaozhi/android/network/WebSocketManager$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/xiaozhi/android/network/WebSocketManager;->$stable:I

    .line 22
    new-instance v0, Lcom/xiaozhi/android/network/WebSocketManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/xiaozhi/android/network/WebSocketManager$$ExternalSyntheticLambda0;-><init>()V

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v1}, Lkotlinx/serialization/json/JsonKt;->Json$default(Lkotlinx/serialization/json/Json;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/serialization/json/Json;

    move-result-object v0

    sput-object v0, Lcom/xiaozhi/android/network/WebSocketManager;->json:Lkotlinx/serialization/json/Json;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    const-wide/16 v1, 0x14

    .line 27
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->pingInterval(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const-wide/16 v1, 0xa

    .line 28
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 29
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaozhi/android/network/WebSocketManager;->client:Lokhttp3/OkHttpClient;

    .line 32
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v1, v2}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/CoroutineDispatcher;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaozhi/android/network/WebSocketManager;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 34
    sget-object v0, Lcom/xiaozhi/android/network/WebSocketManager$ConnectionState;->DISCONNECTED:Lcom/xiaozhi/android/network/WebSocketManager$ConnectionState;

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaozhi/android/network/WebSocketManager;->_connectionState:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 35
    check-cast v0, Lkotlinx/coroutines/flow/StateFlow;

    iput-object v0, p0, Lcom/xiaozhi/android/network/WebSocketManager;->connectionState:Lkotlinx/coroutines/flow/StateFlow;

    .line 37
    invoke-static {v2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaozhi/android/network/WebSocketManager;->_disconnectReason:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 38
    check-cast v0, Lkotlinx/coroutines/flow/StateFlow;

    iput-object v0, p0, Lcom/xiaozhi/android/network/WebSocketManager;->disconnectReason:Lkotlinx/coroutines/flow/StateFlow;

    const/4 v0, 0x0

    const/16 v1, 0x40

    const/4 v3, 0x5

    .line 40
    invoke-static {v0, v1, v2, v3, v2}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object v4

    iput-object v4, p0, Lcom/xiaozhi/android/network/WebSocketManager;->_incomingJson:Lkotlinx/coroutines/flow/MutableSharedFlow;

    .line 41
    check-cast v4, Lkotlinx/coroutines/flow/SharedFlow;

    iput-object v4, p0, Lcom/xiaozhi/android/network/WebSocketManager;->incomingJson:Lkotlinx/coroutines/flow/SharedFlow;

    .line 43
    invoke-static {v0, v1, v2, v3, v2}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaozhi/android/network/WebSocketManager;->_incomingAudio:Lkotlinx/coroutines/flow/MutableSharedFlow;

    .line 44
    check-cast v0, Lkotlinx/coroutines/flow/SharedFlow;

    iput-object v0, p0, Lcom/xiaozhi/android/network/WebSocketManager;->incomingAudio:Lkotlinx/coroutines/flow/SharedFlow;

    .line 46
    invoke-static {v2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaozhi/android/network/WebSocketManager;->_sessionId:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 47
    check-cast v0, Lkotlinx/coroutines/flow/StateFlow;

    iput-object v0, p0, Lcom/xiaozhi/android/network/WebSocketManager;->sessionId:Lkotlinx/coroutines/flow/StateFlow;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaozhi/android/network/WebSocketManager;->wsUrl:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/xiaozhi/android/network/WebSocketManager;->accessToken:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/xiaozhi/android/network/WebSocketManager;->deviceId:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/xiaozhi/android/network/WebSocketManager;->clientId:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$doConnect(Lcom/xiaozhi/android/network/WebSocketManager;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/xiaozhi/android/network/WebSocketManager;->doConnect()V

    return-void
.end method

.method public static final synthetic access$getJson$cp()Lkotlinx/serialization/json/Json;
    .locals 1

    .line 18
    sget-object v0, Lcom/xiaozhi/android/network/WebSocketManager;->json:Lkotlinx/serialization/json/Json;

    return-object v0
.end method

.method public static final synthetic access$getScope$p(Lcom/xiaozhi/android/network/WebSocketManager;)Lkotlinx/coroutines/CoroutineScope;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/xiaozhi/android/network/WebSocketManager;->scope:Lkotlinx/coroutines/CoroutineScope;

    return-object p0
.end method

.method public static final synthetic access$get_connectionState$p(Lcom/xiaozhi/android/network/WebSocketManager;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/xiaozhi/android/network/WebSocketManager;->_connectionState:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object p0
.end method

.method public static final synthetic access$get_incomingAudio$p(Lcom/xiaozhi/android/network/WebSocketManager;)Lkotlinx/coroutines/flow/MutableSharedFlow;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/xiaozhi/android/network/WebSocketManager;->_incomingAudio:Lkotlinx/coroutines/flow/MutableSharedFlow;

    return-object p0
.end method

.method public static final synthetic access$get_incomingJson$p(Lcom/xiaozhi/android/network/WebSocketManager;)Lkotlinx/coroutines/flow/MutableSharedFlow;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/xiaozhi/android/network/WebSocketManager;->_incomingJson:Lkotlinx/coroutines/flow/MutableSharedFlow;

    return-object p0
.end method

.method public static final synthetic access$handleDisconnect(Lcom/xiaozhi/android/network/WebSocketManager;Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/xiaozhi/android/network/WebSocketManager;->handleDisconnect(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$setReconnectAttempts$p(Lcom/xiaozhi/android/network/WebSocketManager;I)V
    .locals 0

    .line 18
    iput p1, p0, Lcom/xiaozhi/android/network/WebSocketManager;->reconnectAttempts:I

    return-void
.end method

.method private final doConnect()V
    .locals 4

    .line 80
    iget-object v0, p0, Lcom/xiaozhi/android/network/WebSocketManager;->_connectionState:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v1, Lcom/xiaozhi/android/network/WebSocketManager$ConnectionState;->CONNECTING:Lcom/xiaozhi/android/network/WebSocketManager$ConnectionState;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 81
    iget-object v0, p0, Lcom/xiaozhi/android/network/WebSocketManager;->wsUrl:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Connecting to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebSocketManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 84
    iget-object v1, p0, Lcom/xiaozhi/android/network/WebSocketManager;->wsUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/xiaozhi/android/network/WebSocketManager;->accessToken:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Bearer "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Authorization"

    invoke-virtual {v0, v2, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 86
    const-string v1, "Protocol-Version"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 87
    const-string v1, "Device-Id"

    iget-object v2, p0, Lcom/xiaozhi/android/network/WebSocketManager;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 88
    const-string v1, "Client-Id"

    iget-object v2, p0, Lcom/xiaozhi/android/network/WebSocketManager;->clientId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 91
    iget-object v1, p0, Lcom/xiaozhi/android/network/WebSocketManager;->client:Lokhttp3/OkHttpClient;

    new-instance v2, Lcom/xiaozhi/android/network/WebSocketManager$doConnect$1;

    invoke-direct {v2, p0}, Lcom/xiaozhi/android/network/WebSocketManager$doConnect$1;-><init>(Lcom/xiaozhi/android/network/WebSocketManager;)V

    check-cast v2, Lokhttp3/WebSocketListener;

    invoke-virtual {v1, v0, v2}, Lokhttp3/OkHttpClient;->newWebSocket(Lokhttp3/Request;Lokhttp3/WebSocketListener;)Lokhttp3/WebSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaozhi/android/network/WebSocketManager;->webSocket:Lokhttp3/WebSocket;

    return-void
.end method

.method private final handleDisconnect(Ljava/lang/String;)V
    .locals 11

    .line 130
    const-string v0, "WebSocketManager"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v1, p0, Lcom/xiaozhi/android/network/WebSocketManager;->_connectionState:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v2, Lcom/xiaozhi/android/network/WebSocketManager$ConnectionState;->DISCONNECTED:Lcom/xiaozhi/android/network/WebSocketManager$ConnectionState;

    invoke-interface {v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 132
    iget-object v1, p0, Lcom/xiaozhi/android/network/WebSocketManager;->_disconnectReason:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 133
    iput-object p1, p0, Lcom/xiaozhi/android/network/WebSocketManager;->webSocket:Lokhttp3/WebSocket;

    .line 135
    iget-boolean v1, p0, Lcom/xiaozhi/android/network/WebSocketManager;->autoReconnect:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/xiaozhi/android/network/WebSocketManager;->reconnectAttempts:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 136
    iput v1, p0, Lcom/xiaozhi/android/network/WebSocketManager;->reconnectAttempts:I

    int-to-long v3, v1

    const-wide/16 v5, 0x2

    mul-long/2addr v3, v5

    const-wide/16 v5, 0x1e

    .line 137
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    const/16 v1, 0x3e8

    int-to-long v5, v1

    mul-long/2addr v3, v5

    .line 138
    iget v1, p0, Lcom/xiaozhi/android/network/WebSocketManager;->reconnectAttempts:I

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Reconnecting in "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms (attempt "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "/5)"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcom/xiaozhi/android/network/WebSocketManager;->reconnectJob:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_0

    invoke-static {v0, p1, v2, p1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 141
    :cond_0
    iget-object v5, p0, Lcom/xiaozhi/android/network/WebSocketManager;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/xiaozhi/android/network/WebSocketManager$handleDisconnect$1;

    invoke-direct {v0, v3, v4, p0, p1}, Lcom/xiaozhi/android/network/WebSocketManager$handleDisconnect$1;-><init>(JLcom/xiaozhi/android/network/WebSocketManager;Lkotlin/coroutines/Continuation;)V

    move-object v8, v0

    check-cast v8, Lkotlin/jvm/functions/Function2;

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaozhi/android/network/WebSocketManager;->reconnectJob:Lkotlinx/coroutines/Job;

    :cond_1
    return-void
.end method

.method private static final json$lambda$2(Lkotlinx/serialization/json/JsonBuilder;)Lkotlin/Unit;
    .locals 1

    const-string v0, "$this$Json"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 22
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/JsonBuilder;->setIgnoreUnknownKeys(Z)V

    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/JsonBuilder;->setEncodeDefaults(Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic sendAbort$default(Lcom/xiaozhi/android/network/WebSocketManager;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 230
    const-string p1, "wake_word_detected"

    :cond_0
    invoke-virtual {p0, p1}, Lcom/xiaozhi/android/network/WebSocketManager;->sendAbort(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic sendListenStart$default(Lcom/xiaozhi/android/network/WebSocketManager;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 195
    const-string p1, "auto"

    :cond_0
    invoke-virtual {p0, p1}, Lcom/xiaozhi/android/network/WebSocketManager;->sendListenStart(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final configure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "token"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "devId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cliId"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iput-object p1, p0, Lcom/xiaozhi/android/network/WebSocketManager;->wsUrl:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lcom/xiaozhi/android/network/WebSocketManager;->accessToken:Ljava/lang/String;

    .line 65
    iput-object p3, p0, Lcom/xiaozhi/android/network/WebSocketManager;->deviceId:Ljava/lang/String;

    .line 66
    iput-object p4, p0, Lcom/xiaozhi/android/network/WebSocketManager;->clientId:Ljava/lang/String;

    return-void
.end method

.method public final connect()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/xiaozhi/android/network/WebSocketManager;->_connectionState:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/xiaozhi/android/network/WebSocketManager$ConnectionState;->CONNECTING:Lcom/xiaozhi/android/network/WebSocketManager$ConnectionState;

    if-ne v0, v1, :cond_0

    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/xiaozhi/android/network/WebSocketManager;->_connectionState:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/xiaozhi/android/network/WebSocketManager$ConnectionState;->CONNECTED:Lcom/xiaozhi/android/network/WebSocketManager$ConnectionState;

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 73
    iput-boolean v0, p0, Lcom/xiaozhi/android/network/WebSocketManager;->autoReconnect:Z

    const/4 v0, 0x0

    .line 74
    iput v0, p0, Lcom/xiaozhi/android/network/WebSocketManager;->reconnectAttempts:I

    .line 75
    iget-object v0, p0, Lcom/xiaozhi/android/network/WebSocketManager;->_disconnectReason:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 76
    invoke-direct {p0}, Lcom/xiaozhi/android/network/WebSocketManager;->doConnect()V

    return-void
.end method

.method public final destroy()V
    .locals 3

    .line 259
    invoke-virtual {p0}, Lcom/xiaozhi/android/network/WebSocketManager;->disconnect()V

    .line 260
    iget-object v0, p0, Lcom/xiaozhi/android/network/WebSocketManager;->scope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel$default(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 261
    iget-object v0, p0, Lcom/xiaozhi/android/network/WebSocketManager;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Dispatcher;->executorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 262
    iget-object v0, p0, Lcom/xiaozhi/android/network/WebSocketManager;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->connectionPool()Lokhttp3/ConnectionPool;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ConnectionPool;->evictAll()V

    return-void
.end method

.method public final disconnect()V
    .locals 4

    const/4 v0, 0x0

    .line 149
    iput-boolean v0, p0, Lcom/xiaozhi/android/network/WebSocketManager;->autoReconnect:Z

    .line 151
    iget-object v0, p0, Lcom/xiaozhi/android/network/WebSocketManager;->reconnectJob:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 152
    :cond_0
    iput-object v1, p0, Lcom/xiaozhi/android/network/WebSocketManager;->reconnectJob:Lkotlinx/coroutines/Job;

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/xiaozhi/android/network/WebSocketManager;->webSocket:Lokhttp3/WebSocket;

    if-eqz v0, :cond_1

    const-string v2, "User disconnect"

    const/16 v3, 0x3e8

    invoke-interface {v0, v3, v2}, Lokhttp3/WebSocket;->close(ILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :catch_0
    :cond_1
    iput-object v1, p0, Lcom/xiaozhi/android/network/WebSocketManager;->webSocket:Lokhttp3/WebSocket;

    .line 157
    iget-object v0, p0, Lcom/xiaozhi/android/network/WebSocketManager;->_connectionState:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v1, Lcom/xiaozhi/android/network/WebSocketManager$ConnectionState;->DISCONNECTED:Lcom/xiaozhi/android/network/WebSocketManager$ConnectionState;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final forceReconnect()V
    .locals 3

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/xiaozhi/android/network/WebSocketManager;->webSocket:Lokhttp3/WebSocket;

    if-eqz v0, :cond_0

    const-string v1, "Force reconnect"

    const/16 v2, 0x3e8

    invoke-interface {v0, v2, v1}, Lokhttp3/WebSocket;->close(ILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    .line 169
    iput-object v0, p0, Lcom/xiaozhi/android/network/WebSocketManager;->webSocket:Lokhttp3/WebSocket;

    .line 171
    iget-object v1, p0, Lcom/xiaozhi/android/network/WebSocketManager;->reconnectJob:Lkotlinx/coroutines/Job;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-static {v1, v0, v2, v0}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 172
    :cond_1
    iput-object v0, p0, Lcom/xiaozhi/android/network/WebSocketManager;->reconnectJob:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    .line 174
    iput v1, p0, Lcom/xiaozhi/android/network/WebSocketManager;->reconnectAttempts:I

    .line 175
    iput-boolean v2, p0, Lcom/xiaozhi/android/network/WebSocketManager;->autoReconnect:Z

    .line 176
    iget-object v1, p0, Lcom/xiaozhi/android/network/WebSocketManager;->_disconnectReason:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 177
    iget-object v0, p0, Lcom/xiaozhi/android/network/WebSocketManager;->_connectionState:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v1, Lcom/xiaozhi/android/network/WebSocketManager$ConnectionState;->DISCONNECTED:Lcom/xiaozhi/android/network/WebSocketManager$ConnectionState;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 178
    const-string v0, "Force reconnect triggered"

    const-string v1, "WebSocketManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lcom/xiaozhi/android/network/WebSocketManager;->wsUrl:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 181
    invoke-direct {p0}, Lcom/xiaozhi/android/network/WebSocketManager;->doConnect()V

    goto :goto_0

    .line 183
    :cond_2
    const-string v0, "forceReconnect: wsUrl is empty, configure first"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final getConnectionState()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/xiaozhi/android/network/WebSocketManager$ConnectionState;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/xiaozhi/android/network/WebSocketManager;->connectionState:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final getDisconnectReason()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/xiaozhi/android/network/WebSocketManager;->disconnectReason:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final getIncomingAudio()Lkotlinx/coroutines/flow/SharedFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/SharedFlow<",
            "[B>;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/xiaozhi/android/network/WebSocketManager;->incomingAudio:Lkotlinx/coroutines/flow/SharedFlow;

    return-object v0
.end method

.method public final getIncomingJson()Lkotlinx/coroutines/flow/SharedFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/SharedFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/xiaozhi/android/network/WebSocketManager;->incomingJson:Lkotlinx/coroutines/flow/SharedFlow;

    return-object v0
.end method

.method public final getSessionId()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/xiaozhi/android/network/WebSocketManager;->sessionId:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final sendAbort(Ljava/lang/String;)V
    .locals 4

    const-string v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    new-instance v1, Lkotlinx/serialization/json/JsonObjectBuilder;

    invoke-direct {v1}, Lkotlinx/serialization/json/JsonObjectBuilder;-><init>()V

    .line 232
    iget-object v2, p0, Lcom/xiaozhi/android/network/WebSocketManager;->_sessionId:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, ""

    :cond_0
    const-string v3, "session_id"

    invoke-static {v1, v3, v2}, Lkotlinx/serialization/json/JsonElementBuildersKt;->put(Lkotlinx/serialization/json/JsonObjectBuilder;Ljava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;

    .line 233
    const-string v2, "type"

    const-string v3, "abort"

    invoke-static {v1, v2, v3}, Lkotlinx/serialization/json/JsonElementBuildersKt;->put(Lkotlinx/serialization/json/JsonObjectBuilder;Ljava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;

    .line 234
    invoke-static {v1, v0, p1}, Lkotlinx/serialization/json/JsonElementBuildersKt;->put(Lkotlinx/serialization/json/JsonObjectBuilder;Ljava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;

    .line 267
    invoke-virtual {v1}, Lkotlinx/serialization/json/JsonObjectBuilder;->build()Lkotlinx/serialization/json/JsonObject;

    move-result-object p1

    .line 236
    invoke-virtual {p1}, Lkotlinx/serialization/json/JsonObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaozhi/android/network/WebSocketManager;->sendText(Ljava/lang/String;)V

    return-void
.end method

.method public final sendAudio([B)V
    .locals 3

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/xiaozhi/android/network/WebSocketManager;->webSocket:Lokhttp3/WebSocket;

    if-eqz v0, :cond_0

    sget-object v1, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    array-length v2, p1

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Lokio/ByteString$Companion;->of([B)Lokio/ByteString;

    move-result-object p1

    invoke-interface {v0, p1}, Lokhttp3/WebSocket;->send(Lokio/ByteString;)Z

    :cond_0
    return-void
.end method

.method public final sendListenStart(Ljava/lang/String;)V
    .locals 11

    const-string v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    sget-object v0, Lcom/xiaozhi/android/network/WebSocketManager;->json:Lkotlinx/serialization/json/Json;

    .line 197
    sget-object v1, Lcom/xiaozhi/android/model/ListenMessage;->Companion:Lcom/xiaozhi/android/model/ListenMessage$Companion;

    invoke-virtual {v1}, Lcom/xiaozhi/android/model/ListenMessage$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    .line 198
    new-instance v10, Lcom/xiaozhi/android/model/ListenMessage;

    .line 199
    iget-object v2, p0, Lcom/xiaozhi/android/network/WebSocketManager;->_sessionId:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    const/16 v8, 0x12

    const/4 v9, 0x0

    const/4 v4, 0x0

    .line 198
    const-string v5, "start"

    const/4 v7, 0x0

    move-object v2, v10

    move-object v6, p1

    invoke-direct/range {v2 .. v9}, Lcom/xiaozhi/android/model/ListenMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 196
    invoke-virtual {v0, v1, v10}, Lkotlinx/serialization/json/Json;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 204
    invoke-virtual {p0, p1}, Lcom/xiaozhi/android/network/WebSocketManager;->sendText(Ljava/lang/String;)V

    return-void
.end method

.method public final sendListenStop()V
    .locals 11

    .line 208
    sget-object v0, Lcom/xiaozhi/android/network/WebSocketManager;->json:Lkotlinx/serialization/json/Json;

    .line 209
    sget-object v1, Lcom/xiaozhi/android/model/ListenMessage;->Companion:Lcom/xiaozhi/android/model/ListenMessage$Companion;

    invoke-virtual {v1}, Lcom/xiaozhi/android/model/ListenMessage$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    .line 210
    new-instance v10, Lcom/xiaozhi/android/model/ListenMessage;

    .line 211
    iget-object v2, p0, Lcom/xiaozhi/android/network/WebSocketManager;->_sessionId:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    const/16 v8, 0x1a

    const/4 v9, 0x0

    const/4 v4, 0x0

    .line 210
    const-string v5, "stop"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcom/xiaozhi/android/model/ListenMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 208
    invoke-virtual {v0, v1, v10}, Lkotlinx/serialization/json/Json;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-virtual {p0, v0}, Lcom/xiaozhi/android/network/WebSocketManager;->sendText(Ljava/lang/String;)V

    return-void
.end method

.method public final sendSystemText(Ljava/lang/String;)V
    .locals 4

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    new-instance v1, Lkotlinx/serialization/json/JsonObjectBuilder;

    invoke-direct {v1}, Lkotlinx/serialization/json/JsonObjectBuilder;-><init>()V

    .line 246
    iget-object v2, p0, Lcom/xiaozhi/android/network/WebSocketManager;->_sessionId:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, ""

    :cond_0
    const-string v3, "session_id"

    invoke-static {v1, v3, v2}, Lkotlinx/serialization/json/JsonElementBuildersKt;->put(Lkotlinx/serialization/json/JsonObjectBuilder;Ljava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;

    .line 247
    const-string v2, "type"

    const-string v3, "stt"

    invoke-static {v1, v2, v3}, Lkotlinx/serialization/json/JsonElementBuildersKt;->put(Lkotlinx/serialization/json/JsonObjectBuilder;Ljava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;

    .line 248
    invoke-static {v1, v0, p1}, Lkotlinx/serialization/json/JsonElementBuildersKt;->put(Lkotlinx/serialization/json/JsonObjectBuilder;Ljava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;

    const/4 p1, 0x1

    .line 249
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "is_final"

    invoke-static {v1, v0, p1}, Lkotlinx/serialization/json/JsonElementBuildersKt;->put(Lkotlinx/serialization/json/JsonObjectBuilder;Ljava/lang/String;Ljava/lang/Boolean;)Lkotlinx/serialization/json/JsonElement;

    .line 270
    invoke-virtual {v1}, Lkotlinx/serialization/json/JsonObjectBuilder;->build()Lkotlinx/serialization/json/JsonObject;

    move-result-object p1

    .line 251
    invoke-virtual {p1}, Lkotlinx/serialization/json/JsonObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaozhi/android/network/WebSocketManager;->sendText(Ljava/lang/String;)V

    return-void
.end method

.method public final sendText(Ljava/lang/String;)V
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/xiaozhi/android/network/WebSocketManager;->webSocket:Lokhttp3/WebSocket;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lokhttp3/WebSocket;->send(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public final sendWakeWordDetected(Ljava/lang/String;)V
    .locals 11

    const-string v0, "wakeWord"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    sget-object v0, Lcom/xiaozhi/android/network/WebSocketManager;->json:Lkotlinx/serialization/json/Json;

    .line 220
    sget-object v1, Lcom/xiaozhi/android/model/ListenMessage;->Companion:Lcom/xiaozhi/android/model/ListenMessage$Companion;

    invoke-virtual {v1}, Lcom/xiaozhi/android/model/ListenMessage$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    .line 221
    new-instance v10, Lcom/xiaozhi/android/model/ListenMessage;

    .line 222
    iget-object v2, p0, Lcom/xiaozhi/android/network/WebSocketManager;->_sessionId:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    const/16 v8, 0xa

    const/4 v9, 0x0

    const/4 v4, 0x0

    .line 221
    const-string v5, "detect"

    const/4 v6, 0x0

    move-object v2, v10

    move-object v7, p1

    invoke-direct/range {v2 .. v9}, Lcom/xiaozhi/android/model/ListenMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 219
    invoke-virtual {v0, v1, v10}, Lkotlinx/serialization/json/Json;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 227
    invoke-virtual {p0, p1}, Lcom/xiaozhi/android/network/WebSocketManager;->sendText(Ljava/lang/String;)V

    return-void
.end method

.method public final updateSessionId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/xiaozhi/android/network/WebSocketManager;->_sessionId:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method
