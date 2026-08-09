.class final Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
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

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.xiaozhi.android.ui.screens.SettingsScreenKt$SettingsScreen$1$1"
    f = "SettingsScreen.kt"
    i = {
        0x0,
        0x1,
        0x2,
        0x3,
        0x4
    }
    l = {
        0x3c,
        0x3d,
        0x3e,
        0x3f,
        0x40,
        0x41
    }
    m = "invokeSuspend"
    n = {
        "configManager",
        "configManager",
        "configManager",
        "configManager",
        "configManager"
    }
    s = {
        "L$0",
        "L$0",
        "L$0",
        "L$0",
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $accessToken$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $activationVersion$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $clientId$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $deviceId$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $otaUrl$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $viewModel:Lcom/xiaozhi/android/viewmodel/MainViewModel;

.field final synthetic $wsUrl$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lcom/xiaozhi/android/viewmodel/MainViewModel;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaozhi/android/viewmodel/MainViewModel;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$1$1;->$viewModel:Lcom/xiaozhi/android/viewmodel/MainViewModel;

    iput-object p2, p0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$1$1;->$wsUrl$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p3, p0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$1$1;->$accessToken$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p4, p0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$1$1;->$otaUrl$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p5, p0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$1$1;->$deviceId$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p6, p0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$1$1;->$clientId$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p7, p0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$1$1;->$activationVersion$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$1$1;

    iget-object v1, p0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$1$1;->$viewModel:Lcom/xiaozhi/android/viewmodel/MainViewModel;

    iget-object v2, p0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$1$1;->$wsUrl$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v3, p0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$1$1;->$accessToken$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v4, p0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$1$1;->$otaUrl$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v5, p0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$1$1;->$deviceId$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v6, p0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$1$1;->$clientId$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v7, p0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$1$1;->$activationVersion$delegate:Landroidx/compose/runtime/MutableState;

    move-object v0, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$1$1;-><init>(Lcom/xiaozhi/android/viewmodel/MainViewModel;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 58
    iget v1, p0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$1$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget-object v0, p0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$1$1;->L$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/runtime/MutableState;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_1
    iget-object v1, p0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$1$1;->L$1:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/runtime/MutableState;

    iget-object v2, p0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$1$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/xiaozhi/android/config/ConfigManager;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_2
    iget-object v1, p0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$1$1;->L$1:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/runtime/MutableState;

    iget-object v2, p0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$1$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/xiaozhi/android/config/ConfigManager;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_3
    iget-object v1, p0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$1$1;->L$1:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/runtime/MutableState;

    iget-object v2, p0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$1$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/xiaozhi/android/config/ConfigManager;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_4
    iget-object v1, p0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$1$1;->L$1:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/runtime/MutableState;

    iget-object v2, p0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$1$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/xiaozhi/android/config/ConfigManager;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_5
    iget-object v1, p0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$1$1;->L$1:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/runtime/MutableState;

    iget-object v2, p0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$1$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/xiaozhi/android/config/ConfigManager;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_6
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 59
    new-instance v2, Lcom/xiaozhi/android/config/ConfigManager;

    iget-object p1, p0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$1$1;->$viewModel:Lcom/xiaozhi/android/viewmodel/MainViewModel;

    invoke-virtual {p1}, Lcom/xiaozhi/android/viewmodel/MainViewModel;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-direct {v2, p1}, Lcom/xiaozhi/android/config/ConfigManager;-><init>(Landroid/content/Context;)V

    .line 60
    iget-object v1, p0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$1$1;->$wsUrl$delegate:Landroidx/compose/runtime/MutableState;

    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput-object v2, p0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$1$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$1$1;->L$1:Ljava/lang/Object;

    const/4 v3, 0x1

    iput v3, p0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$1$1;->label:I

    invoke-virtual {v2, p1}, Lcom/xiaozhi/android/config/ConfigManager;->getWebsocketUrl(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    return-object v0

    :cond_0
    :goto_0
    check-cast p1, Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt;->access$SettingsScreen$lambda$2(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$1$1;->$accessToken$delegate:Landroidx/compose/runtime/MutableState;

    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput-object v2, p0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$1$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$1$1;->L$1:Ljava/lang/Object;

    const/4 v3, 0x2

    iput v3, p0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$1$1;->label:I

    invoke-virtual {v2, p1}, Lcom/xiaozhi/android/config/ConfigManager;->getAccessToken(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_1

    return-object v0

    :cond_1
    :goto_1
    check-cast p1, Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt;->access$SettingsScreen$lambda$5(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V

    .line 62
    iget-object v1, p0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$1$1;->$otaUrl$delegate:Landroidx/compose/runtime/MutableState;

    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput-object v2, p0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$1$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$1$1;->L$1:Ljava/lang/Object;

    const/4 v3, 0x3

    iput v3, p0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$1$1;->label:I

    invoke-virtual {v2, p1}, Lcom/xiaozhi/android/config/ConfigManager;->getOtaUrl(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_2
    check-cast p1, Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt;->access$SettingsScreen$lambda$8(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V

    .line 63
    iget-object v1, p0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$1$1;->$deviceId$delegate:Landroidx/compose/runtime/MutableState;

    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput-object v2, p0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$1$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$1$1;->L$1:Ljava/lang/Object;

    const/4 v3, 0x4

    iput v3, p0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$1$1;->label:I

    invoke-virtual {v2, p1}, Lcom/xiaozhi/android/config/ConfigManager;->getDeviceId(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_3
    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_4

    const-string p1, ""

    :cond_4
    invoke-static {v1, p1}, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt;->access$SettingsScreen$lambda$11(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$1$1;->$clientId$delegate:Landroidx/compose/runtime/MutableState;

    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput-object v2, p0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$1$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$1$1;->L$1:Ljava/lang/Object;

    const/4 v3, 0x5

    iput v3, p0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$1$1;->label:I

    invoke-virtual {v2, p1}, Lcom/xiaozhi/android/config/ConfigManager;->getClientId(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_4
    check-cast p1, Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt;->access$SettingsScreen$lambda$14(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V

    .line 65
    iget-object p1, p0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$1$1;->$activationVersion$delegate:Landroidx/compose/runtime/MutableState;

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput-object p1, p0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$1$1;->L$0:Ljava/lang/Object;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$1$1;->L$1:Ljava/lang/Object;

    const/4 v3, 0x6

    iput v3, p0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$1$1;->label:I

    invoke-virtual {v2, v1}, Lcom/xiaozhi/android/config/ConfigManager;->getActivationVersion(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_6

    return-object v0

    :cond_6
    move-object v0, p1

    move-object p1, v1

    :goto_5
    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt;->access$SettingsScreen$lambda$17(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V

    .line 66
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
