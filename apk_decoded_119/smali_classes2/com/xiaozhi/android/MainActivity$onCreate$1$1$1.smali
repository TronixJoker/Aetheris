.class final Lcom/xiaozhi/android/MainActivity$onCreate$1$1$1;
.super Ljava/lang/Object;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaozhi/android/MainActivity$onCreate$1$1;->invoke(Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMainActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainActivity.kt\ncom/xiaozhi/android/MainActivity$onCreate$1$1$1\n+ 2 ViewModel.kt\nandroidx/lifecycle/viewmodel/compose/ViewModelKt__ViewModelKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,130:1\n55#2,11:131\n1225#3,6:142\n1225#3,6:148\n*S KotlinDebug\n*F\n+ 1 MainActivity.kt\ncom/xiaozhi/android/MainActivity$onCreate$1$1$1\n*L\n68#1:131,11\n72#1:142,6\n85#1:148,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $petListenAction:Z


# direct methods
.method public static synthetic $r8$lambda$WbAlKgeAmyy3gExst1pCAfE-Lns(Lcom/xiaozhi/android/viewmodel/MainViewModel;Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraphBuilder;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/xiaozhi/android/MainActivity$onCreate$1$1$1;->invoke$lambda$2$lambda$1(Lcom/xiaozhi/android/viewmodel/MainViewModel;Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraphBuilder;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaozhi/android/MainActivity$onCreate$1$1$1;->$petListenAction:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final invoke$lambda$2$lambda$1(Lcom/xiaozhi/android/viewmodel/MainViewModel;Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraphBuilder;)Lkotlin/Unit;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "$this$NavHost"

    move-object/from16 v15, p2

    invoke-static {v15, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    new-instance v2, Lcom/xiaozhi/android/MainActivity$onCreate$1$1$1$2$1$1;

    invoke-direct {v2, v0, v1}, Lcom/xiaozhi/android/MainActivity$onCreate$1$1$1$2$1$1;-><init>(Lcom/xiaozhi/android/viewmodel/MainViewModel;Landroidx/navigation/NavHostController;)V

    const v3, -0x68aa1dab

    const/4 v14, 0x1

    invoke-static {v3, v14, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lkotlin/jvm/functions/Function4;

    const/16 v13, 0xfe

    const/4 v2, 0x0

    const-string v4, "main"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v3, p2

    move v15, v14

    move-object v14, v2

    invoke-static/range {v3 .. v14}, Landroidx/navigation/compose/NavGraphBuilderKt;->composable$default(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;ILjava/lang/Object;)V

    .line 95
    new-instance v2, Lcom/xiaozhi/android/MainActivity$onCreate$1$1$1$2$1$2;

    invoke-direct {v2, v1, v0}, Lcom/xiaozhi/android/MainActivity$onCreate$1$1$1$2$1$2;-><init>(Landroidx/navigation/NavHostController;Lcom/xiaozhi/android/viewmodel/MainViewModel;)V

    const v0, -0x7828ff74

    invoke-static {v0, v15, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lkotlin/jvm/functions/Function4;

    const/4 v14, 0x0

    const-string v4, "settings"

    invoke-static/range {v3 .. v14}, Landroidx/navigation/compose/NavGraphBuilderKt;->composable$default(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;ILjava/lang/Object;)V

    .line 101
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 67
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/xiaozhi/android/MainActivity$onCreate$1$1$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    move/from16 v1, p2

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 68
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_2

    .line 68
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, -0x1

    const-string v3, "com.xiaozhi.android.MainActivity.onCreate.<anonymous>.<anonymous>.<anonymous> (MainActivity.kt:67)"

    const v4, 0x341e1b72

    invoke-static {v4, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    const v1, 0x671a9c9b

    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "CC(viewModel)P(3,2,1)*54@2502L7,64@2877L63:ViewModel.kt#3tja67"

    invoke-static {v12, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 131
    sget-object v1, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->INSTANCE:Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;

    const/4 v2, 0x6

    invoke-virtual {v1, v12, v2}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->getCurrent(Landroidx/compose/runtime/Composer;I)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 136
    instance-of v1, v2, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v1, :cond_3

    .line 137
    move-object v1, v2

    check-cast v1, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v1}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v1

    goto :goto_1

    .line 139
    :cond_3
    sget-object v1, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->INSTANCE:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    check-cast v1, Landroidx/lifecycle/viewmodel/CreationExtras;

    :goto_1
    move-object v5, v1

    const-class v1, Lcom/xiaozhi/android/viewmodel/MainViewModel;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v6, p1

    .line 141
    invoke-static/range {v1 .. v8}, Landroidx/lifecycle/viewmodel/compose/ViewModelKt;->viewModel(Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;Landroidx/compose/runtime/Composer;II)Landroidx/lifecycle/ViewModel;

    move-result-object v1

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 68
    check-cast v1, Lcom/xiaozhi/android/viewmodel/MainViewModel;

    .line 69
    invoke-virtual {v1}, Lcom/xiaozhi/android/viewmodel/MainViewModel;->init()V

    .line 72
    iget-boolean v2, v0, Lcom/xiaozhi/android/MainActivity$onCreate$1$1$1;->$petListenAction:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const v3, -0x3add0af5

    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    iget-boolean v3, v0, Lcom/xiaozhi/android/MainActivity$onCreate$1$1$1;->$petListenAction:Z

    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v3

    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    iget-boolean v4, v0, Lcom/xiaozhi/android/MainActivity$onCreate$1$1$1;->$petListenAction:Z

    .line 142
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v3, :cond_4

    .line 143
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v5, v3, :cond_5

    .line 72
    :cond_4
    new-instance v3, Lcom/xiaozhi/android/MainActivity$onCreate$1$1$1$1$1;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v1, v5}, Lcom/xiaozhi/android/MainActivity$onCreate$1$1$1$1$1;-><init>(ZLcom/xiaozhi/android/viewmodel/MainViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v5, v3

    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 145
    invoke-interface {v12, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 72
    :cond_5
    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const/4 v3, 0x0

    invoke-static {v2, v5, v12, v3}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    new-array v2, v3, [Landroidx/navigation/Navigator;

    .line 80
    invoke-static {v2, v12, v3}, Landroidx/navigation/compose/NavHostControllerKt;->rememberNavController([Landroidx/navigation/Navigator;Landroidx/compose/runtime/Composer;I)Landroidx/navigation/NavHostController;

    move-result-object v2

    const v3, -0x3adccc24

    .line 84
    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 148
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_6

    .line 149
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v4, v3, :cond_7

    .line 85
    :cond_6
    new-instance v4, Lcom/xiaozhi/android/MainActivity$onCreate$1$1$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1, v2}, Lcom/xiaozhi/android/MainActivity$onCreate$1$1$1$$ExternalSyntheticLambda0;-><init>(Lcom/xiaozhi/android/viewmodel/MainViewModel;Landroidx/navigation/NavHostController;)V

    .line 151
    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 85
    :cond_7
    move-object v11, v4

    check-cast v11, Lkotlin/jvm/functions/Function1;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const/4 v14, 0x0

    const/16 v15, 0x3fc

    .line 82
    const-string v3, "main"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x30

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v13

    move-object/from16 v12, p1

    move/from16 v13, v16

    invoke-static/range {v1 .. v15}, Landroidx/navigation/compose/NavHostKt;->NavHost(Landroidx/navigation/NavHostController;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_8
    :goto_2
    return-void

    .line 131
    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
