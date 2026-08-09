.class public final Lcom/xiaozhi/android/audio/XiaozhiForegroundService;
.super Landroid/app/Service;
.source "XiaozhiForegroundService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaozhi/android/audio/XiaozhiForegroundService$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016J\"\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u0007H\u0016J\u0014\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016J\u0008\u0010\u000e\u001a\u00020\u0005H\u0002\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/xiaozhi/android/audio/XiaozhiForegroundService;",
        "Landroid/app/Service;",
        "<init>",
        "()V",
        "onCreate",
        "",
        "onStartCommand",
        "",
        "intent",
        "Landroid/content/Intent;",
        "flags",
        "startId",
        "onBind",
        "Landroid/os/IBinder;",
        "createNotificationChannel",
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
.field public static final $stable:I = 0x0

.field public static final CHANNEL_ID:Ljava/lang/String; = "xiaozhi_audio"

.field public static final Companion:Lcom/xiaozhi/android/audio/XiaozhiForegroundService$Companion;

.field public static final NOTIFICATION_ID:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/xiaozhi/android/audio/XiaozhiForegroundService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaozhi/android/audio/XiaozhiForegroundService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/xiaozhi/android/audio/XiaozhiForegroundService;->Companion:Lcom/xiaozhi/android/audio/XiaozhiForegroundService$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private final createNotificationChannel()V
    .locals 4

    .line 48
    new-instance v0, Landroid/app/NotificationChannel;

    .line 49
    const-string v1, "\u5c0f\u667a\u97f3\u9891\u670d\u52a1"

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x2

    .line 48
    const-string v3, "xiaozhi_audio"

    invoke-direct {v0, v3, v1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 52
    const-string v1, "\u4fdd\u6301\u97f3\u9891\u670d\u52a1\u5728\u540e\u53f0\u8fd0\u884c"

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 54
    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {p0, v1}, Lcom/xiaozhi/android/audio/XiaozhiForegroundService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 55
    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 0

    .line 21
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 22
    invoke-direct {p0}, Lcom/xiaozhi/android/audio/XiaozhiForegroundService;->createNotificationChannel()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .line 27
    move-object p1, p0

    check-cast p1, Landroid/content/Context;

    .line 28
    new-instance p2, Landroid/content/Intent;

    const-class p3, Lcom/xiaozhi/android/MainActivity;

    invoke-direct {p2, p1, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p3, 0xc000000

    const/4 v0, 0x0

    .line 26
    invoke-static {p1, v0, p2, p3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    .line 32
    new-instance p3, Landroidx/core/app/NotificationCompat$Builder;

    const-string v0, "xiaozhi_audio"

    invoke-direct {p3, p1, v0}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 33
    const-string p1, "\u5c0f\u667aAI"

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p3, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 34
    const-string p3, "\u6b63\u5728\u8fd0\u884c\u4e2d..."

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p1, p3}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 35
    sget p3, Lcom/xiaozhi/android/R$drawable;->ic_notification:I

    invoke-virtual {p1, p3}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 36
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 37
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 38
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    const-string p3, "build(...)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0, p2, p1}, Lcom/xiaozhi/android/audio/XiaozhiForegroundService;->startForeground(ILandroid/app/Notification;)V

    return p2
.end method
