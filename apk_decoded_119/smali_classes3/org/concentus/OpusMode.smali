.class public final enum Lorg/concentus/OpusMode;
.super Ljava/lang/Enum;
.source "OpusMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/concentus/OpusMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/concentus/OpusMode;

.field public static final enum MODE_AUTO:Lorg/concentus/OpusMode;

.field public static final enum MODE_CELT_ONLY:Lorg/concentus/OpusMode;

.field public static final enum MODE_HYBRID:Lorg/concentus/OpusMode;

.field public static final enum MODE_SILK_ONLY:Lorg/concentus/OpusMode;

.field public static final enum MODE_UNKNOWN:Lorg/concentus/OpusMode;


# direct methods
.method private static synthetic $values()[Lorg/concentus/OpusMode;
    .locals 5

    .line 37
    sget-object v0, Lorg/concentus/OpusMode;->MODE_UNKNOWN:Lorg/concentus/OpusMode;

    sget-object v1, Lorg/concentus/OpusMode;->MODE_AUTO:Lorg/concentus/OpusMode;

    sget-object v2, Lorg/concentus/OpusMode;->MODE_SILK_ONLY:Lorg/concentus/OpusMode;

    sget-object v3, Lorg/concentus/OpusMode;->MODE_HYBRID:Lorg/concentus/OpusMode;

    sget-object v4, Lorg/concentus/OpusMode;->MODE_CELT_ONLY:Lorg/concentus/OpusMode;

    filled-new-array {v0, v1, v2, v3, v4}, [Lorg/concentus/OpusMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 38
    new-instance v0, Lorg/concentus/OpusMode;

    const-string v1, "MODE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/concentus/OpusMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/concentus/OpusMode;->MODE_UNKNOWN:Lorg/concentus/OpusMode;

    .line 39
    new-instance v0, Lorg/concentus/OpusMode;

    const-string v1, "MODE_AUTO"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/concentus/OpusMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/concentus/OpusMode;->MODE_AUTO:Lorg/concentus/OpusMode;

    .line 40
    new-instance v0, Lorg/concentus/OpusMode;

    const-string v1, "MODE_SILK_ONLY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/concentus/OpusMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/concentus/OpusMode;->MODE_SILK_ONLY:Lorg/concentus/OpusMode;

    .line 41
    new-instance v0, Lorg/concentus/OpusMode;

    const-string v1, "MODE_HYBRID"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/concentus/OpusMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/concentus/OpusMode;->MODE_HYBRID:Lorg/concentus/OpusMode;

    .line 42
    new-instance v0, Lorg/concentus/OpusMode;

    const-string v1, "MODE_CELT_ONLY"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lorg/concentus/OpusMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/concentus/OpusMode;->MODE_CELT_ONLY:Lorg/concentus/OpusMode;

    .line 37
    invoke-static {}, Lorg/concentus/OpusMode;->$values()[Lorg/concentus/OpusMode;

    move-result-object v0

    sput-object v0, Lorg/concentus/OpusMode;->$VALUES:[Lorg/concentus/OpusMode;

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

.method public static valueOf(Ljava/lang/String;)Lorg/concentus/OpusMode;
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
    const-class v0, Lorg/concentus/OpusMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/concentus/OpusMode;

    return-object p0
.end method

.method public static values()[Lorg/concentus/OpusMode;
    .locals 1

    .line 37
    sget-object v0, Lorg/concentus/OpusMode;->$VALUES:[Lorg/concentus/OpusMode;

    invoke-virtual {v0}, [Lorg/concentus/OpusMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/concentus/OpusMode;

    return-object v0
.end method
