.class public final enum Lcom/xiaozhi/android/model/ListeningMode;
.super Ljava/lang/Enum;
.source "DeviceState.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaozhi/android/model/ListeningMode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/xiaozhi/android/model/ListeningMode;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "REALTIME",
        "AUTO_STOP",
        "MANUAL",
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

.field private static final synthetic $VALUES:[Lcom/xiaozhi/android/model/ListeningMode;

.field public static final enum AUTO_STOP:Lcom/xiaozhi/android/model/ListeningMode;

.field public static final enum MANUAL:Lcom/xiaozhi/android/model/ListeningMode;

.field public static final enum REALTIME:Lcom/xiaozhi/android/model/ListeningMode;


# direct methods
.method private static final synthetic $values()[Lcom/xiaozhi/android/model/ListeningMode;
    .locals 3

    sget-object v0, Lcom/xiaozhi/android/model/ListeningMode;->REALTIME:Lcom/xiaozhi/android/model/ListeningMode;

    sget-object v1, Lcom/xiaozhi/android/model/ListeningMode;->AUTO_STOP:Lcom/xiaozhi/android/model/ListeningMode;

    sget-object v2, Lcom/xiaozhi/android/model/ListeningMode;->MANUAL:Lcom/xiaozhi/android/model/ListeningMode;

    filled-new-array {v0, v1, v2}, [Lcom/xiaozhi/android/model/ListeningMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 8
    new-instance v0, Lcom/xiaozhi/android/model/ListeningMode;

    const-string v1, "REALTIME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaozhi/android/model/ListeningMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaozhi/android/model/ListeningMode;->REALTIME:Lcom/xiaozhi/android/model/ListeningMode;

    new-instance v0, Lcom/xiaozhi/android/model/ListeningMode;

    const-string v1, "AUTO_STOP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/xiaozhi/android/model/ListeningMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaozhi/android/model/ListeningMode;->AUTO_STOP:Lcom/xiaozhi/android/model/ListeningMode;

    new-instance v0, Lcom/xiaozhi/android/model/ListeningMode;

    const-string v1, "MANUAL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/xiaozhi/android/model/ListeningMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaozhi/android/model/ListeningMode;->MANUAL:Lcom/xiaozhi/android/model/ListeningMode;

    invoke-static {}, Lcom/xiaozhi/android/model/ListeningMode;->$values()[Lcom/xiaozhi/android/model/ListeningMode;

    move-result-object v0

    sput-object v0, Lcom/xiaozhi/android/model/ListeningMode;->$VALUES:[Lcom/xiaozhi/android/model/ListeningMode;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/xiaozhi/android/model/ListeningMode;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/xiaozhi/android/model/ListeningMode;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/xiaozhi/android/model/ListeningMode;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaozhi/android/model/ListeningMode;
    .locals 1

    const-class v0, Lcom/xiaozhi/android/model/ListeningMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 9
    check-cast p0, Lcom/xiaozhi/android/model/ListeningMode;

    return-object p0
.end method

.method public static values()[Lcom/xiaozhi/android/model/ListeningMode;
    .locals 1

    sget-object v0, Lcom/xiaozhi/android/model/ListeningMode;->$VALUES:[Lcom/xiaozhi/android/model/ListeningMode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 9
    check-cast v0, [Lcom/xiaozhi/android/model/ListeningMode;

    return-object v0
.end method
