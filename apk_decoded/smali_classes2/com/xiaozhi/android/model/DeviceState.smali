.class public final enum Lcom/xiaozhi/android/model/DeviceState;
.super Ljava/lang/Enum;
.source "DeviceState.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaozhi/android/model/DeviceState;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0007\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/xiaozhi/android/model/DeviceState;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "IDLE",
        "CONNECTING",
        "LISTENING",
        "SPEAKING",
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

.field private static final synthetic $VALUES:[Lcom/xiaozhi/android/model/DeviceState;

.field public static final enum CONNECTING:Lcom/xiaozhi/android/model/DeviceState;

.field public static final enum IDLE:Lcom/xiaozhi/android/model/DeviceState;

.field public static final enum LISTENING:Lcom/xiaozhi/android/model/DeviceState;

.field public static final enum SPEAKING:Lcom/xiaozhi/android/model/DeviceState;


# direct methods
.method private static final synthetic $values()[Lcom/xiaozhi/android/model/DeviceState;
    .locals 4

    sget-object v0, Lcom/xiaozhi/android/model/DeviceState;->IDLE:Lcom/xiaozhi/android/model/DeviceState;

    sget-object v1, Lcom/xiaozhi/android/model/DeviceState;->CONNECTING:Lcom/xiaozhi/android/model/DeviceState;

    sget-object v2, Lcom/xiaozhi/android/model/DeviceState;->LISTENING:Lcom/xiaozhi/android/model/DeviceState;

    sget-object v3, Lcom/xiaozhi/android/model/DeviceState;->SPEAKING:Lcom/xiaozhi/android/model/DeviceState;

    filled-new-array {v0, v1, v2, v3}, [Lcom/xiaozhi/android/model/DeviceState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/xiaozhi/android/model/DeviceState;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaozhi/android/model/DeviceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaozhi/android/model/DeviceState;->IDLE:Lcom/xiaozhi/android/model/DeviceState;

    new-instance v0, Lcom/xiaozhi/android/model/DeviceState;

    const-string v1, "CONNECTING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/xiaozhi/android/model/DeviceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaozhi/android/model/DeviceState;->CONNECTING:Lcom/xiaozhi/android/model/DeviceState;

    new-instance v0, Lcom/xiaozhi/android/model/DeviceState;

    const-string v1, "LISTENING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/xiaozhi/android/model/DeviceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaozhi/android/model/DeviceState;->LISTENING:Lcom/xiaozhi/android/model/DeviceState;

    new-instance v0, Lcom/xiaozhi/android/model/DeviceState;

    const-string v1, "SPEAKING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/xiaozhi/android/model/DeviceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaozhi/android/model/DeviceState;->SPEAKING:Lcom/xiaozhi/android/model/DeviceState;

    invoke-static {}, Lcom/xiaozhi/android/model/DeviceState;->$values()[Lcom/xiaozhi/android/model/DeviceState;

    move-result-object v0

    sput-object v0, Lcom/xiaozhi/android/model/DeviceState;->$VALUES:[Lcom/xiaozhi/android/model/DeviceState;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/xiaozhi/android/model/DeviceState;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/xiaozhi/android/model/DeviceState;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/xiaozhi/android/model/DeviceState;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaozhi/android/model/DeviceState;
    .locals 1

    const-class v0, Lcom/xiaozhi/android/model/DeviceState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 5
    check-cast p0, Lcom/xiaozhi/android/model/DeviceState;

    return-object p0
.end method

.method public static values()[Lcom/xiaozhi/android/model/DeviceState;
    .locals 1

    sget-object v0, Lcom/xiaozhi/android/model/DeviceState;->$VALUES:[Lcom/xiaozhi/android/model/DeviceState;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 5
    check-cast v0, [Lcom/xiaozhi/android/model/DeviceState;

    return-object v0
.end method
