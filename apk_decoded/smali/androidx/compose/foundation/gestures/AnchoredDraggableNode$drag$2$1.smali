.class final Landroidx/compose/foundation/gestures/AnchoredDraggableNode$drag$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AnchoredDraggable.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/gestures/AnchoredDraggableNode$drag$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/foundation/gestures/DragEvent$DragDelta;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "dragDelta",
        "Landroidx/compose/foundation/gestures/DragEvent$DragDelta;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $$this$anchoredDrag:Landroidx/compose/foundation/gestures/AnchoredDragScope;

.field final synthetic this$0:Landroidx/compose/foundation/gestures/AnchoredDraggableNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/foundation/gestures/AnchoredDraggableNode<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/compose/foundation/gestures/AnchoredDraggableNode;Landroidx/compose/foundation/gestures/AnchoredDragScope;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/AnchoredDraggableNode<",
            "TT;>;",
            "Landroidx/compose/foundation/gestures/AnchoredDragScope;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/gestures/AnchoredDraggableNode$drag$2$1;->this$0:Landroidx/compose/foundation/gestures/AnchoredDraggableNode;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/AnchoredDraggableNode$drag$2$1;->$$this$anchoredDrag:Landroidx/compose/foundation/gestures/AnchoredDragScope;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 251
    check-cast p1, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/AnchoredDraggableNode$drag$2$1;->invoke(Landroidx/compose/foundation/gestures/DragEvent$DragDelta;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/foundation/gestures/DragEvent$DragDelta;)V
    .locals 6

    .line 252
    iget-object v0, p0, Landroidx/compose/foundation/gestures/AnchoredDraggableNode$drag$2$1;->this$0:Landroidx/compose/foundation/gestures/AnchoredDraggableNode;

    invoke-static {v0}, Landroidx/compose/foundation/gestures/AnchoredDraggableNode;->access$getOverscrollEffect$p(Landroidx/compose/foundation/gestures/AnchoredDraggableNode;)Landroidx/compose/foundation/OverscrollEffect;

    move-result-object v0

    if-nez v0, :cond_0

    .line 253
    iget-object v0, p0, Landroidx/compose/foundation/gestures/AnchoredDraggableNode$drag$2$1;->$$this$anchoredDrag:Landroidx/compose/foundation/gestures/AnchoredDragScope;

    iget-object v1, p0, Landroidx/compose/foundation/gestures/AnchoredDraggableNode$drag$2$1;->this$0:Landroidx/compose/foundation/gestures/AnchoredDraggableNode;

    invoke-static {v1}, Landroidx/compose/foundation/gestures/AnchoredDraggableNode;->access$getState$p(Landroidx/compose/foundation/gestures/AnchoredDraggableNode;)Landroidx/compose/foundation/gestures/AnchoredDraggableState;

    move-result-object v1

    iget-object v2, p0, Landroidx/compose/foundation/gestures/AnchoredDraggableNode$drag$2$1;->this$0:Landroidx/compose/foundation/gestures/AnchoredDraggableNode;

    invoke-virtual {p1}, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;->getDelta-F1C5BW0()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroidx/compose/foundation/gestures/AnchoredDraggableNode;->access$reverseIfNeeded-MK-Hz9U(Landroidx/compose/foundation/gestures/AnchoredDraggableNode;J)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroidx/compose/foundation/gestures/AnchoredDraggableNode;->access$toFloat-k-4lQ0M(Landroidx/compose/foundation/gestures/AnchoredDraggableNode;J)F

    move-result p1

    invoke-virtual {v1, p1}, Landroidx/compose/foundation/gestures/AnchoredDraggableState;->newOffsetForDelta$foundation_release(F)F

    move-result p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, p1, v3, v1, v2}, Landroidx/compose/foundation/gestures/AnchoredDragScope;->dragTo$default(Landroidx/compose/foundation/gestures/AnchoredDragScope;FFILjava/lang/Object;)V

    goto :goto_0

    .line 255
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/gestures/AnchoredDraggableNode$drag$2$1;->this$0:Landroidx/compose/foundation/gestures/AnchoredDraggableNode;

    invoke-static {v0}, Landroidx/compose/foundation/gestures/AnchoredDraggableNode;->access$getOverscrollEffect$p(Landroidx/compose/foundation/gestures/AnchoredDraggableNode;)Landroidx/compose/foundation/OverscrollEffect;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 256
    iget-object v1, p0, Landroidx/compose/foundation/gestures/AnchoredDraggableNode$drag$2$1;->this$0:Landroidx/compose/foundation/gestures/AnchoredDraggableNode;

    invoke-virtual {p1}, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;->getDelta-F1C5BW0()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroidx/compose/foundation/gestures/AnchoredDraggableNode;->access$reverseIfNeeded-MK-Hz9U(Landroidx/compose/foundation/gestures/AnchoredDraggableNode;J)J

    move-result-wide v1

    .line 257
    sget-object p1, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;->Companion:Landroidx/compose/ui/input/nestedscroll/NestedScrollSource$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource$Companion;->getUserInput-WNlRxjI()I

    move-result p1

    .line 255
    new-instance v3, Landroidx/compose/foundation/gestures/AnchoredDraggableNode$drag$2$1$1;

    iget-object v4, p0, Landroidx/compose/foundation/gestures/AnchoredDraggableNode$drag$2$1;->this$0:Landroidx/compose/foundation/gestures/AnchoredDraggableNode;

    iget-object v5, p0, Landroidx/compose/foundation/gestures/AnchoredDraggableNode$drag$2$1;->$$this$anchoredDrag:Landroidx/compose/foundation/gestures/AnchoredDragScope;

    invoke-direct {v3, v4, v5}, Landroidx/compose/foundation/gestures/AnchoredDraggableNode$drag$2$1$1;-><init>(Landroidx/compose/foundation/gestures/AnchoredDraggableNode;Landroidx/compose/foundation/gestures/AnchoredDragScope;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v1, v2, p1, v3}, Landroidx/compose/foundation/OverscrollEffect;->applyToScroll-Rhakbz0(JILkotlin/jvm/functions/Function1;)J

    :goto_0
    return-void
.end method
