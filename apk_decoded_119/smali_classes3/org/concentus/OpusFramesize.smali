.class public final enum Lorg/concentus/OpusFramesize;
.super Ljava/lang/Enum;
.source "OpusFramesize.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/concentus/OpusFramesize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/concentus/OpusFramesize;

.field public static final enum OPUS_FRAMESIZE_10_MS:Lorg/concentus/OpusFramesize;

.field public static final enum OPUS_FRAMESIZE_20_MS:Lorg/concentus/OpusFramesize;

.field public static final enum OPUS_FRAMESIZE_2_5_MS:Lorg/concentus/OpusFramesize;

.field public static final enum OPUS_FRAMESIZE_40_MS:Lorg/concentus/OpusFramesize;

.field public static final enum OPUS_FRAMESIZE_5_MS:Lorg/concentus/OpusFramesize;

.field public static final enum OPUS_FRAMESIZE_60_MS:Lorg/concentus/OpusFramesize;

.field public static final enum OPUS_FRAMESIZE_ARG:Lorg/concentus/OpusFramesize;

.field public static final enum OPUS_FRAMESIZE_UNKNOWN:Lorg/concentus/OpusFramesize;

.field public static final enum OPUS_FRAMESIZE_VARIABLE:Lorg/concentus/OpusFramesize;


# direct methods
.method private static synthetic $values()[Lorg/concentus/OpusFramesize;
    .locals 9

    .line 37
    sget-object v0, Lorg/concentus/OpusFramesize;->OPUS_FRAMESIZE_UNKNOWN:Lorg/concentus/OpusFramesize;

    sget-object v1, Lorg/concentus/OpusFramesize;->OPUS_FRAMESIZE_ARG:Lorg/concentus/OpusFramesize;

    sget-object v2, Lorg/concentus/OpusFramesize;->OPUS_FRAMESIZE_2_5_MS:Lorg/concentus/OpusFramesize;

    sget-object v3, Lorg/concentus/OpusFramesize;->OPUS_FRAMESIZE_5_MS:Lorg/concentus/OpusFramesize;

    sget-object v4, Lorg/concentus/OpusFramesize;->OPUS_FRAMESIZE_10_MS:Lorg/concentus/OpusFramesize;

    sget-object v5, Lorg/concentus/OpusFramesize;->OPUS_FRAMESIZE_20_MS:Lorg/concentus/OpusFramesize;

    sget-object v6, Lorg/concentus/OpusFramesize;->OPUS_FRAMESIZE_40_MS:Lorg/concentus/OpusFramesize;

    sget-object v7, Lorg/concentus/OpusFramesize;->OPUS_FRAMESIZE_60_MS:Lorg/concentus/OpusFramesize;

    sget-object v8, Lorg/concentus/OpusFramesize;->OPUS_FRAMESIZE_VARIABLE:Lorg/concentus/OpusFramesize;

    filled-new-array/range {v0 .. v8}, [Lorg/concentus/OpusFramesize;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 41
    new-instance v0, Lorg/concentus/OpusFramesize;

    const-string v1, "OPUS_FRAMESIZE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/concentus/OpusFramesize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/concentus/OpusFramesize;->OPUS_FRAMESIZE_UNKNOWN:Lorg/concentus/OpusFramesize;

    .line 45
    new-instance v0, Lorg/concentus/OpusFramesize;

    const-string v1, "OPUS_FRAMESIZE_ARG"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/concentus/OpusFramesize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/concentus/OpusFramesize;->OPUS_FRAMESIZE_ARG:Lorg/concentus/OpusFramesize;

    .line 49
    new-instance v0, Lorg/concentus/OpusFramesize;

    const-string v1, "OPUS_FRAMESIZE_2_5_MS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/concentus/OpusFramesize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/concentus/OpusFramesize;->OPUS_FRAMESIZE_2_5_MS:Lorg/concentus/OpusFramesize;

    .line 53
    new-instance v0, Lorg/concentus/OpusFramesize;

    const-string v1, "OPUS_FRAMESIZE_5_MS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/concentus/OpusFramesize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/concentus/OpusFramesize;->OPUS_FRAMESIZE_5_MS:Lorg/concentus/OpusFramesize;

    .line 57
    new-instance v0, Lorg/concentus/OpusFramesize;

    const-string v1, "OPUS_FRAMESIZE_10_MS"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lorg/concentus/OpusFramesize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/concentus/OpusFramesize;->OPUS_FRAMESIZE_10_MS:Lorg/concentus/OpusFramesize;

    .line 61
    new-instance v0, Lorg/concentus/OpusFramesize;

    const-string v1, "OPUS_FRAMESIZE_20_MS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/concentus/OpusFramesize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/concentus/OpusFramesize;->OPUS_FRAMESIZE_20_MS:Lorg/concentus/OpusFramesize;

    .line 65
    new-instance v0, Lorg/concentus/OpusFramesize;

    const-string v1, "OPUS_FRAMESIZE_40_MS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/concentus/OpusFramesize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/concentus/OpusFramesize;->OPUS_FRAMESIZE_40_MS:Lorg/concentus/OpusFramesize;

    .line 69
    new-instance v0, Lorg/concentus/OpusFramesize;

    const-string v1, "OPUS_FRAMESIZE_60_MS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/concentus/OpusFramesize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/concentus/OpusFramesize;->OPUS_FRAMESIZE_60_MS:Lorg/concentus/OpusFramesize;

    .line 73
    new-instance v0, Lorg/concentus/OpusFramesize;

    const-string v1, "OPUS_FRAMESIZE_VARIABLE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/concentus/OpusFramesize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/concentus/OpusFramesize;->OPUS_FRAMESIZE_VARIABLE:Lorg/concentus/OpusFramesize;

    .line 37
    invoke-static {}, Lorg/concentus/OpusFramesize;->$values()[Lorg/concentus/OpusFramesize;

    move-result-object v0

    sput-object v0, Lorg/concentus/OpusFramesize;->$VALUES:[Lorg/concentus/OpusFramesize;

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

.method public static valueOf(Ljava/lang/String;)Lorg/concentus/OpusFramesize;
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
    const-class v0, Lorg/concentus/OpusFramesize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/concentus/OpusFramesize;

    return-object p0
.end method

.method public static values()[Lorg/concentus/OpusFramesize;
    .locals 1

    .line 37
    sget-object v0, Lorg/concentus/OpusFramesize;->$VALUES:[Lorg/concentus/OpusFramesize;

    invoke-virtual {v0}, [Lorg/concentus/OpusFramesize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/concentus/OpusFramesize;

    return-object v0
.end method
