.class final Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$2$1;
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

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$2$1$WhenMappings;
    }
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
    c = "com.xiaozhi.android.ui.screens.SettingsScreenKt$SettingsScreen$2$1"
    f = "SettingsScreen.kt"
    i = {}
    l = {
        0x48,
        0x4d
    }
    m = "invokeSuspend"
    n = {}
    s = {}
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

.field final synthetic $updateState$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Lcom/xiaozhi/android/update/UpdateManager$UpdateState;",
            ">;"
        }
    .end annotation
.end field

.field label:I


# direct methods
.method constructor <init>(Lcom/xiaozhi/android/update/UpdateManager;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
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
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$2$1;->$updateManager:Lcom/xiaozhi/android/update/UpdateManager;

    iput-object p2, p0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$2$1;->$updateState$delegate:Landroidx/compose/runtime/State;

    iput-object p3, p0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$2$1;->$showUpdateDialog$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance p1, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$2$1;

    iget-object v0, p0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$2$1;->$updateManager:Lcom/xiaozhi/android/update/UpdateManager;

    iget-object v1, p0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$2$1;->$updateState$delegate:Landroidx/compose/runtime/State;

    iget-object v2, p0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$2$1;->$showUpdateDialog$delegate:Landroidx/compose/runtime/MutableState;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$2$1;-><init>(Lcom/xiaozhi/android/update/UpdateManager;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$2$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$2$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 69
    iget v1, p0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$2$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 70
    iget-object p1, p0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$2$1;->$updateState$delegate:Landroidx/compose/runtime/State;

    invoke-static {p1}, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt;->access$SettingsScreen$lambda$25(Landroidx/compose/runtime/State;)Lcom/xiaozhi/android/update/UpdateManager$UpdateState;

    move-result-object p1

    sget-object v1, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$2$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/xiaozhi/android/update/UpdateManager$UpdateState;->ordinal()I

    move-result p1

    aget p1, v1, p1

    if-eq p1, v4, :cond_5

    if-eq p1, v3, :cond_3

    goto :goto_2

    .line 77
    :cond_3
    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput v3, p0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$2$1;->label:I

    const-wide/16 v3, 0x7d0

    invoke-static {v3, v4, p1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 78
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$2$1;->$showUpdateDialog$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {p1, v2}, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt;->access$SettingsScreen$lambda$20(Landroidx/compose/runtime/MutableState;Z)V

    .line 79
    iget-object p1, p0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$2$1;->$updateManager:Lcom/xiaozhi/android/update/UpdateManager;

    invoke-virtual {p1}, Lcom/xiaozhi/android/update/UpdateManager;->reset()V

    goto :goto_2

    .line 72
    :cond_5
    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput v4, p0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$2$1;->label:I

    const-wide/16 v3, 0xbb8

    invoke-static {v3, v4, p1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    .line 73
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$2$1;->$showUpdateDialog$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {p1, v2}, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt;->access$SettingsScreen$lambda$20(Landroidx/compose/runtime/MutableState;Z)V

    .line 74
    iget-object p1, p0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$2$1;->$updateManager:Lcom/xiaozhi/android/update/UpdateManager;

    invoke-virtual {p1}, Lcom/xiaozhi/android/update/UpdateManager;->reset()V

    .line 83
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
