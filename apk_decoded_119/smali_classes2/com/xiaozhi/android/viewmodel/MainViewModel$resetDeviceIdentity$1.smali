.class final Lcom/xiaozhi/android/viewmodel/MainViewModel$resetDeviceIdentity$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MainViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaozhi/android/viewmodel/MainViewModel;->resetDeviceIdentity()V
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
    c = "com.xiaozhi.android.viewmodel.MainViewModel$resetDeviceIdentity$1"
    f = "MainViewModel.kt"
    i = {}
    l = {
        0x3d7,
        0x3e0
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
            "Lcom/xiaozhi/android/viewmodel/MainViewModel$resetDeviceIdentity$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$resetDeviceIdentity$1;->this$0:Lcom/xiaozhi/android/viewmodel/MainViewModel;

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

    new-instance p1, Lcom/xiaozhi/android/viewmodel/MainViewModel$resetDeviceIdentity$1;

    iget-object v0, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$resetDeviceIdentity$1;->this$0:Lcom/xiaozhi/android/viewmodel/MainViewModel;

    invoke-direct {p1, v0, p2}, Lcom/xiaozhi/android/viewmodel/MainViewModel$resetDeviceIdentity$1;-><init>(Lcom/xiaozhi/android/viewmodel/MainViewModel;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/xiaozhi/android/viewmodel/MainViewModel$resetDeviceIdentity$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/xiaozhi/android/viewmodel/MainViewModel$resetDeviceIdentity$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/xiaozhi/android/viewmodel/MainViewModel$resetDeviceIdentity$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/xiaozhi/android/viewmodel/MainViewModel$resetDeviceIdentity$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 979
    iget v1, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$resetDeviceIdentity$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

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

    .line 980
    iget-object p1, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$resetDeviceIdentity$1;->this$0:Lcom/xiaozhi/android/viewmodel/MainViewModel;

    invoke-virtual {p1}, Lcom/xiaozhi/android/viewmodel/MainViewModel;->getWebSocketManager()Lcom/xiaozhi/android/network/WebSocketManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaozhi/android/network/WebSocketManager;->disconnect()V

    .line 981
    iget-object p1, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$resetDeviceIdentity$1;->this$0:Lcom/xiaozhi/android/viewmodel/MainViewModel;

    invoke-static {p1}, Lcom/xiaozhi/android/viewmodel/MainViewModel;->access$get_otaStatus$p(Lcom/xiaozhi/android/viewmodel/MainViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 982
    iget-object p1, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$resetDeviceIdentity$1;->this$0:Lcom/xiaozhi/android/viewmodel/MainViewModel;

    const-string v1, "\u6b63\u5728\u91cd\u7f6e\u8bbe\u5907\u8eab\u4efd..."

    invoke-static {p1, v1}, Lcom/xiaozhi/android/viewmodel/MainViewModel;->access$addLog(Lcom/xiaozhi/android/viewmodel/MainViewModel;Ljava/lang/String;)V

    .line 983
    iget-object p1, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$resetDeviceIdentity$1;->this$0:Lcom/xiaozhi/android/viewmodel/MainViewModel;

    invoke-virtual {p1}, Lcom/xiaozhi/android/viewmodel/MainViewModel;->getActivationService()Lcom/xiaozhi/android/activation/ActivationService;

    move-result-object p1

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput v3, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$resetDeviceIdentity$1;->label:I

    invoke-virtual {p1, v1}, Lcom/xiaozhi/android/activation/ActivationService;->resetDeviceIdentity(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 984
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$resetDeviceIdentity$1;->this$0:Lcom/xiaozhi/android/viewmodel/MainViewModel;

    invoke-virtual {p1}, Lcom/xiaozhi/android/viewmodel/MainViewModel;->getActivationService()Lcom/xiaozhi/android/activation/ActivationService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaozhi/android/activation/ActivationService;->getOtaError()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 986
    iget-object v1, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$resetDeviceIdentity$1;->this$0:Lcom/xiaozhi/android/viewmodel/MainViewModel;

    invoke-static {v1}, Lcom/xiaozhi/android/viewmodel/MainViewModel;->access$get_otaStatus$p(Lcom/xiaozhi/android/viewmodel/MainViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    invoke-interface {v1, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 987
    iget-object v1, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$resetDeviceIdentity$1;->this$0:Lcom/xiaozhi/android/viewmodel/MainViewModel;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u26a0\ufe0f "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaozhi/android/viewmodel/MainViewModel;->access$addLog(Lcom/xiaozhi/android/viewmodel/MainViewModel;Ljava/lang/String;)V

    goto :goto_1

    .line 989
    :cond_4
    iget-object p1, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$resetDeviceIdentity$1;->this$0:Lcom/xiaozhi/android/viewmodel/MainViewModel;

    const-string v1, "\u2705 \u8bbe\u5907\u8eab\u4efd\u5df2\u91cd\u7f6e"

    invoke-static {p1, v1}, Lcom/xiaozhi/android/viewmodel/MainViewModel;->access$addLog(Lcom/xiaozhi/android/viewmodel/MainViewModel;Ljava/lang/String;)V

    .line 992
    :goto_1
    iget-object p1, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$resetDeviceIdentity$1;->this$0:Lcom/xiaozhi/android/viewmodel/MainViewModel;

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$resetDeviceIdentity$1;->label:I

    invoke-static {p1, v1}, Lcom/xiaozhi/android/viewmodel/MainViewModel;->access$startConnection(Lcom/xiaozhi/android/viewmodel/MainViewModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 993
    :cond_5
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
