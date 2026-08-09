.class public final Landroidx/compose/animation/core/MonoSpline;
.super Ljava/lang/Object;
.source "MonoSpline.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\r\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\u0008\u0001\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J8\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0007H\u0002J \u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0002\u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00020\u001a2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001cJ\u0016\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010\u001e\u001a\u00020\u001cJ \u0010\u001f\u001a\u00020\u00182\u0006\u0010\u0002\u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00020\u001a2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001cJ\u0016\u0010\u001f\u001a\u00020\u00182\u0006\u0010\u0002\u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00020\u0003J\u0018\u0010\u001f\u001a\u00020\u00072\u0006\u0010\u0002\u001a\u00020\u00072\u0006\u0010\u001e\u001a\u00020\u001cH\u0002J8\u0010 \u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0007H\u0002J#\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00052\u0006\u0010\"\u001a\u00020\u001c2\u0006\u0010#\u001a\u00020\u001cH\u0002\u00a2\u0006\u0002\u0010$R\u000e\u0010\t\u001a\u00020\nX\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\rR\u000e\u0010\u000e\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\r\u00a8\u0006%"
    }
    d2 = {
        "Landroidx/compose/animation/core/MonoSpline;",
        "",
        "time",
        "",
        "y",
        "",
        "periodicBias",
        "",
        "([F[[FF)V",
        "isExtrapolate",
        "",
        "slopeTemp",
        "tangents",
        "[[F",
        "timePoints",
        "values",
        "diff",
        "h",
        "x",
        "y1",
        "y2",
        "t1",
        "t2",
        "getPos",
        "",
        "v",
        "Landroidx/compose/animation/core/AnimationVector;",
        "index",
        "",
        "t",
        "j",
        "getSlope",
        "interpolate",
        "makeFloatArray",
        "a",
        "b",
        "(II)[[F",
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
.field public static final $stable:I = 0x8


# instance fields
.field private final isExtrapolate:Z

.field private final slopeTemp:[F

.field private final tangents:[[F

.field private final timePoints:[F

.field private final values:[[F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>([F[[FF)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x1

    .line 30
    iput-boolean v3, v0, Landroidx/compose/animation/core/MonoSpline;->isExtrapolate:Z

    .line 34
    array-length v4, v1

    const/4 v5, 0x0

    .line 35
    aget-object v6, v2, v5

    array-length v6, v6

    .line 36
    new-array v7, v6, [F

    iput-object v7, v0, Landroidx/compose/animation/core/MonoSpline;->slopeTemp:[F

    add-int/lit8 v7, v4, -0x1

    .line 37
    invoke-direct {v0, v7, v6}, Landroidx/compose/animation/core/MonoSpline;->makeFloatArray(II)[[F

    move-result-object v8

    .line 38
    invoke-direct {v0, v4, v6}, Landroidx/compose/animation/core/MonoSpline;->makeFloatArray(II)[[F

    move-result-object v9

    move v10, v5

    :goto_0
    if-ge v10, v6, :cond_2

    move v11, v5

    :goto_1
    if-ge v11, v7, :cond_1

    add-int/lit8 v12, v11, 0x1

    .line 41
    aget v13, v1, v12

    aget v14, v1, v11

    sub-float/2addr v13, v14

    .line 42
    aget-object v14, v8, v11

    aget-object v15, v2, v12

    aget v15, v15, v10

    aget-object v16, v2, v11

    aget v16, v16, v10

    sub-float v15, v15, v16

    div-float/2addr v15, v13

    aput v15, v14, v10

    if-nez v11, :cond_0

    .line 44
    aget-object v11, v9, v11

    aput v15, v11, v10

    goto :goto_2

    .line 46
    :cond_0
    aget-object v13, v9, v11

    add-int/lit8 v11, v11, -0x1

    aget-object v11, v8, v11

    aget v11, v11, v10

    add-float/2addr v11, v15

    const/high16 v14, 0x3f000000    # 0.5f

    mul-float/2addr v11, v14

    aput v11, v13, v10

    :goto_2
    move v11, v12

    goto :goto_1

    .line 49
    :cond_1
    aget-object v11, v9, v7

    add-int/lit8 v12, v4, -0x2

    aget-object v12, v8, v12

    aget v12, v12, v10

    aput v12, v11, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 51
    :cond_2
    invoke-static/range {p3 .. p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-nez v10, :cond_3

    move v10, v5

    :goto_3
    if-ge v10, v6, :cond_3

    add-int/lit8 v11, v4, -0x2

    .line 55
    aget-object v11, v8, v11

    aget v12, v11, v10

    int-to-float v13, v3

    sub-float v13, v13, p3

    mul-float/2addr v12, v13

    aget-object v13, v8, v5

    aget v14, v13, v10

    mul-float v14, v14, p3

    add-float/2addr v12, v14

    .line 56
    aput v12, v13, v10

    .line 57
    aput v12, v11, v10

    .line 58
    aget-object v11, v9, v7

    aput v12, v11, v10

    .line 59
    aget-object v11, v9, v5

    aput v12, v11, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_3
    move v3, v5

    :goto_4
    if-ge v3, v7, :cond_7

    move v4, v5

    :goto_5
    if-ge v4, v6, :cond_6

    .line 64
    aget-object v10, v8, v3

    aget v10, v10, v4

    const/4 v11, 0x0

    cmpg-float v12, v10, v11

    if-nez v12, :cond_4

    .line 65
    aget-object v10, v9, v3

    aput v11, v10, v4

    add-int/lit8 v10, v3, 0x1

    .line 66
    aget-object v10, v9, v10

    aput v11, v10, v4

    move/from16 v16, v6

    goto :goto_6

    .line 68
    :cond_4
    aget-object v11, v9, v3

    aget v11, v11, v4

    div-float/2addr v11, v10

    add-int/lit8 v12, v3, 0x1

    .line 69
    aget-object v13, v9, v12

    aget v13, v13, v4

    div-float/2addr v13, v10

    float-to-double v14, v11

    move/from16 v16, v6

    float-to-double v5, v13

    .line 70
    invoke-static {v14, v15, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    double-to-float v5, v5

    float-to-double v14, v5

    const-wide/high16 v17, 0x4022000000000000L    # 9.0

    cmpl-double v6, v14, v17

    if-lez v6, :cond_5

    const/high16 v6, 0x40400000    # 3.0f

    div-float/2addr v6, v5

    .line 73
    aget-object v5, v9, v3

    mul-float/2addr v11, v6

    aget-object v14, v8, v3

    aget v15, v14, v4

    mul-float/2addr v11, v15

    aput v11, v5, v4

    .line 74
    aget-object v5, v9, v12

    mul-float/2addr v6, v13

    aget v11, v14, v4

    mul-float/2addr v6, v11

    aput v6, v5, v4

    :cond_5
    :goto_6
    add-int/lit8 v4, v4, 0x1

    move/from16 v6, v16

    const/4 v5, 0x0

    goto :goto_5

    :cond_6
    move/from16 v16, v6

    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x0

    goto :goto_4

    .line 79
    :cond_7
    iput-object v1, v0, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    .line 80
    iput-object v2, v0, Landroidx/compose/animation/core/MonoSpline;->values:[[F

    .line 81
    iput-object v9, v0, Landroidx/compose/animation/core/MonoSpline;->tangents:[[F

    return-void
.end method

.method private final diff(FFFFFF)F
    .locals 4

    mul-float v0, p2, p2

    const/4 v1, -0x6

    int-to-float v1, v1

    mul-float/2addr v1, v0

    mul-float/2addr v1, p4

    const/4 v2, 0x6

    int-to-float v2, v2

    mul-float v3, v2, p2

    mul-float/2addr p4, v3

    add-float/2addr v1, p4

    mul-float/2addr v2, v0

    mul-float/2addr v2, p3

    add-float/2addr v1, v2

    mul-float/2addr v3, p3

    sub-float/2addr v1, v3

    const/4 p3, 0x3

    int-to-float p3, p3

    mul-float/2addr p3, p1

    mul-float p4, p3, p6

    mul-float/2addr p4, v0

    add-float/2addr v1, p4

    mul-float/2addr p3, p5

    mul-float/2addr p3, v0

    add-float/2addr v1, p3

    const/4 p3, 0x2

    int-to-float p3, p3

    mul-float/2addr p3, p1

    mul-float/2addr p3, p6

    mul-float/2addr p3, p2

    sub-float/2addr v1, p3

    const/4 p3, 0x4

    int-to-float p3, p3

    mul-float/2addr p3, p1

    mul-float/2addr p3, p5

    mul-float/2addr p3, p2

    sub-float/2addr v1, p3

    mul-float/2addr p1, p5

    add-float/2addr v1, p1

    return v1
.end method

.method public static synthetic getPos$default(Landroidx/compose/animation/core/MonoSpline;FLandroidx/compose/animation/core/AnimationVector;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 132
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/animation/core/MonoSpline;->getPos(FLandroidx/compose/animation/core/AnimationVector;I)V

    return-void
.end method

.method private final getSlope(FI)F
    .locals 12

    .line 259
    iget-object v0, p0, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    array-length v1, v0

    const/4 v2, 0x0

    .line 260
    aget v3, v0, v2

    cmpg-float v4, p1, v3

    if-gez v4, :cond_0

    move p1, v3

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v1, -0x1

    .line 262
    aget v0, v0, v3

    cmpl-float v3, p1, v0

    if-ltz v3, :cond_1

    move p1, v0

    :cond_1
    :goto_0
    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ge v2, v1, :cond_3

    .line 266
    iget-object v0, p0, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    add-int/lit8 v3, v2, 0x1

    aget v4, v0, v3

    cmpg-float v5, p1, v4

    if-gtz v5, :cond_2

    .line 267
    aget v0, v0, v2

    sub-float/2addr v4, v0

    sub-float/2addr p1, v0

    div-float v7, p1, v4

    .line 269
    iget-object p1, p0, Landroidx/compose/animation/core/MonoSpline;->values:[[F

    aget-object v0, p1, v2

    aget v8, v0, p2

    .line 270
    aget-object p1, p1, v3

    aget v9, p1, p2

    .line 271
    iget-object p1, p0, Landroidx/compose/animation/core/MonoSpline;->tangents:[[F

    aget-object v0, p1, v2

    aget v10, v0, p2

    .line 272
    aget-object p1, p1, v3

    aget v11, p1, p2

    move-object v5, p0

    move v6, v4

    .line 273
    invoke-direct/range {v5 .. v11}, Landroidx/compose/animation/core/MonoSpline;->diff(FFFFFF)F

    move-result p1

    div-float/2addr p1, v4

    return p1

    :cond_2
    move v2, v3

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic getSlope$default(Landroidx/compose/animation/core/MonoSpline;FLandroidx/compose/animation/core/AnimationVector;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 221
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/animation/core/MonoSpline;->getSlope(FLandroidx/compose/animation/core/AnimationVector;I)V

    return-void
.end method

.method private final interpolate(FFFFFF)F
    .locals 5

    mul-float v0, p2, p2

    mul-float v1, v0, p2

    const/4 v2, -0x2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    mul-float/2addr v2, p4

    const/4 v3, 0x3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    mul-float/2addr p4, v3

    add-float/2addr v2, p4

    const/4 p4, 0x2

    int-to-float p4, p4

    mul-float v4, p4, v1

    mul-float/2addr v4, p3

    add-float/2addr v2, v4

    mul-float/2addr v3, p3

    sub-float/2addr v2, v3

    add-float/2addr v2, p3

    mul-float/2addr p6, p1

    mul-float p3, p6, v1

    add-float/2addr v2, p3

    mul-float p3, p1, p5

    mul-float/2addr v1, p3

    add-float/2addr v2, v1

    mul-float/2addr p6, v0

    sub-float/2addr v2, p6

    mul-float/2addr p4, p1

    mul-float/2addr p4, p5

    mul-float/2addr p4, v0

    sub-float/2addr v2, p4

    mul-float/2addr p3, p2

    add-float/2addr v2, p3

    return v2
.end method

.method private final makeFloatArray(II)[[F
    .locals 3

    .line 88
    new-array v0, p1, [[F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    new-array v2, p2, [F

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final getPos(FI)F
    .locals 13

    .line 94
    iget-object v0, p0, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    array-length v1, v0

    .line 95
    iget-boolean v2, p0, Landroidx/compose/animation/core/MonoSpline;->isExtrapolate:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 96
    aget v2, v0, v3

    cmpg-float v4, p1, v2

    if-gtz v4, :cond_0

    .line 97
    iget-object v0, p0, Landroidx/compose/animation/core/MonoSpline;->values:[[F

    aget-object v0, v0, v3

    aget v0, v0, p2

    sub-float/2addr p1, v2

    invoke-direct {p0, v2, p2}, Landroidx/compose/animation/core/MonoSpline;->getSlope(FI)F

    move-result p2

    mul-float/2addr p1, p2

    add-float/2addr v0, p1

    return v0

    :cond_0
    add-int/lit8 v2, v1, -0x1

    .line 99
    aget v0, v0, v2

    cmpl-float v4, p1, v0

    if-ltz v4, :cond_3

    .line 100
    iget-object v1, p0, Landroidx/compose/animation/core/MonoSpline;->values:[[F

    aget-object v1, v1, v2

    aget v1, v1, p2

    sub-float/2addr p1, v0

    invoke-direct {p0, v0, p2}, Landroidx/compose/animation/core/MonoSpline;->getSlope(FI)F

    move-result p2

    mul-float/2addr p1, p2

    add-float/2addr v1, p1

    return v1

    .line 103
    :cond_1
    aget v2, v0, v3

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_2

    .line 104
    iget-object p1, p0, Landroidx/compose/animation/core/MonoSpline;->values:[[F

    aget-object p1, p1, v3

    aget p1, p1, p2

    return p1

    :cond_2
    add-int/lit8 v2, v1, -0x1

    .line 106
    aget v0, v0, v2

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_3

    .line 107
    iget-object p1, p0, Landroidx/compose/animation/core/MonoSpline;->values:[[F

    aget-object p1, p1, v2

    aget p1, p1, p2

    return p1

    :cond_3
    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ge v3, v1, :cond_6

    .line 111
    iget-object v0, p0, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    aget v2, v0, v3

    cmpg-float v4, p1, v2

    if-nez v4, :cond_4

    .line 112
    iget-object p1, p0, Landroidx/compose/animation/core/MonoSpline;->values:[[F

    aget-object p1, p1, v3

    aget p1, p1, p2

    return p1

    :cond_4
    add-int/lit8 v4, v3, 0x1

    .line 114
    aget v0, v0, v4

    cmpg-float v5, p1, v0

    if-gez v5, :cond_5

    sub-float v7, v0, v2

    sub-float/2addr p1, v2

    div-float v8, p1, v7

    .line 117
    iget-object p1, p0, Landroidx/compose/animation/core/MonoSpline;->values:[[F

    aget-object v0, p1, v3

    aget v9, v0, p2

    .line 118
    aget-object p1, p1, v4

    aget v10, p1, p2

    .line 119
    iget-object p1, p0, Landroidx/compose/animation/core/MonoSpline;->tangents:[[F

    aget-object v0, p1, v3

    aget v11, v0, p2

    .line 120
    aget-object p1, p1, v4

    aget v12, p1, p2

    move-object v6, p0

    .line 121
    invoke-direct/range {v6 .. v12}, Landroidx/compose/animation/core/MonoSpline;->interpolate(FFFFFF)F

    move-result p1

    return p1

    :cond_5
    move v3, v4

    goto :goto_0

    :cond_6
    const/4 p1, 0x0

    return p1
.end method

.method public final getPos(FLandroidx/compose/animation/core/AnimationVector;I)V
    .locals 15

    move-object v7, p0

    move-object/from16 v8, p2

    .line 133
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    array-length v1, v0

    .line 134
    iget-object v2, v7, Landroidx/compose/animation/core/MonoSpline;->values:[[F

    const/4 v3, 0x0

    aget-object v2, v2, v3

    array-length v9, v2

    .line 135
    iget-boolean v2, v7, Landroidx/compose/animation/core/MonoSpline;->isExtrapolate:Z

    if-eqz v2, :cond_3

    .line 136
    aget v2, v0, v3

    cmpg-float v4, p1, v2

    if-gtz v4, :cond_1

    .line 137
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->slopeTemp:[F

    invoke-virtual {p0, v2, v0}, Landroidx/compose/animation/core/MonoSpline;->getSlope(F[F)V

    move v0, v3

    :goto_0
    if-ge v0, v9, :cond_0

    .line 139
    iget-object v1, v7, Landroidx/compose/animation/core/MonoSpline;->values:[[F

    aget-object v1, v1, v3

    aget v1, v1, v0

    iget-object v2, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    aget v2, v2, v3

    sub-float v2, p1, v2

    iget-object v4, v7, Landroidx/compose/animation/core/MonoSpline;->slopeTemp:[F

    aget v4, v4, v0

    mul-float/2addr v2, v4

    add-float/2addr v1, v2

    invoke-virtual {v8, v0, v1}, Landroidx/compose/animation/core/AnimationVector;->set$animation_core_release(IF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v2, v1, -0x1

    .line 143
    aget v0, v0, v2

    cmpl-float v4, p1, v0

    if-ltz v4, :cond_7

    .line 144
    iget-object v1, v7, Landroidx/compose/animation/core/MonoSpline;->slopeTemp:[F

    invoke-virtual {p0, v0, v1}, Landroidx/compose/animation/core/MonoSpline;->getSlope(F[F)V

    :goto_1
    if-ge v3, v9, :cond_2

    .line 146
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->values:[[F

    aget-object v0, v0, v2

    aget v0, v0, v3

    iget-object v1, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    aget v1, v1, v2

    sub-float v1, p1, v1

    iget-object v4, v7, Landroidx/compose/animation/core/MonoSpline;->slopeTemp:[F

    aget v4, v4, v3

    mul-float/2addr v1, v4

    add-float/2addr v0, v1

    invoke-virtual {v8, v3, v0}, Landroidx/compose/animation/core/AnimationVector;->set$animation_core_release(IF)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-void

    .line 151
    :cond_3
    aget v2, v0, v3

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_5

    move v0, v3

    :goto_2
    if-ge v0, v9, :cond_4

    .line 153
    iget-object v1, v7, Landroidx/compose/animation/core/MonoSpline;->values:[[F

    aget-object v1, v1, v3

    aget v1, v1, v0

    invoke-virtual {v8, v0, v1}, Landroidx/compose/animation/core/AnimationVector;->set$animation_core_release(IF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return-void

    :cond_5
    add-int/lit8 v2, v1, -0x1

    .line 157
    aget v0, v0, v2

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_7

    :goto_3
    if-ge v3, v9, :cond_6

    .line 159
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->values:[[F

    aget-object v0, v0, v2

    aget v0, v0, v3

    invoke-virtual {v8, v3, v0}, Landroidx/compose/animation/core/AnimationVector;->set$animation_core_release(IF)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    return-void

    :cond_7
    add-int/lit8 v1, v1, -0x1

    move/from16 v10, p3

    :goto_4
    if-ge v10, v1, :cond_b

    .line 165
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    aget v0, v0, v10

    cmpg-float v0, p1, v0

    if-nez v0, :cond_8

    move v0, v3

    :goto_5
    if-ge v0, v9, :cond_8

    .line 167
    iget-object v2, v7, Landroidx/compose/animation/core/MonoSpline;->values:[[F

    aget-object v2, v2, v10

    aget v2, v2, v0

    invoke-virtual {v8, v0, v2}, Landroidx/compose/animation/core/AnimationVector;->set$animation_core_release(IF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 170
    :cond_8
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    add-int/lit8 v11, v10, 0x1

    aget v2, v0, v11

    cmpg-float v4, p1, v2

    if-gez v4, :cond_a

    .line 171
    aget v0, v0, v10

    sub-float v12, v2, v0

    sub-float v0, p1, v0

    div-float v13, v0, v12

    move v14, v3

    :goto_6
    if-ge v14, v9, :cond_9

    .line 174
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->values:[[F

    aget-object v1, v0, v10

    aget v3, v1, v14

    .line 175
    aget-object v0, v0, v11

    aget v4, v0, v14

    .line 176
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->tangents:[[F

    aget-object v1, v0, v10

    aget v5, v1, v14

    .line 177
    aget-object v0, v0, v11

    aget v6, v0, v14

    move-object v0, p0

    move v1, v12

    move v2, v13

    .line 178
    invoke-direct/range {v0 .. v6}, Landroidx/compose/animation/core/MonoSpline;->interpolate(FFFFFF)F

    move-result v0

    invoke-virtual {v8, v14, v0}, Landroidx/compose/animation/core/AnimationVector;->set$animation_core_release(IF)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    :cond_9
    return-void

    :cond_a
    move v10, v11

    goto :goto_4

    :cond_b
    return-void
.end method

.method public final getSlope(FLandroidx/compose/animation/core/AnimationVector;I)V
    .locals 15

    move-object v7, p0

    move-object/from16 v8, p2

    .line 223
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    array-length v1, v0

    .line 224
    iget-object v2, v7, Landroidx/compose/animation/core/MonoSpline;->values:[[F

    const/4 v3, 0x0

    aget-object v2, v2, v3

    array-length v9, v2

    .line 227
    aget v2, v0, v3

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_1

    move v0, v3

    :goto_0
    if-ge v0, v9, :cond_0

    .line 229
    iget-object v1, v7, Landroidx/compose/animation/core/MonoSpline;->tangents:[[F

    aget-object v1, v1, v3

    aget v1, v1, v0

    invoke-virtual {v8, v0, v1}, Landroidx/compose/animation/core/AnimationVector;->set$animation_core_release(IF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 232
    aget v0, v0, v1

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_3

    :goto_1
    if-ge v3, v9, :cond_2

    .line 234
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->tangents:[[F

    aget-object v0, v0, v1

    aget v0, v0, v3

    invoke-virtual {v8, v3, v0}, Landroidx/compose/animation/core/AnimationVector;->set$animation_core_release(IF)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    move/from16 v10, p3

    :goto_2
    if-ge v10, v1, :cond_5

    .line 241
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    add-int/lit8 v11, v10, 0x1

    aget v2, v0, v11

    cmpg-float v4, p1, v2

    if-gtz v4, :cond_4

    .line 242
    aget v0, v0, v10

    sub-float v12, v2, v0

    sub-float v0, p1, v0

    div-float v13, v0, v12

    move v14, v3

    :goto_3
    if-ge v14, v9, :cond_5

    .line 245
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->values:[[F

    aget-object v1, v0, v10

    aget v3, v1, v14

    .line 246
    aget-object v0, v0, v11

    aget v4, v0, v14

    .line 247
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->tangents:[[F

    aget-object v1, v0, v10

    aget v5, v1, v14

    .line 248
    aget-object v0, v0, v11

    aget v6, v0, v14

    move-object v0, p0

    move v1, v12

    move v2, v13

    .line 249
    invoke-direct/range {v0 .. v6}, Landroidx/compose/animation/core/MonoSpline;->diff(FFFFFF)F

    move-result v0

    div-float/2addr v0, v12

    invoke-virtual {v8, v14, v0}, Landroidx/compose/animation/core/AnimationVector;->set$animation_core_release(IF)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_4
    move v10, v11

    goto :goto_2

    :cond_5
    return-void
.end method

.method public final getSlope(F[F)V
    .locals 14

    move-object v7, p0

    .line 191
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    array-length v1, v0

    .line 192
    iget-object v2, v7, Landroidx/compose/animation/core/MonoSpline;->values:[[F

    const/4 v3, 0x0

    aget-object v2, v2, v3

    array-length v8, v2

    .line 193
    aget v2, v0, v3

    cmpg-float v4, p1, v2

    if-gtz v4, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v1, -0x1

    .line 195
    aget v0, v0, v2

    cmpl-float v2, p1, v0

    if-ltz v2, :cond_1

    goto :goto_0

    :cond_1
    move v0, p1

    :goto_0
    add-int/lit8 v1, v1, -0x1

    move v9, v3

    :goto_1
    if-ge v9, v1, :cond_3

    .line 199
    iget-object v2, v7, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    add-int/lit8 v10, v9, 0x1

    aget v4, v2, v10

    cmpg-float v5, v0, v4

    if-gtz v5, :cond_2

    .line 200
    aget v1, v2, v9

    sub-float v11, v4, v1

    sub-float/2addr v0, v1

    div-float v12, v0, v11

    move v13, v3

    :goto_2
    if-ge v13, v8, :cond_3

    .line 203
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->values:[[F

    aget-object v1, v0, v9

    aget v3, v1, v13

    .line 204
    aget-object v0, v0, v10

    aget v4, v0, v13

    .line 205
    iget-object v0, v7, Landroidx/compose/animation/core/MonoSpline;->tangents:[[F

    aget-object v1, v0, v9

    aget v5, v1, v13

    .line 206
    aget-object v0, v0, v10

    aget v6, v0, v13

    move-object v0, p0

    move v1, v11

    move v2, v12

    .line 207
    invoke-direct/range {v0 .. v6}, Landroidx/compose/animation/core/MonoSpline;->diff(FFFFFF)F

    move-result v0

    div-float/2addr v0, v11

    aput v0, p2, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_2
    move v9, v10

    goto :goto_1

    :cond_3
    return-void
.end method
