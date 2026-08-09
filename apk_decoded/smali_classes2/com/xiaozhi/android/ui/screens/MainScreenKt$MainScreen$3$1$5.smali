.class final Lcom/xiaozhi/android/ui/screens/MainScreenKt$MainScreen$3$1$5;
.super Ljava/lang/Object;
.source "MainScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaozhi/android/ui/screens/MainScreenKt$MainScreen$3;->invoke(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroidx/compose/foundation/layout/ColumnScope;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMainScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainScreen.kt\ncom/xiaozhi/android/ui/screens/MainScreenKt$MainScreen$3$1$5\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 LazyDsl.kt\nandroidx/compose/foundation/lazy/LazyDslKt\n*L\n1#1,1448:1\n149#2:1449\n1225#3,6:1450\n143#4,12:1456\n*S KotlinDebug\n*F\n+ 1 MainScreen.kt\ncom/xiaozhi/android/ui/screens/MainScreenKt$MainScreen$3$1$5\n*L\n290#1:1449\n291#1:1450,6\n292#1:1456,12\n*E\n"
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
.field final synthetic $listState:Landroidx/compose/foundation/lazy/LazyListState;

.field final synthetic $logMessages$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$_PVLE7hCKPtFnBA-fGdemsjfwlI(Landroidx/compose/runtime/State;Landroidx/compose/foundation/lazy/LazyListScope;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/xiaozhi/android/ui/screens/MainScreenKt$MainScreen$3$1$5;->invoke$lambda$2$lambda$1(Landroidx/compose/runtime/State;Landroidx/compose/foundation/lazy/LazyListScope;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/runtime/State;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/lazy/LazyListState;",
            "Landroidx/compose/runtime/State<",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaozhi/android/ui/screens/MainScreenKt$MainScreen$3$1$5;->$listState:Landroidx/compose/foundation/lazy/LazyListState;

    iput-object p2, p0, Lcom/xiaozhi/android/ui/screens/MainScreenKt$MainScreen$3$1$5;->$logMessages$delegate:Landroidx/compose/runtime/State;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final invoke$lambda$2$lambda$1(Landroidx/compose/runtime/State;Landroidx/compose/foundation/lazy/LazyListScope;)Lkotlin/Unit;
    .locals 4

    const-string v0, "$this$LazyColumn"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    invoke-static {p0}, Lcom/xiaozhi/android/ui/screens/MainScreenKt;->access$MainScreen$lambda$2(Landroidx/compose/runtime/State;)Ljava/util/List;

    move-result-object p0

    .line 1459
    sget-object v0, Lcom/xiaozhi/android/ui/screens/MainScreenKt$MainScreen$3$1$5$invoke$lambda$2$lambda$1$$inlined$items$default$1;->INSTANCE:Lcom/xiaozhi/android/ui/screens/MainScreenKt$MainScreen$3$1$5$invoke$lambda$2$lambda$1$$inlined$items$default$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 1462
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 1461
    new-instance v2, Lcom/xiaozhi/android/ui/screens/MainScreenKt$MainScreen$3$1$5$invoke$lambda$2$lambda$1$$inlined$items$default$3;

    invoke-direct {v2, v0, p0}, Lcom/xiaozhi/android/ui/screens/MainScreenKt$MainScreen$3$1$5$invoke$lambda$2$lambda$1$$inlined$items$default$3;-><init>(Lkotlin/jvm/functions/Function1;Ljava/util/List;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 1465
    new-instance v0, Lcom/xiaozhi/android/ui/screens/MainScreenKt$MainScreen$3$1$5$invoke$lambda$2$lambda$1$$inlined$items$default$4;

    invoke-direct {v0, p0}, Lcom/xiaozhi/android/ui/screens/MainScreenKt$MainScreen$3$1$5$invoke$lambda$2$lambda$1$$inlined$items$default$4;-><init>(Ljava/util/List;)V

    const p0, -0x25b7f321

    const/4 v3, 0x1

    invoke-static {p0, v3, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object p0

    check-cast p0, Lkotlin/jvm/functions/Function4;

    const/4 v0, 0x0

    .line 1461
    invoke-interface {p1, v1, v0, v2, p0}, Landroidx/compose/foundation/lazy/LazyListScope;->items(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    .line 300
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 285
    check-cast p1, Landroidx/compose/foundation/layout/ColumnScope;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaozhi/android/ui/screens/MainScreenKt$MainScreen$3$1$5;->invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V
    .locals 12

    const-string v0, "$this$Card"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 p1, p3, 0x11

    const/16 v0, 0x10

    if-ne p1, v0, :cond_1

    .line 286
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 300
    :cond_0
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_1

    .line 286
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, -0x1

    const-string v0, "com.xiaozhi.android.ui.screens.MainScreen.<anonymous>.<anonymous>.<anonymous> (MainScreen.kt:285)"

    const v1, -0x5014f159

    invoke-static {v1, p3, p1, v0}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 288
    :cond_2
    sget-object p1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast p1, Landroidx/compose/ui/Modifier;

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 289
    invoke-static {p1, v1, p3, v0}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxSize$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    const/16 p3, 0xc

    int-to-float p3, p3

    .line 1449
    invoke-static {p3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p3

    .line 290
    invoke-static {p1, p3}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 287
    iget-object v1, p0, Lcom/xiaozhi/android/ui/screens/MainScreenKt$MainScreen$3$1$5;->$listState:Landroidx/compose/foundation/lazy/LazyListState;

    const p1, 0xa209585

    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    iget-object p1, p0, Lcom/xiaozhi/android/ui/screens/MainScreenKt$MainScreen$3$1$5;->$logMessages$delegate:Landroidx/compose/runtime/State;

    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result p1

    .line 291
    iget-object p3, p0, Lcom/xiaozhi/android/ui/screens/MainScreenKt$MainScreen$3$1$5;->$logMessages$delegate:Landroidx/compose/runtime/State;

    .line 1450
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez p1, :cond_3

    .line 1451
    sget-object p1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p1

    if-ne v2, p1, :cond_4

    .line 291
    :cond_3
    new-instance v2, Lcom/xiaozhi/android/ui/screens/MainScreenKt$MainScreen$3$1$5$$ExternalSyntheticLambda0;

    invoke-direct {v2, p3}, Lcom/xiaozhi/android/ui/screens/MainScreenKt$MainScreen$3$1$5$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/runtime/State;)V

    .line 1453
    invoke-interface {p2, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 291
    :cond_4
    move-object v8, v2

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const/4 v10, 0x6

    const/16 v11, 0xfc

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v9, p2

    .line 286
    invoke-static/range {v0 .. v11}, Landroidx/compose/foundation/lazy/LazyDslKt;->LazyColumn(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_5
    :goto_1
    return-void
.end method
