.class public final Lcom/xiaozhi/android/config/ConfigManager;
.super Ljava/lang/Object;
.source "ConfigManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaozhi/android/config/ConfigManager$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0013\u0008\u0007\u0018\u0000 \'2\u00020\u0001:\u0001\'B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u0008\u001a\u00020\u0007H\u0086@\u00a2\u0006\u0002\u0010\tJ\u000e\u0010\n\u001a\u00020\u0007H\u0086@\u00a2\u0006\u0002\u0010\tJ\u000e\u0010\u000b\u001a\u00020\u0007H\u0086@\u00a2\u0006\u0002\u0010\tJ\u0010\u0010\u000c\u001a\u0004\u0018\u00010\u0007H\u0086@\u00a2\u0006\u0002\u0010\tJ\u000e\u0010\r\u001a\u00020\u0007H\u0086@\u00a2\u0006\u0002\u0010\tJ\u000e\u0010\u000e\u001a\u00020\u0007H\u0086@\u00a2\u0006\u0002\u0010\tJ\u000e\u0010\u000f\u001a\u00020\u0007H\u0086@\u00a2\u0006\u0002\u0010\tJ\u000e\u0010\u0010\u001a\u00020\u0011H\u0086@\u00a2\u0006\u0002\u0010\tJ\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0007H\u0086@\u00a2\u0006\u0002\u0010\tJ\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0007H\u0086@\u00a2\u0006\u0002\u0010\tJ\u0016\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0007H\u0086@\u00a2\u0006\u0002\u0010\u0017J\u0016\u0010\u0018\u001a\u00020\u00152\u0006\u0010\u0019\u001a\u00020\u0007H\u0086@\u00a2\u0006\u0002\u0010\u0017J\u0016\u0010\u001a\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u0007H\u0086@\u00a2\u0006\u0002\u0010\u0017J\u0016\u0010\u001c\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0007H\u0086@\u00a2\u0006\u0002\u0010\u0017J\u0016\u0010\u001d\u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00020\u0007H\u0086@\u00a2\u0006\u0002\u0010\u0017J\u0016\u0010\u001f\u001a\u00020\u00152\u0006\u0010 \u001a\u00020\u0011H\u0086@\u00a2\u0006\u0002\u0010!J\u0016\u0010\"\u001a\u00020\u00152\u0006\u0010#\u001a\u00020\u0007H\u0086@\u00a2\u0006\u0002\u0010\u0017J\u0016\u0010$\u001a\u00020\u00152\u0006\u0010%\u001a\u00020\u0007H\u0086@\u00a2\u0006\u0002\u0010\u0017J\u000e\u0010&\u001a\u00020\u0015H\u0086@\u00a2\u0006\u0002\u0010\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006("
    }
    d2 = {
        "Lcom/xiaozhi/android/config/ConfigManager;",
        "",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "_clientId",
        "",
        "initializeClientId",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getWebsocketUrl",
        "getAccessToken",
        "getDeviceId",
        "getClientId",
        "getOtaUrl",
        "getActivationVersion",
        "isActivated",
        "",
        "getHmacKey",
        "getSerialNumber",
        "setWebsocketUrl",
        "",
        "url",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "setAccessToken",
        "token",
        "setDeviceId",
        "id",
        "setOtaUrl",
        "setActivationVersion",
        "version",
        "setActivated",
        "activated",
        "(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "setHmacKey",
        "key",
        "setSerialNumber",
        "sn",
        "resetNetworkConfig",
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

.field public static final ACTIVATION_V1:Ljava/lang/String; = "v1"

.field public static final ACTIVATION_V2:Ljava/lang/String; = "v2"

.field public static final Companion:Lcom/xiaozhi/android/config/ConfigManager$Companion;

.field public static final DEFAULT_OTA_URL:Ljava/lang/String; = "https://api.tenclass.net/xiaozhi/ota/"

.field public static final DEFAULT_WS_URL:Ljava/lang/String; = "wss://api.tenclass.net/xiaozhi/v1/"

.field private static final KEY_ACCESS_TOKEN:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_ACTIVATED:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_ACTIVATION_VERSION:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_CLIENT_ID:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_DEVICE_ID:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_HMAC_KEY:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_OTA_URL:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_SERIAL_NUMBER:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_WEBSOCKET_URL:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private _clientId:Ljava/lang/String;

.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/xiaozhi/android/config/ConfigManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaozhi/android/config/ConfigManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/xiaozhi/android/config/ConfigManager;->Companion:Lcom/xiaozhi/android/config/ConfigManager$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/xiaozhi/android/config/ConfigManager;->$stable:I

    .line 18
    const-string v0, "websocket_url"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->stringKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lcom/xiaozhi/android/config/ConfigManager;->KEY_WEBSOCKET_URL:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 19
    const-string v0, "access_token"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->stringKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lcom/xiaozhi/android/config/ConfigManager;->KEY_ACCESS_TOKEN:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 20
    const-string v0, "device_id"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->stringKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lcom/xiaozhi/android/config/ConfigManager;->KEY_DEVICE_ID:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 21
    const-string v0, "client_id"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->stringKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lcom/xiaozhi/android/config/ConfigManager;->KEY_CLIENT_ID:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 22
    const-string v0, "ota_url"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->stringKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lcom/xiaozhi/android/config/ConfigManager;->KEY_OTA_URL:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 23
    const-string v0, "activation_version"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->stringKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lcom/xiaozhi/android/config/ConfigManager;->KEY_ACTIVATION_VERSION:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 24
    const-string v0, "activated"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->stringKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lcom/xiaozhi/android/config/ConfigManager;->KEY_ACTIVATED:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 25
    const-string v0, "hmac_key"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->stringKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lcom/xiaozhi/android/config/ConfigManager;->KEY_HMAC_KEY:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 26
    const-string v0, "serial_number"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->stringKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lcom/xiaozhi/android/config/ConfigManager;->KEY_SERIAL_NUMBER:Landroidx/datastore/preferences/core/Preferences$Key;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaozhi/android/config/ConfigManager;->context:Landroid/content/Context;

    return-void
.end method

.method public static final synthetic access$getKEY_ACCESS_TOKEN$cp()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1

    .line 16
    sget-object v0, Lcom/xiaozhi/android/config/ConfigManager;->KEY_ACCESS_TOKEN:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method

.method public static final synthetic access$getKEY_ACTIVATED$cp()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1

    .line 16
    sget-object v0, Lcom/xiaozhi/android/config/ConfigManager;->KEY_ACTIVATED:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method

.method public static final synthetic access$getKEY_ACTIVATION_VERSION$cp()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1

    .line 16
    sget-object v0, Lcom/xiaozhi/android/config/ConfigManager;->KEY_ACTIVATION_VERSION:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method

.method public static final synthetic access$getKEY_CLIENT_ID$cp()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1

    .line 16
    sget-object v0, Lcom/xiaozhi/android/config/ConfigManager;->KEY_CLIENT_ID:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method

.method public static final synthetic access$getKEY_DEVICE_ID$cp()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1

    .line 16
    sget-object v0, Lcom/xiaozhi/android/config/ConfigManager;->KEY_DEVICE_ID:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method

.method public static final synthetic access$getKEY_HMAC_KEY$cp()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1

    .line 16
    sget-object v0, Lcom/xiaozhi/android/config/ConfigManager;->KEY_HMAC_KEY:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method

.method public static final synthetic access$getKEY_OTA_URL$cp()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1

    .line 16
    sget-object v0, Lcom/xiaozhi/android/config/ConfigManager;->KEY_OTA_URL:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method

.method public static final synthetic access$getKEY_SERIAL_NUMBER$cp()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1

    .line 16
    sget-object v0, Lcom/xiaozhi/android/config/ConfigManager;->KEY_SERIAL_NUMBER:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method

.method public static final synthetic access$getKEY_WEBSOCKET_URL$cp()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1

    .line 16
    sget-object v0, Lcom/xiaozhi/android/config/ConfigManager;->KEY_WEBSOCKET_URL:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method


# virtual methods
.method public final getAccessToken(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
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

    instance-of v0, p1, Lcom/xiaozhi/android/config/ConfigManager$getAccessToken$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/xiaozhi/android/config/ConfigManager$getAccessToken$1;

    iget v1, v0, Lcom/xiaozhi/android/config/ConfigManager$getAccessToken$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/xiaozhi/android/config/ConfigManager$getAccessToken$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/xiaozhi/android/config/ConfigManager$getAccessToken$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/xiaozhi/android/config/ConfigManager$getAccessToken$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaozhi/android/config/ConfigManager$getAccessToken$1;-><init>(Lcom/xiaozhi/android/config/ConfigManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/xiaozhi/android/config/ConfigManager$getAccessToken$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 52
    iget v2, v0, Lcom/xiaozhi/android/config/ConfigManager$getAccessToken$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 53
    iget-object p1, p0, Lcom/xiaozhi/android/config/ConfigManager;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/xiaozhi/android/config/ConfigManagerKt;->access$getDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object p1

    invoke-interface {p1}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput v3, v0, Lcom/xiaozhi/android/config/ConfigManager$getAccessToken$1;->label:I

    invoke-static {p1, v0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Landroidx/datastore/preferences/core/Preferences;

    sget-object v0, Lcom/xiaozhi/android/config/ConfigManager;->KEY_ACCESS_TOKEN:Landroidx/datastore/preferences/core/Preferences$Key;

    invoke-virtual {p1, v0}, Landroidx/datastore/preferences/core/Preferences;->get(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_4

    const-string p1, "test-token"

    :cond_4
    return-object p1
.end method

.method public final getActivationVersion(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
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

    instance-of v0, p1, Lcom/xiaozhi/android/config/ConfigManager$getActivationVersion$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/xiaozhi/android/config/ConfigManager$getActivationVersion$1;

    iget v1, v0, Lcom/xiaozhi/android/config/ConfigManager$getActivationVersion$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/xiaozhi/android/config/ConfigManager$getActivationVersion$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/xiaozhi/android/config/ConfigManager$getActivationVersion$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/xiaozhi/android/config/ConfigManager$getActivationVersion$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaozhi/android/config/ConfigManager$getActivationVersion$1;-><init>(Lcom/xiaozhi/android/config/ConfigManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/xiaozhi/android/config/ConfigManager$getActivationVersion$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 64
    iget v2, v0, Lcom/xiaozhi/android/config/ConfigManager$getActivationVersion$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 65
    iget-object p1, p0, Lcom/xiaozhi/android/config/ConfigManager;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/xiaozhi/android/config/ConfigManagerKt;->access$getDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object p1

    invoke-interface {p1}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput v3, v0, Lcom/xiaozhi/android/config/ConfigManager$getActivationVersion$1;->label:I

    invoke-static {p1, v0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Landroidx/datastore/preferences/core/Preferences;

    sget-object v0, Lcom/xiaozhi/android/config/ConfigManager;->KEY_ACTIVATION_VERSION:Landroidx/datastore/preferences/core/Preferences$Key;

    invoke-virtual {p1, v0}, Landroidx/datastore/preferences/core/Preferences;->get(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_4

    const-string p1, "v1"

    :cond_4
    return-object p1
.end method

.method public final getClientId(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

    instance-of v0, p1, Lcom/xiaozhi/android/config/ConfigManager$getClientId$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/xiaozhi/android/config/ConfigManager$getClientId$1;

    iget v1, v0, Lcom/xiaozhi/android/config/ConfigManager$getClientId$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/xiaozhi/android/config/ConfigManager$getClientId$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/xiaozhi/android/config/ConfigManager$getClientId$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/xiaozhi/android/config/ConfigManager$getClientId$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaozhi/android/config/ConfigManager$getClientId$1;-><init>(Lcom/xiaozhi/android/config/ConfigManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/xiaozhi/android/config/ConfigManager$getClientId$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 58
    iget v2, v0, Lcom/xiaozhi/android/config/ConfigManager$getClientId$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v2, v0, Lcom/xiaozhi/android/config/ConfigManager$getClientId$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/xiaozhi/android/config/ConfigManager;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 59
    iget-object p1, p0, Lcom/xiaozhi/android/config/ConfigManager;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/xiaozhi/android/config/ConfigManagerKt;->access$getDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object p1

    invoke-interface {p1}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p0, v0, Lcom/xiaozhi/android/config/ConfigManager$getClientId$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/xiaozhi/android/config/ConfigManager$getClientId$1;->label:I

    invoke-static {p1, v0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    :goto_1
    check-cast p1, Landroidx/datastore/preferences/core/Preferences;

    sget-object v4, Lcom/xiaozhi/android/config/ConfigManager;->KEY_CLIENT_ID:Landroidx/datastore/preferences/core/Preferences$Key;

    invoke-virtual {p1, v4}, Landroidx/datastore/preferences/core/Preferences;->get(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_5

    const/4 p1, 0x0

    iput-object p1, v0, Lcom/xiaozhi/android/config/ConfigManager$getClientId$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/xiaozhi/android/config/ConfigManager$getClientId$1;->label:I

    invoke-virtual {v2, v0}, Lcom/xiaozhi/android/config/ConfigManager;->initializeClientId(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    return-object p1
.end method

.method public final getDeviceId(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
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

    instance-of v0, p1, Lcom/xiaozhi/android/config/ConfigManager$getDeviceId$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/xiaozhi/android/config/ConfigManager$getDeviceId$1;

    iget v1, v0, Lcom/xiaozhi/android/config/ConfigManager$getDeviceId$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/xiaozhi/android/config/ConfigManager$getDeviceId$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/xiaozhi/android/config/ConfigManager$getDeviceId$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/xiaozhi/android/config/ConfigManager$getDeviceId$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaozhi/android/config/ConfigManager$getDeviceId$1;-><init>(Lcom/xiaozhi/android/config/ConfigManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/xiaozhi/android/config/ConfigManager$getDeviceId$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 55
    iget v2, v0, Lcom/xiaozhi/android/config/ConfigManager$getDeviceId$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 56
    iget-object p1, p0, Lcom/xiaozhi/android/config/ConfigManager;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/xiaozhi/android/config/ConfigManagerKt;->access$getDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object p1

    invoke-interface {p1}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput v3, v0, Lcom/xiaozhi/android/config/ConfigManager$getDeviceId$1;->label:I

    invoke-static {p1, v0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Landroidx/datastore/preferences/core/Preferences;

    sget-object v0, Lcom/xiaozhi/android/config/ConfigManager;->KEY_DEVICE_ID:Landroidx/datastore/preferences/core/Preferences$Key;

    invoke-virtual {p1, v0}, Landroidx/datastore/preferences/core/Preferences;->get(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getHmacKey(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
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

    instance-of v0, p1, Lcom/xiaozhi/android/config/ConfigManager$getHmacKey$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/xiaozhi/android/config/ConfigManager$getHmacKey$1;

    iget v1, v0, Lcom/xiaozhi/android/config/ConfigManager$getHmacKey$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/xiaozhi/android/config/ConfigManager$getHmacKey$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/xiaozhi/android/config/ConfigManager$getHmacKey$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/xiaozhi/android/config/ConfigManager$getHmacKey$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaozhi/android/config/ConfigManager$getHmacKey$1;-><init>(Lcom/xiaozhi/android/config/ConfigManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/xiaozhi/android/config/ConfigManager$getHmacKey$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 70
    iget v2, v0, Lcom/xiaozhi/android/config/ConfigManager$getHmacKey$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 71
    iget-object p1, p0, Lcom/xiaozhi/android/config/ConfigManager;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/xiaozhi/android/config/ConfigManagerKt;->access$getDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object p1

    invoke-interface {p1}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput v3, v0, Lcom/xiaozhi/android/config/ConfigManager$getHmacKey$1;->label:I

    invoke-static {p1, v0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Landroidx/datastore/preferences/core/Preferences;

    sget-object v0, Lcom/xiaozhi/android/config/ConfigManager;->KEY_HMAC_KEY:Landroidx/datastore/preferences/core/Preferences$Key;

    invoke-virtual {p1, v0}, Landroidx/datastore/preferences/core/Preferences;->get(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getOtaUrl(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
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

    instance-of v0, p1, Lcom/xiaozhi/android/config/ConfigManager$getOtaUrl$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/xiaozhi/android/config/ConfigManager$getOtaUrl$1;

    iget v1, v0, Lcom/xiaozhi/android/config/ConfigManager$getOtaUrl$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/xiaozhi/android/config/ConfigManager$getOtaUrl$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/xiaozhi/android/config/ConfigManager$getOtaUrl$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/xiaozhi/android/config/ConfigManager$getOtaUrl$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaozhi/android/config/ConfigManager$getOtaUrl$1;-><init>(Lcom/xiaozhi/android/config/ConfigManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/xiaozhi/android/config/ConfigManager$getOtaUrl$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 61
    iget v2, v0, Lcom/xiaozhi/android/config/ConfigManager$getOtaUrl$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 62
    iget-object p1, p0, Lcom/xiaozhi/android/config/ConfigManager;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/xiaozhi/android/config/ConfigManagerKt;->access$getDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object p1

    invoke-interface {p1}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput v3, v0, Lcom/xiaozhi/android/config/ConfigManager$getOtaUrl$1;->label:I

    invoke-static {p1, v0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Landroidx/datastore/preferences/core/Preferences;

    sget-object v0, Lcom/xiaozhi/android/config/ConfigManager;->KEY_OTA_URL:Landroidx/datastore/preferences/core/Preferences$Key;

    invoke-virtual {p1, v0}, Landroidx/datastore/preferences/core/Preferences;->get(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_4

    const-string p1, "https://api.tenclass.net/xiaozhi/ota/"

    :cond_4
    return-object p1
.end method

.method public final getSerialNumber(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
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

    instance-of v0, p1, Lcom/xiaozhi/android/config/ConfigManager$getSerialNumber$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/xiaozhi/android/config/ConfigManager$getSerialNumber$1;

    iget v1, v0, Lcom/xiaozhi/android/config/ConfigManager$getSerialNumber$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/xiaozhi/android/config/ConfigManager$getSerialNumber$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/xiaozhi/android/config/ConfigManager$getSerialNumber$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/xiaozhi/android/config/ConfigManager$getSerialNumber$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaozhi/android/config/ConfigManager$getSerialNumber$1;-><init>(Lcom/xiaozhi/android/config/ConfigManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/xiaozhi/android/config/ConfigManager$getSerialNumber$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 73
    iget v2, v0, Lcom/xiaozhi/android/config/ConfigManager$getSerialNumber$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 74
    iget-object p1, p0, Lcom/xiaozhi/android/config/ConfigManager;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/xiaozhi/android/config/ConfigManagerKt;->access$getDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object p1

    invoke-interface {p1}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput v3, v0, Lcom/xiaozhi/android/config/ConfigManager$getSerialNumber$1;->label:I

    invoke-static {p1, v0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Landroidx/datastore/preferences/core/Preferences;

    sget-object v0, Lcom/xiaozhi/android/config/ConfigManager;->KEY_SERIAL_NUMBER:Landroidx/datastore/preferences/core/Preferences$Key;

    invoke-virtual {p1, v0}, Landroidx/datastore/preferences/core/Preferences;->get(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getWebsocketUrl(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
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

    instance-of v0, p1, Lcom/xiaozhi/android/config/ConfigManager$getWebsocketUrl$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/xiaozhi/android/config/ConfigManager$getWebsocketUrl$1;

    iget v1, v0, Lcom/xiaozhi/android/config/ConfigManager$getWebsocketUrl$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/xiaozhi/android/config/ConfigManager$getWebsocketUrl$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/xiaozhi/android/config/ConfigManager$getWebsocketUrl$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/xiaozhi/android/config/ConfigManager$getWebsocketUrl$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaozhi/android/config/ConfigManager$getWebsocketUrl$1;-><init>(Lcom/xiaozhi/android/config/ConfigManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/xiaozhi/android/config/ConfigManager$getWebsocketUrl$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 49
    iget v2, v0, Lcom/xiaozhi/android/config/ConfigManager$getWebsocketUrl$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 50
    iget-object p1, p0, Lcom/xiaozhi/android/config/ConfigManager;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/xiaozhi/android/config/ConfigManagerKt;->access$getDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object p1

    invoke-interface {p1}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput v3, v0, Lcom/xiaozhi/android/config/ConfigManager$getWebsocketUrl$1;->label:I

    invoke-static {p1, v0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Landroidx/datastore/preferences/core/Preferences;

    sget-object v0, Lcom/xiaozhi/android/config/ConfigManager;->KEY_WEBSOCKET_URL:Landroidx/datastore/preferences/core/Preferences$Key;

    invoke-virtual {p1, v0}, Landroidx/datastore/preferences/core/Preferences;->get(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_4

    const-string p1, "wss://api.tenclass.net/xiaozhi/v1/"

    :cond_4
    return-object p1
.end method

.method public final initializeClientId(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
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

    instance-of v0, p1, Lcom/xiaozhi/android/config/ConfigManager$initializeClientId$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/xiaozhi/android/config/ConfigManager$initializeClientId$1;

    iget v1, v0, Lcom/xiaozhi/android/config/ConfigManager$initializeClientId$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/xiaozhi/android/config/ConfigManager$initializeClientId$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/xiaozhi/android/config/ConfigManager$initializeClientId$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/xiaozhi/android/config/ConfigManager$initializeClientId$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaozhi/android/config/ConfigManager$initializeClientId$1;-><init>(Lcom/xiaozhi/android/config/ConfigManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/xiaozhi/android/config/ConfigManager$initializeClientId$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 36
    iget v2, v0, Lcom/xiaozhi/android/config/ConfigManager$initializeClientId$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v1, v0, Lcom/xiaozhi/android/config/ConfigManager$initializeClientId$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Lcom/xiaozhi/android/config/ConfigManager$initializeClientId$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/xiaozhi/android/config/ConfigManager;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v2, v0, Lcom/xiaozhi/android/config/ConfigManager$initializeClientId$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/xiaozhi/android/config/ConfigManager;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 37
    iget-object p1, p0, Lcom/xiaozhi/android/config/ConfigManager;->_clientId:Ljava/lang/String;

    if-eqz p1, :cond_4

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1

    .line 38
    :cond_4
    iget-object p1, p0, Lcom/xiaozhi/android/config/ConfigManager;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/xiaozhi/android/config/ConfigManagerKt;->access$getDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object p1

    invoke-interface {p1}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p0, v0, Lcom/xiaozhi/android/config/ConfigManager$initializeClientId$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/xiaozhi/android/config/ConfigManager$initializeClientId$1;->label:I

    invoke-static {p1, v0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    move-object v2, p0

    :goto_1
    check-cast p1, Landroidx/datastore/preferences/core/Preferences;

    sget-object v4, Lcom/xiaozhi/android/config/ConfigManager;->KEY_CLIENT_ID:Landroidx/datastore/preferences/core/Preferences$Key;

    invoke-virtual {p1, v4}, Landroidx/datastore/preferences/core/Preferences;->get(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_6

    .line 40
    iput-object p1, v2, Lcom/xiaozhi/android/config/ConfigManager;->_clientId:Ljava/lang/String;

    return-object p1

    .line 43
    :cond_6
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v4, "toString(...)"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget-object v4, v2, Lcom/xiaozhi/android/config/ConfigManager;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiaozhi/android/config/ConfigManagerKt;->access$getDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object v4

    new-instance v5, Lcom/xiaozhi/android/config/ConfigManager$initializeClientId$2;

    const/4 v6, 0x0

    invoke-direct {v5, p1, v6}, Lcom/xiaozhi/android/config/ConfigManager$initializeClientId$2;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    iput-object v2, v0, Lcom/xiaozhi/android/config/ConfigManager$initializeClientId$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/xiaozhi/android/config/ConfigManager$initializeClientId$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/xiaozhi/android/config/ConfigManager$initializeClientId$1;->label:I

    invoke-static {v4, v5, v0}, Landroidx/datastore/preferences/core/PreferencesKt;->edit(Landroidx/datastore/core/DataStore;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_7

    return-object v1

    :cond_7
    move-object v1, p1

    move-object v0, v2

    .line 45
    :goto_2
    iput-object v1, v0, Lcom/xiaozhi/android/config/ConfigManager;->_clientId:Ljava/lang/String;

    return-object v1
.end method

.method public final isActivated(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/xiaozhi/android/config/ConfigManager$isActivated$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/xiaozhi/android/config/ConfigManager$isActivated$1;

    iget v1, v0, Lcom/xiaozhi/android/config/ConfigManager$isActivated$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/xiaozhi/android/config/ConfigManager$isActivated$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/xiaozhi/android/config/ConfigManager$isActivated$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/xiaozhi/android/config/ConfigManager$isActivated$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaozhi/android/config/ConfigManager$isActivated$1;-><init>(Lcom/xiaozhi/android/config/ConfigManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/xiaozhi/android/config/ConfigManager$isActivated$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 67
    iget v2, v0, Lcom/xiaozhi/android/config/ConfigManager$isActivated$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 68
    iget-object p1, p0, Lcom/xiaozhi/android/config/ConfigManager;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/xiaozhi/android/config/ConfigManagerKt;->access$getDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object p1

    invoke-interface {p1}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput v3, v0, Lcom/xiaozhi/android/config/ConfigManager$isActivated$1;->label:I

    invoke-static {p1, v0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Landroidx/datastore/preferences/core/Preferences;

    sget-object v0, Lcom/xiaozhi/android/config/ConfigManager;->KEY_ACTIVATED:Landroidx/datastore/preferences/core/Preferences$Key;

    invoke-virtual {p1, v0}, Landroidx/datastore/preferences/core/Preferences;->get(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "true"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final resetNetworkConfig(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
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

    .line 113
    iget-object v0, p0, Lcom/xiaozhi/android/config/ConfigManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaozhi/android/config/ConfigManagerKt;->access$getDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object v0

    new-instance v1, Lcom/xiaozhi/android/config/ConfigManager$resetNetworkConfig$2;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/xiaozhi/android/config/ConfigManager$resetNetworkConfig$2;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Landroidx/datastore/preferences/core/PreferencesKt;->edit(Landroidx/datastore/core/DataStore;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final setAccessToken(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/xiaozhi/android/config/ConfigManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaozhi/android/config/ConfigManagerKt;->access$getDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object v0

    new-instance v1, Lcom/xiaozhi/android/config/ConfigManager$setAccessToken$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/xiaozhi/android/config/ConfigManager$setAccessToken$2;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Landroidx/datastore/preferences/core/PreferencesKt;->edit(Landroidx/datastore/core/DataStore;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final setActivated(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/xiaozhi/android/config/ConfigManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaozhi/android/config/ConfigManagerKt;->access$getDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object v0

    new-instance v1, Lcom/xiaozhi/android/config/ConfigManager$setActivated$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/xiaozhi/android/config/ConfigManager$setActivated$2;-><init>(ZLkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Landroidx/datastore/preferences/core/PreferencesKt;->edit(Landroidx/datastore/core/DataStore;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final setActivationVersion(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/xiaozhi/android/config/ConfigManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaozhi/android/config/ConfigManagerKt;->access$getDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object v0

    new-instance v1, Lcom/xiaozhi/android/config/ConfigManager$setActivationVersion$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/xiaozhi/android/config/ConfigManager$setActivationVersion$2;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Landroidx/datastore/preferences/core/PreferencesKt;->edit(Landroidx/datastore/core/DataStore;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final setDeviceId(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/xiaozhi/android/config/ConfigManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaozhi/android/config/ConfigManagerKt;->access$getDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object v0

    new-instance v1, Lcom/xiaozhi/android/config/ConfigManager$setDeviceId$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/xiaozhi/android/config/ConfigManager$setDeviceId$2;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Landroidx/datastore/preferences/core/PreferencesKt;->edit(Landroidx/datastore/core/DataStore;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final setHmacKey(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/xiaozhi/android/config/ConfigManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaozhi/android/config/ConfigManagerKt;->access$getDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object v0

    new-instance v1, Lcom/xiaozhi/android/config/ConfigManager$setHmacKey$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/xiaozhi/android/config/ConfigManager$setHmacKey$2;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Landroidx/datastore/preferences/core/PreferencesKt;->edit(Landroidx/datastore/core/DataStore;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final setOtaUrl(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/xiaozhi/android/config/ConfigManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaozhi/android/config/ConfigManagerKt;->access$getDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object v0

    new-instance v1, Lcom/xiaozhi/android/config/ConfigManager$setOtaUrl$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/xiaozhi/android/config/ConfigManager$setOtaUrl$2;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Landroidx/datastore/preferences/core/PreferencesKt;->edit(Landroidx/datastore/core/DataStore;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final setSerialNumber(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/xiaozhi/android/config/ConfigManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaozhi/android/config/ConfigManagerKt;->access$getDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object v0

    new-instance v1, Lcom/xiaozhi/android/config/ConfigManager$setSerialNumber$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/xiaozhi/android/config/ConfigManager$setSerialNumber$2;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Landroidx/datastore/preferences/core/PreferencesKt;->edit(Landroidx/datastore/core/DataStore;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final setWebsocketUrl(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/xiaozhi/android/config/ConfigManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaozhi/android/config/ConfigManagerKt;->access$getDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object v0

    new-instance v1, Lcom/xiaozhi/android/config/ConfigManager$setWebsocketUrl$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/xiaozhi/android/config/ConfigManager$setWebsocketUrl$2;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Landroidx/datastore/preferences/core/PreferencesKt;->edit(Landroidx/datastore/core/DataStore;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
