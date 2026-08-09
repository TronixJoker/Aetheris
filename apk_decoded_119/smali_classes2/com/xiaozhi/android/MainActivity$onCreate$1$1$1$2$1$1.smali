.class final Lcom/xiaozhi/android/MainActivity$onCreate$1$1$1$2$1$1;
.super Ljava/lang/Object;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaozhi/android/MainActivity$onCreate$1$1$1;->invoke(Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function4<",
        "Landroidx/compose/animation/AnimatedContentScope;",
        "Landroidx/navigation/NavBackStackEntry;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMainActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainActivity.kt\ncom/xiaozhi/android/MainActivity$onCreate$1$1$1$2$1$1\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,130:1\n1225#2,6:131\n*S KotlinDebug\n*F\n+ 1 MainActivity.kt\ncom/xiaozhi/android/MainActivity$onCreate$1$1$1$2$1$1\n*L\n89#1:131,6\n*E\n"
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
.field final synthetic $navController:Landroidx/navigation/NavHostController;

.field final synthetic $viewModel:Lcom/xiaozhi/android/viewmodel/MainViewModel;


# direct methods
.method public static synthetic $r8$lambda$_xRxyVG3pV858UGGS8-lx04c7e8(Landroidx/navigation/NavHostController;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/xiaozhi/android/MainActivity$onCreate$1$1$1$2$1$1;->invoke$lambda$1$lambda$0(Landroidx/navigation/NavHostController;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/xiaozhi/android/viewmodel/MainViewModel;Landroidx/navigation/NavHostController;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaozhi/android/MainActivity$onCreate$1$1$1$2$1$1;->$viewModel:Lcom/xiaozhi/android/viewmodel/MainViewModel;

    iput-object p2, p0, Lcom/xiaozhi/android/MainActivity$onCreate$1$1$1$2$1$1;->$navController:Landroidx/navigation/NavHostController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final invoke$lambda$1$lambda$0(Landroidx/navigation/NavHostController;)Lkotlin/Unit;
    .locals 6

    .line 90
    move-object v0, p0

    check-cast v0, Landroidx/navigation/NavController;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const-string v1, "settings"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Landroidx/navigation/NavController;->navigate$default(Landroidx/navigation/NavController;Ljava/lang/String;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;ILjava/lang/Object;)V

    .line 91
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 86
    check-cast p1, Landroidx/compose/animation/AnimatedContentScope;

    check-cast p2, Landroidx/navigation/NavBackStackEntry;

    check-cast p3, Landroidx/compose/runtime/Composer;

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/xiaozhi/android/MainActivity$onCreate$1$1$1$2$1$1;->invoke(Landroidx/compose/animation/AnimatedContentScope;Landroidx/navigation/NavBackStackEntry;Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/animation/AnimatedContentScope;Landroidx/navigation/NavBackStackEntry;Landroidx/compose/runtime/Composer;I)V
    .locals 1

    const-string v0, "$this$composable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "it"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    const-string p2, "com.xiaozhi.android.MainActivity.onCreate.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (MainActivity.kt:86)"

    const v0, -0x68aa1dab

    .line 87
    invoke-static {v0, p4, p1, p2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 88
    :cond_0
    iget-object p1, p0, Lcom/xiaozhi/android/MainActivity$onCreate$1$1$1$2$1$1;->$viewModel:Lcom/xiaozhi/android/viewmodel/MainViewModel;

    const p2, 0x73aafcc7

    invoke-interface {p3, p2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    iget-object p2, p0, Lcom/xiaozhi/android/MainActivity$onCreate$1$1$1$2$1$1;->$navController:Landroidx/navigation/NavHostController;

    invoke-interface {p3, p2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result p2

    .line 89
    iget-object p4, p0, Lcom/xiaozhi/android/MainActivity$onCreate$1$1$1$2$1$1;->$navController:Landroidx/navigation/NavHostController;

    .line 131
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-nez p2, :cond_1

    .line 132
    sget-object p2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p2

    if-ne v0, p2, :cond_2

    .line 89
    :cond_1
    new-instance v0, Lcom/xiaozhi/android/MainActivity$onCreate$1$1$1$2$1$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p4}, Lcom/xiaozhi/android/MainActivity$onCreate$1$1$1$2$1$1$$ExternalSyntheticLambda0;-><init>(Landroidx/navigation/NavHostController;)V

    .line 134
    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 89
    :cond_2
    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const/4 p2, 0x0

    .line 87
    invoke-static {p1, v0, p3, p2}, Lcom/xiaozhi/android/ui/screens/MainScreenKt;->MainScreen(Lcom/xiaozhi/android/viewmodel/MainViewModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    return-void
.end method
