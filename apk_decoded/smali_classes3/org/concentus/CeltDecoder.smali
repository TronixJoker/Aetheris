.class Lorg/concentus/CeltDecoder;
.super Ljava/lang/Object;
.source "CeltDecoder.java"


# instance fields
.field backgroundLogE:[I

.field channels:I

.field decode_mem:[[I

.field downsample:I

.field end:I

.field error:I

.field last_pitch_index:I

.field loss_count:I

.field lpc:[[I

.field mode:Lorg/concentus/CeltMode;

.field oldEBands:[I

.field oldLogE:[I

.field oldLogE2:[I

.field overlap:I

.field postfilter_gain:I

.field postfilter_gain_old:I

.field postfilter_period:I

.field postfilter_period_old:I

.field postfilter_tapset:I

.field postfilter_tapset_old:I

.field final preemph_memD:[I

.field rng:I

.field signalling:I

.field start:I

.field stream_channels:I


# direct methods
.method constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lorg/concentus/CeltDecoder;->mode:Lorg/concentus/CeltMode;

    const/4 v1, 0x0

    .line 43
    iput v1, p0, Lorg/concentus/CeltDecoder;->overlap:I

    .line 44
    iput v1, p0, Lorg/concentus/CeltDecoder;->channels:I

    .line 45
    iput v1, p0, Lorg/concentus/CeltDecoder;->stream_channels:I

    .line 47
    iput v1, p0, Lorg/concentus/CeltDecoder;->downsample:I

    .line 48
    iput v1, p0, Lorg/concentus/CeltDecoder;->start:I

    .line 49
    iput v1, p0, Lorg/concentus/CeltDecoder;->end:I

    .line 50
    iput v1, p0, Lorg/concentus/CeltDecoder;->signalling:I

    .line 53
    iput v1, p0, Lorg/concentus/CeltDecoder;->rng:I

    .line 54
    iput v1, p0, Lorg/concentus/CeltDecoder;->error:I

    .line 55
    iput v1, p0, Lorg/concentus/CeltDecoder;->last_pitch_index:I

    .line 56
    iput v1, p0, Lorg/concentus/CeltDecoder;->loss_count:I

    .line 57
    iput v1, p0, Lorg/concentus/CeltDecoder;->postfilter_period:I

    .line 58
    iput v1, p0, Lorg/concentus/CeltDecoder;->postfilter_period_old:I

    .line 59
    iput v1, p0, Lorg/concentus/CeltDecoder;->postfilter_gain:I

    .line 60
    iput v1, p0, Lorg/concentus/CeltDecoder;->postfilter_gain_old:I

    .line 61
    iput v1, p0, Lorg/concentus/CeltDecoder;->postfilter_tapset:I

    .line 62
    iput v1, p0, Lorg/concentus/CeltDecoder;->postfilter_tapset_old:I

    const/4 v1, 0x2

    .line 64
    new-array v1, v1, [I

    iput-object v1, p0, Lorg/concentus/CeltDecoder;->preemph_memD:[I

    .line 78
    iput-object v0, p0, Lorg/concentus/CeltDecoder;->decode_mem:[[I

    .line 79
    iput-object v0, p0, Lorg/concentus/CeltDecoder;->lpc:[[I

    .line 80
    iput-object v0, p0, Lorg/concentus/CeltDecoder;->oldEBands:[I

    .line 81
    iput-object v0, p0, Lorg/concentus/CeltDecoder;->oldLogE:[I

    .line 82
    iput-object v0, p0, Lorg/concentus/CeltDecoder;->oldLogE2:[I

    .line 83
    iput-object v0, p0, Lorg/concentus/CeltDecoder;->backgroundLogE:[I

    return-void
.end method

.method private PartialReset()V
    .locals 3

    const/4 v0, 0x0

    .line 98
    iput v0, p0, Lorg/concentus/CeltDecoder;->rng:I

    .line 99
    iput v0, p0, Lorg/concentus/CeltDecoder;->error:I

    .line 100
    iput v0, p0, Lorg/concentus/CeltDecoder;->last_pitch_index:I

    .line 101
    iput v0, p0, Lorg/concentus/CeltDecoder;->loss_count:I

    .line 102
    iput v0, p0, Lorg/concentus/CeltDecoder;->postfilter_period:I

    .line 103
    iput v0, p0, Lorg/concentus/CeltDecoder;->postfilter_period_old:I

    .line 104
    iput v0, p0, Lorg/concentus/CeltDecoder;->postfilter_gain:I

    .line 105
    iput v0, p0, Lorg/concentus/CeltDecoder;->postfilter_gain_old:I

    .line 106
    iput v0, p0, Lorg/concentus/CeltDecoder;->postfilter_tapset:I

    .line 107
    iput v0, p0, Lorg/concentus/CeltDecoder;->postfilter_tapset_old:I

    .line 108
    iget-object v1, p0, Lorg/concentus/CeltDecoder;->preemph_memD:[I

    const/4 v2, 0x2

    invoke-static {v1, v0, v2}, Lorg/concentus/Arrays;->MemSet([III)V

    const/4 v0, 0x0

    .line 109
    iput-object v0, p0, Lorg/concentus/CeltDecoder;->decode_mem:[[I

    .line 110
    iput-object v0, p0, Lorg/concentus/CeltDecoder;->lpc:[[I

    .line 111
    iput-object v0, p0, Lorg/concentus/CeltDecoder;->oldEBands:[I

    .line 112
    iput-object v0, p0, Lorg/concentus/CeltDecoder;->oldLogE:[I

    .line 113
    iput-object v0, p0, Lorg/concentus/CeltDecoder;->oldLogE2:[I

    .line 114
    iput-object v0, p0, Lorg/concentus/CeltDecoder;->backgroundLogE:[I

    return-void
.end method

.method private Reset()V
    .locals 1

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lorg/concentus/CeltDecoder;->mode:Lorg/concentus/CeltMode;

    const/4 v0, 0x0

    .line 87
    iput v0, p0, Lorg/concentus/CeltDecoder;->overlap:I

    .line 88
    iput v0, p0, Lorg/concentus/CeltDecoder;->channels:I

    .line 89
    iput v0, p0, Lorg/concentus/CeltDecoder;->stream_channels:I

    .line 90
    iput v0, p0, Lorg/concentus/CeltDecoder;->downsample:I

    .line 91
    iput v0, p0, Lorg/concentus/CeltDecoder;->start:I

    .line 92
    iput v0, p0, Lorg/concentus/CeltDecoder;->end:I

    .line 93
    iput v0, p0, Lorg/concentus/CeltDecoder;->signalling:I

    .line 94
    invoke-direct {p0}, Lorg/concentus/CeltDecoder;->PartialReset()V

    return-void
.end method

.method private opus_custom_decoder_init(Lorg/concentus/CeltMode;I)I
    .locals 1

    if-ltz p2, :cond_1

    const/4 v0, 0x2

    if-le p2, v0, :cond_0

    goto :goto_0

    .line 162
    :cond_0
    invoke-direct {p0}, Lorg/concentus/CeltDecoder;->Reset()V

    .line 164
    iput-object p1, p0, Lorg/concentus/CeltDecoder;->mode:Lorg/concentus/CeltMode;

    .line 165
    iget p1, p1, Lorg/concentus/CeltMode;->overlap:I

    iput p1, p0, Lorg/concentus/CeltDecoder;->overlap:I

    .line 166
    iput p2, p0, Lorg/concentus/CeltDecoder;->channels:I

    iput p2, p0, Lorg/concentus/CeltDecoder;->stream_channels:I

    const/4 p1, 0x1

    .line 168
    iput p1, p0, Lorg/concentus/CeltDecoder;->downsample:I

    const/4 p2, 0x0

    .line 169
    iput p2, p0, Lorg/concentus/CeltDecoder;->start:I

    .line 170
    iget-object v0, p0, Lorg/concentus/CeltDecoder;->mode:Lorg/concentus/CeltMode;

    iget v0, v0, Lorg/concentus/CeltMode;->effEBands:I

    iput v0, p0, Lorg/concentus/CeltDecoder;->end:I

    .line 171
    iput p1, p0, Lorg/concentus/CeltDecoder;->signalling:I

    .line 173
    iput p2, p0, Lorg/concentus/CeltDecoder;->loss_count:I

    .line 181
    invoke-virtual {p0}, Lorg/concentus/CeltDecoder;->ResetState()V

    .line 183
    sget p1, Lorg/concentus/OpusError;->OPUS_OK:I

    return p1

    .line 155
    :cond_1
    :goto_0
    sget p1, Lorg/concentus/OpusError;->OPUS_BAD_ARG:I

    return p1
.end method


# virtual methods
.method GetAndClearError()I
    .locals 2

    .line 806
    iget v0, p0, Lorg/concentus/CeltDecoder;->error:I

    const/4 v1, 0x0

    .line 807
    iput v1, p0, Lorg/concentus/CeltDecoder;->error:I

    return v0
.end method

.method public GetFinalRange()I
    .locals 1

    .line 828
    iget v0, p0, Lorg/concentus/CeltDecoder;->rng:I

    return v0
.end method

.method public GetLookahead()I
    .locals 2

    .line 812
    iget v0, p0, Lorg/concentus/CeltDecoder;->overlap:I

    iget v1, p0, Lorg/concentus/CeltDecoder;->downsample:I

    div-int/2addr v0, v1

    return v0
.end method

.method public GetMode()Lorg/concentus/CeltMode;
    .locals 1

    .line 820
    iget-object v0, p0, Lorg/concentus/CeltDecoder;->mode:Lorg/concentus/CeltMode;

    return-object v0
.end method

.method public GetPitch()I
    .locals 1

    .line 816
    iget v0, p0, Lorg/concentus/CeltDecoder;->postfilter_period:I

    return v0
.end method

.method ResetState()V
    .locals 4

    .line 120
    invoke-direct {p0}, Lorg/concentus/CeltDecoder;->PartialReset()V

    .line 123
    iget v0, p0, Lorg/concentus/CeltDecoder;->channels:I

    new-array v1, v0, [[I

    iput-object v1, p0, Lorg/concentus/CeltDecoder;->decode_mem:[[I

    .line 124
    new-array v0, v0, [[I

    iput-object v0, p0, Lorg/concentus/CeltDecoder;->lpc:[[I

    const/4 v0, 0x0

    move v1, v0

    .line 125
    :goto_0
    iget v2, p0, Lorg/concentus/CeltDecoder;->channels:I

    if-ge v1, v2, :cond_0

    .line 126
    iget-object v2, p0, Lorg/concentus/CeltDecoder;->decode_mem:[[I

    iget-object v3, p0, Lorg/concentus/CeltDecoder;->mode:Lorg/concentus/CeltMode;

    iget v3, v3, Lorg/concentus/CeltMode;->overlap:I

    add-int/lit16 v3, v3, 0x800

    new-array v3, v3, [I

    aput-object v3, v2, v1

    .line 127
    iget-object v2, p0, Lorg/concentus/CeltDecoder;->lpc:[[I

    const/16 v3, 0x18

    new-array v3, v3, [I

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    :cond_0
    iget-object v1, p0, Lorg/concentus/CeltDecoder;->mode:Lorg/concentus/CeltMode;

    iget v1, v1, Lorg/concentus/CeltMode;->nbEBands:I

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/concentus/CeltDecoder;->oldEBands:[I

    .line 130
    iget-object v1, p0, Lorg/concentus/CeltDecoder;->mode:Lorg/concentus/CeltMode;

    iget v1, v1, Lorg/concentus/CeltMode;->nbEBands:I

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/concentus/CeltDecoder;->oldLogE:[I

    .line 131
    iget-object v1, p0, Lorg/concentus/CeltDecoder;->mode:Lorg/concentus/CeltMode;

    iget v1, v1, Lorg/concentus/CeltMode;->nbEBands:I

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/concentus/CeltDecoder;->oldLogE2:[I

    .line 132
    iget-object v1, p0, Lorg/concentus/CeltDecoder;->mode:Lorg/concentus/CeltMode;

    iget v1, v1, Lorg/concentus/CeltMode;->nbEBands:I

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/concentus/CeltDecoder;->backgroundLogE:[I

    .line 134
    :goto_1
    iget-object v1, p0, Lorg/concentus/CeltDecoder;->mode:Lorg/concentus/CeltMode;

    iget v1, v1, Lorg/concentus/CeltMode;->nbEBands:I

    mul-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_1

    .line 135
    iget-object v1, p0, Lorg/concentus/CeltDecoder;->oldLogE:[I

    iget-object v2, p0, Lorg/concentus/CeltDecoder;->oldLogE2:[I

    const/16 v3, -0x7000

    aput v3, v2, v0

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method SetChannels(I)V
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    .line 802
    iput p1, p0, Lorg/concentus/CeltDecoder;->stream_channels:I

    return-void

    .line 800
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Channel count must be 1 or 2"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method SetEndBand(I)V
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 792
    iget-object v0, p0, Lorg/concentus/CeltDecoder;->mode:Lorg/concentus/CeltMode;

    iget v0, v0, Lorg/concentus/CeltMode;->nbEBands:I

    if-gt p1, v0, :cond_0

    .line 795
    iput p1, p0, Lorg/concentus/CeltDecoder;->end:I

    return-void

    .line 793
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "End band above max number of ebands (or less than 1)"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public SetSignalling(I)V
    .locals 0

    .line 824
    iput p1, p0, Lorg/concentus/CeltDecoder;->signalling:I

    return-void
.end method

.method SetStartBand(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 785
    iget-object v0, p0, Lorg/concentus/CeltDecoder;->mode:Lorg/concentus/CeltMode;

    iget v0, v0, Lorg/concentus/CeltMode;->nbEBands:I

    if-ge p1, v0, :cond_0

    .line 788
    iput p1, p0, Lorg/concentus/CeltDecoder;->start:I

    return-void

    .line 786
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Start band above max number of ebands (or negative)"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method celt_decode_lost(II)V
    .locals 37

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 189
    iget v9, v0, Lorg/concentus/CeltDecoder;->channels:I

    const/4 v2, 0x2

    .line 190
    new-array v3, v2, [[I

    .line 191
    new-array v4, v2, [I

    .line 198
    iget-object v5, v0, Lorg/concentus/CeltDecoder;->mode:Lorg/concentus/CeltMode;

    .line 199
    iget v6, v5, Lorg/concentus/CeltMode;->nbEBands:I

    .line 200
    iget v7, v5, Lorg/concentus/CeltMode;->overlap:I

    .line 201
    iget-object v8, v5, Lorg/concentus/CeltMode;->eBands:[S

    const/4 v15, 0x0

    move v10, v15

    .line 205
    :goto_0
    iget-object v11, v0, Lorg/concentus/CeltDecoder;->decode_mem:[[I

    aget-object v12, v11, v10

    aput-object v12, v3, v10

    rsub-int v14, v1, 0x800

    .line 206
    aput v14, v4, v10

    const/4 v13, 0x1

    add-int/2addr v10, v13

    if-lt v10, v9, :cond_19

    .line 209
    iget v10, v0, Lorg/concentus/CeltDecoder;->loss_count:I

    const/4 v12, 0x5

    if-ge v10, v12, :cond_11

    iget v12, v0, Lorg/concentus/CeltDecoder;->start:I

    if-eqz v12, :cond_0

    goto/16 :goto_f

    :cond_0
    if-nez v10, :cond_1

    .line 266
    invoke-static {v11, v9}, Lorg/concentus/CeltCommon;->celt_plc_pitch_search([[II)I

    move-result v3

    iput v3, v0, Lorg/concentus/CeltDecoder;->last_pitch_index:I

    const/16 v4, 0x7fff

    goto :goto_1

    .line 268
    :cond_1
    iget v3, v0, Lorg/concentus/CeltDecoder;->last_pitch_index:I

    const/16 v4, 0x6666

    .line 272
    :goto_1
    new-array v6, v7, [I

    const/16 v8, 0x400

    .line 273
    new-array v12, v8, [I

    .line 274
    iget-object v5, v5, Lorg/concentus/CeltMode;->window:[I

    move/from16 v34, v15

    .line 286
    :goto_2
    iget-object v10, v0, Lorg/concentus/CeltDecoder;->decode_mem:[[I

    aget-object v11, v10, v34

    move v10, v15

    :goto_3
    const/16 v2, 0xc

    if-ge v10, v8, :cond_2

    add-int/lit16 v13, v10, 0x400

    .line 288
    aget v13, v11, v13

    invoke-static {v13, v2}, Lorg/concentus/Inlines;->ROUND16(II)I

    move-result v2

    aput v2, v12, v10

    add-int/lit8 v10, v10, 0x1

    const/4 v13, 0x1

    goto :goto_3

    .line 291
    :cond_2
    iget v10, v0, Lorg/concentus/CeltDecoder;->loss_count:I

    const/16 v13, 0x18

    if-nez v10, :cond_4

    const/16 v10, 0x19

    .line 292
    new-array v10, v10, [I

    const/16 v17, 0x18

    const/16 v18, 0x400

    move-object/from16 p2, v10

    move-object v10, v12

    move-object v2, v11

    move-object/from16 v11, p2

    move-object/from16 v35, v12

    move-object v12, v5

    move v8, v13

    move v13, v7

    move/from16 v36, v14

    move/from16 v14, v17

    move v8, v15

    move/from16 v15, v18

    .line 295
    invoke-static/range {v10 .. v15}, Lorg/concentus/Autocorrelation;->_celt_autocorr([I[I[IIII)I

    move-object/from16 v10, p2

    .line 298
    aget v11, v10, v8

    const/16 v12, 0xd

    invoke-static {v11, v12}, Lorg/concentus/Inlines;->SHR32(II)I

    move-result v12

    add-int/2addr v11, v12

    aput v11, v10, v8

    const/16 v11, 0x18

    const/4 v13, 0x1

    :goto_4
    if-gt v13, v11, :cond_3

    .line 302
    aget v11, v10, v13

    mul-int/lit8 v12, v13, 0x2

    mul-int/2addr v12, v13

    invoke-static {v12, v11}, Lorg/concentus/Inlines;->MULT16_32_Q15(II)I

    move-result v12

    sub-int/2addr v11, v12

    aput v11, v10, v13

    add-int/lit8 v13, v13, 0x1

    const/16 v11, 0x18

    goto :goto_4

    .line 304
    :cond_3
    iget-object v11, v0, Lorg/concentus/CeltDecoder;->lpc:[[I

    aget-object v11, v11, v34

    const/16 v12, 0x18

    invoke-static {v11, v10, v12}, Lorg/concentus/CeltLPC;->celt_lpc([I[II)V

    goto :goto_5

    :cond_4
    move-object v2, v11

    move-object/from16 v35, v12

    move v12, v13

    move/from16 v36, v14

    move v8, v15

    :goto_5
    mul-int/lit8 v10, v3, 0x2

    const/16 v11, 0x400

    .line 308
    invoke-static {v10, v11}, Lorg/concentus/Inlines;->IMIN(II)I

    move-result v10

    .line 312
    new-array v11, v12, [I

    move v15, v8

    :goto_6
    if-ge v15, v12, :cond_5

    rsub-int v12, v10, 0x7ff

    sub-int/2addr v12, v15

    .line 314
    aget v12, v2, v12

    const/16 v13, 0xc

    .line 315
    invoke-static {v12, v13}, Lorg/concentus/Inlines;->ROUND16(II)I

    move-result v12

    aput v12, v11, v15

    add-int/lit8 v15, v15, 0x1

    const/16 v12, 0x18

    goto :goto_6

    :cond_5
    rsub-int v12, v10, 0x400

    .line 319
    iget-object v13, v0, Lorg/concentus/CeltDecoder;->lpc:[[I

    aget-object v27, v13, v34

    const/16 v28, 0x0

    const/16 v32, 0x18

    move-object/from16 v25, v35

    move/from16 v26, v12

    move-object/from16 v29, v35

    move/from16 v30, v12

    move/from16 v31, v10

    move-object/from16 v33, v11

    invoke-static/range {v25 .. v33}, Lorg/concentus/Kernels;->celt_fir([II[II[IIII[I)V

    move-object/from16 v15, v35

    .line 329
    invoke-static {v15, v12, v10}, Lorg/concentus/Inlines;->celt_maxabs16([III)I

    move-result v11

    invoke-static {v11}, Lorg/concentus/Inlines;->celt_zlog2(I)I

    move-result v11

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    add-int/lit8 v11, v11, -0x14

    invoke-static {v8, v11}, Lorg/concentus/Inlines;->IMAX(II)I

    move-result v11

    shr-int/lit8 v10, v10, 0x1

    move v14, v8

    const/4 v12, 0x1

    const/4 v13, 0x1

    :goto_7
    if-ge v14, v10, :cond_6

    rsub-int v8, v10, 0x400

    add-int/2addr v8, v14

    .line 333
    aget v8, v15, v8

    .line 334
    invoke-static {v8, v8}, Lorg/concentus/Inlines;->MULT16_16(II)I

    move-result v8

    invoke-static {v8, v11}, Lorg/concentus/Inlines;->SHR32(II)I

    move-result v8

    add-int/2addr v13, v8

    mul-int/lit8 v8, v10, 0x2

    move/from16 v26, v9

    const/16 v9, 0x400

    rsub-int v8, v8, 0x400

    add-int/2addr v8, v14

    .line 335
    aget v8, v15, v8

    .line 336
    invoke-static {v8, v8}, Lorg/concentus/Inlines;->MULT16_16(II)I

    move-result v8

    invoke-static {v8, v11}, Lorg/concentus/Inlines;->SHR32(II)I

    move-result v8

    add-int/2addr v12, v8

    add-int/lit8 v14, v14, 0x1

    move/from16 v9, v26

    const/4 v8, 0x0

    goto :goto_7

    :cond_6
    move/from16 v26, v9

    const/16 v9, 0x400

    .line 338
    invoke-static {v13, v12}, Lorg/concentus/Inlines;->MIN32(II)I

    move-result v8

    const/4 v14, 0x1

    .line 339
    invoke-static {v8, v14}, Lorg/concentus/Inlines;->SHR32(II)I

    move-result v8

    invoke-static {v8, v12}, Lorg/concentus/Inlines;->frac_div32(II)I

    move-result v8

    invoke-static {v8}, Lorg/concentus/Inlines;->celt_sqrt(I)I

    move-result v8

    move/from16 v13, v36

    const/4 v10, 0x0

    .line 345
    invoke-static {v2, v1, v10, v13}, Lorg/concentus/Arrays;->MemMove([IIII)V

    rsub-int v10, v3, 0x400

    add-int v11, v1, v7

    .line 355
    invoke-static {v4, v8}, Lorg/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v12

    move/from16 v27, v4

    move-object/from16 v28, v6

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v14, 0x0

    :goto_8
    if-ge v9, v11, :cond_8

    if-lt v14, v3, :cond_7

    sub-int/2addr v14, v3

    .line 360
    invoke-static {v12, v8}, Lorg/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v12

    :cond_7
    add-int v17, v13, v9

    add-int v18, v10, v14

    .line 362
    aget v6, v15, v18

    .line 363
    invoke-static {v12, v6}, Lorg/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v6

    move/from16 v29, v3

    const/16 v3, 0xc

    invoke-static {v6, v3}, Lorg/concentus/Inlines;->SHL32(II)I

    move-result v6

    aput v6, v2, v17

    rsub-int v6, v1, 0x400

    add-int/2addr v6, v10

    add-int/2addr v6, v14

    .line 367
    aget v6, v2, v6

    invoke-static {v6, v3}, Lorg/concentus/Inlines;->ROUND16(II)I

    move-result v6

    .line 370
    invoke-static {v6, v6}, Lorg/concentus/Inlines;->MULT16_16(II)I

    move-result v3

    const/16 v6, 0x8

    invoke-static {v3, v6}, Lorg/concentus/Inlines;->SHR32(II)I

    move-result v3

    add-int/2addr v4, v3

    add-int/lit8 v9, v9, 0x1

    const/4 v3, 0x1

    add-int/2addr v14, v3

    move/from16 v3, v29

    goto :goto_8

    :cond_8
    move/from16 v29, v3

    const/16 v3, 0x18

    .line 374
    new-array v6, v3, [I

    const/4 v8, 0x0

    :goto_9
    if-ge v8, v3, :cond_9

    rsub-int v9, v1, 0x7ff

    sub-int/2addr v9, v8

    .line 378
    aget v9, v2, v9

    const/16 v10, 0xc

    invoke-static {v9, v10}, Lorg/concentus/Inlines;->ROUND16(II)I

    move-result v9

    aput v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 382
    :cond_9
    iget-object v3, v0, Lorg/concentus/CeltDecoder;->lpc:[[I

    aget-object v18, v3, v34

    const/16 v22, 0x18

    move-object/from16 v16, v2

    move/from16 v17, v13

    move-object/from16 v19, v2

    move/from16 v20, v13

    move/from16 v21, v11

    move-object/from16 v23, v6

    invoke-static/range {v16 .. v23}, Lorg/concentus/CeltLPC;->celt_iir([II[I[IIII[I)V

    const/4 v3, 0x0

    const/4 v6, 0x0

    :goto_a
    if-ge v3, v11, :cond_a

    add-int v14, v13, v3

    .line 393
    aget v8, v2, v14

    const/16 v9, 0xc

    invoke-static {v8, v9}, Lorg/concentus/Inlines;->ROUND16(II)I

    move-result v8

    .line 394
    invoke-static {v8, v8}, Lorg/concentus/Inlines;->MULT16_16(II)I

    move-result v8

    const/16 v10, 0x8

    invoke-static {v8, v10}, Lorg/concentus/Inlines;->SHR32(II)I

    move-result v8

    add-int/2addr v6, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_a
    const/4 v8, 0x2

    .line 397
    invoke-static {v6, v8}, Lorg/concentus/Inlines;->SHR32(II)I

    move-result v3

    if-gt v4, v3, :cond_b

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v11, :cond_d

    add-int v14, v13, v3

    const/4 v4, 0x0

    .line 399
    aput v4, v2, v14

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_b
    if-ge v4, v6, :cond_d

    const/4 v3, 0x1

    .line 402
    invoke-static {v4, v3}, Lorg/concentus/Inlines;->SHR32(II)I

    move-result v4

    add-int/2addr v4, v3

    add-int/lit8 v6, v6, 0x1

    invoke-static {v4, v6}, Lorg/concentus/Inlines;->frac_div32(II)I

    move-result v4

    invoke-static {v4}, Lorg/concentus/Inlines;->celt_sqrt(I)I

    move-result v4

    const/4 v6, 0x0

    :goto_c
    if-ge v6, v7, :cond_c

    .line 404
    aget v9, v5, v6

    rsub-int v10, v4, 0x7fff

    .line 405
    invoke-static {v9, v10}, Lorg/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v9

    const/16 v10, 0x7fff

    rsub-int v9, v9, 0x7fff

    add-int v14, v13, v6

    .line 406
    aget v10, v2, v14

    .line 407
    invoke-static {v9, v10}, Lorg/concentus/Inlines;->MULT16_32_Q15(II)I

    move-result v9

    aput v9, v2, v14

    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    :cond_c
    move v6, v7

    :goto_d
    if-ge v6, v11, :cond_e

    add-int v14, v13, v6

    .line 410
    aget v9, v2, v14

    .line 411
    invoke-static {v4, v9}, Lorg/concentus/Inlines;->MULT16_32_Q15(II)I

    move-result v9

    aput v9, v2, v14

    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_d
    const/4 v3, 0x1

    .line 419
    :cond_e
    iget v4, v0, Lorg/concentus/CeltDecoder;->postfilter_period:I

    iget v6, v0, Lorg/concentus/CeltDecoder;->postfilter_gain:I

    neg-int v9, v6

    neg-int v6, v6

    iget v14, v0, Lorg/concentus/CeltDecoder;->postfilter_tapset:I

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/4 v11, 0x0

    const/16 v16, 0x800

    move-object/from16 v10, v28

    move-object v12, v2

    move/from16 v23, v13

    move/from16 v13, v16

    move/from16 v24, v3

    move v3, v14

    move v14, v4

    move-object/from16 v30, v15

    move v15, v4

    move/from16 v16, v7

    move/from16 v17, v9

    move/from16 v18, v6

    move/from16 v19, v3

    move/from16 v20, v3

    invoke-static/range {v10 .. v22}, Lorg/concentus/CeltCommon;->comb_filter([II[IIIIIIIII[II)V

    const/4 v15, 0x0

    .line 426
    :goto_e
    div-int/lit8 v3, v7, 0x2

    if-ge v15, v3, :cond_f

    add-int/lit16 v3, v15, 0x800

    .line 427
    aget v4, v5, v15

    add-int/lit8 v6, v7, -0x1

    sub-int/2addr v6, v15

    aget v6, v28, v6

    .line 428
    invoke-static {v4, v6}, Lorg/concentus/Inlines;->MULT16_32_Q15(II)I

    move-result v4

    sub-int v6, v7, v15

    add-int/lit8 v6, v6, -0x1

    aget v6, v5, v6

    aget v9, v28, v15

    .line 429
    invoke-static {v6, v9}, Lorg/concentus/Inlines;->MULT16_32_Q15(II)I

    move-result v6

    add-int/2addr v4, v6

    aput v4, v2, v3

    add-int/lit8 v15, v15, 0x1

    goto :goto_e

    :cond_f
    add-int/lit8 v2, v34, 0x1

    move/from16 v9, v26

    if-lt v2, v9, :cond_10

    goto/16 :goto_16

    :cond_10
    move/from16 v34, v2

    move/from16 v14, v23

    move/from16 v13, v24

    move/from16 v4, v27

    move-object/from16 v6, v28

    move/from16 v3, v29

    move-object/from16 v12, v30

    const/16 v8, 0x400

    const/4 v15, 0x0

    goto/16 :goto_2

    :cond_11
    :goto_f
    move-object v2, v8

    move/from16 v24, v13

    move/from16 v23, v14

    .line 217
    iget v11, v0, Lorg/concentus/CeltDecoder;->end:I

    .line 218
    iget v8, v0, Lorg/concentus/CeltDecoder;->start:I

    iget v10, v5, Lorg/concentus/CeltMode;->effEBands:I

    invoke-static {v11, v10}, Lorg/concentus/Inlines;->IMIN(II)I

    move-result v10

    invoke-static {v8, v10}, Lorg/concentus/Inlines;->IMAX(II)I

    move-result v12

    .line 220
    invoke-static {v9, v1}, Lorg/concentus/Arrays;->InitTwoDimensionalArrayInt(II)[[I

    move-result-object v13

    .line 226
    iget v8, v0, Lorg/concentus/CeltDecoder;->loss_count:I

    if-nez v8, :cond_12

    const/16 v8, 0x600

    goto :goto_10

    :cond_12
    const/16 v8, 0x200

    :goto_10
    move v14, v8

    const/4 v15, 0x0

    .line 229
    :goto_11
    iget v8, v0, Lorg/concentus/CeltDecoder;->start:I

    :goto_12
    if-ge v8, v11, :cond_13

    .line 230
    iget-object v10, v0, Lorg/concentus/CeltDecoder;->oldEBands:[I

    mul-int v16, v15, v6

    add-int v16, v16, v8

    move/from16 v17, v6

    iget-object v6, v0, Lorg/concentus/CeltDecoder;->backgroundLogE:[I

    aget v6, v6, v16

    aget v18, v10, v16

    move/from16 v19, v11

    sub-int v11, v18, v14

    invoke-static {v6, v11}, Lorg/concentus/Inlines;->MAX16(II)I

    move-result v6

    aput v6, v10, v16

    add-int/lit8 v8, v8, 0x1

    move/from16 v6, v17

    move/from16 v11, v19

    goto :goto_12

    :cond_13
    move/from16 v17, v6

    move/from16 v19, v11

    add-int/lit8 v15, v15, 0x1

    if-lt v15, v9, :cond_18

    .line 233
    iget v6, v0, Lorg/concentus/CeltDecoder;->rng:I

    const/4 v15, 0x0

    :goto_13
    if-ge v15, v9, :cond_16

    .line 235
    iget v8, v0, Lorg/concentus/CeltDecoder;->start:I

    :goto_14
    if-ge v8, v12, :cond_15

    .line 239
    aget-short v10, v2, v8

    shl-int v11, v10, p2

    add-int/lit8 v8, v8, 0x1

    .line 240
    aget-short v14, v2, v8

    sub-int/2addr v14, v10

    shl-int v10, v14, p2

    const/4 v14, 0x0

    :goto_15
    if-ge v14, v10, :cond_14

    .line 242
    invoke-static {v6}, Lorg/concentus/Bands;->celt_lcg_rand(I)I

    move-result v6

    .line 243
    aget-object v16, v13, v15

    add-int v17, v11, v14

    shr-int/lit8 v18, v6, 0x14

    aput v18, v16, v17

    add-int/lit8 v14, v14, 0x1

    goto :goto_15

    .line 246
    :cond_14
    aget-object v11, v13, v15

    move-object/from16 v16, v2

    const/4 v2, 0x0

    const/16 v14, 0x7fff

    invoke-static {v11, v2, v10, v14}, Lorg/concentus/VQ;->renormalise_vector([IIII)V

    move-object/from16 v2, v16

    goto :goto_14

    :cond_15
    move-object/from16 v16, v2

    const/4 v2, 0x0

    const/16 v14, 0x7fff

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, v16

    goto :goto_13

    :cond_16
    const/4 v2, 0x0

    .line 249
    iput v6, v0, Lorg/concentus/CeltDecoder;->rng:I

    move v15, v2

    .line 253
    :cond_17
    iget-object v6, v0, Lorg/concentus/CeltDecoder;->decode_mem:[[I

    aget-object v6, v6, v15

    shr-int/lit8 v8, v7, 0x1

    add-int v14, v23, v8

    invoke-static {v6, v1, v2, v14}, Lorg/concentus/Arrays;->MemMove([IIII)V

    add-int/lit8 v15, v15, 0x1

    if-lt v15, v9, :cond_17

    .line 256
    iget-object v6, v0, Lorg/concentus/CeltDecoder;->oldEBands:[I

    iget v7, v0, Lorg/concentus/CeltDecoder;->start:I

    iget v14, v0, Lorg/concentus/CeltDecoder;->downsample:I

    const/4 v15, 0x0

    const/4 v10, 0x0

    move-object v1, v5

    move-object v2, v13

    move-object v5, v6

    move v6, v7

    move v7, v12

    move v8, v9

    move/from16 v11, p2

    move v12, v14

    move v13, v15

    invoke-static/range {v1 .. v13}, Lorg/concentus/CeltCommon;->celt_synthesis(Lorg/concentus/CeltMode;[[I[[I[I[IIIIIIIII)V

    .line 434
    :goto_16
    iget v1, v0, Lorg/concentus/CeltDecoder;->loss_count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/concentus/CeltDecoder;->loss_count:I

    return-void

    :cond_18
    move/from16 v6, v17

    move/from16 v11, v19

    goto/16 :goto_11

    :cond_19
    move-object/from16 v16, v8

    goto/16 :goto_0
.end method

.method celt_decode_with_ec([BII[SIILorg/concentus/EntropyCoder;I)I
    .locals 60

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    const/4 v3, 0x2

    .line 450
    new-array v15, v3, [[I

    .line 451
    new-array v14, v3, [I

    .line 457
    iget v13, v0, Lorg/concentus/CeltDecoder;->channels:I

    .line 476
    iget v12, v0, Lorg/concentus/CeltDecoder;->stream_channels:I

    .line 482
    iget-object v11, v0, Lorg/concentus/CeltDecoder;->mode:Lorg/concentus/CeltMode;

    .line 483
    iget v10, v11, Lorg/concentus/CeltMode;->nbEBands:I

    .line 484
    iget v9, v11, Lorg/concentus/CeltMode;->overlap:I

    .line 485
    iget-object v8, v11, Lorg/concentus/CeltMode;->eBands:[S

    .line 486
    iget v7, v0, Lorg/concentus/CeltDecoder;->start:I

    .line 487
    iget v6, v0, Lorg/concentus/CeltDecoder;->end:I

    .line 488
    iget v4, v0, Lorg/concentus/CeltDecoder;->downsample:I

    mul-int v5, p6, v4

    .line 490
    iget-object v4, v0, Lorg/concentus/CeltDecoder;->oldEBands:[I

    .line 491
    iget-object v3, v0, Lorg/concentus/CeltDecoder;->oldLogE:[I

    move-object/from16 p6, v3

    .line 492
    iget-object v3, v0, Lorg/concentus/CeltDecoder;->oldLogE2:[I

    move-object/from16 v36, v3

    .line 493
    iget-object v3, v0, Lorg/concentus/CeltDecoder;->backgroundLogE:[I

    move-object/from16 v37, v3

    move-object/from16 v16, v8

    const/4 v3, 0x0

    .line 496
    :goto_0
    iget v8, v11, Lorg/concentus/CeltMode;->maxLM:I

    if-gt v3, v8, :cond_1

    .line 497
    iget v8, v11, Lorg/concentus/CeltMode;->shortMdctSize:I

    shl-int/2addr v8, v3

    if-ne v8, v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 501
    :cond_1
    :goto_1
    iget v8, v11, Lorg/concentus/CeltMode;->maxLM:I

    if-le v3, v8, :cond_2

    .line 502
    sget v1, Lorg/concentus/OpusError;->OPUS_BAD_ARG:I

    return v1

    :cond_2
    const/4 v8, 0x1

    shl-int v38, v8, v3

    if-ltz v2, :cond_2c

    const/16 v8, 0x4fb

    if-gt v2, v8, :cond_2c

    if-nez p4, :cond_3

    goto/16 :goto_20

    .line 511
    :cond_3
    iget v8, v11, Lorg/concentus/CeltMode;->shortMdctSize:I

    mul-int v8, v8, v38

    move/from16 v19, v5

    const/16 v18, 0x0

    .line 514
    :goto_2
    iget-object v5, v0, Lorg/concentus/CeltDecoder;->decode_mem:[[I

    aget-object v5, v5, v18

    aput-object v5, v15, v18

    rsub-int v5, v8, 0x800

    .line 515
    aput v5, v14, v18

    move/from16 v20, v5

    move/from16 v21, v8

    const/4 v5, 0x1

    add-int/lit8 v8, v18, 0x1

    if-lt v8, v13, :cond_2b

    .line 519
    iget v8, v11, Lorg/concentus/CeltMode;->effEBands:I

    if-le v6, v8, :cond_4

    .line 520
    iget v8, v11, Lorg/concentus/CeltMode;->effEBands:I

    move/from16 v39, v8

    goto :goto_3

    :cond_4
    move/from16 v39, v6

    :goto_3
    if-eqz v1, :cond_2a

    if-gt v2, v5, :cond_5

    goto/16 :goto_1f

    :cond_5
    if-nez p7, :cond_6

    .line 533
    new-instance v8, Lorg/concentus/EntropyCoder;

    invoke-direct {v8}, Lorg/concentus/EntropyCoder;-><init>()V

    move/from16 v5, p2

    .line 534
    invoke-virtual {v8, v1, v5, v2}, Lorg/concentus/EntropyCoder;->dec_init([BII)V

    move-object v1, v8

    const/4 v5, 0x1

    goto :goto_4

    :cond_6
    move-object/from16 v1, p7

    :goto_4
    if-ne v12, v5, :cond_7

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v10, :cond_7

    .line 539
    aget v8, v4, v5

    add-int v18, v10, v5

    move/from16 v22, v6

    aget v6, v4, v18

    invoke-static {v8, v6}, Lorg/concentus/Inlines;->MAX16(II)I

    move-result v6

    aput v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    move/from16 v6, v22

    goto :goto_5

    :cond_7
    move/from16 v22, v6

    mul-int/lit8 v8, v2, 0x8

    .line 544
    invoke-virtual {v1}, Lorg/concentus/EntropyCoder;->tell()I

    move-result v5

    if-lt v5, v8, :cond_8

    move-object v6, v4

    move/from16 p1, v5

    const/16 v40, 0x1

    goto :goto_6

    :cond_8
    const/4 v6, 0x1

    if-ne v5, v6, :cond_9

    move-object v6, v4

    move/from16 p1, v5

    const-wide/16 v4, 0xf

    .line 549
    invoke-virtual {v1, v4, v5}, Lorg/concentus/EntropyCoder;->dec_bit_logp(J)I

    move-result v4

    move/from16 v40, v4

    goto :goto_6

    :cond_9
    move-object v6, v4

    move/from16 p1, v5

    const/16 v40, 0x0

    :goto_6
    if-eqz v40, :cond_a

    .line 557
    iget v4, v1, Lorg/concentus/EntropyCoder;->nbits_total:I

    invoke-virtual {v1}, Lorg/concentus/EntropyCoder;->tell()I

    move-result v5

    sub-int v5, v8, v5

    add-int/2addr v4, v5

    iput v4, v1, Lorg/concentus/EntropyCoder;->nbits_total:I

    move v5, v8

    goto :goto_7

    :cond_a
    move/from16 v5, p1

    :goto_7
    if-nez v7, :cond_d

    add-int/lit8 v4, v5, 0x10

    if-gt v4, v8, :cond_d

    const-wide/16 v4, 0x1

    .line 564
    invoke-virtual {v1, v4, v5}, Lorg/concentus/EntropyCoder;->dec_bit_logp(J)I

    move-result v4

    if-eqz v4, :cond_c

    const-wide/16 v4, 0x6

    .line 566
    invoke-virtual {v1, v4, v5}, Lorg/concentus/EntropyCoder;->dec_uint(J)J

    move-result-wide v4

    long-to-int v4, v4

    const/16 v5, 0x10

    shl-int/2addr v5, v4

    add-int/lit8 v4, v4, 0x4

    .line 567
    invoke-virtual {v1, v4}, Lorg/concentus/EntropyCoder;->dec_bits(I)I

    move-result v4

    add-int/2addr v5, v4

    const/16 v17, 0x1

    add-int/lit8 v4, v5, -0x1

    const/4 v5, 0x3

    .line 568
    invoke-virtual {v1, v5}, Lorg/concentus/EntropyCoder;->dec_bits(I)I

    move-result v18

    .line 569
    invoke-virtual {v1}, Lorg/concentus/EntropyCoder;->tell()I

    move-result v5

    move/from16 p2, v4

    const/4 v4, 0x2

    add-int/2addr v5, v4

    if-gt v5, v8, :cond_b

    .line 570
    sget-object v5, Lorg/concentus/CeltTables;->tapset_icdf:[S

    invoke-virtual {v1, v5, v4}, Lorg/concentus/EntropyCoder;->dec_icdf([SI)I

    move-result v5

    goto :goto_8

    :cond_b
    const/4 v5, 0x0

    :goto_8
    add-int/lit8 v4, v18, 0x1

    mul-int/lit16 v4, v4, 0xc00

    move/from16 v18, v5

    move v5, v4

    move/from16 v4, p2

    goto :goto_9

    :cond_c
    const/16 v17, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v18, 0x0

    .line 574
    :goto_9
    invoke-virtual {v1}, Lorg/concentus/EntropyCoder;->tell()I

    move-result v23

    move/from16 p7, v4

    move/from16 p2, v18

    move/from16 v18, v5

    goto :goto_a

    :cond_d
    const/16 v17, 0x1

    move/from16 v23, v5

    const/16 p2, 0x0

    const/16 p7, 0x0

    const/16 v18, 0x0

    :goto_a
    const-wide/16 v4, 0x3

    if-lez v3, :cond_e

    move-object/from16 v24, v6

    add-int/lit8 v6, v23, 0x3

    if-gt v6, v8, :cond_f

    .line 578
    invoke-virtual {v1, v4, v5}, Lorg/concentus/EntropyCoder;->dec_bit_logp(J)I

    move-result v6

    .line 579
    invoke-virtual {v1}, Lorg/concentus/EntropyCoder;->tell()I

    move-result v23

    move/from16 v41, v6

    goto :goto_b

    :cond_e
    move-object/from16 v24, v6

    :cond_f
    const/16 v41, 0x0

    :goto_b
    if-eqz v41, :cond_10

    move/from16 v25, v9

    move/from16 v35, v38

    const/4 v6, 0x3

    goto :goto_c

    :cond_10
    move/from16 v25, v9

    const/4 v6, 0x3

    const/16 v35, 0x0

    :goto_c
    add-int/lit8 v9, v23, 0x3

    if-gt v9, v8, :cond_11

    .line 591
    invoke-virtual {v1, v4, v5}, Lorg/concentus/EntropyCoder;->dec_bit_logp(J)I

    move-result v4

    move v9, v4

    move/from16 v23, v6

    move/from16 v5, v18

    move-object/from16 v6, v24

    goto :goto_d

    :cond_11
    move/from16 v23, v6

    move/from16 v5, v18

    move-object/from16 v6, v24

    const/4 v9, 0x0

    :goto_d
    move-object v4, v11

    move/from16 p1, p7

    move/from16 p7, v5

    move/from16 v42, v19

    move/from16 v43, v20

    move v5, v7

    move-object/from16 v45, v6

    move/from16 v44, v22

    move/from16 v6, v44

    move/from16 v46, v7

    move-object/from16 v7, v45

    move-object/from16 v47, v14

    move-object/from16 v22, v16

    move/from16 v48, v21

    move v14, v8

    move v8, v9

    move/from16 v49, v25

    move-object v9, v1

    move-object/from16 v50, v15

    move v15, v10

    move v10, v12

    move-object v2, v11

    move v11, v3

    .line 593
    invoke-static/range {v4 .. v11}, Lorg/concentus/QuantizeBands;->unquant_coarse_energy(Lorg/concentus/CeltMode;II[IILorg/concentus/EntropyCoder;II)V

    .line 596
    new-array v11, v15, [I

    move/from16 v16, v46

    move/from16 v17, v44

    move/from16 v18, v41

    move-object/from16 v19, v11

    move/from16 v20, v3

    move-object/from16 v21, v1

    .line 597
    invoke-static/range {v16 .. v21}, Lorg/concentus/CeltCommon;->tf_decode(III[IILorg/concentus/EntropyCoder;)V

    .line 599
    invoke-virtual {v1}, Lorg/concentus/EntropyCoder;->tell()I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    const/4 v5, 0x5

    if-gt v4, v14, :cond_12

    .line 602
    sget-object v4, Lorg/concentus/CeltTables;->spread_icdf:[S

    invoke-virtual {v1, v4, v5}, Lorg/concentus/EntropyCoder;->dec_icdf([SI)I

    move-result v4

    move/from16 v51, v4

    goto :goto_e

    :cond_12
    const/16 v51, 0x2

    .line 605
    :goto_e
    new-array v4, v15, [I

    .line 607
    invoke-static {v2, v4, v3, v12}, Lorg/concentus/CeltCommon;->init_caps(Lorg/concentus/CeltMode;[III)V

    .line 609
    new-array v6, v15, [I

    shl-int/lit8 v7, v14, 0x3

    .line 613
    invoke-virtual {v1}, Lorg/concentus/EntropyCoder;->tell_frac()I

    move-result v8

    const/4 v9, 0x6

    move v5, v7

    move v10, v9

    move/from16 v52, v14

    move v9, v8

    move/from16 v8, v46

    :goto_f
    move/from16 v14, v44

    if-ge v8, v14, :cond_16

    add-int/lit8 v18, v8, 0x1

    .line 618
    aget-short v19, v22, v18

    aget-short v20, v22, v8

    sub-int v19, v19, v20

    mul-int v19, v19, v12

    move-object/from16 v44, v11

    shl-int v11, v19, v3

    move/from16 v53, v13

    shl-int/lit8 v13, v11, 0x3

    const/16 v0, 0x30

    .line 621
    invoke-static {v0, v11}, Lorg/concentus/Inlines;->IMAX(II)I

    move-result v0

    invoke-static {v13, v0}, Lorg/concentus/Inlines;->IMIN(II)I

    move-result v0

    move v11, v9

    move v9, v10

    const/4 v13, 0x0

    :goto_10
    shl-int/lit8 v17, v9, 0x3

    move/from16 v54, v12

    add-int v12, v11, v17

    if-ge v12, v5, :cond_14

    .line 624
    aget v12, v4, v8

    if-ge v13, v12, :cond_14

    int-to-long v11, v9

    .line 626
    invoke-virtual {v1, v11, v12}, Lorg/concentus/EntropyCoder;->dec_bit_logp(J)I

    move-result v9

    .line 627
    invoke-virtual {v1}, Lorg/concentus/EntropyCoder;->tell_frac()I

    move-result v11

    if-nez v9, :cond_13

    goto :goto_11

    :cond_13
    add-int/2addr v13, v0

    sub-int/2addr v5, v0

    move/from16 v12, v54

    const/4 v9, 0x1

    goto :goto_10

    :cond_14
    :goto_11
    move v9, v11

    .line 635
    aput v13, v6, v8

    if-lez v13, :cond_15

    add-int/lit8 v10, v10, -0x1

    const/4 v0, 0x2

    .line 638
    invoke-static {v0, v10}, Lorg/concentus/Inlines;->IMAX(II)I

    move-result v10

    :cond_15
    move-object/from16 v0, p0

    move/from16 v8, v18

    move-object/from16 v11, v44

    move/from16 v13, v53

    move/from16 v12, v54

    move/from16 v44, v14

    goto :goto_f

    :cond_16
    move-object/from16 v44, v11

    move/from16 v54, v12

    move/from16 v53, v13

    .line 642
    new-array v0, v15, [I

    const/16 v8, 0x30

    add-int/2addr v9, v8

    if-gt v9, v5, :cond_17

    .line 644
    sget-object v5, Lorg/concentus/CeltTables;->trim_icdf:[S

    const/4 v8, 0x7

    invoke-virtual {v1, v5, v8}, Lorg/concentus/EntropyCoder;->dec_icdf([SI)I

    move-result v5

    move/from16 v21, v5

    goto :goto_12

    :cond_17
    const/16 v21, 0x5

    .line 646
    :goto_12
    invoke-virtual {v1}, Lorg/concentus/EntropyCoder;->tell_frac()I

    move-result v5

    sub-int/2addr v7, v5

    const/4 v5, 0x1

    sub-int/2addr v7, v5

    if-eqz v41, :cond_18

    const/4 v5, 0x2

    if-lt v3, v5, :cond_18

    add-int/lit8 v5, v3, 0x2

    shl-int/lit8 v5, v5, 0x3

    if-lt v7, v5, :cond_18

    const/16 v5, 0x8

    move v11, v5

    goto :goto_13

    :cond_18
    const/4 v11, 0x0

    :goto_13
    sub-int v24, v7, v11

    .line 650
    new-array v13, v15, [I

    move-object/from16 v26, v13

    .line 651
    new-array v12, v15, [I

    move-object/from16 v28, v12

    .line 653
    new-instance v5, Lorg/concentus/BoxedValueInt;

    move-object/from16 v22, v5

    const/4 v7, 0x0

    invoke-direct {v5, v7}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    .line 654
    new-instance v8, Lorg/concentus/BoxedValueInt;

    move-object/from16 v23, v8

    invoke-direct {v8, v7}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    .line 655
    new-instance v9, Lorg/concentus/BoxedValueInt;

    move-object/from16 v25, v9

    invoke-direct {v9, v7}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v32, 0x0

    move-object/from16 v16, v2

    move/from16 v17, v46

    move/from16 v18, v14

    move-object/from16 v19, v6

    move-object/from16 v20, v4

    move-object/from16 v27, v0

    move/from16 v29, v54

    move/from16 v30, v3

    move-object/from16 v31, v1

    .line 656
    invoke-static/range {v16 .. v34}, Lorg/concentus/Rate;->compute_allocation(Lorg/concentus/CeltMode;II[I[IILorg/concentus/BoxedValueInt;Lorg/concentus/BoxedValueInt;ILorg/concentus/BoxedValueInt;[I[I[IIILorg/concentus/EntropyCoder;III)I

    move-result v34

    .line 659
    iget v10, v5, Lorg/concentus/BoxedValueInt;->Val:I

    .line 660
    iget v8, v8, Lorg/concentus/BoxedValueInt;->Val:I

    .line 661
    iget v9, v9, Lorg/concentus/BoxedValueInt;->Val:I

    move-object v4, v2

    move/from16 v5, v46

    move v6, v14

    move-object/from16 v7, v45

    move/from16 v27, v8

    move-object v8, v0

    move/from16 v31, v9

    move-object v9, v1

    move/from16 v28, v10

    move/from16 v10, v54

    .line 663
    invoke-static/range {v4 .. v10}, Lorg/concentus/QuantizeBands;->unquant_fine_energy(Lorg/concentus/CeltMode;II[I[ILorg/concentus/EntropyCoder;I)V

    const/4 v4, 0x0

    move-object/from16 v10, p0

    .line 667
    :goto_14
    iget-object v5, v10, Lorg/concentus/CeltDecoder;->decode_mem:[[I

    aget-object v5, v5, v4

    div-int/lit8 v9, v49, 0x2

    add-int v6, v43, v9

    move/from16 v9, v48

    const/4 v7, 0x0

    invoke-static {v5, v9, v7, v6}, Lorg/concentus/Arrays;->MemMove([IIII)V

    const/4 v5, 0x1

    add-int/2addr v4, v5

    move/from16 v8, v53

    if-lt v4, v8, :cond_29

    mul-int v6, v54, v15

    .line 671
    new-array v4, v6, [S

    move/from16 v5, v54

    .line 673
    invoke-static {v5, v9}, Lorg/concentus/Arrays;->InitTwoDimensionalArrayInt(II)[[I

    move-result-object v43

    .line 678
    new-instance v7, Lorg/concentus/BoxedValueInt;

    move-object/from16 v16, v2

    iget v2, v10, Lorg/concentus/CeltDecoder;->rng:I

    invoke-direct {v7, v2}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    const/4 v2, 0x0

    .line 679
    aget-object v20, v43, v2

    const/4 v2, 0x2

    if-ne v5, v2, :cond_19

    const/4 v2, 0x1

    aget-object v17, v43, v2

    move-object/from16 v21, v17

    goto :goto_15

    :cond_19
    const/4 v2, 0x0

    move-object/from16 v21, v2

    :goto_15
    move-object/from16 v2, v16

    mul-int/lit8 v16, p3, 0x40

    sub-int v30, v16, v11

    const/16 v16, 0x0

    const/16 v23, 0x0

    move-object/from16 v17, v2

    move/from16 v18, v46

    move/from16 v19, v14

    move-object/from16 v22, v4

    move-object/from16 v24, v13

    move/from16 v25, v35

    move/from16 v26, v51

    move-object/from16 v29, v44

    move-object/from16 v32, v1

    move/from16 v33, v3

    move-object/from16 v35, v7

    invoke-static/range {v16 .. v35}, Lorg/concentus/Bands;->quant_all_bands(ILorg/concentus/CeltMode;II[I[I[S[[I[IIIII[IIILorg/concentus/EntropyCoder;IILorg/concentus/BoxedValueInt;)V

    .line 682
    iget v7, v7, Lorg/concentus/BoxedValueInt;->Val:I

    iput v7, v10, Lorg/concentus/CeltDecoder;->rng:I

    if-lez v11, :cond_1a

    const/4 v11, 0x1

    .line 685
    invoke-virtual {v1, v11}, Lorg/concentus/EntropyCoder;->dec_bits(I)I

    move-result v7

    move/from16 v16, v7

    goto :goto_16

    :cond_1a
    const/4 v11, 0x1

    const/16 v16, 0x0

    .line 689
    :goto_16
    invoke-virtual {v1}, Lorg/concentus/EntropyCoder;->tell()I

    move-result v7

    sub-int v17, v52, v7

    move-object/from16 v18, v4

    move-object v4, v2

    move/from16 v19, v5

    move/from16 v5, v46

    move v7, v6

    move v6, v14

    move/from16 v29, v15

    move v15, v7

    move-object/from16 v7, v45

    move/from16 v30, v8

    move-object v8, v0

    move v0, v9

    move-object v9, v12

    move-object v12, v10

    move/from16 v10, v17

    move/from16 v31, v11

    move-object v11, v1

    move-object/from16 v32, v1

    move-object v1, v12

    move/from16 v54, v19

    move/from16 v12, v54

    .line 688
    invoke-static/range {v4 .. v12}, Lorg/concentus/QuantizeBands;->unquant_energy_finalise(Lorg/concentus/CeltMode;II[I[I[IILorg/concentus/EntropyCoder;I)V

    if-eqz v16, :cond_1b

    .line 692
    iget v4, v1, Lorg/concentus/CeltDecoder;->rng:I

    move-object/from16 v16, v2

    move-object/from16 v17, v43

    move/from16 v19, v3

    move/from16 v20, v54

    move/from16 v21, v0

    move/from16 v22, v46

    move/from16 v23, v14

    move-object/from16 v24, v45

    move-object/from16 v25, p6

    move-object/from16 v26, v36

    move-object/from16 v27, v13

    move/from16 v28, v4

    invoke-static/range {v16 .. v28}, Lorg/concentus/Bands;->anti_collapse(Lorg/concentus/CeltMode;[[I[SIIIII[I[I[I[II)V

    :cond_1b
    const/16 v33, -0x7000

    if-eqz v40, :cond_1c

    const/4 v4, 0x0

    :goto_17
    if-ge v4, v15, :cond_1c

    move-object/from16 v13, v45

    .line 698
    aput v33, v13, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_1c
    move-object/from16 v13, v45

    .line 702
    iget v15, v1, Lorg/concentus/CeltDecoder;->downsample:I

    move-object v4, v2

    move-object/from16 v5, v43

    move-object/from16 v6, v50

    move-object/from16 v7, v47

    move-object v8, v13

    move/from16 v9, v46

    move/from16 v10, v39

    move/from16 v11, v54

    move/from16 v12, v30

    move-object/from16 v56, v13

    move/from16 v55, v30

    move/from16 v13, v41

    move/from16 v45, v14

    move-object/from16 v30, v47

    move/from16 v57, v52

    move v14, v3

    move/from16 v58, v29

    move-object/from16 v29, v50

    move/from16 v16, v40

    invoke-static/range {v4 .. v16}, Lorg/concentus/CeltCommon;->celt_synthesis(Lorg/concentus/CeltMode;[[I[[I[I[IIIIIIIII)V

    const/4 v4, 0x0

    .line 707
    :goto_18
    iget v5, v1, Lorg/concentus/CeltDecoder;->postfilter_period:I

    const/16 v6, 0xf

    invoke-static {v5, v6}, Lorg/concentus/Inlines;->IMAX(II)I

    move-result v5

    iput v5, v1, Lorg/concentus/CeltDecoder;->postfilter_period:I

    .line 708
    iget v5, v1, Lorg/concentus/CeltDecoder;->postfilter_period_old:I

    invoke-static {v5, v6}, Lorg/concentus/Inlines;->IMAX(II)I

    move-result v5

    iput v5, v1, Lorg/concentus/CeltDecoder;->postfilter_period_old:I

    .line 709
    aget-object v18, v29, v4

    aget v19, v30, v4

    iget v6, v1, Lorg/concentus/CeltDecoder;->postfilter_period:I

    iget v7, v2, Lorg/concentus/CeltMode;->shortMdctSize:I

    iget v8, v1, Lorg/concentus/CeltDecoder;->postfilter_gain_old:I

    iget v9, v1, Lorg/concentus/CeltDecoder;->postfilter_gain:I

    iget v10, v1, Lorg/concentus/CeltDecoder;->postfilter_tapset_old:I

    iget v11, v1, Lorg/concentus/CeltDecoder;->postfilter_tapset:I

    iget-object v12, v2, Lorg/concentus/CeltMode;->window:[I

    move-object/from16 v16, v18

    move/from16 v17, v19

    move/from16 v20, v5

    move/from16 v21, v6

    move/from16 v22, v7

    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v25, v10

    move/from16 v26, v11

    move-object/from16 v27, v12

    move/from16 v28, v49

    invoke-static/range {v16 .. v28}, Lorg/concentus/CeltCommon;->comb_filter([II[IIIIIIIII[II)V

    if-eqz v3, :cond_1d

    .line 713
    aget-object v16, v29, v4

    aget v5, v30, v4

    iget v6, v2, Lorg/concentus/CeltMode;->shortMdctSize:I

    add-int v17, v5, v6

    aget-object v18, v29, v4

    aget v5, v30, v4

    iget v6, v2, Lorg/concentus/CeltMode;->shortMdctSize:I

    add-int v19, v5, v6

    iget v5, v1, Lorg/concentus/CeltDecoder;->postfilter_period:I

    iget v6, v2, Lorg/concentus/CeltMode;->shortMdctSize:I

    sub-int v22, v0, v6

    iget v6, v1, Lorg/concentus/CeltDecoder;->postfilter_gain:I

    iget v7, v1, Lorg/concentus/CeltDecoder;->postfilter_tapset:I

    iget-object v8, v2, Lorg/concentus/CeltMode;->window:[I

    move/from16 v20, v5

    move/from16 v21, p1

    move/from16 v23, v6

    move/from16 v24, p7

    move/from16 v25, v7

    move/from16 v26, p2

    move-object/from16 v27, v8

    move/from16 v28, v49

    invoke-static/range {v16 .. v28}, Lorg/concentus/CeltCommon;->comb_filter([II[IIIIIIIII[II)V

    :cond_1d
    add-int/lit8 v4, v4, 0x1

    move/from16 v9, v55

    if-lt v4, v9, :cond_28

    .line 722
    iget v4, v1, Lorg/concentus/CeltDecoder;->postfilter_period:I

    iput v4, v1, Lorg/concentus/CeltDecoder;->postfilter_period_old:I

    .line 723
    iget v4, v1, Lorg/concentus/CeltDecoder;->postfilter_gain:I

    iput v4, v1, Lorg/concentus/CeltDecoder;->postfilter_gain_old:I

    .line 724
    iget v4, v1, Lorg/concentus/CeltDecoder;->postfilter_tapset:I

    iput v4, v1, Lorg/concentus/CeltDecoder;->postfilter_tapset_old:I

    move/from16 v5, p1

    .line 725
    iput v5, v1, Lorg/concentus/CeltDecoder;->postfilter_period:I

    move/from16 v6, p7

    .line 726
    iput v6, v1, Lorg/concentus/CeltDecoder;->postfilter_gain:I

    move/from16 v7, p2

    .line 727
    iput v7, v1, Lorg/concentus/CeltDecoder;->postfilter_tapset:I

    if-eqz v3, :cond_1e

    .line 729
    iput v5, v1, Lorg/concentus/CeltDecoder;->postfilter_period_old:I

    .line 730
    iput v6, v1, Lorg/concentus/CeltDecoder;->postfilter_gain_old:I

    .line 731
    iput v7, v1, Lorg/concentus/CeltDecoder;->postfilter_tapset_old:I

    :cond_1e
    move/from16 v10, v54

    const/4 v14, 0x1

    move-object/from16 v8, v56

    move/from16 v15, v58

    const/4 v3, 0x0

    if-ne v10, v14, :cond_1f

    .line 735
    invoke-static {v8, v3, v8, v15, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1f
    if-nez v41, :cond_21

    mul-int/lit8 v10, v15, 0x2

    move-object/from16 v11, p6

    move-object/from16 v12, v36

    .line 741
    invoke-static {v11, v3, v12, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 742
    invoke-static {v8, v3, v11, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 746
    iget v3, v1, Lorg/concentus/CeltDecoder;->loss_count:I

    const/16 v4, 0xa

    if-ge v3, v4, :cond_20

    goto :goto_19

    :cond_20
    const/16 v38, 0x400

    :goto_19
    const/4 v3, 0x0

    :goto_1a
    if-ge v3, v10, :cond_22

    .line 752
    aget v4, v37, v3

    add-int v4, v4, v38

    aget v5, v8, v3

    invoke-static {v4, v5}, Lorg/concentus/Inlines;->MIN16(II)I

    move-result v4

    aput v4, v37, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_21
    move-object/from16 v11, p6

    move-object/from16 v12, v36

    const/4 v3, 0x0

    :goto_1b
    mul-int/lit8 v10, v15, 0x2

    if-ge v3, v10, :cond_22

    .line 756
    aget v4, v11, v3

    aget v5, v8, v3

    invoke-static {v4, v5}, Lorg/concentus/Inlines;->MIN16(II)I

    move-result v4

    aput v4, v11, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_22
    const/4 v7, 0x0

    :goto_1c
    move/from16 v13, v46

    const/4 v3, 0x0

    :goto_1d
    if-ge v3, v13, :cond_23

    mul-int v10, v7, v15

    add-int/2addr v10, v3

    const/4 v4, 0x0

    .line 762
    aput v4, v8, v10

    .line 763
    aput v33, v12, v10

    aput v33, v11, v10

    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :cond_23
    const/4 v4, 0x0

    move/from16 v6, v45

    :goto_1e
    if-ge v6, v15, :cond_24

    mul-int v10, v7, v15

    add-int/2addr v10, v6

    .line 766
    aput v4, v8, v10

    .line 767
    aput v33, v12, v10

    aput v33, v11, v10

    add-int/lit8 v6, v6, 0x1

    const/4 v4, 0x0

    goto :goto_1e

    :cond_24
    add-int/lit8 v7, v7, 0x1

    const/4 v3, 0x2

    if-lt v7, v3, :cond_27

    move-object/from16 v10, v32

    .line 770
    iget-wide v3, v10, Lorg/concentus/EntropyCoder;->rng:J

    long-to-int v3, v3

    iput v3, v1, Lorg/concentus/CeltDecoder;->rng:I

    .line 772
    iget v3, v1, Lorg/concentus/CeltDecoder;->downsample:I

    iget-object v11, v2, Lorg/concentus/CeltMode;->preemph:[I

    iget-object v12, v1, Lorg/concentus/CeltDecoder;->preemph_memD:[I

    move-object/from16 v4, v29

    move-object/from16 v5, v30

    move-object/from16 v6, p4

    move/from16 v7, p5

    move v8, v0

    move-object/from16 v16, v10

    move v10, v3

    move/from16 v13, p8

    invoke-static/range {v4 .. v13}, Lorg/concentus/CeltCommon;->deemphasis([[I[I[SIIII[I[II)V

    const/4 v4, 0x0

    .line 773
    iput v4, v1, Lorg/concentus/CeltDecoder;->loss_count:I

    .line 775
    invoke-virtual/range {v16 .. v16}, Lorg/concentus/EntropyCoder;->tell()I

    move-result v0

    move/from16 v5, v57

    if-le v0, v5, :cond_25

    .line 776
    sget v0, Lorg/concentus/OpusError;->OPUS_INTERNAL_ERROR:I

    return v0

    .line 778
    :cond_25
    invoke-virtual/range {v16 .. v16}, Lorg/concentus/EntropyCoder;->get_error()I

    move-result v0

    if-eqz v0, :cond_26

    .line 779
    iput v14, v1, Lorg/concentus/CeltDecoder;->error:I

    .line 781
    :cond_26
    iget v0, v1, Lorg/concentus/CeltDecoder;->downsample:I

    div-int v5, v42, v0

    return v5

    :cond_27
    move/from16 v46, v13

    goto :goto_1c

    :cond_28
    move/from16 v55, v9

    goto/16 :goto_18

    :cond_29
    move-object/from16 v16, v1

    move/from16 v19, v7

    move-object v1, v10

    move/from16 v59, v9

    move v9, v8

    move-object/from16 v8, v45

    move/from16 v45, v14

    move/from16 v14, v59

    move/from16 v53, v9

    move/from16 v48, v14

    move-object/from16 v1, v16

    move/from16 v14, v45

    move-object/from16 v45, v8

    goto/16 :goto_14

    :cond_2a
    :goto_1f
    move-object v1, v0

    move-object v2, v11

    move v9, v13

    move-object/from16 v30, v14

    move-object/from16 v29, v15

    move/from16 v42, v19

    move/from16 v14, v21

    .line 524
    invoke-virtual {v1, v14, v3}, Lorg/concentus/CeltDecoder;->celt_decode_lost(II)V

    .line 525
    iget v10, v1, Lorg/concentus/CeltDecoder;->downsample:I

    iget-object v11, v2, Lorg/concentus/CeltMode;->preemph:[I

    iget-object v12, v1, Lorg/concentus/CeltDecoder;->preemph_memD:[I

    move-object/from16 v4, v29

    move-object/from16 v5, v30

    move-object/from16 v6, p4

    move/from16 v7, p5

    move v8, v14

    move/from16 v13, p8

    invoke-static/range {v4 .. v13}, Lorg/concentus/CeltCommon;->deemphasis([[I[I[SIIII[I[II)V

    .line 527
    iget v0, v1, Lorg/concentus/CeltDecoder;->downsample:I

    div-int v5, v42, v0

    return v5

    :cond_2b
    move/from16 v5, p2

    move-object v1, v0

    move-object/from16 v30, v14

    move-object/from16 v29, v15

    move/from16 v42, v19

    move/from16 v14, v21

    move v15, v10

    move/from16 v2, p3

    move/from16 v18, v8

    move v8, v14

    move-object/from16 v15, v29

    move-object/from16 v14, v30

    move-object/from16 v1, p1

    goto/16 :goto_2

    :cond_2c
    :goto_20
    move-object v1, v0

    .line 508
    sget v0, Lorg/concentus/OpusError;->OPUS_BAD_ARG:I

    return v0
.end method

.method celt_decoder_init(II)I
    .locals 1

    .line 141
    sget-object v0, Lorg/concentus/CeltMode;->mode48000_960_120:Lorg/concentus/CeltMode;

    invoke-direct {p0, v0, p2}, Lorg/concentus/CeltDecoder;->opus_custom_decoder_init(Lorg/concentus/CeltMode;I)I

    move-result p2

    .line 142
    sget v0, Lorg/concentus/OpusError;->OPUS_OK:I

    if-eq p2, v0, :cond_0

    return p2

    .line 145
    :cond_0
    invoke-static {p1}, Lorg/concentus/CeltCommon;->resampling_factor(I)I

    move-result p1

    iput p1, p0, Lorg/concentus/CeltDecoder;->downsample:I

    if-nez p1, :cond_1

    .line 147
    sget p1, Lorg/concentus/OpusError;->OPUS_BAD_ARG:I

    return p1

    .line 149
    :cond_1
    sget p1, Lorg/concentus/OpusError;->OPUS_OK:I

    return p1
.end method
