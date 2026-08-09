.class public final enum Lorg/concentus/OpusApplication;
.super Ljava/lang/Enum;
.source "OpusApplication.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/concentus/OpusApplication;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/concentus/OpusApplication;

.field public static final enum OPUS_APPLICATION_AUDIO:Lorg/concentus/OpusApplication;

.field public static final enum OPUS_APPLICATION_RESTRICTED_LOWDELAY:Lorg/concentus/OpusApplication;

.field public static final enum OPUS_APPLICATION_UNIMPLEMENTED:Lorg/concentus/OpusApplication;

.field public static final enum OPUS_APPLICATION_VOIP:Lorg/concentus/OpusApplication;


# direct methods
.method private static synthetic $values()[Lorg/concentus/OpusApplication;
    .locals 4

    .line 37
    sget-object v0, Lorg/concentus/OpusApplication;->OPUS_APPLICATION_UNIMPLEMENTED:Lorg/concentus/OpusApplication;

    sget-object v1, Lorg/concentus/OpusApplication;->OPUS_APPLICATION_VOIP:Lorg/concentus/OpusApplication;

    sget-object v2, Lorg/concentus/OpusApplication;->OPUS_APPLICATION_AUDIO:Lorg/concentus/OpusApplication;

    sget-object v3, Lorg/concentus/OpusApplication;->OPUS_APPLICATION_RESTRICTED_LOWDELAY:Lorg/concentus/OpusApplication;

    filled-new-array {v0, v1, v2, v3}, [Lorg/concentus/OpusApplication;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 38
    new-instance v0, Lorg/concentus/OpusApplication;

    const-string v1, "OPUS_APPLICATION_UNIMPLEMENTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/concentus/OpusApplication;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/concentus/OpusApplication;->OPUS_APPLICATION_UNIMPLEMENTED:Lorg/concentus/OpusApplication;

    .line 42
    new-instance v0, Lorg/concentus/OpusApplication;

    const-string v1, "OPUS_APPLICATION_VOIP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/concentus/OpusApplication;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/concentus/OpusApplication;->OPUS_APPLICATION_VOIP:Lorg/concentus/OpusApplication;

    .line 46
    new-instance v0, Lorg/concentus/OpusApplication;

    const-string v1, "OPUS_APPLICATION_AUDIO"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/concentus/OpusApplication;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/concentus/OpusApplication;->OPUS_APPLICATION_AUDIO:Lorg/concentus/OpusApplication;

    .line 50
    new-instance v0, Lorg/concentus/OpusApplication;

    const-string v1, "OPUS_APPLICATION_RESTRICTED_LOWDELAY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/concentus/OpusApplication;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/concentus/OpusApplication;->OPUS_APPLICATION_RESTRICTED_LOWDELAY:Lorg/concentus/OpusApplication;

    .line 37
    invoke-static {}, Lorg/concentus/OpusApplication;->$values()[Lorg/concentus/OpusApplication;

    move-result-object v0

    sput-object v0, Lorg/concentus/OpusApplication;->$VALUES:[Lorg/concentus/OpusApplication;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/concentus/OpusApplication;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 37
    const-class v0, Lorg/concentus/OpusApplication;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/concentus/OpusApplication;

    return-object p0
.end method

.method public static values()[Lorg/concentus/OpusApplication;
    .locals 1

    .line 37
    sget-object v0, Lorg/concentus/OpusApplication;->$VALUES:[Lorg/concentus/OpusApplication;

    invoke-virtual {v0}, [Lorg/concentus/OpusApplication;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/concentus/OpusApplication;

    return-object v0
.end method
