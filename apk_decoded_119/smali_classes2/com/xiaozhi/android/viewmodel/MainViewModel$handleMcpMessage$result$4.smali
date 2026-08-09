.class final Lcom/xiaozhi/android/viewmodel/MainViewModel$handleMcpMessage$result$4;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MainViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaozhi/android/viewmodel/MainViewModel;->handleMcpMessage(Lkotlinx/serialization/json/JsonObject;)V
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
    c = "com.xiaozhi.android.viewmodel.MainViewModel$handleMcpMessage$result$4"
    f = "MainViewModel.kt"
    i = {}
    l = {
        0x27b
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $musicQuery:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/xiaozhi/android/viewmodel/MainViewModel;


# direct methods
.method constructor <init>(Lcom/xiaozhi/android/viewmodel/MainViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaozhi/android/viewmodel/MainViewModel;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/xiaozhi/android/viewmodel/MainViewModel$handleMcpMessage$result$4;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$handleMcpMessage$result$4;->this$0:Lcom/xiaozhi/android/viewmodel/MainViewModel;

    iput-object p2, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$handleMcpMessage$result$4;->$musicQuery:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance p1, Lcom/xiaozhi/android/viewmodel/MainViewModel$handleMcpMessage$result$4;

    iget-object v0, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$handleMcpMessage$result$4;->this$0:Lcom/xiaozhi/android/viewmodel/MainViewModel;

    iget-object v1, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$handleMcpMessage$result$4;->$musicQuery:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Lcom/xiaozhi/android/viewmodel/MainViewModel$handleMcpMessage$result$4;-><init>(Lcom/xiaozhi/android/viewmodel/MainViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/xiaozhi/android/viewmodel/MainViewModel$handleMcpMessage$result$4;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/xiaozhi/android/viewmodel/MainViewModel$handleMcpMessage$result$4;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/xiaozhi/android/viewmodel/MainViewModel$handleMcpMessage$result$4;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/xiaozhi/android/viewmodel/MainViewModel$handleMcpMessage$result$4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 633
    iget v1, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$handleMcpMessage$result$4;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 634
    iget-object p1, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$handleMcpMessage$result$4;->this$0:Lcom/xiaozhi/android/viewmodel/MainViewModel;

    iget-object v1, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$handleMcpMessage$result$4;->$musicQuery:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\ud83c\udfb5 \u641c\u7d22\u97f3\u4e50: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/xiaozhi/android/viewmodel/MainViewModel;->access$addLog(Lcom/xiaozhi/android/viewmodel/MainViewModel;Ljava/lang/String;)V

    .line 635
    iget-object p1, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$handleMcpMessage$result$4;->this$0:Lcom/xiaozhi/android/viewmodel/MainViewModel;

    invoke-static {p1}, Lcom/xiaozhi/android/viewmodel/MainViewModel;->access$getCommandExecutor$p(Lcom/xiaozhi/android/viewmodel/MainViewModel;)Lcom/xiaozhi/android/control/CommandExecutor;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$handleMcpMessage$result$4;->$musicQuery:Ljava/lang/String;

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$handleMcpMessage$result$4;->label:I

    invoke-virtual {p1, v1, v3}, Lcom/xiaozhi/android/control/CommandExecutor;->searchMusicForPlay(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 633
    :cond_2
    :goto_0
    check-cast p1, Lcom/xiaozhi/android/control/MusicInfo;

    if-eqz p1, :cond_3

    .line 637
    iget-object v0, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$handleMcpMessage$result$4;->this$0:Lcom/xiaozhi/android/viewmodel/MainViewModel;

    invoke-virtual {p1}, Lcom/xiaozhi/android/control/MusicInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaozhi/android/control/MusicInfo;->getArtist()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u25b6\ufe0f \u64ad\u653e: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaozhi/android/viewmodel/MainViewModel;->access$addLog(Lcom/xiaozhi/android/viewmodel/MainViewModel;Ljava/lang/String;)V

    .line 638
    iget-object v0, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$handleMcpMessage$result$4;->this$0:Lcom/xiaozhi/android/viewmodel/MainViewModel;

    invoke-virtual {v0}, Lcom/xiaozhi/android/viewmodel/MainViewModel;->getMusicPlayer()Lcom/xiaozhi/android/audio/MusicPlayerManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaozhi/android/control/MusicInfo;->getPlayUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaozhi/android/control/MusicInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/xiaozhi/android/control/MusicInfo;->getArtist()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/xiaozhi/android/control/MusicInfo;->getHeaders()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xiaozhi/android/audio/MusicPlayerManager;->play(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 639
    iget-object v0, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$handleMcpMessage$result$4;->this$0:Lcom/xiaozhi/android/viewmodel/MainViewModel;

    invoke-virtual {v0}, Lcom/xiaozhi/android/viewmodel/MainViewModel;->getWebSocketManager()Lcom/xiaozhi/android/network/WebSocketManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaozhi/android/control/MusicInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaozhi/android/control/MusicInfo;->getArtist()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u6b63\u5728\u64ad\u653e\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\uff0c\u6b4c\u624b\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaozhi/android/network/WebSocketManager;->sendSystemText(Ljava/lang/String;)V

    goto :goto_1

    .line 641
    :cond_3
    iget-object p1, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$handleMcpMessage$result$4;->this$0:Lcom/xiaozhi/android/viewmodel/MainViewModel;

    const-string v0, "\u26a0\ufe0f \u672a\u627e\u5230\u97f3\u4e50"

    invoke-static {p1, v0}, Lcom/xiaozhi/android/viewmodel/MainViewModel;->access$addLog(Lcom/xiaozhi/android/viewmodel/MainViewModel;Ljava/lang/String;)V

    .line 642
    iget-object p1, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$handleMcpMessage$result$4;->this$0:Lcom/xiaozhi/android/viewmodel/MainViewModel;

    invoke-virtual {p1}, Lcom/xiaozhi/android/viewmodel/MainViewModel;->getWebSocketManager()Lcom/xiaozhi/android/network/WebSocketManager;

    move-result-object p1

    const-string v0, "\u62b1\u6b49\uff0c\u672a\u627e\u5230\u76f8\u5173\u97f3\u4e50\uff0c\u8bf7\u6362\u4e2a\u5173\u952e\u8bcd\u8bd5\u8bd5"

    invoke-virtual {p1, v0}, Lcom/xiaozhi/android/network/WebSocketManager;->sendSystemText(Ljava/lang/String;)V

    .line 644
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
