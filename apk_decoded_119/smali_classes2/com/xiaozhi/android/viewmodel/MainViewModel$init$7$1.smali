.class final Lcom/xiaozhi/android/viewmodel/MainViewModel$init$7$1;
.super Ljava/lang/Object;
.source "MainViewModel.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaozhi/android/viewmodel/MainViewModel$init$7;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaozhi/android/viewmodel/MainViewModel$init$7$1$WhenMappings;
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

    iput-object p1, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$init$7$1;->this$0:Lcom/xiaozhi/android/viewmodel/MainViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Lcom/xiaozhi/android/model/DeviceState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaozhi/android/model/DeviceState;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 212
    iget-object p2, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$init$7$1;->this$0:Lcom/xiaozhi/android/viewmodel/MainViewModel;

    invoke-static {p2}, Lcom/xiaozhi/android/viewmodel/MainViewModel;->access$getWakeWordJob$p(Lcom/xiaozhi/android/viewmodel/MainViewModel;)Lkotlinx/coroutines/Job;

    move-result-object p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-static {p2, v1, v0, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 213
    :cond_0
    sget-object p2, Lcom/xiaozhi/android/viewmodel/MainViewModel$init$7$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/xiaozhi/android/model/DeviceState;->ordinal()I

    move-result p1

    aget p1, p2, p1

    if-ne p1, v0, :cond_1

    .line 216
    iget-object p1, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$init$7$1;->this$0:Lcom/xiaozhi/android/viewmodel/MainViewModel;

    move-object p2, p1

    check-cast p2, Landroidx/lifecycle/ViewModel;

    invoke-static {p2}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    new-instance p2, Lcom/xiaozhi/android/viewmodel/MainViewModel$init$7$1$1;

    iget-object v0, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$init$7$1;->this$0:Lcom/xiaozhi/android/viewmodel/MainViewModel;

    invoke-direct {p2, v0, v1}, Lcom/xiaozhi/android/viewmodel/MainViewModel$init$7$1$1;-><init>(Lcom/xiaozhi/android/viewmodel/MainViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v5, p2

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaozhi/android/viewmodel/MainViewModel;->access$setWakeWordJob$p(Lcom/xiaozhi/android/viewmodel/MainViewModel;Lkotlinx/coroutines/Job;)V

    goto :goto_0

    .line 224
    :cond_1
    iget-object p1, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$init$7$1;->this$0:Lcom/xiaozhi/android/viewmodel/MainViewModel;

    invoke-static {p1}, Lcom/xiaozhi/android/viewmodel/MainViewModel;->access$getWakeWordDetector$p(Lcom/xiaozhi/android/viewmodel/MainViewModel;)Lcom/xiaozhi/android/audio/WakeWordDetector;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/xiaozhi/android/audio/WakeWordDetector;->stop()V

    .line 227
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 211
    check-cast p1, Lcom/xiaozhi/android/model/DeviceState;

    invoke-virtual {p0, p1, p2}, Lcom/xiaozhi/android/viewmodel/MainViewModel$init$7$1;->emit(Lcom/xiaozhi/android/model/DeviceState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
