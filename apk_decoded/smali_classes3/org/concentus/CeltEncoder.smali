.class Lorg/concentus/CeltEncoder;
.super Ljava/lang/Object;
.source "CeltEncoder.java"


# instance fields
.field analysis:Lorg/concentus/AnalysisInfo;

.field bitrate:I

.field channels:I

.field clip:I

.field complexity:I

.field consec_transient:I

.field constrained_vbr:I

.field delayedIntra:I

.field disable_pf:I

.field end:I

.field energy_mask:[I

.field force_intra:I

.field hf_average:I

.field in_mem:[[I

.field intensity:I

.field lastCodedBands:I

.field lfe:I

.field loss_rate:I

.field lsb_depth:I

.field mode:Lorg/concentus/CeltMode;

.field oldBandE:[[I

.field oldLogE:[[I

.field oldLogE2:[[I

.field overlap_max:I

.field final preemph_memD:[I

.field final preemph_memE:[I

.field prefilter_gain:I

.field prefilter_mem:[[I

.field prefilter_period:I

.field prefilter_tapset:I

.field rng:I

.field signalling:I

.field spec_avg:I

.field spread_decision:I

.field start:I

.field stereo_saving:I

.field stream_channels:I

.field tapset_decision:I

.field tonal_average:I

.field upsample:I

.field variable_duration:Lorg/concentus/OpusFramesize;

.field vbr:I

.field vbr_count:I

.field vbr_drift:I

.field vbr_offset:I

.field vbr_reservoir:I


# direct methods
.method constructor <init>()V
    .locals 4

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lorg/concentus/CeltEncoder;->mode:Lorg/concentus/CeltMode;

    const/4 v1, 0x0

    .line 44
    iput v1, p0, Lorg/concentus/CeltEncoder;->channels:I

    .line 45
    iput v1, p0, Lorg/concentus/CeltEncoder;->stream_channels:I

    .line 47
    iput v1, p0, Lorg/concentus/CeltEncoder;->force_intra:I

    .line 48
    iput v1, p0, Lorg/concentus/CeltEncoder;->clip:I

    .line 49
    iput v1, p0, Lorg/concentus/CeltEncoder;->disable_pf:I

    .line 50
    iput v1, p0, Lorg/concentus/CeltEncoder;->complexity:I

    .line 51
    iput v1, p0, Lorg/concentus/CeltEncoder;->upsample:I

    .line 52
    iput v1, p0, Lorg/concentus/CeltEncoder;->start:I

    .line 53
    iput v1, p0, Lorg/concentus/CeltEncoder;->end:I

    .line 55
    iput v1, p0, Lorg/concentus/CeltEncoder;->bitrate:I

    .line 56
    iput v1, p0, Lorg/concentus/CeltEncoder;->vbr:I

    .line 57
    iput v1, p0, Lorg/concentus/CeltEncoder;->signalling:I

    .line 60
    iput v1, p0, Lorg/concentus/CeltEncoder;->constrained_vbr:I

    .line 61
    iput v1, p0, Lorg/concentus/CeltEncoder;->loss_rate:I

    .line 62
    iput v1, p0, Lorg/concentus/CeltEncoder;->lsb_depth:I

    .line 63
    sget-object v2, Lorg/concentus/OpusFramesize;->OPUS_FRAMESIZE_UNKNOWN:Lorg/concentus/OpusFramesize;

    iput-object v2, p0, Lorg/concentus/CeltEncoder;->variable_duration:Lorg/concentus/OpusFramesize;

    .line 64
    iput v1, p0, Lorg/concentus/CeltEncoder;->lfe:I

    .line 67
    iput v1, p0, Lorg/concentus/CeltEncoder;->rng:I

    .line 68
    iput v1, p0, Lorg/concentus/CeltEncoder;->spread_decision:I

    .line 69
    iput v1, p0, Lorg/concentus/CeltEncoder;->delayedIntra:I

    .line 70
    iput v1, p0, Lorg/concentus/CeltEncoder;->tonal_average:I

    .line 71
    iput v1, p0, Lorg/concentus/CeltEncoder;->lastCodedBands:I

    .line 72
    iput v1, p0, Lorg/concentus/CeltEncoder;->hf_average:I

    .line 73
    iput v1, p0, Lorg/concentus/CeltEncoder;->tapset_decision:I

    .line 75
    iput v1, p0, Lorg/concentus/CeltEncoder;->prefilter_period:I

    .line 76
    iput v1, p0, Lorg/concentus/CeltEncoder;->prefilter_gain:I

    .line 77
    iput v1, p0, Lorg/concentus/CeltEncoder;->prefilter_tapset:I

    .line 78
    iput v1, p0, Lorg/concentus/CeltEncoder;->consec_transient:I

    .line 79
    new-instance v2, Lorg/concentus/AnalysisInfo;

    invoke-direct {v2}, Lorg/concentus/AnalysisInfo;-><init>()V

    iput-object v2, p0, Lorg/concentus/CeltEncoder;->analysis:Lorg/concentus/AnalysisInfo;

    const/4 v2, 0x2

    .line 81
    new-array v3, v2, [I

    iput-object v3, p0, Lorg/concentus/CeltEncoder;->preemph_memE:[I

    .line 82
    new-array v2, v2, [I

    iput-object v2, p0, Lorg/concentus/CeltEncoder;->preemph_memD:[I

    .line 85
    iput v1, p0, Lorg/concentus/CeltEncoder;->vbr_reservoir:I

    .line 86
    iput v1, p0, Lorg/concentus/CeltEncoder;->vbr_drift:I

    .line 87
    iput v1, p0, Lorg/concentus/CeltEncoder;->vbr_offset:I

    .line 88
    iput v1, p0, Lorg/concentus/CeltEncoder;->vbr_count:I

    .line 89
    iput v1, p0, Lorg/concentus/CeltEncoder;->overlap_max:I

    .line 90
    iput v1, p0, Lorg/concentus/CeltEncoder;->stereo_saving:I

    .line 91
    iput v1, p0, Lorg/concentus/CeltEncoder;->intensity:I

    .line 92
    iput-object v0, p0, Lorg/concentus/CeltEncoder;->energy_mask:[I

    .line 93
    iput v1, p0, Lorg/concentus/CeltEncoder;->spec_avg:I

    .line 106
    iput-object v0, p0, Lorg/concentus/CeltEncoder;->in_mem:[[I

    .line 107
    iput-object v0, p0, Lorg/concentus/CeltEncoder;->prefilter_mem:[[I

    .line 108
    iput-object v0, p0, Lorg/concentus/CeltEncoder;->oldBandE:[[I

    .line 109
    iput-object v0, p0, Lorg/concentus/CeltEncoder;->oldLogE:[[I

    .line 110
    iput-object v0, p0, Lorg/concentus/CeltEncoder;->oldLogE2:[[I

    return-void
.end method

.method private PartialReset()V
    .locals 3

    const/4 v0, 0x0

    .line 135
    iput v0, p0, Lorg/concentus/CeltEncoder;->rng:I

    .line 136
    iput v0, p0, Lorg/concentus/CeltEncoder;->spread_decision:I

    .line 137
    iput v0, p0, Lorg/concentus/CeltEncoder;->delayedIntra:I

    .line 138
    iput v0, p0, Lorg/concentus/CeltEncoder;->tonal_average:I

    .line 139
    iput v0, p0, Lorg/concentus/CeltEncoder;->lastCodedBands:I

    .line 140
    iput v0, p0, Lorg/concentus/CeltEncoder;->hf_average:I

    .line 141
    iput v0, p0, Lorg/concentus/CeltEncoder;->tapset_decision:I

    .line 142
    iput v0, p0, Lorg/concentus/CeltEncoder;->prefilter_period:I

    .line 143
    iput v0, p0, Lorg/concentus/CeltEncoder;->prefilter_gain:I

    .line 144
    iput v0, p0, Lorg/concentus/CeltEncoder;->prefilter_tapset:I

    .line 145
    iput v0, p0, Lorg/concentus/CeltEncoder;->consec_transient:I

    .line 146
    iget-object v1, p0, Lorg/concentus/CeltEncoder;->analysis:Lorg/concentus/AnalysisInfo;

    invoke-virtual {v1}, Lorg/concentus/AnalysisInfo;->Reset()V

    .line 147
    iget-object v1, p0, Lorg/concentus/CeltEncoder;->preemph_memE:[I

    aput v0, v1, v0

    const/4 v2, 0x1

    .line 148
    aput v0, v1, v2

    .line 149
    iget-object v1, p0, Lorg/concentus/CeltEncoder;->preemph_memD:[I

    aput v0, v1, v0

    .line 150
    aput v0, v1, v2

    .line 151
    iput v0, p0, Lorg/concentus/CeltEncoder;->vbr_reservoir:I

    .line 152
    iput v0, p0, Lorg/concentus/CeltEncoder;->vbr_drift:I

    .line 153
    iput v0, p0, Lorg/concentus/CeltEncoder;->vbr_offset:I

    .line 154
    iput v0, p0, Lorg/concentus/CeltEncoder;->vbr_count:I

    .line 155
    iput v0, p0, Lorg/concentus/CeltEncoder;->overlap_max:I

    .line 156
    iput v0, p0, Lorg/concentus/CeltEncoder;->stereo_saving:I

    .line 157
    iput v0, p0, Lorg/concentus/CeltEncoder;->intensity:I

    const/4 v1, 0x0

    .line 158
    iput-object v1, p0, Lorg/concentus/CeltEncoder;->energy_mask:[I

    .line 159
    iput v0, p0, Lorg/concentus/CeltEncoder;->spec_avg:I

    .line 160
    iput-object v1, p0, Lorg/concentus/CeltEncoder;->in_mem:[[I

    .line 161
    iput-object v1, p0, Lorg/concentus/CeltEncoder;->prefilter_mem:[[I

    .line 162
    iput-object v1, p0, Lorg/concentus/CeltEncoder;->oldBandE:[[I

    .line 163
    iput-object v1, p0, Lorg/concentus/CeltEncoder;->oldLogE:[[I

    .line 164
    iput-object v1, p0, Lorg/concentus/CeltEncoder;->oldLogE2:[[I

    return-void
.end method

.method private Reset()V
    .locals 2

    const/4 v0, 0x0

    .line 113
    iput-object v0, p0, Lorg/concentus/CeltEncoder;->mode:Lorg/concentus/CeltMode;

    const/4 v0, 0x0

    .line 114
    iput v0, p0, Lorg/concentus/CeltEncoder;->channels:I

    .line 115
    iput v0, p0, Lorg/concentus/CeltEncoder;->stream_channels:I

    .line 116
    iput v0, p0, Lorg/concentus/CeltEncoder;->force_intra:I

    .line 117
    iput v0, p0, Lorg/concentus/CeltEncoder;->clip:I

    .line 118
    iput v0, p0, Lorg/concentus/CeltEncoder;->disable_pf:I

    .line 119
    iput v0, p0, Lorg/concentus/CeltEncoder;->complexity:I

    .line 120
    iput v0, p0, Lorg/concentus/CeltEncoder;->upsample:I

    .line 121
    iput v0, p0, Lorg/concentus/CeltEncoder;->start:I

    .line 122
    iput v0, p0, Lorg/concentus/CeltEncoder;->end:I

    .line 123
    iput v0, p0, Lorg/concentus/CeltEncoder;->bitrate:I

    .line 124
    iput v0, p0, Lorg/concentus/CeltEncoder;->vbr:I

    .line 125
    iput v0, p0, Lorg/concentus/CeltEncoder;->signalling:I

    .line 126
    iput v0, p0, Lorg/concentus/CeltEncoder;->constrained_vbr:I

    .line 127
    iput v0, p0, Lorg/concentus/CeltEncoder;->loss_rate:I

    .line 128
    iput v0, p0, Lorg/concentus/CeltEncoder;->lsb_depth:I

    .line 129
    sget-object v1, Lorg/concentus/OpusFramesize;->OPUS_FRAMESIZE_UNKNOWN:Lorg/concentus/OpusFramesize;

    iput-object v1, p0, Lorg/concentus/CeltEncoder;->variable_duration:Lorg/concentus/OpusFramesize;

    .line 130
    iput v0, p0, Lorg/concentus/CeltEncoder;->lfe:I

    .line 131
    invoke-direct {p0}, Lorg/concentus/CeltEncoder;->PartialReset()V

    return-void
.end method


# virtual methods
.method GetFinalRange()I
    .locals 1

    .line 1243
    iget v0, p0, Lorg/concentus/CeltEncoder;->rng:I

    return v0
.end method

.method GetLSBDepth()I
    .locals 1

    .line 1220
    iget v0, p0, Lorg/concentus/CeltEncoder;->lsb_depth:I

    return v0
.end method

.method GetMode()Lorg/concentus/CeltMode;
    .locals 1

    .line 1239
    iget-object v0, p0, Lorg/concentus/CeltEncoder;->mode:Lorg/concentus/CeltMode;

    return-object v0
.end method

.method ResetState()V
    .locals 7

    .line 170
    invoke-direct {p0}, Lorg/concentus/CeltEncoder;->PartialReset()V

    .line 173
    iget v0, p0, Lorg/concentus/CeltEncoder;->channels:I

    iget-object v1, p0, Lorg/concentus/CeltEncoder;->mode:Lorg/concentus/CeltMode;

    iget v1, v1, Lorg/concentus/CeltMode;->overlap:I

    invoke-static {v0, v1}, Lorg/concentus/Arrays;->InitTwoDimensionalArrayInt(II)[[I

    move-result-object v0

    iput-object v0, p0, Lorg/concentus/CeltEncoder;->in_mem:[[I

    .line 174
    iget v0, p0, Lorg/concentus/CeltEncoder;->channels:I

    const/16 v1, 0x400

    invoke-static {v0, v1}, Lorg/concentus/Arrays;->InitTwoDimensionalArrayInt(II)[[I

    move-result-object v0

    iput-object v0, p0, Lorg/concentus/CeltEncoder;->prefilter_mem:[[I

    .line 175
    iget v0, p0, Lorg/concentus/CeltEncoder;->channels:I

    iget-object v1, p0, Lorg/concentus/CeltEncoder;->mode:Lorg/concentus/CeltMode;

    iget v1, v1, Lorg/concentus/CeltMode;->nbEBands:I

    invoke-static {v0, v1}, Lorg/concentus/Arrays;->InitTwoDimensionalArrayInt(II)[[I

    move-result-object v0

    iput-object v0, p0, Lorg/concentus/CeltEncoder;->oldBandE:[[I

    .line 176
    iget v0, p0, Lorg/concentus/CeltEncoder;->channels:I

    iget-object v1, p0, Lorg/concentus/CeltEncoder;->mode:Lorg/concentus/CeltMode;

    iget v1, v1, Lorg/concentus/CeltMode;->nbEBands:I

    invoke-static {v0, v1}, Lorg/concentus/Arrays;->InitTwoDimensionalArrayInt(II)[[I

    move-result-object v0

    iput-object v0, p0, Lorg/concentus/CeltEncoder;->oldLogE:[[I

    .line 177
    iget v0, p0, Lorg/concentus/CeltEncoder;->channels:I

    iget-object v1, p0, Lorg/concentus/CeltEncoder;->mode:Lorg/concentus/CeltMode;

    iget v1, v1, Lorg/concentus/CeltMode;->nbEBands:I

    invoke-static {v0, v1}, Lorg/concentus/Arrays;->InitTwoDimensionalArrayInt(II)[[I

    move-result-object v0

    iput-object v0, p0, Lorg/concentus/CeltEncoder;->oldLogE2:[[I

    const/4 v0, 0x0

    move v1, v0

    .line 179
    :goto_0
    iget-object v2, p0, Lorg/concentus/CeltEncoder;->mode:Lorg/concentus/CeltMode;

    iget v2, v2, Lorg/concentus/CeltMode;->nbEBands:I

    const/16 v3, -0x7000

    if-ge v1, v2, :cond_0

    .line 180
    iget-object v2, p0, Lorg/concentus/CeltEncoder;->oldLogE:[[I

    aget-object v2, v2, v0

    iget-object v4, p0, Lorg/concentus/CeltEncoder;->oldLogE2:[[I

    aget-object v4, v4, v0

    aput v3, v4, v1

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 182
    :cond_0
    iget v1, p0, Lorg/concentus/CeltEncoder;->channels:I

    const/4 v2, 0x2

    const/4 v4, 0x1

    if-ne v1, v2, :cond_1

    move v1, v0

    .line 183
    :goto_1
    iget-object v5, p0, Lorg/concentus/CeltEncoder;->mode:Lorg/concentus/CeltMode;

    iget v5, v5, Lorg/concentus/CeltMode;->nbEBands:I

    if-ge v1, v5, :cond_1

    .line 184
    iget-object v5, p0, Lorg/concentus/CeltEncoder;->oldLogE:[[I

    aget-object v5, v5, v4

    iget-object v6, p0, Lorg/concentus/CeltEncoder;->oldLogE2:[[I

    aget-object v6, v6, v4

    aput v3, v6, v1

    aput v3, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 187
    :cond_1
    iput v0, p0, Lorg/concentus/CeltEncoder;->vbr_offset:I

    .line 188
    iput v4, p0, Lorg/concentus/CeltEncoder;->delayedIntra:I

    .line 189
    iput v2, p0, Lorg/concentus/CeltEncoder;->spread_decision:I

    const/16 v1, 0x100

    .line 190
    iput v1, p0, Lorg/concentus/CeltEncoder;->tonal_average:I

    .line 191
    iput v0, p0, Lorg/concentus/CeltEncoder;->hf_average:I

    .line 192
    iput v0, p0, Lorg/concentus/CeltEncoder;->tapset_decision:I

    return-void
.end method

.method SetAnalysis(Lorg/concentus/AnalysisInfo;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1235
    iget-object v0, p0, Lorg/concentus/CeltEncoder;->analysis:Lorg/concentus/AnalysisInfo;

    invoke-virtual {v0, p1}, Lorg/concentus/AnalysisInfo;->Assign(Lorg/concentus/AnalysisInfo;)V

    return-void

    .line 1233
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "AnalysisInfo"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method SetBitrate(I)V
    .locals 2

    const/16 v0, 0x1f4

    if-gt p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1199
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bitrate out of range"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const v0, 0x3f7a0

    .line 1201
    iget v1, p0, Lorg/concentus/CeltEncoder;->channels:I

    mul-int/2addr v1, v0

    invoke-static {p1, v1}, Lorg/concentus/Inlines;->IMIN(II)I

    move-result p1

    .line 1202
    iput p1, p0, Lorg/concentus/CeltEncoder;->bitrate:I

    return-void
.end method

.method SetChannels(I)V
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    .line 1209
    iput p1, p0, Lorg/concentus/CeltEncoder;->stream_channels:I

    return-void

    .line 1207
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Channel count must be 1 or 2"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method SetComplexity(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0xa

    if-gt p1, v0, :cond_0

    .line 1157
    iput p1, p0, Lorg/concentus/CeltEncoder;->complexity:I

    return-void

    .line 1155
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Complexity must be between 0 and 10 inclusive"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method SetEndBand(I)V
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 1168
    iget-object v0, p0, Lorg/concentus/CeltEncoder;->mode:Lorg/concentus/CeltMode;

    iget v0, v0, Lorg/concentus/CeltMode;->nbEBands:I

    if-gt p1, v0, :cond_0

    .line 1171
    iput p1, p0, Lorg/concentus/CeltEncoder;->end:I

    return-void

    .line 1169
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "End band above max number of ebands (or less than 1)"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method SetEnergyMask([I)V
    .locals 0

    .line 1251
    iput-object p1, p0, Lorg/concentus/CeltEncoder;->energy_mask:[I

    return-void
.end method

.method SetExpertFrameDuration(Lorg/concentus/OpusFramesize;)V
    .locals 0

    .line 1224
    iput-object p1, p0, Lorg/concentus/CeltEncoder;->variable_duration:Lorg/concentus/OpusFramesize;

    return-void
.end method

.method SetLFE(I)V
    .locals 0

    .line 1247
    iput p1, p0, Lorg/concentus/CeltEncoder;->lfe:I

    return-void
.end method

.method SetLSBDepth(I)V
    .locals 1

    const/16 v0, 0x8

    if-lt p1, v0, :cond_0

    const/16 v0, 0x18

    if-gt p1, v0, :cond_0

    .line 1216
    iput p1, p0, Lorg/concentus/CeltEncoder;->lsb_depth:I

    return-void

    .line 1214
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bit depth must be between 8 and 24"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method SetPacketLossPercent(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    .line 1178
    iput p1, p0, Lorg/concentus/CeltEncoder;->loss_rate:I

    return-void

    .line 1176
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Packet loss must be between 0 and 100"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method SetPrediction(I)V
    .locals 3

    if-ltz p1, :cond_2

    const/4 v0, 0x2

    if-gt p1, v0, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gt p1, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 1185
    :goto_0
    iput v2, p0, Lorg/concentus/CeltEncoder;->disable_pf:I

    if-nez p1, :cond_1

    move v0, v1

    .line 1186
    :cond_1
    iput v0, p0, Lorg/concentus/CeltEncoder;->force_intra:I

    return-void

    .line 1183
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "CELT prediction mode must be 0, 1, or 2"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method SetSignalling(I)V
    .locals 0

    .line 1228
    iput p1, p0, Lorg/concentus/CeltEncoder;->signalling:I

    return-void
.end method

.method SetStartBand(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 1161
    iget-object v0, p0, Lorg/concentus/CeltEncoder;->mode:Lorg/concentus/CeltMode;

    iget v0, v0, Lorg/concentus/CeltMode;->nbEBands:I

    if-ge p1, v0, :cond_0

    .line 1164
    iput p1, p0, Lorg/concentus/CeltEncoder;->start:I

    return-void

    .line 1162
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Start band above max number of ebands (or negative)"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method SetVBR(Z)V
    .locals 0

    .line 1194
    iput p1, p0, Lorg/concentus/CeltEncoder;->vbr:I

    return-void
.end method

.method SetVBRConstraint(Z)V
    .locals 0

    .line 1190
    iput p1, p0, Lorg/concentus/CeltEncoder;->constrained_vbr:I

    return-void
.end method

.method celt_encode_with_ec([SII[BIILorg/concentus/EntropyCoder;)I
    .locals 73

    move-object/from16 v11, p0

    move-object/from16 v10, p1

    move/from16 v12, p2

    move/from16 v0, p6

    .line 388
    iget v13, v11, Lorg/concentus/CeltEncoder;->channels:I

    .line 389
    iget v15, v11, Lorg/concentus/CeltEncoder;->stream_channels:I

    .line 433
    iget-object v14, v11, Lorg/concentus/CeltEncoder;->mode:Lorg/concentus/CeltMode;

    .line 434
    iget v9, v14, Lorg/concentus/CeltMode;->nbEBands:I

    .line 435
    iget v8, v14, Lorg/concentus/CeltMode;->overlap:I

    .line 436
    iget-object v7, v14, Lorg/concentus/CeltMode;->eBands:[S

    .line 437
    iget v6, v11, Lorg/concentus/CeltEncoder;->start:I

    .line 438
    iget v5, v11, Lorg/concentus/CeltEncoder;->end:I

    const/4 v4, 0x2

    if-lt v0, v4, :cond_7a

    if-nez v10, :cond_0

    goto/16 :goto_59

    .line 444
    :cond_0
    iget v1, v11, Lorg/concentus/CeltEncoder;->upsample:I

    mul-int v1, v1, p3

    const/4 v2, 0x0

    .line 445
    :goto_0
    iget v3, v14, Lorg/concentus/CeltMode;->maxLM:I

    if-gt v2, v3, :cond_2

    .line 446
    iget v3, v14, Lorg/concentus/CeltMode;->shortMdctSize:I

    shl-int/2addr v3, v2

    if-ne v3, v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 450
    :cond_2
    :goto_1
    iget v3, v14, Lorg/concentus/CeltMode;->maxLM:I

    if-le v2, v3, :cond_3

    .line 451
    sget v0, Lorg/concentus/OpusError;->OPUS_BAD_ARG:I

    return v0

    :cond_3
    const/4 v3, 0x1

    shl-int v31, v3, v2

    .line 454
    iget v4, v14, Lorg/concentus/CeltMode;->shortMdctSize:I

    mul-int v4, v4, v31

    move/from16 v17, v9

    const/4 v9, 0x3

    if-nez p7, :cond_4

    move v9, v3

    const/16 v33, 0x0

    goto :goto_2

    .line 460
    :cond_4
    invoke-virtual/range {p7 .. p7}, Lorg/concentus/EntropyCoder;->tell()I

    move-result v18

    add-int/lit8 v19, v18, 0x4

    shr-int/lit8 v19, v19, 0x3

    move/from16 v9, v18

    move/from16 v33, v19

    .line 464
    :goto_2
    iget v3, v11, Lorg/concentus/CeltEncoder;->signalling:I

    if-nez v3, :cond_5

    const/4 v3, 0x1

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    :goto_3
    invoke-static {v3}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    const/16 v3, 0x4fb

    .line 467
    invoke-static {v0, v3}, Lorg/concentus/Inlines;->IMIN(II)I

    move-result v0

    sub-int v3, v0, v33

    move/from16 v21, v6

    .line 470
    iget v6, v11, Lorg/concentus/CeltEncoder;->vbr:I

    move-object/from16 v22, v7

    if-eqz v6, :cond_6

    iget v6, v11, Lorg/concentus/CeltEncoder;->bitrate:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_6

    .line 471
    iget v6, v14, Lorg/concentus/CeltMode;->Fs:I

    shr-int/lit8 v7, v6, 0x3

    .line 472
    iget v10, v11, Lorg/concentus/CeltEncoder;->bitrate:I

    mul-int/2addr v10, v1

    const/4 v1, 0x4

    shr-int/2addr v6, v1

    add-int/2addr v10, v6

    div-int/2addr v10, v7

    shr-int/lit8 v1, v10, 0x6

    move/from16 v34, v10

    const/4 v7, 0x4

    const/16 v10, 0x8

    goto :goto_6

    .line 477
    :cond_6
    iget v6, v11, Lorg/concentus/CeltEncoder;->bitrate:I

    mul-int/2addr v1, v6

    const/4 v7, 0x1

    if-le v9, v7, :cond_7

    add-int/2addr v1, v9

    :cond_7
    const/4 v7, -0x1

    if-eq v6, v7, :cond_9

    .line 482
    iget v6, v14, Lorg/concentus/CeltMode;->Fs:I

    const/4 v7, 0x4

    mul-int/2addr v6, v7

    add-int/2addr v1, v6

    iget v6, v14, Lorg/concentus/CeltMode;->Fs:I

    const/16 v10, 0x8

    mul-int/2addr v6, v10

    div-int/2addr v1, v6

    .line 483
    iget v6, v11, Lorg/concentus/CeltEncoder;->signalling:I

    if-eqz v6, :cond_8

    const/4 v6, 0x1

    goto :goto_4

    :cond_8
    const/4 v6, 0x0

    :goto_4
    sub-int/2addr v1, v6

    .line 482
    invoke-static {v0, v1}, Lorg/concentus/Inlines;->IMIN(II)I

    move-result v0

    const/4 v6, 0x2

    invoke-static {v6, v0}, Lorg/concentus/Inlines;->IMAX(II)I

    move-result v0

    goto :goto_5

    :cond_9
    const/4 v6, 0x2

    const/4 v7, 0x4

    const/16 v10, 0x8

    :goto_5
    move v1, v0

    const/16 v34, 0x0

    .line 487
    :goto_6
    iget v6, v11, Lorg/concentus/CeltEncoder;->bitrate:I

    const/16 v35, 0x14

    const/4 v7, -0x1

    if-eq v6, v7, :cond_a

    mul-int/lit8 v7, v15, 0x28

    add-int/lit8 v7, v7, 0x14

    const/16 v24, 0x190

    shr-int v24, v24, v2

    add-int/lit8 v24, v24, -0x32

    mul-int v7, v7, v24

    sub-int/2addr v6, v7

    goto :goto_7

    :cond_a
    const v6, 0x7c830

    :goto_7
    move v7, v6

    if-nez p7, :cond_b

    .line 492
    new-instance v6, Lorg/concentus/EntropyCoder;

    invoke-direct {v6}, Lorg/concentus/EntropyCoder;-><init>()V

    move-object/from16 v10, p4

    move/from16 p6, v1

    move/from16 v1, p5

    .line 493
    invoke-virtual {v6, v10, v1, v0}, Lorg/concentus/EntropyCoder;->enc_init([BII)V

    move-object v10, v6

    goto :goto_8

    :cond_b
    move/from16 p6, v1

    move-object/from16 v10, p7

    :goto_8
    const/16 v36, 0x6

    if-lez v34, :cond_d

    .line 501
    iget v1, v11, Lorg/concentus/CeltEncoder;->constrained_vbr:I

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    if-ne v9, v1, :cond_c

    const/4 v1, 0x2

    goto :goto_9

    :cond_c
    const/4 v1, 0x0

    :goto_9
    add-int v6, v34, v34

    move/from16 v25, v0

    .line 509
    iget v0, v11, Lorg/concentus/CeltEncoder;->vbr_reservoir:I

    sub-int/2addr v6, v0

    shr-int/lit8 v0, v6, 0x6

    invoke-static {v1, v0}, Lorg/concentus/Inlines;->IMAX(II)I

    move-result v0

    invoke-static {v0, v3}, Lorg/concentus/Inlines;->IMIN(II)I

    move-result v0

    if-ge v0, v3, :cond_e

    add-int v1, v33, v0

    .line 515
    invoke-virtual {v10, v1}, Lorg/concentus/EntropyCoder;->enc_shrink(I)V

    move v3, v0

    move v0, v1

    goto :goto_a

    :cond_d
    move/from16 v25, v0

    :cond_e
    move/from16 v0, v25

    :goto_a
    mul-int/lit8 v1, v0, 0x8

    .line 522
    iget v6, v14, Lorg/concentus/CeltMode;->effEBands:I

    if-le v5, v6, :cond_f

    .line 523
    iget v6, v14, Lorg/concentus/CeltMode;->effEBands:I

    move/from16 v32, v6

    goto :goto_b

    :cond_f
    move/from16 v32, v5

    :goto_b
    add-int v6, v4, v8

    move/from16 v25, v7

    .line 526
    invoke-static {v13, v6}, Lorg/concentus/Arrays;->InitTwoDimensionalArrayInt(II)[[I

    move-result-object v7

    move/from16 p4, v1

    .line 528
    iget v1, v11, Lorg/concentus/CeltEncoder;->overlap_max:I

    sub-int v26, v4, v8

    mul-int v26, v26, v15

    move/from16 v27, v2

    iget v2, v11, Lorg/concentus/CeltEncoder;->upsample:I

    div-int v2, v26, v2

    move/from16 p5, v6

    move-object/from16 v6, p1

    invoke-static {v6, v12, v2}, Lorg/concentus/Inlines;->celt_maxabs32([SII)S

    move-result v2

    invoke-static {v1, v2}, Lorg/concentus/Inlines;->MAX32(II)I

    move-result v1

    .line 529
    iget v2, v11, Lorg/concentus/CeltEncoder;->upsample:I

    div-int v26, v26, v2

    move/from16 p7, v3

    add-int v3, v12, v26

    mul-int v26, v15, v8

    div-int v2, v26, v2

    invoke-static {v6, v3, v2}, Lorg/concentus/Inlines;->celt_maxabs32([SII)S

    move-result v2

    iput v2, v11, Lorg/concentus/CeltEncoder;->overlap_max:I

    .line 530
    invoke-static {v1, v2}, Lorg/concentus/Inlines;->MAX32(II)I

    move-result v1

    if-nez v1, :cond_10

    const/4 v1, 0x1

    goto :goto_c

    :cond_10
    const/4 v1, 0x0

    :goto_c
    const/4 v3, 0x1

    if-ne v9, v3, :cond_11

    const/16 v2, 0xf

    .line 533
    invoke-virtual {v10, v1, v2}, Lorg/concentus/EntropyCoder;->enc_bit_logp(II)V

    move/from16 v37, v1

    goto :goto_d

    :cond_11
    const/16 v37, 0x0

    :goto_d
    if-eqz v37, :cond_13

    if-lez v34, :cond_12

    add-int/lit8 v1, v33, 0x2

    .line 540
    invoke-static {v0, v1}, Lorg/concentus/Inlines;->IMIN(II)I

    move-result v1

    mul-int/lit8 v0, v1, 0x8

    .line 543
    invoke-virtual {v10, v1}, Lorg/concentus/EntropyCoder;->enc_shrink(I)V

    move v2, v1

    const/4 v9, 0x2

    move v1, v0

    move v0, v2

    goto :goto_e

    :cond_12
    move/from16 v1, p4

    move/from16 v2, p6

    move/from16 v9, p7

    :goto_e
    mul-int/lit8 v18, v0, 0x8

    .line 548
    iget v3, v10, Lorg/concentus/EntropyCoder;->nbits_total:I

    invoke-virtual {v10}, Lorg/concentus/EntropyCoder;->tell()I

    move-result v28

    sub-int v28, v18, v28

    add-int v3, v3, v28

    iput v3, v10, Lorg/concentus/EntropyCoder;->nbits_total:I

    move v3, v1

    move v1, v9

    goto :goto_f

    :cond_13
    move/from16 v3, p4

    move/from16 v2, p6

    move/from16 v1, p7

    move/from16 v18, v9

    :goto_f
    move v9, v0

    .line 551
    new-instance v0, Lorg/concentus/BoxedValueInt;

    move/from16 p4, v3

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    move/from16 v28, v3

    .line 554
    :goto_10
    iget-object v3, v11, Lorg/concentus/CeltEncoder;->preemph_memE:[I

    aget v3, v3, v28

    iput v3, v0, Lorg/concentus/BoxedValueInt;->Val:I

    add-int v3, v12, v28

    .line 555
    aget-object v29, v7, v28

    iget v6, v11, Lorg/concentus/CeltEncoder;->upsample:I

    move-object/from16 p6, v7

    iget-object v7, v14, Lorg/concentus/CeltMode;->preemph:[I

    const/16 v30, 0x0

    move-object/from16 p7, v0

    move-object/from16 v0, p1

    move/from16 v38, v1

    move v1, v3

    move/from16 v39, v2

    move/from16 v3, v27

    move-object/from16 v2, v29

    move/from16 v42, p4

    move/from16 v41, v3

    const/16 v43, 0x4fb

    move v3, v8

    move/from16 v16, v4

    move/from16 v45, v5

    move v5, v13

    move/from16 v47, p5

    move/from16 v46, v21

    move-object/from16 v19, p6

    move-object/from16 v48, v22

    move/from16 v49, v25

    move/from16 v21, v8

    move-object/from16 v8, p7

    move/from16 v51, v9

    move/from16 v52, v17

    const/4 v12, 0x3

    move/from16 v9, v30

    invoke-static/range {v0 .. v9}, Lorg/concentus/CeltCommon;->celt_preemphasis([SI[IIIII[ILorg/concentus/BoxedValueInt;I)V

    .line 557
    iget-object v0, v11, Lorg/concentus/CeltEncoder;->preemph_memE:[I

    move-object/from16 v1, p7

    iget v2, v1, Lorg/concentus/BoxedValueInt;->Val:I

    aput v2, v0, v28

    const/4 v9, 0x1

    add-int/lit8 v0, v28, 0x1

    if-lt v0, v13, :cond_79

    .line 564
    iget v0, v11, Lorg/concentus/CeltEncoder;->lfe:I

    const/4 v8, 0x5

    move/from16 v7, v38

    if-eqz v0, :cond_14

    if-gt v7, v12, :cond_15

    :cond_14
    mul-int/lit8 v0, v15, 0xc

    if-le v7, v0, :cond_18

    :cond_15
    move/from16 v6, v46

    if-nez v6, :cond_17

    if-nez v37, :cond_17

    iget v0, v11, Lorg/concentus/CeltEncoder;->disable_pf:I

    if-nez v0, :cond_17

    iget v0, v11, Lorg/concentus/CeltEncoder;->complexity:I

    if-lt v0, v8, :cond_17

    iget v0, v11, Lorg/concentus/CeltEncoder;->consec_transient:I

    move/from16 v5, v41

    if-eqz v0, :cond_16

    if-eq v5, v12, :cond_16

    iget-object v0, v11, Lorg/concentus/CeltEncoder;->variable_duration:Lorg/concentus/OpusFramesize;

    sget-object v1, Lorg/concentus/OpusFramesize;->OPUS_FRAMESIZE_VARIABLE:Lorg/concentus/OpusFramesize;

    if-eq v0, v1, :cond_19

    :cond_16
    move/from16 v17, v9

    goto :goto_12

    :cond_17
    move/from16 v5, v41

    goto :goto_11

    :cond_18
    move/from16 v5, v41

    move/from16 v6, v46

    :cond_19
    :goto_11
    const/16 v17, 0x0

    .line 567
    :goto_12
    iget v4, v11, Lorg/concentus/CeltEncoder;->tapset_decision:I

    .line 568
    new-instance v3, Lorg/concentus/BoxedValueInt;

    const/4 v2, 0x0

    invoke-direct {v3, v2}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    .line 569
    new-instance v1, Lorg/concentus/BoxedValueInt;

    invoke-direct {v1, v2}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    .line 570
    new-instance v0, Lorg/concentus/BoxedValueInt;

    invoke-direct {v0, v2}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    .line 571
    iget-object v2, v11, Lorg/concentus/CeltEncoder;->prefilter_mem:[[I

    move-object/from16 p1, v0

    move-object/from16 v0, p0

    move-object/from16 p2, v1

    move-object/from16 v1, v19

    const/4 v12, 0x0

    move-object/from16 p3, v3

    move v3, v13

    move/from16 v40, v4

    move/from16 v4, v16

    move/from16 v53, v5

    move/from16 v5, v40

    move v12, v6

    move-object/from16 v6, p3

    move/from16 v41, v7

    move-object/from16 v7, p2

    move-object/from16 v8, p1

    move/from16 v20, v15

    move v15, v9

    move/from16 v9, v17

    move-object/from16 v17, v14

    move-object v14, v10

    move/from16 v10, v41

    invoke-virtual/range {v0 .. v10}, Lorg/concentus/CeltEncoder;->run_prefilter([[I[[IIIILorg/concentus/BoxedValueInt;Lorg/concentus/BoxedValueInt;Lorg/concentus/BoxedValueInt;II)I

    move-result v46

    move-object/from16 v0, p3

    .line 572
    iget v10, v0, Lorg/concentus/BoxedValueInt;->Val:I

    move-object/from16 v0, p2

    .line 573
    iget v9, v0, Lorg/concentus/BoxedValueInt;->Val:I

    move-object/from16 v0, p1

    .line 574
    iget v0, v0, Lorg/concentus/BoxedValueInt;->Val:I

    const/16 v1, 0x3333

    if-gt v9, v1, :cond_1a

    .line 576
    iget v2, v11, Lorg/concentus/CeltEncoder;->prefilter_gain:I

    if-le v2, v1, :cond_1c

    :cond_1a
    iget-object v1, v11, Lorg/concentus/CeltEncoder;->analysis:Lorg/concentus/AnalysisInfo;

    iget v1, v1, Lorg/concentus/AnalysisInfo;->valid:I

    if-eqz v1, :cond_1b

    iget-object v1, v11, Lorg/concentus/CeltEncoder;->analysis:Lorg/concentus/AnalysisInfo;

    iget v1, v1, Lorg/concentus/AnalysisInfo;->tonality:F

    float-to-double v1, v1

    const-wide v3, 0x3fd3333333333333L    # 0.3

    cmpl-double v1, v1, v3

    if-lez v1, :cond_1c

    :cond_1b
    int-to-double v1, v10

    iget v3, v11, Lorg/concentus/CeltEncoder;->prefilter_period:I

    int-to-double v4, v3

    const-wide v6, 0x3ff428f5c28f5c29L    # 1.26

    mul-double/2addr v4, v6

    cmpl-double v4, v1, v4

    if-gtz v4, :cond_1d

    const-wide v4, 0x3fe947ae147ae148L    # 0.79

    int-to-double v6, v3

    mul-double/2addr v6, v4

    cmpg-double v1, v1, v6

    if-gez v1, :cond_1c

    goto :goto_13

    :cond_1c
    const/16 v55, 0x0

    goto :goto_14

    :cond_1d
    :goto_13
    move/from16 v55, v15

    :goto_14
    const/16 v8, 0x10

    if-nez v46, :cond_20

    if-nez v12, :cond_1e

    add-int/lit8 v0, v18, 0x10

    move/from16 v7, v42

    if-gt v0, v7, :cond_1f

    const/4 v0, 0x0

    .line 582
    invoke-virtual {v14, v0, v15}, Lorg/concentus/EntropyCoder;->enc_bit_logp(II)V

    goto :goto_15

    :cond_1e
    move/from16 v7, v42

    :cond_1f
    :goto_15
    move/from16 v22, v9

    move/from16 v21, v10

    move/from16 v10, v40

    const/4 v9, 0x2

    goto :goto_16

    :cond_20
    move/from16 v7, v42

    .line 588
    invoke-virtual {v14, v15, v15}, Lorg/concentus/EntropyCoder;->enc_bit_logp(II)V

    add-int/lit8 v1, v10, 0x1

    int-to-long v2, v1

    .line 590
    invoke-static {v2, v3}, Lorg/concentus/Inlines;->EC_ILOG(J)I

    move-result v2

    add-int/lit8 v3, v2, -0x5

    int-to-long v4, v3

    move/from16 v22, v9

    move/from16 v21, v10

    const-wide/16 v9, 0x6

    .line 591
    invoke-virtual {v14, v4, v5, v9, v10}, Lorg/concentus/EntropyCoder;->enc_uint(JJ)V

    shl-int v3, v8, v3

    sub-int/2addr v1, v3

    int-to-long v3, v1

    sub-int/2addr v2, v15

    .line 592
    invoke-virtual {v14, v3, v4, v2}, Lorg/concentus/EntropyCoder;->enc_bits(JI)V

    int-to-long v0, v0

    const/4 v2, 0x3

    .line 594
    invoke-virtual {v14, v0, v1, v2}, Lorg/concentus/EntropyCoder;->enc_bits(JI)V

    .line 595
    sget-object v0, Lorg/concentus/CeltTables;->tapset_icdf:[S

    move/from16 v10, v40

    const/4 v9, 0x2

    invoke-virtual {v14, v10, v0, v9}, Lorg/concentus/EntropyCoder;->enc_icdf(I[SI)V

    .line 601
    :goto_16
    iget v0, v11, Lorg/concentus/CeltEncoder;->complexity:I

    if-lt v0, v15, :cond_21

    iget v0, v11, Lorg/concentus/CeltEncoder;->lfe:I

    if-nez v0, :cond_21

    .line 602
    new-instance v0, Lorg/concentus/BoxedValueInt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    .line 603
    new-instance v2, Lorg/concentus/BoxedValueInt;

    invoke-direct {v2, v1}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    move-object/from16 v6, v19

    move/from16 v4, v47

    .line 604
    invoke-static {v6, v4, v13, v0, v2}, Lorg/concentus/CeltCommon;->transient_analysis([[IIILorg/concentus/BoxedValueInt;Lorg/concentus/BoxedValueInt;)I

    move-result v3

    .line 606
    iget v0, v0, Lorg/concentus/BoxedValueInt;->Val:I

    .line 607
    iget v1, v2, Lorg/concentus/BoxedValueInt;->Val:I

    move/from16 v19, v0

    move/from16 v18, v1

    move/from16 v5, v53

    goto :goto_17

    :cond_21
    move-object/from16 v6, v19

    move/from16 v5, v53

    const/4 v3, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    :goto_17
    if-lez v5, :cond_23

    .line 610
    invoke-virtual {v14}, Lorg/concentus/EntropyCoder;->tell()I

    move-result v0

    const/4 v1, 0x3

    add-int/2addr v0, v1

    if-gt v0, v7, :cond_23

    move/from16 v23, v3

    move/from16 v4, v16

    if-eqz v3, :cond_22

    move/from16 v16, v31

    goto :goto_18

    :cond_22
    const/16 v16, 0x0

    :goto_18
    const/16 v40, 0x0

    goto :goto_19

    :cond_23
    move/from16 v40, v15

    move/from16 v4, v16

    const/16 v16, 0x0

    const/16 v23, 0x0

    .line 619
    :goto_19
    invoke-static {v13, v4}, Lorg/concentus/Arrays;->InitTwoDimensionalArrayInt(II)[[I

    move-result-object v24

    move/from16 v3, v52

    .line 623
    invoke-static {v13, v3}, Lorg/concentus/Arrays;->InitTwoDimensionalArrayInt(II)[[I

    move-result-object v42

    .line 624
    invoke-static {v13, v3}, Lorg/concentus/Arrays;->InitTwoDimensionalArrayInt(II)[[I

    move-result-object v44

    if-eqz v16, :cond_24

    .line 626
    iget v0, v11, Lorg/concentus/CeltEncoder;->complexity:I

    const/16 v2, 0x8

    if-lt v0, v2, :cond_25

    move/from16 v25, v15

    goto :goto_1a

    :cond_24
    const/16 v2, 0x8

    :cond_25
    const/16 v25, 0x0

    .line 627
    :goto_1a
    invoke-static {v13, v3}, Lorg/concentus/Arrays;->InitTwoDimensionalArrayInt(II)[[I

    move-result-object v47

    const/16 v1, 0xa

    if-eqz v25, :cond_27

    const/16 v26, 0x0

    .line 630
    iget v0, v11, Lorg/concentus/CeltEncoder;->upsample:I

    move/from16 v27, v0

    move-object/from16 v0, v17

    move v8, v1

    move/from16 v1, v26

    move-object v2, v6

    move v15, v3

    move-object/from16 v3, v24

    move/from16 v56, v4

    move/from16 v4, v20

    move/from16 v53, v5

    move v5, v13

    move-object/from16 v29, v6

    move/from16 v6, v53

    move/from16 v57, v7

    move/from16 v7, v27

    invoke-static/range {v0 .. v7}, Lorg/concentus/CeltCommon;->compute_mdcts(Lorg/concentus/CeltMode;I[[I[[IIIII)V

    move-object/from16 p1, v17

    move-object/from16 p2, v24

    move-object/from16 p3, v42

    move/from16 p4, v32

    move/from16 p5, v20

    move/from16 p6, v53

    .line 631
    invoke-static/range {p1 .. p6}, Lorg/concentus/Bands;->compute_band_energies(Lorg/concentus/CeltMode;[[I[[IIII)V

    move/from16 p2, v32

    move/from16 p3, v45

    move-object/from16 p4, v42

    move-object/from16 p5, v47

    move/from16 p6, v20

    .line 632
    invoke-static/range {p1 .. p6}, Lorg/concentus/QuantizeBands;->amp2Log2(Lorg/concentus/CeltMode;II[[I[[II)V

    const/4 v3, 0x0

    :goto_1b
    if-ge v3, v15, :cond_26

    const/4 v0, 0x0

    .line 634
    aget-object v1, v47, v0

    aget v0, v1, v3

    move/from16 v7, v53

    invoke-static {v7, v8}, Lorg/concentus/Inlines;->SHL16(II)I

    move-result v2

    invoke-static {v2}, Lorg/concentus/Inlines;->HALF16(I)I

    move-result v2

    add-int/2addr v0, v2

    aput v0, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_26
    move/from16 v6, v20

    move/from16 v7, v53

    if-ne v6, v9, :cond_28

    const/4 v3, 0x0

    :goto_1c
    if-ge v3, v15, :cond_28

    const/4 v0, 0x1

    .line 638
    aget-object v1, v47, v0

    aget v0, v1, v3

    invoke-static {v7, v8}, Lorg/concentus/Inlines;->SHL16(II)I

    move-result v2

    invoke-static {v2}, Lorg/concentus/Inlines;->HALF16(I)I

    move-result v2

    add-int/2addr v0, v2

    aput v0, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_27
    move v8, v1

    move v15, v3

    move/from16 v56, v4

    move-object/from16 v29, v6

    move/from16 v57, v7

    move/from16 v6, v20

    move v7, v5

    .line 643
    :cond_28
    iget v5, v11, Lorg/concentus/CeltEncoder;->upsample:I

    move-object/from16 v0, v17

    move/from16 v1, v16

    move-object/from16 v2, v29

    move-object/from16 v3, v24

    move v4, v6

    move/from16 v20, v5

    move v5, v13

    move v8, v6

    move v6, v7

    move/from16 v53, v7

    move/from16 v7, v20

    invoke-static/range {v0 .. v7}, Lorg/concentus/CeltCommon;->compute_mdcts(Lorg/concentus/CeltMode;I[[I[[IIIII)V

    if-ne v13, v9, :cond_29

    const/4 v0, 0x1

    if-ne v8, v0, :cond_29

    const/16 v18, 0x0

    :cond_29
    move-object/from16 p1, v17

    move-object/from16 p2, v24

    move-object/from16 p3, v42

    move/from16 p4, v32

    move/from16 p5, v8

    move/from16 p6, v53

    .line 647
    invoke-static/range {p1 .. p6}, Lorg/concentus/Bands;->compute_band_energies(Lorg/concentus/CeltMode;[[I[[IIII)V

    .line 649
    iget v0, v11, Lorg/concentus/CeltEncoder;->lfe:I

    if-eqz v0, :cond_2a

    move v4, v9

    move/from16 v7, v45

    :goto_1d
    if-ge v4, v7, :cond_2b

    const/4 v0, 0x0

    .line 651
    aget-object v1, v42, v0

    aget v2, v1, v4

    aget v3, v1, v0

    const/4 v5, 0x3

    invoke-static {v5, v3}, Lorg/concentus/Inlines;->MULT16_32_Q15(SI)I

    move-result v3

    invoke-static {v2, v3}, Lorg/concentus/Inlines;->IMIN(II)I

    move-result v2

    aput v2, v1, v4

    .line 652
    aget-object v1, v42, v0

    aget v0, v1, v4

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lorg/concentus/Inlines;->MAX32(II)I

    move-result v0

    aput v0, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_2a
    move/from16 v7, v45

    :cond_2b
    move-object/from16 p1, v17

    move/from16 p2, v32

    move/from16 p3, v7

    move-object/from16 p4, v42

    move-object/from16 p5, v44

    move/from16 p6, v8

    .line 656
    invoke-static/range {p1 .. p6}, Lorg/concentus/QuantizeBands;->amp2Log2(Lorg/concentus/CeltMode;II[[I[[II)V

    mul-int v6, v8, v15

    .line 658
    new-array v5, v6, [I

    if-nez v12, :cond_36

    .line 661
    iget-object v0, v11, Lorg/concentus/CeltEncoder;->energy_mask:[I

    if-eqz v0, :cond_36

    iget v0, v11, Lorg/concentus/CeltEncoder;->lfe:I

    if-nez v0, :cond_36

    .line 668
    iget v0, v11, Lorg/concentus/CeltEncoder;->lastCodedBands:I

    invoke-static {v9, v0}, Lorg/concentus/Inlines;->IMAX(II)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1e
    if-ge v3, v8, :cond_2e

    move/from16 v30, v4

    const/4 v4, 0x0

    :goto_1f
    if-ge v4, v0, :cond_2d

    .line 672
    iget-object v9, v11, Lorg/concentus/CeltEncoder;->energy_mask:[I

    mul-int v45, v15, v3

    add-int v45, v45, v4

    aget v9, v9, v45

    move/from16 p7, v6

    const/16 v6, 0x100

    invoke-static {v9, v6}, Lorg/concentus/Inlines;->MIN16(II)I

    move-result v9

    const/16 v6, -0x800

    invoke-static {v9, v6}, Lorg/concentus/Inlines;->MAX16(II)I

    move-result v6

    if-lez v6, :cond_2c

    .line 675
    invoke-static {v6}, Lorg/concentus/Inlines;->HALF16(I)I

    move-result v6

    :cond_2c
    add-int/lit8 v9, v4, 0x1

    .line 677
    aget-short v45, v48, v9

    aget-short v50, v48, v4

    move/from16 v52, v10

    sub-int v10, v45, v50

    invoke-static {v6, v10}, Lorg/concentus/Inlines;->MULT16_16(II)I

    move-result v10

    add-int/2addr v2, v10

    .line 678
    aget-short v10, v48, v9

    aget-short v45, v48, v4

    sub-int v10, v10, v45

    add-int/2addr v1, v10

    mul-int/lit8 v4, v4, 0x2

    const/4 v10, 0x1

    add-int/2addr v4, v10

    sub-int/2addr v4, v0

    .line 679
    invoke-static {v6, v4}, Lorg/concentus/Inlines;->MULT16_16(II)I

    move-result v4

    add-int v30, v30, v4

    move/from16 v6, p7

    move v4, v9

    move/from16 v10, v52

    goto :goto_1f

    :cond_2d
    move/from16 p7, v6

    move/from16 v52, v10

    add-int/lit8 v3, v3, 0x1

    move/from16 v4, v30

    goto :goto_1e

    :cond_2e
    move/from16 p7, v6

    move/from16 v52, v10

    if-lez v1, :cond_2f

    const/4 v3, 0x1

    goto :goto_20

    :cond_2f
    const/4 v3, 0x0

    .line 682
    :goto_20
    invoke-static {v3}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    .line 683
    invoke-static {v2, v1}, Lorg/concentus/Inlines;->DIV32_16(II)I

    move-result v1

    add-int/lit16 v3, v1, 0xcd

    mul-int/lit8 v4, v4, 0x6

    add-int/lit8 v2, v0, -0x1

    mul-int/2addr v2, v8

    add-int/lit8 v6, v0, 0x1

    mul-int/2addr v2, v6

    mul-int/2addr v2, v0

    .line 685
    div-int/2addr v4, v2

    .line 687
    invoke-static {v4}, Lorg/concentus/Inlines;->HALF32(I)I

    move-result v2

    const/16 v4, 0x20

    .line 688
    invoke-static {v2, v4}, Lorg/concentus/Inlines;->MIN32(II)I

    move-result v2

    const/16 v4, -0x20

    invoke-static {v2, v4}, Lorg/concentus/Inlines;->MAX32(II)I

    move-result v2

    const/4 v4, 0x0

    :goto_21
    add-int/lit8 v6, v4, 0x1

    .line 690
    aget-short v9, v48, v6

    aget-short v10, v48, v0

    move/from16 p2, v6

    const/4 v6, 0x2

    div-int/2addr v10, v6

    if-ge v9, v10, :cond_30

    move/from16 v4, p2

    goto :goto_21

    :cond_30
    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_22
    if-ge v9, v0, :cond_33

    sub-int v20, v9, v4

    mul-int v20, v20, v2

    add-int v30, v3, v20

    if-ne v8, v6, :cond_31

    .line 697
    iget-object v6, v11, Lorg/concentus/CeltEncoder;->energy_mask:[I

    move/from16 p2, v2

    aget v2, v6, v9

    add-int v45, v15, v9

    aget v6, v6, v45

    invoke-static {v2, v6}, Lorg/concentus/Inlines;->MAX16(II)I

    move-result v2

    goto :goto_23

    :cond_31
    move/from16 p2, v2

    .line 699
    iget-object v2, v11, Lorg/concentus/CeltEncoder;->energy_mask:[I

    aget v2, v2, v9

    :goto_23
    const/4 v6, 0x0

    .line 701
    invoke-static {v2, v6}, Lorg/concentus/Inlines;->MIN16(II)I

    move-result v2

    sub-int v2, v2, v30

    const/16 v6, 0x100

    if-le v2, v6, :cond_32

    add-int/lit16 v2, v2, -0x100

    .line 704
    aput v2, v5, v9

    add-int/lit8 v10, v10, 0x1

    :cond_32
    add-int/lit8 v9, v9, 0x1

    move/from16 v2, p2

    const/4 v6, 0x2

    goto :goto_22

    :cond_33
    move/from16 p2, v2

    const/4 v2, 0x3

    if-lt v10, v2, :cond_35

    add-int/lit16 v3, v1, 0x1cd

    if-lez v3, :cond_34

    const/4 v1, 0x0

    .line 717
    invoke-static {v5, v1, v0}, Lorg/concentus/Arrays;->MemSet([III)V

    move v3, v1

    goto :goto_25

    :cond_34
    const/4 v1, 0x0

    move v2, v1

    :goto_24
    if-ge v2, v0, :cond_35

    .line 720
    aget v4, v5, v2

    const/16 v6, 0x100

    sub-int/2addr v4, v6

    invoke-static {v1, v4}, Lorg/concentus/Inlines;->MAX16(II)I

    move-result v4

    aput v4, v5, v2

    add-int/lit8 v2, v2, 0x1

    const/4 v1, 0x0

    goto :goto_24

    :cond_35
    move/from16 v1, p2

    :goto_25
    add-int/lit16 v3, v3, 0xcd

    mul-int/lit8 v1, v1, 0x40

    move/from16 v45, v1

    move/from16 v50, v3

    goto :goto_26

    :cond_36
    move/from16 p7, v6

    move/from16 v52, v10

    const/16 v45, 0x0

    const/16 v50, 0x0

    .line 731
    :goto_26
    iget v0, v11, Lorg/concentus/CeltEncoder;->lfe:I

    move/from16 v10, v53

    if-nez v0, :cond_3a

    if-eqz v16, :cond_37

    const/16 v0, 0xa

    .line 734
    invoke-static {v10, v0}, Lorg/concentus/Inlines;->SHL16(II)I

    move-result v1

    invoke-static {v1}, Lorg/concentus/Inlines;->HALF16(I)I

    move-result v3

    goto :goto_27

    :cond_37
    const/4 v3, 0x0

    :goto_27
    const/16 v0, -0x2800

    move v6, v12

    const/4 v1, 0x0

    :goto_28
    if-ge v6, v7, :cond_39

    add-int/lit16 v0, v0, -0x400

    const/4 v2, 0x0

    .line 736
    aget-object v4, v44, v2

    aget v2, v4, v6

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Lorg/concentus/Inlines;->MAX16(II)I

    move-result v0

    const/4 v2, 0x2

    if-ne v8, v2, :cond_38

    const/4 v2, 0x1

    .line 738
    aget-object v4, v44, v2

    aget v2, v4, v6

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Lorg/concentus/Inlines;->MAX16(II)I

    move-result v0

    :cond_38
    add-int/2addr v1, v0

    add-int/lit8 v6, v6, 0x1

    goto :goto_28

    :cond_39
    sub-int v0, v7, v12

    .line 742
    div-int/2addr v1, v0

    .line 743
    iget v0, v11, Lorg/concentus/CeltEncoder;->spec_avg:I

    invoke-static {v1, v0}, Lorg/concentus/Inlines;->SUB16(II)I

    move-result v0

    const/16 v1, -0x600

    .line 744
    invoke-static {v1, v0}, Lorg/concentus/Inlines;->MAX16(II)I

    move-result v0

    const/16 v1, 0xc00

    invoke-static {v1, v0}, Lorg/concentus/Inlines;->MIN16(II)I

    move-result v0

    .line 745
    iget v1, v11, Lorg/concentus/CeltEncoder;->spec_avg:I

    const/16 v2, 0x28f

    invoke-static {v2, v0}, Lorg/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v2

    int-to-short v2, v2

    add-int/2addr v1, v2

    iput v1, v11, Lorg/concentus/CeltEncoder;->spec_avg:I

    move/from16 v53, v0

    goto :goto_29

    :cond_3a
    const/16 v53, 0x0

    :goto_29
    if-nez v25, :cond_3b

    const/4 v0, 0x0

    .line 752
    aget-object v1, v44, v0

    aget-object v2, v47, v0

    invoke-static {v1, v0, v2, v0, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x2

    if-ne v8, v1, :cond_3b

    const/4 v1, 0x1

    .line 754
    aget-object v2, v44, v1

    aget-object v3, v47, v1

    invoke-static {v2, v0, v3, v0, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3b
    if-lez v10, :cond_40

    .line 760
    invoke-virtual {v14}, Lorg/concentus/EntropyCoder;->tell()I

    move-result v0

    const/4 v1, 0x3

    add-int/2addr v0, v1

    move/from16 v9, v57

    if-gt v0, v9, :cond_3f

    if-nez v23, :cond_3f

    iget v0, v11, Lorg/concentus/CeltEncoder;->complexity:I

    const/4 v6, 0x5

    if-lt v0, v6, :cond_3e

    iget v0, v11, Lorg/concentus/CeltEncoder;->lfe:I

    if-nez v0, :cond_3e

    .line 761
    iget-object v0, v11, Lorg/concentus/CeltEncoder;->oldBandE:[[I

    move-object/from16 p1, v44

    move-object/from16 p2, v0

    move/from16 p3, v15

    move/from16 p4, v12

    move/from16 p5, v7

    move/from16 p6, v8

    invoke-static/range {p1 .. p6}, Lorg/concentus/CeltCommon;->patch_transient_decision([[I[[IIIII)I

    move-result v0

    if-eqz v0, :cond_3e

    .line 764
    iget v4, v11, Lorg/concentus/CeltEncoder;->upsample:I

    move-object/from16 v0, v17

    move/from16 v1, v31

    move-object/from16 v2, v29

    move-object/from16 v3, v24

    move/from16 v16, v4

    move v4, v8

    move-object/from16 v54, v5

    move v5, v13

    move/from16 v58, p7

    move/from16 v57, v13

    move v13, v6

    move v6, v10

    move/from16 v59, v7

    move/from16 v7, v16

    invoke-static/range {v0 .. v7}, Lorg/concentus/CeltCommon;->compute_mdcts(Lorg/concentus/CeltMode;I[[I[[IIIII)V

    move-object/from16 p1, v17

    move-object/from16 p2, v24

    move-object/from16 p3, v42

    move/from16 p4, v32

    move/from16 p5, v8

    move/from16 p6, v10

    .line 765
    invoke-static/range {p1 .. p6}, Lorg/concentus/Bands;->compute_band_energies(Lorg/concentus/CeltMode;[[I[[IIII)V

    move/from16 p2, v32

    move/from16 p3, v59

    move-object/from16 p4, v42

    move-object/from16 p5, v44

    move/from16 p6, v8

    .line 766
    invoke-static/range {p1 .. p6}, Lorg/concentus/QuantizeBands;->amp2Log2(Lorg/concentus/CeltMode;II[[I[[II)V

    const/4 v3, 0x0

    :goto_2a
    if-ge v3, v15, :cond_3c

    const/4 v0, 0x0

    .line 769
    aget-object v1, v47, v0

    aget v0, v1, v3

    const/16 v2, 0xa

    invoke-static {v10, v2}, Lorg/concentus/Inlines;->SHL16(II)I

    move-result v4

    invoke-static {v4}, Lorg/concentus/Inlines;->HALF16(I)I

    move-result v2

    add-int/2addr v0, v2

    aput v0, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    :cond_3c
    const/4 v0, 0x2

    if-ne v8, v0, :cond_3d

    const/4 v3, 0x0

    :goto_2b
    if-ge v3, v15, :cond_3d

    const/16 v25, 0x1

    .line 773
    aget-object v0, v47, v25

    aget v1, v0, v3

    const/16 v2, 0xa

    invoke-static {v10, v2}, Lorg/concentus/Inlines;->SHL16(II)I

    move-result v4

    invoke-static {v4}, Lorg/concentus/Inlines;->HALF16(I)I

    move-result v4

    add-int/2addr v1, v4

    aput v1, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    :cond_3d
    const/16 v25, 0x1

    const/16 v0, 0xccd

    move/from16 v60, v0

    move/from16 v7, v25

    move/from16 v61, v31

    goto :goto_2d

    :cond_3e
    move/from16 v58, p7

    move-object/from16 v54, v5

    move/from16 v59, v7

    move/from16 v57, v13

    const/16 v25, 0x1

    move v13, v6

    goto :goto_2c

    :cond_3f
    move/from16 v58, p7

    move-object/from16 v54, v5

    move/from16 v59, v7

    move/from16 v57, v13

    const/4 v13, 0x5

    const/16 v25, 0x1

    goto :goto_2c

    :cond_40
    move/from16 v58, p7

    move-object/from16 v54, v5

    move/from16 v59, v7

    move/from16 v9, v57

    const/16 v25, 0x1

    move/from16 v57, v13

    const/4 v13, 0x5

    :goto_2c
    move/from16 v61, v16

    move/from16 v60, v19

    move/from16 v7, v23

    :goto_2d
    if-lez v10, :cond_41

    .line 780
    invoke-virtual {v14}, Lorg/concentus/EntropyCoder;->tell()I

    move-result v0

    const/4 v1, 0x3

    add-int/2addr v0, v1

    if-gt v0, v9, :cond_41

    .line 781
    invoke-virtual {v14, v7, v1}, Lorg/concentus/EntropyCoder;->enc_bit_logp(II)V

    :cond_41
    move/from16 v6, v56

    .line 784
    invoke-static {v8, v6}, Lorg/concentus/Arrays;->InitTwoDimensionalArrayInt(II)[[I

    move-result-object v5

    move-object/from16 p1, v17

    move-object/from16 p2, v24

    move-object/from16 p3, v5

    move-object/from16 p4, v42

    move/from16 p5, v32

    move/from16 p6, v8

    move/from16 p7, v31

    .line 790
    invoke-static/range {p1 .. p7}, Lorg/concentus/Bands;->normalise_bands(Lorg/concentus/CeltMode;[[I[[I[[IIII)V

    .line 792
    new-array v4, v15, [I

    mul-int/lit8 v0, v8, 0xf

    move/from16 v3, v39

    if-lt v3, v0, :cond_45

    if-nez v12, :cond_45

    .line 794
    iget v0, v11, Lorg/concentus/CeltEncoder;->complexity:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_45

    iget v0, v11, Lorg/concentus/CeltEncoder;->lfe:I

    if-nez v0, :cond_45

    const/16 v0, 0x28

    if-ge v3, v0, :cond_42

    const/16 v0, 0xc

    :goto_2e
    const/16 v16, 0x2

    goto :goto_2f

    :cond_42
    const/16 v0, 0x3c

    if-ge v3, v0, :cond_43

    move/from16 v0, v36

    goto :goto_2e

    :cond_43
    const/16 v0, 0x64

    if-ge v3, v0, :cond_44

    const/4 v0, 0x4

    goto :goto_2e

    :cond_44
    const/4 v0, 0x3

    goto :goto_2e

    :goto_2f
    mul-int/lit8 v19, v0, 0x2

    .line 806
    new-instance v2, Lorg/concentus/BoxedValueInt;

    const/4 v0, 0x0

    invoke-direct {v2, v0}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    move-object/from16 v0, v17

    move/from16 v1, v32

    move-object/from16 p1, v2

    move v2, v7

    move/from16 v39, v3

    move-object v3, v4

    move-object/from16 v56, v4

    move/from16 v4, v19

    move-object/from16 v62, v5

    move/from16 v63, v7

    move v7, v10

    move v13, v8

    move-object/from16 v8, p1

    move/from16 v65, v9

    move/from16 v64, v22

    move/from16 v9, v60

    move/from16 v66, v10

    move/from16 v68, v21

    move/from16 v67, v52

    move/from16 v10, v18

    .line 807
    invoke-static/range {v0 .. v10}, Lorg/concentus/CeltCommon;->tf_analysis(Lorg/concentus/CeltMode;II[II[[IIILorg/concentus/BoxedValueInt;II)I

    move-result v0

    move-object/from16 v1, p1

    .line 808
    iget v1, v1, Lorg/concentus/BoxedValueInt;->Val:I

    move/from16 v1, v32

    move/from16 v10, v59

    :goto_30
    if-ge v1, v10, :cond_47

    add-int/lit8 v2, v32, -0x1

    .line 811
    aget v2, v56, v2

    aput v2, v56, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    :cond_45
    move/from16 v39, v3

    move-object/from16 v56, v4

    move-object/from16 v62, v5

    move/from16 v63, v7

    move v13, v8

    move/from16 v65, v9

    move/from16 v66, v10

    move/from16 v68, v21

    move/from16 v64, v22

    move/from16 v67, v52

    move/from16 v10, v59

    const/4 v3, 0x0

    :goto_31
    if-ge v3, v10, :cond_46

    .line 816
    aput v63, v56, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    :cond_46
    const/4 v0, 0x0

    .line 821
    :cond_47
    invoke-static {v13, v15}, Lorg/concentus/Arrays;->InitTwoDimensionalArrayInt(II)[[I

    move-result-object v52

    .line 822
    new-instance v1, Lorg/concentus/BoxedValueInt;

    iget v2, v11, Lorg/concentus/CeltEncoder;->delayedIntra:I

    invoke-direct {v1, v2}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    .line 823
    iget-object v2, v11, Lorg/concentus/CeltEncoder;->oldBandE:[[I

    iget v3, v11, Lorg/concentus/CeltEncoder;->force_intra:I

    .line 826
    iget v4, v11, Lorg/concentus/CeltEncoder;->complexity:I

    const/4 v5, 0x4

    if-lt v4, v5, :cond_48

    move/from16 v28, v25

    goto :goto_32

    :cond_48
    const/16 v28, 0x0

    :goto_32
    iget v4, v11, Lorg/concentus/CeltEncoder;->loss_rate:I

    move/from16 v29, v4

    iget v4, v11, Lorg/concentus/CeltEncoder;->lfe:I

    move/from16 v30, v4

    move-object v8, v14

    move-object/from16 v9, v17

    move-object v14, v9

    move v7, v15

    move/from16 v6, v25

    move v15, v12

    move/from16 v16, v10

    move/from16 v17, v32

    move-object/from16 v18, v44

    move-object/from16 v19, v2

    move/from16 v20, v65

    move-object/from16 v21, v52

    move-object/from16 v22, v8

    move/from16 v23, v13

    move/from16 v24, v66

    move/from16 v25, v41

    move/from16 v26, v3

    move-object/from16 v27, v1

    .line 823
    invoke-static/range {v14 .. v30}, Lorg/concentus/QuantizeBands;->quant_coarse_energy(Lorg/concentus/CeltMode;III[[I[[II[[ILorg/concentus/EntropyCoder;IIIILorg/concentus/BoxedValueInt;III)V

    .line 827
    iget v1, v1, Lorg/concentus/BoxedValueInt;->Val:I

    iput v1, v11, Lorg/concentus/CeltEncoder;->delayedIntra:I

    move/from16 p1, v12

    move/from16 p2, v10

    move/from16 p3, v63

    move-object/from16 p4, v56

    move/from16 p5, v66

    move/from16 p6, v0

    move-object/from16 p7, v8

    .line 829
    invoke-static/range {p1 .. p7}, Lorg/concentus/CeltCommon;->tf_encode(III[IIILorg/concentus/EntropyCoder;)V

    .line 831
    invoke-virtual {v8}, Lorg/concentus/EntropyCoder;->tell()I

    move-result v0

    add-int/2addr v0, v5

    move/from16 v15, v65

    if-gt v0, v15, :cond_4e

    .line 832
    iget v0, v11, Lorg/concentus/CeltEncoder;->lfe:I

    if-eqz v0, :cond_49

    const/4 v0, 0x0

    .line 833
    iput v0, v11, Lorg/concentus/CeltEncoder;->tapset_decision:I

    const/4 v14, 0x2

    .line 834
    iput v14, v11, Lorg/concentus/CeltEncoder;->spread_decision:I

    move/from16 v59, v10

    move/from16 v46, v12

    move/from16 p3, v13

    move v0, v14

    move v10, v7

    move-object v12, v8

    move-object v13, v9

    goto/16 :goto_36

    :cond_49
    const/4 v14, 0x2

    if-nez v61, :cond_4c

    .line 835
    iget v0, v11, Lorg/concentus/CeltEncoder;->complexity:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_4c

    mul-int/lit8 v0, v13, 0xa

    move/from16 v2, v41

    if-lt v2, v0, :cond_4c

    if-eqz v12, :cond_4a

    goto :goto_34

    .line 842
    :cond_4a
    new-instance v5, Lorg/concentus/BoxedValueInt;

    iget v0, v11, Lorg/concentus/CeltEncoder;->tonal_average:I

    invoke-direct {v5, v0}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    .line 843
    new-instance v4, Lorg/concentus/BoxedValueInt;

    iget v0, v11, Lorg/concentus/CeltEncoder;->tapset_decision:I

    invoke-direct {v4, v0}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    .line 844
    new-instance v3, Lorg/concentus/BoxedValueInt;

    iget v0, v11, Lorg/concentus/CeltEncoder;->hf_average:I

    invoke-direct {v3, v0}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    .line 845
    iget v2, v11, Lorg/concentus/CeltEncoder;->spread_decision:I

    if-eqz v46, :cond_4b

    if-nez v61, :cond_4b

    move/from16 v16, v6

    goto :goto_33

    :cond_4b
    const/16 v16, 0x0

    :goto_33
    move-object v0, v9

    move-object/from16 v1, v62

    move/from16 v17, v2

    move-object v2, v5

    move-object/from16 p1, v3

    move/from16 v3, v17

    move-object/from16 p2, v4

    move-object/from16 v4, p1

    move-object v14, v5

    move-object/from16 v5, p2

    move/from16 v6, v16

    move/from16 v59, v10

    move v10, v7

    move/from16 v7, v32

    move/from16 v46, v12

    move-object v12, v8

    move v8, v13

    move/from16 p3, v13

    move-object v13, v9

    move/from16 v9, v31

    invoke-static/range {v0 .. v9}, Lorg/concentus/Bands;->spreading_decision(Lorg/concentus/CeltMode;[[ILorg/concentus/BoxedValueInt;ILorg/concentus/BoxedValueInt;Lorg/concentus/BoxedValueInt;IIII)I

    move-result v0

    iput v0, v11, Lorg/concentus/CeltEncoder;->spread_decision:I

    .line 848
    iget v0, v14, Lorg/concentus/BoxedValueInt;->Val:I

    iput v0, v11, Lorg/concentus/CeltEncoder;->tonal_average:I

    move-object/from16 v0, p2

    .line 849
    iget v0, v0, Lorg/concentus/BoxedValueInt;->Val:I

    iput v0, v11, Lorg/concentus/CeltEncoder;->tapset_decision:I

    move-object/from16 v0, p1

    .line 850
    iget v0, v0, Lorg/concentus/BoxedValueInt;->Val:I

    iput v0, v11, Lorg/concentus/CeltEncoder;->hf_average:I

    goto :goto_35

    :cond_4c
    :goto_34
    move/from16 v59, v10

    move/from16 v46, v12

    move/from16 p3, v13

    move v10, v7

    move-object v12, v8

    move-object v13, v9

    .line 836
    iget v0, v11, Lorg/concentus/CeltEncoder;->complexity:I

    if-nez v0, :cond_4d

    const/4 v0, 0x0

    .line 837
    iput v0, v11, Lorg/concentus/CeltEncoder;->spread_decision:I

    :goto_35
    const/4 v0, 0x2

    goto :goto_36

    :cond_4d
    const/4 v0, 0x2

    .line 839
    iput v0, v11, Lorg/concentus/CeltEncoder;->spread_decision:I

    .line 855
    :goto_36
    iget v1, v11, Lorg/concentus/CeltEncoder;->spread_decision:I

    sget-object v2, Lorg/concentus/CeltTables;->spread_icdf:[S

    const/4 v3, 0x5

    invoke-virtual {v12, v1, v2, v3}, Lorg/concentus/EntropyCoder;->enc_icdf(I[SI)V

    goto :goto_37

    :cond_4e
    move/from16 v59, v10

    move/from16 v46, v12

    move/from16 p3, v13

    const/4 v0, 0x2

    const/4 v3, 0x5

    move v10, v7

    move-object v12, v8

    move-object v13, v9

    .line 858
    :goto_37
    new-array v9, v10, [I

    move-object/from16 v20, v9

    .line 860
    new-instance v1, Lorg/concentus/BoxedValueInt;

    move-object/from16 v29, v1

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    .line 861
    iget v2, v11, Lorg/concentus/CeltEncoder;->lsb_depth:I

    move/from16 v21, v2

    iget-object v2, v13, Lorg/concentus/CeltMode;->logN:[S

    move-object/from16 v22, v2

    iget v2, v11, Lorg/concentus/CeltEncoder;->vbr:I

    move/from16 v24, v2

    iget v2, v11, Lorg/concentus/CeltEncoder;->constrained_vbr:I

    move/from16 v25, v2

    iget v2, v11, Lorg/concentus/CeltEncoder;->lfe:I

    move/from16 v30, v2

    move v8, v0

    move-object/from16 v14, v44

    move v7, v15

    move-object/from16 v15, v47

    move/from16 v16, v10

    move/from16 v17, v46

    move/from16 v18, v59

    move/from16 v19, p3

    move/from16 v23, v63

    move-object/from16 v26, v48

    move/from16 v27, v66

    move/from16 v28, v39

    move-object/from16 v31, v54

    invoke-static/range {v14 .. v31}, Lorg/concentus/CeltCommon;->dynalloc_analysis([[I[[IIIII[II[SIII[SIILorg/concentus/BoxedValueInt;I[I)I

    move-result v27

    .line 864
    iget v15, v1, Lorg/concentus/BoxedValueInt;->Val:I

    .line 867
    iget v0, v11, Lorg/concentus/CeltEncoder;->lfe:I

    if-eqz v0, :cond_4f

    const/4 v0, 0x3

    .line 868
    div-int/lit8 v2, v39, 0x3

    const/16 v14, 0x8

    invoke-static {v14, v2}, Lorg/concentus/Inlines;->IMIN(II)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v9, v2

    goto :goto_38

    :cond_4f
    const/4 v0, 0x3

    const/16 v14, 0x8

    .line 870
    :goto_38
    new-array v6, v10, [I

    move/from16 v5, p3

    move/from16 v4, v66

    .line 871
    invoke-static {v13, v6, v4, v5}, Lorg/concentus/CeltCommon;->init_caps(Lorg/concentus/CeltMode;[III)V

    shl-int/lit8 v1, v7, 0x3

    .line 876
    invoke-virtual {v12}, Lorg/concentus/EntropyCoder;->tell_frac()I

    move-result v0

    move/from16 v2, v36

    move/from16 v7, v46

    move/from16 v14, v59

    const/16 v39, 0x0

    :goto_39
    if-ge v7, v14, :cond_54

    add-int/lit8 v16, v7, 0x1

    .line 882
    aget-short v17, v48, v16

    aget-short v18, v48, v7

    sub-int v17, v17, v18

    mul-int v17, v17, v5

    shl-int v3, v17, v4

    shl-int/lit8 v8, v3, 0x3

    move/from16 v17, v10

    const/16 v10, 0x30

    .line 885
    invoke-static {v10, v3}, Lorg/concentus/Inlines;->IMAX(II)I

    move-result v3

    invoke-static {v8, v3}, Lorg/concentus/Inlines;->IMIN(II)I

    move-result v3

    move v8, v2

    move/from16 v18, v15

    const/4 v10, 0x0

    const/4 v15, 0x0

    :goto_3a
    shl-int/lit8 v19, v8, 0x3

    move/from16 v59, v14

    add-int v14, v0, v19

    move/from16 p1, v0

    sub-int v0, v1, v39

    if-ge v14, v0, :cond_52

    .line 889
    aget v0, v6, v7

    if-ge v10, v0, :cond_52

    .line 891
    aget v0, v9, v7

    if-ge v15, v0, :cond_50

    const/4 v0, 0x1

    goto :goto_3b

    :cond_50
    const/4 v0, 0x0

    .line 892
    :goto_3b
    invoke-virtual {v12, v0, v8}, Lorg/concentus/EntropyCoder;->enc_bit_logp(II)V

    .line 893
    invoke-virtual {v12}, Lorg/concentus/EntropyCoder;->tell_frac()I

    move-result v8

    if-nez v0, :cond_51

    move v0, v8

    goto :goto_3c

    :cond_51
    add-int/2addr v10, v3

    add-int v39, v39, v3

    add-int/lit8 v15, v15, 0x1

    move v0, v8

    move/from16 v14, v59

    const/4 v8, 0x1

    goto :goto_3a

    :cond_52
    move/from16 v0, p1

    :goto_3c
    if-eqz v15, :cond_53

    add-int/lit8 v2, v2, -0x1

    const/4 v8, 0x2

    .line 903
    invoke-static {v8, v2}, Lorg/concentus/Inlines;->IMAX(II)I

    move-result v2

    goto :goto_3d

    :cond_53
    const/4 v8, 0x2

    .line 905
    :goto_3d
    aput v10, v9, v7

    move/from16 v7, v16

    move/from16 v10, v17

    move/from16 v15, v18

    move/from16 v14, v59

    const/4 v3, 0x5

    goto :goto_39

    :cond_54
    move/from16 v17, v10

    move/from16 v59, v14

    move/from16 v18, v15

    if-ne v5, v8, :cond_56

    move-object/from16 v15, v62

    if-eqz v4, :cond_55

    .line 911
    invoke-static {v13, v15, v4}, Lorg/concentus/CeltCommon;->stereo_analysis(Lorg/concentus/CeltMode;[[II)I

    move-result v3

    goto :goto_3e

    :cond_55
    const/4 v3, 0x0

    :goto_3e
    move/from16 v14, v49

    .line 914
    div-int/lit16 v7, v14, 0x3e8

    sget-object v2, Lorg/concentus/CeltTables;->intensity_thresholds:[I

    sget-object v10, Lorg/concentus/CeltTables;->intensity_histeresis:[I

    const/16 v8, 0x15

    move/from16 p1, v3

    iget v3, v11, Lorg/concentus/CeltEncoder;->intensity:I

    invoke-static {v7, v2, v10, v8, v3}, Lorg/concentus/Bands;->hysteresis_decision(I[I[III)I

    move-result v2

    iput v2, v11, Lorg/concentus/CeltEncoder;->intensity:I

    move/from16 v10, v46

    .line 916
    invoke-static {v10, v2}, Lorg/concentus/Inlines;->IMAX(II)I

    move-result v2

    move/from16 v8, v59

    invoke-static {v8, v2}, Lorg/concentus/Inlines;->IMIN(II)I

    move-result v2

    iput v2, v11, Lorg/concentus/CeltEncoder;->intensity:I

    move/from16 v7, p1

    goto :goto_3f

    :cond_56
    move/from16 v10, v46

    move/from16 v14, v49

    move/from16 v8, v59

    move-object/from16 v15, v62

    const/4 v7, 0x0

    :goto_3f
    add-int/lit8 v2, v0, 0x30

    sub-int v1, v1, v39

    if-gt v2, v1, :cond_58

    .line 921
    iget v0, v11, Lorg/concentus/CeltEncoder;->lfe:I

    if-eqz v0, :cond_57

    move/from16 v41, v4

    move/from16 p3, v5

    move-object/from16 v44, v6

    move/from16 v69, v7

    move/from16 v47, v8

    move-object/from16 v46, v9

    move/from16 p4, v10

    move/from16 v70, v17

    const/4 v8, 0x5

    goto :goto_40

    .line 924
    :cond_57
    new-instance v3, Lorg/concentus/BoxedValueInt;

    iget v0, v11, Lorg/concentus/CeltEncoder;->stereo_saving:I

    invoke-direct {v3, v0}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    .line 925
    iget-object v2, v11, Lorg/concentus/CeltEncoder;->analysis:Lorg/concentus/AnalysisInfo;

    iget v1, v11, Lorg/concentus/CeltEncoder;->intensity:I

    move-object v0, v13

    move/from16 v19, v1

    move-object v1, v15

    move-object/from16 v20, v2

    move-object/from16 v2, v44

    move-object/from16 p1, v3

    move v3, v8

    move/from16 v41, v4

    move/from16 p3, v5

    move-object/from16 v44, v6

    move-object/from16 v6, v20

    move/from16 v69, v7

    move-object/from16 v7, p1

    move/from16 v16, v8

    move/from16 v8, v60

    move-object/from16 v46, v9

    move/from16 v9, v19

    move/from16 p4, v10

    move/from16 v47, v16

    move/from16 v70, v17

    move/from16 v10, v45

    invoke-static/range {v0 .. v10}, Lorg/concentus/CeltCommon;->alloc_trim_analysis(Lorg/concentus/CeltMode;[[I[[IIIILorg/concentus/AnalysisInfo;Lorg/concentus/BoxedValueInt;III)I

    move-result v8

    move-object/from16 v0, p1

    .line 928
    iget v0, v0, Lorg/concentus/BoxedValueInt;->Val:I

    iput v0, v11, Lorg/concentus/CeltEncoder;->stereo_saving:I

    .line 930
    :goto_40
    sget-object v0, Lorg/concentus/CeltTables;->trim_icdf:[S

    const/4 v1, 0x7

    invoke-virtual {v12, v8, v0, v1}, Lorg/concentus/EntropyCoder;->enc_icdf(I[SI)V

    .line 931
    invoke-virtual {v12}, Lorg/concentus/EntropyCoder;->tell_frac()I

    move-result v0

    move/from16 v54, v8

    goto :goto_41

    :cond_58
    move/from16 v41, v4

    move/from16 p3, v5

    move-object/from16 v44, v6

    move/from16 v69, v7

    move/from16 v47, v8

    move-object/from16 v46, v9

    move/from16 p4, v10

    move/from16 v70, v17

    const/16 v54, 0x5

    :goto_41
    if-lez v34, :cond_61

    .line 941
    iget v1, v13, Lorg/concentus/CeltMode;->maxLM:I

    move/from16 v8, v41

    sub-int/2addr v1, v8

    rsub-int/lit8 v2, v8, 0x3

    shr-int v2, v43, v2

    move/from16 v3, v51

    .line 945
    invoke-static {v3, v2}, Lorg/concentus/Inlines;->IMIN(II)I

    move-result v2

    move/from16 v10, p3

    mul-int/lit8 v3, v10, 0x28

    add-int/lit8 v3, v3, 0x14

    const/4 v4, 0x3

    shl-int/2addr v3, v4

    sub-int v3, v34, v3

    .line 948
    iget v4, v11, Lorg/concentus/CeltEncoder;->constrained_vbr:I

    if-eqz v4, :cond_59

    .line 949
    iget v5, v11, Lorg/concentus/CeltEncoder;->vbr_offset:I

    shr-int/2addr v5, v1

    add-int/2addr v3, v5

    :cond_59
    move/from16 v16, v3

    .line 952
    iget-object v3, v11, Lorg/concentus/CeltEncoder;->analysis:Lorg/concentus/AnalysisInfo;

    iget v5, v11, Lorg/concentus/CeltEncoder;->lastCodedBands:I

    iget v6, v11, Lorg/concentus/CeltEncoder;->intensity:I

    iget v7, v11, Lorg/concentus/CeltEncoder;->stereo_saving:I

    iget-object v9, v11, Lorg/concentus/CeltEncoder;->variable_duration:Lorg/concentus/OpusFramesize;

    move-object/from16 v41, v12

    iget v12, v11, Lorg/concentus/CeltEncoder;->lfe:I

    move/from16 v49, v14

    .line 955
    iget-object v14, v11, Lorg/concentus/CeltEncoder;->energy_mask:[I

    if-eqz v14, :cond_5a

    const/16 v30, 0x1

    goto :goto_42

    :cond_5a
    const/16 v30, 0x0

    :goto_42
    const/16 v45, 0x8

    move-object v14, v13

    move-object/from16 v43, v15

    move/from16 v24, v18

    move-object v15, v3

    move/from16 v17, v8

    move/from16 v18, v49

    move/from16 v19, v5

    move/from16 v20, v10

    move/from16 v21, v6

    move/from16 v22, v4

    move/from16 v23, v7

    move/from16 v25, v60

    move/from16 v26, v55

    move-object/from16 v28, v9

    move/from16 v29, v12

    move/from16 v31, v50

    move/from16 v32, v53

    .line 952
    invoke-static/range {v14 .. v32}, Lorg/concentus/CeltCommon;->compute_vbr(Lorg/concentus/CeltMode;Lorg/concentus/AnalysisInfo;IIIIIIIIIIIILorg/concentus/OpusFramesize;IIII)I

    move-result v3

    add-int/2addr v3, v0

    add-int v0, v0, v39

    add-int/lit8 v0, v0, 0x3f

    shr-int/lit8 v0, v0, 0x6

    const/4 v12, 0x2

    add-int/2addr v0, v12

    sub-int v0, v0, v33

    add-int/lit8 v4, v3, 0x20

    shr-int/lit8 v4, v4, 0x6

    .line 968
    invoke-static {v0, v4}, Lorg/concentus/Inlines;->IMAX(II)I

    move-result v0

    add-int v0, v0, v33

    .line 969
    invoke-static {v2, v0}, Lorg/concentus/Inlines;->IMIN(II)I

    move-result v0

    sub-int v4, v0, v33

    sub-int v3, v3, v34

    shl-int/lit8 v0, v4, 0x6

    if-eqz v37, :cond_5b

    const/16 v0, 0x80

    move v4, v12

    const/4 v3, 0x0

    .line 987
    :cond_5b
    iget v5, v11, Lorg/concentus/CeltEncoder;->vbr_count:I

    const/16 v6, 0x3ca

    if-ge v5, v6, :cond_5c

    add-int/lit8 v6, v5, 0x1

    .line 988
    iput v6, v11, Lorg/concentus/CeltEncoder;->vbr_count:I

    add-int/lit8 v5, v5, 0x15

    const/16 v6, 0x10

    .line 989
    invoke-static {v5, v6}, Lorg/concentus/Inlines;->SHL32(II)I

    move-result v5

    invoke-static {v5}, Lorg/concentus/Inlines;->celt_rcp(I)I

    move-result v5

    goto :goto_43

    :cond_5c
    const/16 v6, 0x10

    const/16 v5, 0x21

    .line 994
    :goto_43
    iget v7, v11, Lorg/concentus/CeltEncoder;->constrained_vbr:I

    if-eqz v7, :cond_5d

    .line 995
    iget v9, v11, Lorg/concentus/CeltEncoder;->vbr_reservoir:I

    sub-int v0, v0, v34

    add-int/2addr v9, v0

    iput v9, v11, Lorg/concentus/CeltEncoder;->vbr_reservoir:I

    :cond_5d
    if-eqz v7, :cond_5e

    .line 1001
    iget v0, v11, Lorg/concentus/CeltEncoder;->vbr_drift:I

    const/4 v9, 0x1

    shl-int v1, v9, v1

    mul-int/2addr v3, v1

    iget v1, v11, Lorg/concentus/CeltEncoder;->vbr_offset:I

    sub-int/2addr v3, v1

    sub-int/2addr v3, v0

    invoke-static {v5, v3}, Lorg/concentus/Inlines;->MULT16_32_Q15(II)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, v11, Lorg/concentus/CeltEncoder;->vbr_drift:I

    neg-int v0, v0

    .line 1002
    iput v0, v11, Lorg/concentus/CeltEncoder;->vbr_offset:I

    goto :goto_44

    :cond_5e
    const/4 v9, 0x1

    .line 1006
    :goto_44
    iget v0, v11, Lorg/concentus/CeltEncoder;->constrained_vbr:I

    if-eqz v0, :cond_60

    iget v0, v11, Lorg/concentus/CeltEncoder;->vbr_reservoir:I

    if-gez v0, :cond_60

    neg-int v0, v0

    .line 1008
    div-int/lit8 v3, v0, 0x40

    if-eqz v37, :cond_5f

    const/4 v3, 0x0

    :cond_5f
    add-int/2addr v4, v3

    const/4 v0, 0x0

    .line 1011
    iput v0, v11, Lorg/concentus/CeltEncoder;->vbr_reservoir:I

    :cond_60
    add-int v4, v4, v33

    .line 1014
    invoke-static {v2, v4}, Lorg/concentus/Inlines;->IMIN(II)I

    move-result v0

    move-object/from16 v7, v41

    .line 1017
    invoke-virtual {v7, v0}, Lorg/concentus/EntropyCoder;->enc_shrink(I)V

    move/from16 v41, v0

    goto :goto_45

    :cond_61
    move/from16 v10, p3

    move-object v7, v12

    move/from16 v49, v14

    move-object/from16 v43, v15

    move/from16 v8, v41

    move/from16 v3, v51

    const/16 v6, 0x10

    const/4 v9, 0x1

    const/4 v12, 0x2

    const/16 v45, 0x8

    move/from16 v41, v3

    :goto_45
    move/from16 v5, v70

    .line 1021
    new-array v4, v5, [I

    .line 1022
    new-array v3, v5, [I

    .line 1023
    new-array v2, v5, [I

    mul-int/lit8 v36, v41, 0x8

    shl-int/lit8 v0, v36, 0x3

    .line 1026
    invoke-virtual {v7}, Lorg/concentus/EntropyCoder;->tell_frac()I

    move-result v1

    sub-int/2addr v0, v1

    sub-int/2addr v0, v9

    if-eqz v63, :cond_62

    if-lt v8, v12, :cond_62

    add-int/lit8 v1, v8, 0x2

    const/4 v14, 0x3

    shl-int/2addr v1, v14

    if-lt v0, v1, :cond_62

    goto :goto_46

    :cond_62
    const/16 v45, 0x0

    :goto_46
    sub-int v22, v0, v45

    add-int/lit8 v0, v47, -0x1

    .line 1031
    iget-object v1, v11, Lorg/concentus/CeltEncoder;->analysis:Lorg/concentus/AnalysisInfo;

    iget-boolean v1, v1, Lorg/concentus/AnalysisInfo;->enabled:Z

    if-eqz v1, :cond_67

    iget-object v1, v11, Lorg/concentus/CeltEncoder;->analysis:Lorg/concentus/AnalysisInfo;

    iget v1, v1, Lorg/concentus/AnalysisInfo;->valid:I

    if-eqz v1, :cond_67

    mul-int/lit16 v15, v10, 0x7d00

    move/from16 v0, v49

    if-ge v0, v15, :cond_64

    const/16 v35, 0xd

    :cond_63
    :goto_47
    move/from16 v6, v35

    goto :goto_48

    :cond_64
    const v1, 0xbb80

    mul-int v15, v10, v1

    if-ge v0, v15, :cond_65

    goto :goto_48

    :cond_65
    const v1, 0xea60

    mul-int v15, v10, v1

    if-ge v0, v15, :cond_66

    const/16 v35, 0x12

    goto :goto_47

    :cond_66
    const v1, 0x13880

    mul-int v15, v10, v1

    if-ge v0, v15, :cond_63

    const/16 v35, 0x13

    goto :goto_47

    .line 1044
    :goto_48
    iget-object v0, v11, Lorg/concentus/CeltEncoder;->analysis:Lorg/concentus/AnalysisInfo;

    iget v0, v0, Lorg/concentus/AnalysisInfo;->bandwidth:I

    invoke-static {v0, v6}, Lorg/concentus/Inlines;->IMAX(II)I

    move-result v0

    .line 1047
    :cond_67
    iget v1, v11, Lorg/concentus/CeltEncoder;->lfe:I

    if-eqz v1, :cond_68

    move/from16 v32, v9

    goto :goto_49

    :cond_68
    move/from16 v32, v0

    .line 1051
    :goto_49
    new-instance v0, Lorg/concentus/BoxedValueInt;

    move-object/from16 v20, v0

    iget v1, v11, Lorg/concentus/CeltEncoder;->intensity:I

    invoke-direct {v0, v1}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    .line 1052
    new-instance v1, Lorg/concentus/BoxedValueInt;

    move-object/from16 v23, v1

    const/4 v6, 0x0

    invoke-direct {v1, v6}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    .line 1053
    new-instance v6, Lorg/concentus/BoxedValueInt;

    move-object/from16 v21, v6

    move/from16 v14, v69

    invoke-direct {v6, v14}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    const/16 v30, 0x1

    .line 1054
    iget v14, v11, Lorg/concentus/CeltEncoder;->lastCodedBands:I

    move/from16 v31, v14

    move-object v14, v13

    move/from16 v15, p4

    move/from16 v16, v47

    move-object/from16 v17, v46

    move-object/from16 v18, v44

    move/from16 v19, v54

    move-object/from16 v24, v3

    move-object/from16 v25, v4

    move-object/from16 v26, v2

    move/from16 v27, v10

    move/from16 v28, v8

    move-object/from16 v29, v7

    invoke-static/range {v14 .. v32}, Lorg/concentus/Rate;->compute_allocation(Lorg/concentus/CeltMode;II[I[IILorg/concentus/BoxedValueInt;Lorg/concentus/BoxedValueInt;ILorg/concentus/BoxedValueInt;[I[I[IIILorg/concentus/EntropyCoder;III)I

    move-result v14

    .line 1057
    iget v0, v0, Lorg/concentus/BoxedValueInt;->Val:I

    iput v0, v11, Lorg/concentus/CeltEncoder;->intensity:I

    .line 1058
    iget v15, v1, Lorg/concentus/BoxedValueInt;->Val:I

    .line 1059
    iget v6, v6, Lorg/concentus/BoxedValueInt;->Val:I

    .line 1061
    iget v0, v11, Lorg/concentus/CeltEncoder;->lastCodedBands:I

    if-eqz v0, :cond_69

    add-int/lit8 v1, v0, 0x1

    sub-int/2addr v0, v9

    .line 1062
    invoke-static {v0, v14}, Lorg/concentus/Inlines;->IMAX(II)I

    move-result v0

    invoke-static {v1, v0}, Lorg/concentus/Inlines;->IMIN(II)I

    move-result v0

    iput v0, v11, Lorg/concentus/CeltEncoder;->lastCodedBands:I

    goto :goto_4a

    .line 1064
    :cond_69
    iput v14, v11, Lorg/concentus/CeltEncoder;->lastCodedBands:I

    .line 1067
    :goto_4a
    iget-object v1, v11, Lorg/concentus/CeltEncoder;->oldBandE:[[I

    move-object v0, v13

    move-object/from16 v16, v1

    move/from16 v1, p4

    move-object/from16 v38, v2

    move/from16 v2, v47

    move-object/from16 v24, v3

    move-object/from16 v3, v16

    move-object/from16 v39, v4

    move-object/from16 v4, v52

    move/from16 v71, v5

    move-object/from16 v5, v39

    move/from16 v27, v6

    move-object v6, v7

    move-object/from16 p3, v7

    move v7, v10

    invoke-static/range {v0 .. v7}, Lorg/concentus/QuantizeBands;->quant_fine_energy(Lorg/concentus/CeltMode;II[[I[[I[ILorg/concentus/EntropyCoder;I)V

    move/from16 v0, v58

    .line 1070
    new-array v0, v0, [S

    .line 1071
    new-instance v1, Lorg/concentus/BoxedValueInt;

    iget v2, v11, Lorg/concentus/CeltEncoder;->rng:I

    invoke-direct {v1, v2}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    const/4 v2, 0x0

    .line 1072
    aget-object v20, v43, v2

    if-ne v10, v12, :cond_6a

    aget-object v2, v43, v9

    goto :goto_4b

    :cond_6a
    const/4 v2, 0x0

    :goto_4b
    move-object/from16 v21, v2

    iget v2, v11, Lorg/concentus/CeltEncoder;->spread_decision:I

    move/from16 v26, v2

    iget v2, v11, Lorg/concentus/CeltEncoder;->intensity:I

    move/from16 v28, v2

    mul-int/lit8 v2, v41, 0x40

    sub-int v30, v2, v45

    const/16 v16, 0x1

    move-object/from16 v17, v13

    move/from16 v18, p4

    move/from16 v19, v47

    move-object/from16 v22, v0

    move-object/from16 v23, v42

    move/from16 v25, v61

    move-object/from16 v29, v56

    move/from16 v31, v15

    move-object/from16 v32, p3

    move/from16 v33, v8

    move/from16 v34, v14

    move-object/from16 v35, v1

    invoke-static/range {v16 .. v35}, Lorg/concentus/Bands;->quant_all_bands(ILorg/concentus/CeltMode;II[I[I[S[[I[IIIII[IIILorg/concentus/EntropyCoder;IILorg/concentus/BoxedValueInt;)V

    .line 1076
    iget v0, v1, Lorg/concentus/BoxedValueInt;->Val:I

    iput v0, v11, Lorg/concentus/CeltEncoder;->rng:I

    if-lez v45, :cond_6c

    .line 1079
    iget v0, v11, Lorg/concentus/CeltEncoder;->consec_transient:I

    if-ge v0, v12, :cond_6b

    move v3, v9

    goto :goto_4c

    :cond_6b
    const/4 v3, 0x0

    :goto_4c
    int-to-long v0, v3

    move-object/from16 v15, p3

    .line 1080
    invoke-virtual {v15, v0, v1, v9}, Lorg/concentus/EntropyCoder;->enc_bits(JI)V

    goto :goto_4d

    :cond_6c
    move-object/from16 v15, p3

    .line 1083
    :goto_4d
    iget-object v3, v11, Lorg/concentus/CeltEncoder;->oldBandE:[[I

    invoke-virtual {v15}, Lorg/concentus/EntropyCoder;->tell()I

    move-result v0

    sub-int v7, v36, v0

    move-object v0, v13

    move/from16 v1, p4

    move/from16 v2, v47

    move-object/from16 v4, v52

    move-object/from16 v5, v39

    move-object/from16 v6, v38

    move-object v8, v15

    move v13, v9

    move v9, v10

    invoke-static/range {v0 .. v9}, Lorg/concentus/QuantizeBands;->quant_energy_finalise(Lorg/concentus/CeltMode;II[[I[[I[I[IILorg/concentus/EntropyCoder;I)V

    const/16 v9, -0x7000

    move/from16 v0, v71

    if-eqz v37, :cond_6e

    const/4 v3, 0x0

    :goto_4e
    if-ge v3, v0, :cond_6d

    .line 1087
    iget-object v1, v11, Lorg/concentus/CeltEncoder;->oldBandE:[[I

    const/4 v2, 0x0

    aget-object v1, v1, v2

    aput v9, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4e

    :cond_6d
    if-ne v10, v12, :cond_6e

    const/4 v3, 0x0

    :goto_4f
    if-ge v3, v0, :cond_6e

    .line 1091
    iget-object v1, v11, Lorg/concentus/CeltEncoder;->oldBandE:[[I

    aget-object v1, v1, v13

    aput v9, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4f

    :cond_6e
    move/from16 v1, v68

    .line 1096
    iput v1, v11, Lorg/concentus/CeltEncoder;->prefilter_period:I

    move/from16 v1, v64

    .line 1097
    iput v1, v11, Lorg/concentus/CeltEncoder;->prefilter_gain:I

    move/from16 v1, v67

    .line 1098
    iput v1, v11, Lorg/concentus/CeltEncoder;->prefilter_tapset:I

    move/from16 v1, v57

    if-ne v1, v12, :cond_6f

    if-ne v10, v13, :cond_6f

    .line 1101
    iget-object v2, v11, Lorg/concentus/CeltEncoder;->oldBandE:[[I

    const/4 v3, 0x0

    aget-object v4, v2, v3

    aget-object v2, v2, v13

    invoke-static {v4, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_50

    :cond_6f
    const/4 v3, 0x0

    :goto_50
    if-nez v63, :cond_70

    .line 1105
    iget-object v2, v11, Lorg/concentus/CeltEncoder;->oldLogE:[[I

    aget-object v2, v2, v3

    iget-object v4, v11, Lorg/concentus/CeltEncoder;->oldLogE2:[[I

    aget-object v4, v4, v3

    invoke-static {v2, v3, v4, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1106
    iget-object v2, v11, Lorg/concentus/CeltEncoder;->oldBandE:[[I

    aget-object v2, v2, v3

    iget-object v4, v11, Lorg/concentus/CeltEncoder;->oldLogE:[[I

    aget-object v4, v4, v3

    invoke-static {v2, v3, v4, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-ne v1, v12, :cond_72

    .line 1108
    iget-object v2, v11, Lorg/concentus/CeltEncoder;->oldLogE:[[I

    aget-object v2, v2, v13

    iget-object v4, v11, Lorg/concentus/CeltEncoder;->oldLogE2:[[I

    aget-object v4, v4, v13

    invoke-static {v2, v3, v4, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1109
    iget-object v2, v11, Lorg/concentus/CeltEncoder;->oldBandE:[[I

    aget-object v2, v2, v13

    iget-object v4, v11, Lorg/concentus/CeltEncoder;->oldLogE:[[I

    aget-object v4, v4, v13

    invoke-static {v2, v3, v4, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_53

    :cond_70
    move v2, v3

    :goto_51
    if-ge v2, v0, :cond_71

    .line 1113
    iget-object v4, v11, Lorg/concentus/CeltEncoder;->oldLogE:[[I

    aget-object v4, v4, v3

    aget v5, v4, v2

    iget-object v6, v11, Lorg/concentus/CeltEncoder;->oldBandE:[[I

    aget-object v6, v6, v3

    aget v3, v6, v2

    invoke-static {v5, v3}, Lorg/concentus/Inlines;->MIN16(II)I

    move-result v3

    aput v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    goto :goto_51

    :cond_71
    if-ne v1, v12, :cond_72

    const/4 v3, 0x0

    :goto_52
    if-ge v3, v0, :cond_72

    .line 1117
    iget-object v2, v11, Lorg/concentus/CeltEncoder;->oldLogE:[[I

    aget-object v2, v2, v13

    aget v4, v2, v3

    iget-object v5, v11, Lorg/concentus/CeltEncoder;->oldBandE:[[I

    aget-object v5, v5, v13

    aget v5, v5, v3

    invoke-static {v4, v5}, Lorg/concentus/Inlines;->MIN16(II)I

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_52

    :cond_72
    :goto_53
    const/4 v3, 0x0

    :goto_54
    move/from16 v4, p4

    const/4 v2, 0x0

    :goto_55
    if-ge v2, v4, :cond_73

    .line 1126
    iget-object v5, v11, Lorg/concentus/CeltEncoder;->oldBandE:[[I

    aget-object v5, v5, v3

    const/4 v6, 0x0

    aput v6, v5, v2

    .line 1127
    iget-object v5, v11, Lorg/concentus/CeltEncoder;->oldLogE:[[I

    aget-object v5, v5, v3

    iget-object v6, v11, Lorg/concentus/CeltEncoder;->oldLogE2:[[I

    aget-object v6, v6, v3

    aput v9, v6, v2

    aput v9, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_55

    :cond_73
    move/from16 v5, v47

    :goto_56
    if-ge v5, v0, :cond_74

    .line 1130
    iget-object v2, v11, Lorg/concentus/CeltEncoder;->oldBandE:[[I

    aget-object v2, v2, v3

    const/4 v6, 0x0

    aput v6, v2, v5

    .line 1131
    iget-object v2, v11, Lorg/concentus/CeltEncoder;->oldLogE:[[I

    aget-object v2, v2, v3

    iget-object v6, v11, Lorg/concentus/CeltEncoder;->oldLogE2:[[I

    aget-object v6, v6, v3

    aput v9, v6, v5

    aput v9, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_56

    :cond_74
    add-int/lit8 v3, v3, 0x1

    if-lt v3, v1, :cond_78

    if-nez v63, :cond_76

    if-eqz v40, :cond_75

    goto :goto_57

    :cond_75
    const/4 v2, 0x0

    .line 1138
    iput v2, v11, Lorg/concentus/CeltEncoder;->consec_transient:I

    goto :goto_58

    .line 1136
    :cond_76
    :goto_57
    iget v0, v11, Lorg/concentus/CeltEncoder;->consec_transient:I

    add-int/2addr v0, v13

    iput v0, v11, Lorg/concentus/CeltEncoder;->consec_transient:I

    .line 1140
    :goto_58
    iget-wide v0, v15, Lorg/concentus/EntropyCoder;->rng:J

    long-to-int v0, v0

    iput v0, v11, Lorg/concentus/CeltEncoder;->rng:I

    .line 1144
    invoke-virtual {v15}, Lorg/concentus/EntropyCoder;->enc_done()V

    .line 1146
    invoke-virtual {v15}, Lorg/concentus/EntropyCoder;->get_error()I

    move-result v0

    if-eqz v0, :cond_77

    .line 1147
    sget v0, Lorg/concentus/OpusError;->OPUS_INTERNAL_ERROR:I

    return v0

    :cond_77
    return v41

    :cond_78
    move/from16 p4, v4

    goto :goto_54

    :cond_79
    move/from16 v6, v16

    move/from16 v4, v47

    move/from16 v16, v13

    move-object v13, v14

    move/from16 v47, v45

    move/from16 v72, v15

    move-object v15, v10

    move/from16 v10, v72

    move/from16 v12, p2

    move/from16 v28, v0

    move-object v0, v1

    move/from16 p5, v4

    move v4, v6

    move/from16 v13, v16

    move-object/from16 v7, v19

    move/from16 v8, v21

    move/from16 v1, v38

    move/from16 v2, v39

    move/from16 v27, v41

    move/from16 p4, v42

    move/from16 v21, v46

    move/from16 v5, v47

    move-object/from16 v22, v48

    move/from16 v25, v49

    move/from16 v9, v51

    move/from16 v17, v52

    move-object/from16 v6, p1

    move-object/from16 v72, v15

    move v15, v10

    move-object/from16 v10, v72

    goto/16 :goto_10

    .line 441
    :cond_7a
    :goto_59
    sget v0, Lorg/concentus/OpusError;->OPUS_BAD_ARG:I

    return v0
.end method

.method celt_encoder_init(II)I
    .locals 1

    .line 236
    sget-object v0, Lorg/concentus/CeltMode;->mode48000_960_120:Lorg/concentus/CeltMode;

    invoke-virtual {p0, v0, p2}, Lorg/concentus/CeltEncoder;->opus_custom_encoder_init_arch(Lorg/concentus/CeltMode;I)I

    move-result p2

    .line 237
    sget v0, Lorg/concentus/OpusError;->OPUS_OK:I

    if-eq p2, v0, :cond_0

    return p2

    .line 240
    :cond_0
    invoke-static {p1}, Lorg/concentus/CeltCommon;->resampling_factor(I)I

    move-result p1

    iput p1, p0, Lorg/concentus/CeltEncoder;->upsample:I

    .line 241
    sget p1, Lorg/concentus/OpusError;->OPUS_OK:I

    return p1
.end method

.method opus_custom_encoder_init_arch(Lorg/concentus/CeltMode;I)I
    .locals 1

    if-ltz p2, :cond_2

    const/4 v0, 0x2

    if-le p2, v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 202
    sget p1, Lorg/concentus/OpusError;->OPUS_ALLOC_FAIL:I

    return p1

    .line 205
    :cond_1
    invoke-direct {p0}, Lorg/concentus/CeltEncoder;->Reset()V

    .line 207
    iput-object p1, p0, Lorg/concentus/CeltEncoder;->mode:Lorg/concentus/CeltMode;

    .line 208
    iput p2, p0, Lorg/concentus/CeltEncoder;->channels:I

    iput p2, p0, Lorg/concentus/CeltEncoder;->stream_channels:I

    const/4 p2, 0x1

    .line 210
    iput p2, p0, Lorg/concentus/CeltEncoder;->upsample:I

    const/4 v0, 0x0

    .line 211
    iput v0, p0, Lorg/concentus/CeltEncoder;->start:I

    .line 212
    iget p1, p1, Lorg/concentus/CeltMode;->effEBands:I

    iput p1, p0, Lorg/concentus/CeltEncoder;->end:I

    .line 213
    iput p2, p0, Lorg/concentus/CeltEncoder;->signalling:I

    .line 215
    iput p2, p0, Lorg/concentus/CeltEncoder;->constrained_vbr:I

    .line 216
    iput p2, p0, Lorg/concentus/CeltEncoder;->clip:I

    const/4 p1, -0x1

    .line 218
    iput p1, p0, Lorg/concentus/CeltEncoder;->bitrate:I

    .line 219
    iput v0, p0, Lorg/concentus/CeltEncoder;->vbr:I

    .line 220
    iput v0, p0, Lorg/concentus/CeltEncoder;->force_intra:I

    const/4 p1, 0x5

    .line 221
    iput p1, p0, Lorg/concentus/CeltEncoder;->complexity:I

    const/16 p1, 0x18

    .line 222
    iput p1, p0, Lorg/concentus/CeltEncoder;->lsb_depth:I

    .line 229
    invoke-virtual {p0}, Lorg/concentus/CeltEncoder;->ResetState()V

    .line 231
    sget p1, Lorg/concentus/OpusError;->OPUS_OK:I

    return p1

    .line 198
    :cond_2
    :goto_0
    sget p1, Lorg/concentus/OpusError;->OPUS_BAD_ARG:I

    return p1
.end method

.method run_prefilter([[I[[IIIILorg/concentus/BoxedValueInt;Lorg/concentus/BoxedValueInt;Lorg/concentus/BoxedValueInt;II)I
    .locals 31

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v9, p4

    move/from16 v10, p10

    .line 247
    new-array v11, v1, [[I

    .line 249
    new-instance v12, Lorg/concentus/BoxedValueInt;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    .line 256
    iget-object v14, v0, Lorg/concentus/CeltEncoder;->mode:Lorg/concentus/CeltMode;

    .line 257
    iget v15, v14, Lorg/concentus/CeltMode;->overlap:I

    move v2, v13

    :goto_0
    if-ge v2, v1, :cond_0

    add-int/lit16 v3, v9, 0x400

    .line 259
    new-array v3, v3, [I

    aput-object v3, v11, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v13

    .line 264
    :goto_1
    aget-object v3, p2, v2

    aget-object v4, v11, v2

    const/16 v8, 0x400

    invoke-static {v3, v13, v4, v13, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 265
    aget-object v3, p1, v2

    aget-object v4, v11, v2

    invoke-static {v3, v15, v4, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v16, 0x1

    add-int/lit8 v2, v2, 0x1

    if-lt v2, v1, :cond_10

    const/16 v7, 0xf

    if-eqz p9, :cond_4

    add-int/lit16 v2, v9, 0x400

    shr-int/lit8 v3, v2, 0x1

    .line 269
    new-array v6, v3, [I

    .line 271
    invoke-static {v11, v6, v2, v1}, Lorg/concentus/Pitch;->pitch_downsample([[I[III)V

    const/16 v3, 0x200

    const/16 v17, 0x3d3

    move-object v2, v6

    move-object v4, v6

    move/from16 v5, p4

    move-object/from16 v18, v6

    move/from16 v6, v17

    move v13, v7

    move-object v7, v12

    .line 274
    invoke-static/range {v2 .. v7}, Lorg/concentus/Pitch;->pitch_search([II[IIILorg/concentus/BoxedValueInt;)V

    .line 276
    iget v2, v12, Lorg/concentus/BoxedValueInt;->Val:I

    rsub-int v2, v2, 0x400

    iput v2, v12, Lorg/concentus/BoxedValueInt;->Val:I

    .line 277
    iget v7, v0, Lorg/concentus/CeltEncoder;->prefilter_period:I

    iget v6, v0, Lorg/concentus/CeltEncoder;->prefilter_gain:I

    const/16 v3, 0x400

    const/16 v4, 0xf

    move-object/from16 v2, v18

    move/from16 v17, v6

    move-object v6, v12

    move/from16 v8, v17

    invoke-static/range {v2 .. v8}, Lorg/concentus/Pitch;->remove_doubling([IIIILorg/concentus/BoxedValueInt;II)I

    move-result v2

    .line 279
    iget v3, v12, Lorg/concentus/BoxedValueInt;->Val:I

    const/16 v4, 0x3fe

    if-le v3, v4, :cond_1

    .line 280
    iput v4, v12, Lorg/concentus/BoxedValueInt;->Val:I

    :cond_1
    const/16 v3, 0x599a

    .line 282
    invoke-static {v3, v2}, Lorg/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v2

    .line 284
    iget v3, v0, Lorg/concentus/CeltEncoder;->loss_rate:I

    const/4 v4, 0x2

    if-le v3, v4, :cond_2

    .line 285
    invoke-static {v2}, Lorg/concentus/Inlines;->HALF32(I)I

    move-result v2

    .line 287
    :cond_2
    iget v3, v0, Lorg/concentus/CeltEncoder;->loss_rate:I

    const/4 v4, 0x4

    if-le v3, v4, :cond_3

    .line 288
    invoke-static {v2}, Lorg/concentus/Inlines;->HALF32(I)I

    move-result v2

    .line 290
    :cond_3
    iget v3, v0, Lorg/concentus/CeltEncoder;->loss_rate:I

    const/16 v4, 0x8

    if-le v3, v4, :cond_5

    goto :goto_2

    :cond_4
    move v13, v7

    .line 295
    iput v13, v12, Lorg/concentus/BoxedValueInt;->Val:I

    :goto_2
    const/4 v2, 0x0

    .line 302
    :cond_5
    iget v3, v12, Lorg/concentus/BoxedValueInt;->Val:I

    iget v4, v0, Lorg/concentus/CeltEncoder;->prefilter_period:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Lorg/concentus/Inlines;->abs(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0xa

    iget v4, v12, Lorg/concentus/BoxedValueInt;->Val:I

    const/16 v5, 0x199a

    if-le v3, v4, :cond_6

    const/16 v3, 0x3334

    goto :goto_3

    :cond_6
    move v3, v5

    :goto_3
    const/16 v4, 0x19

    if-ge v10, v4, :cond_7

    add-int/lit16 v3, v3, 0xccd

    :cond_7
    const/16 v4, 0x23

    if-ge v10, v4, :cond_8

    add-int/lit16 v3, v3, 0xccd

    .line 311
    :cond_8
    iget v4, v0, Lorg/concentus/CeltEncoder;->prefilter_gain:I

    const/16 v6, 0x3333

    if-le v4, v6, :cond_9

    add-int/lit16 v3, v3, -0xccd

    :cond_9
    const/16 v6, 0x4666

    if-le v4, v6, :cond_a

    add-int/lit16 v3, v3, -0xccd

    .line 319
    :cond_a
    invoke-static {v3, v5}, Lorg/concentus/Inlines;->MAX16(II)I

    move-result v3

    if-ge v2, v3, :cond_b

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    goto :goto_4

    .line 328
    :cond_b
    iget v3, v0, Lorg/concentus/CeltEncoder;->prefilter_gain:I

    sub-int v3, v2, v3

    invoke-static {v3}, Lorg/concentus/Inlines;->ABS32(I)I

    move-result v3

    const/16 v4, 0xccd

    if-ge v3, v4, :cond_c

    .line 329
    iget v2, v0, Lorg/concentus/CeltEncoder;->prefilter_gain:I

    :cond_c
    add-int/lit16 v2, v2, 0x600

    shr-int/lit8 v2, v2, 0xa

    .line 332
    div-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x7

    .line 333
    invoke-static {v3, v2}, Lorg/concentus/Inlines;->IMIN(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Lorg/concentus/Inlines;->IMAX(II)I

    move-result v2

    add-int/lit8 v3, v2, 0x1

    mul-int/lit16 v3, v3, 0xc00

    move v4, v2

    move/from16 v5, v16

    :goto_4
    const/4 v2, 0x0

    .line 341
    :goto_5
    iget v6, v14, Lorg/concentus/CeltMode;->shortMdctSize:I

    sub-int/2addr v6, v15

    .line 342
    iget v7, v0, Lorg/concentus/CeltEncoder;->prefilter_period:I

    invoke-static {v7, v13}, Lorg/concentus/Inlines;->IMAX(II)I

    move-result v7

    iput v7, v0, Lorg/concentus/CeltEncoder;->prefilter_period:I

    .line 343
    iget-object v7, v0, Lorg/concentus/CeltEncoder;->in_mem:[[I

    aget-object v7, v7, v2

    aget-object v8, p1, v2

    const/4 v10, 0x0

    invoke-static {v7, v10, v8, v10, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz v6, :cond_d

    .line 345
    aget-object v7, p1, v2

    aget-object v17, v11, v2

    iget v8, v0, Lorg/concentus/CeltEncoder;->prefilter_period:I

    iget v10, v0, Lorg/concentus/CeltEncoder;->prefilter_gain:I

    neg-int v13, v10

    neg-int v10, v10

    move/from16 v28, v5

    iget v5, v0, Lorg/concentus/CeltEncoder;->prefilter_tapset:I

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v18, 0x400

    move/from16 v29, v15

    move-object v15, v7

    move/from16 v16, v29

    move/from16 v19, v8

    move/from16 v20, v8

    move/from16 v21, v6

    move/from16 v22, v13

    move/from16 v23, v10

    move/from16 v24, v5

    move/from16 v25, v5

    invoke-static/range {v15 .. v27}, Lorg/concentus/CeltCommon;->comb_filter([II[IIIIIIIII[II)V

    goto :goto_6

    :cond_d
    move/from16 v28, v5

    move/from16 v29, v15

    .line 350
    :goto_6
    aget-object v15, p1, v2

    move/from16 v5, v29

    add-int v16, v5, v6

    aget-object v17, v11, v2

    add-int/lit16 v7, v6, 0x400

    iget v8, v0, Lorg/concentus/CeltEncoder;->prefilter_period:I

    iget v10, v12, Lorg/concentus/BoxedValueInt;->Val:I

    sub-int v21, v9, v6

    iget v6, v0, Lorg/concentus/CeltEncoder;->prefilter_gain:I

    neg-int v6, v6

    neg-int v13, v3

    move/from16 v29, v4

    iget v4, v0, Lorg/concentus/CeltEncoder;->prefilter_tapset:I

    move-object/from16 v30, v12

    iget-object v12, v14, Lorg/concentus/CeltMode;->window:[I

    move/from16 v18, v7

    move/from16 v19, v8

    move/from16 v20, v10

    move/from16 v22, v6

    move/from16 v23, v13

    move/from16 v24, v4

    move/from16 v25, p5

    move-object/from16 v26, v12

    move/from16 v27, v5

    invoke-static/range {v15 .. v27}, Lorg/concentus/CeltCommon;->comb_filter([II[IIIIIIIII[II)V

    .line 353
    aget-object v4, p1, v2

    iget-object v6, v0, Lorg/concentus/CeltEncoder;->in_mem:[[I

    aget-object v6, v6, v2

    const/4 v7, 0x0

    invoke-static {v4, v9, v6, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v4, 0x400

    if-le v9, v4, :cond_e

    .line 356
    aget-object v6, v11, v2

    aget-object v8, p2, v2

    invoke-static {v6, v9, v8, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_7

    .line 358
    :cond_e
    aget-object v6, p2, v2

    rsub-int v8, v9, 0x400

    invoke-static {v6, v9, v7, v8}, Lorg/concentus/Arrays;->MemMove([IIII)V

    .line 359
    aget-object v6, v11, v2

    aget-object v10, p2, v2

    invoke-static {v6, v4, v10, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_7
    add-int/lit8 v2, v2, 0x1

    if-lt v2, v1, :cond_f

    move-object/from16 v6, p7

    .line 363
    iput v3, v6, Lorg/concentus/BoxedValueInt;->Val:I

    move-object/from16 v8, v30

    .line 364
    iget v1, v8, Lorg/concentus/BoxedValueInt;->Val:I

    move-object/from16 v12, p6

    iput v1, v12, Lorg/concentus/BoxedValueInt;->Val:I

    move-object/from16 v13, p8

    move/from16 v15, v29

    .line 365
    iput v15, v13, Lorg/concentus/BoxedValueInt;->Val:I

    return v28

    :cond_f
    move-object/from16 v12, p6

    move-object/from16 v6, p7

    move-object/from16 v13, p8

    move v15, v5

    move/from16 v5, v28

    move/from16 v4, v29

    move-object/from16 v12, v30

    const/16 v13, 0xf

    goto/16 :goto_5

    :cond_10
    move-object/from16 v6, p7

    move-object v8, v12

    move v7, v13

    move-object/from16 v12, p6

    move-object/from16 v13, p8

    move v13, v7

    move-object v12, v8

    goto/16 :goto_1
.end method
