.class public final Lcom/xiaozhi/android/pet/FloatingPetService;
.super Landroid/app/Service;
.source "FloatingPetService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaozhi/android/pet/FloatingPetService$Companion;,
        Lcom/xiaozhi/android/pet/FloatingPetService$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFloatingPetService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FloatingPetService.kt\ncom/xiaozhi/android/pet/FloatingPetService\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,333:1\n1#2:334\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000 02\u00020\u0001:\u00010B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J\"\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u0011H\u0016J\u0008\u0010\u0016\u001a\u00020\u000fH\u0002J\u0008\u0010\u0017\u001a\u00020\u000fH\u0002J\u0008\u0010\u0018\u001a\u00020\u000fH\u0002J\u0010\u0010$\u001a\u00020\u000f2\u0006\u0010%\u001a\u00020\u0007H\u0002J\u0008\u0010&\u001a\u00020\u000fH\u0002J\u0010\u0010\'\u001a\u00020\u000f2\u0006\u0010(\u001a\u00020)H\u0002J\u0008\u0010*\u001a\u00020+H\u0002J\u0008\u0010,\u001a\u00020\u000fH\u0002J\u0008\u0010-\u001a\u00020\u000fH\u0016J\u0014\u0010.\u001a\u0004\u0018\u00010/2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010 \u001a\u0004\u0018\u00010!X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020#X\u0082D\u00a2\u0006\u0002\n\u0000\u00a8\u00061"
    }
    d2 = {
        "Lcom/xiaozhi/android/pet/FloatingPetService;",
        "Landroid/app/Service;",
        "<init>",
        "()V",
        "windowManager",
        "Landroid/view/WindowManager;",
        "petView",
        "Landroid/view/View;",
        "layoutParams",
        "Landroid/view/WindowManager$LayoutParams;",
        "serviceScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "stateJob",
        "Lkotlinx/coroutines/Job;",
        "onCreate",
        "",
        "onStartCommand",
        "",
        "intent",
        "Landroid/content/Intent;",
        "flags",
        "startId",
        "showPet",
        "startStateObserving",
        "hidePet",
        "initialX",
        "initialY",
        "initialTouchX",
        "",
        "initialTouchY",
        "isDragging",
        "",
        "longPressCheckRunnable",
        "Ljava/lang/Runnable;",
        "longPressTimeout",
        "",
        "setupTouchListener",
        "view",
        "performPetClick",
        "toast",
        "msg",
        "",
        "buildNotification",
        "Landroid/app/Notification;",
        "createNotificationChannel",
        "onDestroy",
        "onBind",
        "Landroid/os/IBinder;",
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

.field public static final ACTION_HIDE:Ljava/lang/String; = "com.xiaozhi.android.pet.HIDE"

.field public static final ACTION_SHOW:Ljava/lang/String; = "com.xiaozhi.android.pet.SHOW"

.field public static final ACTION_TOGGLE:Ljava/lang/String; = "com.xiaozhi.android.pet.TOGGLE"

.field private static final CHANNEL_ID:Ljava/lang/String; = "xiaozhi_pet"

.field public static final Companion:Lcom/xiaozhi/android/pet/FloatingPetService$Companion;

.field private static final NOTIFICATION_ID:I = 0x2

.field private static final TAG:Ljava/lang/String; = "FloatingPetService"

.field private static volatile petVisible:Z


# instance fields
.field private initialTouchX:F

.field private initialTouchY:F

.field private initialX:I

.field private initialY:I

.field private isDragging:Z

.field private layoutParams:Landroid/view/WindowManager$LayoutParams;

.field private longPressCheckRunnable:Ljava/lang/Runnable;

.field private final longPressTimeout:J

.field private petView:Landroid/view/View;

.field private final serviceScope:Lkotlinx/coroutines/CoroutineScope;

.field private stateJob:Lkotlinx/coroutines/Job;

.field private windowManager:Landroid/view/WindowManager;


# direct methods
.method public static synthetic $r8$lambda$47V7h01W2jbUPb0CRxdSdinJcHo(Lcom/xiaozhi/android/pet/FloatingPetService;)V
    .locals 0

    invoke-static {p0}, Lcom/xiaozhi/android/pet/FloatingPetService;->setupTouchListener$lambda$7$lambda$3(Lcom/xiaozhi/android/pet/FloatingPetService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KM0LqGvcknl1BuKXJsUxmcxmbUk(Lcom/xiaozhi/android/pet/FloatingPetService;Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/xiaozhi/android/pet/FloatingPetService;->setupTouchListener$lambda$7(Lcom/xiaozhi/android/pet/FloatingPetService;Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/xiaozhi/android/pet/FloatingPetService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaozhi/android/pet/FloatingPetService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/xiaozhi/android/pet/FloatingPetService;->Companion:Lcom/xiaozhi/android/pet/FloatingPetService$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/xiaozhi/android/pet/FloatingPetService;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 36
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 55
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2, v1}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/MainCoroutineDispatcher;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaozhi/android/pet/FloatingPetService;->serviceScope:Lkotlinx/coroutines/CoroutineScope;

    const-wide/16 v0, 0x258

    .line 194
    iput-wide v0, p0, Lcom/xiaozhi/android/pet/FloatingPetService;->longPressTimeout:J

    return-void
.end method

.method public static final synthetic access$getPetView$p(Lcom/xiaozhi/android/pet/FloatingPetService;)Landroid/view/View;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/xiaozhi/android/pet/FloatingPetService;->petView:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic access$getPetVisible$cp()Z
    .locals 1

    .line 36
    sget-boolean v0, Lcom/xiaozhi/android/pet/FloatingPetService;->petVisible:Z

    return v0
.end method

.method private final buildNotification()Landroid/app/Notification;
    .locals 4

    .line 300
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    .line 301
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/xiaozhi/android/MainActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0xc000000

    const/4 v3, 0x0

    .line 299
    invoke-static {v0, v3, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 304
    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    const-string v3, "xiaozhi_pet"

    invoke-direct {v2, v0, v3}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 305
    const-string v0, "\u5c0f\u667a\u684c\u9762\u5ba0\u7269"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 306
    const-string v2, "\u5c0f\u667a\u6b63\u5728\u540e\u53f0\u5f85\u547d\uff0c\u70b9\u51fb\u5ba0\u7269\u76f4\u63a5\u5bf9\u8bdd"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 307
    sget v2, Lcom/xiaozhi/android/R$drawable;->ic_notification:I

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 308
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 309
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 310
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final createNotificationChannel()V
    .locals 4

    .line 315
    new-instance v0, Landroid/app/NotificationChannel;

    .line 316
    const-string v1, "\u5c0f\u667a\u684c\u9762\u5ba0\u7269"

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x2

    .line 315
    const-string v3, "xiaozhi_pet"

    invoke-direct {v0, v3, v1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 318
    const-string v1, "\u4fdd\u6301\u684c\u9762\u5ba0\u7269\u60ac\u6d6e\u7a97\u8fd0\u884c"

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 319
    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {p0, v1}, Lcom/xiaozhi/android/pet/FloatingPetService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method public static final getPetVisible()Z
    .locals 1

    sget-object v0, Lcom/xiaozhi/android/pet/FloatingPetService;->Companion:Lcom/xiaozhi/android/pet/FloatingPetService$Companion;

    invoke-virtual {v0}, Lcom/xiaozhi/android/pet/FloatingPetService$Companion;->getPetVisible()Z

    move-result v0

    return v0
.end method

.method private final hidePet()V
    .locals 5

    .line 176
    const-string v0, "FloatingPetService"

    iget-object v1, p0, Lcom/xiaozhi/android/pet/FloatingPetService;->stateJob:Lkotlinx/coroutines/Job;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 178
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaozhi/android/pet/FloatingPetService;->petView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/xiaozhi/android/pet/FloatingPetService;->windowManager:Landroid/view/WindowManager;

    if-eqz v3, :cond_1

    invoke-interface {v3, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 180
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "removeView: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_1
    :goto_0
    iput-object v2, p0, Lcom/xiaozhi/android/pet/FloatingPetService;->petView:Landroid/view/View;

    const/4 v1, 0x0

    .line 183
    sput-boolean v1, Lcom/xiaozhi/android/pet/FloatingPetService;->petVisible:Z

    .line 184
    const-string v1, "Pet hidden"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const-string v0, "\u684c\u9762\u5ba0\u7269\u5df2\u9690\u85cf"

    invoke-direct {p0, v0}, Lcom/xiaozhi/android/pet/FloatingPetService;->toast(Ljava/lang/String;)V

    return-void
.end method

.method private final performPetClick()V
    .locals 5

    .line 255
    const-string v0, "Pet clicked"

    const-string v1, "FloatingPetService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-virtual {p0}, Lcom/xiaozhi/android/pet/FloatingPetService;->getApplication()Landroid/app/Application;

    move-result-object v0

    instance-of v2, v0, Lcom/xiaozhi/android/XiaozhiApp;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v0, Lcom/xiaozhi/android/XiaozhiApp;

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    if-eqz v0, :cond_1

    .line 257
    invoke-virtual {v0}, Lcom/xiaozhi/android/XiaozhiApp;->getLastViewModel()Lcom/xiaozhi/android/viewmodel/MainViewModel;

    move-result-object v3

    :cond_1
    if-eqz v3, :cond_5

    .line 260
    invoke-virtual {v3}, Lcom/xiaozhi/android/viewmodel/MainViewModel;->getDeviceState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaozhi/android/model/DeviceState;

    .line 261
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "ViewModel found, state="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", toggling directly (no Activity jump)"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    sget-object v1, Lcom/xiaozhi/android/pet/FloatingPetService$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/xiaozhi/android/model/DeviceState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 276
    const-string v0, "\u5524\u9192\u5c0f\u667a..."

    invoke-direct {p0, v0}, Lcom/xiaozhi/android/pet/FloatingPetService;->toast(Ljava/lang/String;)V

    .line 277
    invoke-virtual {v3}, Lcom/xiaozhi/android/viewmodel/MainViewModel;->toggleListening()V

    goto :goto_1

    .line 271
    :cond_2
    const-string v0, "\u6253\u65ad AI"

    invoke-direct {p0, v0}, Lcom/xiaozhi/android/pet/FloatingPetService;->toast(Ljava/lang/String;)V

    .line 272
    invoke-virtual {v3}, Lcom/xiaozhi/android/viewmodel/MainViewModel;->toggleListening()V

    goto :goto_1

    .line 267
    :cond_3
    const-string v0, "\u505c\u6b62\u8046\u542c"

    invoke-direct {p0, v0}, Lcom/xiaozhi/android/pet/FloatingPetService;->toast(Ljava/lang/String;)V

    .line 268
    invoke-virtual {v3}, Lcom/xiaozhi/android/viewmodel/MainViewModel;->toggleListening()V

    goto :goto_1

    .line 264
    :cond_4
    const-string v0, "\u6b63\u5728\u8fde\u63a5\u4e2d\uff0c\u8bf7\u7a0d\u5019..."

    invoke-direct {p0, v0}, Lcom/xiaozhi/android/pet/FloatingPetService;->toast(Ljava/lang/String;)V

    goto :goto_1

    .line 282
    :cond_5
    const-string v0, "ViewModel is null, launching MainActivity (cold start)"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const-string v0, "\u6b63\u5728\u542f\u52a8\u5c0f\u667a..."

    invoke-direct {p0, v0}, Lcom/xiaozhi/android/pet/FloatingPetService;->toast(Ljava/lang/String;)V

    .line 284
    new-instance v0, Landroid/content/Intent;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/xiaozhi/android/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x30000000

    .line 285
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 286
    const-string v1, "com.xiaozhi.android.PET_LISTEN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    invoke-virtual {p0, v0}, Lcom/xiaozhi/android/pet/FloatingPetService;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void
.end method

.method private final setupTouchListener(Landroid/view/View;)V
    .locals 1

    .line 197
    new-instance v0, Lcom/xiaozhi/android/pet/FloatingPetService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/xiaozhi/android/pet/FloatingPetService$$ExternalSyntheticLambda0;-><init>(Lcom/xiaozhi/android/pet/FloatingPetService;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private static final setupTouchListener$lambda$7(Lcom/xiaozhi/android/pet/FloatingPetService;Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .line 198
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_a

    if-eq p2, v1, :cond_8

    const/4 v2, 0x2

    if-eq p2, v2, :cond_3

    const/4 p3, 0x3

    if-eq p2, p3, :cond_0

    goto/16 :goto_3

    .line 241
    :cond_0
    iget-object p2, p0, Lcom/xiaozhi/android/pet/FloatingPetService;->longPressCheckRunnable:Ljava/lang/Runnable;

    if-eqz p2, :cond_1

    invoke-virtual {p1, p2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 242
    :cond_1
    iput-boolean v0, p0, Lcom/xiaozhi/android/pet/FloatingPetService;->isDragging:Z

    :catch_0
    :cond_2
    :goto_0
    move v0, v1

    goto/16 :goto_3

    .line 215
    :cond_3
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getRawX()F

    move-result p2

    iget v0, p0, Lcom/xiaozhi/android/pet/FloatingPetService;->initialTouchX:F

    sub-float/2addr p2, v0

    .line 216
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getRawY()F

    move-result p3

    iget v0, p0, Lcom/xiaozhi/android/pet/FloatingPetService;->initialTouchY:F

    sub-float/2addr p3, v0

    .line 217
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x41200000    # 10.0f

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_4

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_5

    .line 218
    :cond_4
    iput-boolean v1, p0, Lcom/xiaozhi/android/pet/FloatingPetService;->isDragging:Z

    .line 219
    iget-object v0, p0, Lcom/xiaozhi/android/pet/FloatingPetService;->longPressCheckRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_5

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 221
    :cond_5
    iget-boolean v0, p0, Lcom/xiaozhi/android/pet/FloatingPetService;->isDragging:Z

    if-eqz v0, :cond_2

    .line 222
    iget-object v0, p0, Lcom/xiaozhi/android/pet/FloatingPetService;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_6

    iget v2, p0, Lcom/xiaozhi/android/pet/FloatingPetService;->initialX:I

    float-to-int p2, p2

    add-int/2addr v2, p2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 223
    :cond_6
    iget-object p2, p0, Lcom/xiaozhi/android/pet/FloatingPetService;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz p2, :cond_7

    iget v0, p0, Lcom/xiaozhi/android/pet/FloatingPetService;->initialY:I

    float-to-int p3, p3

    add-int/2addr v0, p3

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 225
    :cond_7
    :try_start_0
    iget-object p2, p0, Lcom/xiaozhi/android/pet/FloatingPetService;->windowManager:Landroid/view/WindowManager;

    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/xiaozhi/android/pet/FloatingPetService;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    check-cast p0, Landroid/view/ViewGroup$LayoutParams;

    invoke-interface {p2, p1, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 231
    :cond_8
    iget-object p2, p0, Lcom/xiaozhi/android/pet/FloatingPetService;->longPressCheckRunnable:Ljava/lang/Runnable;

    if-eqz p2, :cond_9

    invoke-virtual {p1, p2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 232
    :cond_9
    iget-boolean p1, p0, Lcom/xiaozhi/android/pet/FloatingPetService;->isDragging:Z

    .line 233
    iput-boolean v0, p0, Lcom/xiaozhi/android/pet/FloatingPetService;->isDragging:Z

    if-nez p1, :cond_2

    .line 235
    const-string p1, "FloatingPetService"

    const-string p2, "ACTION_UP: triggering click"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-direct {p0}, Lcom/xiaozhi/android/pet/FloatingPetService;->performPetClick()V

    goto :goto_0

    .line 200
    :cond_a
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    div-int/lit8 v6, v6, 0x2

    div-int/lit8 v7, v7, 0x2

    float-to-int v4, v4

    float-to-int v5, v5

    sub-int/2addr v4, v6

    sub-int/2addr v5, v7

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    div-int/lit8 v6, v6, 0x2

    div-int/lit8 v7, v7, 0x2

    if-gt v4, v6, :cond_d

    if-gt v5, v7, :cond_d

    iget-object p2, p0, Lcom/xiaozhi/android/pet/FloatingPetService;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz p2, :cond_b

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_1

    :cond_b
    move p2, v0

    :goto_1
    iput p2, p0, Lcom/xiaozhi/android/pet/FloatingPetService;->initialX:I

    .line 201
    iget-object p2, p0, Lcom/xiaozhi/android/pet/FloatingPetService;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz p2, :cond_c

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_2

    :cond_c
    move p2, v0

    :goto_2
    iput p2, p0, Lcom/xiaozhi/android/pet/FloatingPetService;->initialY:I

    .line 202
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getRawX()F

    move-result p2

    iput p2, p0, Lcom/xiaozhi/android/pet/FloatingPetService;->initialTouchX:F

    .line 203
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iput p2, p0, Lcom/xiaozhi/android/pet/FloatingPetService;->initialTouchY:F

    .line 204
    iput-boolean v0, p0, Lcom/xiaozhi/android/pet/FloatingPetService;->isDragging:Z

    .line 205
    new-instance p2, Lcom/xiaozhi/android/pet/FloatingPetService$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/xiaozhi/android/pet/FloatingPetService$$ExternalSyntheticLambda1;-><init>(Lcom/xiaozhi/android/pet/FloatingPetService;)V

    iput-object p2, p0, Lcom/xiaozhi/android/pet/FloatingPetService;->longPressCheckRunnable:Ljava/lang/Runnable;

    .line 211
    iget-wide v2, p0, Lcom/xiaozhi/android/pet/FloatingPetService;->longPressTimeout:J

    invoke-virtual {p1, p2, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_d
    :goto_3
    return v0
.end method

.method private static final setupTouchListener$lambda$7$lambda$3(Lcom/xiaozhi/android/pet/FloatingPetService;)V
    .locals 2

    .line 206
    iget-boolean v0, p0, Lcom/xiaozhi/android/pet/FloatingPetService;->isDragging:Z

    if-nez v0, :cond_0

    .line 207
    const-string v0, "FloatingPetService"

    const-string v1, "Long press detected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-direct {p0}, Lcom/xiaozhi/android/pet/FloatingPetService;->hidePet()V

    :cond_0
    return-void
.end method

.method private final showPet()V
    .locals 15

    .line 84
    iget-object v0, p0, Lcom/xiaozhi/android/pet/FloatingPetService;->petView:Landroid/view/View;

    const-string v1, "FloatingPetService"

    if-eqz v0, :cond_0

    .line 85
    const-string v0, "showPet: already shown"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 88
    :cond_0
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 89
    const-string v0, "showPet: no overlay permission"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const-string v0, "\u8bf7\u5148\u6388\u4e88\"\u663e\u793a\u5728\u5176\u4ed6\u5e94\u7528\u4e0a\u5c42\"\u6743\u9650"

    invoke-direct {p0, v0}, Lcom/xiaozhi/android/pet/FloatingPetService;->toast(Ljava/lang/String;)V

    return-void

    .line 94
    :cond_1
    const-string v2, "window"

    invoke-virtual {p0, v2}, Lcom/xiaozhi/android/pet/FloatingPetService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/xiaozhi/android/pet/FloatingPetService;->windowManager:Landroid/view/WindowManager;

    .line 103
    invoke-virtual {p0}, Lcom/xiaozhi/android/pet/FloatingPetService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 104
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 105
    iget v4, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    const/high16 v5, 0x43200000    # 160.0f

    const/4 v6, 0x1

    .line 107
    invoke-static {v6, v5, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    sub-int v5, v3, v2

    .line 110
    div-int/lit8 v5, v5, 0x2

    .line 111
    div-int/lit8 v13, v4, 0x4

    .line 113
    new-instance v14, Landroid/view/WindowManager$LayoutParams;

    const/16 v11, 0x208

    const/4 v12, -0x3

    const/16 v10, 0x7f6

    move-object v7, v14

    mul-int/lit8 v8, v2, 0x3

    div-int/lit8 v8, v8, 0x5

    mul-int/lit8 v9, v2, 0x4

    div-int/lit8 v9, v9, 0x5

    invoke-direct/range {v7 .. v12}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const v7, 0x800033

    .line 121
    iput v7, v14, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 122
    iput v5, v14, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 123
    iput v13, v14, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 113
    iput-object v14, p0, Lcom/xiaozhi/android/pet/FloatingPetService;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 125
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "showPet: screen="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "x"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pet="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pos=("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    new-instance v2, Lcom/xiaozhi/android/pet/PetGLSurfaceView;

    invoke-direct {v2, v0}, Lcom/xiaozhi/android/pet/PetGLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 130
    invoke-virtual {v2, v6}, Lcom/xiaozhi/android/pet/PetGLSurfaceView;->setZOrderOnTop(Z)V

    .line 131
    invoke-virtual {v2}, Lcom/xiaozhi/android/pet/PetGLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v3, -0x3

    invoke-interface {v0, v3}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 134
    move-object v0, v2

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/xiaozhi/android/pet/FloatingPetService;->setupTouchListener(Landroid/view/View;)V

    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/xiaozhi/android/pet/FloatingPetService;->windowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_2

    move-object v3, v2

    check-cast v3, Landroid/view/View;

    iget-object v4, p0, Lcom/xiaozhi/android/pet/FloatingPetService;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    check-cast v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-interface {v0, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    :cond_2
    check-cast v2, Landroid/view/View;

    iput-object v2, p0, Lcom/xiaozhi/android/pet/FloatingPetService;->petView:Landroid/view/View;

    .line 139
    sput-boolean v6, Lcom/xiaozhi/android/pet/FloatingPetService;->petVisible:Z

    .line 140
    const-string v0, "3D Pet shown successfully"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const-string v0, "\u684c\u9762\u5ba0\u7269\u5df2\u663e\u793a\uff0c\u70b9\u51fb\u76f4\u63a5\u5bf9\u8bdd\uff0c\u957f\u6309\u9690\u85cf"

    invoke-direct {p0, v0}, Lcom/xiaozhi/android/pet/FloatingPetService;->toast(Ljava/lang/String;)V

    .line 143
    invoke-direct {p0}, Lcom/xiaozhi/android/pet/FloatingPetService;->startStateObserving()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 145
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to show pet: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u663e\u793a\u5ba0\u7269\u5931\u8d25\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaozhi/android/pet/FloatingPetService;->toast(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private final startStateObserving()V
    .locals 11

    .line 154
    invoke-virtual {p0}, Lcom/xiaozhi/android/pet/FloatingPetService;->getApplication()Landroid/app/Application;

    move-result-object v0

    instance-of v1, v0, Lcom/xiaozhi/android/XiaozhiApp;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcom/xiaozhi/android/XiaozhiApp;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/xiaozhi/android/XiaozhiApp;->getLastViewModel()Lcom/xiaozhi/android/viewmodel/MainViewModel;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v2

    .line 155
    :goto_1
    const-string v1, "FloatingPetService"

    if-nez v0, :cond_2

    .line 156
    const-string v0, "ViewModel is null, cannot observe state"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 159
    :cond_2
    iget-object v3, p0, Lcom/xiaozhi/android/pet/FloatingPetService;->stateJob:Lkotlinx/coroutines/Job;

    if-eqz v3, :cond_3

    const/4 v4, 0x1

    invoke-static {v3, v2, v4, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 160
    :cond_3
    iget-object v5, p0, Lcom/xiaozhi/android/pet/FloatingPetService;->serviceScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v3, Lcom/xiaozhi/android/pet/FloatingPetService$startStateObserving$1;

    invoke-direct {v3, v0, p0, v2}, Lcom/xiaozhi/android/pet/FloatingPetService$startStateObserving$1;-><init>(Lcom/xiaozhi/android/viewmodel/MainViewModel;Lcom/xiaozhi/android/pet/FloatingPetService;Lkotlin/coroutines/Continuation;)V

    move-object v8, v3

    check-cast v8, Lkotlin/jvm/functions/Function2;

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaozhi/android/pet/FloatingPetService;->stateJob:Lkotlinx/coroutines/Job;

    .line 172
    const-string v0, "State observing started"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final toast(Ljava/lang/String;)V
    .locals 2

    .line 294
    :try_start_0
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    check-cast p1, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 5

    .line 59
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 60
    const-string v0, "Service onCreate"

    const-string v1, "FloatingPetService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-direct {p0}, Lcom/xiaozhi/android/pet/FloatingPetService;->createNotificationChannel()V

    .line 63
    :try_start_0
    invoke-direct {p0}, Lcom/xiaozhi/android/pet/FloatingPetService;->buildNotification()Landroid/app/Notification;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {p0, v2, v0}, Lcom/xiaozhi/android/pet/FloatingPetService;->startForeground(ILandroid/app/Notification;)V

    .line 64
    const-string v0, "startForeground succeeded"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 66
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "startForeground failed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 324
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 325
    const-string v0, "FloatingPetService"

    const-string v1, "Service onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v0, p0, Lcom/xiaozhi/android/pet/FloatingPetService;->stateJob:Lkotlinx/coroutines/Job;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/xiaozhi/android/pet/FloatingPetService;->serviceScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel$default(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 328
    invoke-direct {p0}, Lcom/xiaozhi/android/pet/FloatingPetService;->hidePet()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 71
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    move-object p3, p2

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onStartCommand action="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "FloatingPetService"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 72
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    :cond_1
    if-eqz p2, :cond_9

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    const p3, -0x55bb66f1

    if-eq p1, p3, :cond_7

    const p3, -0x55b66936

    if-eq p1, p3, :cond_5

    const p3, 0x4052b3e1

    if-eq p1, p3, :cond_2

    goto :goto_1

    :cond_2
    const-string p1, "com.xiaozhi.android.pet.TOGGLE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    .line 74
    :cond_3
    iget-object p1, p0, Lcom/xiaozhi/android/pet/FloatingPetService;->petView:Landroid/view/View;

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/xiaozhi/android/pet/FloatingPetService;->hidePet()V

    goto :goto_2

    :cond_4
    invoke-direct {p0}, Lcom/xiaozhi/android/pet/FloatingPetService;->showPet()V

    goto :goto_2

    .line 72
    :cond_5
    const-string p1, "com.xiaozhi.android.pet.SHOW"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_1

    .line 76
    :cond_6
    invoke-direct {p0}, Lcom/xiaozhi/android/pet/FloatingPetService;->showPet()V

    goto :goto_2

    .line 72
    :cond_7
    const-string p1, "com.xiaozhi.android.pet.HIDE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_1

    .line 77
    :cond_8
    invoke-direct {p0}, Lcom/xiaozhi/android/pet/FloatingPetService;->hidePet()V

    goto :goto_2

    .line 78
    :cond_9
    :goto_1
    invoke-direct {p0}, Lcom/xiaozhi/android/pet/FloatingPetService;->showPet()V

    :goto_2
    const/4 p1, 0x1

    return p1
.end method
