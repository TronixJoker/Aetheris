.class public final Landroidx/compose/foundation/layout/ContextualFlowLayoutKt;
.super Ljava/lang/Object;
.source "ContextualFlowLayout.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nContextualFlowLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContextualFlowLayout.kt\nandroidx/compose/foundation/layout/ContextualFlowLayoutKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,562:1\n1225#2,6:563\n1225#2,6:569\n1225#2,6:575\n1225#2,6:581\n1225#2,6:587\n1225#2,6:593\n*S KotlinDebug\n*F\n+ 1 ContextualFlowLayout.kt\nandroidx/compose/foundation/layout/ContextualFlowLayoutKt\n*L\n75#1:563,6\n78#1:569,6\n150#1:575,6\n153#1:581,6\n344#1:587,6\n384#1:593,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000x\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u001a\u0084\u0001\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r21\u0010\u000e\u001a-\u0012\u0004\u0012\u00020\u0010\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0011\u0012\u0008\u0008\u0012\u0012\u0004\u0008\u0008(\u0013\u0012\u0004\u0012\u00020\u00010\u000f\u00a2\u0006\u0002\u0008\u0014\u00a2\u0006\u0002\u0008\u0015H\u0007\u00a2\u0006\u0002\u0010\u0016\u001a\u0084\u0001\u0010\u0017\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u001921\u0010\u000e\u001a-\u0012\u0004\u0012\u00020\u001a\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0011\u0012\u0008\u0008\u0012\u0012\u0004\u0008\u0008(\u0013\u0012\u0004\u0012\u00020\u00010\u000f\u00a2\u0006\u0002\u0008\u0014\u00a2\u0006\u0002\u0008\u0015H\u0007\u00a2\u0006\u0002\u0010\u001b\u001a\u00a5\u0001\u0010\u001c\u001a\u0014\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u001f0\u000f2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010 \u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010!\u001a\u00020\"2\u0006\u0010\u0002\u001a\u00020\u00032\u0017\u0010#\u001a\u0013\u0012\u000f\u0012\r\u0012\u0004\u0012\u00020\u00010%\u00a2\u0006\u0002\u0008\u00140$2;\u0010&\u001a7\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0011\u0012\u0008\u0008\u0012\u0012\u0004\u0008\u0008(\u0013\u0012\u0013\u0012\u00110\'\u00a2\u0006\u000c\u0008\u0011\u0012\u0008\u0008\u0012\u0012\u0004\u0008\u0008((\u0012\u0004\u0012\u00020\u00010\u000f\u00a2\u0006\u0002\u0008\u0014H\u0001\u00a2\u0006\u0002\u0010)\u001a\u00a5\u0001\u0010*\u001a\u0014\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u001f0\u000f2\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010 \u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010!\u001a\u00020\"2\u0006\u0010\u0002\u001a\u00020\u00032\u0017\u0010#\u001a\u0013\u0012\u000f\u0012\r\u0012\u0004\u0012\u00020\u00010%\u00a2\u0006\u0002\u0008\u00140$2;\u0010&\u001a7\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0011\u0012\u0008\u0008\u0012\u0012\u0004\u0008\u0008(\u0013\u0012\u0013\u0012\u00110\'\u00a2\u0006\u000c\u0008\u0011\u0012\u0008\u0008\u0012\u0012\u0004\u0008\u0008((\u0012\u0004\u0012\u00020\u00010\u000f\u00a2\u0006\u0002\u0008\u0014H\u0001\u00a2\u0006\u0002\u0010+\u00a8\u0006,"
    }
    d2 = {
        "ContextualFlowColumn",
        "",
        "itemCount",
        "",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "verticalArrangement",
        "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
        "horizontalArrangement",
        "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
        "maxItemsInEachColumn",
        "maxLines",
        "overflow",
        "Landroidx/compose/foundation/layout/ContextualFlowColumnOverflow;",
        "content",
        "Lkotlin/Function2;",
        "Landroidx/compose/foundation/layout/ContextualFlowColumnScope;",
        "Lkotlin/ParameterName;",
        "name",
        "index",
        "Landroidx/compose/runtime/Composable;",
        "Lkotlin/ExtensionFunctionType;",
        "(ILandroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;IILandroidx/compose/foundation/layout/ContextualFlowColumnOverflow;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;II)V",
        "ContextualFlowRow",
        "maxItemsInEachRow",
        "Landroidx/compose/foundation/layout/ContextualFlowRowOverflow;",
        "Landroidx/compose/foundation/layout/ContextualFlowRowScope;",
        "(ILandroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;IILandroidx/compose/foundation/layout/ContextualFlowRowOverflow;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;II)V",
        "contextualColumnMeasureHelper",
        "Landroidx/compose/ui/layout/SubcomposeMeasureScope;",
        "Landroidx/compose/ui/unit/Constraints;",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "maxItemsInMainAxis",
        "overflowState",
        "Landroidx/compose/foundation/layout/FlowLayoutOverflowState;",
        "overflowComposables",
        "",
        "Lkotlin/Function0;",
        "getComposable",
        "Landroidx/compose/foundation/layout/FlowLineInfo;",
        "info",
        "(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;IILandroidx/compose/foundation/layout/FlowLayoutOverflowState;ILjava/util/List;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;I)Lkotlin/jvm/functions/Function2;",
        "contextualRowMeasurementHelper",
        "(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;IILandroidx/compose/foundation/layout/FlowLayoutOverflowState;ILjava/util/List;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;I)Lkotlin/jvm/functions/Function2;",
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
.method public static final ContextualFlowColumn(ILandroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;IILandroidx/compose/foundation/layout/ContextualFlowColumnOverflow;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;II)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "II",
            "Landroidx/compose/foundation/layout/ContextualFlowColumnOverflow;",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Landroidx/compose/foundation/layout/ContextualFlowColumnScope;",
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

    move-object/from16 v8, p7

    move/from16 v9, p9

    move/from16 v10, p10

    const v0, -0x231371df

    move-object/from16 v1, p8

    .line 149
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v1

    const-string v2, "C(ContextualFlowColumn)P(2,5,7,1,3,4,6)149@6671L65,152@6782L193,165@7201L270,157@7000L471,175@7477L90:ContextualFlowLayout.kt#2w3rfo"

    invoke-static {v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, v10, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v2, v9, 0x6

    move v3, v2

    move/from16 v2, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v9, 0x6

    if-nez v2, :cond_2

    move/from16 v2, p0

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v9

    goto :goto_1

    :cond_2
    move/from16 v2, p0

    move v3, v9

    :goto_1
    and-int/lit8 v4, v10, 0x2

    if-eqz v4, :cond_3

    or-int/lit8 v3, v3, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v5, v9, 0x30

    if-nez v5, :cond_5

    move-object/from16 v5, p1

    invoke-interface {v1, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x20

    goto :goto_2

    :cond_4
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v3, v6

    goto :goto_4

    :cond_5
    :goto_3
    move-object/from16 v5, p1

    :goto_4
    and-int/lit8 v6, v10, 0x4

    if-eqz v6, :cond_6

    or-int/lit16 v3, v3, 0x180

    goto :goto_6

    :cond_6
    and-int/lit16 v7, v9, 0x180

    if-nez v7, :cond_8

    move-object/from16 v7, p2

    invoke-interface {v1, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    const/16 v11, 0x100

    goto :goto_5

    :cond_7
    const/16 v11, 0x80

    :goto_5
    or-int/2addr v3, v11

    goto :goto_7

    :cond_8
    :goto_6
    move-object/from16 v7, p2

    :goto_7
    and-int/lit8 v11, v10, 0x8

    if-eqz v11, :cond_9

    or-int/lit16 v3, v3, 0xc00

    goto :goto_9

    :cond_9
    and-int/lit16 v12, v9, 0xc00

    if-nez v12, :cond_b

    move-object/from16 v12, p3

    invoke-interface {v1, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    const/16 v13, 0x800

    goto :goto_8

    :cond_a
    const/16 v13, 0x400

    :goto_8
    or-int/2addr v3, v13

    goto :goto_a

    :cond_b
    :goto_9
    move-object/from16 v12, p3

    :goto_a
    and-int/lit8 v13, v10, 0x10

    if-eqz v13, :cond_c

    or-int/lit16 v3, v3, 0x6000

    goto :goto_c

    :cond_c
    and-int/lit16 v14, v9, 0x6000

    if-nez v14, :cond_e

    move/from16 v14, p4

    invoke-interface {v1, v14}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v15

    if-eqz v15, :cond_d

    const/16 v15, 0x4000

    goto :goto_b

    :cond_d
    const/16 v15, 0x2000

    :goto_b
    or-int/2addr v3, v15

    goto :goto_d

    :cond_e
    :goto_c
    move/from16 v14, p4

    :goto_d
    and-int/lit8 v15, v10, 0x20

    const/high16 v16, 0x30000

    if-eqz v15, :cond_f

    or-int v3, v3, v16

    move/from16 v0, p5

    goto :goto_f

    :cond_f
    and-int v16, v9, v16

    move/from16 v0, p5

    if-nez v16, :cond_11

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v17

    if-eqz v17, :cond_10

    const/high16 v17, 0x20000

    goto :goto_e

    :cond_10
    const/high16 v17, 0x10000

    :goto_e
    or-int v3, v3, v17

    :cond_11
    :goto_f
    and-int/lit8 v17, v10, 0x40

    const/high16 v18, 0x180000

    if-eqz v17, :cond_12

    or-int v3, v3, v18

    move-object/from16 v0, p6

    goto :goto_11

    :cond_12
    and-int v18, v9, v18

    move-object/from16 v0, p6

    if-nez v18, :cond_14

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_13

    const/high16 v18, 0x100000

    goto :goto_10

    :cond_13
    const/high16 v18, 0x80000

    :goto_10
    or-int v3, v3, v18

    :cond_14
    :goto_11
    and-int/lit16 v0, v10, 0x80

    const/high16 v18, 0xc00000

    if-eqz v0, :cond_15

    or-int v3, v3, v18

    goto :goto_13

    :cond_15
    and-int v0, v9, v18

    if-nez v0, :cond_17

    invoke-interface {v1, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/high16 v0, 0x800000

    goto :goto_12

    :cond_16
    const/high16 v0, 0x400000

    :goto_12
    or-int/2addr v3, v0

    :cond_17
    :goto_13
    const v0, 0x492493

    and-int/2addr v0, v3

    const v2, 0x492492

    if-ne v0, v2, :cond_19

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_14

    .line 180
    :cond_18
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v6, p5

    move-object v2, v5

    move-object v3, v7

    move-object v4, v12

    move v5, v14

    move-object/from16 v7, p6

    goto/16 :goto_1b

    :cond_19
    :goto_14
    if-eqz v4, :cond_1a

    .line 142
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    move-object v5, v0

    :cond_1a
    if-eqz v6, :cond_1b

    .line 143
    sget-object v0, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v0}, Landroidx/compose/foundation/layout/Arrangement;->getTop()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    move-result-object v0

    move-object v7, v0

    :cond_1b
    if-eqz v11, :cond_1c

    .line 144
    sget-object v0, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v0}, Landroidx/compose/foundation/layout/Arrangement;->getStart()Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    move-result-object v0

    goto :goto_15

    :cond_1c
    move-object v0, v12

    :goto_15
    const v2, 0x7fffffff

    if-eqz v13, :cond_1d

    move v4, v2

    goto :goto_16

    :cond_1d
    move v4, v14

    :goto_16
    if-eqz v15, :cond_1e

    goto :goto_17

    :cond_1e
    move/from16 v2, p5

    :goto_17
    if-eqz v17, :cond_1f

    .line 147
    sget-object v6, Landroidx/compose/foundation/layout/ContextualFlowColumnOverflow;->Companion:Landroidx/compose/foundation/layout/ContextualFlowColumnOverflow$Companion;

    invoke-virtual {v6}, Landroidx/compose/foundation/layout/ContextualFlowColumnOverflow$Companion;->getClip()Landroidx/compose/foundation/layout/ContextualFlowColumnOverflow;

    move-result-object v6

    goto :goto_18

    :cond_1f
    move-object/from16 v6, p6

    :goto_18
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v11

    if-eqz v11, :cond_20

    const/4 v11, -0x1

    const-string/jumbo v12, "androidx.compose.foundation.layout.ContextualFlowColumn (ContextualFlowLayout.kt:148)"

    const v13, -0x231371df

    .line 149
    invoke-static {v13, v3, v11, v12}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_20
    const v11, -0x3ef02b20

    .line 150
    const-string v12, "CC(remember):ContextualFlowLayout.kt#9igjgp"

    invoke-static {v1, v11, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/high16 v11, 0x380000

    and-int/2addr v11, v3

    const/4 v13, 0x1

    const/high16 v14, 0x100000

    if-ne v11, v14, :cond_21

    move v14, v13

    goto :goto_19

    :cond_21
    const/4 v14, 0x0

    .line 575
    :goto_19
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    if-nez v14, :cond_22

    .line 576
    sget-object v14, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v14}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v14

    if-ne v15, v14, :cond_23

    .line 151
    :cond_22
    invoke-virtual {v6}, Landroidx/compose/foundation/layout/ContextualFlowColumnOverflow;->createOverflowState$foundation_layout_release()Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    move-result-object v15

    .line 578
    invoke-interface {v1, v15}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 150
    :cond_23
    check-cast v15, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const v14, -0x3ef01cc0

    .line 153
    invoke-static {v1, v14, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/high16 v12, 0x100000

    if-ne v11, v12, :cond_24

    move v11, v13

    goto :goto_1a

    :cond_24
    const/4 v11, 0x0

    .line 581
    :goto_1a
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    if-nez v11, :cond_25

    .line 582
    sget-object v11, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v11}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v11

    if-ne v12, v11, :cond_26

    .line 154
    :cond_25
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v11

    check-cast v12, Ljava/util/List;

    .line 155
    invoke-virtual {v6, v15, v12}, Landroidx/compose/foundation/layout/ContextualFlowColumnOverflow;->addOverflowComposables$foundation_layout_release(Landroidx/compose/foundation/layout/FlowLayoutOverflowState;Ljava/util/List;)V

    .line 584
    invoke-interface {v1, v12}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 153
    :cond_26
    move-object/from16 v17, v12

    check-cast v17, Ljava/util/List;

    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 166
    new-instance v11, Landroidx/compose/foundation/layout/ContextualFlowLayoutKt$ContextualFlowColumn$measurePolicy$1;

    invoke-direct {v11, v8}, Landroidx/compose/foundation/layout/ContextualFlowLayoutKt$ContextualFlowColumn$measurePolicy$1;-><init>(Lkotlin/jvm/functions/Function4;)V

    const/16 v12, 0x36

    const v14, 0x1206cbf6

    invoke-static {v14, v13, v11, v1, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v11

    move-object/from16 v19, v11

    check-cast v19, Lkotlin/jvm/functions/Function4;

    shr-int/lit8 v11, v3, 0x6

    and-int/lit8 v12, v11, 0xe

    or-int v12, v12, v18

    and-int/lit8 v13, v11, 0x70

    or-int/2addr v12, v13

    and-int/lit16 v13, v11, 0x380

    or-int/2addr v12, v13

    and-int/lit16 v11, v11, 0x1c00

    or-int/2addr v11, v12

    shl-int/lit8 v12, v3, 0xf

    const/high16 v13, 0x70000

    and-int/2addr v12, v13

    or-int v20, v11, v12

    move-object v11, v7

    move-object v12, v0

    move v13, v4

    move v14, v2

    move-object/from16 p2, v0

    const/4 v0, 0x0

    move/from16 v16, p0

    move-object/from16 v18, v19

    move-object/from16 v19, v1

    .line 158
    invoke-static/range {v11 .. v20}, Landroidx/compose/foundation/layout/ContextualFlowLayoutKt;->contextualColumnMeasureHelper(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;IILandroidx/compose/foundation/layout/FlowLayoutOverflowState;ILjava/util/List;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;I)Lkotlin/jvm/functions/Function2;

    move-result-object v11

    shr-int/lit8 v3, v3, 0x3

    and-int/lit8 v3, v3, 0xe

    .line 176
    invoke-static {v5, v11, v1, v3, v0}, Landroidx/compose/ui/layout/SubcomposeLayoutKt;->SubcomposeLayout(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_27
    move-object v3, v7

    move-object v7, v6

    move v6, v2

    move-object v2, v5

    move v5, v4

    move-object/from16 v4, p2

    .line 180
    :goto_1b
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v11

    if-eqz v11, :cond_28

    new-instance v12, Landroidx/compose/foundation/layout/ContextualFlowLayoutKt$ContextualFlowColumn$1;

    move-object v0, v12

    move/from16 v1, p0

    move-object/from16 v8, p7

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Landroidx/compose/foundation/layout/ContextualFlowLayoutKt$ContextualFlowColumn$1;-><init>(ILandroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;IILandroidx/compose/foundation/layout/ContextualFlowColumnOverflow;Lkotlin/jvm/functions/Function4;II)V

    check-cast v12, Lkotlin/jvm/functions/Function2;

    invoke-interface {v11, v12}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_28
    return-void
.end method

.method public static final ContextualFlowRow(ILandroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;IILandroidx/compose/foundation/layout/ContextualFlowRowOverflow;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;II)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "II",
            "Landroidx/compose/foundation/layout/ContextualFlowRowOverflow;",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Landroidx/compose/foundation/layout/ContextualFlowRowScope;",
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

    move-object/from16 v8, p7

    move/from16 v9, p9

    move/from16 v10, p10

    const v0, -0x145f01c1

    move-object/from16 v1, p8

    .line 74
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v1

    const-string v2, "C(ContextualFlowRow)P(2,5,1,7,3,4,6)74@3434L65,77@3545L193,90@3961L267,82@3763L465,99@4233L90:ContextualFlowLayout.kt#2w3rfo"

    invoke-static {v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, v10, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v2, v9, 0x6

    move v3, v2

    move/from16 v2, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v9, 0x6

    if-nez v2, :cond_2

    move/from16 v2, p0

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v9

    goto :goto_1

    :cond_2
    move/from16 v2, p0

    move v3, v9

    :goto_1
    and-int/lit8 v4, v10, 0x2

    if-eqz v4, :cond_3

    or-int/lit8 v3, v3, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v5, v9, 0x30

    if-nez v5, :cond_5

    move-object/from16 v5, p1

    invoke-interface {v1, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x20

    goto :goto_2

    :cond_4
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v3, v6

    goto :goto_4

    :cond_5
    :goto_3
    move-object/from16 v5, p1

    :goto_4
    and-int/lit8 v6, v10, 0x4

    if-eqz v6, :cond_6

    or-int/lit16 v3, v3, 0x180

    goto :goto_6

    :cond_6
    and-int/lit16 v7, v9, 0x180

    if-nez v7, :cond_8

    move-object/from16 v7, p2

    invoke-interface {v1, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    const/16 v11, 0x100

    goto :goto_5

    :cond_7
    const/16 v11, 0x80

    :goto_5
    or-int/2addr v3, v11

    goto :goto_7

    :cond_8
    :goto_6
    move-object/from16 v7, p2

    :goto_7
    and-int/lit8 v11, v10, 0x8

    if-eqz v11, :cond_9

    or-int/lit16 v3, v3, 0xc00

    goto :goto_9

    :cond_9
    and-int/lit16 v12, v9, 0xc00

    if-nez v12, :cond_b

    move-object/from16 v12, p3

    invoke-interface {v1, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    const/16 v13, 0x800

    goto :goto_8

    :cond_a
    const/16 v13, 0x400

    :goto_8
    or-int/2addr v3, v13

    goto :goto_a

    :cond_b
    :goto_9
    move-object/from16 v12, p3

    :goto_a
    and-int/lit8 v13, v10, 0x10

    if-eqz v13, :cond_c

    or-int/lit16 v3, v3, 0x6000

    goto :goto_c

    :cond_c
    and-int/lit16 v14, v9, 0x6000

    if-nez v14, :cond_e

    move/from16 v14, p4

    invoke-interface {v1, v14}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v15

    if-eqz v15, :cond_d

    const/16 v15, 0x4000

    goto :goto_b

    :cond_d
    const/16 v15, 0x2000

    :goto_b
    or-int/2addr v3, v15

    goto :goto_d

    :cond_e
    :goto_c
    move/from16 v14, p4

    :goto_d
    and-int/lit8 v15, v10, 0x20

    const/high16 v16, 0x30000

    if-eqz v15, :cond_f

    or-int v3, v3, v16

    move/from16 v0, p5

    goto :goto_f

    :cond_f
    and-int v16, v9, v16

    move/from16 v0, p5

    if-nez v16, :cond_11

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v17

    if-eqz v17, :cond_10

    const/high16 v17, 0x20000

    goto :goto_e

    :cond_10
    const/high16 v17, 0x10000

    :goto_e
    or-int v3, v3, v17

    :cond_11
    :goto_f
    and-int/lit8 v17, v10, 0x40

    const/high16 v18, 0x180000

    if-eqz v17, :cond_12

    or-int v3, v3, v18

    move-object/from16 v0, p6

    goto :goto_11

    :cond_12
    and-int v18, v9, v18

    move-object/from16 v0, p6

    if-nez v18, :cond_14

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_13

    const/high16 v18, 0x100000

    goto :goto_10

    :cond_13
    const/high16 v18, 0x80000

    :goto_10
    or-int v3, v3, v18

    :cond_14
    :goto_11
    and-int/lit16 v0, v10, 0x80

    const/high16 v18, 0xc00000

    if-eqz v0, :cond_15

    or-int v3, v3, v18

    goto :goto_13

    :cond_15
    and-int v0, v9, v18

    if-nez v0, :cond_17

    invoke-interface {v1, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/high16 v0, 0x800000

    goto :goto_12

    :cond_16
    const/high16 v0, 0x400000

    :goto_12
    or-int/2addr v3, v0

    :cond_17
    :goto_13
    const v0, 0x492493

    and-int/2addr v0, v3

    const v2, 0x492492

    if-ne v0, v2, :cond_19

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_14

    .line 104
    :cond_18
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v6, p5

    move-object v2, v5

    move-object v3, v7

    move-object v4, v12

    move v5, v14

    move-object/from16 v7, p6

    goto/16 :goto_1b

    :cond_19
    :goto_14
    if-eqz v4, :cond_1a

    .line 67
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    move-object v5, v0

    :cond_1a
    if-eqz v6, :cond_1b

    .line 68
    sget-object v0, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v0}, Landroidx/compose/foundation/layout/Arrangement;->getStart()Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    move-result-object v0

    move-object v7, v0

    :cond_1b
    if-eqz v11, :cond_1c

    .line 69
    sget-object v0, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v0}, Landroidx/compose/foundation/layout/Arrangement;->getTop()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    move-result-object v0

    goto :goto_15

    :cond_1c
    move-object v0, v12

    :goto_15
    const v2, 0x7fffffff

    if-eqz v13, :cond_1d

    move v4, v2

    goto :goto_16

    :cond_1d
    move v4, v14

    :goto_16
    if-eqz v15, :cond_1e

    goto :goto_17

    :cond_1e
    move/from16 v2, p5

    :goto_17
    if-eqz v17, :cond_1f

    .line 72
    sget-object v6, Landroidx/compose/foundation/layout/ContextualFlowRowOverflow;->Companion:Landroidx/compose/foundation/layout/ContextualFlowRowOverflow$Companion;

    invoke-virtual {v6}, Landroidx/compose/foundation/layout/ContextualFlowRowOverflow$Companion;->getClip()Landroidx/compose/foundation/layout/ContextualFlowRowOverflow;

    move-result-object v6

    goto :goto_18

    :cond_1f
    move-object/from16 v6, p6

    :goto_18
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v11

    if-eqz v11, :cond_20

    const/4 v11, -0x1

    const-string/jumbo v12, "androidx.compose.foundation.layout.ContextualFlowRow (ContextualFlowLayout.kt:73)"

    const v13, -0x145f01c1

    .line 74
    invoke-static {v13, v3, v11, v12}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_20
    const v11, 0x499d6c92    # 1289618.2f

    .line 75
    const-string v12, "CC(remember):ContextualFlowLayout.kt#9igjgp"

    invoke-static {v1, v11, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/high16 v11, 0x380000

    and-int/2addr v11, v3

    const/4 v13, 0x1

    const/high16 v14, 0x100000

    if-ne v11, v14, :cond_21

    move v14, v13

    goto :goto_19

    :cond_21
    const/4 v14, 0x0

    .line 563
    :goto_19
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    if-nez v14, :cond_22

    .line 564
    sget-object v14, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v14}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v14

    if-ne v15, v14, :cond_23

    .line 76
    :cond_22
    invoke-virtual {v6}, Landroidx/compose/foundation/layout/ContextualFlowRowOverflow;->createOverflowState$foundation_layout_release()Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    move-result-object v15

    .line 566
    invoke-interface {v1, v15}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 75
    :cond_23
    check-cast v15, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const v14, 0x499d7af2    # 1290078.2f

    .line 78
    invoke-static {v1, v14, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/high16 v12, 0x100000

    if-ne v11, v12, :cond_24

    move v11, v13

    goto :goto_1a

    :cond_24
    const/4 v11, 0x0

    .line 569
    :goto_1a
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    if-nez v11, :cond_25

    .line 570
    sget-object v11, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v11}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v11

    if-ne v12, v11, :cond_26

    .line 79
    :cond_25
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v11

    check-cast v12, Ljava/util/List;

    .line 80
    invoke-virtual {v6, v15, v12}, Landroidx/compose/foundation/layout/ContextualFlowRowOverflow;->addOverflowComposables$foundation_layout_release(Landroidx/compose/foundation/layout/FlowLayoutOverflowState;Ljava/util/List;)V

    .line 572
    invoke-interface {v1, v12}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 78
    :cond_26
    move-object/from16 v17, v12

    check-cast v17, Ljava/util/List;

    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 91
    new-instance v11, Landroidx/compose/foundation/layout/ContextualFlowLayoutKt$ContextualFlowRow$measurePolicy$1;

    invoke-direct {v11, v8}, Landroidx/compose/foundation/layout/ContextualFlowLayoutKt$ContextualFlowRow$measurePolicy$1;-><init>(Lkotlin/jvm/functions/Function4;)V

    const/16 v12, 0x36

    const v14, -0x8129a4

    invoke-static {v14, v13, v11, v1, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v11

    move-object/from16 v19, v11

    check-cast v19, Lkotlin/jvm/functions/Function4;

    shr-int/lit8 v11, v3, 0x6

    and-int/lit8 v12, v11, 0xe

    or-int v12, v12, v18

    and-int/lit8 v13, v11, 0x70

    or-int/2addr v12, v13

    and-int/lit16 v13, v11, 0x380

    or-int/2addr v12, v13

    and-int/lit16 v11, v11, 0x1c00

    or-int/2addr v11, v12

    shl-int/lit8 v12, v3, 0xf

    const/high16 v13, 0x70000

    and-int/2addr v12, v13

    or-int v20, v11, v12

    move-object v11, v7

    move-object v12, v0

    move v13, v4

    move v14, v2

    move-object/from16 p2, v0

    const/4 v0, 0x0

    move/from16 v16, p0

    move-object/from16 v18, v19

    move-object/from16 v19, v1

    .line 83
    invoke-static/range {v11 .. v20}, Landroidx/compose/foundation/layout/ContextualFlowLayoutKt;->contextualRowMeasurementHelper(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;IILandroidx/compose/foundation/layout/FlowLayoutOverflowState;ILjava/util/List;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;I)Lkotlin/jvm/functions/Function2;

    move-result-object v11

    shr-int/lit8 v3, v3, 0x3

    and-int/lit8 v3, v3, 0xe

    .line 100
    invoke-static {v5, v11, v1, v3, v0}, Landroidx/compose/ui/layout/SubcomposeLayoutKt;->SubcomposeLayout(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_27
    move-object v3, v7

    move-object v7, v6

    move v6, v2

    move-object v2, v5

    move v5, v4

    move-object/from16 v4, p2

    .line 104
    :goto_1b
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v11

    if-eqz v11, :cond_28

    new-instance v12, Landroidx/compose/foundation/layout/ContextualFlowLayoutKt$ContextualFlowRow$1;

    move-object v0, v12

    move/from16 v1, p0

    move-object/from16 v8, p7

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Landroidx/compose/foundation/layout/ContextualFlowLayoutKt$ContextualFlowRow$1;-><init>(ILandroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;IILandroidx/compose/foundation/layout/ContextualFlowRowOverflow;Lkotlin/jvm/functions/Function4;II)V

    check-cast v12, Lkotlin/jvm/functions/Function2;

    invoke-interface {v11, v12}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_28
    return-void
.end method

.method public static final contextualColumnMeasureHelper(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;IILandroidx/compose/foundation/layout/FlowLayoutOverflowState;ILjava/util/List;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;I)Lkotlin/jvm/functions/Function2;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "II",
            "Landroidx/compose/foundation/layout/FlowLayoutOverflowState;",
            "I",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;>;",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Landroidx/compose/foundation/layout/FlowLineInfo;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/ui/layout/SubcomposeMeasureScope;",
            "Landroidx/compose/ui/unit/Constraints;",
            "Landroidx/compose/ui/layout/MeasureResult;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p8

    move/from16 v1, p9

    const-string v2, "C(contextualColumnMeasureHelper)P(7,1,3,4,6,2,5)383@15228L850:ContextualFlowLayout.kt#2w3rfo"

    const v3, 0x3c2fc264

    .line 383
    invoke-static {v0, v3, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    const-string/jumbo v4, "androidx.compose.foundation.layout.contextualColumnMeasureHelper (ContextualFlowLayout.kt:382)"

    invoke-static {v3, v1, v2, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    const v2, -0x75e996d3

    const-string v3, "CC(remember):ContextualFlowLayout.kt#9igjgp"

    .line 384
    invoke-static {v0, v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v2, v1, 0xe

    xor-int/lit8 v2, v2, 0x6

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-le v2, v3, :cond_1

    move-object/from16 v2, p0

    .line 385
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_0

    :cond_1
    move-object/from16 v2, p0

    :goto_0
    and-int/lit8 v6, v1, 0x6

    if-ne v6, v3, :cond_3

    :cond_2
    move v3, v5

    goto :goto_1

    :cond_3
    move v3, v4

    :goto_1
    and-int/lit8 v6, v1, 0x70

    xor-int/lit8 v6, v6, 0x30

    const/16 v7, 0x20

    move-object/from16 v8, p1

    if-le v6, v7, :cond_4

    .line 386
    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    :cond_4
    and-int/lit8 v6, v1, 0x30

    if-ne v6, v7, :cond_6

    :cond_5
    move v6, v5

    goto :goto_2

    :cond_6
    move v6, v4

    :goto_2
    or-int/2addr v3, v6

    and-int/lit16 v6, v1, 0x380

    xor-int/lit16 v6, v6, 0x180

    const/16 v7, 0x100

    move/from16 v15, p2

    if-le v6, v7, :cond_7

    .line 387
    invoke-interface {v0, v15}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v6

    if-nez v6, :cond_8

    :cond_7
    and-int/lit16 v6, v1, 0x180

    if-ne v6, v7, :cond_9

    :cond_8
    move v6, v5

    goto :goto_3

    :cond_9
    move v6, v4

    :goto_3
    or-int/2addr v3, v6

    and-int/lit16 v6, v1, 0x1c00

    xor-int/lit16 v6, v6, 0xc00

    const/16 v7, 0x800

    move/from16 v14, p3

    if-le v6, v7, :cond_a

    .line 388
    invoke-interface {v0, v14}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v6

    if-nez v6, :cond_b

    :cond_a
    and-int/lit16 v6, v1, 0xc00

    if-ne v6, v7, :cond_c

    :cond_b
    move v6, v5

    goto :goto_4

    :cond_c
    move v6, v4

    :goto_4
    or-int/2addr v3, v6

    move-object/from16 v13, p4

    .line 389
    invoke-interface {v0, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v3, v6

    const/high16 v6, 0x70000

    and-int/2addr v6, v1

    const/high16 v7, 0x30000

    xor-int/2addr v6, v7

    const/high16 v9, 0x20000

    move/from16 v12, p5

    if-le v6, v9, :cond_d

    .line 390
    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v6

    if-nez v6, :cond_e

    :cond_d
    and-int v6, v1, v7

    if-ne v6, v9, :cond_f

    :cond_e
    move v6, v5

    goto :goto_5

    :cond_f
    move v6, v4

    :goto_5
    or-int/2addr v3, v6

    const/high16 v6, 0x1c00000

    and-int/2addr v6, v1

    const/high16 v7, 0xc00000

    xor-int/2addr v6, v7

    const/high16 v9, 0x800000

    move-object/from16 v11, p7

    if-le v6, v9, :cond_10

    .line 391
    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    :cond_10
    and-int/2addr v1, v7

    if-ne v1, v9, :cond_12

    :cond_11
    move v4, v5

    :cond_12
    or-int v1, v3, v4

    .line 593
    invoke-interface/range {p8 .. p8}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_13

    .line 594
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v3, v1, :cond_14

    .line 396
    :cond_13
    invoke-interface/range {p0 .. p0}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->getSpacing-D9Ej5fM()F

    move-result v10

    .line 397
    invoke-static {}, Landroidx/compose/foundation/layout/FlowLayoutKt;->getCROSS_AXIS_ALIGNMENT_START()Landroidx/compose/foundation/layout/CrossAxisAlignment;

    move-result-object v1

    .line 399
    invoke-interface/range {p1 .. p1}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->getSpacing-D9Ej5fM()F

    move-result v3

    .line 393
    new-instance v4, Landroidx/compose/foundation/layout/FlowMeasureLazyPolicy;

    const/4 v7, 0x0

    const/16 v19, 0x0

    move-object v6, v4

    move-object/from16 v8, p1

    move-object/from16 v9, p0

    move-object v11, v1

    move v12, v3

    move/from16 v13, p5

    move/from16 v14, p3

    move/from16 v15, p2

    move-object/from16 v16, p4

    move-object/from16 v17, p6

    move-object/from16 v18, p7

    invoke-direct/range {v6 .. v19}, Landroidx/compose/foundation/layout/FlowMeasureLazyPolicy;-><init>(ZLandroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;FLandroidx/compose/foundation/layout/CrossAxisAlignment;FIIILandroidx/compose/foundation/layout/FlowLayoutOverflowState;Ljava/util/List;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 406
    invoke-virtual {v4}, Landroidx/compose/foundation/layout/FlowMeasureLazyPolicy;->getMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    .line 596
    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 384
    :cond_14
    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-static/range {p8 .. p8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 383
    :cond_15
    invoke-static/range {p8 .. p8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    return-object v3
.end method

.method public static final contextualRowMeasurementHelper(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;IILandroidx/compose/foundation/layout/FlowLayoutOverflowState;ILjava/util/List;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;I)Lkotlin/jvm/functions/Function2;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "II",
            "Landroidx/compose/foundation/layout/FlowLayoutOverflowState;",
            "I",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;>;",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Landroidx/compose/foundation/layout/FlowLineInfo;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/ui/layout/SubcomposeMeasureScope;",
            "Landroidx/compose/ui/unit/Constraints;",
            "Landroidx/compose/ui/layout/MeasureResult;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p8

    move/from16 v1, p9

    const-string v2, "C(contextualRowMeasurementHelper)P(1,7,3,4,6,2,5)343@13891L847:ContextualFlowLayout.kt#2w3rfo"

    const v3, -0x2957cb8

    .line 343
    invoke-static {v0, v3, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    const-string/jumbo v4, "androidx.compose.foundation.layout.contextualRowMeasurementHelper (ContextualFlowLayout.kt:342)"

    invoke-static {v3, v1, v2, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    const v2, 0x43e3433a

    const-string v3, "CC(remember):ContextualFlowLayout.kt#9igjgp"

    .line 344
    invoke-static {v0, v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v2, v1, 0xe

    xor-int/lit8 v2, v2, 0x6

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-le v2, v3, :cond_1

    move-object/from16 v2, p0

    .line 345
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_0

    :cond_1
    move-object/from16 v2, p0

    :goto_0
    and-int/lit8 v6, v1, 0x6

    if-ne v6, v3, :cond_3

    :cond_2
    move v3, v5

    goto :goto_1

    :cond_3
    move v3, v4

    :goto_1
    and-int/lit8 v6, v1, 0x70

    xor-int/lit8 v6, v6, 0x30

    const/16 v7, 0x20

    move-object/from16 v9, p1

    if-le v6, v7, :cond_4

    .line 346
    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    :cond_4
    and-int/lit8 v6, v1, 0x30

    if-ne v6, v7, :cond_6

    :cond_5
    move v6, v5

    goto :goto_2

    :cond_6
    move v6, v4

    :goto_2
    or-int/2addr v3, v6

    and-int/lit16 v6, v1, 0x380

    xor-int/lit16 v6, v6, 0x180

    const/16 v7, 0x100

    move/from16 v15, p2

    if-le v6, v7, :cond_7

    .line 347
    invoke-interface {v0, v15}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v6

    if-nez v6, :cond_8

    :cond_7
    and-int/lit16 v6, v1, 0x180

    if-ne v6, v7, :cond_9

    :cond_8
    move v6, v5

    goto :goto_3

    :cond_9
    move v6, v4

    :goto_3
    or-int/2addr v3, v6

    and-int/lit16 v6, v1, 0x1c00

    xor-int/lit16 v6, v6, 0xc00

    const/16 v7, 0x800

    move/from16 v14, p3

    if-le v6, v7, :cond_a

    .line 348
    invoke-interface {v0, v14}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v6

    if-nez v6, :cond_b

    :cond_a
    and-int/lit16 v6, v1, 0xc00

    if-ne v6, v7, :cond_c

    :cond_b
    move v6, v5

    goto :goto_4

    :cond_c
    move v6, v4

    :goto_4
    or-int/2addr v3, v6

    move-object/from16 v13, p4

    .line 349
    invoke-interface {v0, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v3, v6

    const/high16 v6, 0x70000

    and-int/2addr v6, v1

    const/high16 v7, 0x30000

    xor-int/2addr v6, v7

    const/high16 v8, 0x20000

    move/from16 v12, p5

    if-le v6, v8, :cond_d

    .line 350
    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v6

    if-nez v6, :cond_e

    :cond_d
    and-int v6, v1, v7

    if-ne v6, v8, :cond_f

    :cond_e
    move v6, v5

    goto :goto_5

    :cond_f
    move v6, v4

    :goto_5
    or-int/2addr v3, v6

    const/high16 v6, 0x1c00000

    and-int/2addr v6, v1

    const/high16 v7, 0xc00000

    xor-int/2addr v6, v7

    const/high16 v8, 0x800000

    move-object/from16 v11, p7

    if-le v6, v8, :cond_10

    .line 351
    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    :cond_10
    and-int/2addr v1, v7

    if-ne v1, v8, :cond_12

    :cond_11
    move v4, v5

    :cond_12
    or-int v1, v3, v4

    .line 587
    invoke-interface/range {p8 .. p8}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_13

    .line 588
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v3, v1, :cond_14

    .line 356
    :cond_13
    invoke-interface/range {p0 .. p0}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->getSpacing-D9Ej5fM()F

    move-result v10

    .line 357
    invoke-static {}, Landroidx/compose/foundation/layout/FlowLayoutKt;->getCROSS_AXIS_ALIGNMENT_TOP()Landroidx/compose/foundation/layout/CrossAxisAlignment;

    move-result-object v1

    .line 359
    invoke-interface/range {p1 .. p1}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->getSpacing-D9Ej5fM()F

    move-result v3

    .line 353
    new-instance v4, Landroidx/compose/foundation/layout/FlowMeasureLazyPolicy;

    const/4 v7, 0x1

    const/16 v19, 0x0

    move-object v6, v4

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object v11, v1

    move v12, v3

    move/from16 v13, p5

    move/from16 v14, p3

    move/from16 v15, p2

    move-object/from16 v16, p4

    move-object/from16 v17, p6

    move-object/from16 v18, p7

    invoke-direct/range {v6 .. v19}, Landroidx/compose/foundation/layout/FlowMeasureLazyPolicy;-><init>(ZLandroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;FLandroidx/compose/foundation/layout/CrossAxisAlignment;FIIILandroidx/compose/foundation/layout/FlowLayoutOverflowState;Ljava/util/List;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 366
    invoke-virtual {v4}, Landroidx/compose/foundation/layout/FlowMeasureLazyPolicy;->getMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    .line 590
    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 344
    :cond_14
    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-static/range {p8 .. p8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 343
    :cond_15
    invoke-static/range {p8 .. p8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    return-object v3
.end method
