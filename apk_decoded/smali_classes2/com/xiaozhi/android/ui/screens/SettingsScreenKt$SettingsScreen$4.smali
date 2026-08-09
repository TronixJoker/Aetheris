.class final Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$4;
.super Ljava/lang/Object;
.source "SettingsScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaozhi/android/ui/screens/SettingsScreenKt;->SettingsScreen(Lkotlin/jvm/functions/Function0;Lcom/xiaozhi/android/viewmodel/MainViewModel;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$4$WhenMappings;
    }
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
    value = "SMAP\nSettingsScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingsScreen.kt\ncom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$4\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,375:1\n1225#2,6:376\n1225#2,6:382\n1225#2,6:389\n149#3:388\n*S KotlinDebug\n*F\n+ 1 SettingsScreen.kt\ncom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$4\n*L\n184#1:376,6\n191#1:382,6\n204#1:389,6\n201#1:388\n*E\n"
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
.field final synthetic $showUpdateDialog$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $updateManager:Lcom/xiaozhi/android/update/UpdateManager;

.field final synthetic $updateResult$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/xiaozhi/android/update/UpdateManager$UpdateResult;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $updateState$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Lcom/xiaozhi/android/update/UpdateManager$UpdateState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$EnoN2AtyuXm_jq_na7siDvZW2do(Lcom/xiaozhi/android/update/UpdateManager;Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$4;->invoke$lambda$5$lambda$4(Lcom/xiaozhi/android/update/UpdateManager;Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$TnRG2KTAz1DhpQW8ZDjY5UOzJzc(Lcom/xiaozhi/android/update/UpdateManager;Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$4;->invoke$lambda$1$lambda$0(Lcom/xiaozhi/android/update/UpdateManager;Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$TyS0g9n_jthHuw-nKhTwjG9xa-k(Lcom/xiaozhi/android/update/UpdateManager;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$4;->invoke$lambda$3$lambda$2(Lcom/xiaozhi/android/update/UpdateManager;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/xiaozhi/android/update/UpdateManager;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaozhi/android/update/UpdateManager;",
            "Landroidx/compose/runtime/State<",
            "+",
            "Lcom/xiaozhi/android/update/UpdateManager$UpdateState;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/xiaozhi/android/update/UpdateManager$UpdateResult;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$4;->$updateManager:Lcom/xiaozhi/android/update/UpdateManager;

    iput-object p2, p0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$4;->$updateState$delegate:Landroidx/compose/runtime/State;

    iput-object p3, p0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$4;->$updateResult$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p4, p0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$4;->$showUpdateDialog$delegate:Landroidx/compose/runtime/MutableState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final invoke$lambda$1$lambda$0(Lcom/xiaozhi/android/update/UpdateManager;Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 0

    .line 185
    invoke-static {p1}, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt;->access$SettingsScreen$lambda$22(Landroidx/compose/runtime/MutableState;)Lcom/xiaozhi/android/update/UpdateManager$UpdateResult;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/xiaozhi/android/update/UpdateManager$UpdateResult;->getDownloadUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaozhi/android/update/UpdateManager;->downloadUpdate(Ljava/lang/String;)V

    .line 186
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final invoke$lambda$3$lambda$2(Lcom/xiaozhi/android/update/UpdateManager;)Lkotlin/Unit;
    .locals 0

    .line 192
    invoke-virtual {p0}, Lcom/xiaozhi/android/update/UpdateManager;->retryInstall()V

    .line 193
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final invoke$lambda$5$lambda$4(Lcom/xiaozhi/android/update/UpdateManager;Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 1

    const/4 v0, 0x0

    .line 205
    invoke-static {p1, v0}, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt;->access$SettingsScreen$lambda$20(Landroidx/compose/runtime/MutableState;Z)V

    .line 206
    invoke-virtual {p0}, Lcom/xiaozhi/android/update/UpdateManager;->reset()V

    .line 207
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 181
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$4;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 15

    move-object v0, p0

    move-object/from16 v14, p1

    move/from16 v1, p2

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 182
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 211
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_2

    .line 182
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, -0x1

    const-string v4, "com.xiaozhi.android.ui.screens.SettingsScreen.<anonymous> (SettingsScreen.kt:181)"

    const v5, 0x7bbfe87f

    invoke-static {v5, v1, v2, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    iget-object v1, v0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$4;->$updateState$delegate:Landroidx/compose/runtime/State;

    invoke-static {v1}, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt;->access$SettingsScreen$lambda$25(Landroidx/compose/runtime/State;)Lcom/xiaozhi/android/update/UpdateManager$UpdateState;

    move-result-object v1

    sget-object v2, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$4$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lcom/xiaozhi/android/update/UpdateManager$UpdateState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_9

    if-eq v1, v3, :cond_6

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    const/4 v2, 0x4

    if-eq v1, v2, :cond_5

    const/4 v2, 0x5

    if-eq v1, v2, :cond_5

    const v1, -0x4c83a59a

    .line 203
    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const v1, 0x501cce73

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    iget-object v1, v0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$4;->$updateManager:Lcom/xiaozhi/android/update/UpdateManager;

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    .line 204
    iget-object v2, v0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$4;->$updateManager:Lcom/xiaozhi/android/update/UpdateManager;

    iget-object v3, v0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$4;->$showUpdateDialog$delegate:Landroidx/compose/runtime/MutableState;

    .line 389
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v1, :cond_3

    .line 390
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v4, v1, :cond_4

    .line 204
    :cond_3
    new-instance v4, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$4$$ExternalSyntheticLambda2;

    invoke-direct {v4, v2, v3}, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$4$$ExternalSyntheticLambda2;-><init>(Lcom/xiaozhi/android/update/UpdateManager;Landroidx/compose/runtime/MutableState;)V

    .line 392
    invoke-interface {v14, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 204
    :cond_4
    move-object v1, v4

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    sget-object v2, Lcom/xiaozhi/android/ui/screens/ComposableSingletons$SettingsScreenKt;->INSTANCE:Lcom/xiaozhi/android/ui/screens/ComposableSingletons$SettingsScreenKt;

    invoke-virtual {v2}, Lcom/xiaozhi/android/ui/screens/ComposableSingletons$SettingsScreenKt;->getLambda-3$app_release()Lkotlin/jvm/functions/Function3;

    move-result-object v10

    const/high16 v12, 0x30000000

    const/16 v13, 0x1fe

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v11, p1

    invoke-static/range {v1 .. v13}, Landroidx/compose/material3/ButtonKt;->TextButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 203
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto/16 :goto_1

    :cond_5
    const v1, -0x4c85e9c3

    .line 199
    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 201
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    const/4 v2, 0x0

    int-to-float v2, v2

    .line 388
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    .line 201
    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v1, v14, v2}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 199
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto/16 :goto_1

    :cond_6
    const v1, -0x4c8bf5f2

    .line 190
    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const v1, 0x501c89c5

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    iget-object v1, v0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$4;->$updateManager:Lcom/xiaozhi/android/update/UpdateManager;

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    .line 191
    iget-object v2, v0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$4;->$updateManager:Lcom/xiaozhi/android/update/UpdateManager;

    .line 382
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_7

    .line 383
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v3, v1, :cond_8

    .line 191
    :cond_7
    new-instance v3, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$4$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2}, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$4$$ExternalSyntheticLambda1;-><init>(Lcom/xiaozhi/android/update/UpdateManager;)V

    .line 385
    invoke-interface {v14, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 191
    :cond_8
    move-object v1, v3

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    sget-object v2, Lcom/xiaozhi/android/ui/screens/ComposableSingletons$SettingsScreenKt;->INSTANCE:Lcom/xiaozhi/android/ui/screens/ComposableSingletons$SettingsScreenKt;

    invoke-virtual {v2}, Lcom/xiaozhi/android/ui/screens/ComposableSingletons$SettingsScreenKt;->getLambda-2$app_release()Lkotlin/jvm/functions/Function3;

    move-result-object v10

    const/high16 v12, 0x30000000

    const/16 v13, 0x1fe

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v11, p1

    invoke-static/range {v1 .. v13}, Landroidx/compose/material3/ButtonKt;->TextButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 190
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_1

    :cond_9
    const v1, -0x4c90bf6a

    .line 183
    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const v1, 0x501c6241

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    iget-object v1, v0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$4;->$updateManager:Lcom/xiaozhi/android/update/UpdateManager;

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    .line 184
    iget-object v2, v0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$4;->$updateManager:Lcom/xiaozhi/android/update/UpdateManager;

    iget-object v3, v0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$4;->$updateResult$delegate:Landroidx/compose/runtime/MutableState;

    .line 376
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v1, :cond_a

    .line 377
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v4, v1, :cond_b

    .line 184
    :cond_a
    new-instance v4, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$4$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2, v3}, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$4$$ExternalSyntheticLambda0;-><init>(Lcom/xiaozhi/android/update/UpdateManager;Landroidx/compose/runtime/MutableState;)V

    .line 379
    invoke-interface {v14, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 184
    :cond_b
    move-object v1, v4

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    sget-object v2, Lcom/xiaozhi/android/ui/screens/ComposableSingletons$SettingsScreenKt;->INSTANCE:Lcom/xiaozhi/android/ui/screens/ComposableSingletons$SettingsScreenKt;

    invoke-virtual {v2}, Lcom/xiaozhi/android/ui/screens/ComposableSingletons$SettingsScreenKt;->getLambda-1$app_release()Lkotlin/jvm/functions/Function3;

    move-result-object v10

    const/high16 v12, 0x30000000

    const/16 v13, 0x1fe

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v11, p1

    invoke-static/range {v1 .. v13}, Landroidx/compose/material3/ButtonKt;->TextButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 183
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 203
    :goto_1
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_c
    :goto_2
    return-void
.end method
