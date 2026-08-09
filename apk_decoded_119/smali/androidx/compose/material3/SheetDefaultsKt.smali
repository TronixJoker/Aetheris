.class public final Landroidx/compose/material3/SheetDefaultsKt;
.super Ljava/lang/Object;
.source "SheetDefaults.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSheetDefaults.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SheetDefaults.kt\nandroidx/compose/material3/SheetDefaultsKt\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,436:1\n77#2:437\n1223#3,6:438\n148#4:444\n*S KotlinDebug\n*F\n+ 1 SheetDefaults.kt\nandroidx/compose/material3/SheetDefaultsKt\n*L\n409#1:437\n421#1:438,6\n432#1:444\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a;\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2!\u0010\u000c\u001a\u001d\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0010\u0012\u0004\u0012\u00020\u00110\rH\u0000\u001aA\u0010\u0012\u001a\u00020\t2\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00142\u0014\u0008\u0002\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00140\r2\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0014H\u0001\u00a2\u0006\u0002\u0010\u0019\"\u0014\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u0010\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0005\u00a8\u0006\u001a"
    }
    d2 = {
        "BottomSheetAnimationSpec",
        "Landroidx/compose/animation/core/AnimationSpec;",
        "",
        "DragHandleVerticalPadding",
        "Landroidx/compose/ui/unit/Dp;",
        "F",
        "ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection",
        "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;",
        "sheetState",
        "Landroidx/compose/material3/SheetState;",
        "orientation",
        "Landroidx/compose/foundation/gestures/Orientation;",
        "onFling",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "velocity",
        "",
        "rememberSheetState",
        "skipPartiallyExpanded",
        "",
        "confirmValueChange",
        "Landroidx/compose/material3/SheetValue;",
        "initialValue",
        "skipHiddenState",
        "(ZLkotlin/jvm/functions/Function1;Landroidx/compose/material3/SheetValue;ZLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/SheetState;",
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


# static fields
.field private static final BottomSheetAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final DragHandleVerticalPadding:F


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x16

    int-to-float v0, v0

    .line 444
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 432
    sput v0, Landroidx/compose/material3/SheetDefaultsKt;->DragHandleVerticalPadding:F

    .line 435
    invoke-static {}, Landroidx/compose/animation/core/EasingKt;->getFastOutSlowInEasing()Landroidx/compose/animation/core/Easing;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/16 v3, 0x12c

    const/4 v4, 0x0

    invoke-static {v3, v4, v0, v1, v2}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;ILjava/lang/Object;)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v0

    check-cast v0, Landroidx/compose/animation/core/AnimationSpec;

    sput-object v0, Landroidx/compose/material3/SheetDefaultsKt;->BottomSheetAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;

    return-void
.end method

.method public static final ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection(Landroidx/compose/material3/SheetState;Landroidx/compose/foundation/gestures/Orientation;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/SheetState;",
            "Landroidx/compose/foundation/gestures/Orientation;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;"
        }
    .end annotation

    .line 348
    new-instance v0, Landroidx/compose/material3/SheetDefaultsKt$ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection$1;

    invoke-direct {v0, p0, p2, p1}, Landroidx/compose/material3/SheetDefaultsKt$ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection$1;-><init>(Landroidx/compose/material3/SheetState;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/gestures/Orientation;)V

    check-cast v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    return-object v0
.end method

.method public static final synthetic access$getBottomSheetAnimationSpec$p()Landroidx/compose/animation/core/AnimationSpec;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/material3/SheetDefaultsKt;->BottomSheetAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;

    return-object v0
.end method

.method public static final synthetic access$getDragHandleVerticalPadding$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material3/SheetDefaultsKt;->DragHandleVerticalPadding:F

    return v0
.end method

.method public static final rememberSheetState(ZLkotlin/jvm/functions/Function1;Landroidx/compose/material3/SheetValue;ZLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/SheetState;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/material3/SheetValue;",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/material3/SheetValue;",
            "Z",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/material3/SheetState;"
        }
    .end annotation

    move-object/from16 v7, p4

    move/from16 v0, p5

    const-string v1, "C(rememberSheetState)P(3)408@15981L7,420@16374L180,409@16000L554:SheetDefaults.kt#uh7d8r"

    const v2, 0x3d8f0948

    .line 408
    invoke-static {v7, v2, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v1, p6, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v9, v3

    goto :goto_0

    :cond_0
    move v9, p0

    :goto_0
    and-int/lit8 v1, p6, 0x2

    if-eqz v1, :cond_1

    .line 405
    sget-object v1, Landroidx/compose/material3/SheetDefaultsKt$rememberSheetState$1;->INSTANCE:Landroidx/compose/material3/SheetDefaultsKt$rememberSheetState$1;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    move-object v12, v1

    goto :goto_1

    :cond_1
    move-object v12, p1

    :goto_1
    and-int/lit8 v1, p6, 0x4

    if-eqz v1, :cond_2

    .line 406
    sget-object v1, Landroidx/compose/material3/SheetValue;->Hidden:Landroidx/compose/material3/SheetValue;

    move-object v11, v1

    goto :goto_2

    :cond_2
    move-object/from16 v11, p2

    :goto_2
    and-int/lit8 v1, p6, 0x8

    if-eqz v1, :cond_3

    move v13, v3

    goto :goto_3

    :cond_3
    move/from16 v13, p3

    .line 407
    :goto_3
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, -0x1

    const-string/jumbo v4, "androidx.compose.material3.rememberSheetState (SheetDefaults.kt:407)"

    .line 408
    invoke-static {v2, v0, v1, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 409
    :cond_4
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/CompositionLocal;

    const v2, 0x789c5f52

    const-string v4, "CC:CompositionLocal.kt#9igjgp"

    .line 437
    invoke-static {v7, v2, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    invoke-static/range {p4 .. p4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 409
    move-object v10, v1

    check-cast v10, Landroidx/compose/ui/unit/Density;

    .line 411
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 413
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v1, v12, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 415
    sget-object v2, Landroidx/compose/material3/SheetState;->Companion:Landroidx/compose/material3/SheetState$Companion;

    invoke-virtual {v2, v9, v12, v10, v13}, Landroidx/compose/material3/SheetState$Companion;->Saver(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/unit/Density;Z)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v2

    const v4, -0x14d3b92a

    const-string v5, "CC(remember):SheetDefaults.kt#9igjgp"

    .line 421
    invoke-static {v7, v4, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v4, v0, 0xe

    xor-int/lit8 v4, v4, 0x6

    const/4 v5, 0x4

    const/4 v6, 0x1

    if-le v4, v5, :cond_5

    invoke-interface {v7, v9}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v4

    if-nez v4, :cond_6

    :cond_5
    and-int/lit8 v4, v0, 0x6

    if-ne v4, v5, :cond_7

    :cond_6
    move v4, v6

    goto :goto_4

    :cond_7
    move v4, v3

    :goto_4
    invoke-interface {v7, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    and-int/lit16 v5, v0, 0x380

    xor-int/lit16 v5, v5, 0x180

    const/16 v8, 0x100

    if-le v5, v8, :cond_8

    invoke-interface {v7, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    :cond_8
    and-int/lit16 v5, v0, 0x180

    if-ne v5, v8, :cond_a

    :cond_9
    move v5, v6

    goto :goto_5

    :cond_a
    move v5, v3

    :goto_5
    or-int/2addr v4, v5

    and-int/lit8 v5, v0, 0x70

    xor-int/lit8 v5, v5, 0x30

    const/16 v8, 0x20

    if-le v5, v8, :cond_b

    invoke-interface {v7, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    :cond_b
    and-int/lit8 v5, v0, 0x30

    if-ne v5, v8, :cond_d

    :cond_c
    move v5, v6

    goto :goto_6

    :cond_d
    move v5, v3

    :goto_6
    or-int/2addr v4, v5

    and-int/lit16 v5, v0, 0x1c00

    xor-int/lit16 v5, v5, 0xc00

    const/16 v8, 0x800

    if-le v5, v8, :cond_e

    invoke-interface {v7, v13}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v5

    if-nez v5, :cond_f

    :cond_e
    and-int/lit16 v0, v0, 0xc00

    if-ne v0, v8, :cond_10

    :cond_f
    move v3, v6

    :cond_10
    or-int v0, v4, v3

    .line 438
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_11

    .line 439
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v3, v0, :cond_12

    .line 421
    :cond_11
    new-instance v0, Landroidx/compose/material3/SheetDefaultsKt$rememberSheetState$2$1;

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Landroidx/compose/material3/SheetDefaultsKt$rememberSheetState$2$1;-><init>(ZLandroidx/compose/ui/unit/Density;Landroidx/compose/material3/SheetValue;Lkotlin/jvm/functions/Function1;Z)V

    move-object v3, v0

    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 441
    invoke-interface {v7, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 421
    :cond_12
    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-static/range {p4 .. p4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v4, 0x0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v4

    move-object/from16 v4, p4

    .line 410
    invoke-static/range {v0 .. v6}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/material3/SheetState;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 408
    :cond_13
    invoke-static/range {p4 .. p4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    return-object v0
.end method
