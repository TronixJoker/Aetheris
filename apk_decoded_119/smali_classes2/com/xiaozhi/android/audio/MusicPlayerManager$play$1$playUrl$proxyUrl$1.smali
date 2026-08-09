.class final Lcom/xiaozhi/android/audio/MusicPlayerManager$play$1$playUrl$proxyUrl$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MusicPlayerManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaozhi/android/audio/MusicPlayerManager$play$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n"
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
    c = "com.xiaozhi.android.audio.MusicPlayerManager$play$1$playUrl$proxyUrl$1"
    f = "MusicPlayerManager.kt"
    i = {}
    l = {}
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
.method constructor <init>(Lcom/xiaozhi/android/audio/MusicPlayerManager;Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaozhi/android/audio/MusicPlayerManager;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/xiaozhi/android/audio/MusicPlayerManager$play$1$playUrl$proxyUrl$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaozhi/android/audio/MusicPlayerManager$play$1$playUrl$proxyUrl$1;->this$0:Lcom/xiaozhi/android/audio/MusicPlayerManager;

    iput-object p2, p0, Lcom/xiaozhi/android/audio/MusicPlayerManager$play$1$playUrl$proxyUrl$1;->$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaozhi/android/audio/MusicPlayerManager$play$1$playUrl$proxyUrl$1;->$headers:Ljava/util/Map;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
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

    new-instance p1, Lcom/xiaozhi/android/audio/MusicPlayerManager$play$1$playUrl$proxyUrl$1;

    iget-object v0, p0, Lcom/xiaozhi/android/audio/MusicPlayerManager$play$1$playUrl$proxyUrl$1;->this$0:Lcom/xiaozhi/android/audio/MusicPlayerManager;

    iget-object v1, p0, Lcom/xiaozhi/android/audio/MusicPlayerManager$play$1$playUrl$proxyUrl$1;->$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaozhi/android/audio/MusicPlayerManager$play$1$playUrl$proxyUrl$1;->$headers:Ljava/util/Map;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/xiaozhi/android/audio/MusicPlayerManager$play$1$playUrl$proxyUrl$1;-><init>(Lcom/xiaozhi/android/audio/MusicPlayerManager;Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/xiaozhi/android/audio/MusicPlayerManager$play$1$playUrl$proxyUrl$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/xiaozhi/android/audio/MusicPlayerManager$play$1$playUrl$proxyUrl$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/xiaozhi/android/audio/MusicPlayerManager$play$1$playUrl$proxyUrl$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/xiaozhi/android/audio/MusicPlayerManager$play$1$playUrl$proxyUrl$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const-string v0, "MusicPlayerManager"

    const-string v1, "Playing via local proxy: "

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 70
    iget v2, p0, Lcom/xiaozhi/android/audio/MusicPlayerManager$play$1$playUrl$proxyUrl$1;->label:I

    if-nez v2, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 72
    :try_start_0
    iget-object v2, p0, Lcom/xiaozhi/android/audio/MusicPlayerManager$play$1$playUrl$proxyUrl$1;->this$0:Lcom/xiaozhi/android/audio/MusicPlayerManager;

    invoke-static {v2}, Lcom/xiaozhi/android/audio/MusicPlayerManager;->access$getProxyServer$p(Lcom/xiaozhi/android/audio/MusicPlayerManager;)Lcom/xiaozhi/android/audio/LocalAudioProxyServer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaozhi/android/audio/LocalAudioProxyServer;->start()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 74
    const-string v1, "Failed to start local proxy"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    .line 77
    :cond_0
    iget-object v2, p0, Lcom/xiaozhi/android/audio/MusicPlayerManager$play$1$playUrl$proxyUrl$1;->this$0:Lcom/xiaozhi/android/audio/MusicPlayerManager;

    invoke-static {v2}, Lcom/xiaozhi/android/audio/MusicPlayerManager;->access$getProxyServer$p(Lcom/xiaozhi/android/audio/MusicPlayerManager;)Lcom/xiaozhi/android/audio/LocalAudioProxyServer;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaozhi/android/audio/MusicPlayerManager$play$1$playUrl$proxyUrl$1;->$url:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaozhi/android/audio/MusicPlayerManager$play$1$playUrl$proxyUrl$1;->$headers:Ljava/util/Map;

    invoke-virtual {v2, v3, v4}, Lcom/xiaozhi/android/audio/LocalAudioProxyServer;->buildProxyUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 78
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v2

    goto :goto_0

    :catch_0
    move-exception v1

    .line 81
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Proxy start failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object p1

    .line 70
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
