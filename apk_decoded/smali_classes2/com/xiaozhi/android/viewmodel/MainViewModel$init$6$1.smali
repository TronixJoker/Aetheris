.class final Lcom/xiaozhi/android/viewmodel/MainViewModel$init$6$1;
.super Ljava/lang/Object;
.source "MainViewModel.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaozhi/android/viewmodel/MainViewModel$init$6;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaozhi/android/viewmodel/MainViewModel$init$6$1$WhenMappings;
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

    iput-object p1, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$init$6$1;->this$0:Lcom/xiaozhi/android/viewmodel/MainViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 187
    check-cast p1, [S

    invoke-virtual {p0, p1, p2}, Lcom/xiaozhi/android/viewmodel/MainViewModel$init$6$1;->emit([SLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final emit([SLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([S",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 188
    iget-object p2, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$init$6$1;->this$0:Lcom/xiaozhi/android/viewmodel/MainViewModel;

    invoke-static {p2}, Lcom/xiaozhi/android/viewmodel/MainViewModel;->access$get_deviceState$p(Lcom/xiaozhi/android/viewmodel/MainViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p2

    invoke-interface {p2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaozhi/android/model/DeviceState;

    sget-object v0, Lcom/xiaozhi/android/viewmodel/MainViewModel$init$6$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Lcom/xiaozhi/android/model/DeviceState;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 200
    :cond_0
    iget-object p2, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$init$6$1;->this$0:Lcom/xiaozhi/android/viewmodel/MainViewModel;

    invoke-static {p2, p1}, Lcom/xiaozhi/android/viewmodel/MainViewModel;->access$detectUserInterruption(Lcom/xiaozhi/android/viewmodel/MainViewModel;[S)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 201
    iget-object p1, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$init$6$1;->this$0:Lcom/xiaozhi/android/viewmodel/MainViewModel;

    invoke-virtual {p1}, Lcom/xiaozhi/android/viewmodel/MainViewModel;->interruptSpeaking()V

    goto :goto_0

    .line 191
    :cond_1
    iget-object p2, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$init$6$1;->this$0:Lcom/xiaozhi/android/viewmodel/MainViewModel;

    invoke-static {p2}, Lcom/xiaozhi/android/viewmodel/MainViewModel;->access$getAudioChannelOpened$p(Lcom/xiaozhi/android/viewmodel/MainViewModel;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 192
    iget-object p2, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$init$6$1;->this$0:Lcom/xiaozhi/android/viewmodel/MainViewModel;

    invoke-static {p2}, Lcom/xiaozhi/android/viewmodel/MainViewModel;->access$getOpusCodec$p(Lcom/xiaozhi/android/viewmodel/MainViewModel;)Lcom/xiaozhi/android/audio/OpusCodec;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/xiaozhi/android/audio/OpusCodec;->encode([S)[B

    move-result-object p1

    if-eqz p1, :cond_2

    .line 194
    iget-object p2, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$init$6$1;->this$0:Lcom/xiaozhi/android/viewmodel/MainViewModel;

    invoke-virtual {p2}, Lcom/xiaozhi/android/viewmodel/MainViewModel;->getWebSocketManager()Lcom/xiaozhi/android/network/WebSocketManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/xiaozhi/android/network/WebSocketManager;->sendAudio([B)V

    .line 206
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
