.class public final Landroidx/compose/animation/core/ArcSpline;
.super Ljava/lang/Object;
.source "ArcSpline.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/animation/core/ArcSpline$Arc;,
        Landroidx/compose/animation/core/ArcSpline$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0005\u0008\u0001\u0018\u0000 \u00152\u00020\u0001:\u0002\u0014\u0015B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0007\u00a2\u0006\u0002\u0010\u0008J\u0016\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0005J\u0016\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0005R\u001c\u0010\t\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\u00070\u0007X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000bR\u000e\u0010\u000c\u001a\u00020\rX\u0082D\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Landroidx/compose/animation/core/ArcSpline;",
        "",
        "arcModes",
        "",
        "timePoints",
        "",
        "y",
        "",
        "([I[F[[F)V",
        "arcs",
        "Landroidx/compose/animation/core/ArcSpline$Arc;",
        "[[Landroidx/compose/animation/core/ArcSpline$Arc;",
        "isExtrapolate",
        "",
        "getPos",
        "",
        "time",
        "",
        "v",
        "getSlope",
        "Arc",
        "Companion",
        "animation-core_release"
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
.field public static final $stable:I

.field public static final ArcAbove:I = 0x5

.field public static final ArcBelow:I = 0x4

.field public static final ArcStartFlip:I = 0x3

.field public static final ArcStartHorizontal:I = 0x2

.field public static final ArcStartLinear:I = 0x0

.field public static final ArcStartVertical:I = 0x1

.field public static final Companion:Landroidx/compose/animation/core/ArcSpline$Companion;

.field private static final DownArc:I = 0x4

.field private static final StartHorizontal:I = 0x2

.field private static final StartLinear:I = 0x3

.field private static final StartVertical:I = 0x1

.field private static final UpArc:I = 0x5


# instance fields
.field private final arcs:[[Landroidx/compose/animation/core/ArcSpline$Arc;

.field private final isExtrapolate:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/animation/core/ArcSpline$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/animation/core/ArcSpline$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/animation/core/ArcSpline;->Companion:Landroidx/compose/animation/core/ArcSpline$Companion;

    const/16 v0, 0x8

    sput v0, Landroidx/compose/animation/core/ArcSpline;->$stable:I

    return-void
.end method

.method public constructor <init>([I[F[[F)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x1

    .line 41
    iput-boolean v2, v0, Landroidx/compose/animation/core/ArcSpline;->isExtrapolate:Z

    .line 47
    array-length v3, v1

    sub-int/2addr v3, v2

    new-array v4, v3, [[Landroidx/compose/animation/core/ArcSpline$Arc;

    const/4 v5, 0x0

    move v7, v2

    move v8, v7

    move v6, v5

    :goto_0
    if-ge v6, v3, :cond_5

    .line 48
    aget v9, p1, v6

    const/4 v10, 0x3

    const/4 v11, 0x2

    if-eqz v9, :cond_3

    if-eq v9, v2, :cond_2

    if-eq v9, v11, :cond_1

    if-eq v9, v10, :cond_0

    const/4 v10, 0x4

    if-eq v9, v10, :cond_3

    const/4 v10, 0x5

    if-eq v9, v10, :cond_3

    goto :goto_2

    :cond_0
    if-ne v7, v2, :cond_2

    :cond_1
    move v7, v11

    goto :goto_1

    :cond_2
    move v7, v2

    :goto_1
    move v8, v7

    goto :goto_2

    :cond_3
    move v8, v10

    .line 68
    :goto_2
    aget-object v9, p3, v6

    array-length v10, v9

    div-int/2addr v10, v11

    array-length v9, v9

    rem-int/2addr v9, v11

    add-int/2addr v10, v9

    .line 69
    new-array v9, v10, [Landroidx/compose/animation/core/ArcSpline$Arc;

    move v11, v5

    :goto_3
    if-ge v11, v10, :cond_4

    mul-int/lit8 v12, v11, 0x2

    .line 71
    new-instance v20, Landroidx/compose/animation/core/ArcSpline$Arc;

    .line 73
    aget v14, v1, v6

    add-int/lit8 v13, v6, 0x1

    .line 74
    aget v15, v1, v13

    .line 75
    aget-object v16, p3, v6

    aget v17, v16, v12

    add-int/lit8 v18, v12, 0x1

    .line 76
    aget v19, v16, v18

    .line 77
    aget-object v13, p3, v13

    aget v21, v13, v12

    .line 78
    aget v22, v13, v18

    move-object/from16 v12, v20

    move v13, v8

    move/from16 v16, v17

    move/from16 v17, v19

    move/from16 v18, v21

    move/from16 v19, v22

    .line 71
    invoke-direct/range {v12 .. v19}, Landroidx/compose/animation/core/ArcSpline$Arc;-><init>(IFFFFFF)V

    aput-object v20, v9, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 69
    :cond_4
    aput-object v9, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 47
    :cond_5
    iput-object v4, v0, Landroidx/compose/animation/core/ArcSpline;->arcs:[[Landroidx/compose/animation/core/ArcSpline$Arc;

    return-void
.end method


# virtual methods
.method public final getPos(F[F)V
    .locals 8

    .line 89
    iget-boolean v0, p0, Landroidx/compose/animation/core/ArcSpline;->isExtrapolate:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 90
    iget-object v0, p0, Landroidx/compose/animation/core/ArcSpline;->arcs:[[Landroidx/compose/animation/core/ArcSpline$Arc;

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroidx/compose/animation/core/ArcSpline$Arc;->getTime1()F

    move-result v0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/animation/core/ArcSpline;->arcs:[[Landroidx/compose/animation/core/ArcSpline$Arc;

    move-object v3, v0

    check-cast v3, [Ljava/lang/Object;

    array-length v3, v3

    sub-int/2addr v3, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroidx/compose/animation/core/ArcSpline$Arc;->getTime2()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_6

    .line 93
    :cond_0
    iget-object v0, p0, Landroidx/compose/animation/core/ArcSpline;->arcs:[[Landroidx/compose/animation/core/ArcSpline$Arc;

    move-object v3, v0

    check-cast v3, [Ljava/lang/Object;

    array-length v3, v3

    sub-int/2addr v3, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroidx/compose/animation/core/ArcSpline$Arc;->getTime2()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 94
    iget-object v0, p0, Landroidx/compose/animation/core/ArcSpline;->arcs:[[Landroidx/compose/animation/core/ArcSpline$Arc;

    move-object v3, v0

    check-cast v3, [Ljava/lang/Object;

    array-length v3, v3

    sub-int/2addr v3, v1

    .line 95
    move-object v4, v0

    check-cast v4, [Ljava/lang/Object;

    array-length v4, v4

    sub-int/2addr v4, v1

    aget-object v0, v0, v4

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroidx/compose/animation/core/ArcSpline$Arc;->getTime2()F

    move-result v0

    goto :goto_0

    .line 98
    :cond_1
    iget-object v0, p0, Landroidx/compose/animation/core/ArcSpline;->arcs:[[Landroidx/compose/animation/core/ArcSpline$Arc;

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroidx/compose/animation/core/ArcSpline$Arc;->getTime1()F

    move-result v0

    move v3, v2

    :goto_0
    sub-float/2addr p1, v0

    move v1, v2

    .line 104
    :goto_1
    array-length v4, p2

    if-ge v2, v4, :cond_3

    .line 105
    iget-object v4, p0, Landroidx/compose/animation/core/ArcSpline;->arcs:[[Landroidx/compose/animation/core/ArcSpline$Arc;

    aget-object v4, v4, v3

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroidx/compose/animation/core/ArcSpline$Arc;->isLinear()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 106
    iget-object v4, p0, Landroidx/compose/animation/core/ArcSpline;->arcs:[[Landroidx/compose/animation/core/ArcSpline$Arc;

    aget-object v4, v4, v3

    aget-object v4, v4, v1

    invoke-virtual {v4, v0}, Landroidx/compose/animation/core/ArcSpline$Arc;->getLinearX(F)F

    move-result v4

    iget-object v5, p0, Landroidx/compose/animation/core/ArcSpline;->arcs:[[Landroidx/compose/animation/core/ArcSpline$Arc;

    aget-object v5, v5, v3

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroidx/compose/animation/core/ArcSpline$Arc;->getLinearDX()F

    move-result v5

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    aput v4, p2, v2

    add-int/lit8 v4, v2, 0x1

    .line 107
    iget-object v5, p0, Landroidx/compose/animation/core/ArcSpline;->arcs:[[Landroidx/compose/animation/core/ArcSpline$Arc;

    aget-object v5, v5, v3

    aget-object v5, v5, v1

    invoke-virtual {v5, v0}, Landroidx/compose/animation/core/ArcSpline$Arc;->getLinearY(F)F

    move-result v5

    iget-object v6, p0, Landroidx/compose/animation/core/ArcSpline;->arcs:[[Landroidx/compose/animation/core/ArcSpline$Arc;

    aget-object v6, v6, v3

    aget-object v6, v6, v1

    invoke-virtual {v6}, Landroidx/compose/animation/core/ArcSpline$Arc;->getLinearDY()F

    move-result v6

    mul-float/2addr v6, p1

    add-float/2addr v5, v6

    aput v5, p2, v4

    goto :goto_2

    .line 109
    :cond_2
    iget-object v4, p0, Landroidx/compose/animation/core/ArcSpline;->arcs:[[Landroidx/compose/animation/core/ArcSpline$Arc;

    aget-object v4, v4, v3

    aget-object v4, v4, v1

    invoke-virtual {v4, v0}, Landroidx/compose/animation/core/ArcSpline$Arc;->setPoint(F)V

    .line 110
    iget-object v4, p0, Landroidx/compose/animation/core/ArcSpline;->arcs:[[Landroidx/compose/animation/core/ArcSpline$Arc;

    aget-object v4, v4, v3

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroidx/compose/animation/core/ArcSpline$Arc;->calcX()F

    move-result v4

    iget-object v5, p0, Landroidx/compose/animation/core/ArcSpline;->arcs:[[Landroidx/compose/animation/core/ArcSpline$Arc;

    aget-object v5, v5, v3

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroidx/compose/animation/core/ArcSpline$Arc;->calcDX()F

    move-result v5

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    aput v4, p2, v2

    add-int/lit8 v4, v2, 0x1

    .line 111
    iget-object v5, p0, Landroidx/compose/animation/core/ArcSpline;->arcs:[[Landroidx/compose/animation/core/ArcSpline$Arc;

    aget-object v5, v5, v3

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroidx/compose/animation/core/ArcSpline$Arc;->calcY()F

    move-result v5

    iget-object v6, p0, Landroidx/compose/animation/core/ArcSpline;->arcs:[[Landroidx/compose/animation/core/ArcSpline$Arc;

    aget-object v6, v6, v3

    aget-object v6, v6, v1

    invoke-virtual {v6}, Landroidx/compose/animation/core/ArcSpline$Arc;->calcDY()F

    move-result v6

    mul-float/2addr v6, p1

    add-float/2addr v5, v6

    aput v5, p2, v4

    :goto_2
    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_3
    return-void

    .line 119
    :cond_4
    iget-object v0, p0, Landroidx/compose/animation/core/ArcSpline;->arcs:[[Landroidx/compose/animation/core/ArcSpline$Arc;

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroidx/compose/animation/core/ArcSpline$Arc;->getTime1()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_5

    .line 120
    iget-object p1, p0, Landroidx/compose/animation/core/ArcSpline;->arcs:[[Landroidx/compose/animation/core/ArcSpline$Arc;

    aget-object p1, p1, v2

    aget-object p1, p1, v2

    invoke-virtual {p1}, Landroidx/compose/animation/core/ArcSpline$Arc;->getTime1()F

    move-result p1

    .line 122
    :cond_5
    iget-object v0, p0, Landroidx/compose/animation/core/ArcSpline;->arcs:[[Landroidx/compose/animation/core/ArcSpline$Arc;

    move-object v3, v0

    check-cast v3, [Ljava/lang/Object;

    array-length v3, v3

    sub-int/2addr v3, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroidx/compose/animation/core/ArcSpline$Arc;->getTime2()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_6

    .line 123
    iget-object p1, p0, Landroidx/compose/animation/core/ArcSpline;->arcs:[[Landroidx/compose/animation/core/ArcSpline$Arc;

    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    array-length v0, v0

    sub-int/2addr v0, v1

    aget-object p1, p1, v0

    aget-object p1, p1, v2

    invoke-virtual {p1}, Landroidx/compose/animation/core/ArcSpline$Arc;->getTime2()F

    move-result p1

    .line 129
    :cond_6
    iget-object v0, p0, Landroidx/compose/animation/core/ArcSpline;->arcs:[[Landroidx/compose/animation/core/ArcSpline$Arc;

    check-cast v0, [Ljava/lang/Object;

    array-length v0, v0

    move v3, v2

    move v4, v3

    :goto_3
    if-ge v3, v0, :cond_b

    move v5, v2

    move v6, v5

    .line 132
    :goto_4
    array-length v7, p2

    if-ge v5, v7, :cond_9

    .line 133
    iget-object v7, p0, Landroidx/compose/animation/core/ArcSpline;->arcs:[[Landroidx/compose/animation/core/ArcSpline$Arc;

    aget-object v7, v7, v3

    aget-object v7, v7, v6

    invoke-virtual {v7}, Landroidx/compose/animation/core/ArcSpline$Arc;->getTime2()F

    move-result v7

    cmpg-float v7, p1, v7

    if-gtz v7, :cond_8

    .line 134
    iget-object v4, p0, Landroidx/compose/animation/core/ArcSpline;->arcs:[[Landroidx/compose/animation/core/ArcSpline$Arc;

    aget-object v4, v4, v3

    aget-object v4, v4, v6

    invoke-virtual {v4}, Landroidx/compose/animation/core/ArcSpline$Arc;->isLinear()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 135
    iget-object v4, p0, Landroidx/compose/animation/core/ArcSpline;->arcs:[[Landroidx/compose/animation/core/ArcSpline$Arc;

    aget-object v4, v4, v3

    aget-object v4, v4, v6

    invoke-virtual {v4, p1}, Landroidx/compose/animation/core/ArcSpline$Arc;->getLinearX(F)F

    move-result v4

    aput v4, p2, v5

    add-int/lit8 v4, v5, 0x1

    .line 136
    iget-object v7, p0, Landroidx/compose/animation/core/ArcSpline;->arcs:[[Landroidx/compose/animation/core/ArcSpline$Arc;

    aget-object v7, v7, v3

    aget-object v7, v7, v6

    invoke-virtual {v7, p1}, Landroidx/compose/animation/core/ArcSpline$Arc;->getLinearY(F)F

    move-result v7

    aput v7, p2, v4

    goto :goto_5

    .line 139
    :cond_7
    iget-object v4, p0, Landroidx/compose/animation/core/ArcSpline;->arcs:[[Landroidx/compose/animation/core/ArcSpline$Arc;

    aget-object v4, v4, v3

    aget-object v4, v4, v6

    invoke-virtual {v4, p1}, Landroidx/compose/animation/core/ArcSpline$Arc;->setPoint(F)V

    .line 140
    iget-object v4, p0, Landroidx/compose/animation/core/ArcSpline;->arcs:[[Landroidx/compose/animation/core/ArcSpline$Arc;

    aget-object v4, v4, v3

    aget-object v4, v4, v6

    invoke-virtual {v4}, Landroidx/compose/animation/core/ArcSpline$Arc;->calcX()F

    move-result v4

    aput v4, p2, v5

    add-int/lit8 v4, v5, 0x1

    .line 141
    iget-object v7, p0, Landroidx/compose/animation/core/ArcSpline;->arcs:[[Landroidx/compose/animation/core/ArcSpline$Arc;

    aget-object v7, v7, v3

    aget-object v7, v7, v6

    invoke-virtual {v7}, Landroidx/compose/animation/core/ArcSpline$Arc;->calcY()F

    move-result v7

    aput v7, p2, v4

    :goto_5
    move v4, v1

    :cond_8
    add-int/lit8 v5, v5, 0x2

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_9
    if-eqz v4, :cond_a

    return-void

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_b
    return-void
.end method

.method public final getSlope(F[F)V
    .locals 8

    .line 159
    iget-object v0, p0, Landroidx/compose/animation/core/ArcSpline;->arcs:[[Landroidx/compose/animation/core/ArcSpline$Arc;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroidx/compose/animation/core/ArcSpline$Arc;->getTime1()F

    move-result v0

    cmpg-float v0, p1, v0

    const/4 v2, 0x1

    if-gez v0, :cond_0

    .line 160
    iget-object p1, p0, Landroidx/compose/animation/core/ArcSpline;->arcs:[[Landroidx/compose/animation/core/ArcSpline$Arc;

    aget-object p1, p1, v1

    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroidx/compose/animation/core/ArcSpline$Arc;->getTime1()F

    move-result p1

    goto :goto_0

    .line 161
    :cond_0
    iget-object v0, p0, Landroidx/compose/animation/core/ArcSpline;->arcs:[[Landroidx/compose/animation/core/ArcSpline$Arc;

    move-object v3, v0

    check-cast v3, [Ljava/lang/Object;

    array-length v3, v3

    sub-int/2addr v3, v2

    aget-object v0, v0, v3

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroidx/compose/animation/core/ArcSpline$Arc;->getTime2()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 162
    iget-object p1, p0, Landroidx/compose/animation/core/ArcSpline;->arcs:[[Landroidx/compose/animation/core/ArcSpline$Arc;

    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    array-length v0, v0

    sub-int/2addr v0, v2

    aget-object p1, p1, v0

    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroidx/compose/animation/core/ArcSpline$Arc;->getTime2()F

    move-result p1

    .line 166
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/compose/animation/core/ArcSpline;->arcs:[[Landroidx/compose/animation/core/ArcSpline$Arc;

    check-cast v0, [Ljava/lang/Object;

    array-length v0, v0

    move v3, v1

    move v4, v3

    :goto_1
    if-ge v3, v0, :cond_6

    move v5, v1

    move v6, v5

    .line 169
    :goto_2
    array-length v7, p2

    if-ge v5, v7, :cond_4

    .line 170
    iget-object v7, p0, Landroidx/compose/animation/core/ArcSpline;->arcs:[[Landroidx/compose/animation/core/ArcSpline$Arc;

    aget-object v7, v7, v3

    aget-object v7, v7, v6

    invoke-virtual {v7}, Landroidx/compose/animation/core/ArcSpline$Arc;->getTime2()F

    move-result v7

    cmpg-float v7, p1, v7

    if-gtz v7, :cond_3

    .line 171
    iget-object v4, p0, Landroidx/compose/animation/core/ArcSpline;->arcs:[[Landroidx/compose/animation/core/ArcSpline$Arc;

    aget-object v4, v4, v3

    aget-object v4, v4, v6

    invoke-virtual {v4}, Landroidx/compose/animation/core/ArcSpline$Arc;->isLinear()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 172
    iget-object v4, p0, Landroidx/compose/animation/core/ArcSpline;->arcs:[[Landroidx/compose/animation/core/ArcSpline$Arc;

    aget-object v4, v4, v3

    aget-object v4, v4, v6

    invoke-virtual {v4}, Landroidx/compose/animation/core/ArcSpline$Arc;->getLinearDX()F

    move-result v4

    aput v4, p2, v5

    add-int/lit8 v4, v5, 0x1

    .line 173
    iget-object v7, p0, Landroidx/compose/animation/core/ArcSpline;->arcs:[[Landroidx/compose/animation/core/ArcSpline$Arc;

    aget-object v7, v7, v3

    aget-object v7, v7, v6

    invoke-virtual {v7}, Landroidx/compose/animation/core/ArcSpline$Arc;->getLinearDY()F

    move-result v7

    aput v7, p2, v4

    goto :goto_3

    .line 176
    :cond_2
    iget-object v4, p0, Landroidx/compose/animation/core/ArcSpline;->arcs:[[Landroidx/compose/animation/core/ArcSpline$Arc;

    aget-object v4, v4, v3

    aget-object v4, v4, v6

    invoke-virtual {v4, p1}, Landroidx/compose/animation/core/ArcSpline$Arc;->setPoint(F)V

    .line 177
    iget-object v4, p0, Landroidx/compose/animation/core/ArcSpline;->arcs:[[Landroidx/compose/animation/core/ArcSpline$Arc;

    aget-object v4, v4, v3

    aget-object v4, v4, v6

    invoke-virtual {v4}, Landroidx/compose/animation/core/ArcSpline$Arc;->calcDX()F

    move-result v4

    aput v4, p2, v5

    add-int/lit8 v4, v5, 0x1

    .line 178
    iget-object v7, p0, Landroidx/compose/animation/core/ArcSpline;->arcs:[[Landroidx/compose/animation/core/ArcSpline$Arc;

    aget-object v7, v7, v3

    aget-object v7, v7, v6

    invoke-virtual {v7}, Landroidx/compose/animation/core/ArcSpline$Arc;->calcDY()F

    move-result v7

    aput v7, p2, v4

    :goto_3
    move v4, v2

    :cond_3
    add-int/lit8 v5, v5, 0x2

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    if-eqz v4, :cond_5

    return-void

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method
