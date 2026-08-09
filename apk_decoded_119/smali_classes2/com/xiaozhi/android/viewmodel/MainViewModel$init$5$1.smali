.class final Lcom/xiaozhi/android/viewmodel/MainViewModel$init$5$1;
.super Ljava/lang/Object;
.source "MainViewModel.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaozhi/android/viewmodel/MainViewModel$init$5;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaozhi/android/viewmodel/MainViewModel$init$5$1$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaozhi/android/viewmodel/MainViewModel;


# direct methods
.method constructor <init>(Lcom/xiaozhi/android/viewmodel/MainViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$init$5$1;->this$0:Lcom/xiaozhi/android/viewmodel/MainViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Lcom/xiaozhi/android/network/WebSocketManager$ConnectionState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaozhi/android/network/WebSocketManager$ConnectionState;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 159
    sget-object p2, Lcom/xiaozhi/android/viewmodel/MainViewModel$init$5$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/xiaozhi/android/network/WebSocketManager$ConnectionState;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_4

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-ne p1, p2, :cond_1

    .line 171
    iget-object p1, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$init$5$1;->this$0:Lcom/xiaozhi/android/viewmodel/MainViewModel;

    invoke-static {p1}, Lcom/xiaozhi/android/viewmodel/MainViewModel;->access$isRunning$p(Lcom/xiaozhi/android/viewmodel/MainViewModel;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 172
    iget-object p1, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$init$5$1;->this$0:Lcom/xiaozhi/android/viewmodel/MainViewModel;

    invoke-virtual {p1}, Lcom/xiaozhi/android/viewmodel/MainViewModel;->getWebSocketManager()Lcom/xiaozhi/android/network/WebSocketManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaozhi/android/network/WebSocketManager;->getDisconnectReason()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 174
    iget-object p2, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$init$5$1;->this$0:Lcom/xiaozhi/android/viewmodel/MainViewModel;

    const/16 v0, 0x3c

    invoke-static {p1, v0}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u274c \u8fde\u63a5\u65ad\u5f00: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaozhi/android/viewmodel/MainViewModel;->access$addLog(Lcom/xiaozhi/android/viewmodel/MainViewModel;Ljava/lang/String;)V

    goto :goto_0

    .line 176
    :cond_0
    iget-object p1, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$init$5$1;->this$0:Lcom/xiaozhi/android/viewmodel/MainViewModel;

    const-string p2, "\u274c \u8fde\u63a5\u5df2\u65ad\u5f00"

    invoke-static {p1, p2}, Lcom/xiaozhi/android/viewmodel/MainViewModel;->access$addLog(Lcom/xiaozhi/android/viewmodel/MainViewModel;Ljava/lang/String;)V

    .line 178
    :goto_0
    iget-object p1, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$init$5$1;->this$0:Lcom/xiaozhi/android/viewmodel/MainViewModel;

    invoke-static {p1}, Lcom/xiaozhi/android/viewmodel/MainViewModel;->access$get_deviceState$p(Lcom/xiaozhi/android/viewmodel/MainViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    sget-object p2, Lcom/xiaozhi/android/model/DeviceState;->IDLE:Lcom/xiaozhi/android/model/DeviceState;

    invoke-interface {p1, p2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    goto :goto_1

    .line 159
    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 165
    :cond_2
    iget-object p1, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$init$5$1;->this$0:Lcom/xiaozhi/android/viewmodel/MainViewModel;

    invoke-static {p1}, Lcom/xiaozhi/android/viewmodel/MainViewModel;->access$isRunning$p(Lcom/xiaozhi/android/viewmodel/MainViewModel;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 166
    iget-object p1, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$init$5$1;->this$0:Lcom/xiaozhi/android/viewmodel/MainViewModel;

    const-string p2, "\ud83d\udd04 \u6b63\u5728\u8fde\u63a5\u670d\u52a1\u5668..."

    invoke-static {p1, p2}, Lcom/xiaozhi/android/viewmodel/MainViewModel;->access$addLog(Lcom/xiaozhi/android/viewmodel/MainViewModel;Ljava/lang/String;)V

    .line 168
    :cond_3
    iget-object p1, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$init$5$1;->this$0:Lcom/xiaozhi/android/viewmodel/MainViewModel;

    invoke-static {p1}, Lcom/xiaozhi/android/viewmodel/MainViewModel;->access$get_deviceState$p(Lcom/xiaozhi/android/viewmodel/MainViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    sget-object p2, Lcom/xiaozhi/android/model/DeviceState;->CONNECTING:Lcom/xiaozhi/android/model/DeviceState;

    invoke-interface {p1, p2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    goto :goto_1

    .line 161
    :cond_4
    iget-object p1, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$init$5$1;->this$0:Lcom/xiaozhi/android/viewmodel/MainViewModel;

    const-string p2, "\u2705 \u670d\u52a1\u5668\u5df2\u8fde\u63a5"

    invoke-static {p1, p2}, Lcom/xiaozhi/android/viewmodel/MainViewModel;->access$addLog(Lcom/xiaozhi/android/viewmodel/MainViewModel;Ljava/lang/String;)V

    .line 162
    iget-object p1, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$init$5$1;->this$0:Lcom/xiaozhi/android/viewmodel/MainViewModel;

    invoke-static {p1}, Lcom/xiaozhi/android/viewmodel/MainViewModel;->access$get_deviceState$p(Lcom/xiaozhi/android/viewmodel/MainViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    sget-object p2, Lcom/xiaozhi/android/model/DeviceState;->IDLE:Lcom/xiaozhi/android/model/DeviceState;

    invoke-interface {p1, p2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 182
    :cond_5
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 158
    check-cast p1, Lcom/xiaozhi/android/network/WebSocketManager$ConnectionState;

    invoke-virtual {p0, p1, p2}, Lcom/xiaozhi/android/viewmodel/MainViewModel$init$5$1;->emit(Lcom/xiaozhi/android/network/WebSocketManager$ConnectionState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
