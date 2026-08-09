.class final Lcom/xiaozhi/android/audio/AudioRecorder$start$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AudioRecorder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaozhi/android/audio/AudioRecorder;->start()Z
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
    c = "com.xiaozhi.android.audio.AudioRecorder$start$1"
    f = "AudioRecorder.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0x66
    }
    m = "invokeSuspend"
    n = {
        "$this$launch",
        "buffer"
    }
    s = {
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/xiaozhi/android/audio/AudioRecorder;


# direct methods
.method constructor <init>(Lcom/xiaozhi/android/audio/AudioRecorder;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaozhi/android/audio/AudioRecorder;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/xiaozhi/android/audio/AudioRecorder$start$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaozhi/android/audio/AudioRecorder$start$1;->this$0:Lcom/xiaozhi/android/audio/AudioRecorder;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance v0, Lcom/xiaozhi/android/audio/AudioRecorder$start$1;

    iget-object v1, p0, Lcom/xiaozhi/android/audio/AudioRecorder$start$1;->this$0:Lcom/xiaozhi/android/audio/AudioRecorder;

    invoke-direct {v0, v1, p2}, Lcom/xiaozhi/android/audio/AudioRecorder$start$1;-><init>(Lcom/xiaozhi/android/audio/AudioRecorder;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/xiaozhi/android/audio/AudioRecorder$start$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/xiaozhi/android/audio/AudioRecorder$start$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/xiaozhi/android/audio/AudioRecorder$start$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/xiaozhi/android/audio/AudioRecorder$start$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/xiaozhi/android/audio/AudioRecorder$start$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 97
    iget v1, p0, Lcom/xiaozhi/android/audio/AudioRecorder$start$1;->label:I

    const/16 v2, 0x140

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/xiaozhi/android/audio/AudioRecorder$start$1;->L$1:Ljava/lang/Object;

    check-cast v1, [S

    iget-object v4, p0, Lcom/xiaozhi/android/audio/AudioRecorder$start$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/xiaozhi/android/audio/AudioRecorder$start$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 98
    new-array v1, v2, [S

    move-object v4, p1

    .line 99
    :cond_2
    :goto_0
    invoke-static {v4}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/xiaozhi/android/audio/AudioRecorder$start$1;->this$0:Lcom/xiaozhi/android/audio/AudioRecorder;

    invoke-static {p1}, Lcom/xiaozhi/android/audio/AudioRecorder;->access$isRecording$p(Lcom/xiaozhi/android/audio/AudioRecorder;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 100
    iget-object p1, p0, Lcom/xiaozhi/android/audio/AudioRecorder$start$1;->this$0:Lcom/xiaozhi/android/audio/AudioRecorder;

    invoke-static {p1}, Lcom/xiaozhi/android/audio/AudioRecorder;->access$getAudioRecord$p(Lcom/xiaozhi/android/audio/AudioRecorder;)Landroid/media/AudioRecord;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 v5, 0x0

    invoke-virtual {p1, v1, v5, v2}, Landroid/media/AudioRecord;->read([SII)I

    move-result p1

    goto :goto_1

    :cond_3
    const/4 p1, -0x1

    :goto_1
    if-lez p1, :cond_2

    .line 102
    iget-object v5, p0, Lcom/xiaozhi/android/audio/AudioRecorder$start$1;->this$0:Lcom/xiaozhi/android/audio/AudioRecorder;

    invoke-static {v5}, Lcom/xiaozhi/android/audio/AudioRecorder;->access$get_pcmData$p(Lcom/xiaozhi/android/audio/AudioRecorder;)Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object v5

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object p1

    const-string v6, "copyOf(...)"

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object v4, p0, Lcom/xiaozhi/android/audio/AudioRecorder$start$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/xiaozhi/android/audio/AudioRecorder$start$1;->L$1:Ljava/lang/Object;

    iput v3, p0, Lcom/xiaozhi/android/audio/AudioRecorder$start$1;->label:I

    invoke-interface {v5, p1, v6}, Lkotlinx/coroutines/flow/MutableSharedFlow;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 105
    :cond_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
