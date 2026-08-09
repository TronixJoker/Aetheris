.class public final enum Lorg/concentus/OpusSignal;
.super Ljava/lang/Enum;
.source "OpusSignal.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/concentus/OpusSignal;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/concentus/OpusSignal;

.field public static final enum OPUS_SIGNAL_AUTO:Lorg/concentus/OpusSignal;

.field public static final enum OPUS_SIGNAL_MUSIC:Lorg/concentus/OpusSignal;

.field public static final enum OPUS_SIGNAL_UNKNOWN:Lorg/concentus/OpusSignal;

.field public static final enum OPUS_SIGNAL_VOICE:Lorg/concentus/OpusSignal;


# direct methods
.method private static synthetic $values()[Lorg/concentus/OpusSignal;
    .locals 4

    .line 37
    sget-object v0, Lorg/concentus/OpusSignal;->OPUS_SIGNAL_UNKNOWN:Lorg/concentus/OpusSignal;

    sget-object v1, Lorg/concentus/OpusSignal;->OPUS_SIGNAL_AUTO:Lorg/concentus/OpusSignal;

    sget-object v2, Lorg/concentus/OpusSignal;->OPUS_SIGNAL_VOICE:Lorg/concentus/OpusSignal;

    sget-object v3, Lorg/concentus/OpusSignal;->OPUS_SIGNAL_MUSIC:Lorg/concentus/OpusSignal;

    filled-new-array {v0, v1, v2, v3}, [Lorg/concentus/OpusSignal;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 38
    new-instance v0, Lorg/concentus/OpusSignal;

    const-string v1, "OPUS_SIGNAL_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/concentus/OpusSignal;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/concentus/OpusSignal;->OPUS_SIGNAL_UNKNOWN:Lorg/concentus/OpusSignal;

    .line 39
    new-instance v0, Lorg/concentus/OpusSignal;

    const-string v1, "OPUS_SIGNAL_AUTO"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/concentus/OpusSignal;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/concentus/OpusSignal;->OPUS_SIGNAL_AUTO:Lorg/concentus/OpusSignal;

    .line 43
    new-instance v0, Lorg/concentus/OpusSignal;

    const-string v1, "OPUS_SIGNAL_VOICE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/concentus/OpusSignal;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/concentus/OpusSignal;->OPUS_SIGNAL_VOICE:Lorg/concentus/OpusSignal;

    .line 47
    new-instance v0, Lorg/concentus/OpusSignal;

    const-string v1, "OPUS_SIGNAL_MUSIC"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/concentus/OpusSignal;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/concentus/OpusSignal;->OPUS_SIGNAL_MUSIC:Lorg/concentus/OpusSignal;

    .line 37
    invoke-static {}, Lorg/concentus/OpusSignal;->$values()[Lorg/concentus/OpusSignal;

    move-result-object v0

    sput-object v0, Lorg/concentus/OpusSignal;->$VALUES:[Lorg/concentus/OpusSignal;

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

.method public static valueOf(Ljava/lang/String;)Lorg/concentus/OpusSignal;
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
    const-class v0, Lorg/concentus/OpusSignal;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/concentus/OpusSignal;

    return-object p0
.end method

.method public static values()[Lorg/concentus/OpusSignal;
    .locals 1

    .line 37
    sget-object v0, Lorg/concentus/OpusSignal;->$VALUES:[Lorg/concentus/OpusSignal;

    invoke-virtual {v0}, [Lorg/concentus/OpusSignal;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/concentus/OpusSignal;

    return-object v0
.end method
