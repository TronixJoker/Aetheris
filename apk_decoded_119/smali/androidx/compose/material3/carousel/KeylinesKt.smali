.class public final Landroidx/compose/material3/carousel/KeylinesKt;
.super Ljava/lang/Object;
.source "Keylines.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKeylines.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Keylines.kt\nandroidx/compose/material3/carousel/KeylinesKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,248:1\n1#2:249\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u001a \u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0001H\u0002\u001a0\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00012\u0006\u0010\u0008\u001a\u00020\u00012\u0006\u0010\t\u001a\u00020\u00012\u0006\u0010\n\u001a\u00020\u00012\u0006\u0010\u000b\u001a\u00020\u000cH\u0000\u001aD\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0007\u001a\u00020\u00012\u0006\u0010\u0010\u001a\u00020\u00012\u0006\u0010\u0008\u001a\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0001H\u0000\u001a(\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0007\u001a\u00020\u00012\u0006\u0010\u0016\u001a\u00020\u00012\u0006\u0010\u0008\u001a\u00020\u0001H\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "calculateMediumChildSize",
        "",
        "minimumMediumSize",
        "largeItemSize",
        "remainingSpace",
        "createLeftAlignedKeylineList",
        "Landroidx/compose/material3/carousel/KeylineList;",
        "carouselMainAxisSize",
        "itemSpacing",
        "leftAnchorSize",
        "rightAnchorSize",
        "arrangement",
        "Landroidx/compose/material3/carousel/Arrangement;",
        "multiBrowseKeylineList",
        "density",
        "Landroidx/compose/ui/unit/Density;",
        "preferredItemSize",
        "itemCount",
        "",
        "minSmallItemSize",
        "maxSmallItemSize",
        "uncontainedKeylineList",
        "itemSize",
        "material3_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private static final calculateMediumChildSize(FFF)F
    .locals 1

    const/high16 v0, 0x3fc00000    # 1.5f

    mul-float/2addr v0, p2

    .line 234
    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    const v0, 0x3f59999a    # 0.85f

    mul-float/2addr p1, v0

    cmpl-float v0, p0, p1

    if-lez v0, :cond_0

    const p0, 0x3f99999a    # 1.2f

    mul-float/2addr p2, p0

    .line 244
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p0

    :cond_0
    return p0
.end method

.method public static final createLeftAlignedKeylineList(FFFFLandroidx/compose/material3/carousel/Arrangement;)Landroidx/compose/material3/carousel/KeylineList;
    .locals 2

    .line 153
    sget-object v0, Landroidx/compose/material3/carousel/CarouselAlignment;->Companion:Landroidx/compose/material3/carousel/CarouselAlignment$Companion;

    invoke-virtual {v0}, Landroidx/compose/material3/carousel/CarouselAlignment$Companion;->getStart-NUL3oTo()I

    move-result v0

    new-instance v1, Landroidx/compose/material3/carousel/KeylinesKt$createLeftAlignedKeylineList$1;

    invoke-direct {v1, p2, p4, p3}, Landroidx/compose/material3/carousel/KeylinesKt$createLeftAlignedKeylineList$1;-><init>(FLandroidx/compose/material3/carousel/Arrangement;F)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/material3/carousel/KeylineListKt;->keylineListOf-WNYm7Xg(FFILkotlin/jvm/functions/Function1;)Landroidx/compose/material3/carousel/KeylineList;

    move-result-object p0

    return-object p0
.end method

.method public static final multiBrowseKeylineList(Landroidx/compose/ui/unit/Density;FFFIFF)Landroidx/compose/material3/carousel/KeylineList;
    .locals 21

    move/from16 v11, p1

    move/from16 v0, p2

    move/from16 v12, p4

    move/from16 v13, p5

    move/from16 v14, p6

    const/4 v1, 0x0

    cmpg-float v2, v11, v1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    cmpg-float v1, v0, v1

    if-nez v1, :cond_1

    .line 56
    :goto_0
    invoke-static {}, Landroidx/compose/material3/carousel/KeylineListKt;->emptyKeylineList()Landroidx/compose/material3/carousel/KeylineList;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v15, 0x1

    .line 59
    new-array v1, v15, [I

    const/4 v2, 0x0

    aput v15, v1, v2

    .line 60
    filled-new-array {v15, v2}, [I

    move-result-object v8

    .line 62
    invoke-static {v0, v11}, Ljava/lang/Math;->min(FF)F

    move-result v16

    const/high16 v0, 0x40400000    # 3.0f

    div-float v0, v16, v0

    .line 67
    invoke-static {v0, v13, v14}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v17

    add-float v0, v16, v17

    const/high16 v3, 0x40000000    # 2.0f

    div-float v18, v0, v3

    const/4 v0, 0x2

    int-to-float v0, v0

    mul-float/2addr v0, v13

    cmpg-float v0, v11, v0

    if-gez v0, :cond_2

    .line 74
    new-array v0, v15, [I

    aput v2, v0, v2

    move-object v6, v0

    goto :goto_1

    :cond_2
    move-object v6, v1

    .line 81
    :goto_1
    invoke-static {v8}, Lkotlin/collections/ArraysKt;->maxOrThrow([I)I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v18

    sub-float v0, v11, v0

    .line 82
    invoke-static {v6}, Lkotlin/collections/ArraysKt;->maxOrThrow([I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v14

    sub-float/2addr v0, v1

    div-float v0, v0, v16

    float-to-double v0, v0

    .line 83
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-int v0, v0

    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    div-float v1, v11, v16

    float-to-double v3, v1

    .line 84
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-float v1, v3

    float-to-int v1, v1

    sub-int v0, v1, v0

    add-int/2addr v0, v15

    .line 86
    new-array v10, v0, [I

    :goto_2
    if-ge v2, v0, :cond_3

    sub-int v3, v1, v2

    aput v3, v10, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 87
    :cond_3
    sget-object v0, Landroidx/compose/material3/carousel/CarouselDefaults;->INSTANCE:Landroidx/compose/material3/carousel/CarouselDefaults;

    invoke-virtual {v0}, Landroidx/compose/material3/carousel/CarouselDefaults;->getAnchorSize-D9Ej5fM$material3_release()F

    move-result v0

    move-object/from16 v1, p0

    invoke-interface {v1, v0}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v9

    .line 89
    sget-object v0, Landroidx/compose/material3/carousel/Arrangement;->Companion:Landroidx/compose/material3/carousel/Arrangement$Companion;

    move/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, v17

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v7, v18

    move/from16 v19, v9

    move/from16 v9, v16

    move-object/from16 v20, v10

    invoke-virtual/range {v0 .. v10}, Landroidx/compose/material3/carousel/Arrangement$Companion;->findLowestCostArrangement(FFFFF[IF[IF[I)Landroidx/compose/material3/carousel/Arrangement;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 102
    invoke-virtual {v0}, Landroidx/compose/material3/carousel/Arrangement;->itemCount()I

    move-result v1

    if-le v1, v12, :cond_7

    .line 103
    invoke-virtual {v0}, Landroidx/compose/material3/carousel/Arrangement;->itemCount()I

    move-result v1

    sub-int/2addr v1, v12

    .line 104
    invoke-virtual {v0}, Landroidx/compose/material3/carousel/Arrangement;->getSmallCount()I

    move-result v2

    .line 105
    invoke-virtual {v0}, Landroidx/compose/material3/carousel/Arrangement;->getMediumCount()I

    move-result v0

    :goto_3
    if-lez v1, :cond_6

    if-lez v2, :cond_4

    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    :cond_4
    if-le v0, v15, :cond_5

    add-int/lit8 v0, v0, -0x1

    :cond_5
    :goto_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 119
    :cond_6
    sget-object v1, Landroidx/compose/material3/carousel/Arrangement;->Companion:Landroidx/compose/material3/carousel/Arrangement$Companion;

    .line 125
    filled-new-array {v2}, [I

    move-result-object v6

    .line 127
    filled-new-array {v0}, [I

    move-result-object v8

    move-object v0, v1

    move/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, v17

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v7, v18

    move/from16 v9, v16

    move-object/from16 v10, v20

    .line 119
    invoke-virtual/range {v0 .. v10}, Landroidx/compose/material3/carousel/Arrangement$Companion;->findLowestCostArrangement(FFFFF[IF[IF[I)Landroidx/compose/material3/carousel/Arrangement;

    move-result-object v0

    :cond_7
    if-nez v0, :cond_8

    .line 134
    invoke-static {}, Landroidx/compose/material3/carousel/KeylineListKt;->emptyKeylineList()Landroidx/compose/material3/carousel/KeylineList;

    move-result-object v0

    return-object v0

    :cond_8
    move/from16 v1, p3

    move/from16 v2, v19

    .line 137
    invoke-static {v11, v1, v2, v2, v0}, Landroidx/compose/material3/carousel/KeylinesKt;->createLeftAlignedKeylineList(FFFFLandroidx/compose/material3/carousel/Arrangement;)Landroidx/compose/material3/carousel/KeylineList;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic multiBrowseKeylineList$default(Landroidx/compose/ui/unit/Density;FFFIFFILjava/lang/Object;)Landroidx/compose/material3/carousel/KeylineList;
    .locals 7

    and-int/lit8 p8, p7, 0x20

    if-eqz p8, :cond_0

    .line 52
    sget-object p5, Landroidx/compose/material3/carousel/CarouselDefaults;->INSTANCE:Landroidx/compose/material3/carousel/CarouselDefaults;

    invoke-virtual {p5}, Landroidx/compose/material3/carousel/CarouselDefaults;->getMinSmallItemSize-D9Ej5fM$material3_release()F

    move-result p5

    invoke-interface {p0, p5}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result p5

    :cond_0
    move v5, p5

    and-int/lit8 p5, p7, 0x40

    if-eqz p5, :cond_1

    .line 53
    sget-object p5, Landroidx/compose/material3/carousel/CarouselDefaults;->INSTANCE:Landroidx/compose/material3/carousel/CarouselDefaults;

    invoke-virtual {p5}, Landroidx/compose/material3/carousel/CarouselDefaults;->getMaxSmallItemSize-D9Ej5fM$material3_release()F

    move-result p5

    invoke-interface {p0, p5}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result p6

    :cond_1
    move v6, p6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 46
    invoke-static/range {v0 .. v6}, Landroidx/compose/material3/carousel/KeylinesKt;->multiBrowseKeylineList(Landroidx/compose/ui/unit/Density;FFFIFF)Landroidx/compose/material3/carousel/KeylineList;

    move-result-object p0

    return-object p0
.end method

.method public static final uncontainedKeylineList(Landroidx/compose/ui/unit/Density;FFF)Landroidx/compose/material3/carousel/KeylineList;
    .locals 10

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    cmpg-float v1, p2, v0

    if-nez v1, :cond_1

    .line 186
    :goto_0
    invoke-static {}, Landroidx/compose/material3/carousel/KeylineListKt;->emptyKeylineList()Landroidx/compose/material3/carousel/KeylineList;

    move-result-object p0

    return-object p0

    :cond_1
    add-float v1, p2, p3

    .line 189
    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result v8

    div-float v1, p1, v8

    float-to-double v1, v1

    .line 191
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-float v1, v1

    float-to-int v1, v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v9

    int-to-float v1, v9

    mul-float/2addr v1, v8

    sub-float v1, p1, v1

    cmpl-float v0, v1, v0

    if-lez v0, :cond_2

    move v7, v2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    move v7, v0

    .line 196
    :goto_1
    sget-object v0, Landroidx/compose/material3/carousel/CarouselDefaults;->INSTANCE:Landroidx/compose/material3/carousel/CarouselDefaults;

    invoke-virtual {v0}, Landroidx/compose/material3/carousel/CarouselDefaults;->getAnchorSize-D9Ej5fM$material3_release()F

    move-result v0

    invoke-interface {p0, v0}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result p0

    .line 198
    invoke-static {p0, v8, v1}, Landroidx/compose/material3/carousel/KeylinesKt;->calculateMediumChildSize(FFF)F

    move-result v0

    .line 203
    new-instance v1, Landroidx/compose/material3/carousel/Arrangement;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v2, v1

    move v6, v0

    invoke-direct/range {v2 .. v9}, Landroidx/compose/material3/carousel/Arrangement;-><init>(IFIFIFI)V

    .line 205
    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v0, v2

    .line 208
    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 209
    invoke-static {p1, p3, p2, p0, v1}, Landroidx/compose/material3/carousel/KeylinesKt;->createLeftAlignedKeylineList(FFFFLandroidx/compose/material3/carousel/Arrangement;)Landroidx/compose/material3/carousel/KeylineList;

    move-result-object p0

    return-object p0
.end method
