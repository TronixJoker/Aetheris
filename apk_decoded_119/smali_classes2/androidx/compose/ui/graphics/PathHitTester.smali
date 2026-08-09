.class public final Landroidx/compose/ui/graphics/PathHitTester;
.super Ljava/lang/Object;
.source "PathHitTester.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/graphics/PathHitTester$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPathHitTester.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PathHitTester.kt\nandroidx/compose/ui/graphics/PathHitTester\n+ 2 FloatFloatPair.kt\nandroidx/collection/FloatFloatPair\n+ 3 PackingHelpers.jvm.kt\nandroidx/collection/internal/PackingHelpers_jvmKt\n+ 4 Offset.kt\nandroidx/compose/ui/geometry/Offset\n+ 5 IntervalTree.kt\nandroidx/compose/ui/graphics/IntervalTree\n*L\n1#1,171:1\n67#2:172\n81#2:174\n22#3:173\n70#4:175\n73#4:176\n166#5,21:177\n*S KotlinDebug\n*F\n+ 1 PathHitTester.kt\nandroidx/compose/ui/graphics/PathHitTester\n*L\n108#1:172\n108#1:174\n108#1:173\n130#1:175\n133#1:176\n139#1:177,21\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001b\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0086\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0018\u0010\u0015\u001a\u00020\u00162\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0003\u0010\r\u001a\u00020\u000eR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\u0017"
    }
    d2 = {
        "Landroidx/compose/ui/graphics/PathHitTester;",
        "",
        "()V",
        "bounds",
        "Landroidx/compose/ui/geometry/Rect;",
        "curves",
        "",
        "intervals",
        "Landroidx/compose/ui/graphics/IntervalTree;",
        "Landroidx/compose/ui/graphics/PathSegment;",
        "path",
        "Landroidx/compose/ui/graphics/Path;",
        "roots",
        "tolerance",
        "",
        "contains",
        "",
        "position",
        "Landroidx/compose/ui/geometry/Offset;",
        "contains-k-4lQ0M",
        "(J)Z",
        "updatePath",
        "",
        "ui-graphics_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private bounds:Landroidx/compose/ui/geometry/Rect;

.field private final curves:[F

.field private final intervals:Landroidx/compose/ui/graphics/IntervalTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/ui/graphics/IntervalTree<",
            "Landroidx/compose/ui/graphics/PathSegment;",
            ">;"
        }
    .end annotation
.end field

.field private path:Landroidx/compose/ui/graphics/Path;

.field private final roots:[F

.field private tolerance:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-static {}, Landroidx/compose/ui/graphics/PathHitTesterKt;->access$getEmptyPath$p()Landroidx/compose/ui/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/graphics/PathHitTester;->path:Landroidx/compose/ui/graphics/Path;

    const/high16 v0, 0x3f000000    # 0.5f

    .line 62
    iput v0, p0, Landroidx/compose/ui/graphics/PathHitTester;->tolerance:F

    .line 65
    sget-object v0, Landroidx/compose/ui/geometry/Rect;->Companion:Landroidx/compose/ui/geometry/Rect$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect$Companion;->getZero()Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/graphics/PathHitTester;->bounds:Landroidx/compose/ui/geometry/Rect;

    .line 70
    new-instance v0, Landroidx/compose/ui/graphics/IntervalTree;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/IntervalTree;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/graphics/PathHitTester;->intervals:Landroidx/compose/ui/graphics/IntervalTree;

    const/16 v0, 0x14

    .line 73
    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/compose/ui/graphics/PathHitTester;->curves:[F

    const/4 v0, 0x2

    .line 74
    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/compose/ui/graphics/PathHitTester;->roots:[F

    return-void
.end method

.method public static synthetic updatePath$default(Landroidx/compose/ui/graphics/PathHitTester;Landroidx/compose/ui/graphics/Path;FILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/high16 p2, 0x3f000000    # 0.5f

    .line 92
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/graphics/PathHitTester;->updatePath(Landroidx/compose/ui/graphics/Path;F)V

    return-void
.end method


# virtual methods
.method public final contains-k-4lQ0M(J)Z
    .locals 11

    .line 129
    iget-object v0, p0, Landroidx/compose/ui/graphics/PathHitTester;->path:Landroidx/compose/ui/graphics/Path;

    invoke-interface {v0}, Landroidx/compose/ui/graphics/Path;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    iget-object v0, p0, Landroidx/compose/ui/graphics/PathHitTester;->bounds:Landroidx/compose/ui/geometry/Rect;

    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/geometry/Rect;->contains-k-4lQ0M(J)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 175
    :cond_0
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v0

    .line 176
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p1

    .line 134
    iget-object p2, p0, Landroidx/compose/ui/graphics/PathHitTester;->curves:[F

    .line 135
    iget-object v2, p0, Landroidx/compose/ui/graphics/PathHitTester;->roots:[F

    .line 139
    iget-object v3, p0, Landroidx/compose/ui/graphics/PathHitTester;->intervals:Landroidx/compose/ui/graphics/IntervalTree;

    .line 182
    invoke-static {v3}, Landroidx/compose/ui/graphics/IntervalTree;->access$getRoot$p(Landroidx/compose/ui/graphics/IntervalTree;)Landroidx/compose/ui/graphics/IntervalTree$Node;

    move-result-object v4

    invoke-static {v3}, Landroidx/compose/ui/graphics/IntervalTree;->access$getTerminator$p(Landroidx/compose/ui/graphics/IntervalTree;)Landroidx/compose/ui/graphics/IntervalTree$Node;

    move-result-object v5

    const/4 v6, 0x1

    if-eq v4, v5, :cond_8

    .line 183
    invoke-static {v3}, Landroidx/compose/ui/graphics/IntervalTree;->access$getStack$p(Landroidx/compose/ui/graphics/IntervalTree;)Ljava/util/ArrayList;

    move-result-object v4

    .line 184
    invoke-static {v3}, Landroidx/compose/ui/graphics/IntervalTree;->access$getRoot$p(Landroidx/compose/ui/graphics/IntervalTree;)Landroidx/compose/ui/graphics/IntervalTree$Node;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v1

    .line 185
    :cond_1
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_7

    .line 186
    move-object v7, v4

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->removeLast(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/graphics/IntervalTree$Node;

    .line 187
    invoke-virtual {v7, p1, p1}, Landroidx/compose/ui/graphics/IntervalTree$Node;->overlaps(FF)Z

    move-result v8

    if-eqz v8, :cond_5

    move-object v8, v7

    check-cast v8, Landroidx/compose/ui/graphics/Interval;

    .line 140
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/Interval;->getData()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v8, Landroidx/compose/ui/graphics/PathSegment;

    .line 141
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/PathSegment;->getPoints()[F

    move-result-object v9

    .line 142
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/PathSegment;->getType()Landroidx/compose/ui/graphics/PathSegment$Type;

    move-result-object v8

    sget-object v10, Landroidx/compose/ui/graphics/PathHitTester$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/PathSegment$Type;->ordinal()I

    move-result v8

    aget v8, v10, v8

    if-eq v8, v6, :cond_4

    const/4 v10, 0x2

    if-eq v8, v10, :cond_3

    const/4 v10, 0x3

    if-eq v8, v10, :cond_2

    const/4 v9, 0x4

    goto :goto_2

    .line 150
    :cond_2
    invoke-static {v9, v0, p1, p2, v2}, Landroidx/compose/ui/graphics/BezierKt;->cubicWinding([FFF[F[F)I

    move-result v8

    goto :goto_1

    .line 147
    :cond_3
    invoke-static {v9, v0, p1, p2, v2}, Landroidx/compose/ui/graphics/BezierKt;->quadraticWinding([FFF[F[F)I

    move-result v8

    goto :goto_1

    .line 144
    :cond_4
    invoke-static {v9, v0, p1}, Landroidx/compose/ui/graphics/BezierKt;->lineWinding([FFF)I

    move-result v8

    :goto_1
    add-int/2addr v5, v8

    .line 188
    :cond_5
    :goto_2
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/IntervalTree$Node;->getLeft()Landroidx/compose/ui/graphics/IntervalTree$Node;

    move-result-object v8

    invoke-static {v3}, Landroidx/compose/ui/graphics/IntervalTree;->access$getTerminator$p(Landroidx/compose/ui/graphics/IntervalTree;)Landroidx/compose/ui/graphics/IntervalTree$Node;

    move-result-object v9

    if-eq v8, v9, :cond_6

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/IntervalTree$Node;->getLeft()Landroidx/compose/ui/graphics/IntervalTree$Node;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/IntervalTree$Node;->getMax()F

    move-result v8

    cmpl-float v8, v8, p1

    if-ltz v8, :cond_6

    .line 189
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/IntervalTree$Node;->getLeft()Landroidx/compose/ui/graphics/IntervalTree$Node;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    :cond_6
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/IntervalTree$Node;->getRight()Landroidx/compose/ui/graphics/IntervalTree$Node;

    move-result-object v8

    invoke-static {v3}, Landroidx/compose/ui/graphics/IntervalTree;->access$getTerminator$p(Landroidx/compose/ui/graphics/IntervalTree;)Landroidx/compose/ui/graphics/IntervalTree$Node;

    move-result-object v9

    if-eq v8, v9, :cond_1

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/IntervalTree$Node;->getRight()Landroidx/compose/ui/graphics/IntervalTree$Node;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/IntervalTree$Node;->getMin()F

    move-result v8

    cmpg-float v8, v8, p1

    if-gtz v8, :cond_1

    .line 192
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/IntervalTree$Node;->getRight()Landroidx/compose/ui/graphics/IntervalTree$Node;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 195
    :cond_7
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto :goto_3

    :cond_8
    move v5, v1

    .line 157
    :goto_3
    iget-object p1, p0, Landroidx/compose/ui/graphics/PathHitTester;->path:Landroidx/compose/ui/graphics/Path;

    invoke-interface {p1}, Landroidx/compose/ui/graphics/Path;->getFillType-Rg-k1Os()I

    move-result p1

    sget-object p2, Landroidx/compose/ui/graphics/PathFillType;->Companion:Landroidx/compose/ui/graphics/PathFillType$Companion;

    invoke-virtual {p2}, Landroidx/compose/ui/graphics/PathFillType$Companion;->getEvenOdd-Rg-k1Os()I

    move-result p2

    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/PathFillType;->equals-impl0(II)Z

    move-result p1

    if-eqz p1, :cond_9

    and-int/lit8 v5, v5, 0x1

    :cond_9
    if-eqz v5, :cond_a

    return v6

    :cond_a
    :goto_4
    return v1
.end method

.method public final updatePath(Landroidx/compose/ui/graphics/Path;F)V
    .locals 5

    .line 93
    iput-object p1, p0, Landroidx/compose/ui/graphics/PathHitTester;->path:Landroidx/compose/ui/graphics/Path;

    .line 94
    iput p2, p0, Landroidx/compose/ui/graphics/PathHitTester;->tolerance:F

    .line 95
    invoke-interface {p1}, Landroidx/compose/ui/graphics/Path;->getBounds()Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/graphics/PathHitTester;->bounds:Landroidx/compose/ui/geometry/Rect;

    .line 97
    iget-object v0, p0, Landroidx/compose/ui/graphics/PathHitTester;->intervals:Landroidx/compose/ui/graphics/IntervalTree;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/IntervalTree;->clear()V

    .line 102
    sget-object v0, Landroidx/compose/ui/graphics/PathIterator$ConicEvaluation;->AsQuadratics:Landroidx/compose/ui/graphics/PathIterator$ConicEvaluation;

    invoke-interface {p1, v0, p2}, Landroidx/compose/ui/graphics/Path;->iterator(Landroidx/compose/ui/graphics/PathIterator$ConicEvaluation;F)Landroidx/compose/ui/graphics/PathIterator;

    move-result-object p1

    .line 103
    :goto_0
    invoke-interface {p1}, Landroidx/compose/ui/graphics/PathIterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Landroidx/compose/ui/graphics/PathIterator;->next()Landroidx/compose/ui/graphics/PathSegment;

    move-result-object p2

    .line 104
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/PathSegment;->getType()Landroidx/compose/ui/graphics/PathSegment$Type;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/graphics/PathHitTester$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/PathSegment$Type;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 108
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/graphics/PathHitTester;->curves:[F

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static {p2, v0, v1, v2, v3}, Landroidx/compose/ui/graphics/BezierKt;->computeVerticalBounds$default(Landroidx/compose/ui/graphics/PathSegment;[FIILjava/lang/Object;)J

    move-result-wide v0

    const/16 v2, 0x20

    shr-long v2, v0, v2

    long-to-int v2, v2

    .line 173
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    const-wide v3, 0xffffffffL

    and-long/2addr v0, v3

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 109
    iget-object v1, p0, Landroidx/compose/ui/graphics/PathHitTester;->intervals:Landroidx/compose/ui/graphics/IntervalTree;

    invoke-virtual {v1, v2, v0, p2}, Landroidx/compose/ui/graphics/IntervalTree;->addInterval(FFLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method
