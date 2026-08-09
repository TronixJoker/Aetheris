.class public final enum Lorg/concentus/OpusBandwidth;
.super Ljava/lang/Enum;
.source "OpusBandwidth.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/concentus/OpusBandwidth;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/concentus/OpusBandwidth;

.field public static final enum OPUS_BANDWIDTH_AUTO:Lorg/concentus/OpusBandwidth;

.field public static final enum OPUS_BANDWIDTH_FULLBAND:Lorg/concentus/OpusBandwidth;

.field public static final enum OPUS_BANDWIDTH_MEDIUMBAND:Lorg/concentus/OpusBandwidth;

.field public static final enum OPUS_BANDWIDTH_NARROWBAND:Lorg/concentus/OpusBandwidth;

.field public static final enum OPUS_BANDWIDTH_SUPERWIDEBAND:Lorg/concentus/OpusBandwidth;

.field public static final enum OPUS_BANDWIDTH_UNKNOWN:Lorg/concentus/OpusBandwidth;

.field public static final enum OPUS_BANDWIDTH_WIDEBAND:Lorg/concentus/OpusBandwidth;


# direct methods
.method private static synthetic $values()[Lorg/concentus/OpusBandwidth;
    .locals 7

    .line 37
    sget-object v0, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_UNKNOWN:Lorg/concentus/OpusBandwidth;

    sget-object v1, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_AUTO:Lorg/concentus/OpusBandwidth;

    sget-object v2, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_NARROWBAND:Lorg/concentus/OpusBandwidth;

    sget-object v3, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_MEDIUMBAND:Lorg/concentus/OpusBandwidth;

    sget-object v4, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_WIDEBAND:Lorg/concentus/OpusBandwidth;

    sget-object v5, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_SUPERWIDEBAND:Lorg/concentus/OpusBandwidth;

    sget-object v6, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_FULLBAND:Lorg/concentus/OpusBandwidth;

    filled-new-array/range {v0 .. v6}, [Lorg/concentus/OpusBandwidth;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 38
    new-instance v0, Lorg/concentus/OpusBandwidth;

    const-string v1, "OPUS_BANDWIDTH_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/concentus/OpusBandwidth;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_UNKNOWN:Lorg/concentus/OpusBandwidth;

    .line 39
    new-instance v0, Lorg/concentus/OpusBandwidth;

    const-string v1, "OPUS_BANDWIDTH_AUTO"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/concentus/OpusBandwidth;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_AUTO:Lorg/concentus/OpusBandwidth;

    .line 40
    new-instance v0, Lorg/concentus/OpusBandwidth;

    const-string v1, "OPUS_BANDWIDTH_NARROWBAND"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/concentus/OpusBandwidth;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_NARROWBAND:Lorg/concentus/OpusBandwidth;

    .line 41
    new-instance v0, Lorg/concentus/OpusBandwidth;

    const-string v1, "OPUS_BANDWIDTH_MEDIUMBAND"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/concentus/OpusBandwidth;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_MEDIUMBAND:Lorg/concentus/OpusBandwidth;

    .line 42
    new-instance v0, Lorg/concentus/OpusBandwidth;

    const-string v1, "OPUS_BANDWIDTH_WIDEBAND"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lorg/concentus/OpusBandwidth;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_WIDEBAND:Lorg/concentus/OpusBandwidth;

    .line 43
    new-instance v0, Lorg/concentus/OpusBandwidth;

    const-string v1, "OPUS_BANDWIDTH_SUPERWIDEBAND"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/concentus/OpusBandwidth;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_SUPERWIDEBAND:Lorg/concentus/OpusBandwidth;

    .line 44
    new-instance v0, Lorg/concentus/OpusBandwidth;

    const-string v1, "OPUS_BANDWIDTH_FULLBAND"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/concentus/OpusBandwidth;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_FULLBAND:Lorg/concentus/OpusBandwidth;

    .line 37
    invoke-static {}, Lorg/concentus/OpusBandwidth;->$values()[Lorg/concentus/OpusBandwidth;

    move-result-object v0

    sput-object v0, Lorg/concentus/OpusBandwidth;->$VALUES:[Lorg/concentus/OpusBandwidth;

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

.method public static valueOf(Ljava/lang/String;)Lorg/concentus/OpusBandwidth;
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
    const-class v0, Lorg/concentus/OpusBandwidth;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/concentus/OpusBandwidth;

    return-object p0
.end method

.method public static values()[Lorg/concentus/OpusBandwidth;
    .locals 1

    .line 37
    sget-object v0, Lorg/concentus/OpusBandwidth;->$VALUES:[Lorg/concentus/OpusBandwidth;

    invoke-virtual {v0}, [Lorg/concentus/OpusBandwidth;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/concentus/OpusBandwidth;

    return-object v0
.end method
