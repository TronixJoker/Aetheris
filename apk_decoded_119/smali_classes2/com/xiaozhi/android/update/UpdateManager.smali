.class public final Lcom/xiaozhi/android/update/UpdateManager;
.super Ljava/lang/Object;
.source "UpdateManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaozhi/android/update/UpdateManager$Companion;,
        Lcom/xiaozhi/android/update/UpdateManager$UpdateInfo;,
        Lcom/xiaozhi/android/update/UpdateManager$UpdateResult;,
        Lcom/xiaozhi/android/update/UpdateManager$UpdateState;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u000c\u0008\u0007\u0018\u0000 12\u00020\u0001:\u00041234B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u0006\u001a\u00020\u0007H\u0002J$\u0010 \u001a\u00020!2\u0008\u0008\u0002\u0010\"\u001a\u00020\u00182\u0012\u0010#\u001a\u000e\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020!0$J\u000e\u0010&\u001a\u00020!2\u0006\u0010\'\u001a\u00020\u0018J\u0016\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u00180)2\u0006\u0010*\u001a\u00020\u0018H\u0002J\u0010\u0010+\u001a\u00020!2\u0006\u0010,\u001a\u00020\u001eH\u0002J\u0006\u0010-\u001a\u00020!J\u0010\u0010.\u001a\u00020!2\u0006\u0010,\u001a\u00020\u001eH\u0002J\u0006\u0010/\u001a\u00020!J\u0006\u00100\u001a\u00020!R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0013R\u0014\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0013R\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001f\u001a\u0004\u0018\u00010\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00065"
    }
    d2 = {
        "Lcom/xiaozhi/android/update/UpdateManager;",
        "",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "getCurrentVersionCode",
        "",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "checkClient",
        "Lokhttp3/OkHttpClient;",
        "client",
        "_updateState",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Lcom/xiaozhi/android/update/UpdateManager$UpdateState;",
        "updateState",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "getUpdateState",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "_downloadProgress",
        "downloadProgress",
        "getDownloadProgress",
        "_downloadSize",
        "",
        "downloadSize",
        "getDownloadSize",
        "downloadJob",
        "Lkotlinx/coroutines/Job;",
        "pendingApkFile",
        "Ljava/io/File;",
        "lastDownloadedUrl",
        "checkForUpdates",
        "",
        "updateUrl",
        "callback",
        "Lkotlin/Function1;",
        "Lcom/xiaozhi/android/update/UpdateManager$UpdateResult;",
        "downloadUpdate",
        "downloadUrl",
        "buildDownloadUrlCandidates",
        "",
        "originalUrl",
        "installApk",
        "apkFile",
        "retryInstall",
        "launchPackageInstaller",
        "reset",
        "destroy",
        "Companion",
        "UpdateState",
        "UpdateInfo",
        "UpdateResult",
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

.field public static final Companion:Lcom/xiaozhi/android/update/UpdateManager$Companion;

.field private static final DOWNLOAD_STALL_TIMEOUT_MS:J = 0x7530L

.field private static final MAX_RETRIES:I = 0x2

.field private static final TAG:Ljava/lang/String; = "UpdateManager"

.field private static final UPDATE_INFO_FALLBACK_URLS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final UPDATE_INFO_URL:Ljava/lang/String; = "https://raw.githubusercontent.com/TronixJoker/Aetheris/main/android-update.json"

.field private static final json:Lkotlinx/serialization/json/Json;


# instance fields
.field private final _downloadProgress:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final _downloadSize:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final _updateState:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/xiaozhi/android/update/UpdateManager$UpdateState;",
            ">;"
        }
    .end annotation
.end field

.field private final checkClient:Lokhttp3/OkHttpClient;

.field private final client:Lokhttp3/OkHttpClient;

.field private final context:Landroid/content/Context;

.field private downloadJob:Lkotlinx/coroutines/Job;

.field private final downloadProgress:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final downloadSize:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lastDownloadedUrl:Ljava/lang/String;

.field private pendingApkFile:Ljava/io/File;

.field private final scope:Lkotlinx/coroutines/CoroutineScope;

.field private final updateState:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/xiaozhi/android/update/UpdateManager$UpdateState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$LBOtVVJa57el8F8z9GKNTS5Uh3s(Lkotlinx/serialization/json/JsonBuilder;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/xiaozhi/android/update/UpdateManager;->json$lambda$2(Lkotlinx/serialization/json/JsonBuilder;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/xiaozhi/android/update/UpdateManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaozhi/android/update/UpdateManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/xiaozhi/android/update/UpdateManager;->Companion:Lcom/xiaozhi/android/update/UpdateManager$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/xiaozhi/android/update/UpdateManager;->$stable:I

    const/4 v0, 0x5

    .line 32
    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "https://api.github.com/repos/TronixJoker/Aetheris/contents/android-update.json?ref=main"

    aput-object v3, v0, v2

    .line 34
    const-string v2, "https://gh-proxy.com/https://raw.githubusercontent.com/TronixJoker/Aetheris/main/android-update.json"

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const/4 v2, 0x2

    .line 35
    const-string v4, "https://ghproxy.net/https://raw.githubusercontent.com/TronixJoker/Aetheris/main/android-update.json"

    aput-object v4, v0, v2

    const/4 v2, 0x3

    .line 36
    const-string v4, "https://ghfast.top/https://raw.githubusercontent.com/TronixJoker/Aetheris/main/android-update.json"

    aput-object v4, v0, v2

    const/4 v2, 0x4

    .line 37
    const-string v4, "https://cdn.jsdelivr.net/gh/TronixJoker/Aetheris@main/android-update.json"

    aput-object v4, v0, v2

    .line 31
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/xiaozhi/android/update/UpdateManager;->UPDATE_INFO_FALLBACK_URLS:Ljava/util/List;

    .line 41
    new-instance v0, Lcom/xiaozhi/android/update/UpdateManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/xiaozhi/android/update/UpdateManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1, v0, v3, v1}, Lkotlinx/serialization/json/JsonKt;->Json$default(Lkotlinx/serialization/json/Json;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/serialization/json/Json;

    move-result-object v0

    sput-object v0, Lcom/xiaozhi/android/update/UpdateManager;->json:Lkotlinx/serialization/json/Json;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaozhi/android/update/UpdateManager;->context:Landroid/content/Context;

    .line 64
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/CoroutineDispatcher;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaozhi/android/update/UpdateManager;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 66
    new-instance p1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {p1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    const-wide/16 v2, 0x8

    .line 67
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v2, v3, v0}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 68
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xf

    invoke-virtual {p1, v2, v3, v0}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 69
    invoke-virtual {p1, v1}, Lokhttp3/OkHttpClient$Builder;->followRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 70
    invoke-virtual {p1, v1}, Lokhttp3/OkHttpClient$Builder;->followSslRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 72
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaozhi/android/update/UpdateManager;->checkClient:Lokhttp3/OkHttpClient;

    .line 74
    new-instance p1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {p1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 75
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    const-wide/16 v2, 0x78

    .line 76
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    const-wide/16 v2, 0x1e

    .line 77
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 78
    invoke-virtual {p1, v1}, Lokhttp3/OkHttpClient$Builder;->followRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 79
    invoke-virtual {p1, v1}, Lokhttp3/OkHttpClient$Builder;->followSslRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 80
    invoke-virtual {p1, v1}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 81
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaozhi/android/update/UpdateManager;->client:Lokhttp3/OkHttpClient;

    .line 83
    sget-object p1, Lcom/xiaozhi/android/update/UpdateManager$UpdateState;->IDLE:Lcom/xiaozhi/android/update/UpdateManager$UpdateState;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaozhi/android/update/UpdateManager;->_updateState:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 84
    check-cast p1, Lkotlinx/coroutines/flow/StateFlow;

    iput-object p1, p0, Lcom/xiaozhi/android/update/UpdateManager;->updateState:Lkotlinx/coroutines/flow/StateFlow;

    .line 86
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaozhi/android/update/UpdateManager;->_downloadProgress:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 87
    check-cast p1, Lkotlinx/coroutines/flow/StateFlow;

    iput-object p1, p0, Lcom/xiaozhi/android/update/UpdateManager;->downloadProgress:Lkotlinx/coroutines/flow/StateFlow;

    .line 89
    const-string p1, "0 MB"

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaozhi/android/update/UpdateManager;->_downloadSize:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 90
    check-cast p1, Lkotlinx/coroutines/flow/StateFlow;

    iput-object p1, p0, Lcom/xiaozhi/android/update/UpdateManager;->downloadSize:Lkotlinx/coroutines/flow/StateFlow;

    return-void
.end method

.method public static final synthetic access$buildDownloadUrlCandidates(Lcom/xiaozhi/android/update/UpdateManager;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/xiaozhi/android/update/UpdateManager;->buildDownloadUrlCandidates(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCheckClient$p(Lcom/xiaozhi/android/update/UpdateManager;)Lokhttp3/OkHttpClient;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/xiaozhi/android/update/UpdateManager;->checkClient:Lokhttp3/OkHttpClient;

    return-object p0
.end method

.method public static final synthetic access$getClient$p(Lcom/xiaozhi/android/update/UpdateManager;)Lokhttp3/OkHttpClient;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/xiaozhi/android/update/UpdateManager;->client:Lokhttp3/OkHttpClient;

    return-object p0
.end method

.method public static final synthetic access$getContext$p(Lcom/xiaozhi/android/update/UpdateManager;)Landroid/content/Context;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/xiaozhi/android/update/UpdateManager;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getCurrentVersionCode(Lcom/xiaozhi/android/update/UpdateManager;)I
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/xiaozhi/android/update/UpdateManager;->getCurrentVersionCode()I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getJson$cp()Lkotlinx/serialization/json/Json;
    .locals 1

    .line 24
    sget-object v0, Lcom/xiaozhi/android/update/UpdateManager;->json:Lkotlinx/serialization/json/Json;

    return-object v0
.end method

.method public static final synthetic access$getUPDATE_INFO_FALLBACK_URLS$cp()Ljava/util/List;
    .locals 1

    .line 24
    sget-object v0, Lcom/xiaozhi/android/update/UpdateManager;->UPDATE_INFO_FALLBACK_URLS:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$get_downloadProgress$p(Lcom/xiaozhi/android/update/UpdateManager;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/xiaozhi/android/update/UpdateManager;->_downloadProgress:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object p0
.end method

.method public static final synthetic access$get_downloadSize$p(Lcom/xiaozhi/android/update/UpdateManager;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/xiaozhi/android/update/UpdateManager;->_downloadSize:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object p0
.end method

.method public static final synthetic access$get_updateState$p(Lcom/xiaozhi/android/update/UpdateManager;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/xiaozhi/android/update/UpdateManager;->_updateState:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object p0
.end method

.method public static final synthetic access$installApk(Lcom/xiaozhi/android/update/UpdateManager;Ljava/io/File;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/xiaozhi/android/update/UpdateManager;->installApk(Ljava/io/File;)V

    return-void
.end method

.method public static final synthetic access$setLastDownloadedUrl$p(Lcom/xiaozhi/android/update/UpdateManager;Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/xiaozhi/android/update/UpdateManager;->lastDownloadedUrl:Ljava/lang/String;

    return-void
.end method

.method private final buildDownloadUrlCandidates(Ljava/lang/String;)Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v6, p1

    .line 372
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    check-cast v7, Ljava/util/List;

    .line 373
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "toLowerCase(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 380
    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "raw.githubusercontent.com"

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 384
    const-string v1, "https://raw.githubusercontent.com/"

    const-string v2, "https://cdn.jsdelivr.net/gh/"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replaceFirst$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x4

    const/4 v13, 0x0

    .line 385
    const-string v9, "/main/"

    const-string v10, "@main/"

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Lkotlin/text/StringsKt;->replaceFirst$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 386
    const-string v1, "/master/"

    const-string v2, "@master/"

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replaceFirst$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :cond_0
    move-object v0, v6

    goto/16 :goto_1

    .line 388
    :cond_1
    const-string v1, "cdn.jsdelivr.net"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 392
    const-string v1, "https://cdn.jsdelivr.net/gh/"

    const-string v2, "https://raw.githubusercontent.com/"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replaceFirst$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x4

    const/4 v13, 0x0

    .line 393
    const-string v9, "@main"

    const-string v10, "/main"

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Lkotlin/text/StringsKt;->replaceFirst$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 394
    const-string v1, "@master"

    const-string v2, "/master"

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replaceFirst$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 395
    const-string v9, "@latest"

    const-string v10, "/main"

    invoke-static/range {v8 .. v13}, Lkotlin/text/StringsKt;->replaceFirst$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v6

    goto :goto_1

    .line 397
    :cond_2
    const-string v1, "fastly.jsdelivr.net"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 398
    const-string v1, "https://fastly.jsdelivr.net/"

    const-string v2, "https://cdn.jsdelivr.net/"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replaceFirst$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 400
    const-string v1, "https://fastly.jsdelivr.net/gh/"

    const-string v2, "https://raw.githubusercontent.com/"

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replaceFirst$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const/4 v13, 0x4

    const/4 v14, 0x0

    .line 401
    const-string v10, "@main"

    const-string v11, "/main"

    const/4 v12, 0x0

    invoke-static/range {v9 .. v14}, Lkotlin/text/StringsKt;->replaceFirst$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 402
    const-string v1, "@master"

    const-string v2, "/master"

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replaceFirst$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v4, v8

    goto :goto_1

    .line 404
    :cond_3
    const-string v1, "gcore.jsdelivr.net"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 405
    const-string v1, "https://gcore.jsdelivr.net/"

    const-string v2, "https://cdn.jsdelivr.net/"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replaceFirst$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 407
    const-string v1, "https://gcore.jsdelivr.net/gh/"

    const-string v2, "https://raw.githubusercontent.com/"

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replaceFirst$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const/4 v13, 0x4

    const/4 v14, 0x0

    .line 408
    const-string v10, "@main"

    const-string v11, "/main"

    const/4 v12, 0x0

    invoke-static/range {v9 .. v14}, Lkotlin/text/StringsKt;->replaceFirst$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 409
    const-string v1, "@master"

    const-string v2, "/master"

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replaceFirst$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :goto_1
    if-eqz v0, :cond_4

    .line 419
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://gh-proxy.com/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 420
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://ghproxy.net/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 421
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://ghfast.top/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    if-eqz v0, :cond_5

    .line 425
    invoke-interface {v7, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    if-eqz v4, :cond_8

    .line 431
    invoke-interface {v7, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    const/4 v12, 0x4

    const/4 v13, 0x0

    .line 433
    const-string v9, "https://cdn.jsdelivr.net/"

    const-string v10, "https://fastly.jsdelivr.net/"

    const/4 v11, 0x0

    move-object v8, v4

    invoke-static/range {v8 .. v13}, Lkotlin/text/StringsKt;->replaceFirst$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 434
    invoke-interface {v7, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    const/4 v12, 0x4

    const/4 v13, 0x0

    .line 436
    const-string v9, "https://cdn.jsdelivr.net/"

    const-string v10, "https://gcore.jsdelivr.net/"

    const/4 v11, 0x0

    move-object v8, v4

    invoke-static/range {v8 .. v13}, Lkotlin/text/StringsKt;->replaceFirst$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 437
    invoke-interface {v7, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 441
    :cond_8
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Download URL candidates (priority order): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpdateManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7
.end method

.method public static synthetic checkForUpdates$default(Lcom/xiaozhi/android/update/UpdateManager;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 115
    const-string p1, "https://raw.githubusercontent.com/TronixJoker/Aetheris/main/android-update.json"

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/xiaozhi/android/update/UpdateManager;->checkForUpdates(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final getCurrentVersionCode()I
    .locals 4

    const/4 v0, 0x0

    .line 51
    :try_start_0
    iget-object v1, p0, Lcom/xiaozhi/android/update/UpdateManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaozhi/android/update/UpdateManager;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 52
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_0

    .line 53
    invoke-virtual {v1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    .line 56
    :cond_0
    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 59
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to read current versionCode: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UpdateManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method private final installApk(Ljava/io/File;)V
    .locals 4

    .line 448
    const-string v0, "UpdateManager"

    .line 0
    const-string v1, "package:"

    .line 450
    :try_start_0
    iput-object p1, p0, Lcom/xiaozhi/android/update/UpdateManager;->pendingApkFile:Ljava/io/File;

    .line 451
    iget-object v2, p0, Lcom/xiaozhi/android/update/UpdateManager;->_updateState:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v3, Lcom/xiaozhi/android/update/UpdateManager$UpdateState;->INSTALLING:Lcom/xiaozhi/android/update/UpdateManager$UpdateState;

    invoke-interface {v2, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 455
    iget-object v2, p0, Lcom/xiaozhi/android/update/UpdateManager;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->canRequestPackageInstalls()Z

    move-result v2

    if-nez v2, :cond_0

    .line 456
    const-string p1, "Missing install permission, jumping to settings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget-object p1, p0, Lcom/xiaozhi/android/update/UpdateManager;->_updateState:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v2, Lcom/xiaozhi/android/update/UpdateManager$UpdateState;->NEED_PERMISSION:Lcom/xiaozhi/android/update/UpdateManager$UpdateState;

    invoke-interface {p1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 460
    new-instance p1, Landroid/content/Intent;

    const-string v2, "android.settings.MANAGE_UNKNOWN_APP_SOURCES"

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 461
    iget-object v2, p0, Lcom/xiaozhi/android/update/UpdateManager;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 462
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 464
    iget-object v1, p0, Lcom/xiaozhi/android/update/UpdateManager;->context:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 469
    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaozhi/android/update/UpdateManager;->launchPackageInstaller(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 471
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Install failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object p1, p0, Lcom/xiaozhi/android/update/UpdateManager;->_updateState:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v0, Lcom/xiaozhi/android/update/UpdateManager$UpdateState;->ERROR:Lcom/xiaozhi/android/update/UpdateManager$UpdateState;

    invoke-interface {p1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private static final json$lambda$2(Lkotlinx/serialization/json/JsonBuilder;)Lkotlin/Unit;
    .locals 1

    const-string v0, "$this$Json"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 41
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/JsonBuilder;->setIgnoreUnknownKeys(Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final launchPackageInstaller(Ljava/io/File;)V
    .locals 3

    .line 499
    iget-object v0, p0, Lcom/xiaozhi/android/update/UpdateManager;->context:Landroid/content/Context;

    .line 500
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".fileprovider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 498
    invoke-static {v0, v1, p1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 503
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 504
    const-string v1, "application/vnd.android.package-archive"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 505
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 506
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p1, 0x4000000

    .line 507
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 509
    iget-object p1, p0, Lcom/xiaozhi/android/update/UpdateManager;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public final checkForUpdates(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/xiaozhi/android/update/UpdateManager$UpdateResult;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "updateUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/xiaozhi/android/update/UpdateManager;->_updateState:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v1, Lcom/xiaozhi/android/update/UpdateManager$UpdateState;->CHECKING:Lcom/xiaozhi/android/update/UpdateManager$UpdateState;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 117
    iget-object v2, p0, Lcom/xiaozhi/android/update/UpdateManager;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1;-><init>(Lcom/xiaozhi/android/update/UpdateManager;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final destroy()V
    .locals 3

    .line 519
    iget-object v0, p0, Lcom/xiaozhi/android/update/UpdateManager;->downloadJob:Lkotlinx/coroutines/Job;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 520
    :cond_0
    iget-object v0, p0, Lcom/xiaozhi/android/update/UpdateManager;->scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel$default(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    return-void
.end method

.method public final downloadUpdate(Ljava/lang/String;)V
    .locals 8

    const-string v0, "downloadUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/xiaozhi/android/update/UpdateManager;->_updateState:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v1, Lcom/xiaozhi/android/update/UpdateManager$UpdateState;->DOWNLOADING:Lcom/xiaozhi/android/update/UpdateManager$UpdateState;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 267
    iget-object v0, p0, Lcom/xiaozhi/android/update/UpdateManager;->_downloadProgress:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 268
    iget-object v0, p0, Lcom/xiaozhi/android/update/UpdateManager;->_downloadSize:Lkotlinx/coroutines/flow/MutableStateFlow;

    const-string v1, "0 MB"

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 269
    iget-object v2, p0, Lcom/xiaozhi/android/update/UpdateManager;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/xiaozhi/android/update/UpdateManager$downloadUpdate$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/xiaozhi/android/update/UpdateManager$downloadUpdate$1;-><init>(Lcom/xiaozhi/android/update/UpdateManager;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaozhi/android/update/UpdateManager;->downloadJob:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final getDownloadProgress()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/xiaozhi/android/update/UpdateManager;->downloadProgress:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final getDownloadSize()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/xiaozhi/android/update/UpdateManager;->downloadSize:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final getUpdateState()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/xiaozhi/android/update/UpdateManager$UpdateState;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/xiaozhi/android/update/UpdateManager;->updateState:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final reset()V
    .locals 2

    .line 513
    iget-object v0, p0, Lcom/xiaozhi/android/update/UpdateManager;->_updateState:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v1, Lcom/xiaozhi/android/update/UpdateManager$UpdateState;->IDLE:Lcom/xiaozhi/android/update/UpdateManager$UpdateState;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 514
    iget-object v0, p0, Lcom/xiaozhi/android/update/UpdateManager;->_downloadProgress:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final retryInstall()V
    .locals 7

    .line 481
    iget-object v0, p0, Lcom/xiaozhi/android/update/UpdateManager;->pendingApkFile:Ljava/io/File;

    .line 482
    const-string v1, "UpdateManager"

    if-nez v0, :cond_0

    .line 483
    const-string v0, "retryInstall: no pending apk file"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget-object v0, p0, Lcom/xiaozhi/android/update/UpdateManager;->_updateState:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v1, Lcom/xiaozhi/android/update/UpdateManager$UpdateState;->ERROR:Lcom/xiaozhi/android/update/UpdateManager$UpdateState;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void

    .line 487
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 488
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "retryInstall: pending apk file missing: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 489
    iput-object v0, p0, Lcom/xiaozhi/android/update/UpdateManager;->pendingApkFile:Ljava/io/File;

    .line 490
    iget-object v0, p0, Lcom/xiaozhi/android/update/UpdateManager;->_updateState:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v1, Lcom/xiaozhi/android/update/UpdateManager$UpdateState;->ERROR:Lcom/xiaozhi/android/update/UpdateManager$UpdateState;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void

    .line 493
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "retryInstall: file="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", size="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    invoke-direct {p0, v0}, Lcom/xiaozhi/android/update/UpdateManager;->installApk(Ljava/io/File;)V

    return-void
.end method
