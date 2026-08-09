.class public final Landroidx/compose/material3/ModalBottomSheet_androidKt;
.super Ljava/lang/Object;
.source "ModalBottomSheet.android.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material3/ModalBottomSheet_androidKt$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nModalBottomSheet.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModalBottomSheet.android.kt\nandroidx/compose/material3/ModalBottomSheet_androidKt\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 4 Effects.kt\nandroidx/compose/runtime/EffectsKt\n+ 5 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 6 Effects.kt\nandroidx/compose/runtime/EffectsKt$rememberCoroutineScope$1\n+ 7 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,640:1\n148#2:641\n77#3:642\n77#3:643\n77#3:644\n488#4:645\n487#4,4:646\n491#4,2:653\n495#4:659\n1223#5,3:650\n1226#5,3:656\n1223#5,6:660\n1223#5,6:666\n1223#5,6:672\n487#6:655\n81#7:678\n*S KotlinDebug\n*F\n+ 1 ModalBottomSheet.android.kt\nandroidx/compose/material3/ModalBottomSheet_androidKt\n*L\n241#1:641\n274#1:642\n275#1:643\n276#1:644\n280#1:645\n280#1:646,4\n280#1:653,2\n280#1:659\n280#1:650,3\n280#1:656,3\n283#1:660,6\n306#1:666,6\n315#1:672,6\n280#1:655\n278#1:678\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\u00b9\u0001\u0010\u0000\u001a\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\t2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\r2\u0015\u0008\u0002\u0010\u0011\u001a\u000f\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0003\u00a2\u0006\u0002\u0008\u00122\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00162\u001c\u0010\u0017\u001a\u0018\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u00010\u0018\u00a2\u0006\u0002\u0008\u0012\u00a2\u0006\u0002\u0008\u001aH\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001b\u0010\u001c\u001aJ\u0010\u001d\u001a\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00032\u0006\u0010\u0015\u001a\u00020\u00162\u0012\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020!0\u001f2\u0011\u0010\u0017\u001a\r\u0012\u0004\u0012\u00020\u00010\u0003\u00a2\u0006\u0002\u0008\u0012H\u0001\u00a2\u0006\u0002\u0010\"\u001a\u000c\u0010#\u001a\u00020$*\u00020%H\u0000\u001a\u0014\u0010&\u001a\u00020$*\u00020\'2\u0006\u0010(\u001a\u00020$H\u0002\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006)\u00b2\u0006\u0015\u0010*\u001a\r\u0012\u0004\u0012\u00020\u00010\u0003\u00a2\u0006\u0002\u0008\u0012X\u008a\u0084\u0002"
    }
    d2 = {
        "ModalBottomSheet",
        "",
        "onDismissRequest",
        "Lkotlin/Function0;",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "sheetState",
        "Landroidx/compose/material3/SheetState;",
        "sheetMaxWidth",
        "Landroidx/compose/ui/unit/Dp;",
        "shape",
        "Landroidx/compose/ui/graphics/Shape;",
        "containerColor",
        "Landroidx/compose/ui/graphics/Color;",
        "contentColor",
        "tonalElevation",
        "scrimColor",
        "dragHandle",
        "Landroidx/compose/runtime/Composable;",
        "windowInsets",
        "Landroidx/compose/foundation/layout/WindowInsets;",
        "properties",
        "Landroidx/compose/material3/ModalBottomSheetProperties;",
        "content",
        "Lkotlin/Function1;",
        "Landroidx/compose/foundation/layout/ColumnScope;",
        "Lkotlin/ExtensionFunctionType;",
        "ModalBottomSheet-dYc4hso",
        "(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SheetState;FLandroidx/compose/ui/graphics/Shape;JJFJLkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/ModalBottomSheetProperties;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V",
        "ModalBottomSheetDialog",
        "predictiveBackProgress",
        "Landroidx/compose/animation/core/Animatable;",
        "",
        "Landroidx/compose/animation/core/AnimationVector1D;",
        "(Lkotlin/jvm/functions/Function0;Landroidx/compose/material3/ModalBottomSheetProperties;Landroidx/compose/animation/core/Animatable;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V",
        "isFlagSecureEnabled",
        "",
        "Landroid/view/View;",
        "shouldApplySecureFlag",
        "Landroidx/compose/ui/window/SecureFlagPolicy;",
        "isSecureFlagSetOnParent",
        "material3_release",
        "currentContent"
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
.method public static final synthetic ModalBottomSheet-dYc4hso(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SheetState;FLandroidx/compose/ui/graphics/Shape;JJFJLkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/ModalBottomSheetProperties;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V
    .locals 40
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Use constructor with contentWindowInsets parameter."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "ModalBottomSheet(onDismissRequest,modifier,sheetState,sheetMaxWidth,shape,containerColor,contentColor,tonalElevation,scrimColor,dragHandle,{ windowInsets },properties,content,)"
            imports = {}
        .end subannotation
    .end annotation

    move/from16 v15, p17

    move/from16 v14, p18

    move/from16 v13, p19

    const v0, 0x385187de

    move-object/from16 v1, p16

    .line 248
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v1

    const-string v2, "C(ModalBottomSheet)P(5,4,10,9:c#ui.unit.Dp,8,0:c#ui.graphics.Color,2:c#ui.graphics.Color,11:c#ui.unit.Dp,7:c#ui.graphics.Color,3,12,6)235@10240L31,237@10371L13,238@10434L14,239@10476L31,241@10584L10,243@10731L12,247@10884L485:ModalBottomSheet.android.kt#uh7d8r"

    invoke-static {v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, v13, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v2, v15, 0x6

    move v5, v2

    move-object/from16 v2, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v15, 0x6

    if-nez v2, :cond_2

    move-object/from16 v2, p0

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x4

    goto :goto_0

    :cond_1
    const/4 v5, 0x2

    :goto_0
    or-int/2addr v5, v15

    goto :goto_1

    :cond_2
    move-object/from16 v2, p0

    move v5, v15

    :goto_1
    and-int/lit8 v6, v13, 0x2

    if-eqz v6, :cond_3

    or-int/lit8 v5, v5, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v9, v15, 0x30

    if-nez v9, :cond_5

    move-object/from16 v9, p1

    invoke-interface {v1, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/16 v10, 0x20

    goto :goto_2

    :cond_4
    const/16 v10, 0x10

    :goto_2
    or-int/2addr v5, v10

    goto :goto_4

    :cond_5
    :goto_3
    move-object/from16 v9, p1

    :goto_4
    and-int/lit16 v10, v15, 0x180

    if-nez v10, :cond_8

    and-int/lit8 v10, v13, 0x4

    if-nez v10, :cond_6

    move-object/from16 v10, p2

    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    const/16 v16, 0x100

    goto :goto_5

    :cond_6
    move-object/from16 v10, p2

    :cond_7
    const/16 v16, 0x80

    :goto_5
    or-int v5, v5, v16

    goto :goto_6

    :cond_8
    move-object/from16 v10, p2

    :goto_6
    and-int/lit8 v16, v13, 0x8

    if-eqz v16, :cond_9

    or-int/lit16 v5, v5, 0xc00

    goto :goto_8

    :cond_9
    and-int/lit16 v3, v15, 0xc00

    if-nez v3, :cond_b

    move/from16 v3, p3

    invoke-interface {v1, v3}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v17

    if-eqz v17, :cond_a

    const/16 v17, 0x800

    goto :goto_7

    :cond_a
    const/16 v17, 0x400

    :goto_7
    or-int v5, v5, v17

    goto :goto_9

    :cond_b
    :goto_8
    move/from16 v3, p3

    :goto_9
    and-int/lit16 v4, v15, 0x6000

    if-nez v4, :cond_e

    and-int/lit8 v4, v13, 0x10

    if-nez v4, :cond_c

    move-object/from16 v4, p4

    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    const/16 v18, 0x4000

    goto :goto_a

    :cond_c
    move-object/from16 v4, p4

    :cond_d
    const/16 v18, 0x2000

    :goto_a
    or-int v5, v5, v18

    goto :goto_b

    :cond_e
    move-object/from16 v4, p4

    :goto_b
    const/high16 v18, 0x30000

    and-int v18, v15, v18

    if-nez v18, :cond_10

    and-int/lit8 v18, v13, 0x20

    move-wide/from16 v7, p5

    if-nez v18, :cond_f

    invoke-interface {v1, v7, v8}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v20

    if-eqz v20, :cond_f

    const/high16 v20, 0x20000

    goto :goto_c

    :cond_f
    const/high16 v20, 0x10000

    :goto_c
    or-int v5, v5, v20

    goto :goto_d

    :cond_10
    move-wide/from16 v7, p5

    :goto_d
    const/high16 v20, 0x180000

    and-int v20, v15, v20

    if-nez v20, :cond_12

    and-int/lit8 v20, v13, 0x40

    move-wide/from16 v11, p7

    if-nez v20, :cond_11

    invoke-interface {v1, v11, v12}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v22

    if-eqz v22, :cond_11

    const/high16 v22, 0x100000

    goto :goto_e

    :cond_11
    const/high16 v22, 0x80000

    :goto_e
    or-int v5, v5, v22

    goto :goto_f

    :cond_12
    move-wide/from16 v11, p7

    :goto_f
    and-int/lit16 v0, v13, 0x80

    const/high16 v23, 0xc00000

    if-eqz v0, :cond_13

    or-int v5, v5, v23

    move/from16 v2, p9

    goto :goto_11

    :cond_13
    and-int v23, v15, v23

    move/from16 v2, p9

    if-nez v23, :cond_15

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v23

    if-eqz v23, :cond_14

    const/high16 v23, 0x800000

    goto :goto_10

    :cond_14
    const/high16 v23, 0x400000

    :goto_10
    or-int v5, v5, v23

    :cond_15
    :goto_11
    const/high16 v23, 0x6000000

    and-int v23, v15, v23

    if-nez v23, :cond_18

    and-int/lit16 v2, v13, 0x100

    if-nez v2, :cond_16

    move-wide/from16 v2, p10

    invoke-interface {v1, v2, v3}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v23

    if-eqz v23, :cond_17

    const/high16 v23, 0x4000000

    goto :goto_12

    :cond_16
    move-wide/from16 v2, p10

    :cond_17
    const/high16 v23, 0x2000000

    :goto_12
    or-int v5, v5, v23

    goto :goto_13

    :cond_18
    move-wide/from16 v2, p10

    :goto_13
    and-int/lit16 v2, v13, 0x200

    const/high16 v3, 0x30000000

    if-eqz v2, :cond_19

    or-int/2addr v5, v3

    goto :goto_15

    :cond_19
    and-int/2addr v3, v15

    if-nez v3, :cond_1b

    move-object/from16 v3, p12

    invoke-interface {v1, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1a

    const/high16 v23, 0x20000000

    goto :goto_14

    :cond_1a
    const/high16 v23, 0x10000000

    :goto_14
    or-int v5, v5, v23

    goto :goto_16

    :cond_1b
    :goto_15
    move-object/from16 v3, p12

    :goto_16
    and-int/lit8 v23, v14, 0x6

    if-nez v23, :cond_1e

    and-int/lit16 v3, v13, 0x400

    if-nez v3, :cond_1c

    move-object/from16 v3, p13

    invoke-interface {v1, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1d

    const/16 v17, 0x4

    goto :goto_17

    :cond_1c
    move-object/from16 v3, p13

    :cond_1d
    const/16 v17, 0x2

    :goto_17
    or-int v17, v14, v17

    goto :goto_18

    :cond_1e
    move-object/from16 v3, p13

    move/from16 v17, v14

    :goto_18
    and-int/lit16 v3, v13, 0x800

    if-eqz v3, :cond_1f

    or-int/lit8 v17, v17, 0x30

    goto :goto_1a

    :cond_1f
    and-int/lit8 v23, v14, 0x30

    move-object/from16 v4, p14

    if-nez v23, :cond_21

    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_20

    const/16 v18, 0x20

    goto :goto_19

    :cond_20
    const/16 v18, 0x10

    :goto_19
    or-int v17, v17, v18

    :cond_21
    :goto_1a
    move/from16 v4, v17

    and-int/lit16 v7, v13, 0x1000

    if-eqz v7, :cond_22

    or-int/lit16 v4, v4, 0x180

    move-object/from16 v8, p15

    goto :goto_1c

    :cond_22
    and-int/lit16 v7, v14, 0x180

    move-object/from16 v8, p15

    if-nez v7, :cond_24

    invoke-interface {v1, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_23

    const/16 v20, 0x100

    goto :goto_1b

    :cond_23
    const/16 v20, 0x80

    :goto_1b
    or-int v4, v4, v20

    :cond_24
    :goto_1c
    const v7, 0x12492493

    and-int/2addr v7, v5

    const v8, 0x12492492

    if-ne v7, v8, :cond_26

    and-int/lit16 v7, v4, 0x93

    const/16 v8, 0x92

    if-ne v7, v8, :cond_26

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v7

    if-nez v7, :cond_25

    goto :goto_1d

    .line 262
    :cond_25
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 p16, v1

    move-object v2, v9

    move-object v3, v10

    move-wide v8, v11

    move/from16 v10, p9

    move-wide/from16 v11, p10

    goto/16 :goto_2b

    .line 248
    :cond_26
    :goto_1d
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v7, v15, 0x1

    const v8, -0x380001

    const v17, -0x70001

    const v18, -0xe001

    if-eqz v7, :cond_2e

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v7

    if-eqz v7, :cond_27

    goto :goto_1e

    .line 245
    :cond_27
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v13, 0x4

    if-eqz v0, :cond_28

    and-int/lit16 v5, v5, -0x381

    :cond_28
    and-int/lit8 v0, v13, 0x10

    if-eqz v0, :cond_29

    and-int v5, v5, v18

    :cond_29
    and-int/lit8 v0, v13, 0x20

    if-eqz v0, :cond_2a

    and-int v5, v5, v17

    :cond_2a
    and-int/lit8 v0, v13, 0x40

    if-eqz v0, :cond_2b

    and-int/2addr v5, v8

    :cond_2b
    and-int/lit16 v0, v13, 0x100

    if-eqz v0, :cond_2c

    const v0, -0xe000001

    and-int/2addr v5, v0

    :cond_2c
    and-int/lit16 v0, v13, 0x400

    if-eqz v0, :cond_2d

    and-int/lit8 v4, v4, -0xf

    :cond_2d
    move-object/from16 v8, p4

    move/from16 v0, p9

    move-wide/from16 v2, p10

    move-object/from16 v13, p13

    move-object/from16 v36, p14

    move v14, v4

    move v15, v5

    move-object v7, v10

    move/from16 v10, p3

    move-wide/from16 v5, p5

    move-object/from16 v4, p12

    goto/16 :goto_29

    :cond_2e
    :goto_1e
    if-eqz v6, :cond_2f

    .line 235
    sget-object v6, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v6, Landroidx/compose/ui/Modifier;

    goto :goto_1f

    :cond_2f
    move-object v6, v9

    :goto_1f
    and-int/lit8 v7, v13, 0x4

    const/4 v9, 0x0

    if-eqz v7, :cond_30

    const/4 v7, 0x0

    const/4 v10, 0x3

    .line 236
    invoke-static {v9, v7, v1, v9, v10}, Landroidx/compose/material3/ModalBottomSheetKt;->rememberModalBottomSheetState(ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material3/SheetState;

    move-result-object v7

    and-int/lit16 v5, v5, -0x381

    goto :goto_20

    :cond_30
    move-object v7, v10

    :goto_20
    if-eqz v16, :cond_31

    .line 237
    sget-object v10, Landroidx/compose/material3/BottomSheetDefaults;->INSTANCE:Landroidx/compose/material3/BottomSheetDefaults;

    invoke-virtual {v10}, Landroidx/compose/material3/BottomSheetDefaults;->getSheetMaxWidth-D9Ej5fM()F

    move-result v10

    goto :goto_21

    :cond_31
    move/from16 v10, p3

    :goto_21
    and-int/lit8 v16, v13, 0x10

    const/4 v9, 0x6

    if-eqz v16, :cond_32

    .line 238
    sget-object v8, Landroidx/compose/material3/BottomSheetDefaults;->INSTANCE:Landroidx/compose/material3/BottomSheetDefaults;

    invoke-virtual {v8, v1, v9}, Landroidx/compose/material3/BottomSheetDefaults;->getExpandedShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v8

    and-int v5, v5, v18

    goto :goto_22

    :cond_32
    move-object/from16 v8, p4

    :goto_22
    and-int/lit8 v16, v13, 0x20

    if-eqz v16, :cond_33

    move-object/from16 v16, v6

    .line 239
    sget-object v6, Landroidx/compose/material3/BottomSheetDefaults;->INSTANCE:Landroidx/compose/material3/BottomSheetDefaults;

    invoke-virtual {v6, v1, v9}, Landroidx/compose/material3/BottomSheetDefaults;->getContainerColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v18

    and-int v5, v5, v17

    move/from16 v17, v5

    move-wide/from16 v5, v18

    goto :goto_23

    :cond_33
    move-object/from16 v16, v6

    move/from16 v17, v5

    move-wide/from16 v5, p5

    :goto_23
    and-int/lit8 v18, v13, 0x40

    if-eqz v18, :cond_34

    shr-int/lit8 v11, v17, 0xf

    and-int/lit8 v11, v11, 0xe

    .line 240
    invoke-static {v5, v6, v1, v11}, Landroidx/compose/material3/ColorSchemeKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v11

    const v18, -0x380001

    and-int v17, v17, v18

    :cond_34
    if-eqz v0, :cond_35

    const/4 v0, 0x0

    int-to-float v0, v0

    .line 641
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    goto :goto_24

    :cond_35
    move/from16 v0, p9

    :goto_24
    and-int/lit16 v9, v13, 0x100

    if-eqz v9, :cond_36

    .line 242
    sget-object v9, Landroidx/compose/material3/BottomSheetDefaults;->INSTANCE:Landroidx/compose/material3/BottomSheetDefaults;

    move/from16 p2, v0

    const/4 v0, 0x6

    invoke-virtual {v9, v1, v0}, Landroidx/compose/material3/BottomSheetDefaults;->getScrimColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v18

    const v0, -0xe000001

    and-int v0, v17, v0

    goto :goto_25

    :cond_36
    move/from16 p2, v0

    move-wide/from16 v18, p10

    move/from16 v0, v17

    :goto_25
    if-eqz v2, :cond_37

    sget-object v2, Landroidx/compose/material3/ComposableSingletons$ModalBottomSheet_androidKt;->INSTANCE:Landroidx/compose/material3/ComposableSingletons$ModalBottomSheet_androidKt;

    invoke-virtual {v2}, Landroidx/compose/material3/ComposableSingletons$ModalBottomSheet_androidKt;->getLambda-1$material3_release()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    goto :goto_26

    :cond_37
    move-object/from16 v2, p12

    :goto_26
    and-int/lit16 v9, v13, 0x400

    if-eqz v9, :cond_38

    .line 244
    sget-object v9, Landroidx/compose/material3/BottomSheetDefaults;->INSTANCE:Landroidx/compose/material3/BottomSheetDefaults;

    move/from16 p3, v0

    const/4 v0, 0x6

    invoke-virtual {v9, v1, v0}, Landroidx/compose/material3/BottomSheetDefaults;->getWindowInsets(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object v0

    and-int/lit8 v4, v4, -0xf

    goto :goto_27

    :cond_38
    move/from16 p3, v0

    move-object/from16 v0, p13

    :goto_27
    if-eqz v3, :cond_39

    .line 245
    sget-object v3, Landroidx/compose/material3/ModalBottomSheetDefaults;->INSTANCE:Landroidx/compose/material3/ModalBottomSheetDefaults;

    invoke-virtual {v3}, Landroidx/compose/material3/ModalBottomSheetDefaults;->getProperties()Landroidx/compose/material3/ModalBottomSheetProperties;

    move-result-object v3

    move/from16 v15, p3

    move-object v13, v0

    move-object/from16 v36, v3

    goto :goto_28

    :cond_39
    move/from16 v15, p3

    move-object/from16 v36, p14

    move-object v13, v0

    :goto_28
    move v14, v4

    move-object/from16 v9, v16

    move/from16 v0, p2

    move-object v4, v2

    move-wide/from16 v2, v18

    :goto_29
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v16

    move-object/from16 p16, v1

    if-eqz v16, :cond_3a

    const-string/jumbo v1, "androidx.compose.material3.ModalBottomSheet (ModalBottomSheet.android.kt:247)"

    move-object/from16 p1, v4

    const v4, 0x385187de

    .line 248
    invoke-static {v4, v15, v14, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_2a

    :cond_3a
    move-object/from16 p1, v4

    :goto_2a
    new-instance v1, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$1;

    invoke-direct {v1, v13}, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$1;-><init>(Landroidx/compose/foundation/layout/WindowInsets;)V

    move-object/from16 v29, v1

    check-cast v29, Lkotlin/jvm/functions/Function2;

    const v1, 0x7ffffffe

    and-int v33, v15, v1

    and-int/lit16 v1, v14, 0x3f0

    move/from16 v34, v1

    const/16 v35, 0x0

    move-object/from16 v16, p0

    move-object/from16 v17, v9

    move-object/from16 v18, v7

    move/from16 v19, v10

    move-object/from16 v20, v8

    move-wide/from16 v21, v5

    move-wide/from16 v23, v11

    move/from16 v25, v0

    move-wide/from16 v26, v2

    move-object/from16 v28, p1

    move-object/from16 v30, v36

    move-object/from16 v31, p15

    move-object/from16 v32, p16

    invoke-static/range {v16 .. v35}, Landroidx/compose/material3/ModalBottomSheetKt;->ModalBottomSheet-dYc4hso(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SheetState;FLandroidx/compose/ui/graphics/Shape;JJFJLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/ModalBottomSheetProperties;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3b
    move v4, v10

    move-object v14, v13

    move-object/from16 v15, v36

    move-object/from16 v13, p1

    move v10, v0

    move-wide/from16 v38, v2

    move-object v3, v7

    move-wide v6, v5

    move-object v5, v8

    move-object v2, v9

    move-wide v8, v11

    move-wide/from16 v11, v38

    .line 262
    :goto_2b
    invoke-interface/range {p16 .. p16}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v1

    if-eqz v1, :cond_3c

    new-instance v20, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2;

    move-object/from16 v0, v20

    move-object/from16 v37, v1

    move-object/from16 v1, p0

    move-object/from16 v16, p15

    move/from16 v17, p17

    move/from16 v18, p18

    move/from16 v19, p19

    invoke-direct/range {v0 .. v19}, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SheetState;FLandroidx/compose/ui/graphics/Shape;JJFJLkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/ModalBottomSheetProperties;Lkotlin/jvm/functions/Function3;III)V

    move-object/from16 v0, v20

    check-cast v0, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, v37

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_3c
    return-void
.end method

.method public static final ModalBottomSheetDialog(Lkotlin/jvm/functions/Function0;Landroidx/compose/material3/ModalBottomSheetProperties;Landroidx/compose/animation/core/Animatable;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/material3/ModalBottomSheetProperties;",
            "Landroidx/compose/animation/core/Animatable<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move/from16 v14, p5

    const v0, 0x4acd0b82    # 6718913.0f

    move-object/from16 v1, p4

    .line 273
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v15

    const-string v1, "C(ModalBottomSheetDialog)P(1,3,2)273@11822L7,274@11861L7,275@11916L7,276@11946L28,277@12001L29,278@12050L38,279@12105L24,280@12157L21,282@12204L697,305@12932L129,305@12907L154,314@13078L182,314@13067L193:ModalBottomSheet.android.kt#uh7d8r"

    invoke-static {v15, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, v14, 0x6

    const/4 v9, 0x4

    if-nez v1, :cond_1

    invoke-interface {v15, v10}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v9

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v14

    goto :goto_1

    :cond_1
    move v1, v14

    :goto_1
    and-int/lit8 v2, v14, 0x30

    if-nez v2, :cond_3

    invoke-interface {v15, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x20

    goto :goto_2

    :cond_2
    const/16 v2, 0x10

    :goto_2
    or-int/2addr v1, v2

    :cond_3
    and-int/lit16 v2, v14, 0x180

    if-nez v2, :cond_6

    and-int/lit16 v2, v14, 0x200

    if-nez v2, :cond_4

    invoke-interface {v15, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_3

    :cond_4
    invoke-interface {v15, v12}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    :goto_3
    if-eqz v2, :cond_5

    const/16 v2, 0x100

    goto :goto_4

    :cond_5
    const/16 v2, 0x80

    :goto_4
    or-int/2addr v1, v2

    :cond_6
    and-int/lit16 v2, v14, 0xc00

    if-nez v2, :cond_8

    invoke-interface {v15, v13}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v2, 0x800

    goto :goto_5

    :cond_7
    const/16 v2, 0x400

    :goto_5
    or-int/2addr v1, v2

    :cond_8
    move v7, v1

    and-int/lit16 v1, v7, 0x493

    const/16 v2, 0x492

    if-ne v1, v2, :cond_a

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_6

    .line 322
    :cond_9
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_b

    .line 273
    :cond_a
    :goto_6
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, -0x1

    const-string/jumbo v2, "androidx.compose.material3.ModalBottomSheetDialog (ModalBottomSheet.android.kt:272)"

    invoke-static {v0, v7, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 274
    :cond_b
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalView()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/CompositionLocal;

    const v1, 0x789c5f52

    .line 642
    const-string v2, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {v15, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 274
    check-cast v0, Landroid/view/View;

    .line 275
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/CompositionLocal;

    .line 643
    invoke-static {v15, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 275
    move-object v6, v3

    check-cast v6, Landroidx/compose/ui/unit/Density;

    .line 276
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/CompositionLocal;

    .line 644
    invoke-static {v15, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 276
    move-object v5, v1

    check-cast v5, Landroidx/compose/ui/unit/LayoutDirection;

    const/4 v4, 0x0

    .line 277
    invoke-static {v15, v4}, Landroidx/compose/runtime/ComposablesKt;->rememberCompositionContext(Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/CompositionContext;

    move-result-object v3

    shr-int/lit8 v1, v7, 0x9

    and-int/lit8 v1, v1, 0xe

    .line 278
    invoke-static {v13, v15, v1}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v2

    new-array v1, v4, [Ljava/lang/Object;

    .line 279
    sget-object v16, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheetDialog$dialogId$1;->INSTANCE:Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheetDialog$dialogId$1;

    check-cast v16, Lkotlin/jvm/functions/Function0;

    const/16 v17, 0xc00

    const/16 v18, 0x6

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v21, v2

    move-object/from16 v2, v19

    move-object/from16 v22, v3

    move-object/from16 v3, v20

    move-object/from16 v4, v16

    move-object/from16 p4, v5

    move-object v5, v15

    move-object v8, v6

    move/from16 v6, v17

    move/from16 v17, v7

    move/from16 v7, v18

    invoke-static/range {v1 .. v7}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/util/UUID;

    const v1, 0x2e20b340

    .line 280
    const-string v2, "CC(rememberCoroutineScope)489@20472L144:Effects.kt#9igjgp"

    .line 645
    invoke-static {v15, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const v1, -0x38e26dd0

    .line 648
    const-string v2, "CC(remember):Effects.kt#9igjgp"

    .line 649
    invoke-static {v15, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 650
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .line 651
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_c

    .line 655
    sget-object v1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 654
    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v1, v15}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    .line 653
    new-instance v2, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    invoke-direct {v2, v1}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;-><init>(Lkotlinx/coroutines/CoroutineScope;)V

    .line 656
    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v1, v2

    .line 649
    :cond_c
    check-cast v1, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    invoke-static {v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 659
    invoke-virtual {v1}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v18

    .line 645
    invoke-static {v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const/4 v7, 0x0

    .line 281
    invoke-static {v15, v7}, Landroidx/compose/foundation/DarkThemeKt;->isSystemInDarkTheme(Landroidx/compose/runtime/Composer;I)Z

    move-result v19

    const v1, -0x761b8d75

    .line 283
    const-string v5, "CC(remember):ModalBottomSheet.android.kt#9igjgp"

    invoke-static {v15, v1, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v15, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 660
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    const/4 v4, 0x1

    if-nez v1, :cond_e

    .line 661
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v2, v1, :cond_d

    goto :goto_7

    :cond_d
    move v13, v4

    move-object/from16 v23, v5

    goto :goto_8

    .line 284
    :cond_e
    :goto_7
    new-instance v3, Landroidx/compose/material3/ModalBottomSheetDialogWrapper;

    move-object/from16 v20, v0

    move-object v0, v3

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v12, v3

    move-object/from16 v3, v20

    move v13, v4

    move-object/from16 v4, p4

    move-object/from16 v23, v5

    move-object v5, v8

    move v8, v7

    move-object/from16 v7, p2

    move-object/from16 v8, v18

    move/from16 v9, v19

    invoke-direct/range {v0 .. v9}, Landroidx/compose/material3/ModalBottomSheetDialogWrapper;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/material3/ModalBottomSheetProperties;Landroid/view/View;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;Ljava/util/UUID;Landroidx/compose/animation/core/Animatable;Lkotlinx/coroutines/CoroutineScope;Z)V

    .line 296
    new-instance v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheetDialog$dialog$1$1$1;

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheetDialog$dialog$1$1$1;-><init>(Landroidx/compose/runtime/State;)V

    const v1, -0x5d0a5e91

    invoke-static {v1, v13, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, v22

    invoke-virtual {v12, v1, v0}, Landroidx/compose/material3/ModalBottomSheetDialogWrapper;->setContent(Landroidx/compose/runtime/CompositionContext;Lkotlin/jvm/functions/Function2;)V

    .line 663
    invoke-interface {v15, v12}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v2, v12

    .line 283
    :goto_8
    check-cast v2, Landroidx/compose/material3/ModalBottomSheetDialogWrapper;

    invoke-static {v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const v0, -0x761b34ad

    move-object/from16 v1, v23

    .line 306
    invoke-static {v15, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    .line 666
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_f

    .line 667
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v3, v0, :cond_10

    .line 306
    :cond_f
    new-instance v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheetDialog$1$1;

    invoke-direct {v0, v2}, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheetDialog$1$1;-><init>(Landroidx/compose/material3/ModalBottomSheetDialogWrapper;)V

    move-object v3, v0

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 669
    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 306
    :cond_10
    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-static {v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const/4 v0, 0x0

    invoke-static {v2, v3, v15, v0}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    const v3, -0x761b2238

    .line 315
    invoke-static {v15, v3, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    and-int/lit8 v3, v17, 0xe

    const/4 v4, 0x4

    if-ne v3, v4, :cond_11

    move v4, v13

    goto :goto_9

    :cond_11
    move v4, v0

    :goto_9
    or-int/2addr v1, v4

    and-int/lit8 v3, v17, 0x70

    const/16 v4, 0x20

    if-ne v3, v4, :cond_12

    move v4, v13

    goto :goto_a

    :cond_12
    move v4, v0

    :goto_a
    or-int/2addr v1, v4

    move-object/from16 v3, p4

    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v1, v4

    .line 672
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v1, :cond_13

    .line 673
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v4, v1, :cond_14

    .line 315
    :cond_13
    new-instance v1, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheetDialog$2$1;

    invoke-direct {v1, v2, v10, v11, v3}, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheetDialog$2$1;-><init>(Landroidx/compose/material3/ModalBottomSheetDialogWrapper;Lkotlin/jvm/functions/Function0;Landroidx/compose/material3/ModalBottomSheetProperties;Landroidx/compose/ui/unit/LayoutDirection;)V

    move-object v4, v1

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 675
    invoke-interface {v15, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 315
    :cond_14
    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-static {v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    invoke-static {v4, v15, v0}, Landroidx/compose/runtime/EffectsKt;->SideEffect(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 322
    :cond_15
    :goto_b
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v6

    if-eqz v6, :cond_16

    new-instance v7, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheetDialog$3;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheetDialog$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/material3/ModalBottomSheetProperties;Landroidx/compose/animation/core/Animatable;Lkotlin/jvm/functions/Function2;I)V

    check-cast v7, Lkotlin/jvm/functions/Function2;

    invoke-interface {v6, v7}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_16
    return-void
.end method

.method private static final ModalBottomSheetDialog$lambda$0(Landroidx/compose/runtime/State;)Lkotlin/jvm/functions/Function2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "+",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;>;)",
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 678
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public static final synthetic access$ModalBottomSheetDialog$lambda$0(Landroidx/compose/runtime/State;)Lkotlin/jvm/functions/Function2;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/material3/ModalBottomSheet_androidKt;->ModalBottomSheetDialog$lambda$0(Landroidx/compose/runtime/State;)Lkotlin/jvm/functions/Function2;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$shouldApplySecureFlag(Landroidx/compose/ui/window/SecureFlagPolicy;Z)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/material3/ModalBottomSheet_androidKt;->shouldApplySecureFlag(Landroidx/compose/ui/window/SecureFlagPolicy;Z)Z

    move-result p0

    return p0
.end method

.method public static final isFlagSecureEnabled(Landroid/view/View;)Z
    .locals 1

    .line 625
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    instance-of v0, p0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/view/WindowManager$LayoutParams;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 627
    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 p0, p0, 0x2000

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private static final shouldApplySecureFlag(Landroidx/compose/ui/window/SecureFlagPolicy;Z)Z
    .locals 2

    .line 634
    sget-object v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Landroidx/compose/ui/window/SecureFlagPolicy;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 637
    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    move p1, v0

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
