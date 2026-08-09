.class public final enum Lcom/xiaozhi/android/audio/MusicPlayerManager$PlayState;
.super Ljava/lang/Enum;
.source "MusicPlayerManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaozhi/android/audio/MusicPlayerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlayState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaozhi/android/audio/MusicPlayerManager$PlayState;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0008\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/xiaozhi/android/audio/MusicPlayerManager$PlayState;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "IDLE",
        "LOADING",
        "PLAYING",
        "PAUSED",
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

.field private static final synthetic $VALUES:[Lcom/xiaozhi/android/audio/MusicPlayerManager$PlayState;

.field public static final enum ERROR:Lcom/xiaozhi/android/audio/MusicPlayerManager$PlayState;

.field public static final enum IDLE:Lcom/xiaozhi/android/audio/MusicPlayerManager$PlayState;

.field public static final enum LOADING:Lcom/xiaozhi/android/audio/MusicPlayerManager$PlayState;

.field public static final enum PAUSED:Lcom/xiaozhi/android/audio/MusicPlayerManager$PlayState;

.field public static final enum PLAYING:Lcom/xiaozhi/android/audio/MusicPlayerManager$PlayState;


# direct methods
.method private static final synthetic $values()[Lcom/xiaozhi/android/audio/MusicPlayerManager$PlayState;
    .locals 5

    sget-object v0, Lcom/xiaozhi/android/audio/MusicPlayerManager$PlayState;->IDLE:Lcom/xiaozhi/android/audio/MusicPlayerManager$PlayState;

    sget-object v1, Lcom/xiaozhi/android/audio/MusicPlayerManager$PlayState;->LOADING:Lcom/xiaozhi/android/audio/MusicPlayerManager$PlayState;

    sget-object v2, Lcom/xiaozhi/android/audio/MusicPlayerManager$PlayState;->PLAYING:Lcom/xiaozhi/android/audio/MusicPlayerManager$PlayState;

    sget-object v3, Lcom/xiaozhi/android/audio/MusicPlayerManager$PlayState;->PAUSED:Lcom/xiaozhi/android/audio/MusicPlayerManager$PlayState;

    sget-object v4, Lcom/xiaozhi/android/audio/MusicPlayerManager$PlayState;->ERROR:Lcom/xiaozhi/android/audio/MusicPlayerManager$PlayState;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/xiaozhi/android/audio/MusicPlayerManager$PlayState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 32
    new-instance v0, Lcom/xiaozhi/android/audio/MusicPlayerManager$PlayState;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaozhi/android/audio/MusicPlayerManager$PlayState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaozhi/android/audio/MusicPlayerManager$PlayState;->IDLE:Lcom/xiaozhi/android/audio/MusicPlayerManager$PlayState;

    new-instance v0, Lcom/xiaozhi/android/audio/MusicPlayerManager$PlayState;

    const-string v1, "LOADING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/xiaozhi/android/audio/MusicPlayerManager$PlayState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaozhi/android/audio/MusicPlayerManager$PlayState;->LOADING:Lcom/xiaozhi/android/audio/MusicPlayerManager$PlayState;

    new-instance v0, Lcom/xiaozhi/android/audio/MusicPlayerManager$PlayState;

    const-string v1, "PLAYING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/xiaozhi/android/audio/MusicPlayerManager$PlayState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaozhi/android/audio/MusicPlayerManager$PlayState;->PLAYING:Lcom/xiaozhi/android/audio/MusicPlayerManager$PlayState;

    new-instance v0, Lcom/xiaozhi/android/audio/MusicPlayerManager$PlayState;

    const-string v1, "PAUSED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/xiaozhi/android/audio/MusicPlayerManager$PlayState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaozhi/android/audio/MusicPlayerManager$PlayState;->PAUSED:Lcom/xiaozhi/android/audio/MusicPlayerManager$PlayState;

    new-instance v0, Lcom/xiaozhi/android/audio/MusicPlayerManager$PlayState;

    const-string v1, "ERROR"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/xiaozhi/android/audio/MusicPlayerManager$PlayState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaozhi/android/audio/MusicPlayerManager$PlayState;->ERROR:Lcom/xiaozhi/android/audio/MusicPlayerManager$PlayState;

    invoke-static {}, Lcom/xiaozhi/android/audio/MusicPlayerManager$PlayState;->$values()[Lcom/xiaozhi/android/audio/MusicPlayerManager$PlayState;

    move-result-object v0

    sput-object v0, Lcom/xiaozhi/android/audio/MusicPlayerManager$PlayState;->$VALUES:[Lcom/xiaozhi/android/audio/MusicPlayerManager$PlayState;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/xiaozhi/android/audio/MusicPlayerManager$PlayState;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/xiaozhi/android/audio/MusicPlayerManager$PlayState;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/xiaozhi/android/audio/MusicPlayerManager$PlayState;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaozhi/android/audio/MusicPlayerManager$PlayState;
    .locals 1

    const-class v0, Lcom/xiaozhi/android/audio/MusicPlayerManager$PlayState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 33
    check-cast p0, Lcom/xiaozhi/android/audio/MusicPlayerManager$PlayState;

    return-object p0
.end method

.method public static values()[Lcom/xiaozhi/android/audio/MusicPlayerManager$PlayState;
    .locals 1

    sget-object v0, Lcom/xiaozhi/android/audio/MusicPlayerManager$PlayState;->$VALUES:[Lcom/xiaozhi/android/audio/MusicPlayerManager$PlayState;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 33
    check-cast v0, [Lcom/xiaozhi/android/audio/MusicPlayerManager$PlayState;

    return-object v0
.end method
