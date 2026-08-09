.class public final Landroidx/compose/material3/carousel/CarouselKt;
.super Ljava/lang/Object;
.source "Carousel.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCarousel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Carousel.kt\nandroidx/compose/material3/carousel/CarouselKt\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,693:1\n148#2:694\n148#2:695\n148#2:703\n148#2:704\n148#2:712\n77#3:696\n77#3:705\n77#3:719\n77#3:720\n77#3:721\n77#3:722\n77#3:724\n77#3:725\n1223#4,6:697\n1223#4,6:706\n1223#4,6:713\n1#5:723\n*S KotlinDebug\n*F\n+ 1 Carousel.kt\nandroidx/compose/material3/carousel/CarouselKt\n*L\n105#1:694\n110#1:695\n175#1:703\n177#1:704\n238#1:712\n113#1:696\n180#1:705\n301#1:719\n302#1:720\n347#1:721\n350#1:722\n359#1:724\n362#1:725\n117#1:697,6\n184#1:706,6\n246#1:713,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000z\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u00bb\u0001\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u000526\u0010\u0006\u001a2\u0012\u0013\u0012\u00110\u0008\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u000b\u0012\u0013\u0012\u00110\u0008\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u000c\u0012\u0004\u0012\u00020\r0\u00072\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u001621\u0010\u0017\u001a-\u0012\u0004\u0012\u00020\u0018\u0012\u0013\u0012\u00110\u0011\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u0019\u0012\u0004\u0012\u00020\u00010\u0007\u00a2\u0006\u0002\u0008\u001a\u00a2\u0006\u0002\u0008\u001bH\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001c\u0010\u001d\u001a\u0091\u0001\u0010\u001e\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u001f\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00162\u0008\u0008\u0002\u0010 \u001a\u00020\u00142\u0008\u0008\u0002\u0010!\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f21\u0010\u0017\u001a-\u0012\u0004\u0012\u00020\u0018\u0012\u0013\u0012\u00110\u0011\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u0019\u0012\u0004\u0012\u00020\u00010\u0007\u00a2\u0006\u0002\u0008\u001a\u00a2\u0006\u0002\u0008\u001bH\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\"\u0010#\u001a}\u0010$\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010%\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f21\u0010\u0017\u001a-\u0012\u0004\u0012\u00020\u0018\u0012\u0013\u0012\u00110\u0011\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u0019\u0012\u0004\u0012\u00020\u00010\u0007\u00a2\u0006\u0002\u0008\u001a\u00a2\u0006\u0002\u0008\u001bH\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008&\u0010\'\u001a\u0018\u0010(\u001a\u00020\u00082\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010)\u001a\u00020*H\u0000\u001a\u0018\u0010+\u001a\u00020\u00082\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010)\u001a\u00020*H\u0001\u001a \u0010,\u001a\u00020\u00082\u0006\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u00020.2\u0006\u00100\u001a\u00020\u0008H\u0002\u001a\u0019\u00101\u001a\u00020\u0008*\u00020\u000f2\u0006\u0010\u0004\u001a\u00020\u0005H\u0003\u00a2\u0006\u0002\u00102\u001a\u0019\u00103\u001a\u00020\u0008*\u00020\u000f2\u0006\u0010\u0004\u001a\u00020\u0005H\u0003\u00a2\u0006\u0002\u00102\u001a:\u00104\u001a\u00020\u0013*\u00020\u00132\u0006\u00105\u001a\u00020\u00112\u0006\u0010\u0002\u001a\u00020\u00032\u000c\u0010)\u001a\u0008\u0012\u0004\u0012\u00020*062\u0006\u00107\u001a\u0002082\u0006\u00109\u001a\u00020:H\u0000\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006;"
    }
    d2 = {
        "Carousel",
        "",
        "state",
        "Landroidx/compose/material3/carousel/CarouselState;",
        "orientation",
        "Landroidx/compose/foundation/gestures/Orientation;",
        "keylineList",
        "Lkotlin/Function2;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "availableSpace",
        "itemSpacing",
        "Landroidx/compose/material3/carousel/KeylineList;",
        "contentPadding",
        "Landroidx/compose/foundation/layout/PaddingValues;",
        "maxNonFocalVisibleItemCount",
        "",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "Landroidx/compose/ui/unit/Dp;",
        "flingBehavior",
        "Landroidx/compose/foundation/gestures/TargetedFlingBehavior;",
        "content",
        "Landroidx/compose/material3/carousel/CarouselItemScope;",
        "itemIndex",
        "Landroidx/compose/runtime/Composable;",
        "Lkotlin/ExtensionFunctionType;",
        "Carousel-V-95POc",
        "(Landroidx/compose/material3/carousel/CarouselState;Landroidx/compose/foundation/gestures/Orientation;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/PaddingValues;ILandroidx/compose/ui/Modifier;FLandroidx/compose/foundation/gestures/TargetedFlingBehavior;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;II)V",
        "HorizontalMultiBrowseCarousel",
        "preferredItemWidth",
        "minSmallItemWidth",
        "maxSmallItemWidth",
        "HorizontalMultiBrowseCarousel-zCIJ0Nk",
        "(Landroidx/compose/material3/carousel/CarouselState;FLandroidx/compose/ui/Modifier;FLandroidx/compose/foundation/gestures/TargetedFlingBehavior;FFLandroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;II)V",
        "HorizontalUncontainedCarousel",
        "itemWidth",
        "HorizontalUncontainedCarousel-9QcgTRs",
        "(Landroidx/compose/material3/carousel/CarouselState;FLandroidx/compose/ui/Modifier;FLandroidx/compose/foundation/gestures/TargetedFlingBehavior;Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;II)V",
        "calculateCurrentScrollOffset",
        "strategy",
        "Landroidx/compose/material3/carousel/Strategy;",
        "calculateMaxScrollOffset",
        "getProgress",
        "before",
        "Landroidx/compose/material3/carousel/Keyline;",
        "after",
        "unadjustedOffset",
        "calculateAfterContentPadding",
        "(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/runtime/Composer;I)F",
        "calculateBeforeContentPadding",
        "carouselItem",
        "index",
        "Lkotlin/Function0;",
        "carouselItemInfo",
        "Landroidx/compose/material3/carousel/CarouselItemInfoImpl;",
        "clipShape",
        "Landroidx/compose/ui/graphics/Shape;",
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
.method public static final Carousel-V-95POc(Landroidx/compose/material3/carousel/CarouselState;Landroidx/compose/foundation/gestures/Orientation;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/PaddingValues;ILandroidx/compose/ui/Modifier;FLandroidx/compose/foundation/gestures/TargetedFlingBehavior;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;II)V
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/carousel/CarouselState;",
            "Landroidx/compose/foundation/gestures/Orientation;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Ljava/lang/Float;",
            "Landroidx/compose/material3/carousel/KeylineList;",
            ">;",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "I",
            "Landroidx/compose/ui/Modifier;",
            "F",
            "Landroidx/compose/foundation/gestures/TargetedFlingBehavior;",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Landroidx/compose/material3/carousel/CarouselItemScope;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p8

    move/from16 v11, p10

    move/from16 v12, p11

    const v13, -0x7956d3c3

    move-object/from16 v0, p9

    .line 242
    invoke-interface {v0, v13}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v15

    const-string v0, "C(Carousel)P(8,7,4,1,5,6,3:c#ui.unit.Dp,2)239@11411L41,242@11572L42,243@11660L41,245@11729L118:Carousel.kt#dcf9yb"

    invoke-static {v15, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v0, v12, 0x1

    if-eqz v0, :cond_0

    or-int/lit8 v0, v11, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v0, v11, 0x6

    if-nez v0, :cond_2

    invoke-interface {v15, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v11

    goto :goto_1

    :cond_2
    move v0, v11

    :goto_1
    and-int/lit8 v1, v12, 0x2

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v1, v11, 0x30

    if-nez v1, :cond_5

    invoke-interface {v15, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x20

    goto :goto_2

    :cond_4
    const/16 v1, 0x10

    :goto_2
    or-int/2addr v0, v1

    :cond_5
    :goto_3
    and-int/lit8 v1, v12, 0x4

    if-eqz v1, :cond_6

    or-int/lit16 v0, v0, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v1, v11, 0x180

    if-nez v1, :cond_8

    invoke-interface {v15, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0x100

    goto :goto_4

    :cond_7
    const/16 v1, 0x80

    :goto_4
    or-int/2addr v0, v1

    :cond_8
    :goto_5
    and-int/lit8 v1, v12, 0x8

    if-eqz v1, :cond_9

    or-int/lit16 v0, v0, 0xc00

    goto :goto_7

    :cond_9
    and-int/lit16 v1, v11, 0xc00

    if-nez v1, :cond_b

    invoke-interface {v15, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v1, 0x800

    goto :goto_6

    :cond_a
    const/16 v1, 0x400

    :goto_6
    or-int/2addr v0, v1

    :cond_b
    :goto_7
    and-int/lit8 v1, v12, 0x10

    if-eqz v1, :cond_c

    or-int/lit16 v0, v0, 0x6000

    move/from16 v5, p4

    goto :goto_9

    :cond_c
    and-int/lit16 v1, v11, 0x6000

    move/from16 v5, p4

    if-nez v1, :cond_e

    invoke-interface {v15, v5}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v1

    if-eqz v1, :cond_d

    const/16 v1, 0x4000

    goto :goto_8

    :cond_d
    const/16 v1, 0x2000

    :goto_8
    or-int/2addr v0, v1

    :cond_e
    :goto_9
    and-int/lit8 v1, v12, 0x20

    const/high16 v2, 0x30000

    if-eqz v1, :cond_f

    or-int/2addr v0, v2

    goto :goto_b

    :cond_f
    and-int/2addr v2, v11

    if-nez v2, :cond_11

    move-object/from16 v2, p5

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    const/high16 v3, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v3, 0x10000

    :goto_a
    or-int/2addr v0, v3

    goto :goto_c

    :cond_11
    :goto_b
    move-object/from16 v2, p5

    :goto_c
    and-int/lit8 v3, v12, 0x40

    const/high16 v4, 0x180000

    if-eqz v3, :cond_12

    or-int/2addr v0, v4

    goto :goto_e

    :cond_12
    and-int/2addr v4, v11

    if-nez v4, :cond_14

    move/from16 v4, p6

    invoke-interface {v15, v4}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v16

    if-eqz v16, :cond_13

    const/high16 v16, 0x100000

    goto :goto_d

    :cond_13
    const/high16 v16, 0x80000

    :goto_d
    or-int v0, v0, v16

    goto :goto_f

    :cond_14
    :goto_e
    move/from16 v4, p6

    :goto_f
    const/high16 v16, 0xc00000

    and-int v16, v11, v16

    if-nez v16, :cond_17

    and-int/lit16 v14, v12, 0x80

    if-nez v14, :cond_15

    move-object/from16 v14, p7

    invoke-interface {v15, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_16

    const/high16 v16, 0x800000

    goto :goto_10

    :cond_15
    move-object/from16 v14, p7

    :cond_16
    const/high16 v16, 0x400000

    :goto_10
    or-int v0, v0, v16

    goto :goto_11

    :cond_17
    move-object/from16 v14, p7

    :goto_11
    and-int/lit16 v13, v12, 0x100

    const/high16 v17, 0x6000000

    if-eqz v13, :cond_18

    or-int v0, v0, v17

    goto :goto_13

    :cond_18
    and-int v13, v11, v17

    if-nez v13, :cond_1a

    invoke-interface {v15, v10}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_19

    const/high16 v13, 0x4000000

    goto :goto_12

    :cond_19
    const/high16 v13, 0x2000000

    :goto_12
    or-int/2addr v0, v13

    :cond_1a
    :goto_13
    move v13, v0

    const v0, 0x2492493

    and-int/2addr v0, v13

    const v2, 0x2492492

    if-ne v0, v2, :cond_1c

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_14

    .line 339
    :cond_1b
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v7, p5

    move v8, v4

    move-object v2, v15

    goto/16 :goto_1b

    .line 242
    :cond_1c
    :goto_14
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, v11, 0x1

    const v17, -0x1c00001

    const/4 v2, 0x0

    if-eqz v0, :cond_1f

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_15

    .line 240
    :cond_1d
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit16 v0, v12, 0x80

    if-eqz v0, :cond_1e

    and-int v13, v13, v17

    :cond_1e
    move-object/from16 v0, p5

    move/from16 v20, v2

    move-object v1, v14

    goto :goto_19

    :cond_1f
    :goto_15
    if-eqz v1, :cond_20

    .line 237
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    move-object/from16 v18, v0

    goto :goto_16

    :cond_20
    move-object/from16 v18, p5

    :goto_16
    if-eqz v3, :cond_21

    int-to-float v0, v2

    .line 712
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    move/from16 v19, v0

    goto :goto_17

    :cond_21
    move/from16 v19, v4

    :goto_17
    and-int/lit16 v0, v12, 0x80

    if-eqz v0, :cond_22

    .line 240
    sget-object v0, Landroidx/compose/material3/carousel/CarouselDefaults;->INSTANCE:Landroidx/compose/material3/carousel/CarouselDefaults;

    and-int/lit8 v1, v13, 0xe

    or-int/lit16 v4, v1, 0x180

    const/4 v14, 0x2

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move/from16 v20, v2

    move-object v2, v3

    move-object v3, v15

    move v5, v14

    invoke-virtual/range {v0 .. v5}, Landroidx/compose/material3/carousel/CarouselDefaults;->singleAdvanceFlingBehavior(Landroidx/compose/material3/carousel/CarouselState;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/gestures/TargetedFlingBehavior;

    move-result-object v0

    and-int v13, v13, v17

    move-object v1, v0

    goto :goto_18

    :cond_22
    move/from16 v20, v2

    move-object v1, v14

    :goto_18
    move-object/from16 v0, v18

    move/from16 v4, v19

    :goto_19
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_23

    const/4 v2, -0x1

    const-string/jumbo v3, "androidx.compose.material3.carousel.Carousel (Carousel.kt:241)"

    const v5, -0x7956d3c3

    .line 242
    invoke-static {v5, v13, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_23
    shr-int/lit8 v2, v13, 0x9

    and-int/lit8 v2, v2, 0xe

    and-int/lit8 v3, v13, 0x70

    or-int/2addr v2, v3

    .line 243
    invoke-static {v9, v7, v15, v2}, Landroidx/compose/material3/carousel/CarouselKt;->calculateBeforeContentPadding(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/runtime/Composer;I)F

    move-result v3

    .line 244
    invoke-static {v9, v7, v15, v2}, Landroidx/compose/material3/carousel/CarouselKt;->calculateAfterContentPadding(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/runtime/Composer;I)F

    move-result v2

    const v5, 0x78c21ac1

    const-string v14, "CC(remember):Carousel.kt#9igjgp"

    .line 246
    invoke-static {v15, v5, v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit16 v5, v13, 0x380

    const/16 v14, 0x100

    if-ne v5, v14, :cond_24

    const/16 v20, 0x1

    .line 713
    :cond_24
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v20, :cond_25

    .line 714
    sget-object v14, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v14}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v14

    if-ne v5, v14, :cond_26

    .line 247
    :cond_25
    new-instance v5, Landroidx/compose/material3/carousel/CarouselPageSize;

    invoke-direct {v5, v8, v3, v2}, Landroidx/compose/material3/carousel/CarouselPageSize;-><init>(Lkotlin/jvm/functions/Function2;FF)V

    .line 716
    invoke-interface {v15, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 246
    :cond_26
    check-cast v5, Landroidx/compose/material3/carousel/CarouselPageSize;

    invoke-static {v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 250
    invoke-static {v5}, Landroidx/compose/material3/carousel/KeylineSnapPositionKt;->KeylineSnapPosition(Landroidx/compose/material3/carousel/CarouselPageSize;)Landroidx/compose/foundation/gestures/snapping/SnapPosition;

    move-result-object v26

    .line 252
    sget-object v2, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    const/16 v3, 0x36

    if-ne v7, v2, :cond_27

    const v2, -0x607aafa4

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v2, "266@12589L1014,252@11960L1643"

    invoke-static {v15, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 254
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/carousel/CarouselState;->getPagerState$material3_release()Landroidx/compose/foundation/pager/PagerState;

    move-result-object v14

    const/4 v2, 0x1

    .line 258
    invoke-interface/range {p3 .. p3}, Landroidx/compose/foundation/layout/PaddingValues;->calculateTopPadding-D9Ej5fM()F

    move-result v17

    .line 259
    invoke-interface/range {p3 .. p3}, Landroidx/compose/foundation/layout/PaddingValues;->calculateBottomPadding-D9Ej5fM()F

    move-result v19

    const/16 v20, 0x5

    const/16 v21, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    .line 257
    invoke-static/range {v16 .. v21}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-a9UjIt4$default(FFFFILjava/lang/Object;)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v16

    .line 261
    move-object/from16 v17, v5

    check-cast v17, Landroidx/compose/foundation/pager/PageSize;

    .line 267
    new-instance v2, Landroidx/compose/material3/carousel/CarouselKt$Carousel$1;

    invoke-direct {v2, v6, v5, v10}, Landroidx/compose/material3/carousel/CarouselKt$Carousel$1;-><init>(Landroidx/compose/material3/carousel/CarouselState;Landroidx/compose/material3/carousel/CarouselPageSize;Lkotlin/jvm/functions/Function4;)V

    const v5, 0x28f47c20

    const/4 v8, 0x1

    invoke-static {v5, v8, v2, v15, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v2

    move-object/from16 v27, v2

    check-cast v27, Lkotlin/jvm/functions/Function4;

    shr-int/lit8 v2, v13, 0xc

    and-int/lit8 v2, v2, 0x70

    const v3, 0xe000

    and-int/2addr v3, v13

    or-int/2addr v2, v3

    shr-int/lit8 v3, v13, 0x3

    const/high16 v5, 0x70000

    and-int/2addr v3, v5

    or-int/2addr v2, v3

    const/high16 v3, 0x1c00000

    and-int/2addr v3, v13

    or-int v29, v2, v3

    const/16 v30, 0xc00

    const/16 v31, 0xf40

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object v2, v15

    move-object v15, v0

    move/from16 v18, p4

    move/from16 v19, v4

    move-object/from16 v21, v1

    move-object/from16 v28, v2

    .line 253
    invoke-static/range {v14 .. v31}, Landroidx/compose/foundation/pager/PagerKt;->HorizontalPager-oI3XNZo(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/pager/PageSize;IFLandroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/TargetedFlingBehavior;ZZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/foundation/gestures/snapping/SnapPosition;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;III)V

    .line 252
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto/16 :goto_1a

    :cond_27
    move-object v2, v15

    .line 295
    sget-object v8, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v7, v8, :cond_28

    const v8, -0x6060d698

    invoke-interface {v2, v8}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v8, "300@13962L7,301@14054L7,309@14347L1014,295@13666L1695"

    invoke-static {v2, v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 297
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/carousel/CarouselState;->getPagerState$material3_release()Landroidx/compose/foundation/pager/PagerState;

    move-result-object v14

    .line 301
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v8

    check-cast v8, Landroidx/compose/runtime/CompositionLocal;

    const v15, 0x789c5f52

    const-string v3, "CC:CompositionLocal.kt#9igjgp"

    .line 719
    invoke-static {v2, v15, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v2, v8}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    check-cast v3, Landroidx/compose/ui/unit/LayoutDirection;

    .line 301
    invoke-static {v9, v3}, Landroidx/compose/foundation/layout/PaddingKt;->calculateStartPadding(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v15

    .line 302
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/CompositionLocal;

    const v8, 0x789c5f52

    const-string v7, "CC:CompositionLocal.kt#9igjgp"

    .line 720
    invoke-static {v2, v8, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v2, v3}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    check-cast v3, Landroidx/compose/ui/unit/LayoutDirection;

    .line 302
    invoke-static {v9, v3}, Landroidx/compose/foundation/layout/PaddingKt;->calculateEndPadding(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v17

    const/16 v19, 0xa

    const/16 v20, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    .line 300
    invoke-static/range {v15 .. v20}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-a9UjIt4$default(FFFFILjava/lang/Object;)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v16

    .line 304
    move-object/from16 v17, v5

    check-cast v17, Landroidx/compose/foundation/pager/PageSize;

    .line 310
    new-instance v3, Landroidx/compose/material3/carousel/CarouselKt$Carousel$2;

    invoke-direct {v3, v6, v5, v10}, Landroidx/compose/material3/carousel/CarouselKt$Carousel$2;-><init>(Landroidx/compose/material3/carousel/CarouselState;Landroidx/compose/material3/carousel/CarouselPageSize;Lkotlin/jvm/functions/Function4;)V

    const v5, -0x30b72357

    const/16 v7, 0x36

    const/4 v8, 0x1

    invoke-static {v5, v8, v3, v2, v7}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v3

    move-object/from16 v27, v3

    check-cast v27, Lkotlin/jvm/functions/Function4;

    shr-int/lit8 v3, v13, 0xc

    and-int/lit8 v3, v3, 0x70

    const v5, 0xe000

    and-int/2addr v5, v13

    or-int/2addr v3, v5

    shr-int/lit8 v5, v13, 0x3

    const/high16 v7, 0x70000

    and-int/2addr v5, v7

    or-int/2addr v3, v5

    const/high16 v5, 0x1c00000

    and-int/2addr v5, v13

    or-int v29, v3, v5

    const/16 v30, 0xc00

    const/16 v31, 0xf40

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object v15, v0

    move/from16 v18, p4

    move/from16 v19, v4

    move-object/from16 v21, v1

    move-object/from16 v28, v2

    .line 296
    invoke-static/range {v14 .. v31}, Landroidx/compose/foundation/pager/PagerKt;->VerticalPager-oI3XNZo(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/pager/PageSize;IFLandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/gestures/TargetedFlingBehavior;ZZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/foundation/gestures/snapping/SnapPosition;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;III)V

    .line 295
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_1a

    :cond_28
    const v3, -0x6047bfa9

    .line 338
    invoke-interface {v2, v3}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    :goto_1a
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_29
    move-object v7, v0

    move-object v14, v1

    move v8, v4

    .line 339
    :goto_1b
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v13

    if-eqz v13, :cond_2a

    new-instance v15, Landroidx/compose/material3/carousel/CarouselKt$Carousel$3;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v7

    move v7, v8

    move-object v8, v14

    move-object/from16 v9, p8

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Landroidx/compose/material3/carousel/CarouselKt$Carousel$3;-><init>(Landroidx/compose/material3/carousel/CarouselState;Landroidx/compose/foundation/gestures/Orientation;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/PaddingValues;ILandroidx/compose/ui/Modifier;FLandroidx/compose/foundation/gestures/TargetedFlingBehavior;Lkotlin/jvm/functions/Function4;II)V

    check-cast v15, Lkotlin/jvm/functions/Function2;

    invoke-interface {v13, v15}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_2a
    return-void
.end method

.method public static final HorizontalMultiBrowseCarousel-zCIJ0Nk(Landroidx/compose/material3/carousel/CarouselState;FLandroidx/compose/ui/Modifier;FLandroidx/compose/foundation/gestures/TargetedFlingBehavior;FFLandroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;II)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/carousel/CarouselState;",
            "F",
            "Landroidx/compose/ui/Modifier;",
            "F",
            "Landroidx/compose/foundation/gestures/TargetedFlingBehavior;",
            "FF",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Landroidx/compose/material3/carousel/CarouselItemScope;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    move-object/from16 v12, p0

    move/from16 v13, p10

    move/from16 v14, p11

    const v6, -0x6cd21371

    move-object/from16 v0, p9

    .line 112
    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v15

    const-string v0, "C(HorizontalMultiBrowseCarousel)P(8,7:c#ui.unit.Dp,6,3:c#ui.unit.Dp,2,5:c#ui.unit.Dp,4:c#ui.unit.Dp,1)106@5374L41,112@5703L7,116@5816L554,113@5715L1048:Carousel.kt#dcf9yb"

    invoke-static {v15, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v0, v14, 0x1

    if-eqz v0, :cond_0

    or-int/lit8 v0, v13, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v0, v13, 0x6

    if-nez v0, :cond_2

    invoke-interface {v15, v12}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v13

    goto :goto_1

    :cond_2
    move v0, v13

    :goto_1
    and-int/lit8 v1, v14, 0x2

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x30

    move/from16 v11, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v1, v13, 0x30

    move/from16 v11, p1

    if-nez v1, :cond_5

    invoke-interface {v15, v11}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x20

    goto :goto_2

    :cond_4
    const/16 v1, 0x10

    :goto_2
    or-int/2addr v0, v1

    :cond_5
    :goto_3
    and-int/lit8 v1, v14, 0x4

    if-eqz v1, :cond_6

    or-int/lit16 v0, v0, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v2, v13, 0x180

    if-nez v2, :cond_8

    move-object/from16 v2, p2

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/16 v3, 0x100

    goto :goto_4

    :cond_7
    const/16 v3, 0x80

    :goto_4
    or-int/2addr v0, v3

    goto :goto_6

    :cond_8
    :goto_5
    move-object/from16 v2, p2

    :goto_6
    and-int/lit8 v3, v14, 0x8

    if-eqz v3, :cond_9

    or-int/lit16 v0, v0, 0xc00

    goto :goto_8

    :cond_9
    and-int/lit16 v4, v13, 0xc00

    if-nez v4, :cond_b

    move/from16 v4, p3

    invoke-interface {v15, v4}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v5

    if-eqz v5, :cond_a

    const/16 v5, 0x800

    goto :goto_7

    :cond_a
    const/16 v5, 0x400

    :goto_7
    or-int/2addr v0, v5

    goto :goto_9

    :cond_b
    :goto_8
    move/from16 v4, p3

    :goto_9
    and-int/lit16 v5, v13, 0x6000

    if-nez v5, :cond_e

    and-int/lit8 v5, v14, 0x10

    if-nez v5, :cond_c

    move-object/from16 v5, p4

    invoke-interface {v15, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    const/16 v8, 0x4000

    goto :goto_a

    :cond_c
    move-object/from16 v5, p4

    :cond_d
    const/16 v8, 0x2000

    :goto_a
    or-int/2addr v0, v8

    goto :goto_b

    :cond_e
    move-object/from16 v5, p4

    :goto_b
    and-int/lit8 v8, v14, 0x20

    const/high16 v10, 0x30000

    if-eqz v8, :cond_f

    or-int/2addr v0, v10

    goto :goto_d

    :cond_f
    and-int/2addr v10, v13

    if-nez v10, :cond_11

    move/from16 v10, p5

    invoke-interface {v15, v10}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v16

    if-eqz v16, :cond_10

    const/high16 v16, 0x20000

    goto :goto_c

    :cond_10
    const/high16 v16, 0x10000

    :goto_c
    or-int v0, v0, v16

    goto :goto_e

    :cond_11
    :goto_d
    move/from16 v10, p5

    :goto_e
    and-int/lit8 v16, v14, 0x40

    const/high16 v17, 0x180000

    if-eqz v16, :cond_12

    or-int v0, v0, v17

    move/from16 v9, p6

    goto :goto_10

    :cond_12
    and-int v17, v13, v17

    move/from16 v9, p6

    if-nez v17, :cond_14

    invoke-interface {v15, v9}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v18

    if-eqz v18, :cond_13

    const/high16 v18, 0x100000

    goto :goto_f

    :cond_13
    const/high16 v18, 0x80000

    :goto_f
    or-int v0, v0, v18

    :cond_14
    :goto_10
    and-int/lit16 v7, v14, 0x80

    const/high16 v19, 0xc00000

    if-eqz v7, :cond_15

    or-int v0, v0, v19

    move-object/from16 v6, p7

    goto :goto_12

    :cond_15
    and-int v19, v13, v19

    move-object/from16 v6, p7

    if-nez v19, :cond_17

    invoke-interface {v15, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_16

    const/high16 v20, 0x800000

    goto :goto_11

    :cond_16
    const/high16 v20, 0x400000

    :goto_11
    or-int v0, v0, v20

    :cond_17
    :goto_12
    and-int/lit16 v2, v14, 0x100

    const/high16 v20, 0x6000000

    if-eqz v2, :cond_18

    or-int v0, v0, v20

    goto :goto_14

    :cond_18
    and-int v2, v13, v20

    if-nez v2, :cond_1a

    move-object/from16 v2, p8

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_19

    const/high16 v20, 0x4000000

    goto :goto_13

    :cond_19
    const/high16 v20, 0x2000000

    :goto_13
    or-int v0, v0, v20

    goto :goto_15

    :cond_1a
    :goto_14
    move-object/from16 v2, p8

    :goto_15
    move/from16 v20, v0

    const v0, 0x2492493

    and-int v0, v20, v0

    const v2, 0x2492492

    if-ne v0, v2, :cond_1c

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_16

    .line 139
    :cond_1b
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v3, p2

    move-object v8, v6

    move v7, v9

    move v6, v10

    goto/16 :goto_1f

    .line 112
    :cond_1c
    :goto_16
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, v13, 0x1

    const v21, -0xe001

    const/4 v2, 0x0

    if-eqz v0, :cond_20

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_18

    .line 110
    :cond_1d
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v14, 0x10

    if-eqz v0, :cond_1e

    and-int v20, v20, v21

    :cond_1e
    move-object/from16 v22, p2

    move v0, v2

    move/from16 v23, v4

    :cond_1f
    move-object/from16 v16, v5

    move-object/from16 v24, v6

    :goto_17
    move/from16 v21, v9

    move/from16 v1, v20

    move/from16 v20, v10

    goto :goto_1b

    :cond_20
    :goto_18
    if-eqz v1, :cond_21

    .line 104
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    move-object/from16 v22, v0

    goto :goto_19

    :cond_21
    move-object/from16 v22, p2

    :goto_19
    if-eqz v3, :cond_22

    int-to-float v0, v2

    .line 694
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    move/from16 v23, v0

    goto :goto_1a

    :cond_22
    move/from16 v23, v4

    :goto_1a
    and-int/lit8 v0, v14, 0x10

    if-eqz v0, :cond_23

    .line 107
    sget-object v0, Landroidx/compose/material3/carousel/CarouselDefaults;->INSTANCE:Landroidx/compose/material3/carousel/CarouselDefaults;

    and-int/lit8 v1, v20, 0xe

    or-int/lit16 v4, v1, 0x180

    const/4 v5, 0x2

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object v2, v3

    move-object v3, v15

    invoke-virtual/range {v0 .. v5}, Landroidx/compose/material3/carousel/CarouselDefaults;->singleAdvanceFlingBehavior(Landroidx/compose/material3/carousel/CarouselState;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/gestures/TargetedFlingBehavior;

    move-result-object v0

    and-int v20, v20, v21

    move-object v5, v0

    :cond_23
    if-eqz v8, :cond_24

    .line 108
    sget-object v0, Landroidx/compose/material3/carousel/CarouselDefaults;->INSTANCE:Landroidx/compose/material3/carousel/CarouselDefaults;

    invoke-virtual {v0}, Landroidx/compose/material3/carousel/CarouselDefaults;->getMinSmallItemSize-D9Ej5fM$material3_release()F

    move-result v0

    move v10, v0

    :cond_24
    if-eqz v16, :cond_25

    .line 109
    sget-object v0, Landroidx/compose/material3/carousel/CarouselDefaults;->INSTANCE:Landroidx/compose/material3/carousel/CarouselDefaults;

    invoke-virtual {v0}, Landroidx/compose/material3/carousel/CarouselDefaults;->getMaxSmallItemSize-D9Ej5fM$material3_release()F

    move-result v0

    move v9, v0

    :cond_25
    const/4 v0, 0x0

    if-eqz v7, :cond_1f

    int-to-float v1, v0

    .line 695
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 110
    invoke-static {v1}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-0680j_4(F)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v1

    move-object/from16 v24, v1

    move-object/from16 v16, v5

    goto :goto_17

    :goto_1b
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_26

    const/4 v2, -0x1

    const-string/jumbo v3, "androidx.compose.material3.carousel.HorizontalMultiBrowseCarousel (Carousel.kt:111)"

    const v4, -0x6cd21371

    .line 112
    invoke-static {v4, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 113
    :cond_26
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/CompositionLocal;

    const v3, 0x789c5f52

    const-string v4, "CC:CompositionLocal.kt#9igjgp"

    .line 696
    invoke-static {v15, v3, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 113
    check-cast v2, Landroidx/compose/ui/unit/Density;

    .line 116
    sget-object v3, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    const v4, 0x76ebb05e

    const-string v5, "CC(remember):Carousel.kt#9igjgp"

    .line 117
    invoke-static {v15, v4, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    and-int/lit8 v5, v1, 0x70

    const/4 v6, 0x1

    const/16 v7, 0x20

    if-ne v5, v7, :cond_27

    move v5, v6

    goto :goto_1c

    :cond_27
    move v5, v0

    :goto_1c
    or-int/2addr v4, v5

    invoke-interface {v15, v12}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    const/high16 v5, 0x70000

    and-int v7, v1, v5

    const/high16 v8, 0x20000

    if-ne v7, v8, :cond_28

    move v7, v6

    goto :goto_1d

    :cond_28
    move v7, v0

    :goto_1d
    or-int/2addr v4, v7

    const/high16 v7, 0x380000

    and-int/2addr v7, v1

    const/high16 v8, 0x100000

    if-ne v7, v8, :cond_29

    goto :goto_1e

    :cond_29
    move v6, v0

    :goto_1e
    or-int v0, v4, v6

    .line 697
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v0, :cond_2a

    .line 698
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v4, v0, :cond_2b

    .line 117
    :cond_2a
    new-instance v0, Landroidx/compose/material3/carousel/CarouselKt$HorizontalMultiBrowseCarousel$1$1;

    move-object/from16 p2, v0

    move-object/from16 p3, v2

    move/from16 p4, p1

    move-object/from16 p5, p0

    move/from16 p6, v20

    move/from16 p7, v21

    invoke-direct/range {p2 .. p7}, Landroidx/compose/material3/carousel/CarouselKt$HorizontalMultiBrowseCarousel$1$1;-><init>(Landroidx/compose/ui/unit/Density;FLandroidx/compose/material3/carousel/CarouselState;FF)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    .line 700
    invoke-interface {v15, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 117
    :cond_2b
    move-object v2, v4

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-static {v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    and-int/lit8 v0, v1, 0xe

    or-int/lit16 v0, v0, 0x6030

    shr-int/lit8 v4, v1, 0xc

    and-int/lit16 v4, v4, 0x1c00

    or-int/2addr v0, v4

    shl-int/lit8 v4, v1, 0x9

    and-int/2addr v5, v4

    or-int/2addr v0, v5

    const/high16 v5, 0x380000

    and-int/2addr v5, v4

    or-int/2addr v0, v5

    const/high16 v5, 0x1c00000

    and-int/2addr v4, v5

    or-int/2addr v0, v4

    const/high16 v4, 0xe000000

    and-int/2addr v1, v4

    or-int v10, v0, v1

    const/16 v17, 0x0

    const/4 v4, 0x2

    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v3, v24

    move-object/from16 v5, v22

    move/from16 v6, v23

    move-object/from16 v7, v16

    move-object/from16 v8, p8

    move-object v9, v15

    move/from16 v11, v17

    .line 114
    invoke-static/range {v0 .. v11}, Landroidx/compose/material3/carousel/CarouselKt;->Carousel-V-95POc(Landroidx/compose/material3/carousel/CarouselState;Landroidx/compose/foundation/gestures/Orientation;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/PaddingValues;ILandroidx/compose/ui/Modifier;FLandroidx/compose/foundation/gestures/TargetedFlingBehavior;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_2c
    move-object/from16 v5, v16

    move/from16 v6, v20

    move/from16 v7, v21

    move-object/from16 v3, v22

    move/from16 v4, v23

    move-object/from16 v8, v24

    .line 139
    :goto_1f
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v15

    if-eqz v15, :cond_2d

    new-instance v16, Landroidx/compose/material3/carousel/CarouselKt$HorizontalMultiBrowseCarousel$2;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v9, p8

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Landroidx/compose/material3/carousel/CarouselKt$HorizontalMultiBrowseCarousel$2;-><init>(Landroidx/compose/material3/carousel/CarouselState;FLandroidx/compose/ui/Modifier;FLandroidx/compose/foundation/gestures/TargetedFlingBehavior;FFLandroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function4;II)V

    move-object/from16 v0, v16

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v15, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_2d
    return-void
.end method

.method public static final HorizontalUncontainedCarousel-9QcgTRs(Landroidx/compose/material3/carousel/CarouselState;FLandroidx/compose/ui/Modifier;FLandroidx/compose/foundation/gestures/TargetedFlingBehavior;Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;II)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/carousel/CarouselState;",
            "F",
            "Landroidx/compose/ui/Modifier;",
            "F",
            "Landroidx/compose/foundation/gestures/TargetedFlingBehavior;",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Landroidx/compose/material3/carousel/CarouselItemScope;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    move/from16 v2, p1

    move/from16 v8, p8

    const v0, 0x1f8cd358

    move-object/from16 v1, p7

    .line 179
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v1

    const-string v3, "C(HorizontalUncontainedCarousel)P(6,4:c#ui.unit.Dp,5,3:c#ui.unit.Dp,2,1)175@8483L21,179@8666L7,183@8779L337,180@8678L818:Carousel.kt#dcf9yb"

    invoke-static {v1, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v3, p9, 0x1

    if-eqz v3, :cond_0

    or-int/lit8 v3, v8, 0x6

    move v4, v3

    move-object/from16 v3, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v8, 0x6

    if-nez v3, :cond_2

    move-object/from16 v3, p0

    invoke-interface {v1, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v4, v8

    goto :goto_1

    :cond_2
    move-object/from16 v3, p0

    move v4, v8

    :goto_1
    and-int/lit8 v5, p9, 0x2

    if-eqz v5, :cond_3

    or-int/lit8 v4, v4, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v5, v8, 0x30

    if-nez v5, :cond_5

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x20

    goto :goto_2

    :cond_4
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v4, v5

    :cond_5
    :goto_3
    and-int/lit8 v5, p9, 0x4

    if-eqz v5, :cond_6

    or-int/lit16 v4, v4, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v7, v8, 0x180

    if-nez v7, :cond_8

    move-object/from16 v7, p2

    invoke-interface {v1, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    const/16 v9, 0x100

    goto :goto_4

    :cond_7
    const/16 v9, 0x80

    :goto_4
    or-int/2addr v4, v9

    goto :goto_6

    :cond_8
    :goto_5
    move-object/from16 v7, p2

    :goto_6
    and-int/lit8 v9, p9, 0x8

    if-eqz v9, :cond_9

    or-int/lit16 v4, v4, 0xc00

    goto :goto_8

    :cond_9
    and-int/lit16 v10, v8, 0xc00

    if-nez v10, :cond_b

    move/from16 v10, p3

    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v11

    if-eqz v11, :cond_a

    const/16 v11, 0x800

    goto :goto_7

    :cond_a
    const/16 v11, 0x400

    :goto_7
    or-int/2addr v4, v11

    goto :goto_9

    :cond_b
    :goto_8
    move/from16 v10, p3

    :goto_9
    and-int/lit16 v11, v8, 0x6000

    if-nez v11, :cond_e

    and-int/lit8 v11, p9, 0x10

    if-nez v11, :cond_c

    move-object/from16 v11, p4

    invoke-interface {v1, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    const/16 v12, 0x4000

    goto :goto_a

    :cond_c
    move-object/from16 v11, p4

    :cond_d
    const/16 v12, 0x2000

    :goto_a
    or-int/2addr v4, v12

    goto :goto_b

    :cond_e
    move-object/from16 v11, p4

    :goto_b
    and-int/lit8 v12, p9, 0x20

    const/high16 v13, 0x30000

    if-eqz v12, :cond_f

    or-int/2addr v4, v13

    goto :goto_d

    :cond_f
    and-int/2addr v13, v8

    if-nez v13, :cond_11

    move-object/from16 v13, p5

    invoke-interface {v1, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10

    const/high16 v14, 0x20000

    goto :goto_c

    :cond_10
    const/high16 v14, 0x10000

    :goto_c
    or-int/2addr v4, v14

    goto :goto_e

    :cond_11
    :goto_d
    move-object/from16 v13, p5

    :goto_e
    and-int/lit8 v14, p9, 0x40

    const/high16 v15, 0x180000

    if-eqz v14, :cond_12

    or-int/2addr v4, v15

    move-object/from16 v15, p6

    goto :goto_10

    :cond_12
    and-int v14, v8, v15

    move-object/from16 v15, p6

    if-nez v14, :cond_14

    invoke-interface {v1, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_13

    const/high16 v14, 0x100000

    goto :goto_f

    :cond_13
    const/high16 v14, 0x80000

    :goto_f
    or-int/2addr v4, v14

    :cond_14
    :goto_10
    const v14, 0x92493

    and-int/2addr v14, v4

    const v6, 0x92492

    if-ne v14, v6, :cond_16

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v6

    if-nez v6, :cond_15

    goto :goto_11

    .line 203
    :cond_15
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move v4, v10

    move-object v5, v11

    move-object v6, v13

    goto/16 :goto_14

    .line 179
    :cond_16
    :goto_11
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v6, v8, 0x1

    const v14, -0xe001

    const/4 v0, 0x6

    if-eqz v6, :cond_19

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v6

    if-eqz v6, :cond_17

    goto :goto_12

    .line 177
    :cond_17
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v5, p9, 0x10

    if-eqz v5, :cond_18

    and-int/2addr v4, v14

    :cond_18
    move v9, v4

    move v4, v10

    move-object v6, v11

    move-object/from16 v21, v13

    const/4 v5, 0x0

    goto :goto_13

    :cond_19
    :goto_12
    if-eqz v5, :cond_1a

    .line 174
    sget-object v5, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v5, Landroidx/compose/ui/Modifier;

    move-object v7, v5

    :cond_1a
    if-eqz v9, :cond_1b

    const/4 v5, 0x0

    int-to-float v6, v5

    .line 703
    invoke-static {v6}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    move v10, v5

    :cond_1b
    and-int/lit8 v5, p9, 0x10

    if-eqz v5, :cond_1c

    .line 176
    sget-object v5, Landroidx/compose/material3/carousel/CarouselDefaults;->INSTANCE:Landroidx/compose/material3/carousel/CarouselDefaults;

    invoke-virtual {v5, v1, v0}, Landroidx/compose/material3/carousel/CarouselDefaults;->noSnapFlingBehavior(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/gestures/TargetedFlingBehavior;

    move-result-object v5

    and-int/2addr v4, v14

    move-object v11, v5

    :cond_1c
    const/4 v5, 0x0

    if-eqz v12, :cond_1d

    int-to-float v6, v5

    .line 704
    invoke-static {v6}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v6

    .line 177
    invoke-static {v6}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-0680j_4(F)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v6

    move v9, v4

    move-object/from16 v21, v6

    move v4, v10

    move-object v6, v11

    goto :goto_13

    :cond_1d
    move v9, v4

    move v4, v10

    move-object v6, v11

    move-object/from16 v21, v13

    :goto_13
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v10

    if-eqz v10, :cond_1e

    const/4 v10, -0x1

    const-string/jumbo v11, "androidx.compose.material3.carousel.HorizontalUncontainedCarousel (Carousel.kt:178)"

    const v12, 0x1f8cd358

    .line 179
    invoke-static {v12, v9, v10, v11}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 180
    :cond_1e
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v10

    check-cast v10, Landroidx/compose/runtime/CompositionLocal;

    const v11, 0x789c5f52

    const-string v12, "CC:CompositionLocal.kt#9igjgp"

    .line 705
    invoke-static {v1, v11, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 180
    check-cast v10, Landroidx/compose/ui/unit/Density;

    .line 183
    sget-object v11, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    const v12, 0x704401fc

    const-string v13, "CC(remember):Carousel.kt#9igjgp"

    .line 184
    invoke-static {v1, v12, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v12

    and-int/lit8 v13, v9, 0x70

    const/16 v14, 0x20

    if-ne v13, v14, :cond_1f

    const/4 v5, 0x1

    :cond_1f
    or-int/2addr v5, v12

    .line 706
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    if-nez v5, :cond_20

    .line 707
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v12, v5, :cond_21

    .line 184
    :cond_20
    new-instance v5, Landroidx/compose/material3/carousel/CarouselKt$HorizontalUncontainedCarousel$1$1;

    invoke-direct {v5, v10, v2}, Landroidx/compose/material3/carousel/CarouselKt$HorizontalUncontainedCarousel$1$1;-><init>(Landroidx/compose/ui/unit/Density;F)V

    move-object v12, v5

    check-cast v12, Lkotlin/jvm/functions/Function2;

    .line 709
    invoke-interface {v1, v12}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 184
    :cond_21
    move-object v5, v12

    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    and-int/lit8 v10, v9, 0xe

    or-int/lit16 v10, v10, 0x6030

    shr-int/lit8 v12, v9, 0x6

    and-int/lit16 v12, v12, 0x1c00

    or-int/2addr v10, v12

    shl-int/lit8 v12, v9, 0x9

    const/high16 v13, 0x70000

    and-int/2addr v13, v12

    or-int/2addr v10, v13

    const/high16 v13, 0x380000

    and-int/2addr v13, v12

    or-int/2addr v10, v13

    const/high16 v13, 0x1c00000

    and-int/2addr v12, v13

    or-int/2addr v10, v12

    const/high16 v12, 0xe000000

    shl-int/lit8 v0, v9, 0x6

    and-int/2addr v0, v12

    or-int v19, v10, v0

    const/16 v20, 0x0

    const/4 v13, 0x0

    move-object/from16 v9, p0

    move-object v10, v11

    move-object v11, v5

    move-object/from16 v12, v21

    move-object v14, v7

    move v15, v4

    move-object/from16 v16, v6

    move-object/from16 v17, p6

    move-object/from16 v18, v1

    .line 181
    invoke-static/range {v9 .. v20}, Landroidx/compose/material3/carousel/CarouselKt;->Carousel-V-95POc(Landroidx/compose/material3/carousel/CarouselState;Landroidx/compose/foundation/gestures/Orientation;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/PaddingValues;ILandroidx/compose/ui/Modifier;FLandroidx/compose/foundation/gestures/TargetedFlingBehavior;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_22
    move-object v5, v6

    move-object/from16 v6, v21

    .line 203
    :goto_14
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v10

    if-eqz v10, :cond_23

    new-instance v11, Landroidx/compose/material3/carousel/CarouselKt$HorizontalUncontainedCarousel$2;

    move-object v0, v11

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object v3, v7

    move-object/from16 v7, p6

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Landroidx/compose/material3/carousel/CarouselKt$HorizontalUncontainedCarousel$2;-><init>(Landroidx/compose/material3/carousel/CarouselState;FLandroidx/compose/ui/Modifier;FLandroidx/compose/foundation/gestures/TargetedFlingBehavior;Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function4;II)V

    check-cast v11, Lkotlin/jvm/functions/Function2;

    invoke-interface {v10, v11}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_23
    return-void
.end method

.method public static final synthetic access$getProgress(Landroidx/compose/material3/carousel/Keyline;Landroidx/compose/material3/carousel/Keyline;F)F
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/material3/carousel/CarouselKt;->getProgress(Landroidx/compose/material3/carousel/Keyline;Landroidx/compose/material3/carousel/Keyline;F)F

    move-result p0

    return p0
.end method

.method private static final calculateAfterContentPadding(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/runtime/Composer;I)F
    .locals 3

    const-string v0, "C(calculateAfterContentPadding)*361@16056L7:Carousel.kt#dcf9yb"

    const v1, 0x3cb506d0

    .line 354
    invoke-static {p2, v1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string/jumbo v2, "androidx.compose.material3.carousel.calculateAfterContentPadding (Carousel.kt:353)"

    invoke-static {v1, p3, v0, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    const p3, -0x2306507f

    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string p3, "358@16007L7"

    invoke-static {p2, p3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 356
    sget-object p3, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    const-string v0, "CC:CompositionLocal.kt#9igjgp"

    const v1, 0x789c5f52

    if-ne p1, p3, :cond_1

    .line 357
    invoke-interface {p0}, Landroidx/compose/foundation/layout/PaddingValues;->calculateBottomPadding-D9Ej5fM()F

    move-result p0

    goto :goto_0

    .line 359
    :cond_1
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object p1

    check-cast p1, Landroidx/compose/runtime/CompositionLocal;

    .line 724
    invoke-static {p2, v1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    check-cast p1, Landroidx/compose/ui/unit/LayoutDirection;

    .line 359
    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/PaddingKt;->calculateEndPadding(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result p0

    .line 356
    :goto_0
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 362
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object p1

    check-cast p1, Landroidx/compose/runtime/CompositionLocal;

    .line 725
    invoke-static {p2, v1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 362
    check-cast p1, Landroidx/compose/ui/unit/Density;

    invoke-interface {p1, p0}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 354
    :cond_2
    invoke-static {p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    return p0
.end method

.method private static final calculateBeforeContentPadding(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/runtime/Composer;I)F
    .locals 3

    const-string v0, "C(calculateBeforeContentPadding)*349@15698L7:Carousel.kt#dcf9yb"

    const v1, 0x710f78b3

    .line 342
    invoke-static {p2, v1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string/jumbo v2, "androidx.compose.material3.carousel.calculateBeforeContentPadding (Carousel.kt:341)"

    invoke-static {v1, p3, v0, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    const p3, 0x11a20459

    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string p3, "346@15649L7"

    invoke-static {p2, p3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 344
    sget-object p3, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    const-string v0, "CC:CompositionLocal.kt#9igjgp"

    const v1, 0x789c5f52

    if-ne p1, p3, :cond_1

    .line 345
    invoke-interface {p0}, Landroidx/compose/foundation/layout/PaddingValues;->calculateTopPadding-D9Ej5fM()F

    move-result p0

    goto :goto_0

    .line 347
    :cond_1
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object p1

    check-cast p1, Landroidx/compose/runtime/CompositionLocal;

    .line 721
    invoke-static {p2, v1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    check-cast p1, Landroidx/compose/ui/unit/LayoutDirection;

    .line 347
    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/PaddingKt;->calculateStartPadding(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result p0

    .line 344
    :goto_0
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 350
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object p1

    check-cast p1, Landroidx/compose/runtime/CompositionLocal;

    .line 722
    invoke-static {p2, v1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 350
    check-cast p1, Landroidx/compose/ui/unit/Density;

    invoke-interface {p1, p0}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 342
    :cond_2
    invoke-static {p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    return p0
.end method

.method public static final calculateCurrentScrollOffset(Landroidx/compose/material3/carousel/CarouselState;Landroidx/compose/material3/carousel/Strategy;)F
    .locals 3

    .line 556
    invoke-virtual {p1}, Landroidx/compose/material3/carousel/Strategy;->getItemMainAxisSize()F

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/material3/carousel/Strategy;->getItemSpacing()F

    move-result v1

    add-float/2addr v0, v1

    .line 558
    invoke-virtual {p0}, Landroidx/compose/material3/carousel/CarouselState;->getPagerState$material3_release()Landroidx/compose/foundation/pager/PagerState;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPage()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    .line 559
    invoke-virtual {p0}, Landroidx/compose/material3/carousel/CarouselState;->getPagerState$material3_release()Landroidx/compose/foundation/pager/PagerState;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPageOffsetFraction()F

    move-result v2

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    .line 561
    invoke-virtual {p0}, Landroidx/compose/material3/carousel/CarouselState;->getPagerState$material3_release()Landroidx/compose/foundation/pager/PagerState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/material3/carousel/CarouselState;->getPagerState$material3_release()Landroidx/compose/foundation/pager/PagerState;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getPageCount()I

    move-result p0

    invoke-static {p1, v0, p0}, Landroidx/compose/material3/carousel/KeylineSnapPositionKt;->getSnapPositionOffset(Landroidx/compose/material3/carousel/Strategy;II)I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr v1, p0

    return v1
.end method

.method public static final calculateMaxScrollOffset(Landroidx/compose/material3/carousel/CarouselState;Landroidx/compose/material3/carousel/Strategy;)F
    .locals 3

    .line 568
    invoke-virtual {p0}, Landroidx/compose/material3/carousel/CarouselState;->getPagerState$material3_release()Landroidx/compose/foundation/pager/PagerState;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getPageCount()I

    move-result p0

    int-to-float p0, p0

    .line 570
    invoke-virtual {p1}, Landroidx/compose/material3/carousel/Strategy;->getItemMainAxisSize()F

    move-result v0

    mul-float/2addr v0, p0

    invoke-virtual {p1}, Landroidx/compose/material3/carousel/Strategy;->getItemSpacing()F

    move-result v1

    const/4 v2, 0x1

    int-to-float v2, v2

    sub-float/2addr p0, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    .line 572
    invoke-virtual {p1}, Landroidx/compose/material3/carousel/Strategy;->getAvailableSpace()F

    move-result p0

    sub-float/2addr v0, p0

    const/4 p0, 0x0

    invoke-static {v0, p0}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result p0

    return p0
.end method

.method public static final carouselItem(Landroidx/compose/ui/Modifier;ILandroidx/compose/material3/carousel/CarouselState;Lkotlin/jvm/functions/Function0;Landroidx/compose/material3/carousel/CarouselItemInfoImpl;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "I",
            "Landroidx/compose/material3/carousel/CarouselState;",
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/compose/material3/carousel/Strategy;",
            ">;",
            "Landroidx/compose/material3/carousel/CarouselItemInfoImpl;",
            "Landroidx/compose/ui/graphics/Shape;",
            ")",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    .line 439
    new-instance v6, Landroidx/compose/material3/carousel/CarouselKt$carouselItem$1;

    move-object v0, v6

    move-object v1, p3

    move-object v2, p2

    move v3, p1

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Landroidx/compose/material3/carousel/CarouselKt$carouselItem$1;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/material3/carousel/CarouselState;ILandroidx/compose/material3/carousel/CarouselItemInfoImpl;Landroidx/compose/ui/graphics/Shape;)V

    check-cast v6, Lkotlin/jvm/functions/Function3;

    invoke-static {p0, v6}, Landroidx/compose/ui/layout/LayoutModifierKt;->layout(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method private static final getProgress(Landroidx/compose/material3/carousel/Keyline;Landroidx/compose/material3/carousel/Keyline;F)F
    .locals 1

    .line 585
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    .line 589
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/material3/carousel/Keyline;->getUnadjustedOffset()F

    move-result p1

    invoke-virtual {p0}, Landroidx/compose/material3/carousel/Keyline;->getUnadjustedOffset()F

    move-result v0

    sub-float/2addr p1, v0

    .line 590
    invoke-virtual {p0}, Landroidx/compose/material3/carousel/Keyline;->getUnadjustedOffset()F

    move-result p0

    sub-float/2addr p2, p0

    div-float/2addr p2, p1

    return p2
.end method
