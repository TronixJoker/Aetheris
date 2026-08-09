.class final Landroidx/compose/material3/SnackbarKt$OneRowSnackbar$2$1;
.super Ljava/lang/Object;
.source "Snackbar.kt"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/SnackbarKt;->OneRowSnackbar-kKq0p4A(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSnackbar.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Snackbar.kt\nandroidx/compose/material3/SnackbarKt$OneRowSnackbar$2$1\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,450:1\n116#2,2:451\n33#2,6:453\n118#2:459\n116#2,2:460\n33#2,6:462\n118#2:468\n544#2,2:469\n33#2,6:471\n546#2:477\n*S KotlinDebug\n*F\n+ 1 Snackbar.kt\nandroidx/compose/material3/SnackbarKt$OneRowSnackbar$2$1\n*L\n342#1:451,2\n342#1:453,6\n342#1:459\n344#1:460,2\n344#1:462,6\n344#1:468\n355#1:469,2\n355#1:471,6\n355#1:477\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\n\u00a2\u0006\u0004\u0008\u0008\u0010\t"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "Landroidx/compose/ui/layout/MeasureScope;",
        "measurables",
        "",
        "Landroidx/compose/ui/layout/Measurable;",
        "constraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "measure-3p2s80s",
        "(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;"
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
.field final synthetic $actionTag:Ljava/lang/String;

.field final synthetic $dismissActionTag:Ljava/lang/String;

.field final synthetic $textTag:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/SnackbarKt$OneRowSnackbar$2$1;->$actionTag:Ljava/lang/String;

    iput-object p2, p0, Landroidx/compose/material3/SnackbarKt$OneRowSnackbar$2$1;->$dismissActionTag:Ljava/lang/String;

    iput-object p3, p0, Landroidx/compose/material3/SnackbarKt$OneRowSnackbar$2$1;->$textTag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 21
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

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    .line 340
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v5

    invoke-static {}, Landroidx/compose/material3/SnackbarKt;->access$getContainerMaxWidth$p()F

    move-result v6

    invoke-interface {v1, v6}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 342
    iget-object v5, v0, Landroidx/compose/material3/SnackbarKt$OneRowSnackbar$2$1;->$actionTag:Ljava/lang/String;

    .line 454
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_0
    const/4 v8, 0x0

    if-ge v7, v6, :cond_1

    .line 455
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 452
    move-object v12, v9

    check-cast v12, Landroidx/compose/ui/layout/Measurable;

    .line 342
    invoke-static {v12}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    move-object v9, v8

    :goto_1
    check-cast v9, Landroidx/compose/ui/layout/Measurable;

    if-eqz v9, :cond_2

    invoke-interface {v9, v3, v4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v5

    move-object v15, v5

    goto :goto_2

    :cond_2
    move-object v15, v8

    .line 344
    :goto_2
    iget-object v5, v0, Landroidx/compose/material3/SnackbarKt$OneRowSnackbar$2$1;->$dismissActionTag:Ljava/lang/String;

    .line 463
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v6, :cond_4

    .line 464
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 461
    move-object v12, v9

    check-cast v12, Landroidx/compose/ui/layout/Measurable;

    .line 344
    invoke-static {v12}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_4
    move-object v9, v8

    :goto_4
    check-cast v9, Landroidx/compose/ui/layout/Measurable;

    if-eqz v9, :cond_5

    invoke-interface {v9, v3, v4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v8

    :cond_5
    move-object/from16 v16, v8

    if-eqz v15, :cond_6

    .line 345
    invoke-virtual {v15}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v5

    move v12, v5

    goto :goto_5

    :cond_6
    const/4 v12, 0x0

    :goto_5
    if-eqz v15, :cond_7

    .line 346
    invoke-virtual {v15}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v5

    move v13, v5

    goto :goto_6

    :cond_7
    const/4 v13, 0x0

    :goto_6
    if-eqz v16, :cond_8

    .line 347
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v5

    move v14, v5

    goto :goto_7

    :cond_8
    const/4 v14, 0x0

    :goto_7
    if-eqz v16, :cond_9

    .line 348
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v5

    move v9, v5

    goto :goto_8

    :cond_9
    const/4 v9, 0x0

    :goto_8
    if-nez v14, :cond_a

    .line 349
    invoke-static {}, Landroidx/compose/material3/SnackbarKt;->access$getTextEndExtraSpacing$p()F

    move-result v5

    invoke-interface {v1, v5}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v5

    goto :goto_9

    :cond_a
    const/4 v5, 0x0

    :goto_9
    sub-int v6, v10, v12

    sub-int/2addr v6, v14

    sub-int/2addr v6, v5

    .line 352
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v5

    invoke-static {v6, v5}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v5

    .line 355
    iget-object v6, v0, Landroidx/compose/material3/SnackbarKt$OneRowSnackbar$2$1;->$textTag:Ljava/lang/String;

    .line 472
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_a
    if-ge v8, v7, :cond_14

    .line 473
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    .line 470
    move-object/from16 v11, v17

    check-cast v11, Landroidx/compose/ui/layout/Measurable;

    .line 355
    invoke-static {v11}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/16 v8, 0x9

    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v17, 0x0

    move-wide/from16 v2, p3

    move v4, v6

    move v6, v7

    move/from16 v7, v17

    move-object/from16 v17, v15

    move v15, v9

    move-object v9, v0

    .line 356
    invoke-static/range {v2 .. v9}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v2

    invoke-interface {v11, v2, v3}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v0

    .line 358
    invoke-static {}, Landroidx/compose/ui/layout/AlignmentLineKt;->getFirstBaseline()Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/layout/AlignmentLine;

    invoke-virtual {v0, v2}, Landroidx/compose/ui/layout/Placeable;->get(Landroidx/compose/ui/layout/AlignmentLine;)I

    move-result v2

    .line 359
    invoke-static {}, Landroidx/compose/ui/layout/AlignmentLineKt;->getLastBaseline()Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/layout/AlignmentLine;

    invoke-virtual {v0, v3}, Landroidx/compose/ui/layout/Placeable;->get(Landroidx/compose/ui/layout/AlignmentLine;)I

    move-result v3

    const/high16 v4, -0x80000000

    const/4 v5, 0x1

    if-eq v2, v4, :cond_b

    if-eq v3, v4, :cond_b

    move v6, v5

    goto :goto_b

    :cond_b
    const/4 v6, 0x0

    :goto_b
    if-eq v2, v3, :cond_d

    if-nez v6, :cond_c

    goto :goto_c

    :cond_c
    const/4 v5, 0x0

    :cond_d
    :goto_c
    sub-int v3, v10, v14

    sub-int v19, v3, v12

    if-eqz v5, :cond_10

    .line 371
    sget-object v5, Landroidx/compose/material3/tokens/SnackbarTokens;->INSTANCE:Landroidx/compose/material3/tokens/SnackbarTokens;

    invoke-virtual {v5}, Landroidx/compose/material3/tokens/SnackbarTokens;->getSingleLineContainerHeight-D9Ej5fM()F

    move-result v5

    invoke-interface {v1, v5}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v5

    .line 372
    invoke-static {v13, v15}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 373
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 374
    invoke-virtual {v0}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v6

    sub-int v6, v5, v6

    div-int/lit8 v6, v6, 0x2

    if-eqz v17, :cond_e

    .line 377
    invoke-static {}, Landroidx/compose/ui/layout/AlignmentLineKt;->getFirstBaseline()Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/layout/AlignmentLine;

    move-object/from16 v8, v17

    invoke-virtual {v8, v7}, Landroidx/compose/ui/layout/Placeable;->get(Landroidx/compose/ui/layout/AlignmentLine;)I

    move-result v7

    if-eq v7, v4, :cond_f

    add-int/2addr v2, v6

    sub-int/2addr v2, v7

    goto :goto_d

    :cond_e
    move-object/from16 v8, v17

    :cond_f
    const/4 v2, 0x0

    :goto_d
    move/from16 v20, v2

    move v14, v6

    goto :goto_f

    :cond_10
    move-object/from16 v8, v17

    .line 388
    invoke-static {}, Landroidx/compose/material3/SnackbarKt;->access$getHeightToFirstLine$p()F

    move-result v4

    invoke-interface {v1, v4}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v4

    sub-int/2addr v4, v2

    .line 390
    sget-object v2, Landroidx/compose/material3/tokens/SnackbarTokens;->INSTANCE:Landroidx/compose/material3/tokens/SnackbarTokens;

    invoke-virtual {v2}, Landroidx/compose/material3/tokens/SnackbarTokens;->getTwoLinesContainerHeight-D9Ej5fM()F

    move-result v2

    invoke-interface {v1, v2}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v2

    .line 391
    invoke-virtual {v0}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v5

    add-int/2addr v5, v4

    .line 392
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-eqz v8, :cond_11

    .line 395
    invoke-virtual {v8}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v5

    sub-int v5, v2, v5

    div-int/lit8 v5, v5, 0x2

    goto :goto_e

    :cond_11
    const/4 v5, 0x0

    :goto_e
    move v14, v4

    move/from16 v20, v5

    move v5, v2

    :goto_f
    if-eqz v16, :cond_12

    .line 402
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v2

    sub-int v2, v5, v2

    div-int/lit8 v11, v2, 0x2

    move/from16 v17, v11

    goto :goto_10

    :cond_12
    const/16 v17, 0x0

    .line 407
    :goto_10
    new-instance v2, Landroidx/compose/material3/SnackbarKt$OneRowSnackbar$2$1$2;

    move-object v12, v2

    move-object v13, v0

    move-object v0, v8

    move-object/from16 v15, v16

    move/from16 v16, v3

    move-object/from16 v18, v0

    invoke-direct/range {v12 .. v20}, Landroidx/compose/material3/SnackbarKt$OneRowSnackbar$2$1$2;-><init>(Landroidx/compose/ui/layout/Placeable;ILandroidx/compose/ui/layout/Placeable;IILandroidx/compose/ui/layout/Placeable;II)V

    move-object v0, v2

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move v2, v10

    move v3, v5

    move-object v5, v0

    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0

    :cond_13
    move-object v0, v15

    move v15, v9

    add-int/lit8 v8, v8, 0x1

    move-object v15, v0

    move-object/from16 v0, p0

    goto/16 :goto_a

    .line 477
    :cond_14
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Collection contains no element matching the predicate."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
