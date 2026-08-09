.class public final Landroidx/compose/material3/carousel/Arrangement$Companion;
.super Ljava/lang/Object;
.source "Arrangement.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/material3/carousel/Arrangement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0015\n\u0002\u0008\t\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J0\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u0008H\u0002JX\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u0013J`\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0019\u001a\u00020\u00082\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00082\u0006\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u001b\u001a\u00020\u0004H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Landroidx/compose/material3/carousel/Arrangement$Companion;",
        "",
        "()V",
        "MediumItemFlexPercentage",
        "",
        "calculateLargeSize",
        "availableSpace",
        "smallCount",
        "",
        "smallSize",
        "mediumCount",
        "largeCount",
        "findLowestCostArrangement",
        "Landroidx/compose/material3/carousel/Arrangement;",
        "itemSpacing",
        "targetSmallSize",
        "minSmallSize",
        "maxSmallSize",
        "smallCounts",
        "",
        "targetMediumSize",
        "mediumCounts",
        "targetLargeSize",
        "largeCounts",
        "fit",
        "priority",
        "mediumSize",
        "largeSize",
        "material3_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/material3/carousel/Arrangement$Companion;-><init>()V

    return-void
.end method

.method private final calculateLargeSize(FIFII)F
    .locals 1

    int-to-float p2, p2

    int-to-float p4, p4

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p4, v0

    add-float/2addr p2, p4

    mul-float/2addr p2, p3

    sub-float/2addr p1, p2

    int-to-float p2, p5

    add-float/2addr p2, p4

    div-float/2addr p1, p2

    return p1
.end method

.method private final fit(IFFIFFFIFIF)Landroidx/compose/material3/carousel/Arrangement;
    .locals 13

    move/from16 v6, p4

    move/from16 v7, p8

    move/from16 v8, p10

    add-int v0, v8, v7

    add-int/2addr v0, v6

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    mul-float v0, v0, p3

    sub-float v1, p2, v0

    .line 187
    invoke-static/range {p5 .. p7}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v0

    int-to-float v9, v8

    mul-float v2, p11, v9

    int-to-float v10, v7

    mul-float v3, p9, v10

    add-float/2addr v2, v3

    int-to-float v3, v6

    mul-float v4, v0, v3

    add-float/2addr v2, v4

    sub-float v2, v1, v2

    const/4 v11, 0x0

    if-lez v6, :cond_0

    cmpl-float v4, v2, v11

    if-lez v4, :cond_0

    div-float/2addr v2, v3

    sub-float v3, p7, v0

    .line 200
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    :goto_0
    add-float/2addr v0, v2

    goto :goto_1

    :cond_0
    if-lez v6, :cond_1

    cmpg-float v4, v2, v11

    if-gez v4, :cond_1

    div-float/2addr v2, v3

    sub-float v3, p6, v0

    .line 203
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    goto :goto_0

    :cond_1
    :goto_1
    if-lez v6, :cond_2

    move v12, v0

    goto :goto_2

    :cond_2
    move v12, v11

    :goto_2
    move-object v0, p0

    move/from16 v2, p4

    move v3, v12

    move/from16 v4, p8

    move/from16 v5, p10

    .line 209
    invoke-direct/range {v0 .. v5}, Landroidx/compose/material3/carousel/Arrangement$Companion;->calculateLargeSize(FIFII)F

    move-result v0

    add-float v1, v0, v12

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    if-lez v7, :cond_5

    cmpg-float v2, v0, p11

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    sub-float v2, p11, v0

    mul-float/2addr v2, v9

    const v3, 0x3dcccccd    # 0.1f

    mul-float/2addr v3, v1

    mul-float/2addr v3, v10

    .line 225
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    cmpl-float v2, v2, v11

    if-lez v2, :cond_4

    div-float v2, v3, v10

    sub-float/2addr v1, v2

    div-float/2addr v3, v9

    add-float/2addr v0, v3

    goto :goto_3

    :cond_4
    div-float v2, v3, v10

    add-float/2addr v1, v2

    div-float/2addr v3, v9

    sub-float/2addr v0, v3

    :cond_5
    :goto_3
    move v9, v0

    move v4, v1

    .line 237
    new-instance v10, Landroidx/compose/material3/carousel/Arrangement;

    move-object v0, v10

    move v1, p1

    move v2, v12

    move/from16 v3, p4

    move/from16 v5, p8

    move v6, v9

    move/from16 v7, p10

    invoke-direct/range {v0 .. v7}, Landroidx/compose/material3/carousel/Arrangement;-><init>(IFIFIFI)V

    return-object v10
.end method


# virtual methods
.method public final findLowestCostArrangement(FFFFF[IF[IF[I)Landroidx/compose/material3/carousel/Arrangement;
    .locals 26

    move-object/from16 v0, p6

    move-object/from16 v1, p8

    move/from16 v14, p9

    move-object/from16 v15, p10

    .line 112
    array-length v13, v15

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v16, 0x0

    move/from16 v12, v16

    :goto_0
    if-ge v12, v13, :cond_5

    aget v17, v15, v12

    .line 113
    array-length v11, v1

    move/from16 v10, v16

    :goto_1
    if-ge v10, v11, :cond_4

    aget v18, v1, v10

    .line 114
    array-length v9, v0

    move-object v8, v2

    move/from16 v19, v3

    move/from16 v7, v16

    :goto_2
    if-ge v7, v9, :cond_3

    aget v6, v0, v7

    move-object/from16 v2, p0

    move/from16 v3, v19

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v20, v7

    move/from16 v7, p3

    move-object v0, v8

    move/from16 v8, p4

    move/from16 v21, v9

    move/from16 v9, p5

    move/from16 v22, v10

    move/from16 v10, v18

    move/from16 v23, v11

    move/from16 v11, p7

    move/from16 v24, v12

    move/from16 v12, v17

    move/from16 v25, v13

    move/from16 v13, p9

    .line 116
    invoke-direct/range {v2 .. v13}, Landroidx/compose/material3/carousel/Arrangement$Companion;->fit(IFFIFFFIFIF)Landroidx/compose/material3/carousel/Arrangement;

    move-result-object v2

    if-eqz v0, :cond_1

    .line 131
    invoke-static {v2, v14}, Landroidx/compose/material3/carousel/Arrangement;->access$cost(Landroidx/compose/material3/carousel/Arrangement;F)F

    move-result v3

    .line 132
    invoke-static {v0, v14}, Landroidx/compose/material3/carousel/Arrangement;->access$cost(Landroidx/compose/material3/carousel/Arrangement;F)F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    goto :goto_3

    :cond_0
    move-object v8, v0

    goto :goto_4

    .line 135
    :cond_1
    :goto_3
    invoke-static {v2, v14}, Landroidx/compose/material3/carousel/Arrangement;->access$cost(Landroidx/compose/material3/carousel/Arrangement;F)F

    move-result v0

    const/4 v3, 0x0

    cmpg-float v0, v0, v3

    if-nez v0, :cond_2

    return-object v2

    :cond_2
    move-object v8, v2

    :goto_4
    add-int/lit8 v19, v19, 0x1

    add-int/lit8 v7, v20, 0x1

    move-object/from16 v0, p6

    move/from16 v9, v21

    move/from16 v10, v22

    move/from16 v11, v23

    move/from16 v12, v24

    move/from16 v13, v25

    goto :goto_2

    :cond_3
    move-object v0, v8

    move/from16 v22, v10

    move/from16 v23, v11

    move/from16 v24, v12

    move/from16 v25, v13

    add-int/lit8 v10, v22, 0x1

    move-object v2, v0

    move/from16 v3, v19

    move-object/from16 v0, p6

    goto :goto_1

    :cond_4
    move/from16 v24, v12

    move/from16 v25, v13

    add-int/lit8 v12, v24, 0x1

    move-object/from16 v0, p6

    goto/16 :goto_0

    :cond_5
    return-object v2
.end method
