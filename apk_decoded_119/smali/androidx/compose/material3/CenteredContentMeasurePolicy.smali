.class final Landroidx/compose/material3/CenteredContentMeasurePolicy;
.super Ljava/lang/Object;
.source "ExpressiveNavigationBar.kt"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExpressiveNavigationBar.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExpressiveNavigationBar.kt\nandroidx/compose/material3/CenteredContentMeasurePolicy\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,459:1\n151#2,3:460\n33#2,4:463\n154#2,2:467\n38#2:469\n156#2:470\n33#2,6:471\n151#2,3:477\n33#2,4:480\n154#2,2:484\n38#2:486\n156#2:487\n*S KotlinDebug\n*F\n+ 1 ExpressiveNavigationBar.kt\nandroidx/compose/material3/CenteredContentMeasurePolicy\n*L\n364#1:460,3\n364#1:463,4\n364#1:467,2\n364#1:469\n364#1:470\n373#1:471,6\n380#1:477,3\n380#1:480,4\n380#1:484,2\n380#1:486\n380#1:487\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J,\u0010\u0003\u001a\u00020\u0004*\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\t\u001a\u00020\nH\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\r"
    }
    d2 = {
        "Landroidx/compose/material3/CenteredContentMeasurePolicy;",
        "Landroidx/compose/ui/layout/MeasurePolicy;",
        "()V",
        "measure",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "Landroidx/compose/ui/layout/MeasureScope;",
        "measurables",
        "",
        "Landroidx/compose/ui/layout/Measurable;",
        "constraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "measure-3p2s80s",
        "(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;",
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
.method public constructor <init>()V
    .locals 0

    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/MeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/Measurable;",
            ">;J)",
            "Landroidx/compose/ui/layout/MeasureResult;"
        }
    .end annotation

    move-object/from16 v0, p2

    move-wide/from16 v1, p3

    .line 350
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v3

    .line 351
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v4

    .line 352
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_0

    .line 355
    sget-object v0, Landroidx/compose/material3/CenteredContentMeasurePolicy$measure$1;->INSTANCE:Landroidx/compose/material3/CenteredContentMeasurePolicy$measure$1;

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function1;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p1

    move v1, v3

    move v2, v4

    move-object v3, v8

    move-object v4, v5

    move v5, v6

    move-object v6, v7

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0

    .line 358
    :cond_0
    new-instance v6, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 360
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getHasBoundedWidth-impl(J)Z

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_2

    .line 461
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 464
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v7

    :goto_0
    if-ge v8, v7, :cond_1

    .line 465
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 467
    move-object v10, v5

    check-cast v10, Ljava/util/Collection;

    check-cast v9, Landroidx/compose/ui/layout/Measurable;

    .line 365
    sget-object v11, Landroidx/compose/ui/unit/Constraints;->Companion:Landroidx/compose/ui/unit/Constraints$Companion;

    invoke-virtual {v11, v4}, Landroidx/compose/ui/unit/Constraints$Companion;->fixedHeight-OenEA2s(I)J

    move-result-wide v11

    invoke-static {v1, v2, v11, v12}, Landroidx/compose/ui/unit/ConstraintsKt;->constrain-N9IONVI(JJ)J

    move-result-wide v11

    invoke-interface {v9, v11, v12}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v9

    .line 467
    invoke-interface {v10, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 470
    :cond_1
    check-cast v5, Ljava/util/List;

    :goto_1
    move v2, v4

    goto/16 :goto_5

    .line 368
    :cond_2
    div-int v7, v3, v5

    .line 369
    invoke-static {v5, v3}, Landroidx/compose/material3/ExpressiveNavigationBarKt;->access$calculateCenteredContentHorizontalPadding(II)I

    move-result v9

    iput v9, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 370
    iget v9, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    mul-int/lit8 v9, v9, 0x2

    sub-int v9, v3, v9

    div-int/2addr v9, v5

    .line 472
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v5

    move v10, v8

    :goto_2
    if-ge v10, v5, :cond_4

    .line 473
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 474
    check-cast v11, Landroidx/compose/ui/layout/Measurable;

    .line 374
    invoke-interface {v11, v9}, Landroidx/compose/ui/layout/Measurable;->maxIntrinsicHeight(I)I

    move-result v11

    if-ge v4, v11, :cond_3

    .line 376
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v4

    invoke-static {v11, v4}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v4

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 478
    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v10

    invoke-direct {v5, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 481
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v10

    :goto_3
    if-ge v8, v10, :cond_6

    .line 482
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 484
    move-object v12, v5

    check-cast v12, Ljava/util/Collection;

    check-cast v11, Landroidx/compose/ui/layout/Measurable;

    .line 382
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v13

    invoke-interface {v11, v13}, Landroidx/compose/ui/layout/Measurable;->maxIntrinsicWidth(I)I

    move-result v13

    if-ge v9, v13, :cond_5

    .line 386
    invoke-static {v13, v7}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v13

    .line 388
    iget v14, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    sub-int v15, v13, v9

    div-int/lit8 v15, v15, 0x2

    sub-int/2addr v14, v15

    iput v14, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto :goto_4

    :cond_5
    move v13, v9

    .line 393
    :goto_4
    sget-object v14, Landroidx/compose/ui/unit/Constraints;->Companion:Landroidx/compose/ui/unit/Constraints$Companion;

    invoke-virtual {v14, v13, v4}, Landroidx/compose/ui/unit/Constraints$Companion;->fixed-JhjzzOo(II)J

    move-result-wide v13

    .line 392
    invoke-static {v1, v2, v13, v14}, Landroidx/compose/ui/unit/ConstraintsKt;->constrain-N9IONVI(JJ)J

    move-result-wide v13

    .line 391
    invoke-interface {v11, v13, v14}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v11

    .line 484
    invoke-interface {v12, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 487
    :cond_6
    check-cast v5, Ljava/util/List;

    goto :goto_1

    .line 399
    :goto_5
    new-instance v0, Landroidx/compose/material3/CenteredContentMeasurePolicy$measure$5;

    invoke-direct {v0, v6, v5}, Landroidx/compose/material3/CenteredContentMeasurePolicy$measure$5;-><init>(Lkotlin/jvm/internal/Ref$IntRef;Ljava/util/List;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move v1, v3

    move-object v3, v7

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0
.end method
