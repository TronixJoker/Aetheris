.class final Lcom/xiaozhi/android/viewmodel/MainViewModel$init$3$1;
.super Ljava/lang/Object;
.source "MainViewModel.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaozhi/android/viewmodel/MainViewModel$init$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
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

    iput-object p1, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$init$3$1;->this$0:Lcom/xiaozhi/android/viewmodel/MainViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 144
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/xiaozhi/android/viewmodel/MainViewModel$init$3$1;->emit(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final emit(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
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

    .line 145
    iget-object p2, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$init$3$1;->this$0:Lcom/xiaozhi/android/viewmodel/MainViewModel;

    invoke-static {p2, p1}, Lcom/xiaozhi/android/viewmodel/MainViewModel;->access$handleJsonMessage(Lcom/xiaozhi/android/viewmodel/MainViewModel;Ljava/lang/String;)V

    .line 146
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
