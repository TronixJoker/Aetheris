.class public final Lcom/xiaozhi/android/ui/screens/SettingsScreenKt;
.super Ljava/lang/Object;
.source "SettingsScreen.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSettingsScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingsScreen.kt\ncom/xiaozhi/android/ui/screens/SettingsScreenKt\n+ 2 ViewModel.kt\nandroidx/lifecycle/viewmodel/compose/ViewModelKt__ViewModelKt\n+ 3 Effects.kt\nandroidx/compose/runtime/EffectsKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 5 Effects.kt\nandroidx/compose/runtime/EffectsKt$rememberCoroutineScope$1\n+ 6 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,375:1\n55#2,11:376\n481#3:387\n480#3,4:388\n484#3,2:395\n488#3:401\n1225#4,3:392\n1228#4,3:398\n1225#4,6:402\n1225#4,6:408\n1225#4,6:414\n1225#4,6:420\n1225#4,6:426\n1225#4,6:432\n1225#4,6:438\n1225#4,6:444\n1225#4,6:450\n1225#4,6:456\n1225#4,6:462\n1225#4,6:468\n1225#4,6:474\n480#5:397\n81#6:480\n107#6,2:481\n81#6:483\n107#6,2:484\n81#6:486\n107#6,2:487\n81#6:489\n107#6,2:490\n81#6:492\n107#6,2:493\n81#6:495\n107#6,2:496\n81#6:498\n107#6,2:499\n81#6:501\n107#6,2:502\n81#6:504\n81#6:505\n81#6:506\n*S KotlinDebug\n*F\n+ 1 SettingsScreen.kt\ncom/xiaozhi/android/ui/screens/SettingsScreenKt\n*L\n30#1:376,11\n32#1:387\n32#1:388,4\n32#1:395,2\n32#1:401\n32#1:392,3\n32#1:398,3\n34#1:402,6\n35#1:408,6\n36#1:414,6\n37#1:420,6\n38#1:426,6\n39#1:432,6\n40#1:438,6\n41#1:444,6\n43#1:450,6\n49#1:456,6\n58#1:462,6\n69#1:468,6\n88#1:474,6\n32#1:397\n34#1:480\n34#1:481,2\n35#1:483\n35#1:484,2\n36#1:486\n36#1:487,2\n37#1:489\n37#1:490,2\n38#1:492\n38#1:493,2\n39#1:495\n39#1:496,2\n40#1:498\n40#1:499,2\n41#1:501\n41#1:502,2\n44#1:504\n45#1:505\n46#1:506\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u001a%\u0010\u0000\u001a\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u0007\u00a2\u0006\u0002\u0010\u0006\u00a8\u0006\u0007\u00b2\u0006\n\u0010\u0008\u001a\u00020\tX\u008a\u008e\u0002\u00b2\u0006\n\u0010\n\u001a\u00020\tX\u008a\u008e\u0002\u00b2\u0006\n\u0010\u000b\u001a\u00020\tX\u008a\u008e\u0002\u00b2\u0006\n\u0010\u000c\u001a\u00020\tX\u008a\u008e\u0002\u00b2\u0006\n\u0010\r\u001a\u00020\tX\u008a\u008e\u0002\u00b2\u0006\n\u0010\u000e\u001a\u00020\tX\u008a\u008e\u0002\u00b2\u0006\n\u0010\u000f\u001a\u00020\u0010X\u008a\u008e\u0002\u00b2\u0006\u000c\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u008a\u008e\u0002\u00b2\u0006\n\u0010\u0013\u001a\u00020\u0014X\u008a\u0084\u0002\u00b2\u0006\n\u0010\u0015\u001a\u00020\u0016X\u008a\u0084\u0002\u00b2\u0006\n\u0010\u0017\u001a\u00020\tX\u008a\u0084\u0002"
    }
    d2 = {
        "SettingsScreen",
        "",
        "onNavigateBack",
        "Lkotlin/Function0;",
        "viewModel",
        "Lcom/xiaozhi/android/viewmodel/MainViewModel;",
        "(Lkotlin/jvm/functions/Function0;Lcom/xiaozhi/android/viewmodel/MainViewModel;Landroidx/compose/runtime/Composer;II)V",
        "app_release",
        "wsUrl",
        "",
        "accessToken",
        "otaUrl",
        "deviceId",
        "clientId",
        "activationVersion",
        "showUpdateDialog",
        "",
        "updateResult",
        "Lcom/xiaozhi/android/update/UpdateManager$UpdateResult;",
        "updateState",
        "Lcom/xiaozhi/android/update/UpdateManager$UpdateState;",
        "downloadProgress",
        "",
        "downloadSize"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic $r8$lambda$-JFJEeFa-KAVSSq_LOuGl9XSU5k(Lcom/xiaozhi/android/update/UpdateManager;Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt;->SettingsScreen$lambda$32$lambda$31(Lcom/xiaozhi/android/update/UpdateManager;Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$o563mncCGT4_6oEz_ITFo6zIvcg(Lkotlin/jvm/functions/Function0;Lcom/xiaozhi/android/viewmodel/MainViewModel;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt;->SettingsScreen$lambda$33(Lkotlin/jvm/functions/Function0;Lcom/xiaozhi/android/viewmodel/MainViewModel;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final SettingsScreen(Lkotlin/jvm/functions/Function0;Lcom/xiaozhi/android/viewmodel/MainViewModel;Landroidx/compose/runtime/Composer;II)V
    .locals 48
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/xiaozhi/android/viewmodel/MainViewModel;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    move-object/from16 v13, p0

    move/from16 v14, p3

    move/from16 v15, p4

    const-string v0, "1.0.0"

    const-string v1, "onNavigateBack"

    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x3308d8ec

    move-object/from16 v2, p2

    .line 31
    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v12

    and-int/lit8 v2, v15, 0x1

    const/4 v10, 0x2

    if-eqz v2, :cond_0

    or-int/lit8 v2, v14, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v14, 0x6

    if-nez v2, :cond_2

    invoke-interface {v12, v13}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    move v2, v10

    :goto_0
    or-int/2addr v2, v14

    goto :goto_1

    :cond_2
    move v2, v14

    :goto_1
    and-int/lit8 v3, v14, 0x30

    if-nez v3, :cond_5

    and-int/lit8 v3, v15, 0x2

    if-nez v3, :cond_3

    move-object/from16 v3, p1

    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x20

    goto :goto_2

    :cond_3
    move-object/from16 v3, p1

    :cond_4
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v2, v4

    goto :goto_3

    :cond_5
    move-object/from16 v3, p1

    :goto_3
    move v11, v2

    and-int/lit8 v2, v11, 0x13

    const/16 v4, 0x12

    if-ne v2, v4, :cond_7

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_4

    .line 375
    :cond_6
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object v1, v12

    goto/16 :goto_e

    .line 31
    :cond_7
    :goto_4
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v2, v14, 0x1

    const/4 v9, 0x6

    if-eqz v2, :cond_9

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_5

    .line 386
    :cond_8
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v2, v15, 0x2

    if-eqz v2, :cond_c

    and-int/lit8 v11, v11, -0x71

    goto :goto_7

    :cond_9
    :goto_5
    and-int/lit8 v2, v15, 0x2

    if-eqz v2, :cond_c

    const v2, 0x671a9c9b

    .line 30
    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "CC(viewModel)P(3,2,1)*54@2502L7,64@2877L63:ViewModel.kt#3tja67"

    invoke-static {v12, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 376
    sget-object v2, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->INSTANCE:Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;

    invoke-virtual {v2, v12, v9}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->getCurrent(Landroidx/compose/runtime/Composer;I)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 381
    instance-of v2, v3, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v2, :cond_a

    .line 382
    move-object v2, v3

    check-cast v2, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v2}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v2

    goto :goto_6

    .line 384
    :cond_a
    sget-object v2, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->INSTANCE:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    check-cast v2, Landroidx/lifecycle/viewmodel/CreationExtras;

    :goto_6
    move-object v6, v2

    const-class v2, Lcom/xiaozhi/android/viewmodel/MainViewModel;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const/4 v8, 0x0

    const/16 v16, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v7, v12

    move/from16 v9, v16

    .line 386
    invoke-static/range {v2 .. v9}, Landroidx/lifecycle/viewmodel/compose/ViewModelKt;->viewModel(Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;Landroidx/compose/runtime/Composer;II)Landroidx/lifecycle/ViewModel;

    move-result-object v2

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v2, Lcom/xiaozhi/android/viewmodel/MainViewModel;

    and-int/lit8 v11, v11, -0x71

    move/from16 v47, v11

    move-object v11, v2

    move/from16 v2, v47

    goto :goto_8

    .line 376
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    :goto_7
    move v2, v11

    move-object v11, v3

    .line 386
    :goto_8
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v3, -0x1

    const-string v4, "com.xiaozhi.android.ui.screens.SettingsScreen (SettingsScreen.kt:30)"

    .line 31
    invoke-static {v1, v2, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_d
    const v1, 0x2e20b340

    .line 32
    const-string v2, "CC(rememberCoroutineScope)482@20332L144:Effects.kt#9igjgp"

    .line 387
    invoke-static {v12, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const v1, -0x38e27f50

    .line 390
    const-string v2, "CC(remember):Effects.kt#9igjgp"

    .line 391
    invoke-static {v12, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 392
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .line 393
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_e

    .line 397
    sget-object v1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 396
    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v1, v12}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    .line 395
    new-instance v2, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    invoke-direct {v2, v1}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;-><init>(Lkotlinx/coroutines/CoroutineScope;)V

    .line 398
    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v1, v2

    .line 391
    :cond_e
    check-cast v1, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    invoke-static {v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 401
    invoke-virtual {v1}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    .line 387
    invoke-static {v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 33
    invoke-virtual {v11}, Lcom/xiaozhi/android/viewmodel/MainViewModel;->getApplication()Landroid/app/Application;

    move-result-object v9

    const v2, 0x515cf151

    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 402
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    .line 403
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    const-string v4, ""

    const/4 v8, 0x0

    if-ne v2, v3, :cond_f

    .line 34
    invoke-static {v4, v8, v10, v8}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    .line 405
    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 34
    :cond_f
    move-object/from16 v38, v2

    check-cast v38, Landroidx/compose/runtime/MutableState;

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const v2, 0x515cf831

    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 408
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    .line 409
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_10

    .line 35
    invoke-static {v4, v8, v10, v8}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    .line 411
    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 35
    :cond_10
    move-object/from16 v39, v2

    check-cast v39, Landroidx/compose/runtime/MutableState;

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const v2, 0x515cfe71

    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 414
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    .line 415
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_11

    .line 36
    invoke-static {v4, v8, v10, v8}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    .line 417
    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 36
    :cond_11
    move-object/from16 v40, v2

    check-cast v40, Landroidx/compose/runtime/MutableState;

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const v2, 0x515d04f1

    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 420
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    .line 421
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_12

    .line 37
    invoke-static {v4, v8, v10, v8}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    .line 423
    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 37
    :cond_12
    move-object/from16 v41, v2

    check-cast v41, Landroidx/compose/runtime/MutableState;

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const v2, 0x515d0b71

    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 426
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    .line 427
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_13

    .line 38
    invoke-static {v4, v8, v10, v8}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    .line 429
    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 38
    :cond_13
    move-object/from16 v42, v2

    check-cast v42, Landroidx/compose/runtime/MutableState;

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const v2, 0x515d1311

    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 432
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    .line 433
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_14

    .line 39
    invoke-static {v4, v8, v10, v8}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    .line 435
    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 39
    :cond_14
    move-object/from16 v16, v2

    check-cast v16, Landroidx/compose/runtime/MutableState;

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const v2, 0x515d1a94

    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 438
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    .line 439
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    const/4 v7, 0x0

    if-ne v2, v3, :cond_15

    .line 40
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2, v8, v10, v8}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    .line 441
    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 40
    :cond_15
    move-object v6, v2

    check-cast v6, Landroidx/compose/runtime/MutableState;

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const v2, 0x515d2210

    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 444
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    .line 445
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_16

    .line 41
    invoke-static {v8, v8, v10, v8}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    .line 447
    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 41
    :cond_16
    move-object v10, v2

    check-cast v10, Landroidx/compose/runtime/MutableState;

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const v2, 0x515d2cf5

    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 450
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    .line 451
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_17

    .line 43
    new-instance v2, Lcom/xiaozhi/android/update/UpdateManager;

    move-object v3, v9

    check-cast v3, Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/xiaozhi/android/update/UpdateManager;-><init>(Landroid/content/Context;)V

    .line 453
    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 43
    :cond_17
    move-object v5, v2

    check-cast v5, Lcom/xiaozhi/android/update/UpdateManager;

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 44
    invoke-virtual {v5}, Lcom/xiaozhi/android/update/UpdateManager;->getUpdateState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v2

    const/16 v17, 0x0

    const/16 v18, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v19, 0x0

    move-object/from16 p1, v5

    move-object/from16 v5, v19

    move-object/from16 v43, v6

    move-object v6, v12

    move-object/from16 p2, v10

    move v10, v7

    move/from16 v7, v17

    move/from16 v8, v18

    invoke-static/range {v2 .. v8}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/StateFlow;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v8

    .line 45
    invoke-virtual/range {p1 .. p1}, Lcom/xiaozhi/android/update/UpdateManager;->getDownloadProgress()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v2

    const/4 v7, 0x0

    const/16 v17, 0x7

    const/4 v5, 0x0

    move-object/from16 v18, v8

    move/from16 v8, v17

    invoke-static/range {v2 .. v8}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/StateFlow;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v8

    .line 46
    invoke-virtual/range {p1 .. p1}, Lcom/xiaozhi/android/update/UpdateManager;->getDownloadSize()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v2

    move-object/from16 v44, v8

    move/from16 v8, v17

    invoke-static/range {v2 .. v8}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/StateFlow;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v8

    const v2, 0x515d59f0

    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 456
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    .line 457
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_19

    .line 51
    :try_start_0
    invoke-virtual {v9}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v9}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_18

    goto :goto_9

    :cond_18
    move-object v0, v2

    .line 459
    :catch_0
    :goto_9
    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v2, v0

    .line 49
    :cond_19
    move-object/from16 v45, v2

    check-cast v45, Ljava/lang/String;

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 58
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const v2, 0x515d7974

    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v12, v11}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    .line 462
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_1b

    .line 463
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v3, v2, :cond_1a

    goto :goto_a

    :cond_1a
    move-object/from16 v15, p2

    move-object v14, v8

    move-object/from16 p2, v11

    move v11, v10

    goto :goto_b

    .line 58
    :cond_1b
    :goto_a
    new-instance v17, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$1$1;

    const/16 v19, 0x0

    move-object/from16 v2, v17

    move-object v3, v11

    move-object/from16 v4, v38

    move-object/from16 v5, v39

    move-object/from16 v6, v40

    move-object/from16 v7, v41

    move-object v9, v8

    move-object/from16 v8, v42

    move-object v14, v9

    move-object/from16 v9, v16

    move-object/from16 v15, p2

    move-object/from16 p2, v11

    move v11, v10

    move-object/from16 v10, v19

    invoke-direct/range {v2 .. v10}, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$1$1;-><init>(Lcom/xiaozhi/android/viewmodel/MainViewModel;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v3, v17

    check-cast v3, Lkotlin/jvm/functions/Function2;

    .line 465
    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 58
    :goto_b
    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const/4 v2, 0x6

    invoke-static {v0, v3, v12, v2}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 69
    invoke-static/range {v18 .. v18}, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt;->SettingsScreen$lambda$25(Landroidx/compose/runtime/State;)Lcom/xiaozhi/android/update/UpdateManager$UpdateState;

    move-result-object v0

    const v2, 0x515db3b5

    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    move-object/from16 v2, v18

    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    move-object/from16 v5, p1

    invoke-interface {v12, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 468
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_1d

    .line 469
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v4, v3, :cond_1c

    goto :goto_c

    :cond_1c
    move-object/from16 v6, v43

    goto :goto_d

    .line 69
    :cond_1d
    :goto_c
    new-instance v3, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$2$1;

    move-object/from16 v6, v43

    const/4 v4, 0x0

    invoke-direct {v3, v5, v2, v6, v4}, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$2$1;-><init>(Lcom/xiaozhi/android/update/UpdateManager;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    move-object v4, v3

    check-cast v4, Lkotlin/jvm/functions/Function2;

    .line 471
    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 69
    :goto_d
    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    invoke-static {v0, v4, v12, v11}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    const v0, 0x515e0a26

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 86
    invoke-static {v6}, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt;->SettingsScreen$lambda$19(Landroidx/compose/runtime/MutableState;)Z

    move-result v0

    const/16 v11, 0x36

    const/4 v10, 0x1

    if-eqz v0, :cond_20

    const v0, 0x515df790

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v12, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    .line 474
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_1e

    .line 475
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v3, v0, :cond_1f

    .line 88
    :cond_1e
    new-instance v3, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$$ExternalSyntheticLambda0;

    invoke-direct {v3, v5, v6}, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$$ExternalSyntheticLambda0;-><init>(Lcom/xiaozhi/android/update/UpdateManager;Landroidx/compose/runtime/MutableState;)V

    .line 477
    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 88
    :cond_1f
    move-object/from16 v16, v3

    check-cast v16, Lkotlin/jvm/functions/Function0;

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 181
    new-instance v0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$4;

    invoke-direct {v0, v5, v2, v15, v6}, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$4;-><init>(Lcom/xiaozhi/android/update/UpdateManager;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V

    const v3, 0x7bbfe87f

    invoke-static {v3, v10, v0, v12, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lkotlin/jvm/functions/Function2;

    .line 213
    new-instance v0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$5;

    invoke-direct {v0, v5, v2, v6}, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$5;-><init>(Lcom/xiaozhi/android/update/UpdateManager;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;)V

    const v3, 0x1b57b9bd

    invoke-static {v3, v10, v0, v12, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Lkotlin/jvm/functions/Function2;

    .line 92
    new-instance v0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$6;

    invoke-direct {v0, v2}, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$6;-><init>(Landroidx/compose/runtime/State;)V

    const v3, -0x45107505

    invoke-static {v3, v10, v0, v12, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Lkotlin/jvm/functions/Function2;

    .line 105
    new-instance v0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$7;

    move-object/from16 v3, v44

    invoke-direct {v0, v2, v15, v3, v14}, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$7;-><init>(Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V

    const v2, 0xabb739a

    invoke-static {v2, v10, v0, v12, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Lkotlin/jvm/functions/Function2;

    const/16 v36, 0x0

    const/16 v37, 0x3f94

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    const-wide/16 v28, 0x0

    const-wide/16 v30, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const v35, 0x1b0c30

    move-object/from16 v34, v12

    .line 87
    invoke-static/range {v16 .. v37}, Landroidx/compose/material3/AndroidAlertDialog_androidKt;->AlertDialog-Oix01E0(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;JJJJFLandroidx/compose/ui/window/DialogProperties;Landroidx/compose/runtime/Composer;III)V

    :cond_20
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 238
    new-instance v0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$8;

    invoke-direct {v0, v13}, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$8;-><init>(Lkotlin/jvm/functions/Function0;)V

    const v2, 0x1d5839b0

    invoke-static {v2, v10, v0, v12, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lkotlin/jvm/functions/Function2;

    .line 248
    new-instance v14, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$9;

    move-object v0, v14

    move-object/from16 v2, p2

    move-object/from16 v3, p0

    move-object/from16 v4, v45

    move-object v7, v15

    move-object/from16 v8, v38

    move-object/from16 v9, v39

    move v15, v10

    move-object/from16 v10, v40

    move-object/from16 v31, p2

    move v13, v11

    move-object/from16 v11, v41

    move-object/from16 v46, v12

    move-object/from16 v12, v42

    invoke-direct/range {v0 .. v12}, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$9;-><init>(Lkotlinx/coroutines/CoroutineScope;Lcom/xiaozhi/android/viewmodel/MainViewModel;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lcom/xiaozhi/android/update/UpdateManager;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V

    const v0, 0xf53097b

    move-object/from16 v1, v46

    invoke-static {v0, v15, v14, v1, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object/from16 v27, v0

    check-cast v27, Lkotlin/jvm/functions/Function3;

    const v29, 0x30000030

    const/16 v30, 0x1fd

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    move-object/from16 v28, v1

    .line 237
    invoke-static/range {v16 .. v30}, Landroidx/compose/material3/ScaffoldKt;->Scaffold-TvnljyQ(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_21
    move-object/from16 v3, v31

    .line 375
    :goto_e
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_22

    new-instance v1, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$$ExternalSyntheticLambda1;

    move-object/from16 v2, p0

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function0;Lcom/xiaozhi/android/viewmodel/MainViewModel;II)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_22
    return-void
.end method

.method private static final SettingsScreen$lambda$1(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 34
    check-cast p0, Landroidx/compose/runtime/State;

    .line 480
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static final SettingsScreen$lambda$10(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 37
    check-cast p0, Landroidx/compose/runtime/State;

    .line 489
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static final SettingsScreen$lambda$11(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 490
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private static final SettingsScreen$lambda$13(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 38
    check-cast p0, Landroidx/compose/runtime/State;

    .line 492
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static final SettingsScreen$lambda$14(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 493
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private static final SettingsScreen$lambda$16(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 39
    check-cast p0, Landroidx/compose/runtime/State;

    .line 495
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static final SettingsScreen$lambda$17(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 496
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private static final SettingsScreen$lambda$19(Landroidx/compose/runtime/MutableState;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 40
    check-cast p0, Landroidx/compose/runtime/State;

    .line 498
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final SettingsScreen$lambda$2(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 481
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private static final SettingsScreen$lambda$20(Landroidx/compose/runtime/MutableState;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .line 40
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 499
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private static final SettingsScreen$lambda$22(Landroidx/compose/runtime/MutableState;)Lcom/xiaozhi/android/update/UpdateManager$UpdateResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/xiaozhi/android/update/UpdateManager$UpdateResult;",
            ">;)",
            "Lcom/xiaozhi/android/update/UpdateManager$UpdateResult;"
        }
    .end annotation

    .line 41
    check-cast p0, Landroidx/compose/runtime/State;

    .line 501
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaozhi/android/update/UpdateManager$UpdateResult;

    return-object p0
.end method

.method private static final SettingsScreen$lambda$23(Landroidx/compose/runtime/MutableState;Lcom/xiaozhi/android/update/UpdateManager$UpdateResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/xiaozhi/android/update/UpdateManager$UpdateResult;",
            ">;",
            "Lcom/xiaozhi/android/update/UpdateManager$UpdateResult;",
            ")V"
        }
    .end annotation

    .line 502
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private static final SettingsScreen$lambda$25(Landroidx/compose/runtime/State;)Lcom/xiaozhi/android/update/UpdateManager$UpdateState;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "+",
            "Lcom/xiaozhi/android/update/UpdateManager$UpdateState;",
            ">;)",
            "Lcom/xiaozhi/android/update/UpdateManager$UpdateState;"
        }
    .end annotation

    .line 504
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaozhi/android/update/UpdateManager$UpdateState;

    return-object p0
.end method

.method private static final SettingsScreen$lambda$26(Landroidx/compose/runtime/State;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 505
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method private static final SettingsScreen$lambda$27(Landroidx/compose/runtime/State;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 506
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static final SettingsScreen$lambda$32$lambda$31(Lcom/xiaozhi/android/update/UpdateManager;Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 1

    const/4 v0, 0x0

    .line 89
    invoke-static {p1, v0}, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt;->SettingsScreen$lambda$20(Landroidx/compose/runtime/MutableState;Z)V

    .line 90
    invoke-virtual {p0}, Lcom/xiaozhi/android/update/UpdateManager;->reset()V

    .line 91
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final SettingsScreen$lambda$33(Lkotlin/jvm/functions/Function0;Lcom/xiaozhi/android/viewmodel/MainViewModel;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result p2

    invoke-static {p0, p1, p4, p2, p3}, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt;->SettingsScreen(Lkotlin/jvm/functions/Function0;Lcom/xiaozhi/android/viewmodel/MainViewModel;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final SettingsScreen$lambda$4(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 35
    check-cast p0, Landroidx/compose/runtime/State;

    .line 483
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static final SettingsScreen$lambda$5(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 484
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private static final SettingsScreen$lambda$7(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 36
    check-cast p0, Landroidx/compose/runtime/State;

    .line 486
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static final SettingsScreen$lambda$8(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 487
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$SettingsScreen$lambda$1(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt;->SettingsScreen$lambda$1(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$SettingsScreen$lambda$10(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt;->SettingsScreen$lambda$10(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$SettingsScreen$lambda$11(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt;->SettingsScreen$lambda$11(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$SettingsScreen$lambda$13(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt;->SettingsScreen$lambda$13(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$SettingsScreen$lambda$14(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt;->SettingsScreen$lambda$14(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$SettingsScreen$lambda$17(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt;->SettingsScreen$lambda$17(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$SettingsScreen$lambda$2(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt;->SettingsScreen$lambda$2(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$SettingsScreen$lambda$20(Landroidx/compose/runtime/MutableState;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt;->SettingsScreen$lambda$20(Landroidx/compose/runtime/MutableState;Z)V

    return-void
.end method

.method public static final synthetic access$SettingsScreen$lambda$22(Landroidx/compose/runtime/MutableState;)Lcom/xiaozhi/android/update/UpdateManager$UpdateResult;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt;->SettingsScreen$lambda$22(Landroidx/compose/runtime/MutableState;)Lcom/xiaozhi/android/update/UpdateManager$UpdateResult;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$SettingsScreen$lambda$23(Landroidx/compose/runtime/MutableState;Lcom/xiaozhi/android/update/UpdateManager$UpdateResult;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt;->SettingsScreen$lambda$23(Landroidx/compose/runtime/MutableState;Lcom/xiaozhi/android/update/UpdateManager$UpdateResult;)V

    return-void
.end method

.method public static final synthetic access$SettingsScreen$lambda$25(Landroidx/compose/runtime/State;)Lcom/xiaozhi/android/update/UpdateManager$UpdateState;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt;->SettingsScreen$lambda$25(Landroidx/compose/runtime/State;)Lcom/xiaozhi/android/update/UpdateManager$UpdateState;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$SettingsScreen$lambda$26(Landroidx/compose/runtime/State;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt;->SettingsScreen$lambda$26(Landroidx/compose/runtime/State;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$SettingsScreen$lambda$27(Landroidx/compose/runtime/State;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt;->SettingsScreen$lambda$27(Landroidx/compose/runtime/State;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$SettingsScreen$lambda$4(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt;->SettingsScreen$lambda$4(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$SettingsScreen$lambda$5(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt;->SettingsScreen$lambda$5(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$SettingsScreen$lambda$7(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt;->SettingsScreen$lambda$7(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$SettingsScreen$lambda$8(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt;->SettingsScreen$lambda$8(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V

    return-void
.end method
