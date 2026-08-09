.class public final enum Lcom/xiaozhi/android/update/UpdateManager$UpdateState;
.super Ljava/lang/Enum;
.source "UpdateManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaozhi/android/update/UpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UpdateState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaozhi/android/update/UpdateManager$UpdateState;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u000c\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/xiaozhi/android/update/UpdateManager$UpdateState;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "IDLE",
        "CHECKING",
        "NO_UPDATE",
        "UPDATE_AVAILABLE",
        "DOWNLOADING",
        "DOWNLOAD_COMPLETE",
        "INSTALLING",
        "NEED_PERMISSION",
        "ERROR",
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
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/xiaozhi/android/update/UpdateManager$UpdateState;

.field public static final enum CHECKING:Lcom/xiaozhi/android/update/UpdateManager$UpdateState;

.field public static final enum DOWNLOADING:Lcom/xiaozhi/android/update/UpdateManager$UpdateState;

.field public static final enum DOWNLOAD_COMPLETE:Lcom/xiaozhi/android/update/UpdateManager$UpdateState;

.field public static final enum ERROR:Lcom/xiaozhi/android/update/UpdateManager$UpdateState;

.field public static final enum IDLE:Lcom/xiaozhi/android/update/UpdateManager$UpdateState;

.field public static final enum INSTALLING:Lcom/xiaozhi/android/update/UpdateManager$UpdateState;

.field public static final enum NEED_PERMISSION:Lcom/xiaozhi/android/update/UpdateManager$UpdateState;

.field public static final enum NO_UPDATE:Lcom/xiaozhi/android/update/UpdateManager$UpdateState;

.field public static final enum UPDATE_AVAILABLE:Lcom/xiaozhi/android/update/UpdateManager$UpdateState;


# direct methods
.method private static final synthetic $values()[Lcom/xiaozhi/android/update/UpdateManager$UpdateState;
    .locals 9

    sget-object v0, Lcom/xiaozhi/android/update/UpdateManager$UpdateState;->IDLE:Lcom/xiaozhi/android/update/UpdateManager$UpdateState;

    sget-object v1, Lcom/xiaozhi/android/update/UpdateManager$UpdateState;->CHECKING:Lcom/xiaozhi/android/update/UpdateManager$UpdateState;

    sget-object v2, Lcom/xiaozhi/android/update/UpdateManager$UpdateState;->NO_UPDATE:Lcom/xiaozhi/android/update/UpdateManager$UpdateState;

    sget-object v3, Lcom/xiaozhi/android/update/UpdateManager$UpdateState;->UPDATE_AVAILABLE:Lcom/xiaozhi/android/update/UpdateManager$UpdateState;

    sget-object v4, Lcom/xiaozhi/android/update/UpdateManager$UpdateState;->DOWNLOADING:Lcom/xiaozhi/android/update/UpdateManager$UpdateState;

    sget-object v5, Lcom/xiaozhi/android/update/UpdateManager$UpdateState;->DOWNLOAD_COMPLETE:Lcom/xiaozhi/android/update/UpdateManager$UpdateState;

    sget-object v6, Lcom/xiaozhi/android/update/UpdateManager$UpdateState;->INSTALLING:Lcom/xiaozhi/android/update/UpdateManager$UpdateState;

    sget-object v7, Lcom/xiaozhi/android/update/UpdateManager$UpdateState;->NEED_PERMISSION:Lcom/xiaozhi/android/update/UpdateManager$UpdateState;

    sget-object v8, Lcom/xiaozhi/android/update/UpdateManager$UpdateState;->ERROR:Lcom/xiaozhi/android/update/UpdateManager$UpdateState;

    filled-new-array/range {v0 .. v8}, [Lcom/xiaozhi/android/update/UpdateManager$UpdateState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 97
    new-instance v0, Lcom/xiaozhi/android/update/UpdateManager$UpdateState;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaozhi/android/update/UpdateManager$UpdateState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaozhi/android/update/UpdateManager$UpdateState;->IDLE:Lcom/xiaozhi/android/update/UpdateManager$UpdateState;

    new-instance v0, Lcom/xiaozhi/android/update/UpdateManager$UpdateState;

    const-string v1, "CHECKING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/xiaozhi/android/update/UpdateManager$UpdateState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaozhi/android/update/UpdateManager$UpdateState;->CHECKING:Lcom/xiaozhi/android/update/UpdateManager$UpdateState;

    new-instance v0, Lcom/xiaozhi/android/update/UpdateManager$UpdateState;

    const-string v1, "NO_UPDATE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/xiaozhi/android/update/UpdateManager$UpdateState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaozhi/android/update/UpdateManager$UpdateState;->NO_UPDATE:Lcom/xiaozhi/android/update/UpdateManager$UpdateState;

    new-instance v0, Lcom/xiaozhi/android/update/UpdateManager$UpdateState;

    const-string v1, "UPDATE_AVAILABLE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/xiaozhi/android/update/UpdateManager$UpdateState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaozhi/android/update/UpdateManager$UpdateState;->UPDATE_AVAILABLE:Lcom/xiaozhi/android/update/UpdateManager$UpdateState;

    new-instance v0, Lcom/xiaozhi/android/update/UpdateManager$UpdateState;

    const-string v1, "DOWNLOADING"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/xiaozhi/android/update/UpdateManager$UpdateState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaozhi/android/update/UpdateManager$UpdateState;->DOWNLOADING:Lcom/xiaozhi/android/update/UpdateManager$UpdateState;

    new-instance v0, Lcom/xiaozhi/android/update/UpdateManager$UpdateState;

    const-string v1, "DOWNLOAD_COMPLETE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/xiaozhi/android/update/UpdateManager$UpdateState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaozhi/android/update/UpdateManager$UpdateState;->DOWNLOAD_COMPLETE:Lcom/xiaozhi/android/update/UpdateManager$UpdateState;

    new-instance v0, Lcom/xiaozhi/android/update/UpdateManager$UpdateState;

    const-string v1, "INSTALLING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/xiaozhi/android/update/UpdateManager$UpdateState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaozhi/android/update/UpdateManager$UpdateState;->INSTALLING:Lcom/xiaozhi/android/update/UpdateManager$UpdateState;

    new-instance v0, Lcom/xiaozhi/android/update/UpdateManager$UpdateState;

    const-string v1, "NEED_PERMISSION"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/xiaozhi/android/update/UpdateManager$UpdateState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaozhi/android/update/UpdateManager$UpdateState;->NEED_PERMISSION:Lcom/xiaozhi/android/update/UpdateManager$UpdateState;

    new-instance v0, Lcom/xiaozhi/android/update/UpdateManager$UpdateState;

    const-string v1, "ERROR"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/xiaozhi/android/update/UpdateManager$UpdateState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaozhi/android/update/UpdateManager$UpdateState;->ERROR:Lcom/xiaozhi/android/update/UpdateManager$UpdateState;

    invoke-static {}, Lcom/xiaozhi/android/update/UpdateManager$UpdateState;->$values()[Lcom/xiaozhi/android/update/UpdateManager$UpdateState;

    move-result-object v0

    sput-object v0, Lcom/xiaozhi/android/update/UpdateManager$UpdateState;->$VALUES:[Lcom/xiaozhi/android/update/UpdateManager$UpdateState;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/xiaozhi/android/update/UpdateManager$UpdateState;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 96
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/xiaozhi/android/update/UpdateManager$UpdateState;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/xiaozhi/android/update/UpdateManager$UpdateState;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaozhi/android/update/UpdateManager$UpdateState;
    .locals 1

    const-class v0, Lcom/xiaozhi/android/update/UpdateManager$UpdateState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 98
    check-cast p0, Lcom/xiaozhi/android/update/UpdateManager$UpdateState;

    return-object p0
.end method

.method public static values()[Lcom/xiaozhi/android/update/UpdateManager$UpdateState;
    .locals 1

    sget-object v0, Lcom/xiaozhi/android/update/UpdateManager$UpdateState;->$VALUES:[Lcom/xiaozhi/android/update/UpdateManager$UpdateState;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 98
    check-cast v0, [Lcom/xiaozhi/android/update/UpdateManager$UpdateState;

    return-object v0
.end method
