.class public final Landroidx/navigation/compose/NavHostControllerKt;
.super Ljava/lang/Object;
.source "NavHostController.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNavHostController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavHostController.kt\nandroidx/navigation/compose/NavHostControllerKt\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,83:1\n77#2:84\n1225#3,6:85\n*S KotlinDebug\n*F\n+ 1 NavHostController.kt\nandroidx/navigation/compose/NavHostControllerKt\n*L\n59#1:84\n60#1:85,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u001a\u0010\u0000\u001a\u000c\u0012\u0004\u0012\u00020\u0002\u0012\u0002\u0008\u00030\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0002\u001a\u0010\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0002\u001a1\u0010\u0006\u001a\u00020\u00022\"\u0010\u0007\u001a\u0012\u0012\u000e\u0008\u0001\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\n0\t0\u0008\"\n\u0012\u0006\u0008\u0001\u0012\u00020\n0\tH\u0007\u00a2\u0006\u0002\u0010\u000b\u001a\u0019\u0010\u000c\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\r*\u00020\u000fH\u0007\u00a2\u0006\u0002\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "NavControllerSaver",
        "Landroidx/compose/runtime/saveable/Saver;",
        "Landroidx/navigation/NavHostController;",
        "context",
        "Landroid/content/Context;",
        "createNavController",
        "rememberNavController",
        "navigators",
        "",
        "Landroidx/navigation/Navigator;",
        "Landroidx/navigation/NavDestination;",
        "([Landroidx/navigation/Navigator;Landroidx/compose/runtime/Composer;I)Landroidx/navigation/NavHostController;",
        "currentBackStackEntryAsState",
        "Landroidx/compose/runtime/State;",
        "Landroidx/navigation/NavBackStackEntry;",
        "Landroidx/navigation/NavController;",
        "(Landroidx/navigation/NavController;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;",
        "navigation-compose_release"
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
.method private static final NavControllerSaver(Landroid/content/Context;)Landroidx/compose/runtime/saveable/Saver;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroidx/compose/runtime/saveable/Saver<",
            "Landroidx/navigation/NavHostController;",
            "*>;"
        }
    .end annotation

    .line 79
    sget-object v0, Landroidx/navigation/compose/NavHostControllerKt$NavControllerSaver$1;->INSTANCE:Landroidx/navigation/compose/NavHostControllerKt$NavControllerSaver$1;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    new-instance v1, Landroidx/navigation/compose/NavHostControllerKt$NavControllerSaver$2;

    invoke-direct {v1, p0}, Landroidx/navigation/compose/NavHostControllerKt$NavControllerSaver$2;-><init>(Landroid/content/Context;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Landroidx/compose/runtime/saveable/SaverKt;->Saver(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createNavController(Landroid/content/Context;)Landroidx/navigation/NavHostController;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/navigation/compose/NavHostControllerKt;->createNavController(Landroid/content/Context;)Landroidx/navigation/NavHostController;

    move-result-object p0

    return-object p0
.end method

.method private static final createNavController(Landroid/content/Context;)Landroidx/navigation/NavHostController;
    .locals 3

    .line 71
    new-instance v0, Landroidx/navigation/NavHostController;

    invoke-direct {v0, p0}, Landroidx/navigation/NavHostController;-><init>(Landroid/content/Context;)V

    .line 72
    invoke-virtual {v0}, Landroidx/navigation/NavHostController;->getNavigatorProvider()Landroidx/navigation/NavigatorProvider;

    move-result-object p0

    new-instance v1, Landroidx/navigation/compose/ComposeNavGraphNavigator;

    invoke-virtual {v0}, Landroidx/navigation/NavHostController;->getNavigatorProvider()Landroidx/navigation/NavigatorProvider;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/navigation/compose/ComposeNavGraphNavigator;-><init>(Landroidx/navigation/NavigatorProvider;)V

    check-cast v1, Landroidx/navigation/Navigator;

    invoke-virtual {p0, v1}, Landroidx/navigation/NavigatorProvider;->addNavigator(Landroidx/navigation/Navigator;)Landroidx/navigation/Navigator;

    .line 73
    invoke-virtual {v0}, Landroidx/navigation/NavHostController;->getNavigatorProvider()Landroidx/navigation/NavigatorProvider;

    move-result-object p0

    new-instance v1, Landroidx/navigation/compose/ComposeNavigator;

    invoke-direct {v1}, Landroidx/navigation/compose/ComposeNavigator;-><init>()V

    check-cast v1, Landroidx/navigation/Navigator;

    invoke-virtual {p0, v1}, Landroidx/navigation/NavigatorProvider;->addNavigator(Landroidx/navigation/Navigator;)Landroidx/navigation/Navigator;

    .line 74
    invoke-virtual {v0}, Landroidx/navigation/NavHostController;->getNavigatorProvider()Landroidx/navigation/NavigatorProvider;

    move-result-object p0

    new-instance v1, Landroidx/navigation/compose/DialogNavigator;

    invoke-direct {v1}, Landroidx/navigation/compose/DialogNavigator;-><init>()V

    check-cast v1, Landroidx/navigation/Navigator;

    invoke-virtual {p0, v1}, Landroidx/navigation/NavigatorProvider;->addNavigator(Landroidx/navigation/Navigator;)Landroidx/navigation/Navigator;

    return-object v0
.end method

.method public static final currentBackStackEntryAsState(Landroidx/navigation/NavController;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/NavController;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/runtime/State<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;"
        }
    .end annotation

    const-string v0, "C(currentBackStackEntryAsState)42@1719L20:NavHostController.kt#opm8kd"

    const v1, -0x72cc7a3

    .line 42
    invoke-static {p1, v1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v2, "androidx.navigation.compose.currentBackStackEntryAsState (NavHostController.kt:41)"

    invoke-static {v1, p2, v0, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 43
    :cond_0
    invoke-virtual {p0}, Landroidx/navigation/NavController;->getCurrentBackStackEntryFlow()Lkotlinx/coroutines/flow/Flow;

    move-result-object v3

    const/16 v7, 0x30

    const/4 v8, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, p1

    invoke-static/range {v3 .. v8}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 42
    :cond_1
    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    return-object p0
.end method

.method public static final rememberNavController([Landroidx/navigation/Navigator;Landroidx/compose/runtime/Composer;I)Landroidx/navigation/NavHostController;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroidx/navigation/Navigator<",
            "+",
            "Landroidx/navigation/NavDestination;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/navigation/NavHostController;"
        }
    .end annotation

    const-string v0, "C(rememberNavController)58@2312L7,*59@2406L52,59@2331L127:NavHostController.kt#opm8kd"

    const v1, -0x129c080e

    .line 58
    invoke-static {p1, v1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v2, "androidx.navigation.compose.rememberNavController (NavHostController.kt:57)"

    invoke-static {v1, p2, v0, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 59
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalContext()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object p2

    check-cast p2, Landroidx/compose/runtime/CompositionLocal;

    const v0, 0x789c5f52

    const-string v1, "CC:CompositionLocal.kt#9igjgp"

    .line 84
    invoke-static {p1, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 59
    check-cast p2, Landroid/content/Context;

    .line 60
    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2}, Landroidx/navigation/compose/NavHostControllerKt;->NavControllerSaver(Landroid/content/Context;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v2

    const v0, 0x7d8cd2f5

    const-string v3, "CC(remember):NavHostController.kt#9igjgp"

    invoke-static {p1, v0, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    .line 85
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_1

    .line 86
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v3, v0, :cond_2

    .line 60
    :cond_1
    new-instance v0, Landroidx/navigation/compose/NavHostControllerKt$rememberNavController$1$1;

    invoke-direct {v0, p2}, Landroidx/navigation/compose/NavHostControllerKt$rememberNavController$1$1;-><init>(Landroid/content/Context;)V

    move-object v3, v0

    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 88
    invoke-interface {p1, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 60
    :cond_2
    move-object v4, v3

    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v3, 0x0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    move-result-object p2

    .line 63
    check-cast p2, Landroidx/navigation/NavHostController;

    .line 64
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p0, v1

    .line 65
    invoke-virtual {p2}, Landroidx/navigation/NavHostController;->getNavigatorProvider()Landroidx/navigation/NavigatorProvider;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/navigation/NavigatorProvider;->addNavigator(Landroidx/navigation/Navigator;)Landroidx/navigation/Navigator;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 63
    :cond_3
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 58
    :cond_4
    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    return-object p2
.end method
