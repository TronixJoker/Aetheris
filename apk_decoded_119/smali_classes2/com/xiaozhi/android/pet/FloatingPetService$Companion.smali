.class public final Lcom/xiaozhi/android/pet/FloatingPetService$Companion;
.super Ljava/lang/Object;
.source "FloatingPetService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaozhi/android/pet/FloatingPetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R&\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\r8\u0006@BX\u0087\u000e\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000f\u0010\u0003\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/xiaozhi/android/pet/FloatingPetService$Companion;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "CHANNEL_ID",
        "NOTIFICATION_ID",
        "",
        "ACTION_TOGGLE",
        "ACTION_SHOW",
        "ACTION_HIDE",
        "value",
        "",
        "petVisible",
        "getPetVisible$annotations",
        "getPetVisible",
        "()Z",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaozhi/android/pet/FloatingPetService$Companion;-><init>()V

    return-void
.end method

.method public static synthetic getPetVisible$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getPetVisible()Z
    .locals 1

    .line 45
    invoke-static {}, Lcom/xiaozhi/android/pet/FloatingPetService;->access$getPetVisible$cp()Z

    move-result v0

    return v0
.end method
