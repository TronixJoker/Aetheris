.class final Lcom/xiaozhi/android/viewmodel/MainViewModel$startListening$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MainViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaozhi/android/viewmodel/MainViewModel;->startListening()V
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
    c = "com.xiaozhi.android.viewmodel.MainViewModel$startListening$1"
    f = "MainViewModel.kt"
    i = {
        0x1,
        0x2,
        0x2,
        0x3,
        0x3,
        0x3,
        0x4,
        0x5
    }
    l = {
        0x2e3,
        0x2e4,
        0x2e5,
        0x2e6,
        0x2ee,
        0x2f9
    }
    m = "invokeSuspend"
    n = {
        "wsUrl",
        "wsUrl",
        "token",
        "wsUrl",
        "token",
        "deviceId",
        "waited",
        "waited"
    }
    s = {
        "L$0",
        "L$0",
        "L$1",
        "L$0",
        "L$1",
        "L$2",
        "I$0",
        "I$0"
    }
.end annotation


# instance fields
.field I$0:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

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
            "Lcom/xiaozhi/android/viewmodel/MainViewModel$startListening$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$startListening$1;->this$0:Lcom/xiaozhi/android/viewmodel/MainViewModel;

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

    new-instance p1, Lcom/xiaozhi/android/viewmodel/MainViewModel$startListening$1;

    iget-object v0, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$startListening$1;->this$0:Lcom/xiaozhi/android/viewmodel/MainViewModel;

    invoke-direct {p1, v0, p2}, Lcom/xiaozhi/android/viewmodel/MainViewModel$startListening$1;-><init>(Lcom/xiaozhi/android/viewmodel/MainViewModel;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/xiaozhi/android/viewmodel/MainViewModel$startListening$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/xiaozhi/android/viewmodel/MainViewModel$startListening$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/xiaozhi/android/viewmodel/MainViewModel$startListening$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/xiaozhi/android/viewmodel/MainViewModel$startListening$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 734
    iget v1, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$startListening$1;->label:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget v1, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$startListening$1;->I$0:I

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v2, v1

    goto/16 :goto_6

    :pswitch_1
    iget v1, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$startListening$1;->I$0:I

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_2
    iget-object v1, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$startListening$1;->L$2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$startListening$1;->L$1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$startListening$1;->L$0:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_3
    iget-object v1, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$startListening$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$startListening$1;->L$0:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, v3

    move-object v3, v1

    goto :goto_2

    :pswitch_4
    iget-object v1, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$startListening$1;->L$0:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_5
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_6
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 735
    iget-object p1, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$startListening$1;->this$0:Lcom/xiaozhi/android/viewmodel/MainViewModel;

    const-string v1, "\ud83d\udd04 \u5f3a\u5236\u91cd\u8fde\u4e2d..."

    invoke-static {p1, v1}, Lcom/xiaozhi/android/viewmodel/MainViewModel;->access$addLog(Lcom/xiaozhi/android/viewmodel/MainViewModel;Ljava/lang/String;)V

    .line 737
    iget-object p1, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$startListening$1;->this$0:Lcom/xiaozhi/android/viewmodel/MainViewModel;

    invoke-static {p1, v2}, Lcom/xiaozhi/android/viewmodel/MainViewModel;->access$setAudioChannelOpened$p(Lcom/xiaozhi/android/viewmodel/MainViewModel;Z)V

    .line 739
    iget-object p1, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$startListening$1;->this$0:Lcom/xiaozhi/android/viewmodel/MainViewModel;

    invoke-static {p1}, Lcom/xiaozhi/android/viewmodel/MainViewModel;->access$getConfigManager$p(Lcom/xiaozhi/android/viewmodel/MainViewModel;)Lcom/xiaozhi/android/config/ConfigManager;

    move-result-object p1

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    const/4 v3, 0x1

    iput v3, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$startListening$1;->label:I

    invoke-virtual {p1, v1}, Lcom/xiaozhi/android/config/ConfigManager;->getWebsocketUrl(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    return-object v0

    .line 734
    :cond_0
    :goto_0
    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    .line 740
    iget-object p1, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$startListening$1;->this$0:Lcom/xiaozhi/android/viewmodel/MainViewModel;

    invoke-static {p1}, Lcom/xiaozhi/android/viewmodel/MainViewModel;->access$getConfigManager$p(Lcom/xiaozhi/android/viewmodel/MainViewModel;)Lcom/xiaozhi/android/config/ConfigManager;

    move-result-object p1

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput-object v1, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$startListening$1;->L$0:Ljava/lang/Object;

    const/4 v4, 0x2

    iput v4, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$startListening$1;->label:I

    invoke-virtual {p1, v3}, Lcom/xiaozhi/android/config/ConfigManager;->getAccessToken(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_1

    return-object v0

    .line 734
    :cond_1
    :goto_1
    check-cast p1, Ljava/lang/String;

    .line 741
    iget-object v3, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$startListening$1;->this$0:Lcom/xiaozhi/android/viewmodel/MainViewModel;

    invoke-static {v3}, Lcom/xiaozhi/android/viewmodel/MainViewModel;->access$getConfigManager$p(Lcom/xiaozhi/android/viewmodel/MainViewModel;)Lcom/xiaozhi/android/config/ConfigManager;

    move-result-object v3

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput-object v1, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$startListening$1;->L$0:Ljava/lang/Object;

    iput-object p1, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$startListening$1;->L$1:Ljava/lang/Object;

    const/4 v5, 0x3

    iput v5, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$startListening$1;->label:I

    invoke-virtual {v3, v4}, Lcom/xiaozhi/android/config/ConfigManager;->getDeviceId(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_2

    return-object v0

    :cond_2
    move-object v4, v1

    move-object v7, v3

    move-object v3, p1

    move-object p1, v7

    :goto_2
    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_3

    const-string p1, "android-device"

    :cond_3
    move-object v1, p1

    .line 742
    iget-object p1, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$startListening$1;->this$0:Lcom/xiaozhi/android/viewmodel/MainViewModel;

    invoke-static {p1}, Lcom/xiaozhi/android/viewmodel/MainViewModel;->access$getConfigManager$p(Lcom/xiaozhi/android/viewmodel/MainViewModel;)Lcom/xiaozhi/android/config/ConfigManager;

    move-result-object p1

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput-object v4, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$startListening$1;->L$0:Ljava/lang/Object;

    iput-object v3, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$startListening$1;->L$1:Ljava/lang/Object;

    iput-object v1, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$startListening$1;->L$2:Ljava/lang/Object;

    const/4 v6, 0x4

    iput v6, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$startListening$1;->label:I

    invoke-virtual {p1, v5}, Lcom/xiaozhi/android/config/ConfigManager;->getClientId(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 734
    :cond_4
    :goto_3
    check-cast p1, Ljava/lang/String;

    .line 743
    iget-object v5, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$startListening$1;->this$0:Lcom/xiaozhi/android/viewmodel/MainViewModel;

    invoke-virtual {v5}, Lcom/xiaozhi/android/viewmodel/MainViewModel;->getWebSocketManager()Lcom/xiaozhi/android/network/WebSocketManager;

    move-result-object v5

    invoke-virtual {v5, v4, v3, v1, p1}, Lcom/xiaozhi/android/network/WebSocketManager;->configure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    iget-object p1, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$startListening$1;->this$0:Lcom/xiaozhi/android/viewmodel/MainViewModel;

    invoke-virtual {p1}, Lcom/xiaozhi/android/viewmodel/MainViewModel;->getWebSocketManager()Lcom/xiaozhi/android/network/WebSocketManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaozhi/android/network/WebSocketManager;->forceReconnect()V

    .line 746
    iget-object p1, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$startListening$1;->this$0:Lcom/xiaozhi/android/viewmodel/MainViewModel;

    invoke-static {p1}, Lcom/xiaozhi/android/viewmodel/MainViewModel;->access$get_deviceState$p(Lcom/xiaozhi/android/viewmodel/MainViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    sget-object v1, Lcom/xiaozhi/android/model/DeviceState;->CONNECTING:Lcom/xiaozhi/android/model/DeviceState;

    invoke-interface {p1, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_5
    :goto_4
    const/16 p1, 0x3a98

    if-ge v2, p1, :cond_9

    .line 750
    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$startListening$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$startListening$1;->L$1:Ljava/lang/Object;

    iput-object v1, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$startListening$1;->L$2:Ljava/lang/Object;

    iput v2, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$startListening$1;->I$0:I

    const/4 v1, 0x5

    iput v1, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$startListening$1;->label:I

    const-wide/16 v3, 0x1f4

    invoke-static {v3, v4, p1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    :cond_6
    move v1, v2

    :goto_5
    add-int/lit16 v2, v1, 0x1f4

    .line 752
    iget-object p1, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$startListening$1;->this$0:Lcom/xiaozhi/android/viewmodel/MainViewModel;

    invoke-virtual {p1}, Lcom/xiaozhi/android/viewmodel/MainViewModel;->getWebSocketManager()Lcom/xiaozhi/android/network/WebSocketManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaozhi/android/network/WebSocketManager;->getConnectionState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaozhi/android/network/WebSocketManager$ConnectionState;

    .line 753
    sget-object v1, Lcom/xiaozhi/android/network/WebSocketManager$ConnectionState;->CONNECTED:Lcom/xiaozhi/android/network/WebSocketManager$ConnectionState;

    if-ne p1, v1, :cond_7

    iget-object v1, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$startListening$1;->this$0:Lcom/xiaozhi/android/viewmodel/MainViewModel;

    invoke-static {v1}, Lcom/xiaozhi/android/viewmodel/MainViewModel;->access$getAudioChannelOpened$p(Lcom/xiaozhi/android/viewmodel/MainViewModel;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 754
    iget-object p1, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$startListening$1;->this$0:Lcom/xiaozhi/android/viewmodel/MainViewModel;

    const-string v0, "\u2705 \u8fde\u63a5\u5c31\u7eea"

    invoke-static {p1, v0}, Lcom/xiaozhi/android/viewmodel/MainViewModel;->access$addLog(Lcom/xiaozhi/android/viewmodel/MainViewModel;Ljava/lang/String;)V

    .line 755
    iget-object p1, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$startListening$1;->this$0:Lcom/xiaozhi/android/viewmodel/MainViewModel;

    invoke-static {p1}, Lcom/xiaozhi/android/viewmodel/MainViewModel;->access$tryStartListeningInternal(Lcom/xiaozhi/android/viewmodel/MainViewModel;)V

    .line 756
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 758
    :cond_7
    sget-object v1, Lcom/xiaozhi/android/network/WebSocketManager$ConnectionState;->DISCONNECTED:Lcom/xiaozhi/android/network/WebSocketManager$ConnectionState;

    if-ne p1, v1, :cond_5

    .line 760
    iget-object p1, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$startListening$1;->this$0:Lcom/xiaozhi/android/viewmodel/MainViewModel;

    const-string v1, "\u26a0\ufe0f \u91cd\u8fde\u5931\u8d25\uff0c\u518d\u8bd5..."

    invoke-static {p1, v1}, Lcom/xiaozhi/android/viewmodel/MainViewModel;->access$addLog(Lcom/xiaozhi/android/viewmodel/MainViewModel;Ljava/lang/String;)V

    .line 761
    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$startListening$1;->I$0:I

    const/4 v1, 0x6

    iput v1, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$startListening$1;->label:I

    const-wide/16 v3, 0x3e8

    invoke-static {v3, v4, p1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    return-object v0

    .line 762
    :cond_8
    :goto_6
    iget-object p1, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$startListening$1;->this$0:Lcom/xiaozhi/android/viewmodel/MainViewModel;

    invoke-virtual {p1}, Lcom/xiaozhi/android/viewmodel/MainViewModel;->getWebSocketManager()Lcom/xiaozhi/android/network/WebSocketManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaozhi/android/network/WebSocketManager;->forceReconnect()V

    goto :goto_4

    .line 765
    :cond_9
    iget-object p1, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$startListening$1;->this$0:Lcom/xiaozhi/android/viewmodel/MainViewModel;

    const-string v0, "\u274c \u8fde\u63a5\u8d85\u65f6\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u540e\u91cd\u8bd5"

    invoke-static {p1, v0}, Lcom/xiaozhi/android/viewmodel/MainViewModel;->access$addLog(Lcom/xiaozhi/android/viewmodel/MainViewModel;Ljava/lang/String;)V

    .line 766
    iget-object p1, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$startListening$1;->this$0:Lcom/xiaozhi/android/viewmodel/MainViewModel;

    invoke-static {p1}, Lcom/xiaozhi/android/viewmodel/MainViewModel;->access$get_deviceState$p(Lcom/xiaozhi/android/viewmodel/MainViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    sget-object v0, Lcom/xiaozhi/android/model/DeviceState;->IDLE:Lcom/xiaozhi/android/model/DeviceState;

    invoke-interface {p1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 767
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    nop

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
