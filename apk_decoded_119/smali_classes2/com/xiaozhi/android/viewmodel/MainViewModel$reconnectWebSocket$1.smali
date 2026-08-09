.class final Lcom/xiaozhi/android/viewmodel/MainViewModel$reconnectWebSocket$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MainViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaozhi/android/viewmodel/MainViewModel;->reconnectWebSocket()V
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
    c = "com.xiaozhi.android.viewmodel.MainViewModel$reconnectWebSocket$1"
    f = "MainViewModel.kt"
    i = {}
    l = {
        0x3b4,
        0x3b5
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/xiaozhi/android/viewmodel/MainViewModel;


# direct methods
.method constructor <init>(Lcom/xiaozhi/android/viewmodel/MainViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaozhi/android/viewmodel/MainViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/xiaozhi/android/viewmodel/MainViewModel$reconnectWebSocket$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$reconnectWebSocket$1;->this$0:Lcom/xiaozhi/android/viewmodel/MainViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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

    new-instance p1, Lcom/xiaozhi/android/viewmodel/MainViewModel$reconnectWebSocket$1;

    iget-object v0, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$reconnectWebSocket$1;->this$0:Lcom/xiaozhi/android/viewmodel/MainViewModel;

    invoke-direct {p1, v0, p2}, Lcom/xiaozhi/android/viewmodel/MainViewModel$reconnectWebSocket$1;-><init>(Lcom/xiaozhi/android/viewmodel/MainViewModel;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/xiaozhi/android/viewmodel/MainViewModel$reconnectWebSocket$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/xiaozhi/android/viewmodel/MainViewModel$reconnectWebSocket$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/xiaozhi/android/viewmodel/MainViewModel$reconnectWebSocket$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/xiaozhi/android/viewmodel/MainViewModel$reconnectWebSocket$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 941
    iget v1, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$reconnectWebSocket$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 942
    iget-object p1, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$reconnectWebSocket$1;->this$0:Lcom/xiaozhi/android/viewmodel/MainViewModel;

    invoke-virtual {p1}, Lcom/xiaozhi/android/viewmodel/MainViewModel;->getWebSocketManager()Lcom/xiaozhi/android/network/WebSocketManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaozhi/android/network/WebSocketManager;->getConnectionState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    sget-object v1, Lcom/xiaozhi/android/network/WebSocketManager$ConnectionState;->CONNECTED:Lcom/xiaozhi/android/network/WebSocketManager$ConnectionState;

    if-ne p1, v1, :cond_3

    .line 943
    iget-object p1, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$reconnectWebSocket$1;->this$0:Lcom/xiaozhi/android/viewmodel/MainViewModel;

    const-string v0, "\u5df2\u7ecf\u5728\u8fde\u63a5\u4e2d"

    invoke-static {p1, v0}, Lcom/xiaozhi/android/viewmodel/MainViewModel;->access$addLog(Lcom/xiaozhi/android/viewmodel/MainViewModel;Ljava/lang/String;)V

    .line 944
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 946
    :cond_3
    iget-object p1, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$reconnectWebSocket$1;->this$0:Lcom/xiaozhi/android/viewmodel/MainViewModel;

    const-string v1, "\ud83d\udd04 \u91cd\u65b0\u8fde\u63a5\u670d\u52a1\u5668..."

    invoke-static {p1, v1}, Lcom/xiaozhi/android/viewmodel/MainViewModel;->access$addLog(Lcom/xiaozhi/android/viewmodel/MainViewModel;Ljava/lang/String;)V

    .line 947
    iget-object p1, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$reconnectWebSocket$1;->this$0:Lcom/xiaozhi/android/viewmodel/MainViewModel;

    invoke-virtual {p1}, Lcom/xiaozhi/android/viewmodel/MainViewModel;->getWebSocketManager()Lcom/xiaozhi/android/network/WebSocketManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaozhi/android/network/WebSocketManager;->disconnect()V

    .line 948
    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput v3, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$reconnectWebSocket$1;->label:I

    const-wide/16 v3, 0x1f4

    invoke-static {v3, v4, p1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 949
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$reconnectWebSocket$1;->this$0:Lcom/xiaozhi/android/viewmodel/MainViewModel;

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$reconnectWebSocket$1;->label:I

    invoke-static {p1, v1}, Lcom/xiaozhi/android/viewmodel/MainViewModel;->access$startConnection(Lcom/xiaozhi/android/viewmodel/MainViewModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 950
    :cond_5
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
