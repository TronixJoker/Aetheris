.class public abstract Landroidx/compose/foundation/RectListNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "RectListNode.android.kt"

# interfaces
.implements Landroidx/compose/ui/node/GlobalPositionAwareModifierNode;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRectListNode.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RectListNode.android.kt\nandroidx/compose/foundation/RectListNode\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n*L\n1#1,97:1\n1#2:98\n728#3,2:99\n*S KotlinDebug\n*F\n+ 1 RectListNode.android.kt\nandroidx/compose/foundation/RectListNode\n*L\n67#1:99,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0008 \u0018\u00002\u00020\u00012\u00020\u0002B\u001b\u0012\u0014\u0010\u0003\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0004\u00a2\u0006\u0002\u0010\u0007J\u0018\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0006H\u0002J\u000e\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0014H&J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016J\u0010\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0005H\u0016J\u0012\u0010\u0019\u001a\u00020\u00162\u0008\u0010\u001a\u001a\u0004\u0018\u00010\tH\u0002J\u0016\u0010\u001b\u001a\u00020\u00162\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0014H&R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R(\u0010\u0003\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\u0007R\u0014\u0010\r\u001a\u00020\u000e8DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u001d"
    }
    d2 = {
        "Landroidx/compose/foundation/RectListNode;",
        "Landroidx/compose/ui/Modifier$Node;",
        "Landroidx/compose/ui/node/GlobalPositionAwareModifierNode;",
        "rect",
        "Lkotlin/Function1;",
        "Landroidx/compose/ui/layout/LayoutCoordinates;",
        "Landroidx/compose/ui/geometry/Rect;",
        "(Lkotlin/jvm/functions/Function1;)V",
        "androidRect",
        "Landroid/graphics/Rect;",
        "getRect",
        "()Lkotlin/jvm/functions/Function1;",
        "setRect",
        "view",
        "Landroid/view/View;",
        "getView",
        "()Landroid/view/View;",
        "calcBounds",
        "layoutCoordinates",
        "currentRects",
        "Landroidx/compose/runtime/collection/MutableVector;",
        "onDetach",
        "",
        "onGloballyPositioned",
        "coordinates",
        "replaceRect",
        "newRect",
        "updateRects",
        "rects",
        "foundation_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private androidRect:Landroid/graphics/Rect;

.field private rect:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            "Landroidx/compose/ui/geometry/Rect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            "Landroidx/compose/ui/geometry/Rect;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    .line 31
    iput-object p1, p0, Landroidx/compose/foundation/RectListNode;->rect:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method private final calcBounds(Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/geometry/Rect;)Landroid/graphics/Rect;
    .locals 18

    move-object/from16 v0, p1

    .line 78
    invoke-static/range {p1 .. p1}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->findRootCoordinates(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v1

    .line 79
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/geometry/Rect;->getTopLeft-F1C5BW0()J

    move-result-wide v2

    invoke-interface {v1, v0, v2, v3}, Landroidx/compose/ui/layout/LayoutCoordinates;->localPositionOf-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    move-result-wide v2

    .line 80
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/geometry/Rect;->getTopRight-F1C5BW0()J

    move-result-wide v4

    invoke-interface {v1, v0, v4, v5}, Landroidx/compose/ui/layout/LayoutCoordinates;->localPositionOf-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    move-result-wide v4

    .line 81
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/geometry/Rect;->getBottomLeft-F1C5BW0()J

    move-result-wide v6

    invoke-interface {v1, v0, v6, v7}, Landroidx/compose/ui/layout/LayoutCoordinates;->localPositionOf-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    move-result-wide v6

    .line 82
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/geometry/Rect;->getBottomRight-F1C5BW0()J

    move-result-wide v8

    invoke-interface {v1, v0, v8, v9}, Landroidx/compose/ui/layout/LayoutCoordinates;->localPositionOf-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    move-result-wide v0

    .line 84
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v8

    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v9

    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v10

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v11

    const/4 v12, 0x3

    new-array v13, v12, [F

    const/4 v14, 0x0

    aput v9, v13, v14

    const/4 v9, 0x1

    aput v10, v13, v9

    const/4 v10, 0x2

    aput v11, v13, v10

    invoke-static {v8, v13}, Lkotlin/comparisons/ComparisonsKt;->minOf(F[F)F

    move-result v8

    .line 85
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v11

    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v13

    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v15

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v16

    new-array v10, v12, [F

    aput v13, v10, v14

    aput v15, v10, v9

    const/4 v13, 0x2

    aput v16, v10, v13

    invoke-static {v11, v10}, Lkotlin/comparisons/ComparisonsKt;->minOf(F[F)F

    move-result v10

    .line 86
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v11

    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v15

    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v16

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v17

    new-array v13, v12, [F

    aput v15, v13, v14

    aput v16, v13, v9

    const/4 v15, 0x2

    aput v17, v13, v15

    invoke-static {v11, v13}, Lkotlin/comparisons/ComparisonsKt;->maxOf(F[F)F

    move-result v11

    .line 87
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v2

    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v3

    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v4

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v0

    new-array v1, v12, [F

    aput v3, v1, v14

    aput v4, v1, v9

    aput v0, v1, v15

    invoke-static {v2, v1}, Lkotlin/comparisons/ComparisonsKt;->maxOf(F[F)F

    move-result v0

    .line 89
    new-instance v1, Landroid/graphics/Rect;

    .line 90
    invoke-static {v8}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v2

    .line 91
    invoke-static {v10}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v3

    .line 92
    invoke-static {v11}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v4

    .line 93
    invoke-static {v0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v0

    .line 89
    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method private final replaceRect(Landroid/graphics/Rect;)V
    .locals 2

    .line 62
    invoke-virtual {p0}, Landroidx/compose/foundation/RectListNode;->currentRects()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v0

    .line 64
    iget-object v1, p0, Landroidx/compose/foundation/RectListNode;->androidRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/collection/MutableVector;->remove(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p1, :cond_1

    .line 66
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 99
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_1
    invoke-virtual {p0, v0}, Landroidx/compose/foundation/RectListNode;->updateRects(Landroidx/compose/runtime/collection/MutableVector;)V

    .line 71
    iput-object p1, p0, Landroidx/compose/foundation/RectListNode;->androidRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public abstract currentRects()Landroidx/compose/runtime/collection/MutableVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end method

.method public getRect()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            "Landroidx/compose/ui/geometry/Rect;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Landroidx/compose/foundation/RectListNode;->rect:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method protected final getView()Landroid/view/View;
    .locals 1

    .line 36
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {v0}, Landroidx/compose/ui/node/DelegatableNode_androidKt;->requireView(Landroidx/compose/ui/node/DelegatableNode;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .line 54
    invoke-super {p0}, Landroidx/compose/ui/Modifier$Node;->onDetach()V

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, v0}, Landroidx/compose/foundation/RectListNode;->replaceRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onGloballyPositioned(Landroidx/compose/ui/layout/LayoutCoordinates;)V
    .locals 4

    .line 39
    invoke-virtual {p0}, Landroidx/compose/foundation/RectListNode;->getRect()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-nez v0, :cond_0

    .line 40
    invoke-static {p1}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->boundsInRoot(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;

    move-result-object p1

    .line 41
    new-instance v0, Landroid/graphics/Rect;

    .line 42
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v1

    invoke-static {v1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v1

    .line 43
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v2

    invoke-static {v2}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v2

    .line 44
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v3

    invoke-static {v3}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v3

    .line 45
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result p1

    invoke-static {p1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p1

    .line 41
    invoke-direct {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/RectListNode;->getRect()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/geometry/Rect;

    invoke-direct {p0, p1, v0}, Landroidx/compose/foundation/RectListNode;->calcBounds(Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/geometry/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 50
    :goto_0
    invoke-direct {p0, v0}, Landroidx/compose/foundation/RectListNode;->replaceRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setRect(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            "Landroidx/compose/ui/geometry/Rect;",
            ">;)V"
        }
    .end annotation

    .line 31
    iput-object p1, p0, Landroidx/compose/foundation/RectListNode;->rect:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public abstract updateRects(Landroidx/compose/runtime/collection/MutableVector;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation
.end method
