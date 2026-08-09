.class public final Lcom/xiaozhi/android/XiaozhiApp;
.super Landroid/app/Application;
.source "XiaozhiApp.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/xiaozhi/android/XiaozhiApp;",
        "Landroid/app/Application;",
        "<init>",
        "()V",
        "onCreate",
        "",
        "lastViewModel",
        "Lcom/xiaozhi/android/viewmodel/MainViewModel;",
        "getLastViewModel",
        "()Lcom/xiaozhi/android/viewmodel/MainViewModel;",
        "setLastViewModel",
        "(Lcom/xiaozhi/android/viewmodel/MainViewModel;)V",
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
.field public static final $stable:I = 0x8


# instance fields
.field private volatile lastViewModel:Lcom/xiaozhi/android/viewmodel/MainViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLastViewModel()Lcom/xiaozhi/android/viewmodel/MainViewModel;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/xiaozhi/android/XiaozhiApp;->lastViewModel:Lcom/xiaozhi/android/viewmodel/MainViewModel;

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .line 8
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    return-void
.end method

.method public final setLastViewModel(Lcom/xiaozhi/android/viewmodel/MainViewModel;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/xiaozhi/android/XiaozhiApp;->lastViewModel:Lcom/xiaozhi/android/viewmodel/MainViewModel;

    return-void
.end method
