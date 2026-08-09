.class final Landroidx/compose/foundation/text/selection/SelectionGesturesKt$selectionGesturePointerInputBtf2$2;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "SelectionGestures.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/text/selection/SelectionGesturesKt;->selectionGesturePointerInputBtf2(Landroidx/compose/ui/input/pointer/PointerInputScope;Landroidx/compose/foundation/text/selection/MouseSelectionObserver;Landroidx/compose/foundation/text/TextDragObserver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSelectionGestures.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectionGestures.kt\nandroidx/compose/foundation/text/selection/SelectionGesturesKt$selectionGesturePointerInputBtf2$2\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,444:1\n86#2,2:445\n33#2,6:447\n88#2:453\n*S KotlinDebug\n*F\n+ 1 SelectionGestures.kt\nandroidx/compose/foundation/text/selection/SelectionGesturesKt$selectionGesturePointerInputBtf2$2\n*L\n215#1:445,2\n215#1:447,6\n215#1:453\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.compose.foundation.text.selection.SelectionGesturesKt$selectionGesturePointerInputBtf2$2"
    f = "SelectionGestures.kt"
    i = {
        0x0
    }
    l = {
        0xd1,
        0xd9,
        0xdc,
        0xdd
    }
    m = "invokeSuspend"
    n = {
        "$this$awaitEachGesture"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $clicksCounter:Landroidx/compose/foundation/text/selection/ClicksCounter;

.field final synthetic $mouseSelectionObserver:Landroidx/compose/foundation/text/selection/MouseSelectionObserver;

.field final synthetic $textDragObserver:Landroidx/compose/foundation/text/TextDragObserver;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Landroidx/compose/foundation/text/selection/ClicksCounter;Landroidx/compose/foundation/text/selection/MouseSelectionObserver;Landroidx/compose/foundation/text/TextDragObserver;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/text/selection/ClicksCounter;",
            "Landroidx/compose/foundation/text/selection/MouseSelectionObserver;",
            "Landroidx/compose/foundation/text/TextDragObserver;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/foundation/text/selection/SelectionGesturesKt$selectionGesturePointerInputBtf2$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$selectionGesturePointerInputBtf2$2;->$clicksCounter:Landroidx/compose/foundation/text/selection/ClicksCounter;

    iput-object p2, p0, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$selectionGesturePointerInputBtf2$2;->$mouseSelectionObserver:Landroidx/compose/foundation/text/selection/MouseSelectionObserver;

    iput-object p3, p0, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$selectionGesturePointerInputBtf2$2;->$textDragObserver:Landroidx/compose/foundation/text/TextDragObserver;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
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

    new-instance v0, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$selectionGesturePointerInputBtf2$2;

    iget-object v1, p0, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$selectionGesturePointerInputBtf2$2;->$clicksCounter:Landroidx/compose/foundation/text/selection/ClicksCounter;

    iget-object v2, p0, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$selectionGesturePointerInputBtf2$2;->$mouseSelectionObserver:Landroidx/compose/foundation/text/selection/MouseSelectionObserver;

    iget-object v3, p0, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$selectionGesturePointerInputBtf2$2;->$textDragObserver:Landroidx/compose/foundation/text/TextDragObserver;

    invoke-direct {v0, v1, v2, v3, p2}, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$selectionGesturePointerInputBtf2$2;-><init>(Landroidx/compose/foundation/text/selection/ClicksCounter;Landroidx/compose/foundation/text/selection/MouseSelectionObserver;Landroidx/compose/foundation/text/TextDragObserver;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$selectionGesturePointerInputBtf2$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$selectionGesturePointerInputBtf2$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$selectionGesturePointerInputBtf2$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$selectionGesturePointerInputBtf2$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$selectionGesturePointerInputBtf2$2;->invoke(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 208
    iget v1, p0, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$selectionGesturePointerInputBtf2$2;->label:I

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v5, :cond_2

    if-eq v1, v4, :cond_1

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_2
    iget-object v1, p0, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$selectionGesturePointerInputBtf2$2;->L$0:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$selectionGesturePointerInputBtf2$2;->L$0:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 209
    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput-object v1, p0, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$selectionGesturePointerInputBtf2$2;->L$0:Ljava/lang/Object;

    iput v5, p0, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$selectionGesturePointerInputBtf2$2;->label:I

    invoke-static {v1, p1}, Landroidx/compose/foundation/text/selection/SelectionGesturesKt;->access$awaitDown(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 208
    :cond_4
    :goto_1
    check-cast p1, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 210
    iget-object v6, p0, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$selectionGesturePointerInputBtf2$2;->$clicksCounter:Landroidx/compose/foundation/text/selection/ClicksCounter;

    invoke-virtual {v6, p1}, Landroidx/compose/foundation/text/selection/ClicksCounter;->update(Landroidx/compose/ui/input/pointer/PointerEvent;)V

    .line 211
    invoke-static {p1}, Landroidx/compose/foundation/text/selection/SelectionGesturesKt;->isPrecisePointer(Landroidx/compose/ui/input/pointer/PointerEvent;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_7

    .line 214
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getButtons-ry648PA()I

    move-result v8

    invoke-static {v8}, Landroidx/compose/ui/input/pointer/PointerEvent_androidKt;->isPrimaryPressed-aHzCx-E(I)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 215
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v8

    .line 448
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v9, :cond_6

    .line 449
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 446
    check-cast v11, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 215
    invoke-virtual {v11}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    move-result v11

    xor-int/2addr v11, v5

    if-nez v11, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 217
    :cond_6
    iget-object v2, p0, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$selectionGesturePointerInputBtf2$2;->$mouseSelectionObserver:Landroidx/compose/foundation/text/selection/MouseSelectionObserver;

    iget-object v3, p0, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$selectionGesturePointerInputBtf2$2;->$clicksCounter:Landroidx/compose/foundation/text/selection/ClicksCounter;

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput-object v7, p0, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$selectionGesturePointerInputBtf2$2;->L$0:Ljava/lang/Object;

    iput v4, p0, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$selectionGesturePointerInputBtf2$2;->label:I

    invoke-static {v1, v2, v3, p1, v5}, Landroidx/compose/foundation/text/selection/SelectionGesturesKt;->access$mouseSelectionBtf2(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/foundation/text/selection/MouseSelectionObserver;Landroidx/compose/foundation/text/selection/ClicksCounter;Landroidx/compose/ui/input/pointer/PointerEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_9

    return-object v0

    :cond_7
    :goto_3
    if-nez v6, :cond_9

    .line 219
    iget-object v4, p0, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$selectionGesturePointerInputBtf2$2;->$clicksCounter:Landroidx/compose/foundation/text/selection/ClicksCounter;

    invoke-virtual {v4}, Landroidx/compose/foundation/text/selection/ClicksCounter;->getClicks()I

    move-result v4

    if-ne v4, v5, :cond_8

    .line 220
    iget-object v2, p0, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$selectionGesturePointerInputBtf2$2;->$textDragObserver:Landroidx/compose/foundation/text/TextDragObserver;

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput-object v7, p0, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$selectionGesturePointerInputBtf2$2;->L$0:Ljava/lang/Object;

    iput v3, p0, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$selectionGesturePointerInputBtf2$2;->label:I

    invoke-static {v1, v2, p1, v4}, Landroidx/compose/foundation/text/selection/SelectionGesturesKt;->access$touchSelectionFirstPress(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/foundation/text/TextDragObserver;Landroidx/compose/ui/input/pointer/PointerEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_9

    return-object v0

    .line 221
    :cond_8
    iget-object v3, p0, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$selectionGesturePointerInputBtf2$2;->$textDragObserver:Landroidx/compose/foundation/text/TextDragObserver;

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput-object v7, p0, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$selectionGesturePointerInputBtf2$2;->L$0:Ljava/lang/Object;

    iput v2, p0, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$selectionGesturePointerInputBtf2$2;->label:I

    invoke-static {v1, v3, p1, v4}, Landroidx/compose/foundation/text/selection/SelectionGesturesKt;->access$touchSelectionSubsequentPress(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/foundation/text/TextDragObserver;Landroidx/compose/ui/input/pointer/PointerEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_9

    return-object v0

    .line 224
    :cond_9
    :goto_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
