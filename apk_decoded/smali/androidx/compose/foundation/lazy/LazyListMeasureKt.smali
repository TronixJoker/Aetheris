.class public final Landroidx/compose/foundation/lazy/LazyListMeasureKt;
.super Ljava/lang/Object;
.source "LazyListMeasure.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyListMeasure.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyListMeasure.kt\nandroidx/compose/foundation/lazy/LazyListMeasureKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 InlineClassHelper.jvm.kt\nandroidx/compose/ui/util/InlineClassHelper_jvmKt\n+ 4 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,650:1\n1#2:651\n26#3:652\n26#3:653\n26#3:654\n33#4,6:655\n33#4,6:661\n33#4,6:667\n235#4,3:673\n33#4,4:676\n238#4,2:680\n38#4:682\n240#4:683\n116#4,2:684\n33#4,6:686\n118#4:692\n116#4,2:693\n33#4,6:695\n118#4:701\n116#4,2:702\n33#4,6:704\n118#4:710\n33#4,6:711\n51#4,6:717\n33#4,6:723\n33#4,6:729\n33#4,6:735\n*S KotlinDebug\n*F\n+ 1 LazyListMeasure.kt\nandroidx/compose/foundation/lazy/LazyListMeasureKt\n*L\n134#1:652\n259#1:653\n260#1:654\n307#1:655,6\n324#1:661,6\n380#1:667,6\n417#1:673,3\n417#1:676,4\n417#1:680,2\n417#1:682\n417#1:683\n478#1:684,2\n478#1:686,6\n478#1:692\n495#1:693,2\n495#1:695,6\n495#1:701\n497#1:702,2\n497#1:704,6\n497#1:710\n518#1:711,6\n545#1:717,6\n629#1:723,6\n636#1:729,6\n642#1:735,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0096\u0001\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\u008c\u0001\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00042\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u0015H\u0002\u001a\\\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00042\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00082\u0006\u0010\u001b\u001a\u00020\u00082\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00042\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u000e2\u0008\u0010 \u001a\u0004\u0018\u00010!H\u0002\u001a4\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00042\u0006\u0010#\u001a\u00020\u00082\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u00082\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0004H\u0002\u001a\u00a3\u0002\u0010$\u001a\u00020%2\u0006\u0010\u001a\u001a\u00020\u00082\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010&\u001a\u00020\u00082\u0006\u0010\'\u001a\u00020\u00082\u0006\u0010(\u001a\u00020\u00082\u0006\u0010)\u001a\u00020\u00082\u0006\u0010*\u001a\u00020\u00082\u0006\u0010+\u001a\u00020\u00082\u0006\u0010,\u001a\u00020\u001e2\u0006\u0010-\u001a\u00020.2\u0006\u0010\r\u001a\u00020\u000e2\u000c\u0010/\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00042\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u00152\u000c\u00100\u001a\u0008\u0012\u0004\u0012\u00020\u0002012\u0006\u0010\u001b\u001a\u00020\u00082\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00042\u0006\u00102\u001a\u00020\u000e2\u0006\u0010\u001f\u001a\u00020\u000e2\u0008\u00103\u001a\u0004\u0018\u00010!2\u0006\u00104\u001a\u0002052\u0006\u00106\u001a\u0002072\u0006\u00108\u001a\u0002092/\u0010:\u001a+\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u0008\u0012\u0015\u0012\u0013\u0012\u0004\u0012\u00020=\u0012\u0004\u0012\u00020>0<\u00a2\u0006\u0002\u0008?\u0012\u0004\u0012\u00020@0;H\u0000\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008A\u0010B\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006C"
    }
    d2 = {
        "calculateItemsOffsets",
        "",
        "Landroidx/compose/foundation/lazy/LazyListMeasuredItem;",
        "items",
        "",
        "extraItemsBefore",
        "extraItemsAfter",
        "layoutWidth",
        "",
        "layoutHeight",
        "finalMainAxisOffset",
        "maxOffset",
        "itemsScrollOffset",
        "isVertical",
        "",
        "verticalArrangement",
        "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
        "horizontalArrangement",
        "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
        "reverseLayout",
        "density",
        "Landroidx/compose/ui/unit/Density;",
        "createItemsAfterList",
        "visibleItems",
        "measuredItemProvider",
        "Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;",
        "itemsCount",
        "beyondBoundsItemCount",
        "pinnedItems",
        "consumedScroll",
        "",
        "isLookingAhead",
        "lastPostLookaheadLayoutInfo",
        "Landroidx/compose/foundation/lazy/LazyListLayoutInfo;",
        "createItemsBeforeList",
        "currentFirstItemIndex",
        "measureLazyList",
        "Landroidx/compose/foundation/lazy/LazyListMeasureResult;",
        "mainAxisAvailableSize",
        "beforeContentPadding",
        "afterContentPadding",
        "spaceBetweenItems",
        "firstVisibleItemIndex",
        "firstVisibleItemScrollOffset",
        "scrollToBeConsumed",
        "constraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "headerIndexes",
        "itemAnimator",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;",
        "hasLookaheadPassOccurred",
        "postLookaheadLayoutInfo",
        "coroutineScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "placementScopeInvalidator",
        "Landroidx/compose/foundation/lazy/layout/ObservableScopeInvalidator;",
        "graphicsContext",
        "Landroidx/compose/ui/graphics/GraphicsContext;",
        "layout",
        "Lkotlin/Function3;",
        "Lkotlin/Function1;",
        "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "measureLazyList-x0Ok8Vo",
        "(ILandroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;IIIIIIFJZLjava/util/List;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ZLandroidx/compose/ui/unit/Density;Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;ILjava/util/List;ZZLandroidx/compose/foundation/lazy/LazyListLayoutInfo;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/graphics/GraphicsContext;Lkotlin/jvm/functions/Function3;)Landroidx/compose/foundation/lazy/LazyListMeasureResult;",
        "foundation_release"
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
.method private static final calculateItemsOffsets(Ljava/util/List;Ljava/util/List;Ljava/util/List;IIIIIZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ZLandroidx/compose/ui/unit/Density;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyListMeasuredItem;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyListMeasuredItem;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyListMeasuredItem;",
            ">;IIIIIZ",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "Z",
            "Landroidx/compose/ui/unit/Density;",
            ")",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyListMeasuredItem;",
            ">;"
        }
    .end annotation

    move-object v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, p9

    move/from16 v4, p11

    move/from16 v5, p6

    if-eqz p8, :cond_0

    move v6, v2

    goto :goto_0

    :cond_0
    move v6, v1

    .line 574
    :goto_0
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v7, 0x0

    move/from16 v8, p5

    if-ge v8, v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    move v5, v7

    :goto_1
    if-eqz v5, :cond_3

    if-nez p7, :cond_2

    goto :goto_2

    .line 576
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "non-zero itemsScrollOffset"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 580
    :cond_3
    :goto_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v9

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    add-int/2addr v9, v10

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v10

    add-int/2addr v9, v10

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz v5, :cond_e

    .line 583
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 585
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    .line 589
    new-array v9, v5, [I

    move v10, v7

    :goto_3
    if-ge v10, v5, :cond_4

    .line 590
    invoke-static {v10, v4, v5}, Landroidx/compose/foundation/lazy/LazyListMeasureKt;->calculateItemsOffsets$reverseAware(IZI)I

    move-result v11

    invoke-interface {p0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    invoke-virtual {v11}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getSize()I

    move-result v11

    aput v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 592
    :cond_4
    new-array v10, v5, [I

    move v11, v7

    :goto_4
    if-ge v11, v5, :cond_5

    aput v7, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_5
    if-eqz p8, :cond_7

    if-eqz v3, :cond_6

    move-object/from16 v7, p12

    .line 599
    invoke-interface {v3, v7, v6, v9, v10}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->arrange(Landroidx/compose/ui/unit/Density;I[I[I)V

    goto :goto_5

    .line 595
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "null verticalArrangement when isVertical == true"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move-object/from16 v7, p12

    if-eqz p10, :cond_c

    .line 608
    sget-object v3, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    move-object/from16 p5, p10

    move-object/from16 p6, p12

    move/from16 p7, v6

    move-object/from16 p8, v9

    move-object/from16 p9, v3

    move-object/from16 p10, v10

    invoke-interface/range {p5 .. p10}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->arrange(Landroidx/compose/ui/unit/Density;I[ILandroidx/compose/ui/unit/LayoutDirection;[I)V

    .line 613
    :goto_5
    invoke-static {v10}, Lkotlin/collections/ArraysKt;->getIndices([I)Lkotlin/ranges/IntRange;

    move-result-object v3

    check-cast v3, Lkotlin/ranges/IntProgression;

    if-nez v4, :cond_8

    goto :goto_6

    :cond_8
    invoke-static {v3}, Lkotlin/ranges/RangesKt;->reversed(Lkotlin/ranges/IntProgression;)Lkotlin/ranges/IntProgression;

    move-result-object v3

    .line 614
    :goto_6
    invoke-virtual {v3}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v7

    invoke-virtual {v3}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v9

    invoke-virtual {v3}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result v3

    if-lez v3, :cond_9

    if-le v7, v9, :cond_a

    :cond_9
    if-gez v3, :cond_11

    if-gt v9, v7, :cond_11

    .line 615
    :cond_a
    :goto_7
    aget v11, v10, v7

    .line 617
    invoke-static {v7, v4, v5}, Landroidx/compose/foundation/lazy/LazyListMeasureKt;->calculateItemsOffsets$reverseAware(IZI)I

    move-result v12

    invoke-interface {p0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    if-eqz v4, :cond_b

    sub-int v11, v6, v11

    .line 620
    invoke-virtual {v12}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getSize()I

    move-result v13

    sub-int/2addr v11, v13

    .line 624
    :cond_b
    invoke-virtual {v12, v11, v1, v2}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->position(III)V

    .line 625
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eq v7, v9, :cond_11

    add-int/2addr v7, v3

    goto :goto_7

    .line 603
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "null horizontalArrangement when isVertical == false"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 583
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "no extra items"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 724
    :cond_e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v5, p7

    move v4, v7

    :goto_8
    if-ge v4, v3, :cond_f

    move-object v6, p1

    .line 725
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 726
    check-cast v9, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 630
    invoke-virtual {v9}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getMainAxisSizeWithSpacings()I

    move-result v10

    sub-int/2addr v5, v10

    .line 631
    invoke-virtual {v9, v5, v1, v2}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->position(III)V

    .line 632
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 730
    :cond_f
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v4, p7

    move v5, v7

    :goto_9
    if-ge v5, v3, :cond_10

    .line 731
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 732
    check-cast v6, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 637
    invoke-virtual {v6, v4, v1, v2}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->position(III)V

    .line 638
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 639
    invoke-virtual {v6}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getMainAxisSizeWithSpacings()I

    move-result v6

    add-int/2addr v4, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 736
    :cond_10
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    :goto_a
    if-ge v7, v0, :cond_11

    move-object/from16 v3, p2

    .line 737
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 738
    check-cast v5, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 643
    invoke-virtual {v5, v4, v1, v2}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->position(III)V

    .line 644
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 645
    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getMainAxisSizeWithSpacings()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    .line 648
    :cond_11
    check-cast v8, Ljava/util/List;

    return-object v8
.end method

.method private static final calculateItemsOffsets$reverseAware(IZI)I
    .locals 0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr p2, p0

    add-int/lit8 p0, p2, -0x1

    :goto_0
    return p0
.end method

.method private static final createItemsAfterList(Ljava/util/List;Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;IILjava/util/List;FZLandroidx/compose/foundation/lazy/LazyListLayoutInfo;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyListMeasuredItem;",
            ">;",
            "Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;",
            "II",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;FZ",
            "Landroidx/compose/foundation/lazy/LazyListLayoutInfo;",
            ")",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyListMeasuredItem;",
            ">;"
        }
    .end annotation

    move/from16 v0, p2

    .line 448
    invoke-static/range {p0 .. p0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getIndex()I

    move-result v1

    add-int v1, v1, p3

    add-int/lit8 v2, v0, -0x1

    .line 450
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 452
    invoke-static/range {p0 .. p0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getIndex()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    if-gt v3, v1, :cond_1

    move-object v5, v4

    :goto_0
    if-nez v5, :cond_0

    .line 453
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/List;

    :cond_0
    move-object v11, v5

    const/4 v9, 0x2

    const/4 v10, 0x0

    const-wide/16 v7, 0x0

    move-object/from16 v5, p1

    move v6, v3

    .line 454
    invoke-static/range {v5 .. v10}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getAndMeasure-0kLqBqw$default(Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;IJILjava/lang/Object;)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v5

    invoke-interface {v11, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq v3, v1, :cond_2

    add-int/lit8 v3, v3, 0x1

    move-object v5, v11

    goto :goto_0

    :cond_1
    move-object v11, v4

    :cond_2
    const/4 v3, 0x0

    if-eqz p6, :cond_14

    if-eqz p7, :cond_14

    .line 460
    invoke-interface/range {p7 .. p7}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_14

    .line 464
    invoke-interface/range {p7 .. p7}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object v5

    .line 466
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    :goto_1
    const/4 v7, -0x1

    if-ge v7, v6, :cond_5

    .line 467
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/foundation/lazy/LazyListItemInfo;

    invoke-interface {v7}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getIndex()I

    move-result v7

    if-le v7, v1, :cond_4

    if-eqz v6, :cond_3

    add-int/lit8 v7, v6, -0x1

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/foundation/lazy/LazyListItemInfo;

    invoke-interface {v7}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getIndex()I

    move-result v7

    if-gt v7, v1, :cond_4

    .line 468
    :cond_3
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/lazy/LazyListItemInfo;

    goto :goto_2

    :cond_4
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_5
    move-object v5, v4

    .line 474
    :goto_2
    invoke-interface/range {p7 .. p7}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/foundation/lazy/LazyListItemInfo;

    if-eqz v5, :cond_b

    .line 476
    invoke-interface {v5}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getIndex()I

    move-result v5

    invoke-interface {v6}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getIndex()I

    move-result v7

    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-gt v5, v2, :cond_b

    :goto_3
    if-eqz v11, :cond_8

    .line 687
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v7

    move v8, v3

    :goto_4
    if-ge v8, v7, :cond_7

    .line 688
    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 685
    move-object v10, v9

    check-cast v10, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 478
    invoke-virtual {v10}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getIndex()I

    move-result v10

    if-ne v10, v5, :cond_6

    goto :goto_5

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_7
    move-object v9, v4

    :goto_5
    check-cast v9, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    goto :goto_6

    :cond_8
    move-object v9, v4

    :goto_6
    if-nez v9, :cond_a

    if-nez v11, :cond_9

    .line 479
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v7

    check-cast v11, Ljava/util/List;

    :cond_9
    const/16 v16, 0x2

    const/16 v17, 0x0

    const-wide/16 v14, 0x0

    move-object/from16 v12, p1

    move v13, v5

    .line 480
    invoke-static/range {v12 .. v17}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getAndMeasure-0kLqBqw$default(Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;IJILjava/lang/Object;)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v7

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    if-eq v5, v2, :cond_b

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 488
    :cond_b
    invoke-interface/range {p7 .. p7}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getViewportEndOffset()I

    move-result v2

    invoke-interface {v6}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getOffset()I

    move-result v5

    sub-int/2addr v2, v5

    .line 489
    invoke-interface {v6}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getSize()I

    move-result v5

    sub-int/2addr v2, v5

    int-to-float v2, v2

    sub-float v2, v2, p5

    const/4 v5, 0x0

    cmpl-float v5, v2, v5

    if-lez v5, :cond_14

    .line 491
    invoke-interface {v6}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getIndex()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    move v6, v3

    :goto_7
    if-ge v5, v0, :cond_14

    int-to-float v7, v6

    cmpg-float v7, v7, v2

    if-gez v7, :cond_14

    if-gt v5, v1, :cond_e

    .line 696
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v7

    move v8, v3

    :goto_8
    if-ge v8, v7, :cond_d

    move-object/from16 v9, p0

    .line 697
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 694
    move-object v12, v10

    check-cast v12, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 495
    invoke-virtual {v12}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getIndex()I

    move-result v12

    if-ne v12, v5, :cond_c

    goto :goto_9

    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_d
    move-object/from16 v9, p0

    move-object v10, v4

    .line 701
    :goto_9
    check-cast v10, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    goto :goto_c

    :cond_e
    move-object/from16 v9, p0

    if-eqz v11, :cond_11

    .line 705
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v7

    move v8, v3

    :goto_a
    if-ge v8, v7, :cond_10

    .line 706
    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 703
    move-object v12, v10

    check-cast v12, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 497
    invoke-virtual {v12}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getIndex()I

    move-result v12

    if-ne v12, v5, :cond_f

    goto :goto_b

    :cond_f
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_10
    move-object v10, v4

    .line 710
    :goto_b
    check-cast v10, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    goto :goto_c

    :cond_11
    move-object v10, v4

    :goto_c
    if-eqz v10, :cond_12

    add-int/lit8 v5, v5, 0x1

    .line 500
    invoke-virtual {v10}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getMainAxisSizeWithSpacings()I

    move-result v7

    :goto_d
    add-int/2addr v6, v7

    goto :goto_7

    :cond_12
    if-nez v11, :cond_13

    .line 502
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v7

    check-cast v11, Ljava/util/List;

    :cond_13
    const/16 v16, 0x2

    const/16 v17, 0x0

    const-wide/16 v14, 0x0

    move-object/from16 v12, p1

    move v13, v5

    .line 503
    invoke-static/range {v12 .. v17}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getAndMeasure-0kLqBqw$default(Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;IJILjava/lang/Object;)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v7

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    .line 505
    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getMainAxisSizeWithSpacings()I

    move-result v7

    goto :goto_d

    :cond_14
    if-eqz v11, :cond_15

    .line 514
    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getIndex()I

    move-result v0

    if-le v0, v1, :cond_15

    .line 515
    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getIndex()I

    move-result v1

    .line 712
    :cond_15
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v0

    :goto_e
    if-ge v3, v0, :cond_18

    move-object/from16 v2, p4

    .line 713
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 714
    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v6

    if-le v6, v1, :cond_17

    if-nez v11, :cond_16

    .line 520
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v4

    check-cast v11, Ljava/util/List;

    :cond_16
    const/4 v9, 0x2

    const/4 v10, 0x0

    const-wide/16 v7, 0x0

    move-object/from16 v5, p1

    .line 521
    invoke-static/range {v5 .. v10}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getAndMeasure-0kLqBqw$default(Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;IJILjava/lang/Object;)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_18
    if-nez v11, :cond_19

    .line 525
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v11

    :cond_19
    return-object v11
.end method

.method private static final createItemsBeforeList(ILandroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;ILjava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyListMeasuredItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    sub-int p2, p0, p2

    .line 538
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    add-int/lit8 p0, p0, -0x1

    const/4 v0, 0x0

    if-gt p2, p0, :cond_1

    :goto_0
    if-nez v0, :cond_0

    .line 541
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    :cond_0
    const/4 v5, 0x2

    const/4 v6, 0x0

    const-wide/16 v3, 0x0

    move-object v1, p1

    move v2, p0

    .line 542
    invoke-static/range {v1 .. v6}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getAndMeasure-0kLqBqw$default(Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;IJILjava/lang/Object;)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq p0, p2, :cond_1

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    .line 718
    :cond_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_5

    :goto_1
    add-int/lit8 v1, p0, -0x1

    .line 719
    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 720
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-ge v3, p2, :cond_3

    if-nez v0, :cond_2

    .line 547
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    check-cast v0, Ljava/util/List;

    :cond_2
    const/4 v6, 0x2

    const/4 v7, 0x0

    const-wide/16 v4, 0x0

    move-object v2, p1

    .line 548
    invoke-static/range {v2 .. v7}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getAndMeasure-0kLqBqw$default(Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;IJILjava/lang/Object;)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    if-gez v1, :cond_4

    goto :goto_2

    :cond_4
    move p0, v1

    goto :goto_1

    :cond_5
    :goto_2
    if-nez v0, :cond_6

    .line 552
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_6
    return-object v0
.end method

.method public static final measureLazyList-x0Ok8Vo(ILandroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;IIIIIIFJZLjava/util/List;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ZLandroidx/compose/ui/unit/Density;Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;ILjava/util/List;ZZLandroidx/compose/foundation/lazy/LazyListLayoutInfo;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/graphics/GraphicsContext;Lkotlin/jvm/functions/Function3;)Landroidx/compose/foundation/lazy/LazyListMeasureResult;
    .locals 39
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;",
            "IIIIIIFJZ",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "Z",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator<",
            "Landroidx/compose/foundation/lazy/LazyListMeasuredItem;",
            ">;I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;ZZ",
            "Landroidx/compose/foundation/lazy/LazyListLayoutInfo;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Landroidx/compose/runtime/MutableState<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/graphics/GraphicsContext;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
            "Lkotlin/Unit;",
            ">;+",
            "Landroidx/compose/ui/layout/MeasureResult;",
            ">;)",
            "Landroidx/compose/foundation/lazy/LazyListMeasureResult;"
        }
    .end annotation

    move/from16 v15, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move-wide/from16 v11, p9

    move/from16 v7, p21

    move-object/from16 v6, p26

    if-ltz v10, :cond_2c

    if-ltz p4, :cond_2b

    if-gtz v15, :cond_2

    .line 78
    invoke-static/range {p9 .. p10}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v0

    .line 79
    invoke-static/range {p9 .. p10}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v1

    .line 84
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v17, v2

    check-cast v17, Ljava/util/List;

    .line 85
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getKeyIndexMap()Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    move-result-object v18

    .line 86
    move-object/from16 v19, v8

    check-cast v19, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItemProvider;

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/4 v14, 0x0

    const/16 v22, 0x1

    move-object/from16 v13, p17

    move v15, v0

    move/from16 v16, v1

    move/from16 v20, p11

    move/from16 v21, p21

    move/from16 v23, p20

    move-object/from16 v26, p23

    move-object/from16 v27, p25

    .line 80
    invoke-virtual/range {v13 .. v27}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->onMeasured(IIILjava/util/List;Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItemProvider;ZZIZIILkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;)V

    if-nez v7, :cond_0

    .line 97
    invoke-virtual/range {p17 .. p17}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->getMinSizeToFitDisappearingItems-YbymL2g()J

    move-result-wide v2

    .line 98
    sget-object v4, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/unit/IntSize$Companion;->getZero-YbymL2g()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result v4

    if-nez v4, :cond_0

    .line 99
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    move-result v0

    invoke-static {v11, v12, v0}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(JI)I

    move-result v0

    .line 100
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    move-result v1

    invoke-static {v11, v12, v1}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(JI)I

    move-result v1

    .line 108
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$3;->INSTANCE:Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$3;

    invoke-interface {v6, v0, v1, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroidx/compose/ui/layout/MeasureResult;

    .line 110
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v12

    neg-int v13, v10

    add-int v14, v9, p4

    if-eqz p11, :cond_1

    .line 115
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_0

    :cond_1
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    :goto_0
    move-object/from16 v17, v0

    .line 121
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getChildConstraints-msEJaDk()J

    move-result-wide v10

    .line 103
    new-instance v21, Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    move-object/from16 v0, v21

    const/4 v15, 0x0

    const/16 v20, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v8, p23

    move-object/from16 v9, p16

    move/from16 v16, p15

    move/from16 v18, p4

    move/from16 v19, p5

    invoke-direct/range {v0 .. v20}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;-><init>(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;IZFLandroidx/compose/ui/layout/MeasureResult;FZLkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;JLjava/util/List;IIIZLandroidx/compose/foundation/gestures/Orientation;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v21

    :cond_2
    const/4 v13, 0x0

    move/from16 v0, p6

    if-lt v0, v15, :cond_3

    add-int/lit8 v0, v15, -0x1

    move v1, v13

    goto :goto_1

    :cond_3
    move/from16 v1, p7

    .line 652
    :goto_1
    invoke-static/range {p8 .. p8}, Ljava/lang/Math;->round(F)I

    move-result v2

    sub-int/2addr v1, v2

    if-nez v0, :cond_4

    if-gez v1, :cond_4

    add-int/2addr v2, v1

    move v14, v2

    move v1, v13

    goto :goto_2

    :cond_4
    move v14, v2

    .line 147
    :goto_2
    new-instance v5, Lkotlin/collections/ArrayDeque;

    invoke-direct {v5}, Lkotlin/collections/ArrayDeque;-><init>()V

    neg-int v4, v10

    if-gez p5, :cond_5

    move/from16 v2, p5

    goto :goto_3

    :cond_5
    move v2, v13

    :goto_3
    add-int/2addr v2, v4

    add-int/2addr v1, v2

    move v3, v1

    move v1, v13

    :goto_4
    if-gez v3, :cond_6

    if-lez v0, :cond_6

    add-int/lit8 v16, v0, -0x1

    const/16 v17, 0x2

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v31, v1

    move/from16 v1, v16

    move/from16 v32, v2

    move/from16 v33, v3

    move-wide/from16 v2, v19

    move/from16 v34, v4

    move/from16 v4, v17

    move-object v11, v5

    move-object/from16 v5, v18

    .line 171
    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getAndMeasure-0kLqBqw$default(Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;IJILjava/lang/Object;)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v0

    .line 172
    invoke-virtual {v11, v13, v0}, Lkotlin/collections/ArrayDeque;->add(ILjava/lang/Object;)V

    .line 173
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getCrossAxisSize()I

    move-result v1

    move/from16 v2, v31

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 174
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getMainAxisSizeWithSpacings()I

    move-result v0

    move/from16 v3, v33

    add-int/2addr v3, v0

    move-object v5, v11

    move/from16 v0, v16

    move/from16 v2, v32

    move/from16 v4, v34

    move-wide/from16 v11, p9

    goto :goto_4

    :cond_6
    move/from16 v32, v2

    move/from16 v34, v4

    move-object v11, v5

    move v2, v1

    move/from16 v12, v32

    if-ge v3, v12, :cond_7

    add-int/2addr v14, v3

    move v3, v12

    :cond_7
    sub-int/2addr v3, v12

    add-int v5, v9, p4

    .line 189
    invoke-static {v5, v13}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v4

    neg-int v1, v3

    move/from16 p6, v0

    move/from16 v16, p6

    move/from16 v17, v13

    .line 194
    :goto_5
    invoke-virtual {v11}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v0

    const/16 v32, 0x1

    if-ge v13, v0, :cond_9

    if-lt v1, v4, :cond_8

    .line 197
    invoke-virtual {v11, v13}, Lkotlin/collections/ArrayDeque;->remove(I)Ljava/lang/Object;

    move/from16 v17, v32

    goto :goto_5

    :cond_8
    add-int/lit8 v16, v16, 0x1

    .line 201
    invoke-virtual {v11, v13}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getMainAxisSizeWithSpacings()I

    move-result v0

    add-int/2addr v1, v0

    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_9
    move/from16 v13, p6

    move/from16 v33, v17

    move/from16 v38, v2

    move v2, v1

    move/from16 v1, v16

    move/from16 v16, v3

    move/from16 v3, v38

    :goto_6
    if-ge v1, v15, :cond_d

    if-lt v2, v4, :cond_a

    if-lez v2, :cond_a

    .line 212
    invoke-virtual {v11}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_a
    const/16 v17, 0x2

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 p6, v1

    move/from16 v35, v2

    move/from16 v36, v3

    move-wide/from16 v2, v19

    move/from16 v19, v4

    move/from16 v4, v17

    move/from16 v37, v5

    move-object/from16 v5, v18

    .line 214
    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getAndMeasure-0kLqBqw$default(Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;IJILjava/lang/Object;)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v0

    .line 215
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getMainAxisSizeWithSpacings()I

    move-result v1

    move/from16 v2, v35

    add-int/2addr v2, v1

    if-gt v2, v12, :cond_b

    add-int/lit8 v1, v15, -0x1

    move/from16 v5, p6

    if-eq v5, v1, :cond_c

    add-int/lit8 v1, v5, 0x1

    .line 220
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getMainAxisSizeWithSpacings()I

    move-result v0

    sub-int v16, v16, v0

    move v13, v1

    move/from16 v33, v32

    move/from16 v3, v36

    goto :goto_7

    :cond_b
    move/from16 v5, p6

    .line 223
    :cond_c
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getCrossAxisSize()I

    move-result v1

    move/from16 v3, v36

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 224
    invoke-virtual {v11, v0}, Lkotlin/collections/ArrayDeque;->add(Ljava/lang/Object;)Z

    move v3, v1

    :goto_7
    add-int/lit8 v1, v5, 0x1

    move/from16 v4, v19

    move/from16 v5, v37

    goto :goto_6

    :cond_d
    move/from16 v37, v5

    move v5, v1

    if-ge v2, v9, :cond_10

    sub-int v12, v9, v2

    sub-int v16, v16, v12

    add-int v17, v2, v12

    move v0, v13

    move/from16 v4, v16

    move v13, v3

    :goto_8
    if-ge v4, v10, :cond_e

    if-lez v0, :cond_e

    add-int/lit8 v16, v0, -0x1

    const/16 v18, 0x2

    const/16 v19, 0x0

    const-wide/16 v2, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v20, v4

    move/from16 v4, v18

    move v9, v5

    move-object/from16 v5, v19

    .line 241
    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getAndMeasure-0kLqBqw$default(Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;IJILjava/lang/Object;)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v0

    const/4 v5, 0x0

    .line 242
    invoke-virtual {v11, v5, v0}, Lkotlin/collections/ArrayDeque;->add(ILjava/lang/Object;)V

    .line 243
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getCrossAxisSize()I

    move-result v1

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 244
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getMainAxisSizeWithSpacings()I

    move-result v0

    add-int v4, v20, v0

    move v5, v9

    move/from16 v0, v16

    move/from16 v9, p2

    goto :goto_8

    :cond_e
    move/from16 v20, v4

    move v9, v5

    const/4 v5, 0x0

    add-int/2addr v12, v14

    if-gez v20, :cond_f

    add-int v12, v12, v20

    add-int v2, v17, v20

    move v1, v5

    move v3, v13

    move v13, v0

    move v0, v12

    move v12, v2

    goto :goto_9

    :cond_f
    move v3, v13

    move/from16 v1, v20

    move v13, v0

    move v0, v12

    move/from16 v12, v17

    goto :goto_9

    :cond_10
    move v9, v5

    const/4 v5, 0x0

    move v12, v2

    move v0, v14

    move/from16 v1, v16

    .line 653
    :goto_9
    invoke-static/range {p8 .. p8}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 259
    invoke-static {v2}, Lkotlin/math/MathKt;->getSign(I)I

    move-result v2

    invoke-static {v0}, Lkotlin/math/MathKt;->getSign(I)I

    move-result v4

    if-ne v2, v4, :cond_11

    .line 654
    invoke-static/range {p8 .. p8}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 260
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-lt v2, v4, :cond_11

    int-to-float v2, v0

    move v4, v2

    goto :goto_a

    :cond_11
    move/from16 v4, p8

    :goto_a
    sub-float v2, p8, v4

    const/16 v16, 0x0

    if-eqz v7, :cond_12

    if-le v0, v14, :cond_12

    cmpg-float v17, v2, v16

    if-gtz v17, :cond_12

    sub-int/2addr v0, v14

    int-to-float v0, v0

    add-float/2addr v0, v2

    move v14, v0

    goto :goto_b

    :cond_12
    move/from16 v14, v16

    :goto_b
    if-ltz v1, :cond_2a

    neg-int v2, v1

    .line 280
    invoke-virtual {v11}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    if-gtz v10, :cond_14

    if-gez p5, :cond_13

    goto :goto_c

    :cond_13
    move-object v5, v0

    move/from16 v35, v1

    move/from16 v17, v2

    move/from16 p7, v3

    move/from16 v3, p18

    move-object/from16 v2, p19

    goto :goto_e

    .line 285
    :cond_14
    :goto_c
    invoke-virtual {v11}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v5

    move-object/from16 p6, v0

    const/4 v0, 0x0

    :goto_d
    if-ge v0, v5, :cond_15

    .line 286
    invoke-virtual {v11, v0}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move/from16 v17, v2

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getMainAxisSizeWithSpacings()I

    move-result v2

    if-eqz v1, :cond_16

    if-gt v2, v1, :cond_16

    .line 288
    move-object/from16 v16, v11

    check-cast v16, Ljava/util/List;

    move/from16 p7, v3

    invoke-static/range {v16 .. v16}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v3

    if-eq v0, v3, :cond_17

    sub-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    .line 291
    invoke-virtual {v11, v0}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move/from16 v3, p7

    move-object/from16 p6, v2

    move/from16 v2, v17

    goto :goto_d

    :cond_15
    move/from16 v17, v2

    :cond_16
    move/from16 p7, v3

    :cond_17
    move-object/from16 v5, p6

    move/from16 v3, p18

    move-object/from16 v2, p19

    move/from16 v35, v1

    .line 299
    :goto_e
    invoke-static {v13, v8, v3, v2}, Landroidx/compose/foundation/lazy/LazyListMeasureKt;->createItemsBeforeList(ILandroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;ILjava/util/List;)Ljava/util/List;

    move-result-object v13

    .line 656
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    move/from16 v1, p7

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v0, :cond_18

    .line 657
    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .line 658
    check-cast v16, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move/from16 p6, v0

    .line 308
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getCrossAxisSize()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v2, v2, 0x1

    move/from16 v0, p6

    goto :goto_f

    .line 313
    :cond_18
    move-object/from16 v16, v11

    check-cast v16, Ljava/util/List;

    move-object/from16 v0, v16

    move/from16 v18, v1

    move-object/from16 v1, p1

    move/from16 v23, v17

    move/from16 v2, p0

    move/from16 v3, p18

    move/from16 p6, v4

    move-object/from16 v4, p19

    move/from16 p7, v14

    const/16 v31, 0x0

    move-object v14, v5

    move/from16 v5, p6

    move-object v10, v6

    move/from16 v6, p21

    move v10, v7

    move-object/from16 v7, p22

    .line 312
    invoke-static/range {v0 .. v7}, Landroidx/compose/foundation/lazy/LazyListMeasureKt;->createItemsAfterList(Ljava/util/List;Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;IILjava/util/List;FZLandroidx/compose/foundation/lazy/LazyListLayoutInfo;)Ljava/util/List;

    move-result-object v0

    .line 662
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    move/from16 v2, v18

    move/from16 v5, v31

    :goto_10
    if-ge v5, v1, :cond_19

    .line 663
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 664
    check-cast v3, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 325
    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getCrossAxisSize()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 328
    :cond_19
    invoke-virtual {v11}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 329
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 330
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1a

    move/from16 v6, v32

    goto :goto_11

    :cond_1a
    move/from16 v6, v31

    :goto_11
    move-wide/from16 v3, p9

    if-eqz p11, :cond_1b

    move v1, v2

    move-object v7, v11

    goto :goto_12

    :cond_1b
    move-object v7, v11

    move v1, v12

    .line 333
    :goto_12
    invoke-static {v3, v4, v1}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(JI)I

    move-result v1

    if-eqz p11, :cond_1c

    move v2, v12

    .line 335
    :cond_1c
    invoke-static {v3, v4, v2}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(JI)I

    move-result v2

    move-object/from16 v17, v13

    move-object/from16 v18, v0

    move/from16 v19, v1

    move/from16 v20, v2

    move/from16 v21, v12

    move/from16 v22, p2

    move/from16 v24, p11

    move-object/from16 v25, p13

    move-object/from16 v26, p14

    move/from16 v27, p15

    move-object/from16 v28, p16

    .line 337
    invoke-static/range {v16 .. v28}, Landroidx/compose/foundation/lazy/LazyListMeasureKt;->calculateItemsOffsets(Ljava/util/List;Ljava/util/List;Ljava/util/List;IIIIIZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ZLandroidx/compose/ui/unit/Density;)Ljava/util/List;

    move-result-object v11

    move/from16 v13, p6

    float-to-int v0, v13

    .line 358
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getKeyIndexMap()Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    move-result-object v21

    .line 359
    move-object/from16 v22, v8

    check-cast v22, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItemProvider;

    const/16 v25, 0x1

    move-object/from16 v16, p17

    move/from16 v17, v0

    move/from16 v18, v1

    move/from16 v19, v2

    move-object/from16 v20, v11

    move/from16 v23, p11

    move/from16 v24, p21

    move/from16 v26, p20

    move/from16 v27, v35

    move/from16 v28, v12

    move-object/from16 v29, p23

    move-object/from16 v30, p25

    .line 353
    invoke-virtual/range {v16 .. v30}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->onMeasured(IIILjava/util/List;Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItemProvider;ZZIZIILkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;)V

    if-nez v10, :cond_1f

    move/from16 p6, v13

    move-object/from16 v16, v14

    .line 371
    invoke-virtual/range {p17 .. p17}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->getMinSizeToFitDisappearingItems-YbymL2g()J

    move-result-wide v13

    .line 372
    sget-object v0, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    move-object/from16 p8, v7

    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntSize$Companion;->getZero-YbymL2g()J

    move-result-wide v7

    invoke-static {v13, v14, v7, v8}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_20

    if-eqz p11, :cond_1d

    move v0, v2

    goto :goto_13

    :cond_1d
    move v0, v1

    .line 375
    :goto_13
    invoke-static {v13, v14}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v3, v4, v1}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(JI)I

    move-result v1

    .line 377
    invoke-static {v13, v14}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v3, v4, v2}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(JI)I

    move-result v2

    if-eqz p11, :cond_1e

    move v3, v2

    goto :goto_14

    :cond_1e
    move v3, v1

    :goto_14
    if-eq v3, v0, :cond_20

    .line 668
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    move/from16 v5, v31

    :goto_15
    if-ge v5, v0, :cond_20

    .line 669
    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 670
    check-cast v4, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 381
    invoke-virtual {v4, v3}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->updateMainAxisLayoutSize(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    :cond_1f
    move-object/from16 p8, v7

    move/from16 p6, v13

    move-object/from16 v16, v14

    :cond_20
    move v7, v1

    move v8, v2

    .line 387
    move-object/from16 v0, p12

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_21

    move-object v0, v11

    move-object/from16 v1, p1

    move-object/from16 v2, p12

    move/from16 v3, p3

    move v4, v7

    move v5, v8

    .line 388
    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/lazy/LazyListHeadersKt;->findOrComposeLazyListHeader(Ljava/util/List;Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;Ljava/util/List;III)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v0

    goto :goto_16

    :cond_21
    const/4 v0, 0x0

    :goto_16
    if-lt v9, v15, :cond_23

    move/from16 v1, p2

    if-le v12, v1, :cond_22

    goto :goto_17

    :cond_22
    move/from16 v3, v31

    goto :goto_18

    :cond_23
    :goto_17
    move/from16 v3, v32

    .line 405
    :goto_18
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v4, Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$8;

    move-object/from16 v5, p24

    invoke-direct {v4, v11, v0, v10, v5}, Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$8;-><init>(Ljava/util/List;Landroidx/compose/foundation/lazy/LazyListMeasuredItem;ZLandroidx/compose/runtime/MutableState;)V

    move-object/from16 v5, p26

    invoke-interface {v5, v1, v2, v4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/compose/ui/layout/MeasureResult;

    if-eqz v6, :cond_24

    move-object v12, v11

    goto :goto_1a

    .line 674
    :cond_24
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 677
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v13, v31

    :goto_19
    if-ge v13, v2, :cond_28

    .line 678
    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 680
    move-object v6, v4

    check-cast v6, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 418
    invoke-virtual {v6}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getIndex()I

    move-result v7

    invoke-virtual/range {p8 .. p8}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getIndex()I

    move-result v8

    if-lt v7, v8, :cond_25

    invoke-virtual {v6}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getIndex()I

    move-result v7

    invoke-virtual/range {p8 .. p8}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getIndex()I

    move-result v8

    if-le v7, v8, :cond_26

    :cond_25
    if-ne v6, v0, :cond_27

    .line 680
    :cond_26
    move-object v6, v1

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_27
    add-int/lit8 v13, v13, 0x1

    goto :goto_19

    .line 683
    :cond_28
    check-cast v1, Ljava/util/List;

    move-object v12, v1

    :goto_1a
    if-eqz p11, :cond_29

    .line 425
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_1b

    :cond_29
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    :goto_1b
    move-object/from16 v17, v0

    .line 431
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getChildConstraints-msEJaDk()J

    move-result-wide v10

    .line 400
    new-instance v21, Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    move-object/from16 v0, v21

    const/16 v20, 0x0

    move-object/from16 v1, v16

    move/from16 v2, v35

    move/from16 v4, p6

    move/from16 v6, p7

    move/from16 v7, v33

    move-object/from16 v8, p23

    move-object/from16 v9, p16

    move/from16 v13, v34

    move/from16 v14, v37

    move/from16 v15, p0

    move/from16 v16, p15

    move/from16 v18, p4

    move/from16 v19, p5

    invoke-direct/range {v0 .. v20}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;-><init>(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;IZFLandroidx/compose/ui/layout/MeasureResult;FZLkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;JLjava/util/List;IIIZLandroidx/compose/foundation/gestures/Orientation;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v21

    .line 278
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "negative currentFirstItemScrollOffset"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid afterContentPadding"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid beforeContentPadding"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
