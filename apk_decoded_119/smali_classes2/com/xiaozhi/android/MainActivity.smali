.class public final Lcom/xiaozhi/android/MainActivity;
.super Landroidx/activity/ComponentActivity;
.source "MainActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaozhi/android/MainActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0014J\u0010\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\rH\u0014J\u0006\u0010\u000e\u001a\u00020\u0008R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/xiaozhi/android/MainActivity;",
        "Landroidx/activity/ComponentActivity;",
        "<init>",
        "()V",
        "requestPermissionLauncher",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onNewIntent",
        "intent",
        "Landroid/content/Intent;",
        "requestOverlayPermission",
        "Companion",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I

.field public static final ACTION_PET_LISTEN:Ljava/lang/String; = "com.xiaozhi.android.PET_LISTEN"

.field public static final Companion:Lcom/xiaozhi/android/MainActivity$Companion;


# instance fields
.field private final requestPermissionLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$NubX-AOnHISX3svLRZ2XRqglWXw(Z)V
    .locals 0

    invoke-static {p0}, Lcom/xiaozhi/android/MainActivity;->requestPermissionLauncher$lambda$0(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/xiaozhi/android/MainActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaozhi/android/MainActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/xiaozhi/android/MainActivity;->Companion:Lcom/xiaozhi/android/MainActivity$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/xiaozhi/android/MainActivity;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Landroidx/activity/ComponentActivity;-><init>()V

    .line 33
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;-><init>()V

    check-cast v0, Landroidx/activity/result/contract/ActivityResultContract;

    .line 34
    new-instance v1, Lcom/xiaozhi/android/MainActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/xiaozhi/android/MainActivity$$ExternalSyntheticLambda0;-><init>()V

    .line 32
    invoke-virtual {p0, v0, v1}, Lcom/xiaozhi/android/MainActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaozhi/android/MainActivity;->requestPermissionLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method private static final requestPermissionLauncher$lambda$0(Z)V
    .locals 0

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 41
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    move-object p1, p0

    check-cast p1, Landroid/content/Context;

    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    iget-object v1, p0, Lcom/xiaozhi/android/MainActivity;->requestPermissionLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v1, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    .line 51
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_1

    .line 52
    const-string v0, "android.permission.POST_NOTIFICATIONS"

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 55
    iget-object p1, p0, Lcom/xiaozhi/android/MainActivity;->requestPermissionLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {p1, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    .line 60
    :cond_1
    invoke-virtual {p0}, Lcom/xiaozhi/android/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object p1, v0

    :goto_0
    const-string v1, "com.xiaozhi.android.PET_LISTEN"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    .line 62
    move-object v1, p0

    check-cast v1, Landroidx/activity/ComponentActivity;

    new-instance v2, Lcom/xiaozhi/android/MainActivity$onCreate$1;

    invoke-direct {v2, p1}, Lcom/xiaozhi/android/MainActivity$onCreate$1;-><init>(Z)V

    const p1, -0x52e22df8

    const/4 v3, 0x1

    invoke-static {p1, v3, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object p1

    check-cast p1, Lkotlin/jvm/functions/Function2;

    invoke-static {v1, v0, p1, v3, v0}, Landroidx/activity/compose/ComponentActivityKt;->setContent$default(Landroidx/activity/ComponentActivity;Landroidx/compose/runtime/CompositionContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 109
    invoke-virtual {p0, p1}, Lcom/xiaozhi/android/MainActivity;->setIntent(Landroid/content/Intent;)V

    .line 111
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.xiaozhi.android.PET_LISTEN"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 113
    invoke-virtual {p0}, Lcom/xiaozhi/android/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    instance-of v0, p1, Lcom/xiaozhi/android/XiaozhiApp;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/xiaozhi/android/XiaozhiApp;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/xiaozhi/android/XiaozhiApp;->getLastViewModel()Lcom/xiaozhi/android/viewmodel/MainViewModel;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    .line 114
    invoke-virtual {v1}, Lcom/xiaozhi/android/viewmodel/MainViewModel;->startListening()V

    :cond_2
    return-void
.end method

.method public final requestOverlayPermission()V
    .locals 4

    .line 122
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Landroid/content/Intent;

    .line 125
    invoke-virtual {p0}, Lcom/xiaozhi/android/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "package:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 123
    const-string v2, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 127
    invoke-virtual {p0, v0}, Lcom/xiaozhi/android/MainActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
