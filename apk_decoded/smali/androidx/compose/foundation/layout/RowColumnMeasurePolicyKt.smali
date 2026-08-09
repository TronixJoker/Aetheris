.class public final Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt;
.super Ljava/lang/Object;
.source "RowColumnMeasurePolicy.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRowColumnMeasurePolicy.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RowColumnMeasurePolicy.kt\nandroidx/compose/foundation/layout/RowColumnMeasurePolicyKt\n+ 2 InlineClassHelper.jvm.kt\nandroidx/compose/ui/util/InlineClassHelper_jvmKt\n+ 3 RowColumnMeasurePolicy.jvm.kt\nandroidx/compose/foundation/layout/RowColumnMeasurePolicy_jvmKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,359:1\n26#2:360\n26#2:361\n26#2:363\n26#2:365\n24#3:362\n24#3:366\n1#4:364\n*S KotlinDebug\n*F\n+ 1 RowColumnMeasurePolicy.kt\nandroidx/compose/foundation/layout/RowColumnMeasurePolicyKt\n*L\n116#1:360\n168#1:361\n214#1:363\n225#1:365\n170#1:362\n244#1:366\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0015\n\u0002\u0008\u0003\u001a\u0085\u0001\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\n2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c2\u000e\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000f2\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u00042\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0004H\u0000\u00a2\u0006\u0002\u0010\u0016\u00a8\u0006\u0017"
    }
    d2 = {
        "measure",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;",
        "mainAxisMin",
        "",
        "crossAxisMin",
        "mainAxisMax",
        "crossAxisMax",
        "arrangementSpacingInt",
        "measureScope",
        "Landroidx/compose/ui/layout/MeasureScope;",
        "measurables",
        "",
        "Landroidx/compose/ui/layout/Measurable;",
        "placeables",
        "",
        "Landroidx/compose/ui/layout/Placeable;",
        "startIndex",
        "endIndex",
        "crossAxisOffset",
        "",
        "currentLineIndex",
        "(Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;IIIIILandroidx/compose/ui/layout/MeasureScope;Ljava/util/List;[Landroidx/compose/ui/layout/Placeable;II[II)Landroidx/compose/ui/layout/MeasureResult;",
        "foundation-layout_release"
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
.method public static final measure(Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;IIIIILandroidx/compose/ui/layout/MeasureScope;Ljava/util/List;[Landroidx/compose/ui/layout/Placeable;II[II)Landroidx/compose/ui/layout/MeasureResult;
    .locals 59
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;",
            "IIIII",
            "Landroidx/compose/ui/layout/MeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/Measurable;",
            ">;[",
            "Landroidx/compose/ui/layout/Placeable;",
            "II[II)",
            "Landroidx/compose/ui/layout/MeasureResult;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v9, p1

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    move-object/from16 v13, p7

    move/from16 v14, p10

    int-to-long v7, v12

    sub-int v15, v14, p9

    .line 97
    new-array v6, v15, [I

    const/16 v16, 0x0

    move/from16 v4, p9

    move-wide/from16 v18, v7

    move/from16 v8, v16

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/16 v17, 0x0

    :goto_0
    const/16 v20, 0x0

    move-object/from16 v21, v6

    const v6, 0x7fffffff

    if-ge v4, v14, :cond_9

    .line 105
    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    move/from16 v23, v7

    move-object/from16 v7, v22

    check-cast v7, Landroidx/compose/ui/layout/Measurable;

    .line 106
    move-object/from16 v22, v7

    check-cast v22, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    invoke-static/range {v22 .. v22}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getRowColumnParentData(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    move-result-object v22

    .line 107
    invoke-static/range {v22 .. v22}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getWeight(Landroidx/compose/foundation/layout/RowColumnParentData;)F

    move-result v24

    if-nez v17, :cond_1

    .line 108
    invoke-static/range {v22 .. v22}, Landroidx/compose/foundation/layout/RowColumnImplKt;->isRelative(Landroidx/compose/foundation/layout/RowColumnParentData;)Z

    move-result v17

    if-eqz v17, :cond_0

    goto :goto_1

    :cond_0
    const/16 v17, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/16 v17, 0x1

    :goto_2
    cmpl-float v25, v24, v16

    if-lez v25, :cond_2

    add-float v8, v8, v24

    add-int/lit8 v3, v3, 0x1

    move/from16 v24, v4

    move-wide/from16 v34, v18

    move-object/from16 v7, v21

    move/from16 v18, v15

    move v15, v8

    const/4 v8, 0x0

    goto/16 :goto_8

    :cond_2
    if-ne v11, v6, :cond_3

    goto :goto_3

    :cond_3
    if-eqz v22, :cond_4

    .line 115
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/foundation/layout/RowColumnParentData;->getFlowLayoutData()Landroidx/compose/foundation/layout/FlowLayoutData;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 116
    invoke-virtual {v1}, Landroidx/compose/foundation/layout/FlowLayoutData;->getFillCrossAxisFraction()F

    move-result v1

    int-to-float v5, v11

    mul-float/2addr v1, v5

    .line 360
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 116
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    :cond_4
    :goto_3
    sub-int v5, v10, v2

    .line 119
    aget-object v1, p8, v4

    if-nez v1, :cond_8

    if-eqz v20, :cond_5

    .line 123
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move/from16 v24, v1

    goto :goto_4

    :cond_5
    const/16 v24, 0x0

    :goto_4
    if-ne v10, v6, :cond_6

    move/from16 v22, v6

    const/4 v6, 0x0

    goto :goto_5

    :cond_6
    const/4 v6, 0x0

    .line 127
    invoke-static {v5, v6}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v1

    move/from16 v22, v1

    :goto_5
    if-eqz v20, :cond_7

    .line 129
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move/from16 v20, v1

    goto :goto_6

    :cond_7
    move/from16 v20, v11

    :goto_6
    const/16 v25, 0x10

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v1, p0

    move/from16 v29, v2

    move/from16 v2, v27

    move/from16 v30, v3

    move/from16 v3, v24

    move/from16 v24, v4

    move/from16 v4, v22

    move/from16 v22, v5

    move/from16 v5, v20

    move-object/from16 v31, v21

    move/from16 v6, v28

    move-object/from16 v36, v7

    move-wide/from16 v34, v18

    move/from16 v33, v23

    move/from16 v7, v25

    move/from16 v18, v15

    move v15, v8

    move-object/from16 v8, v26

    .line 121
    invoke-static/range {v1 .. v8}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;->createConstraints-xF2OJ5Q$default(Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;IIIIZILjava/lang/Object;)J

    move-result-wide v1

    move-object/from16 v3, v36

    .line 119
    invoke-interface {v3, v1, v2}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v1

    goto :goto_7

    :cond_8
    move/from16 v29, v2

    move/from16 v30, v3

    move/from16 v24, v4

    move/from16 v22, v5

    move-wide/from16 v34, v18

    move-object/from16 v31, v21

    move/from16 v33, v23

    move/from16 v18, v15

    move v15, v8

    .line 132
    :goto_7
    invoke-interface {v0, v1}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;->mainAxisSize(Landroidx/compose/ui/layout/Placeable;)I

    move-result v2

    .line 133
    invoke-interface {v0, v1}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;->crossAxisSize(Landroidx/compose/ui/layout/Placeable;)I

    move-result v3

    sub-int v4, v24, p9

    move-object/from16 v7, v31

    .line 134
    aput v2, v7, v4

    sub-int v5, v22, v2

    const/4 v8, 0x0

    .line 137
    invoke-static {v5, v8}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v4

    invoke-static {v12, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/2addr v2, v4

    move/from16 v5, v29

    add-int/2addr v2, v5

    move/from16 v5, v33

    .line 140
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 141
    aput-object v1, p8, v24

    move/from16 v23, v3

    move v1, v4

    move/from16 v3, v30

    :goto_8
    add-int/lit8 v4, v24, 0x1

    move-object v6, v7

    move v8, v15

    move/from16 v15, v18

    move/from16 v7, v23

    move-wide/from16 v18, v34

    goto/16 :goto_0

    :cond_9
    move v5, v2

    move v4, v3

    move/from16 v23, v7

    move-wide/from16 v34, v18

    move-object/from16 v7, v21

    move/from16 v18, v15

    move v15, v8

    const/4 v8, 0x0

    if-nez v4, :cond_a

    sub-int v2, v5, v1

    move v13, v2

    move-object/from16 v31, v7

    move v5, v8

    move v14, v9

    move/from16 v7, v23

    move-object v2, v0

    goto/16 :goto_12

    :cond_a
    if-eq v10, v6, :cond_b

    move v12, v10

    goto :goto_9

    :cond_b
    move v12, v9

    :goto_9
    add-int/lit8 v3, v4, -0x1

    int-to-long v1, v3

    move-object/from16 v31, v7

    move-wide/from16 v6, v34

    mul-long v2, v6, v1

    sub-int v1, v12, v5

    int-to-long v8, v1

    sub-long/2addr v8, v2

    const-wide/16 v0, 0x0

    .line 159
    invoke-static {v8, v9, v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v8

    long-to-float v0, v8

    div-float v1, v0, v15

    move/from16 v0, p9

    move-wide/from16 v24, v8

    .line 163
    :goto_a
    const-string/jumbo v11, "weightedSize "

    move-object/from16 p5, v11

    const-string/jumbo v11, "weightUnitSpace "

    move-object/from16 v21, v11

    const-string/jumbo v11, "totalWeight "

    move/from16 v26, v15

    const-string/jumbo v15, "remainingToTarget "

    move-object/from16 v27, v11

    const-string/jumbo v11, "arrangementSpacingTotal "

    move-wide/from16 v28, v8

    const-string/jumbo v8, "fixedSpace "

    const-string/jumbo v9, "weightChildrenCount "

    move-object/from16 v30, v15

    const-string/jumbo v15, "arrangementSpacingPx "

    move-wide/from16 v32, v2

    const-string/jumbo v2, "targetSpace "

    const-string/jumbo v3, "mainAxisMin "

    if-ge v0, v14, :cond_c

    .line 164
    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroidx/compose/ui/layout/Measurable;

    .line 165
    check-cast v34, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    invoke-static/range {v34 .. v34}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getRowColumnParentData(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getWeight(Landroidx/compose/foundation/layout/RowColumnParentData;)F

    move-result v13

    mul-float v14, v1, v13

    .line 361
    :try_start_0
    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v2, v2

    sub-long v24, v24, v2

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v13, p7

    move/from16 v14, p10

    move/from16 v15, v26

    move-wide/from16 v8, v28

    move-wide/from16 v2, v32

    goto :goto_a

    :catch_0
    move-exception v0

    move-object/from16 v16, v0

    .line 171
    new-instance v0, Ljava/lang/IllegalArgumentException;

    move-object/from16 p0, v0

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    move/from16 v34, v14

    const-string v14, "This log indicates a hard-to-reproduce Compose issue, modified with additional debugging details. Please help us by adding your experiences to the bug link provided. Thank you for helping us improve Compose. https://issuetracker.google.com/issues/297974033 mainAxisMax "

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v14, p1

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v3, v32

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v3, v30

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v3, v28

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v3, v27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v3, v26

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v3, v21

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 197
    const-string/jumbo v2, "itemWeight "

    .line 172
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v13, p5

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p0

    .line 171
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 362
    move-object/from16 v0, v16

    check-cast v0, Ljava/lang/Exception;

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v1, v0}, Ljava/lang/IllegalArgumentException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0

    :cond_c
    move/from16 v14, p1

    move-object/from16 v13, p5

    move-object/from16 v40, v21

    move/from16 v39, v26

    move-object/from16 v41, v27

    move-wide/from16 v37, v28

    move-object/from16 v42, v30

    move-wide/from16 v26, v32

    move-wide/from16 v34, v6

    move/from16 v43, v23

    const/4 v0, 0x0

    move/from16 v7, p9

    move/from16 v6, p10

    :goto_b
    if-ge v7, v6, :cond_15

    .line 208
    aget-object v21, p8, v7

    if-nez v21, :cond_14

    move-object/from16 v6, p7

    .line 209
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v6, v21

    check-cast v6, Landroidx/compose/ui/layout/Measurable;

    .line 210
    move-object/from16 v21, v6

    check-cast v21, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    invoke-static/range {v21 .. v21}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getRowColumnParentData(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    move-result-object v21

    move-object/from16 p5, v6

    .line 211
    invoke-static/range {v21 .. v21}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getWeight(Landroidx/compose/foundation/layout/RowColumnParentData;)F

    move-result v6

    move-object/from16 v23, v2

    move-object/from16 v44, v13

    const v2, 0x7fffffff

    move/from16 v13, p4

    if-ne v13, v2, :cond_e

    :cond_d
    move-object/from16 v28, v3

    move-object/from16 v3, v20

    goto :goto_c

    :cond_e
    if-eqz v21, :cond_d

    .line 213
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/foundation/layout/RowColumnParentData;->getFlowLayoutData()Landroidx/compose/foundation/layout/FlowLayoutData;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 214
    invoke-virtual {v2}, Landroidx/compose/foundation/layout/FlowLayoutData;->getFillCrossAxisFraction()F

    move-result v2

    move-object/from16 v28, v3

    int-to-float v3, v13

    mul-float/2addr v2, v3

    .line 363
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 214
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v3, v2

    :goto_c
    cmpl-float v2, v6, v16

    if-lez v2, :cond_13

    .line 220
    invoke-static/range {v24 .. v25}, Lkotlin/math/MathKt;->getSign(J)I

    move-result v2

    move/from16 v30, v4

    move/from16 v29, v5

    int-to-long v4, v2

    sub-long v24, v24, v4

    mul-float v5, v1, v6

    .line 365
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/2addr v4, v2

    move/from16 v32, v1

    const/4 v1, 0x0

    .line 223
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 231
    :try_start_1
    invoke-static/range {v21 .. v21}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getFill(Landroidx/compose/foundation/layout/RowColumnParentData;)Z

    move-result v1

    if-eqz v1, :cond_f

    const v1, 0x7fffffff

    if-eq v4, v1, :cond_10

    move/from16 v19, v4

    goto :goto_d

    :cond_f
    const v1, 0x7fffffff

    :cond_10
    const/16 v19, 0x0

    :goto_d
    if-eqz v3, :cond_11

    .line 238
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v21

    goto :goto_e

    :cond_11
    const/16 v21, 0x0

    :goto_e
    if-eqz v3, :cond_12

    .line 240
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v33
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_f

    :cond_12
    move/from16 v33, v13

    :goto_f
    const/16 v36, 0x1

    move/from16 v45, v32

    move/from16 v32, v1

    move-object/from16 v1, p0

    move/from16 v48, v2

    move-object/from16 v49, v23

    move-wide/from16 v46, v26

    move/from16 v2, v19

    move-object/from16 v50, v3

    move-object/from16 v51, v28

    move/from16 v3, v21

    move/from16 v19, v4

    move/from16 v52, v30

    move/from16 v53, v5

    move/from16 v13, v29

    move/from16 v5, v33

    move/from16 v54, v6

    move-object/from16 v21, v8

    move-object/from16 v23, v11

    move/from16 v26, v32

    move-object/from16 v11, p5

    move-object/from16 p5, v9

    move-wide/from16 v8, v34

    move/from16 v6, v36

    .line 230
    :try_start_2
    invoke-interface/range {v1 .. v6}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;->createConstraints-xF2OJ5Q(IIIIZ)J

    move-result-wide v1
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    .line 285
    invoke-interface {v11, v1, v2}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v1

    move-object/from16 v2, p0

    .line 286
    invoke-interface {v2, v1}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;->mainAxisSize(Landroidx/compose/ui/layout/Placeable;)I

    move-result v3

    .line 287
    invoke-interface {v2, v1}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;->crossAxisSize(Landroidx/compose/ui/layout/Placeable;)I

    move-result v4

    sub-int v5, v7, p9

    .line 288
    aput v3, v31, v5

    add-int/2addr v0, v3

    move/from16 v3, v43

    .line 290
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v43

    .line 291
    aput-object v1, p8, v7

    move-object/from16 v6, p5

    move-object/from16 v35, v21

    move-object/from16 v34, v23

    move-wide/from16 v29, v37

    move/from16 v1, v39

    move-object/from16 v23, v40

    move-object/from16 v32, v41

    move-object/from16 v33, v42

    move-object/from16 v21, v44

    move/from16 v19, v45

    move-wide/from16 v27, v46

    move-object/from16 v5, v49

    move-object/from16 v4, v51

    move/from16 v11, v52

    goto/16 :goto_11

    :catch_1
    move-exception v0

    goto :goto_10

    :catch_2
    move-exception v0

    move/from16 v48, v2

    move-object/from16 v50, v3

    move/from16 v19, v4

    move/from16 v53, v5

    move/from16 v54, v6

    move-object/from16 v21, v8

    move-object/from16 p5, v9

    move-object/from16 v49, v23

    move-wide/from16 v46, v26

    move-object/from16 v51, v28

    move/from16 v13, v29

    move/from16 v52, v30

    move/from16 v45, v32

    move-wide/from16 v8, v34

    move-object/from16 v23, v11

    .line 245
    :goto_10
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 246
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "This log indicates a hard-to-reproduce Compose issue, modified with additional debugging details. Please help us by adding your experiences to the bug link provided. Thank you for helping us improve Compose. https://issuetracker.google.com/issues/300280216 mainAxisMax "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v4, v51

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v5, v49

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v6, p5

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v11, v52

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v4, v21

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v4, v23

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v4, v46

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v4, v42

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v4, v37

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v4, v41

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v4, v39

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v4, v40

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v4, v45

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 271
    const-string/jumbo v4, "weight "

    .line 246
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v4, v54

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v4, v44

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, v53

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 275
    const-string/jumbo v4, "crossAxisDesiredSize "

    .line 246
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v4, v50

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 277
    const-string/jumbo v4, "remainderUnit "

    .line 246
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v4, v48

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 279
    const-string/jumbo v4, "childMainAxisSize "

    .line 246
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v4, v19

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 245
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 366
    check-cast v0, Ljava/lang/Exception;

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v1, v0}, Ljava/lang/IllegalArgumentException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0

    .line 216
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "All weights <= 0 should have placeables"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    move/from16 v19, v1

    move-object v6, v9

    move-object/from16 v21, v13

    move-wide/from16 v27, v26

    move-wide/from16 v29, v37

    move/from16 v1, v39

    move-object/from16 v23, v40

    move-object/from16 v32, v41

    move-object/from16 v33, v42

    const v26, 0x7fffffff

    move v13, v5

    move-object v5, v2

    move-object/from16 v2, p0

    move/from16 v55, v4

    move-object v4, v3

    move/from16 v3, v43

    move-object/from16 v56, v11

    move/from16 v11, v55

    move-wide/from16 v57, v34

    move-object/from16 v35, v8

    move-object/from16 v34, v56

    move-wide/from16 v8, v57

    :goto_11
    add-int/lit8 v7, v7, 0x1

    move/from16 v39, v1

    move-object v3, v4

    move-object v2, v5

    move v4, v11

    move v5, v13

    move/from16 v1, v19

    move-object/from16 v13, v21

    move-object/from16 v40, v23

    move-wide/from16 v26, v27

    move-wide/from16 v37, v29

    move-object/from16 v41, v32

    move-object/from16 v42, v33

    move-object/from16 v11, v34

    move-object/from16 v55, v6

    move/from16 v6, p10

    move-wide/from16 v56, v8

    move-object/from16 v9, v55

    move-object/from16 v8, v35

    move-wide/from16 v34, v56

    goto/16 :goto_b

    :cond_15
    move-object/from16 v2, p0

    move v13, v5

    move-wide/from16 v27, v26

    move/from16 v3, v43

    int-to-long v0, v0

    add-long v0, v0, v27

    long-to-int v0, v0

    sub-int v1, v10, v13

    const/4 v4, 0x0

    .line 296
    invoke-static {v0, v4, v1}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v5

    move v7, v3

    :goto_12
    if-eqz v17, :cond_1b

    move/from16 v3, p9

    move/from16 v11, p10

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_13
    if-ge v3, v11, :cond_1a

    .line 302
    aget-object v4, p8, v3

    .line 303
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v4}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getRowColumnParentData(Landroidx/compose/ui/layout/Placeable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    move-result-object v6

    .line 304
    invoke-static {v6}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getCrossAxisAlignment(Landroidx/compose/foundation/layout/RowColumnParentData;)Landroidx/compose/foundation/layout/CrossAxisAlignment;

    move-result-object v6

    if-eqz v6, :cond_16

    .line 305
    invoke-virtual {v6, v4}, Landroidx/compose/foundation/layout/CrossAxisAlignment;->calculateAlignmentLinePosition$foundation_layout_release(Landroidx/compose/ui/layout/Placeable;)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_14

    :cond_16
    move-object/from16 v6, v20

    :goto_14
    if-eqz v6, :cond_19

    .line 306
    move-object v8, v6

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    .line 307
    invoke-interface {v2, v4}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;->crossAxisSize(Landroidx/compose/ui/layout/Placeable;)I

    move-result v4

    const/high16 v9, -0x80000000

    if-eq v8, v9, :cond_17

    .line 310
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_15

    :cond_17
    const/4 v6, 0x0

    :goto_15
    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eq v8, v9, :cond_18

    goto :goto_16

    :cond_18
    move v8, v4

    :goto_16
    sub-int/2addr v4, v8

    .line 314
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_1a
    move v4, v0

    goto :goto_17

    :cond_1b
    move/from16 v11, p10

    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_17
    add-int/2addr v13, v5

    const/4 v0, 0x0

    .line 326
    invoke-static {v13, v0}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v3

    invoke-static {v3, v14}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/2addr v1, v4

    move/from16 v3, p2

    .line 331
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    move/from16 v1, v18

    .line 333
    new-array v5, v1, [I

    move v3, v0

    :goto_18
    if-ge v3, v1, :cond_1c

    aput v0, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_1c
    move-object/from16 v3, p6

    move-object/from16 v8, v31

    .line 334
    invoke-interface {v2, v6, v8, v5, v3}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;->populateMainAxisPositions(I[I[ILandroidx/compose/ui/layout/MeasureScope;)V

    move-object/from16 v1, p0

    move-object/from16 v2, p8

    move-object/from16 v8, p11

    move/from16 v9, p12

    move/from16 v10, p9

    move/from16 v11, p10

    .line 341
    invoke-interface/range {v1 .. v11}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;->placeHelper([Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/MeasureScope;I[III[IIII)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic measure$default(Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;IIIIILandroidx/compose/ui/layout/MeasureScope;Ljava/util/List;[Landroidx/compose/ui/layout/Placeable;II[IIILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;
    .locals 15

    move/from16 v0, p13

    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    move-object v13, v1

    goto :goto_0

    :cond_0
    move-object/from16 v13, p11

    :goto_0
    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v14, v0

    goto :goto_1

    :cond_1
    move/from16 v14, p12

    :goto_1
    move-object v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    .line 74
    invoke-static/range {v2 .. v14}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt;->measure(Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;IIIIILandroidx/compose/ui/layout/MeasureScope;Ljava/util/List;[Landroidx/compose/ui/layout/Placeable;II[II)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0
.end method
