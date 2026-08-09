.class final Lcom/xiaozhi/android/ui/screens/MainScreenKt$MainScreen$3;
.super Ljava/lang/Object;
.source "MainScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaozhi/android/ui/screens/MainScreenKt;->MainScreen(Lcom/xiaozhi/android/viewmodel/MainViewModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaozhi/android/ui/screens/MainScreenKt$MainScreen$3$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroidx/compose/foundation/layout/PaddingValues;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMainScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainScreen.kt\ncom/xiaozhi/android/ui/screens/MainScreenKt$MainScreen$3\n+ 2 Column.kt\nandroidx/compose/foundation/layout/ColumnKt\n+ 3 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 4 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 5 Composer.kt\nandroidx/compose/runtime/Updater\n+ 6 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 7 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 8 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,1448:1\n86#2:1449\n83#2,6:1450\n89#2:1484\n93#2:1541\n79#3,6:1456\n86#3,4:1471\n90#3,2:1481\n79#3,6:1497\n86#3,4:1512\n90#3,2:1522\n94#3:1534\n94#3:1540\n368#4,9:1462\n377#4:1483\n368#4,9:1503\n377#4:1524\n378#4,2:1532\n378#4,2:1538\n4034#5,6:1475\n4034#5,6:1516\n149#6:1485\n149#6:1486\n149#6:1487\n149#6:1488\n149#6:1489\n149#6:1490\n149#6:1536\n149#6:1537\n71#7:1491\n69#7,5:1492\n74#7:1525\n78#7:1535\n1225#8,6:1526\n*S KotlinDebug\n*F\n+ 1 MainScreen.kt\ncom/xiaozhi/android/ui/screens/MainScreenKt$MainScreen$3\n*L\n110#1:1449\n110#1:1450,6\n110#1:1484\n110#1:1541\n110#1:1456,6\n110#1:1471,4\n110#1:1481,2\n250#1:1497,6\n250#1:1512,4\n250#1:1522,2\n250#1:1534\n110#1:1540\n110#1:1462,9\n110#1:1483\n250#1:1503,9\n250#1:1524\n250#1:1532,2\n110#1:1538,2\n110#1:1475,6\n250#1:1516,6\n128#1:1485\n143#1:1486\n184#1:1487\n200#1:1488\n224#1:1489\n253#1:1490\n280#1:1536\n281#1:1537\n250#1:1491\n250#1:1492,5\n250#1:1525\n250#1:1535\n260#1:1526,6\n*E\n"
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
.field final synthetic $activationCode$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $activationState$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Lcom/xiaozhi/android/activation/ActivationService$ActivationState;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $deviceState$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Lcom/xiaozhi/android/model/DeviceState;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $emotion$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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

.field final synthetic $otaStatus$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $viewModel:Lcom/xiaozhi/android/viewmodel/MainViewModel;

.field final synthetic $wsConnectionState$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Lcom/xiaozhi/android/network/WebSocketManager$ConnectionState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$B2P4Cgce5ysf3DjoztuSk4r3Tyo(Lcom/xiaozhi/android/viewmodel/MainViewModel;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/xiaozhi/android/ui/screens/MainScreenKt$MainScreen$3;->invoke$lambda$3$lambda$2$lambda$1$lambda$0(Lcom/xiaozhi/android/viewmodel/MainViewModel;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/xiaozhi/android/viewmodel/MainViewModel;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/runtime/State;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaozhi/android/viewmodel/MainViewModel;",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "+",
            "Lcom/xiaozhi/android/model/DeviceState;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "+",
            "Lcom/xiaozhi/android/activation/ActivationService$ActivationState;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "+",
            "Lcom/xiaozhi/android/network/WebSocketManager$ConnectionState;",
            ">;",
            "Landroidx/compose/foundation/lazy/LazyListState;",
            "Landroidx/compose/runtime/State<",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaozhi/android/ui/screens/MainScreenKt$MainScreen$3;->$viewModel:Lcom/xiaozhi/android/viewmodel/MainViewModel;

    iput-object p2, p0, Lcom/xiaozhi/android/ui/screens/MainScreenKt$MainScreen$3;->$emotion$delegate:Landroidx/compose/runtime/State;

    iput-object p3, p0, Lcom/xiaozhi/android/ui/screens/MainScreenKt$MainScreen$3;->$deviceState$delegate:Landroidx/compose/runtime/State;

    iput-object p4, p0, Lcom/xiaozhi/android/ui/screens/MainScreenKt$MainScreen$3;->$activationState$delegate:Landroidx/compose/runtime/State;

    iput-object p5, p0, Lcom/xiaozhi/android/ui/screens/MainScreenKt$MainScreen$3;->$activationCode$delegate:Landroidx/compose/runtime/State;

    iput-object p6, p0, Lcom/xiaozhi/android/ui/screens/MainScreenKt$MainScreen$3;->$otaStatus$delegate:Landroidx/compose/runtime/State;

    iput-object p7, p0, Lcom/xiaozhi/android/ui/screens/MainScreenKt$MainScreen$3;->$wsConnectionState$delegate:Landroidx/compose/runtime/State;

    iput-object p8, p0, Lcom/xiaozhi/android/ui/screens/MainScreenKt$MainScreen$3;->$listState:Landroidx/compose/foundation/lazy/LazyListState;

    iput-object p9, p0, Lcom/xiaozhi/android/ui/screens/MainScreenKt$MainScreen$3;->$logMessages$delegate:Landroidx/compose/runtime/State;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final invoke$lambda$3$lambda$2$lambda$1$lambda$0(Lcom/xiaozhi/android/viewmodel/MainViewModel;)Lkotlin/Unit;
    .locals 0

    .line 260
    invoke-virtual {p0}, Lcom/xiaozhi/android/viewmodel/MainViewModel;->toggleListening()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 109
    check-cast p1, Landroidx/compose/foundation/layout/PaddingValues;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaozhi/android/ui/screens/MainScreenKt$MainScreen$3;->invoke(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)V
    .locals 41

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v13, p2

    const-string v2, "padding"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v2, p3, 0x6

    if-nez v2, :cond_1

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int v2, p3, v2

    goto :goto_1

    :cond_1
    move/from16 v2, p3

    :goto_1
    and-int/lit8 v3, v2, 0x13

    const/16 v4, 0x12

    if-ne v3, v4, :cond_3

    .line 110
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    .line 302
    :cond_2
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_9

    .line 110
    :cond_3
    :goto_2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, -0x1

    const-string v4, "com.xiaozhi.android.ui.screens.MainScreen.<anonymous> (MainScreen.kt:109)"

    const v5, 0x5b21d38f

    invoke-static {v5, v2, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 111
    :cond_4
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    const/4 v15, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 112
    invoke-static {v2, v15, v12, v11}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxSize$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 113
    invoke-static {v2, v1}, Landroidx/compose/foundation/layout/PaddingKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 110
    iget-object v10, v0, Lcom/xiaozhi/android/ui/screens/MainScreenKt$MainScreen$3;->$viewModel:Lcom/xiaozhi/android/viewmodel/MainViewModel;

    iget-object v2, v0, Lcom/xiaozhi/android/ui/screens/MainScreenKt$MainScreen$3;->$emotion$delegate:Landroidx/compose/runtime/State;

    iget-object v8, v0, Lcom/xiaozhi/android/ui/screens/MainScreenKt$MainScreen$3;->$deviceState$delegate:Landroidx/compose/runtime/State;

    iget-object v9, v0, Lcom/xiaozhi/android/ui/screens/MainScreenKt$MainScreen$3;->$activationState$delegate:Landroidx/compose/runtime/State;

    iget-object v6, v0, Lcom/xiaozhi/android/ui/screens/MainScreenKt$MainScreen$3;->$activationCode$delegate:Landroidx/compose/runtime/State;

    iget-object v5, v0, Lcom/xiaozhi/android/ui/screens/MainScreenKt$MainScreen$3;->$otaStatus$delegate:Landroidx/compose/runtime/State;

    iget-object v4, v0, Lcom/xiaozhi/android/ui/screens/MainScreenKt$MainScreen$3;->$wsConnectionState$delegate:Landroidx/compose/runtime/State;

    iget-object v3, v0, Lcom/xiaozhi/android/ui/screens/MainScreenKt$MainScreen$3;->$listState:Landroidx/compose/foundation/lazy/LazyListState;

    iget-object v7, v0, Lcom/xiaozhi/android/ui/screens/MainScreenKt$MainScreen$3;->$logMessages$delegate:Landroidx/compose/runtime/State;

    const v14, -0x1cd0f17e

    const-string v11, "CC(Column)P(2,3,1)86@4330L61,87@4396L133:Column.kt#2w3rfo"

    .line 1449
    invoke-static {v13, v14, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 1450
    sget-object v11, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v11}, Landroidx/compose/foundation/layout/Arrangement;->getTop()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    move-result-object v11

    .line 1451
    sget-object v14, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v14}, Landroidx/compose/ui/Alignment$Companion;->getStart()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v14

    move-object/from16 p1, v7

    const/4 v7, 0x0

    .line 1454
    invoke-static {v11, v14, v13, v7}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v11

    const v14, -0x4ee9b9da

    move-object/from16 v17, v6

    .line 1456
    const-string v6, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh"

    invoke-static {v13, v14, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 1457
    invoke-static {v13, v7}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v18

    .line 1458
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v7

    .line 1459
    invoke-static {v13, v1}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 1461
    sget-object v20, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v14

    move-object/from16 v20, v6

    const v6, -0x2942ffcf

    move-object/from16 v21, v5

    .line 1462
    const-string v5, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp"

    invoke-static {v13, v6, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 1463
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v6

    instance-of v6, v6, Landroidx/compose/runtime/Applier;

    if-nez v6, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 1464
    :cond_5
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 1465
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1466
    invoke-interface {v13, v14}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_3

    .line 1468
    :cond_6
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 1470
    :goto_3
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v6

    .line 1471
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v14

    invoke-static {v6, v11, v14}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1472
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v11}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v11

    invoke-static {v6, v7, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1474
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v7

    .line 1476
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v11

    if-nez v11, :cond_7

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v11, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 1477
    :cond_7
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v6, v11}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1478
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v6, v11, v7}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1481
    :cond_8
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v7

    invoke-static {v6, v1, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const v1, -0x16ef5699

    .line 1483
    const-string v6, "C88@4444L9:Column.kt#2w3rfo"

    .line 1484
    invoke-static {v13, v1, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v1, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    move-object v14, v1

    check-cast v14, Landroidx/compose/foundation/layout/ColumnScope;

    .line 117
    invoke-static {v2}, Lcom/xiaozhi/android/ui/screens/MainScreenKt;->access$MainScreen$lambda$1(Landroidx/compose/runtime/State;)Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-static {v8}, Lcom/xiaozhi/android/ui/screens/MainScreenKt;->access$MainScreen$lambda$0(Landroidx/compose/runtime/State;)Lcom/xiaozhi/android/model/DeviceState;

    move-result-object v2

    .line 119
    sget-object v6, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v6, Landroidx/compose/ui/Modifier;

    const/4 v7, 0x0

    .line 120
    invoke-static {v6, v15, v12, v7}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v24

    const/16 v27, 0x2

    const/16 v28, 0x0

    const v25, 0x3ecccccd    # 0.4f

    const/16 v26, 0x0

    move-object/from16 v23, v14

    .line 121
    invoke-static/range {v23 .. v28}, Landroidx/compose/foundation/layout/ColumnScope;->weight$default(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/ui/Modifier;FZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v11, 0x0

    move-object/from16 v29, v3

    move-object v3, v6

    move-object/from16 v18, v4

    move-object/from16 v4, p2

    move-object/from16 v30, v5

    move-object/from16 v6, v21

    move v5, v7

    move-object/from16 v7, v17

    move-object/from16 v31, v20

    move v6, v11

    .line 116
    invoke-static/range {v1 .. v6}, Lcom/xiaozhi/android/ui/screens/MainScreenKt;->EmotionDisplay(Ljava/lang/String;Lcom/xiaozhi/android/model/DeviceState;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    .line 125
    invoke-static {v9}, Lcom/xiaozhi/android/ui/screens/MainScreenKt;->access$MainScreen$lambda$3(Landroidx/compose/runtime/State;)Lcom/xiaozhi/android/activation/ActivationService$ActivationState;

    move-result-object v1

    sget-object v2, Lcom/xiaozhi/android/ui/screens/MainScreenKt$MainScreen$3$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lcom/xiaozhi/android/activation/ActivationService$ActivationState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/16 v11, 0x36

    const/16 v2, 0x8

    const/16 v6, 0x10

    if-eq v1, v12, :cond_d

    const/4 v3, 0x2

    if-eq v1, v3, :cond_c

    const/4 v3, 0x3

    if-eq v1, v3, :cond_b

    const/4 v3, 0x4

    if-eq v1, v3, :cond_a

    const v1, 0x1ae819d0

    .line 220
    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 222
    invoke-static/range {v21 .. v21}, Lcom/xiaozhi/android/ui/screens/MainScreenKt;->access$MainScreen$lambda$6(Landroidx/compose/runtime/State;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 224
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    const/4 v7, 0x0

    invoke-static {v1, v15, v12, v7}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    int-to-float v2, v6

    .line 1489
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    int-to-float v3, v3

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 224
    invoke-static {v1, v2, v3}, Landroidx/compose/foundation/layout/PaddingKt;->padding-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v16

    .line 225
    sget-object v1, Landroidx/compose/material3/CardDefaults;->INSTANCE:Landroidx/compose/material3/CardDefaults;

    sget-object v2, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v3, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v2, v13, v3}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/material3/ColorScheme;->getSecondaryContainer-0d7_KjU()J

    move-result-wide v32

    const/16 v38, 0xe

    const/16 v39, 0x0

    const/high16 v34, 0x3f000000    # 0.5f

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    invoke-static/range {v32 .. v39}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v2

    sget v4, Landroidx/compose/material3/CardDefaults;->$stable:I

    shl-int/lit8 v17, v4, 0xc

    const/16 v20, 0xe

    const-wide/16 v4, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    move-object/from16 v40, p1

    move-object/from16 v19, v7

    move-wide/from16 v6, v22

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-wide/from16 v8, v24

    move-object v15, v10

    move-object/from16 v10, p2

    move/from16 v11, v17

    move v0, v12

    move/from16 v12, v20

    invoke-virtual/range {v1 .. v12}, Landroidx/compose/material3/CardDefaults;->cardColors-ro_MJ88(JJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/CardColors;

    move-result-object v3

    .line 226
    new-instance v1, Lcom/xiaozhi/android/ui/screens/MainScreenKt$MainScreen$3$1$3;

    move-object/from16 v12, v21

    invoke-direct {v1, v15, v12}, Lcom/xiaozhi/android/ui/screens/MainScreenKt$MainScreen$3$1$3;-><init>(Lcom/xiaozhi/android/viewmodel/MainViewModel;Landroidx/compose/runtime/State;)V

    const v2, 0x35850c0b

    const/16 v11, 0x36

    invoke-static {v2, v0, v1, v13, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lkotlin/jvm/functions/Function3;

    const v8, 0x30006

    const/16 v9, 0x1a

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, v16

    move-object/from16 v7, p2

    .line 223
    invoke-static/range {v1 .. v9}, Landroidx/compose/material3/CardKt;->Card(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/CardColors;Landroidx/compose/material3/CardElevation;Landroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    goto :goto_4

    :cond_9
    move-object/from16 v40, p1

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-object v15, v10

    move v0, v12

    .line 220
    :goto_4
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_5

    :cond_a
    move-object/from16 v40, p1

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-object v15, v10

    move v0, v12

    move-object/from16 v12, v21

    const v1, 0x1ad3de45

    .line 197
    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 200
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    const/4 v3, 0x0

    const/4 v10, 0x0

    invoke-static {v1, v3, v0, v10}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const/16 v8, 0x10

    int-to-float v3, v8

    .line 1488
    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    int-to-float v2, v2

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    .line 200
    invoke-static {v1, v3, v2}, Landroidx/compose/foundation/layout/PaddingKt;->padding-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v16

    .line 201
    sget-object v1, Landroidx/compose/material3/CardDefaults;->INSTANCE:Landroidx/compose/material3/CardDefaults;

    invoke-static {}, Lcom/xiaozhi/android/ui/theme/ColorKt;->getXiaozhiOrange()J

    move-result-wide v32

    const/16 v38, 0xe

    const/16 v39, 0x0

    const v34, 0x3e19999a    # 0.15f

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    invoke-static/range {v32 .. v39}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v2

    sget v4, Landroidx/compose/material3/CardDefaults;->$stable:I

    shl-int/lit8 v4, v4, 0xc

    or-int/lit8 v17, v4, 0x6

    const/16 v19, 0xe

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v24, 0x0

    move-wide/from16 v8, v24

    move-object/from16 v10, p2

    move/from16 v11, v17

    move-object v0, v12

    move/from16 v12, v19

    invoke-virtual/range {v1 .. v12}, Landroidx/compose/material3/CardDefaults;->cardColors-ro_MJ88(JJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/CardColors;

    move-result-object v3

    .line 202
    new-instance v1, Lcom/xiaozhi/android/ui/screens/MainScreenKt$MainScreen$3$1$2;

    invoke-direct {v1, v15, v0}, Lcom/xiaozhi/android/ui/screens/MainScreenKt$MainScreen$3$1$2;-><init>(Lcom/xiaozhi/android/viewmodel/MainViewModel;Landroidx/compose/runtime/State;)V

    const v0, -0x7768c5d8

    const/4 v2, 0x1

    const/16 v12, 0x36

    invoke-static {v0, v2, v1, v13, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function3;

    const v8, 0x30006

    const/16 v9, 0x1a

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, v16

    move-object/from16 v7, p2

    .line 199
    invoke-static/range {v1 .. v9}, Landroidx/compose/material3/CardKt;->Card(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/CardColors;Landroidx/compose/material3/CardElevation;Landroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 197
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_5
    move-object/from16 p1, v14

    goto/16 :goto_6

    :cond_b
    move-object/from16 v40, p1

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-object v15, v10

    move v12, v11

    const v0, 0x1ac70cdf

    .line 182
    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 184
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v11, 0x0

    invoke-static {v0, v1, v3, v11}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/16 v10, 0x10

    int-to-float v1, v10

    .line 1487
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    int-to-float v2, v2

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    .line 184
    invoke-static {v0, v1, v2}, Landroidx/compose/foundation/layout/PaddingKt;->padding-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 185
    sget-object v1, Landroidx/compose/material3/CardDefaults;->INSTANCE:Landroidx/compose/material3/CardDefaults;

    sget-object v2, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v3, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v2, v13, v3}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/material3/ColorScheme;->getSecondaryContainer-0d7_KjU()J

    move-result-wide v2

    sget v4, Landroidx/compose/material3/CardDefaults;->$stable:I

    shl-int/lit8 v16, v4, 0xc

    const/16 v19, 0xe

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object/from16 v10, p2

    move/from16 v11, v16

    move-object/from16 p1, v14

    move v14, v12

    move/from16 v12, v19

    invoke-virtual/range {v1 .. v12}, Landroidx/compose/material3/CardDefaults;->cardColors-ro_MJ88(JJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/CardColors;

    move-result-object v3

    sget-object v1, Lcom/xiaozhi/android/ui/screens/ComposableSingletons$MainScreenKt;->INSTANCE:Lcom/xiaozhi/android/ui/screens/ComposableSingletons$MainScreenKt;

    invoke-virtual {v1}, Lcom/xiaozhi/android/ui/screens/ComposableSingletons$MainScreenKt;->getLambda-6$app_release()Lkotlin/jvm/functions/Function3;

    move-result-object v6

    const v8, 0x30006

    const/16 v9, 0x1a

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v0

    move-object/from16 v7, p2

    .line 183
    invoke-static/range {v1 .. v9}, Landroidx/compose/material3/CardKt;->Card(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/CardColors;Landroidx/compose/material3/CardElevation;Landroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 182
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_6

    :cond_c
    move-object/from16 v40, p1

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-object v15, v10

    move-object/from16 p1, v14

    move v14, v11

    const v0, 0x1aa2d1d1

    .line 141
    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 143
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v12, 0x0

    invoke-static {v0, v1, v3, v12}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/16 v11, 0x10

    int-to-float v1, v11

    .line 1486
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    int-to-float v2, v2

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    .line 143
    invoke-static {v0, v1, v2}, Landroidx/compose/foundation/layout/PaddingKt;->padding-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 144
    sget-object v1, Landroidx/compose/material3/CardDefaults;->INSTANCE:Landroidx/compose/material3/CardDefaults;

    invoke-static {}, Lcom/xiaozhi/android/ui/theme/ColorKt;->getXiaozhiOrange()J

    move-result-wide v32

    const/16 v38, 0xe

    const/16 v39, 0x0

    const v34, 0x3e19999a    # 0.15f

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    invoke-static/range {v32 .. v39}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v2

    sget v4, Landroidx/compose/material3/CardDefaults;->$stable:I

    shl-int/lit8 v4, v4, 0xc

    or-int/lit8 v16, v4, 0x6

    const/16 v19, 0xe

    const-wide/16 v4, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v24, 0x0

    move-object v10, v7

    move-wide v6, v8

    move-wide/from16 v8, v24

    move-object v14, v10

    move-object/from16 v10, p2

    move/from16 v11, v16

    move/from16 v12, v19

    invoke-virtual/range {v1 .. v12}, Landroidx/compose/material3/CardDefaults;->cardColors-ro_MJ88(JJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/CardColors;

    move-result-object v3

    .line 145
    new-instance v1, Lcom/xiaozhi/android/ui/screens/MainScreenKt$MainScreen$3$1$1;

    invoke-direct {v1, v15, v14}, Lcom/xiaozhi/android/ui/screens/MainScreenKt$MainScreen$3$1$1;-><init>(Lcom/xiaozhi/android/viewmodel/MainViewModel;Landroidx/compose/runtime/State;)V

    const v2, -0x7f26595a

    const/16 v4, 0x36

    const/4 v5, 0x1

    invoke-static {v2, v5, v1, v13, v4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lkotlin/jvm/functions/Function3;

    const v8, 0x30006

    const/16 v9, 0x1a

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v0

    move-object/from16 v7, p2

    .line 142
    invoke-static/range {v1 .. v9}, Landroidx/compose/material3/CardKt;->Card(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/CardColors;Landroidx/compose/material3/CardElevation;Landroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 141
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_6
    const/4 v14, 0x0

    goto :goto_7

    :cond_d
    move-object/from16 v40, p1

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-object v15, v10

    move-object/from16 p1, v14

    const v0, 0x1a9566fe

    .line 126
    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 128
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v14, 0x0

    invoke-static {v0, v1, v3, v14}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/16 v12, 0x10

    int-to-float v1, v12

    .line 1485
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    int-to-float v2, v2

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    .line 128
    invoke-static {v0, v1, v2}, Landroidx/compose/foundation/layout/PaddingKt;->padding-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 129
    sget-object v1, Landroidx/compose/material3/CardDefaults;->INSTANCE:Landroidx/compose/material3/CardDefaults;

    sget-object v2, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v3, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v2, v13, v3}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/material3/ColorScheme;->getSecondaryContainer-0d7_KjU()J

    move-result-wide v2

    sget v4, Landroidx/compose/material3/CardDefaults;->$stable:I

    shl-int/lit8 v11, v4, 0xc

    const/16 v16, 0xe

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object/from16 v10, p2

    move/from16 v12, v16

    invoke-virtual/range {v1 .. v12}, Landroidx/compose/material3/CardDefaults;->cardColors-ro_MJ88(JJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/CardColors;

    move-result-object v3

    sget-object v1, Lcom/xiaozhi/android/ui/screens/ComposableSingletons$MainScreenKt;->INSTANCE:Lcom/xiaozhi/android/ui/screens/ComposableSingletons$MainScreenKt;

    invoke-virtual {v1}, Lcom/xiaozhi/android/ui/screens/ComposableSingletons$MainScreenKt;->getLambda-4$app_release()Lkotlin/jvm/functions/Function3;

    move-result-object v6

    const v8, 0x30006

    const/16 v9, 0x1a

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v0

    move-object/from16 v7, p2

    .line 127
    invoke-static/range {v1 .. v9}, Landroidx/compose/material3/CardKt;->Card(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/CardColors;Landroidx/compose/material3/CardElevation;Landroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 126
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 251
    :goto_7
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 252
    invoke-static {v0, v1, v2, v14}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/16 v3, 0x10

    int-to-float v8, v3

    .line 1490
    invoke-static {v8}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 253
    invoke-static {v0, v1, v3, v2, v14}, Landroidx/compose/foundation/layout/PaddingKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 254
    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->getCenter()Landroidx/compose/ui/Alignment;

    move-result-object v1

    const v2, 0x2bb5b5d7

    .line 250
    const-string v3, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo"

    .line 1491
    invoke-static {v13, v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v9, 0x0

    .line 1495
    invoke-static {v1, v9}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v1

    move-object/from16 v2, v31

    const v3, -0x4ee9b9da

    .line 1497
    invoke-static {v13, v3, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 1498
    invoke-static {v13, v9}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v2

    .line 1499
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v3

    .line 1500
    invoke-static {v13, v0}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 1502
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v4

    move-object/from16 v5, v30

    const v6, -0x2942ffcf

    .line 1503
    invoke-static {v13, v6, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 1504
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v5

    instance-of v5, v5, Landroidx/compose/runtime/Applier;

    if-nez v5, :cond_e

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 1505
    :cond_e
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 1506
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1507
    invoke-interface {v13, v4}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_8

    .line 1509
    :cond_f
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 1511
    :goto_8
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v4

    .line 1512
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    invoke-static {v4, v1, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1513
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v4, v3, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1515
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    .line 1517
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v3

    if-nez v3, :cond_10

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 1518
    :cond_10
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1519
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v2, v1}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1522
    :cond_11
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v4, v0, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const v0, -0x7ff519f7    # -1.000876E-39f

    .line 1524
    const-string v1, "C73@3429L9:Box.kt#2w3rfo"

    .line 1525
    invoke-static {v13, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    check-cast v0, Landroidx/compose/foundation/layout/BoxScope;

    .line 257
    invoke-static/range {v22 .. v22}, Lcom/xiaozhi/android/ui/screens/MainScreenKt;->access$MainScreen$lambda$0(Landroidx/compose/runtime/State;)Lcom/xiaozhi/android/model/DeviceState;

    move-result-object v1

    .line 258
    invoke-static/range {v18 .. v18}, Lcom/xiaozhi/android/ui/screens/MainScreenKt;->access$MainScreen$lambda$4(Landroidx/compose/runtime/State;)Lcom/xiaozhi/android/network/WebSocketManager$ConnectionState;

    move-result-object v2

    .line 259
    invoke-static/range {v23 .. v23}, Lcom/xiaozhi/android/ui/screens/MainScreenKt;->access$MainScreen$lambda$3(Landroidx/compose/runtime/State;)Lcom/xiaozhi/android/activation/ActivationService$ActivationState;

    move-result-object v3

    const v0, 0xa200924

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v13, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    .line 1526
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v0, :cond_12

    .line 1527
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v4, v0, :cond_13

    .line 260
    :cond_12
    new-instance v4, Lcom/xiaozhi/android/ui/screens/MainScreenKt$MainScreen$3$$ExternalSyntheticLambda0;

    invoke-direct {v4, v15}, Lcom/xiaozhi/android/ui/screens/MainScreenKt$MainScreen$3$$ExternalSyntheticLambda0;-><init>(Lcom/xiaozhi/android/viewmodel/MainViewModel;)V

    .line 1529
    invoke-interface {v13, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 260
    :cond_13
    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const/4 v6, 0x0

    move-object/from16 v5, p2

    .line 256
    invoke-static/range {v1 .. v6}, Lcom/xiaozhi/android/ui/screens/MainScreenKt;->MainControlButton(Lcom/xiaozhi/android/model/DeviceState;Lcom/xiaozhi/android/network/WebSocketManager$ConnectionState;Lcom/xiaozhi/android/activation/ActivationService$ActivationState;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 1525
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 1532
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 1503
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 1497
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 1491
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 266
    invoke-static/range {v22 .. v22}, Lcom/xiaozhi/android/ui/screens/MainScreenKt;->access$MainScreen$lambda$0(Landroidx/compose/runtime/State;)Lcom/xiaozhi/android/model/DeviceState;

    move-result-object v0

    .line 267
    invoke-static/range {v18 .. v18}, Lcom/xiaozhi/android/ui/screens/MainScreenKt;->access$MainScreen$lambda$4(Landroidx/compose/runtime/State;)Lcom/xiaozhi/android/network/WebSocketManager$ConnectionState;

    move-result-object v10

    .line 268
    invoke-static/range {v23 .. v23}, Lcom/xiaozhi/android/ui/screens/MainScreenKt;->access$MainScreen$lambda$3(Landroidx/compose/runtime/State;)Lcom/xiaozhi/android/activation/ActivationService$ActivationState;

    move-result-object v11

    .line 269
    invoke-virtual {v15}, Lcom/xiaozhi/android/viewmodel/MainViewModel;->getWebSocketManager()Lcom/xiaozhi/android/network/WebSocketManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaozhi/android/network/WebSocketManager;->getDisconnectReason()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    const/4 v7, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v7}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/StateFlow;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, v10

    move-object v3, v11

    .line 265
    invoke-static/range {v1 .. v7}, Lcom/xiaozhi/android/ui/screens/MainScreenKt;->StatusText(Lcom/xiaozhi/android/model/DeviceState;Lcom/xiaozhi/android/network/WebSocketManager$ConnectionState;Lcom/xiaozhi/android/activation/ActivationService$ActivationState;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)V

    .line 273
    invoke-static {v15, v13, v9}, Lcom/xiaozhi/android/ui/screens/MainScreenKt;->MusicPlayerBar(Lcom/xiaozhi/android/viewmodel/MainViewModel;Landroidx/compose/runtime/Composer;I)V

    .line 277
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 278
    invoke-static {v0, v1, v2, v14}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v24

    const/16 v27, 0x2

    const/16 v28, 0x0

    const v25, 0x3ecccccd    # 0.4f

    const/16 v26, 0x0

    move-object/from16 v23, p1

    .line 279
    invoke-static/range {v23 .. v28}, Landroidx/compose/foundation/layout/ColumnScope;->weight$default(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/ui/Modifier;FZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 1536
    invoke-static {v8}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 280
    invoke-static {v0, v1, v3, v2, v14}, Landroidx/compose/foundation/layout/PaddingKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 1537
    invoke-static {v8}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 281
    invoke-static {v1}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroidx/compose/ui/graphics/Shape;

    .line 282
    sget-object v1, Landroidx/compose/material3/CardDefaults;->INSTANCE:Landroidx/compose/material3/CardDefaults;

    .line 283
    sget-object v2, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v3, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v2, v13, v3}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/material3/ColorScheme;->getSurfaceVariant-0d7_KjU()J

    move-result-wide v3

    const/16 v9, 0xe

    const/4 v10, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v10}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v2

    sget v4, Landroidx/compose/material3/CardDefaults;->$stable:I

    shl-int/lit8 v11, v4, 0xc

    const/16 v12, 0xe

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object/from16 v10, p2

    .line 282
    invoke-virtual/range {v1 .. v12}, Landroidx/compose/material3/CardDefaults;->cardColors-ro_MJ88(JJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/CardColors;

    move-result-object v3

    .line 285
    new-instance v1, Lcom/xiaozhi/android/ui/screens/MainScreenKt$MainScreen$3$1$5;

    move-object/from16 v2, v29

    move-object/from16 v4, v40

    invoke-direct {v1, v2, v4}, Lcom/xiaozhi/android/ui/screens/MainScreenKt$MainScreen$3$1$5;-><init>(Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/runtime/State;)V

    const v2, -0x5014f159

    const/16 v4, 0x36

    const/4 v5, 0x1

    invoke-static {v2, v5, v1, v13, v4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lkotlin/jvm/functions/Function3;

    const/high16 v8, 0x30000

    const/16 v9, 0x18

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v0

    move-object v2, v14

    move-object/from16 v7, p2

    .line 276
    invoke-static/range {v1 .. v9}, Landroidx/compose/material3/CardKt;->Card(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/CardColors;Landroidx/compose/material3/CardElevation;Landroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 1484
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 1538
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 1462
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 1456
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 1449
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 1541
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_14
    :goto_9
    return-void
.end method
