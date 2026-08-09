.class public final Lcom/xiaozhi/android/activation/ActivationService;
.super Ljava/lang/Object;
.source "ActivationService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaozhi/android/activation/ActivationService$ActivationState;,
        Lcom/xiaozhi/android/activation/ActivationService$Companion;,
        Lcom/xiaozhi/android/activation/ActivationService$OtaResult;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nActivationService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActivationService.kt\ncom/xiaozhi/android/activation/ActivationService\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 JsonElementBuilders.kt\nkotlinx/serialization/json/JsonElementBuildersKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,376:1\n1#2:377\n29#3,2:378\n29#3,3:380\n31#3:383\n29#3,2:384\n29#3,3:386\n29#3,3:389\n31#3:392\n1557#4:393\n1628#4,3:394\n*S KotlinDebug\n*F\n+ 1 ActivationService.kt\ncom/xiaozhi/android/activation/ActivationService\n*L\n200#1:378,2\n201#1:380,3\n200#1:383\n256#1:384,2\n257#1:386,3\n261#1:389,3\n256#1:392\n348#1:393\n348#1:394,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\r\u0008\u0007\u0018\u0000 02\u00020\u0001:\u0003012B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u001c\u001a\u00020\nH\u0086@\u00a2\u0006\u0002\u0010\u001dJ\u000e\u0010\u001e\u001a\u00020\nH\u0086@\u00a2\u0006\u0002\u0010\u001dJ\u000e\u0010\u001f\u001a\u00020\u0010H\u0086@\u00a2\u0006\u0002\u0010\u001dJ\u000e\u0010 \u001a\u00020!H\u0086@\u00a2\u0006\u0002\u0010\u001dJ\u0010\u0010\"\u001a\u0004\u0018\u00010#H\u0082@\u00a2\u0006\u0002\u0010\u001dJ\u000e\u0010$\u001a\u00020!H\u0082@\u00a2\u0006\u0002\u0010\u001dJ\u0016\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020\u0010H\u0086@\u00a2\u0006\u0002\u0010(J\u0010\u0010)\u001a\u0004\u0018\u00010#H\u0082@\u00a2\u0006\u0002\u0010\u001dJ\u0008\u0010*\u001a\u00020\u0010H\u0002J\u0008\u0010+\u001a\u00020\u0010H\u0002J\u0016\u0010,\u001a\u00020\u00102\u0006\u0010-\u001a\u00020\u0010H\u0082@\u00a2\u0006\u0002\u0010(J\u0006\u0010.\u001a\u00020!J\u0006\u0010/\u001a\u00020!R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0016\u0010\u000f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0019\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u000eR\u0016\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0016R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0019\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0019\u0010\u001a\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u000e\u00a8\u00063"
    }
    d2 = {
        "Lcom/xiaozhi/android/activation/ActivationService;",
        "",
        "configManager",
        "Lcom/xiaozhi/android/config/ConfigManager;",
        "<init>",
        "(Lcom/xiaozhi/android/config/ConfigManager;)V",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "_activationState",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Lcom/xiaozhi/android/activation/ActivationService$ActivationState;",
        "activationState",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "getActivationState",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "_activationCode",
        "",
        "activationCode",
        "getActivationCode",
        "trustAllCerts",
        "",
        "Ljavax/net/ssl/TrustManager;",
        "[Ljavax/net/ssl/TrustManager;",
        "client",
        "Lokhttp3/OkHttpClient;",
        "_otaError",
        "otaError",
        "getOtaError",
        "initialize",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "initializeSync",
        "fetchOtaAsync",
        "resetDeviceIdentity",
        "",
        "fetchOtaConfigWithRetry",
        "Lcom/xiaozhi/android/activation/ActivationService$OtaResult;",
        "ensureHmacKey",
        "activate",
        "",
        "code",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "fetchOtaConfig",
        "generateDeviceId",
        "generateChallenge",
        "generateHmac",
        "challenge",
        "forceActivated",
        "destroy",
        "Companion",
        "ActivationState",
        "OtaResult",
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

.field public static final Companion:Lcom/xiaozhi/android/activation/ActivationService$Companion;

.field private static final TAG:Ljava/lang/String; = "ActivationService"

.field private static final json:Lkotlinx/serialization/json/Json;


# instance fields
.field private final _activationCode:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final _activationState:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/xiaozhi/android/activation/ActivationService$ActivationState;",
            ">;"
        }
    .end annotation
.end field

.field private final _otaError:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final activationCode:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final activationState:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/xiaozhi/android/activation/ActivationService$ActivationState;",
            ">;"
        }
    .end annotation
.end field

.field private final client:Lokhttp3/OkHttpClient;

.field private final configManager:Lcom/xiaozhi/android/config/ConfigManager;

.field private final otaError:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final scope:Lkotlinx/coroutines/CoroutineScope;

.field private final trustAllCerts:[Ljavax/net/ssl/TrustManager;


# direct methods
.method public static synthetic $r8$lambda$8LJbLURQtbyEHqXdI8czXesjG3A(B)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lcom/xiaozhi/android/activation/ActivationService;->generateDeviceId$lambda$13(B)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$DGDNiJ_dcfacDys-p4oNIhAQ5T4(B)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lcom/xiaozhi/android/activation/ActivationService;->ensureHmacKey$lambda$2(B)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$DbXTAjeEQNa-lov0ItZBMm71G7U(Lkotlinx/serialization/json/JsonBuilder;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/xiaozhi/android/activation/ActivationService;->json$lambda$18(Lkotlinx/serialization/json/JsonBuilder;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$LTUxiVauqdQdHNCsOhEsgcWJFHc(B)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lcom/xiaozhi/android/activation/ActivationService;->generateHmac$lambda$17(B)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$efDt-bTZgo-Ea3Bri0tM2VZ8nRo(B)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lcom/xiaozhi/android/activation/ActivationService;->generateHmac$lambda$16$lambda$15(B)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ohxnUNluRng61vqwjyvepQSTfHI(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/xiaozhi/android/activation/ActivationService;->client$lambda$1(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/xiaozhi/android/activation/ActivationService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaozhi/android/activation/ActivationService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/xiaozhi/android/activation/ActivationService;->Companion:Lcom/xiaozhi/android/activation/ActivationService$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/xiaozhi/android/activation/ActivationService;->$stable:I

    .line 26
    new-instance v0, Lcom/xiaozhi/android/activation/ActivationService$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/xiaozhi/android/activation/ActivationService$$ExternalSyntheticLambda1;-><init>()V

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v1}, Lkotlinx/serialization/json/JsonKt;->Json$default(Lkotlinx/serialization/json/Json;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/serialization/json/Json;

    move-result-object v0

    sput-object v0, Lcom/xiaozhi/android/activation/ActivationService;->json:Lkotlinx/serialization/json/Json;

    return-void
.end method

.method public constructor <init>(Lcom/xiaozhi/android/config/ConfigManager;)V
    .locals 6

    const-string v0, "configManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaozhi/android/activation/ActivationService;->configManager:Lcom/xiaozhi/android/config/ConfigManager;

    .line 29
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

    iput-object p1, p0, Lcom/xiaozhi/android/activation/ActivationService;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 30
    sget-object p1, Lcom/xiaozhi/android/activation/ActivationService$ActivationState;->INITIALIZING:Lcom/xiaozhi/android/activation/ActivationService$ActivationState;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaozhi/android/activation/ActivationService;->_activationState:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 31
    check-cast p1, Lkotlinx/coroutines/flow/StateFlow;

    iput-object p1, p0, Lcom/xiaozhi/android/activation/ActivationService;->activationState:Lkotlinx/coroutines/flow/StateFlow;

    .line 33
    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaozhi/android/activation/ActivationService;->_activationCode:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 34
    check-cast p1, Lkotlinx/coroutines/flow/StateFlow;

    iput-object p1, p0, Lcom/xiaozhi/android/activation/ActivationService;->activationCode:Lkotlinx/coroutines/flow/StateFlow;

    .line 36
    new-array p1, v1, [Ljavax/net/ssl/TrustManager;

    new-instance v1, Lcom/xiaozhi/android/activation/ActivationService$trustAllCerts$1;

    invoke-direct {v1}, Lcom/xiaozhi/android/activation/ActivationService$trustAllCerts$1;-><init>()V

    const/4 v2, 0x0

    aput-object v1, p1, v2

    iput-object p1, p0, Lcom/xiaozhi/android/activation/ActivationService;->trustAllCerts:[Ljavax/net/ssl/TrustManager;

    .line 42
    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 43
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0xf

    invoke-virtual {v1, v4, v5, v3}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 44
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v3}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 46
    const-string v3, "TLS"

    invoke-static {v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v3

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v3, v0, p1, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v3}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    const-string v4, "getSocketFactory(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    aget-object p1, p1, v2

    const-string v2, "null cannot be cast to non-null type javax.net.ssl.X509TrustManager"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljavax/net/ssl/X509TrustManager;

    .line 45
    invoke-virtual {v1, v3, p1}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 49
    new-instance v1, Lcom/xiaozhi/android/activation/ActivationService$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/xiaozhi/android/activation/ActivationService$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p1, v1}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 50
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaozhi/android/activation/ActivationService;->client:Lokhttp3/OkHttpClient;

    .line 56
    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaozhi/android/activation/ActivationService;->_otaError:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 57
    check-cast p1, Lkotlinx/coroutines/flow/StateFlow;

    iput-object p1, p0, Lcom/xiaozhi/android/activation/ActivationService;->otaError:Lkotlinx/coroutines/flow/StateFlow;

    return-void
.end method

.method public static final synthetic access$ensureHmacKey(Lcom/xiaozhi/android/activation/ActivationService;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/xiaozhi/android/activation/ActivationService;->ensureHmacKey(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$fetchOtaConfig(Lcom/xiaozhi/android/activation/ActivationService;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/xiaozhi/android/activation/ActivationService;->fetchOtaConfig(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$fetchOtaConfigWithRetry(Lcom/xiaozhi/android/activation/ActivationService;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/xiaozhi/android/activation/ActivationService;->fetchOtaConfigWithRetry(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$generateHmac(Lcom/xiaozhi/android/activation/ActivationService;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/xiaozhi/android/activation/ActivationService;->generateHmac(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final client$lambda$1(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private final ensureHmacKey(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Lcom/xiaozhi/android/activation/ActivationService$ensureHmacKey$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/xiaozhi/android/activation/ActivationService$ensureHmacKey$1;

    iget v3, v2, Lcom/xiaozhi/android/activation/ActivationService$ensureHmacKey$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v1, v2, Lcom/xiaozhi/android/activation/ActivationService$ensureHmacKey$1;->label:I

    sub-int/2addr v1, v4

    iput v1, v2, Lcom/xiaozhi/android/activation/ActivationService$ensureHmacKey$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/xiaozhi/android/activation/ActivationService$ensureHmacKey$1;

    invoke-direct {v2, v0, v1}, Lcom/xiaozhi/android/activation/ActivationService$ensureHmacKey$1;-><init>(Lcom/xiaozhi/android/activation/ActivationService;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/xiaozhi/android/activation/ActivationService$ensureHmacKey$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 180
    iget v4, v2, Lcom/xiaozhi/android/activation/ActivationService$ensureHmacKey$1;->label:I

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v4, :cond_4

    if-eq v4, v7, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v4, v2, Lcom/xiaozhi/android/activation/ActivationService$ensureHmacKey$1;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/security/MessageDigest;

    iget-object v6, v2, Lcom/xiaozhi/android/activation/ActivationService$ensureHmacKey$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lcom/xiaozhi/android/activation/ActivationService;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object v4, v2, Lcom/xiaozhi/android/activation/ActivationService$ensureHmacKey$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lcom/xiaozhi/android/activation/ActivationService;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 181
    iget-object v1, v0, Lcom/xiaozhi/android/activation/ActivationService;->configManager:Lcom/xiaozhi/android/config/ConfigManager;

    iput-object v0, v2, Lcom/xiaozhi/android/activation/ActivationService$ensureHmacKey$1;->L$0:Ljava/lang/Object;

    iput v7, v2, Lcom/xiaozhi/android/activation/ActivationService$ensureHmacKey$1;->label:I

    invoke-virtual {v1, v2}, Lcom/xiaozhi/android/config/ConfigManager;->getHmacKey(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_5

    return-object v3

    :cond_5
    move-object v4, v0

    .line 180
    :goto_1
    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_9

    .line 184
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 185
    iget-object v7, v4, Lcom/xiaozhi/android/activation/ActivationService;->configManager:Lcom/xiaozhi/android/config/ConfigManager;

    iput-object v4, v2, Lcom/xiaozhi/android/activation/ActivationService$ensureHmacKey$1;->L$0:Ljava/lang/Object;

    iput-object v1, v2, Lcom/xiaozhi/android/activation/ActivationService$ensureHmacKey$1;->L$1:Ljava/lang/Object;

    iput v6, v2, Lcom/xiaozhi/android/activation/ActivationService$ensureHmacKey$1;->label:I

    invoke-virtual {v7, v2}, Lcom/xiaozhi/android/config/ConfigManager;->getDeviceId(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v3, :cond_6

    return-object v3

    :cond_6
    move-object/from16 v17, v4

    move-object v4, v1

    move-object v1, v6

    move-object/from16 v6, v17

    :goto_2
    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_7

    const-string v1, "default"

    :cond_7
    sget-object v7, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const-string v7, "getBytes(...)"

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v8

    const-string v1, "digest(...)"

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    const-string v1, ""

    move-object v9, v1

    check-cast v9, Ljava/lang/CharSequence;

    new-instance v14, Lcom/xiaozhi/android/activation/ActivationService$$ExternalSyntheticLambda3;

    invoke-direct {v14}, Lcom/xiaozhi/android/activation/ActivationService$$ExternalSyntheticLambda3;-><init>()V

    const/16 v15, 0x1e

    const/16 v16, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v8 .. v16}, Lkotlin/collections/ArraysKt;->joinToString$default([BLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 187
    iget-object v4, v6, Lcom/xiaozhi/android/activation/ActivationService;->configManager:Lcom/xiaozhi/android/config/ConfigManager;

    const/4 v6, 0x0

    iput-object v6, v2, Lcom/xiaozhi/android/activation/ActivationService$ensureHmacKey$1;->L$0:Ljava/lang/Object;

    iput-object v6, v2, Lcom/xiaozhi/android/activation/ActivationService$ensureHmacKey$1;->L$1:Ljava/lang/Object;

    iput v5, v2, Lcom/xiaozhi/android/activation/ActivationService$ensureHmacKey$1;->label:I

    invoke-virtual {v4, v1, v2}, Lcom/xiaozhi/android/config/ConfigManager;->setHmacKey(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_8

    return-object v3

    .line 188
    :cond_8
    :goto_3
    const-string v1, "ActivationService"

    const-string v2, "Generated HMAC key for OTA"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_9
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method

.method private static final ensureHmacKey$lambda$2(B)Ljava/lang/CharSequence;
    .locals 1

    .line 186
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%02x"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "format(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method private final fetchOtaConfig(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/xiaozhi/android/activation/ActivationService$OtaResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "\u670d\u52a1\u5668\u8fd4\u56de "

    const-string v3, "OTA\u8bf7\u6c42\u5931\u8d25: "

    const-string v4, "OTA returned activation code (device not activated): "

    const-string v5, "OTA server returned "

    instance-of v6, v0, Lcom/xiaozhi/android/activation/ActivationService$fetchOtaConfig$1;

    if-eqz v6, :cond_0

    move-object v6, v0

    check-cast v6, Lcom/xiaozhi/android/activation/ActivationService$fetchOtaConfig$1;

    iget v7, v6, Lcom/xiaozhi/android/activation/ActivationService$fetchOtaConfig$1;->label:I

    const/high16 v8, -0x80000000

    and-int/2addr v7, v8

    if-eqz v7, :cond_0

    iget v0, v6, Lcom/xiaozhi/android/activation/ActivationService$fetchOtaConfig$1;->label:I

    sub-int/2addr v0, v8

    iput v0, v6, Lcom/xiaozhi/android/activation/ActivationService$fetchOtaConfig$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v6, Lcom/xiaozhi/android/activation/ActivationService$fetchOtaConfig$1;

    invoke-direct {v6, v1, v0}, Lcom/xiaozhi/android/activation/ActivationService$fetchOtaConfig$1;-><init>(Lcom/xiaozhi/android/activation/ActivationService;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v6, Lcom/xiaozhi/android/activation/ActivationService$fetchOtaConfig$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v7

    .line 248
    iget v8, v6, Lcom/xiaozhi/android/activation/ActivationService$fetchOtaConfig$1;->label:I

    const/4 v9, 0x1

    const-string v10, "ActivationService"

    const/4 v11, 0x0

    packed-switch v8, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v2, v6, Lcom/xiaozhi/android/activation/ActivationService$fetchOtaConfig$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlinx/serialization/json/JsonObject;

    iget-object v3, v6, Lcom/xiaozhi/android/activation/ActivationService$fetchOtaConfig$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lcom/xiaozhi/android/activation/ActivationService;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_8

    :catch_0
    move-exception v0

    goto :goto_1

    :pswitch_1
    iget-object v2, v6, Lcom/xiaozhi/android/activation/ActivationService$fetchOtaConfig$1;->L$2:Ljava/lang/Object;

    check-cast v2, Lkotlinx/serialization/json/JsonObject;

    iget-object v3, v6, Lcom/xiaozhi/android/activation/ActivationService$fetchOtaConfig$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lkotlinx/serialization/json/JsonObject;

    iget-object v5, v6, Lcom/xiaozhi/android/activation/ActivationService$fetchOtaConfig$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lcom/xiaozhi/android/activation/ActivationService;

    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_7

    :catch_1
    move-exception v0

    move-object v3, v5

    :goto_1
    move-object v1, v11

    goto/16 :goto_d

    :pswitch_2
    iget-object v8, v6, Lcom/xiaozhi/android/activation/ActivationService$fetchOtaConfig$1;->L$3:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v12, v6, Lcom/xiaozhi/android/activation/ActivationService$fetchOtaConfig$1;->L$2:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    iget-object v13, v6, Lcom/xiaozhi/android/activation/ActivationService$fetchOtaConfig$1;->L$1:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    iget-object v14, v6, Lcom/xiaozhi/android/activation/ActivationService$fetchOtaConfig$1;->L$0:Ljava/lang/Object;

    check-cast v14, Lcom/xiaozhi/android/activation/ActivationService;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_3
    iget-object v8, v6, Lcom/xiaozhi/android/activation/ActivationService$fetchOtaConfig$1;->L$2:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v12, v6, Lcom/xiaozhi/android/activation/ActivationService$fetchOtaConfig$1;->L$1:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    iget-object v13, v6, Lcom/xiaozhi/android/activation/ActivationService$fetchOtaConfig$1;->L$0:Ljava/lang/Object;

    check-cast v13, Lcom/xiaozhi/android/activation/ActivationService;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v16, v12

    move-object v12, v8

    move-object/from16 v8, v16

    goto :goto_4

    :pswitch_4
    iget-object v8, v6, Lcom/xiaozhi/android/activation/ActivationService$fetchOtaConfig$1;->L$1:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v12, v6, Lcom/xiaozhi/android/activation/ActivationService$fetchOtaConfig$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lcom/xiaozhi/android/activation/ActivationService;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v13, v12

    goto :goto_3

    :pswitch_5
    iget-object v8, v6, Lcom/xiaozhi/android/activation/ActivationService$fetchOtaConfig$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lcom/xiaozhi/android/activation/ActivationService;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_6
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 249
    iget-object v0, v1, Lcom/xiaozhi/android/activation/ActivationService;->configManager:Lcom/xiaozhi/android/config/ConfigManager;

    iput-object v1, v6, Lcom/xiaozhi/android/activation/ActivationService$fetchOtaConfig$1;->L$0:Ljava/lang/Object;

    iput v9, v6, Lcom/xiaozhi/android/activation/ActivationService$fetchOtaConfig$1;->label:I

    invoke-virtual {v0, v6}, Lcom/xiaozhi/android/config/ConfigManager;->getOtaUrl(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_1

    return-object v7

    :cond_1
    move-object v8, v1

    .line 248
    :goto_2
    check-cast v0, Ljava/lang/String;

    .line 250
    iget-object v12, v8, Lcom/xiaozhi/android/activation/ActivationService;->configManager:Lcom/xiaozhi/android/config/ConfigManager;

    iput-object v8, v6, Lcom/xiaozhi/android/activation/ActivationService$fetchOtaConfig$1;->L$0:Ljava/lang/Object;

    iput-object v0, v6, Lcom/xiaozhi/android/activation/ActivationService$fetchOtaConfig$1;->L$1:Ljava/lang/Object;

    const/4 v13, 0x2

    iput v13, v6, Lcom/xiaozhi/android/activation/ActivationService$fetchOtaConfig$1;->label:I

    invoke-virtual {v12, v6}, Lcom/xiaozhi/android/config/ConfigManager;->getDeviceId(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v7, :cond_2

    return-object v7

    :cond_2
    move-object v13, v8

    move-object v8, v0

    move-object v0, v12

    :goto_3
    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_3

    return-object v11

    .line 251
    :cond_3
    iget-object v12, v13, Lcom/xiaozhi/android/activation/ActivationService;->configManager:Lcom/xiaozhi/android/config/ConfigManager;

    iput-object v13, v6, Lcom/xiaozhi/android/activation/ActivationService$fetchOtaConfig$1;->L$0:Ljava/lang/Object;

    iput-object v8, v6, Lcom/xiaozhi/android/activation/ActivationService$fetchOtaConfig$1;->L$1:Ljava/lang/Object;

    iput-object v0, v6, Lcom/xiaozhi/android/activation/ActivationService$fetchOtaConfig$1;->L$2:Ljava/lang/Object;

    const/4 v14, 0x3

    iput v14, v6, Lcom/xiaozhi/android/activation/ActivationService$fetchOtaConfig$1;->label:I

    invoke-virtual {v12, v6}, Lcom/xiaozhi/android/config/ConfigManager;->getClientId(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v7, :cond_4

    return-object v7

    :cond_4
    move-object/from16 v16, v12

    move-object v12, v0

    move-object/from16 v0, v16

    .line 248
    :goto_4
    check-cast v0, Ljava/lang/String;

    .line 252
    iget-object v14, v13, Lcom/xiaozhi/android/activation/ActivationService;->configManager:Lcom/xiaozhi/android/config/ConfigManager;

    iput-object v13, v6, Lcom/xiaozhi/android/activation/ActivationService$fetchOtaConfig$1;->L$0:Ljava/lang/Object;

    iput-object v8, v6, Lcom/xiaozhi/android/activation/ActivationService$fetchOtaConfig$1;->L$1:Ljava/lang/Object;

    iput-object v12, v6, Lcom/xiaozhi/android/activation/ActivationService$fetchOtaConfig$1;->L$2:Ljava/lang/Object;

    iput-object v0, v6, Lcom/xiaozhi/android/activation/ActivationService$fetchOtaConfig$1;->L$3:Ljava/lang/Object;

    const/4 v15, 0x4

    iput v15, v6, Lcom/xiaozhi/android/activation/ActivationService$fetchOtaConfig$1;->label:I

    invoke-virtual {v14, v6}, Lcom/xiaozhi/android/config/ConfigManager;->getHmacKey(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v7, :cond_5

    return-object v7

    :cond_5
    move-object/from16 v16, v8

    move-object v8, v0

    move-object v0, v14

    move-object v14, v13

    move-object/from16 v13, v16

    :goto_5
    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, "unknown"

    .line 254
    :cond_6
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v9, "OTA request: url="

    invoke-direct {v15, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v15, ", deviceId="

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v15, ", clientId="

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    new-instance v9, Lkotlinx/serialization/json/JsonObjectBuilder;

    invoke-direct {v9}, Lkotlinx/serialization/json/JsonObjectBuilder;-><init>()V

    .line 386
    new-instance v15, Lkotlinx/serialization/json/JsonObjectBuilder;

    invoke-direct {v15}, Lkotlinx/serialization/json/JsonObjectBuilder;-><init>()V

    .line 258
    const-string v11, "version"

    const-string v1, "2.0.8"

    invoke-static {v15, v11, v1}, Lkotlinx/serialization/json/JsonElementBuildersKt;->put(Lkotlinx/serialization/json/JsonObjectBuilder;Ljava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;

    .line 259
    const-string v1, "elf_sha256"

    invoke-static {v15, v1, v0}, Lkotlinx/serialization/json/JsonElementBuildersKt;->put(Lkotlinx/serialization/json/JsonObjectBuilder;Ljava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;

    .line 260
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 388
    invoke-virtual {v15}, Lkotlinx/serialization/json/JsonObjectBuilder;->build()Lkotlinx/serialization/json/JsonObject;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/json/JsonElement;

    .line 257
    const-string v1, "application"

    invoke-virtual {v9, v1, v0}, Lkotlinx/serialization/json/JsonObjectBuilder;->put(Ljava/lang/String;Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonElement;

    .line 389
    new-instance v0, Lkotlinx/serialization/json/JsonObjectBuilder;

    invoke-direct {v0}, Lkotlinx/serialization/json/JsonObjectBuilder;-><init>()V

    .line 262
    const-string v1, "type"

    const-string v11, "bread-compact-wifi"

    invoke-static {v0, v1, v11}, Lkotlinx/serialization/json/JsonElementBuildersKt;->put(Lkotlinx/serialization/json/JsonObjectBuilder;Ljava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;

    .line 263
    const-string v1, "name"

    const-string v11, "Aetheris"

    invoke-static {v0, v1, v11}, Lkotlinx/serialization/json/JsonElementBuildersKt;->put(Lkotlinx/serialization/json/JsonObjectBuilder;Ljava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;

    .line 264
    const-string v1, "ip"

    const-string v11, "127.0.0.1"

    invoke-static {v0, v1, v11}, Lkotlinx/serialization/json/JsonElementBuildersKt;->put(Lkotlinx/serialization/json/JsonObjectBuilder;Ljava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;

    .line 265
    const-string v1, "mac"

    invoke-static {v0, v1, v12}, Lkotlinx/serialization/json/JsonElementBuildersKt;->put(Lkotlinx/serialization/json/JsonObjectBuilder;Ljava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;

    .line 266
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 391
    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonObjectBuilder;->build()Lkotlinx/serialization/json/JsonObject;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/json/JsonElement;

    .line 261
    const-string v1, "board"

    invoke-virtual {v9, v1, v0}, Lkotlinx/serialization/json/JsonObjectBuilder;->put(Ljava/lang/String;Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonElement;

    .line 392
    invoke-virtual {v9}, Lkotlinx/serialization/json/JsonObjectBuilder;->build()Lkotlinx/serialization/json/JsonObject;

    move-result-object v0

    .line 269
    sget-object v1, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    sget-object v9, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string v11, "application/json"

    invoke-virtual {v9, v11}, Lokhttp3/MediaType$Companion;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v9

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v9, v0}, Lokhttp3/RequestBody$Companion;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 270
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 271
    invoke-virtual {v1, v13}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 272
    const-string v9, "Device-Id"

    invoke-virtual {v1, v9, v12}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 273
    const-string v9, "Client-Id"

    invoke-virtual {v1, v9, v8}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 274
    const-string v8, "Content-Type"

    invoke-virtual {v1, v8, v11}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 275
    const-string v8, "User-Agent"

    const-string v9, "bread-compact-wifi/Aetheris-2.0.8"

    invoke-virtual {v1, v8, v9}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 276
    const-string v8, "Accept-Language"

    const-string v9, "zh-CN"

    invoke-virtual {v1, v8, v9}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 277
    invoke-virtual {v1, v0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 278
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 281
    :try_start_2
    iget-object v1, v14, Lcom/xiaozhi/android/activation/ActivationService;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    .line 282
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    if-eqz v1, :cond_7

    :try_start_3
    invoke-virtual {v1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    if-nez v1, :cond_8

    :cond_7
    :try_start_4
    const-string v1, ""

    .line 283
    :cond_8
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    const/16 v9, 0xc8

    if-eq v8, v9, :cond_c

    .line 284
    :try_start_5
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 287
    :try_start_6
    sget-object v4, Lcom/xiaozhi/android/activation/ActivationService;->json:Lkotlinx/serialization/json/Json;

    invoke-virtual {v4, v1}, Lkotlinx/serialization/json/Json;->parseToJsonElement(Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/serialization/json/JsonElementKt;->getJsonObject(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonObject;

    move-result-object v1

    .line 288
    const-string v4, "message"

    invoke-virtual {v1, v4}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlinx/serialization/json/JsonElement;

    if-eqz v4, :cond_9

    invoke-static {v4}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_b

    .line 289
    :cond_9
    const-string v4, "error"

    invoke-virtual {v1, v4}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/json/JsonElement;

    if-eqz v1, :cond_a

    invoke-static {v1}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    .line 290
    :cond_a
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_6

    .line 292
    :catch_2
    :try_start_7
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 294
    :cond_b
    :goto_6
    iget-object v0, v14, Lcom/xiaozhi/android/activation/ActivationService;->_otaError:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    const/4 v1, 0x0

    return-object v1

    .line 297
    :cond_c
    :try_start_8
    sget-object v0, Lcom/xiaozhi/android/activation/ActivationService;->json:Lkotlinx/serialization/json/Json;

    invoke-virtual {v0, v1}, Lkotlinx/serialization/json/Json;->parseToJsonElement(Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/serialization/json/JsonElementKt;->getJsonObject(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonObject;

    move-result-object v3

    .line 300
    const-string v0, "websocket"

    invoke-virtual {v3, v0}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/json/JsonElement;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    if-eqz v0, :cond_11

    :try_start_9
    invoke-static {v0}, Lkotlinx/serialization/json/JsonElementKt;->getJsonObject(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonObject;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 301
    const-string v0, "url"

    invoke-virtual {v2, v0}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/json/JsonElement;

    if-eqz v0, :cond_e

    invoke-static {v0}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 302
    iget-object v1, v14, Lcom/xiaozhi/android/activation/ActivationService;->configManager:Lcom/xiaozhi/android/config/ConfigManager;

    iput-object v14, v6, Lcom/xiaozhi/android/activation/ActivationService$fetchOtaConfig$1;->L$0:Ljava/lang/Object;

    iput-object v3, v6, Lcom/xiaozhi/android/activation/ActivationService$fetchOtaConfig$1;->L$1:Ljava/lang/Object;

    iput-object v2, v6, Lcom/xiaozhi/android/activation/ActivationService$fetchOtaConfig$1;->L$2:Ljava/lang/Object;

    const/4 v5, 0x0

    iput-object v5, v6, Lcom/xiaozhi/android/activation/ActivationService$fetchOtaConfig$1;->L$3:Ljava/lang/Object;

    const/4 v5, 0x5

    iput v5, v6, Lcom/xiaozhi/android/activation/ActivationService$fetchOtaConfig$1;->label:I

    invoke-virtual {v1, v0, v6}, Lcom/xiaozhi/android/config/ConfigManager;->setWebsocketUrl(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_d

    return-object v7

    :cond_d
    move-object v5, v14

    :goto_7
    move-object v14, v5

    .line 304
    :cond_e
    const-string v0, "token"

    invoke-virtual {v2, v0}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/json/JsonElement;

    if-eqz v0, :cond_11

    invoke-static {v0}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 305
    iget-object v1, v14, Lcom/xiaozhi/android/activation/ActivationService;->configManager:Lcom/xiaozhi/android/config/ConfigManager;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_f

    const-string v0, "test-token"

    :cond_f
    check-cast v0, Ljava/lang/String;

    iput-object v14, v6, Lcom/xiaozhi/android/activation/ActivationService$fetchOtaConfig$1;->L$0:Ljava/lang/Object;

    iput-object v3, v6, Lcom/xiaozhi/android/activation/ActivationService$fetchOtaConfig$1;->L$1:Ljava/lang/Object;

    const/4 v2, 0x0

    iput-object v2, v6, Lcom/xiaozhi/android/activation/ActivationService$fetchOtaConfig$1;->L$2:Ljava/lang/Object;

    iput-object v2, v6, Lcom/xiaozhi/android/activation/ActivationService$fetchOtaConfig$1;->L$3:Ljava/lang/Object;

    const/4 v2, 0x6

    iput v2, v6, Lcom/xiaozhi/android/activation/ActivationService$fetchOtaConfig$1;->label:I

    invoke-virtual {v1, v0, v6}, Lcom/xiaozhi/android/config/ConfigManager;->setAccessToken(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    if-ne v0, v7, :cond_10

    return-object v7

    :cond_10
    move-object v2, v3

    move-object v3, v14

    :goto_8
    move-object v14, v3

    move-object v3, v2

    goto :goto_9

    :catch_3
    move-exception v0

    move-object v3, v14

    const/4 v1, 0x0

    goto/16 :goto_d

    .line 310
    :cond_11
    :goto_9
    :try_start_a
    const-string v0, "mqtt"

    invoke-virtual {v3, v0}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/json/JsonElement;

    .line 313
    const-string v0, "activation"

    invoke-virtual {v3, v0}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/json/JsonElement;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    if-eqz v0, :cond_12

    :try_start_b
    invoke-static {v0}, Lkotlinx/serialization/json/JsonElementKt;->getJsonObject(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonObject;

    move-result-object v0

    goto :goto_a

    :cond_12
    const/4 v0, 0x0

    :goto_a
    if-eqz v0, :cond_13

    .line 314
    const-string v1, "code"

    invoke-virtual {v0, v1}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/json/JsonElement;

    if-eqz v0, :cond_13

    invoke-static {v0}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_b

    :cond_13
    const/4 v1, 0x0

    :goto_b
    if-eqz v1, :cond_14

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v0, v14, Lcom/xiaozhi/android/activation/ActivationService;->_activationCode:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 320
    iget-object v0, v14, Lcom/xiaozhi/android/activation/ActivationService;->_activationState:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v2, Lcom/xiaozhi/android/activation/ActivationService$ActivationState;->NEED_ACTIVATION:Lcom/xiaozhi/android/activation/ActivationService$ActivationState;

    invoke-interface {v0, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 321
    iget-object v0, v14, Lcom/xiaozhi/android/activation/ActivationService;->_otaError:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 322
    new-instance v0, Lcom/xiaozhi/android/activation/ActivationService$OtaResult;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaozhi/android/activation/ActivationService$OtaResult;-><init>(Ljava/lang/String;Z)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    return-object v0

    .line 326
    :cond_14
    :try_start_c
    const-string v0, "OTA succeeded, device activated, websocket config updated"

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v0, v14, Lcom/xiaozhi/android/activation/ActivationService;->_activationCode:Lkotlinx/coroutines/flow/MutableStateFlow;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    const/4 v1, 0x0

    :try_start_d
    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 328
    iget-object v0, v14, Lcom/xiaozhi/android/activation/ActivationService;->_activationState:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v2, Lcom/xiaozhi/android/activation/ActivationService$ActivationState;->ACTIVATED:Lcom/xiaozhi/android/activation/ActivationService$ActivationState;

    invoke-interface {v0, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 329
    iget-object v0, v14, Lcom/xiaozhi/android/activation/ActivationService;->_otaError:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 330
    new-instance v0, Lcom/xiaozhi/android/activation/ActivationService$OtaResult;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/xiaozhi/android/activation/ActivationService$OtaResult;-><init>(Ljava/lang/String;Z)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    move-object v11, v0

    goto :goto_e

    :catch_4
    move-exception v0

    goto :goto_c

    :catch_5
    move-exception v0

    const/4 v1, 0x0

    :goto_c
    move-object v3, v14

    .line 332
    :goto_d
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "OTA request failed: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v4, v0

    check-cast v4, Ljava/lang/Throwable;

    invoke-static {v10, v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 333
    iget-object v2, v3, Lcom/xiaozhi/android/activation/ActivationService;->_otaError:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_15

    const-string v0, "\u672a\u77e5\u9519\u8bef"

    :cond_15
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u7f51\u7edc\u9519\u8bef: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    move-object v11, v1

    :goto_e
    return-object v11

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final fetchOtaConfigWithRetry(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/xiaozhi/android/activation/ActivationService$OtaResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/xiaozhi/android/activation/ActivationService$fetchOtaConfigWithRetry$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/xiaozhi/android/activation/ActivationService$fetchOtaConfigWithRetry$1;

    iget v1, v0, Lcom/xiaozhi/android/activation/ActivationService$fetchOtaConfigWithRetry$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/xiaozhi/android/activation/ActivationService$fetchOtaConfigWithRetry$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/xiaozhi/android/activation/ActivationService$fetchOtaConfigWithRetry$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/xiaozhi/android/activation/ActivationService$fetchOtaConfigWithRetry$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaozhi/android/activation/ActivationService$fetchOtaConfigWithRetry$1;-><init>(Lcom/xiaozhi/android/activation/ActivationService;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/xiaozhi/android/activation/ActivationService$fetchOtaConfigWithRetry$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 164
    iget v2, v0, Lcom/xiaozhi/android/activation/ActivationService$fetchOtaConfigWithRetry$1;->label:I

    const-string v3, "ActivationService"

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget v2, v0, Lcom/xiaozhi/android/activation/ActivationService$fetchOtaConfigWithRetry$1;->I$1:I

    iget v6, v0, Lcom/xiaozhi/android/activation/ActivationService$fetchOtaConfigWithRetry$1;->I$0:I

    iget-object v7, v0, Lcom/xiaozhi/android/activation/ActivationService$fetchOtaConfigWithRetry$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lcom/xiaozhi/android/activation/ActivationService;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget v2, v0, Lcom/xiaozhi/android/activation/ActivationService$fetchOtaConfigWithRetry$1;->I$1:I

    iget v6, v0, Lcom/xiaozhi/android/activation/ActivationService$fetchOtaConfigWithRetry$1;->I$0:I

    iget-object v7, v0, Lcom/xiaozhi/android/activation/ActivationService$fetchOtaConfigWithRetry$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lcom/xiaozhi/android/activation/ActivationService;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v7, p0

    move v6, v4

    move v2, v5

    :goto_1
    if-le v2, v5, :cond_4

    .line 168
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v8, "OTA retry attempt "

    invoke-direct {p1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v8, "/"

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iput-object v7, v0, Lcom/xiaozhi/android/activation/ActivationService$fetchOtaConfigWithRetry$1;->L$0:Ljava/lang/Object;

    iput v6, v0, Lcom/xiaozhi/android/activation/ActivationService$fetchOtaConfigWithRetry$1;->I$0:I

    iput v2, v0, Lcom/xiaozhi/android/activation/ActivationService$fetchOtaConfigWithRetry$1;->I$1:I

    iput v5, v0, Lcom/xiaozhi/android/activation/ActivationService$fetchOtaConfigWithRetry$1;->label:I

    const-wide/16 v8, 0x7d0

    invoke-static {v8, v9, v0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    .line 171
    :cond_4
    :goto_2
    iput-object v7, v0, Lcom/xiaozhi/android/activation/ActivationService$fetchOtaConfigWithRetry$1;->L$0:Ljava/lang/Object;

    iput v6, v0, Lcom/xiaozhi/android/activation/ActivationService$fetchOtaConfigWithRetry$1;->I$0:I

    iput v2, v0, Lcom/xiaozhi/android/activation/ActivationService$fetchOtaConfigWithRetry$1;->I$1:I

    iput v4, v0, Lcom/xiaozhi/android/activation/ActivationService$fetchOtaConfigWithRetry$1;->label:I

    invoke-direct {v7, v0}, Lcom/xiaozhi/android/activation/ActivationService;->fetchOtaConfig(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    .line 164
    :cond_5
    :goto_3
    check-cast p1, Lcom/xiaozhi/android/activation/ActivationService$OtaResult;

    if-eqz p1, :cond_6

    return-object p1

    :cond_6
    if-eq v2, v6, :cond_7

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 174
    :cond_7
    iget-object p1, v7, Lcom/xiaozhi/android/activation/ActivationService;->_otaError:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_8

    const-string p1, "OTA\u8bf7\u6c42\u5931\u8d25"

    .line 175
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OTA request failed after "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " attempts: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v0, v7, Lcom/xiaozhi/android/activation/ActivationService;->_otaError:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OTA\u8bf7\u6c42\u5931\u8d25\uff08\u91cd\u8bd5"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u6b21\uff09: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private final generateChallenge()Ljava/lang/String;
    .locals 11

    .line 348
    new-instance v0, Lkotlin/ranges/IntRange;

    const/4 v1, 0x1

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    check-cast v0, Ljava/lang/Iterable;

    .line 393
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 394
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lkotlin/collections/IntIterator;

    invoke-virtual {v2}, Lkotlin/collections/IntIterator;->nextInt()I

    .line 348
    const-string v2, "0123456789abcdef"

    check-cast v2, Ljava/lang/CharSequence;

    sget-object v3, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    check-cast v3, Lkotlin/random/Random;

    invoke-static {v2, v3}, Lkotlin/text/StringsKt;->random(Ljava/lang/CharSequence;Lkotlin/random/Random;)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    .line 395
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 396
    :cond_0
    check-cast v1, Ljava/util/List;

    .line 393
    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    .line 348
    const-string v0, ""

    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    const/16 v9, 0x3e

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final generateDeviceId()Ljava/lang/String;
    .locals 10

    const/4 v0, 0x6

    .line 340
    new-array v1, v0, [B

    .line 341
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v0, 0x0

    .line 343
    aget-byte v2, v1, v0

    or-int/lit8 v2, v2, 0x2

    and-int/lit16 v2, v2, 0xfe

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 344
    const-string v0, ":"

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    new-instance v7, Lcom/xiaozhi/android/activation/ActivationService$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Lcom/xiaozhi/android/activation/ActivationService$$ExternalSyntheticLambda0;-><init>()V

    const/16 v8, 0x1e

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v9}, Lkotlin/collections/ArraysKt;->joinToString$default([BLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final generateDeviceId$lambda$13(B)Ljava/lang/CharSequence;
    .locals 1

    .line 344
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%02x"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "format(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method private final generateHmac(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Lcom/xiaozhi/android/activation/ActivationService$generateHmac$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/xiaozhi/android/activation/ActivationService$generateHmac$1;

    iget v3, v2, Lcom/xiaozhi/android/activation/ActivationService$generateHmac$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v1, v2, Lcom/xiaozhi/android/activation/ActivationService$generateHmac$1;->label:I

    sub-int/2addr v1, v4

    iput v1, v2, Lcom/xiaozhi/android/activation/ActivationService$generateHmac$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/xiaozhi/android/activation/ActivationService$generateHmac$1;

    invoke-direct {v2, v0, v1}, Lcom/xiaozhi/android/activation/ActivationService$generateHmac$1;-><init>(Lcom/xiaozhi/android/activation/ActivationService;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/xiaozhi/android/activation/ActivationService$generateHmac$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 351
    iget v4, v2, Lcom/xiaozhi/android/activation/ActivationService$generateHmac$1;->label:I

    const-string v5, ""

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const-string v9, "getBytes(...)"

    if-eqz v4, :cond_4

    if-eq v4, v8, :cond_3

    if-eq v4, v7, :cond_2

    if-ne v4, v6, :cond_1

    iget-object v3, v2, Lcom/xiaozhi/android/activation/ActivationService$generateHmac$1;->L$1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v2, v2, Lcom/xiaozhi/android/activation/ActivationService$generateHmac$1;->L$0:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v4, v2, Lcom/xiaozhi/android/activation/ActivationService$generateHmac$1;->L$2:Ljava/lang/Object;

    check-cast v4, Ljava/security/MessageDigest;

    iget-object v7, v2, Lcom/xiaozhi/android/activation/ActivationService$generateHmac$1;->L$1:Ljava/lang/Object;

    check-cast v7, Lcom/xiaozhi/android/activation/ActivationService;

    iget-object v8, v2, Lcom/xiaozhi/android/activation/ActivationService$generateHmac$1;->L$0:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v19, v7

    move-object v7, v4

    move-object v4, v8

    move-object/from16 v8, v19

    goto :goto_2

    :cond_3
    iget-object v4, v2, Lcom/xiaozhi/android/activation/ActivationService$generateHmac$1;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v8, v2, Lcom/xiaozhi/android/activation/ActivationService$generateHmac$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lcom/xiaozhi/android/activation/ActivationService;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 352
    iget-object v1, v0, Lcom/xiaozhi/android/activation/ActivationService;->configManager:Lcom/xiaozhi/android/config/ConfigManager;

    iput-object v0, v2, Lcom/xiaozhi/android/activation/ActivationService$generateHmac$1;->L$0:Ljava/lang/Object;

    move-object/from16 v4, p1

    iput-object v4, v2, Lcom/xiaozhi/android/activation/ActivationService$generateHmac$1;->L$1:Ljava/lang/Object;

    iput v8, v2, Lcom/xiaozhi/android/activation/ActivationService$generateHmac$1;->label:I

    invoke-virtual {v1, v2}, Lcom/xiaozhi/android/config/ConfigManager;->getHmacKey(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_5

    return-object v3

    :cond_5
    move-object v8, v0

    :goto_1
    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_a

    move-object v1, v8

    check-cast v1, Lcom/xiaozhi/android/activation/ActivationService;

    .line 354
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 355
    iget-object v10, v8, Lcom/xiaozhi/android/activation/ActivationService;->configManager:Lcom/xiaozhi/android/config/ConfigManager;

    iput-object v4, v2, Lcom/xiaozhi/android/activation/ActivationService$generateHmac$1;->L$0:Ljava/lang/Object;

    iput-object v8, v2, Lcom/xiaozhi/android/activation/ActivationService$generateHmac$1;->L$1:Ljava/lang/Object;

    iput-object v1, v2, Lcom/xiaozhi/android/activation/ActivationService$generateHmac$1;->L$2:Ljava/lang/Object;

    iput v7, v2, Lcom/xiaozhi/android/activation/ActivationService$generateHmac$1;->label:I

    invoke-virtual {v10, v2}, Lcom/xiaozhi/android/config/ConfigManager;->getDeviceId(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v3, :cond_6

    return-object v3

    :cond_6
    move-object/from16 v19, v7

    move-object v7, v1

    move-object/from16 v1, v19

    :goto_2
    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_7

    sget-object v10, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v1, :cond_8

    :cond_7
    const-string v1, "default"

    sget-object v10, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v7, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v10

    const-string v1, "digest(...)"

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 356
    move-object v11, v5

    check-cast v11, Ljava/lang/CharSequence;

    new-instance v16, Lcom/xiaozhi/android/activation/ActivationService$$ExternalSyntheticLambda4;

    invoke-direct/range {v16 .. v16}, Lcom/xiaozhi/android/activation/ActivationService$$ExternalSyntheticLambda4;-><init>()V

    const/16 v17, 0x1e

    const/16 v18, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v10 .. v18}, Lkotlin/collections/ArraysKt;->joinToString$default([BLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 357
    iget-object v7, v8, Lcom/xiaozhi/android/activation/ActivationService;->configManager:Lcom/xiaozhi/android/config/ConfigManager;

    iput-object v4, v2, Lcom/xiaozhi/android/activation/ActivationService$generateHmac$1;->L$0:Ljava/lang/Object;

    iput-object v1, v2, Lcom/xiaozhi/android/activation/ActivationService$generateHmac$1;->L$1:Ljava/lang/Object;

    const/4 v8, 0x0

    iput-object v8, v2, Lcom/xiaozhi/android/activation/ActivationService$generateHmac$1;->L$2:Ljava/lang/Object;

    iput v6, v2, Lcom/xiaozhi/android/activation/ActivationService$generateHmac$1;->label:I

    invoke-virtual {v7, v1, v2}, Lcom/xiaozhi/android/config/ConfigManager;->setHmacKey(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_9

    return-object v3

    :cond_9
    move-object v3, v1

    move-object v2, v4

    :goto_3
    move-object v4, v2

    move-object v1, v3

    .line 360
    :cond_a
    const-string v2, "HmacSHA256"

    invoke-static {v2}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v3

    .line 361
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v7, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v6, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    check-cast v6, Ljava/security/Key;

    invoke-virtual {v3, v6}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 362
    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v10

    const-string v1, "doFinal(...)"

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v11, v5

    check-cast v11, Ljava/lang/CharSequence;

    new-instance v16, Lcom/xiaozhi/android/activation/ActivationService$$ExternalSyntheticLambda5;

    invoke-direct/range {v16 .. v16}, Lcom/xiaozhi/android/activation/ActivationService$$ExternalSyntheticLambda5;-><init>()V

    const/16 v17, 0x1e

    const/16 v18, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v10 .. v18}, Lkotlin/collections/ArraysKt;->joinToString$default([BLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static final generateHmac$lambda$16$lambda$15(B)Ljava/lang/CharSequence;
    .locals 1

    .line 356
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%02x"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "format(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method private static final generateHmac$lambda$17(B)Ljava/lang/CharSequence;
    .locals 1

    .line 362
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%02x"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "format(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method private static final json$lambda$18(Lkotlinx/serialization/json/JsonBuilder;)Lkotlin/Unit;
    .locals 1

    const-string v0, "$this$Json"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 26
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/JsonBuilder;->setIgnoreUnknownKeys(Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final activate(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    instance-of v2, v0, Lcom/xiaozhi/android/activation/ActivationService$activate$1;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;

    iget v3, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v0, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->label:I

    sub-int/2addr v0, v4

    iput v0, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;

    invoke-direct {v2, v1, v0}, Lcom/xiaozhi/android/activation/ActivationService$activate$1;-><init>(Lcom/xiaozhi/android/activation/ActivationService;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 192
    iget v4, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->label:I

    const-string v5, ""

    const-string v6, "application/json"

    const-string v10, "ActivationService"

    packed-switch v4, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget v4, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->I$1:I

    iget v5, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->I$0:I

    iget-object v6, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lokhttp3/Request;

    iget-object v13, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->L$0:Ljava/lang/Object;

    check-cast v13, Lcom/xiaozhi/android/activation/ActivationService;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_1
    iget v4, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->I$1:I

    iget v5, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->I$0:I

    iget-object v6, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lokhttp3/Request;

    iget-object v13, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->L$0:Ljava/lang/Object;

    check-cast v13, Lcom/xiaozhi/android/activation/ActivationService;

    :goto_1
    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_9

    :pswitch_2
    iget v4, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->I$1:I

    iget v5, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->I$0:I

    iget-object v6, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lokhttp3/Request;

    iget-object v13, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->L$0:Ljava/lang/Object;

    check-cast v13, Lcom/xiaozhi/android/activation/ActivationService;

    goto :goto_1

    :pswitch_3
    iget v4, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->I$1:I

    iget v5, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->I$0:I

    iget-object v6, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lokhttp3/Request;

    iget-object v13, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->L$0:Ljava/lang/Object;

    check-cast v13, Lcom/xiaozhi/android/activation/ActivationService;

    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v1, 0x1

    goto/16 :goto_a

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    goto/16 :goto_b

    :pswitch_4
    iget-object v4, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->L$3:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lokhttp3/Request$Builder;

    iget-object v13, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->L$1:Ljava/lang/Object;

    check-cast v13, Lokhttp3/RequestBody;

    iget-object v14, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->L$0:Ljava/lang/Object;

    check-cast v14, Lcom/xiaozhi/android/activation/ActivationService;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_5
    iget-object v4, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->L$3:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v13, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->L$2:Ljava/lang/Object;

    check-cast v13, Lokhttp3/Request$Builder;

    iget-object v14, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->L$1:Ljava/lang/Object;

    check-cast v14, Lokhttp3/RequestBody;

    iget-object v15, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->L$0:Ljava/lang/Object;

    check-cast v15, Lcom/xiaozhi/android/activation/ActivationService;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v16, v5

    goto/16 :goto_5

    :pswitch_6
    iget-object v4, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->L$10:Ljava/lang/Object;

    check-cast v4, Lkotlinx/serialization/json/JsonObjectBuilder;

    iget-object v13, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->L$9:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    iget-object v14, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->L$8:Ljava/lang/Object;

    check-cast v14, Lkotlinx/serialization/json/JsonObjectBuilder;

    iget-object v15, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->L$7:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    iget-object v8, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->L$6:Ljava/lang/Object;

    check-cast v8, Lkotlinx/serialization/json/JsonObjectBuilder;

    iget-object v9, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->L$5:Ljava/lang/Object;

    check-cast v9, Lkotlinx/serialization/json/JsonObjectBuilder;

    iget-object v12, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->L$4:Ljava/lang/Object;

    check-cast v12, Lkotlinx/serialization/json/JsonObjectBuilder;

    iget-object v7, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->L$3:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v11, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->L$2:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    move-object/from16 v16, v4

    iget-object v4, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    move-object/from16 v17, v4

    iget-object v4, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lcom/xiaozhi/android/activation/ActivationService;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, v14

    move-object v14, v12

    move-object v12, v9

    move-object v9, v7

    move-object v7, v4

    move-object/from16 v4, v16

    move-object/from16 v16, v5

    move-object v5, v15

    move-object v15, v13

    move-object v13, v11

    move-object v11, v8

    move-object/from16 v8, v17

    goto/16 :goto_4

    :pswitch_7
    iget-object v4, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->L$2:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v7, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->L$1:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v8, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lcom/xiaozhi/android/activation/ActivationService;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v11, v4

    move-object v4, v8

    goto :goto_3

    :pswitch_8
    iget-object v4, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v7, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lcom/xiaozhi/android/activation/ActivationService;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_9
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 193
    iget-object v0, v1, Lcom/xiaozhi/android/activation/ActivationService;->_activationState:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v4, Lcom/xiaozhi/android/activation/ActivationService$ActivationState;->ACTIVATING:Lcom/xiaozhi/android/activation/ActivationService$ActivationState;

    invoke-interface {v0, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 194
    invoke-direct/range {p0 .. p0}, Lcom/xiaozhi/android/activation/ActivationService;->generateChallenge()Ljava/lang/String;

    move-result-object v4

    .line 195
    iput-object v1, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->L$0:Ljava/lang/Object;

    iput-object v4, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->L$1:Ljava/lang/Object;

    const/4 v7, 0x1

    iput v7, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->label:I

    invoke-direct {v1, v4, v2}, Lcom/xiaozhi/android/activation/ActivationService;->generateHmac(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_1

    return-object v3

    :cond_1
    move-object v7, v1

    .line 192
    :goto_2
    check-cast v0, Ljava/lang/String;

    .line 197
    iget-object v8, v7, Lcom/xiaozhi/android/activation/ActivationService;->configManager:Lcom/xiaozhi/android/config/ConfigManager;

    iput-object v7, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->L$0:Ljava/lang/Object;

    iput-object v4, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->L$1:Ljava/lang/Object;

    iput-object v0, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->L$2:Ljava/lang/Object;

    const/4 v9, 0x2

    iput v9, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->label:I

    invoke-virtual {v8, v2}, Lcom/xiaozhi/android/config/ConfigManager;->getOtaUrl(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v3, :cond_2

    return-object v3

    :cond_2
    move-object v11, v0

    move-object v0, v8

    move-object/from16 v18, v7

    move-object v7, v4

    move-object/from16 v4, v18

    .line 192
    :goto_3
    check-cast v0, Ljava/lang/String;

    const/4 v8, 0x1

    .line 198
    new-array v9, v8, [C

    const/16 v8, 0x2f

    const/4 v12, 0x0

    aput-char v8, v9, v12

    invoke-static {v0, v9}, Lkotlin/text/StringsKt;->trimEnd(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "/activate"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 378
    new-instance v14, Lkotlinx/serialization/json/JsonObjectBuilder;

    invoke-direct {v14}, Lkotlinx/serialization/json/JsonObjectBuilder;-><init>()V

    .line 380
    new-instance v8, Lkotlinx/serialization/json/JsonObjectBuilder;

    invoke-direct {v8}, Lkotlinx/serialization/json/JsonObjectBuilder;-><init>()V

    .line 202
    const-string v9, "algorithm"

    const-string v12, "hmac-sha256"

    invoke-static {v8, v9, v12}, Lkotlinx/serialization/json/JsonElementBuildersKt;->put(Lkotlinx/serialization/json/JsonObjectBuilder;Ljava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;

    .line 203
    iget-object v9, v4, Lcom/xiaozhi/android/activation/ActivationService;->configManager:Lcom/xiaozhi/android/config/ConfigManager;

    iput-object v4, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->L$0:Ljava/lang/Object;

    iput-object v7, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->L$1:Ljava/lang/Object;

    iput-object v11, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->L$2:Ljava/lang/Object;

    iput-object v0, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->L$3:Ljava/lang/Object;

    iput-object v14, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->L$4:Ljava/lang/Object;

    iput-object v8, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->L$5:Ljava/lang/Object;

    iput-object v8, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->L$6:Ljava/lang/Object;

    const-string v15, "Payload"

    iput-object v15, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->L$7:Ljava/lang/Object;

    iput-object v14, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->L$8:Ljava/lang/Object;

    const-string v13, "serial_number"

    iput-object v13, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->L$9:Ljava/lang/Object;

    iput-object v8, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->L$10:Ljava/lang/Object;

    const/4 v12, 0x3

    iput v12, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->label:I

    invoke-virtual {v9, v2}, Lcom/xiaozhi/android/config/ConfigManager;->getSerialNumber(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v3, :cond_3

    return-object v3

    :cond_3
    move-object/from16 v16, v5

    move-object v12, v8

    move-object v1, v14

    move-object v5, v15

    move-object v15, v13

    move-object v8, v7

    move-object v13, v11

    move-object v7, v4

    move-object v4, v12

    move-object v11, v4

    move-object/from16 v18, v9

    move-object v9, v0

    move-object/from16 v0, v18

    :goto_4
    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_4

    move-object/from16 v0, v16

    :cond_4
    invoke-static {v4, v15, v0}, Lkotlinx/serialization/json/JsonElementBuildersKt;->put(Lkotlinx/serialization/json/JsonObjectBuilder;Ljava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;

    .line 204
    const-string v0, "challenge"

    invoke-static {v11, v0, v8}, Lkotlinx/serialization/json/JsonElementBuildersKt;->put(Lkotlinx/serialization/json/JsonObjectBuilder;Ljava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;

    .line 205
    const-string v0, "hmac"

    invoke-static {v11, v0, v13}, Lkotlinx/serialization/json/JsonElementBuildersKt;->put(Lkotlinx/serialization/json/JsonObjectBuilder;Ljava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;

    .line 206
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 382
    invoke-virtual {v12}, Lkotlinx/serialization/json/JsonObjectBuilder;->build()Lkotlinx/serialization/json/JsonObject;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/json/JsonElement;

    .line 201
    invoke-virtual {v1, v5, v0}, Lkotlinx/serialization/json/JsonObjectBuilder;->put(Ljava/lang/String;Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonElement;

    .line 383
    invoke-virtual {v14}, Lkotlinx/serialization/json/JsonObjectBuilder;->build()Lkotlinx/serialization/json/JsonObject;

    move-result-object v0

    .line 209
    sget-object v1, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    sget-object v4, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    invoke-virtual {v4, v6}, Lokhttp3/MediaType$Companion;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v4

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lokhttp3/RequestBody$Companion;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 210
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 211
    invoke-virtual {v1, v9}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 212
    const-string v4, "Activation-Version"

    const-string v5, "2"

    invoke-virtual {v1, v4, v5}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v13

    .line 213
    iget-object v1, v7, Lcom/xiaozhi/android/activation/ActivationService;->configManager:Lcom/xiaozhi/android/config/ConfigManager;

    iput-object v7, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->L$0:Ljava/lang/Object;

    iput-object v0, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->L$1:Ljava/lang/Object;

    iput-object v13, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->L$2:Ljava/lang/Object;

    const-string v4, "Device-Id"

    iput-object v4, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->L$3:Ljava/lang/Object;

    const/4 v5, 0x0

    iput-object v5, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->L$4:Ljava/lang/Object;

    iput-object v5, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->L$5:Ljava/lang/Object;

    iput-object v5, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->L$6:Ljava/lang/Object;

    iput-object v5, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->L$7:Ljava/lang/Object;

    iput-object v5, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->L$8:Ljava/lang/Object;

    iput-object v5, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->L$9:Ljava/lang/Object;

    iput-object v5, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->L$10:Ljava/lang/Object;

    const/4 v5, 0x4

    iput v5, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->label:I

    invoke-virtual {v1, v2}, Lcom/xiaozhi/android/config/ConfigManager;->getDeviceId(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_5

    return-object v3

    :cond_5
    move-object v14, v0

    move-object v0, v1

    move-object v15, v7

    :goto_5
    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_6

    move-object/from16 v5, v16

    goto :goto_6

    :cond_6
    move-object v5, v0

    :goto_6
    invoke-virtual {v13, v4, v5}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v5

    .line 214
    iget-object v0, v15, Lcom/xiaozhi/android/activation/ActivationService;->configManager:Lcom/xiaozhi/android/config/ConfigManager;

    iput-object v15, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->L$0:Ljava/lang/Object;

    iput-object v14, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->L$1:Ljava/lang/Object;

    iput-object v5, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->L$2:Ljava/lang/Object;

    const-string v4, "Client-Id"

    iput-object v4, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->L$3:Ljava/lang/Object;

    const/4 v1, 0x5

    iput v1, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->label:I

    invoke-virtual {v0, v2}, Lcom/xiaozhi/android/config/ConfigManager;->getClientId(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_7

    return-object v3

    :cond_7
    move-object v13, v14

    move-object v14, v15

    :goto_7
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v4, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 215
    const-string v1, "Content-Type"

    invoke-virtual {v0, v1, v6}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 216
    invoke-virtual {v0, v13}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 217
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    const/16 v1, 0x3c

    move-object v6, v0

    move v5, v1

    move-object v13, v14

    const/4 v4, 0x1

    .line 223
    :goto_8
    :try_start_2
    iget-object v0, v13, Lcom/xiaozhi/android/activation/ActivationService;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0, v6}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    .line 224
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v1

    const/16 v7, 0xc8

    if-eq v1, v7, :cond_a

    const/16 v7, 0xca

    if-eq v1, v7, :cond_8

    .line 235
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Activation server returned "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iput-object v13, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->L$0:Ljava/lang/Object;

    iput-object v6, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->L$1:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->L$2:Ljava/lang/Object;

    iput-object v1, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->L$3:Ljava/lang/Object;

    iput v5, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->I$0:I

    iput v4, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->I$1:I

    const/16 v0, 0x8

    iput v0, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->label:I

    const-wide/16 v7, 0x1388

    invoke-static {v7, v8, v2}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_9

    return-object v3

    .line 231
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Waiting for activation code input (attempt "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iput-object v13, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->L$0:Ljava/lang/Object;

    iput-object v6, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->L$1:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->L$2:Ljava/lang/Object;

    iput-object v1, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->L$3:Ljava/lang/Object;

    iput v5, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->I$0:I

    iput v4, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->I$1:I

    const/4 v0, 0x7

    iput v0, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->label:I

    const-wide/16 v7, 0x1388

    invoke-static {v7, v8, v2}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_9

    return-object v3

    :cond_9
    :goto_9
    const/4 v1, 0x1

    const/4 v7, 0x0

    const-wide/16 v8, 0x1388

    goto :goto_c

    .line 226
    :cond_a
    iget-object v0, v13, Lcom/xiaozhi/android/activation/ActivationService;->configManager:Lcom/xiaozhi/android/config/ConfigManager;

    iput-object v13, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->L$0:Ljava/lang/Object;

    iput-object v6, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->L$1:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->L$2:Ljava/lang/Object;

    iput-object v1, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->L$3:Ljava/lang/Object;

    iput v5, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->I$0:I

    iput v4, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->I$1:I

    const/4 v1, 0x6

    iput v1, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->label:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v1, 0x1

    :try_start_3
    invoke-virtual {v0, v1, v2}, Lcom/xiaozhi/android/config/ConfigManager;->setActivated(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_b

    return-object v3

    .line 227
    :cond_b
    :goto_a
    iget-object v0, v13, Lcom/xiaozhi/android/activation/ActivationService;->_activationState:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v7, Lcom/xiaozhi/android/activation/ActivationService$ActivationState;->ACTIVATION_SUCCESS:Lcom/xiaozhi/android/activation/ActivationService$ActivationState;

    invoke-interface {v0, v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 228
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    .line 240
    :goto_b
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Activation request failed: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iput-object v13, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->L$0:Ljava/lang/Object;

    iput-object v6, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->L$1:Ljava/lang/Object;

    const/4 v7, 0x0

    iput-object v7, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->L$2:Ljava/lang/Object;

    iput-object v7, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->L$3:Ljava/lang/Object;

    iput v5, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->I$0:I

    iput v4, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->I$1:I

    const/16 v0, 0x9

    iput v0, v2, Lcom/xiaozhi/android/activation/ActivationService$activate$1;->label:I

    const-wide/16 v8, 0x1388

    invoke-static {v8, v9, v2}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_c

    return-object v3

    :cond_c
    :goto_c
    if-eq v4, v5, :cond_d

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_8

    .line 244
    :cond_d
    iget-object v0, v13, Lcom/xiaozhi/android/activation/ActivationService;->_activationState:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v1, Lcom/xiaozhi/android/activation/ActivationService$ActivationState;->ACTIVATION_FAILED:Lcom/xiaozhi/android/activation/ActivationService$ActivationState;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 245
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final destroy()V
    .locals 3

    .line 374
    iget-object v0, p0, Lcom/xiaozhi/android/activation/ActivationService;->scope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel$default(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    return-void
.end method

.method public final fetchOtaAsync(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/xiaozhi/android/activation/ActivationService$fetchOtaAsync$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/xiaozhi/android/activation/ActivationService$fetchOtaAsync$1;

    iget v1, v0, Lcom/xiaozhi/android/activation/ActivationService$fetchOtaAsync$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/xiaozhi/android/activation/ActivationService$fetchOtaAsync$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/xiaozhi/android/activation/ActivationService$fetchOtaAsync$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/xiaozhi/android/activation/ActivationService$fetchOtaAsync$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaozhi/android/activation/ActivationService$fetchOtaAsync$1;-><init>(Lcom/xiaozhi/android/activation/ActivationService;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/xiaozhi/android/activation/ActivationService$fetchOtaAsync$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 126
    iget v2, v0, Lcom/xiaozhi/android/activation/ActivationService$fetchOtaAsync$1;->label:I

    const/4 v3, 0x1

    const-string v4, "ActivationService"

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lcom/xiaozhi/android/activation/ActivationService$fetchOtaAsync$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/xiaozhi/android/activation/ActivationService;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 127
    const-string p1, "Background OTA fetch started"

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iput-object p0, v0, Lcom/xiaozhi/android/activation/ActivationService$fetchOtaAsync$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/xiaozhi/android/activation/ActivationService$fetchOtaAsync$1;->label:I

    invoke-direct {p0, v0}, Lcom/xiaozhi/android/activation/ActivationService;->fetchOtaConfigWithRetry(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 126
    :goto_1
    check-cast p1, Lcom/xiaozhi/android/activation/ActivationService$OtaResult;

    if-nez p1, :cond_4

    .line 131
    const-string p1, "Background OTA fetch failed, using existing config"

    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object p1, v0, Lcom/xiaozhi/android/activation/ActivationService;->_otaError:Lkotlinx/coroutines/flow/MutableStateFlow;

    const-string v0, "OTA\u8bf7\u6c42\u5931\u8d25\uff0c\u5df2\u4f7f\u7528\u9ed8\u8ba4\u914d\u7f6e\u8fde\u63a5"

    invoke-interface {p1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 133
    const-string p1, "failed"

    goto :goto_2

    .line 135
    :cond_4
    invoke-virtual {p1}, Lcom/xiaozhi/android/activation/ActivationService$OtaResult;->getActivated()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 136
    const-string p1, "Background OTA: device activated, config updated"

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object p1, v0, Lcom/xiaozhi/android/activation/ActivationService;->_otaError:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p1, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 138
    const-string p1, "activated"

    goto :goto_2

    .line 141
    :cond_5
    const-string p1, "Background OTA: device not activated, code displayed"

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object p1, v0, Lcom/xiaozhi/android/activation/ActivationService;->_otaError:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p1, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 143
    const-string p1, "need_code"

    :goto_2
    return-object p1
.end method

.method public final forceActivated()V
    .locals 2

    .line 368
    iget-object v0, p0, Lcom/xiaozhi/android/activation/ActivationService;->_activationState:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v1, Lcom/xiaozhi/android/activation/ActivationService$ActivationState;->ACTIVATED:Lcom/xiaozhi/android/activation/ActivationService$ActivationState;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 369
    iget-object v0, p0, Lcom/xiaozhi/android/activation/ActivationService;->_otaError:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 370
    const-string v0, "ActivationService"

    const-string v1, "Forced activated state (OTA skipped)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final getActivationCode()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/xiaozhi/android/activation/ActivationService;->activationCode:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final getActivationState()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/xiaozhi/android/activation/ActivationService$ActivationState;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/xiaozhi/android/activation/ActivationService;->activationState:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final getOtaError()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/xiaozhi/android/activation/ActivationService;->otaError:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final initialize(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/xiaozhi/android/activation/ActivationService$ActivationState;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/xiaozhi/android/activation/ActivationService$initialize$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/xiaozhi/android/activation/ActivationService$initialize$1;

    iget v1, v0, Lcom/xiaozhi/android/activation/ActivationService$initialize$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/xiaozhi/android/activation/ActivationService$initialize$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/xiaozhi/android/activation/ActivationService$initialize$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/xiaozhi/android/activation/ActivationService$initialize$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaozhi/android/activation/ActivationService$initialize$1;-><init>(Lcom/xiaozhi/android/activation/ActivationService;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/xiaozhi/android/activation/ActivationService$initialize$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 59
    iget v2, v0, Lcom/xiaozhi/android/activation/ActivationService$initialize$1;->label:I

    const-string v3, "ActivationService"

    const/4 v4, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v2, :cond_6

    if-eq v2, v9, :cond_5

    if-eq v2, v8, :cond_4

    if-eq v2, v7, :cond_3

    if-eq v2, v6, :cond_2

    if-ne v2, v5, :cond_1

    iget-object v0, v0, Lcom/xiaozhi/android/activation/ActivationService$initialize$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/xiaozhi/android/activation/ActivationService;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v2, v0, Lcom/xiaozhi/android/activation/ActivationService$initialize$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/xiaozhi/android/activation/ActivationService;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_3
    iget-object v2, v0, Lcom/xiaozhi/android/activation/ActivationService$initialize$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v7, v0, Lcom/xiaozhi/android/activation/ActivationService$initialize$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lcom/xiaozhi/android/activation/ActivationService;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    iget-object v2, v0, Lcom/xiaozhi/android/activation/ActivationService$initialize$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/xiaozhi/android/activation/ActivationService;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    iget-object v2, v0, Lcom/xiaozhi/android/activation/ActivationService$initialize$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/xiaozhi/android/activation/ActivationService;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 60
    iget-object p1, p0, Lcom/xiaozhi/android/activation/ActivationService;->_activationState:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v2, Lcom/xiaozhi/android/activation/ActivationService$ActivationState;->INITIALIZING:Lcom/xiaozhi/android/activation/ActivationService$ActivationState;

    invoke-interface {p1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 61
    iget-object p1, p0, Lcom/xiaozhi/android/activation/ActivationService;->_otaError:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p1, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 64
    iget-object p1, p0, Lcom/xiaozhi/android/activation/ActivationService;->configManager:Lcom/xiaozhi/android/config/ConfigManager;

    iput-object p0, v0, Lcom/xiaozhi/android/activation/ActivationService$initialize$1;->L$0:Ljava/lang/Object;

    iput v9, v0, Lcom/xiaozhi/android/activation/ActivationService$initialize$1;->label:I

    invoke-virtual {p1, v0}, Lcom/xiaozhi/android/config/ConfigManager;->initializeClientId(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    return-object v1

    :cond_7
    move-object v2, p0

    .line 67
    :goto_1
    iget-object p1, v2, Lcom/xiaozhi/android/activation/ActivationService;->configManager:Lcom/xiaozhi/android/config/ConfigManager;

    iput-object v2, v0, Lcom/xiaozhi/android/activation/ActivationService$initialize$1;->L$0:Ljava/lang/Object;

    iput v8, v0, Lcom/xiaozhi/android/activation/ActivationService$initialize$1;->label:I

    invoke-virtual {p1, v0}, Lcom/xiaozhi/android/config/ConfigManager;->getDeviceId(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    return-object v1

    .line 59
    :cond_8
    :goto_2
    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_a

    .line 69
    invoke-direct {v2}, Lcom/xiaozhi/android/activation/ActivationService;->generateDeviceId()Ljava/lang/String;

    move-result-object p1

    .line 70
    iget-object v8, v2, Lcom/xiaozhi/android/activation/ActivationService;->configManager:Lcom/xiaozhi/android/config/ConfigManager;

    iput-object v2, v0, Lcom/xiaozhi/android/activation/ActivationService$initialize$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/xiaozhi/android/activation/ActivationService$initialize$1;->L$1:Ljava/lang/Object;

    iput v7, v0, Lcom/xiaozhi/android/activation/ActivationService$initialize$1;->label:I

    invoke-virtual {v8, p1, v0}, Lcom/xiaozhi/android/config/ConfigManager;->setDeviceId(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_9

    return-object v1

    :cond_9
    move-object v7, v2

    move-object v2, p1

    .line 71
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v8, "Generated device ID: "

    invoke-direct {p1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v7

    .line 75
    :cond_a
    iput-object v2, v0, Lcom/xiaozhi/android/activation/ActivationService$initialize$1;->L$0:Ljava/lang/Object;

    iput-object v4, v0, Lcom/xiaozhi/android/activation/ActivationService$initialize$1;->L$1:Ljava/lang/Object;

    iput v6, v0, Lcom/xiaozhi/android/activation/ActivationService$initialize$1;->label:I

    invoke-direct {v2, v0}, Lcom/xiaozhi/android/activation/ActivationService;->ensureHmacKey(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_b

    return-object v1

    .line 78
    :cond_b
    :goto_4
    iput-object v2, v0, Lcom/xiaozhi/android/activation/ActivationService$initialize$1;->L$0:Ljava/lang/Object;

    iput v5, v0, Lcom/xiaozhi/android/activation/ActivationService$initialize$1;->label:I

    invoke-direct {v2, v0}, Lcom/xiaozhi/android/activation/ActivationService;->fetchOtaConfigWithRetry(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_c

    return-object v1

    :cond_c
    move-object v0, v2

    .line 59
    :goto_5
    check-cast p1, Lcom/xiaozhi/android/activation/ActivationService$OtaResult;

    if-nez p1, :cond_d

    .line 80
    const-string p1, "OTA request failed after retries, continuing with default config"

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object p1, v0, Lcom/xiaozhi/android/activation/ActivationService;->_otaError:Lkotlinx/coroutines/flow/MutableStateFlow;

    const-string v1, "OTA\u8bf7\u6c42\u5931\u8d25\uff0c\u5df2\u4f7f\u7528\u9ed8\u8ba4\u914d\u7f6e\u8fde\u63a5"

    invoke-interface {p1, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 83
    iget-object p1, v0, Lcom/xiaozhi/android/activation/ActivationService;->_activationState:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v0, Lcom/xiaozhi/android/activation/ActivationService$ActivationState;->ACTIVATED:Lcom/xiaozhi/android/activation/ActivationService$ActivationState;

    invoke-interface {p1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 84
    sget-object p1, Lcom/xiaozhi/android/activation/ActivationService$ActivationState;->ACTIVATED:Lcom/xiaozhi/android/activation/ActivationService$ActivationState;

    return-object p1

    .line 88
    :cond_d
    iget-object p1, v0, Lcom/xiaozhi/android/activation/ActivationService;->_activationState:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v0, Lcom/xiaozhi/android/activation/ActivationService$ActivationState;->ACTIVATED:Lcom/xiaozhi/android/activation/ActivationService$ActivationState;

    invoke-interface {p1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 89
    sget-object p1, Lcom/xiaozhi/android/activation/ActivationService$ActivationState;->ACTIVATED:Lcom/xiaozhi/android/activation/ActivationService$ActivationState;

    return-object p1
.end method

.method public final initializeSync(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/xiaozhi/android/activation/ActivationService$ActivationState;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/xiaozhi/android/activation/ActivationService$initializeSync$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/xiaozhi/android/activation/ActivationService$initializeSync$1;

    iget v1, v0, Lcom/xiaozhi/android/activation/ActivationService$initializeSync$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/xiaozhi/android/activation/ActivationService$initializeSync$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/xiaozhi/android/activation/ActivationService$initializeSync$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/xiaozhi/android/activation/ActivationService$initializeSync$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaozhi/android/activation/ActivationService$initializeSync$1;-><init>(Lcom/xiaozhi/android/activation/ActivationService;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/xiaozhi/android/activation/ActivationService$initializeSync$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 96
    iget v2, v0, Lcom/xiaozhi/android/activation/ActivationService$initializeSync$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v2, :cond_5

    if-eq v2, v7, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget-object v0, v0, Lcom/xiaozhi/android/activation/ActivationService$initializeSync$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/xiaozhi/android/activation/ActivationService;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v2, v0, Lcom/xiaozhi/android/activation/ActivationService$initializeSync$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v5, v0, Lcom/xiaozhi/android/activation/ActivationService$initializeSync$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lcom/xiaozhi/android/activation/ActivationService;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    iget-object v2, v0, Lcom/xiaozhi/android/activation/ActivationService$initializeSync$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/xiaozhi/android/activation/ActivationService;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    iget-object v2, v0, Lcom/xiaozhi/android/activation/ActivationService$initializeSync$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/xiaozhi/android/activation/ActivationService;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 97
    iget-object p1, p0, Lcom/xiaozhi/android/activation/ActivationService;->_activationState:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v2, Lcom/xiaozhi/android/activation/ActivationService$ActivationState;->INITIALIZING:Lcom/xiaozhi/android/activation/ActivationService$ActivationState;

    invoke-interface {p1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 98
    iget-object p1, p0, Lcom/xiaozhi/android/activation/ActivationService;->_otaError:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p1, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 101
    iget-object p1, p0, Lcom/xiaozhi/android/activation/ActivationService;->configManager:Lcom/xiaozhi/android/config/ConfigManager;

    iput-object p0, v0, Lcom/xiaozhi/android/activation/ActivationService$initializeSync$1;->L$0:Ljava/lang/Object;

    iput v7, v0, Lcom/xiaozhi/android/activation/ActivationService$initializeSync$1;->label:I

    invoke-virtual {p1, v0}, Lcom/xiaozhi/android/config/ConfigManager;->initializeClientId(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    move-object v2, p0

    .line 104
    :goto_1
    iget-object p1, v2, Lcom/xiaozhi/android/activation/ActivationService;->configManager:Lcom/xiaozhi/android/config/ConfigManager;

    iput-object v2, v0, Lcom/xiaozhi/android/activation/ActivationService$initializeSync$1;->L$0:Ljava/lang/Object;

    iput v6, v0, Lcom/xiaozhi/android/activation/ActivationService$initializeSync$1;->label:I

    invoke-virtual {p1, v0}, Lcom/xiaozhi/android/config/ConfigManager;->getDeviceId(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    return-object v1

    .line 96
    :cond_7
    :goto_2
    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_9

    .line 106
    invoke-direct {v2}, Lcom/xiaozhi/android/activation/ActivationService;->generateDeviceId()Ljava/lang/String;

    move-result-object p1

    .line 107
    iget-object v6, v2, Lcom/xiaozhi/android/activation/ActivationService;->configManager:Lcom/xiaozhi/android/config/ConfigManager;

    iput-object v2, v0, Lcom/xiaozhi/android/activation/ActivationService$initializeSync$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/xiaozhi/android/activation/ActivationService$initializeSync$1;->L$1:Ljava/lang/Object;

    iput v5, v0, Lcom/xiaozhi/android/activation/ActivationService$initializeSync$1;->label:I

    invoke-virtual {v6, p1, v0}, Lcom/xiaozhi/android/config/ConfigManager;->setDeviceId(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_8

    return-object v1

    :cond_8
    move-object v5, v2

    move-object v2, p1

    .line 108
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v6, "Generated device ID: "

    invoke-direct {p1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "ActivationService"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    .line 112
    :cond_9
    iput-object v2, v0, Lcom/xiaozhi/android/activation/ActivationService$initializeSync$1;->L$0:Ljava/lang/Object;

    iput-object v3, v0, Lcom/xiaozhi/android/activation/ActivationService$initializeSync$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcom/xiaozhi/android/activation/ActivationService$initializeSync$1;->label:I

    invoke-direct {v2, v0}, Lcom/xiaozhi/android/activation/ActivationService;->ensureHmacKey(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_a

    return-object v1

    :cond_a
    move-object v0, v2

    .line 115
    :goto_4
    iget-object p1, v0, Lcom/xiaozhi/android/activation/ActivationService;->_activationState:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v0, Lcom/xiaozhi/android/activation/ActivationService$ActivationState;->ACTIVATED:Lcom/xiaozhi/android/activation/ActivationService$ActivationState;

    invoke-interface {p1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 116
    sget-object p1, Lcom/xiaozhi/android/activation/ActivationService$ActivationState;->ACTIVATED:Lcom/xiaozhi/android/activation/ActivationService$ActivationState;

    return-object p1
.end method

.method public final resetDeviceIdentity(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/xiaozhi/android/activation/ActivationService$resetDeviceIdentity$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/xiaozhi/android/activation/ActivationService$resetDeviceIdentity$1;

    iget v1, v0, Lcom/xiaozhi/android/activation/ActivationService$resetDeviceIdentity$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/xiaozhi/android/activation/ActivationService$resetDeviceIdentity$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/xiaozhi/android/activation/ActivationService$resetDeviceIdentity$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/xiaozhi/android/activation/ActivationService$resetDeviceIdentity$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaozhi/android/activation/ActivationService$resetDeviceIdentity$1;-><init>(Lcom/xiaozhi/android/activation/ActivationService;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/xiaozhi/android/activation/ActivationService$resetDeviceIdentity$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 148
    iget v2, v0, Lcom/xiaozhi/android/activation/ActivationService$resetDeviceIdentity$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lcom/xiaozhi/android/activation/ActivationService$resetDeviceIdentity$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/xiaozhi/android/activation/ActivationService;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v2, v0, Lcom/xiaozhi/android/activation/ActivationService$resetDeviceIdentity$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/xiaozhi/android/activation/ActivationService;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object v2, v0, Lcom/xiaozhi/android/activation/ActivationService$resetDeviceIdentity$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/xiaozhi/android/activation/ActivationService;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 150
    iget-object p1, p0, Lcom/xiaozhi/android/activation/ActivationService;->configManager:Lcom/xiaozhi/android/config/ConfigManager;

    invoke-direct {p0}, Lcom/xiaozhi/android/activation/ActivationService;->generateDeviceId()Ljava/lang/String;

    move-result-object v2

    iput-object p0, v0, Lcom/xiaozhi/android/activation/ActivationService$resetDeviceIdentity$1;->L$0:Ljava/lang/Object;

    iput v5, v0, Lcom/xiaozhi/android/activation/ActivationService$resetDeviceIdentity$1;->label:I

    invoke-virtual {p1, v2, v0}, Lcom/xiaozhi/android/config/ConfigManager;->setDeviceId(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    move-object v2, p0

    .line 151
    :goto_1
    iput-object v2, v0, Lcom/xiaozhi/android/activation/ActivationService$resetDeviceIdentity$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/xiaozhi/android/activation/ActivationService$resetDeviceIdentity$1;->label:I

    invoke-direct {v2, v0}, Lcom/xiaozhi/android/activation/ActivationService;->ensureHmacKey(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    .line 152
    :cond_6
    :goto_2
    iget-object p1, v2, Lcom/xiaozhi/android/activation/ActivationService;->_otaError:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v4, 0x0

    invoke-interface {p1, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 155
    iput-object v2, v0, Lcom/xiaozhi/android/activation/ActivationService$resetDeviceIdentity$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/xiaozhi/android/activation/ActivationService$resetDeviceIdentity$1;->label:I

    invoke-direct {v2, v0}, Lcom/xiaozhi/android/activation/ActivationService;->fetchOtaConfigWithRetry(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    return-object v1

    :cond_7
    move-object v0, v2

    .line 148
    :goto_3
    check-cast p1, Lcom/xiaozhi/android/activation/ActivationService$OtaResult;

    if-nez p1, :cond_8

    .line 157
    iget-object p1, v0, Lcom/xiaozhi/android/activation/ActivationService;->_otaError:Lkotlinx/coroutines/flow/MutableStateFlow;

    const-string v1, "OTA\u8bf7\u6c42\u5931\u8d25\uff0c\u5df2\u4f7f\u7528\u9ed8\u8ba4\u914d\u7f6e\u8fde\u63a5"

    invoke-interface {p1, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 158
    iget-object p1, v0, Lcom/xiaozhi/android/activation/ActivationService;->_activationState:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v0, Lcom/xiaozhi/android/activation/ActivationService$ActivationState;->ACTIVATED:Lcom/xiaozhi/android/activation/ActivationService$ActivationState;

    invoke-interface {p1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    goto :goto_4

    .line 160
    :cond_8
    iget-object p1, v0, Lcom/xiaozhi/android/activation/ActivationService;->_activationState:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v0, Lcom/xiaozhi/android/activation/ActivationService$ActivationState;->ACTIVATED:Lcom/xiaozhi/android/activation/ActivationService$ActivationState;

    invoke-interface {p1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 162
    :goto_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
