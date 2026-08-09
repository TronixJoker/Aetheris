.class Lorg/concentus/OpusBandwidthHelpers;
.super Ljava/lang/Object;
.source "OpusBandwidth.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static GetBandwidth(I)Lorg/concentus/OpusBandwidth;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 81
    sget-object p0, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_AUTO:Lorg/concentus/OpusBandwidth;

    return-object p0

    .line 78
    :cond_0
    sget-object p0, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_FULLBAND:Lorg/concentus/OpusBandwidth;

    return-object p0

    .line 76
    :cond_1
    sget-object p0, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_SUPERWIDEBAND:Lorg/concentus/OpusBandwidth;

    return-object p0

    .line 74
    :cond_2
    sget-object p0, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_WIDEBAND:Lorg/concentus/OpusBandwidth;

    return-object p0

    .line 72
    :cond_3
    sget-object p0, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_MEDIUMBAND:Lorg/concentus/OpusBandwidth;

    return-object p0

    .line 70
    :cond_4
    sget-object p0, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_NARROWBAND:Lorg/concentus/OpusBandwidth;

    return-object p0
.end method

.method static GetOrdinal(Lorg/concentus/OpusBandwidth;)I
    .locals 1

    .line 51
    sget-object v0, Lorg/concentus/OpusBandwidthHelpers$1;->$SwitchMap$org$concentus$OpusBandwidth:[I

    invoke-virtual {p0}, Lorg/concentus/OpusBandwidth;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    return v0
.end method

.method static MAX(Lorg/concentus/OpusBandwidth;Lorg/concentus/OpusBandwidth;)Lorg/concentus/OpusBandwidth;
    .locals 2

    .line 92
    invoke-static {p0}, Lorg/concentus/OpusBandwidthHelpers;->GetOrdinal(Lorg/concentus/OpusBandwidth;)I

    move-result v0

    invoke-static {p1}, Lorg/concentus/OpusBandwidthHelpers;->GetOrdinal(Lorg/concentus/OpusBandwidth;)I

    move-result v1

    if-le v0, v1, :cond_0

    return-object p0

    :cond_0
    return-object p1
.end method

.method static MIN(Lorg/concentus/OpusBandwidth;Lorg/concentus/OpusBandwidth;)Lorg/concentus/OpusBandwidth;
    .locals 2

    .line 85
    invoke-static {p0}, Lorg/concentus/OpusBandwidthHelpers;->GetOrdinal(Lorg/concentus/OpusBandwidth;)I

    move-result v0

    invoke-static {p1}, Lorg/concentus/OpusBandwidthHelpers;->GetOrdinal(Lorg/concentus/OpusBandwidth;)I

    move-result v1

    if-ge v0, v1, :cond_0

    return-object p0

    :cond_0
    return-object p1
.end method

.method static SUBTRACT(Lorg/concentus/OpusBandwidth;I)Lorg/concentus/OpusBandwidth;
    .locals 0

    .line 99
    invoke-static {p0}, Lorg/concentus/OpusBandwidthHelpers;->GetOrdinal(Lorg/concentus/OpusBandwidth;)I

    move-result p0

    sub-int/2addr p0, p1

    invoke-static {p0}, Lorg/concentus/OpusBandwidthHelpers;->GetBandwidth(I)Lorg/concentus/OpusBandwidth;

    move-result-object p0

    return-object p0
.end method
