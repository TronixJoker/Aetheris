.class public Lorg/concentus/OpusMSEncoder;
.super Ljava/lang/Object;
.source "OpusMSEncoder.java"


# static fields
.field private static final diff_table:[I


# instance fields
.field private final MS_FRAME_TMP:I

.field application:Lorg/concentus/OpusApplication;

.field bitrate_bps:I

.field encoders:[Lorg/concentus/OpusEncoder;

.field final layout:Lorg/concentus/ChannelLayout;

.field lfe_stream:I

.field preemph_mem:[I

.field final subframe_mem:[F

.field surround:I

.field variable_duration:Lorg/concentus/OpusFramesize;

.field window_mem:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    .line 129
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/concentus/OpusMSEncoder;->diff_table:[I

    return-void

    :array_0
    .array-data 4
        0x200
        0x12c
        0xa5
        0x57
        0x2d
        0x17
        0xb
        0x6
        0x3
    .end array-data
.end method

.method private constructor <init>(II)V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lorg/concentus/ChannelLayout;

    invoke-direct {v0}, Lorg/concentus/ChannelLayout;-><init>()V

    iput-object v0, p0, Lorg/concentus/OpusMSEncoder;->layout:Lorg/concentus/ChannelLayout;

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lorg/concentus/OpusMSEncoder;->lfe_stream:I

    .line 41
    sget-object v1, Lorg/concentus/OpusApplication;->OPUS_APPLICATION_AUDIO:Lorg/concentus/OpusApplication;

    iput-object v1, p0, Lorg/concentus/OpusMSEncoder;->application:Lorg/concentus/OpusApplication;

    .line 42
    sget-object v1, Lorg/concentus/OpusFramesize;->OPUS_FRAMESIZE_UNKNOWN:Lorg/concentus/OpusFramesize;

    iput-object v1, p0, Lorg/concentus/OpusMSEncoder;->variable_duration:Lorg/concentus/OpusFramesize;

    .line 43
    iput v0, p0, Lorg/concentus/OpusMSEncoder;->surround:I

    .line 44
    iput v0, p0, Lorg/concentus/OpusMSEncoder;->bitrate_bps:I

    const/4 v1, 0x3

    .line 45
    new-array v1, v1, [F

    iput-object v1, p0, Lorg/concentus/OpusMSEncoder;->subframe_mem:[F

    const/4 v1, 0x0

    .line 46
    iput-object v1, p0, Lorg/concentus/OpusMSEncoder;->encoders:[Lorg/concentus/OpusEncoder;

    .line 47
    iput-object v1, p0, Lorg/concentus/OpusMSEncoder;->window_mem:[I

    .line 48
    iput-object v1, p0, Lorg/concentus/OpusMSEncoder;->preemph_mem:[I

    const/16 v1, 0xef8

    .line 536
    iput v1, p0, Lorg/concentus/OpusMSEncoder;->MS_FRAME_TMP:I

    const/4 v1, 0x1

    if-lt p1, v1, :cond_1

    if-gt p2, p1, :cond_1

    if-ltz p2, :cond_1

    .line 55
    new-array p2, p1, [Lorg/concentus/OpusEncoder;

    iput-object p2, p0, Lorg/concentus/OpusMSEncoder;->encoders:[Lorg/concentus/OpusEncoder;

    :goto_0
    if-ge v0, p1, :cond_0

    .line 57
    iget-object p2, p0, Lorg/concentus/OpusMSEncoder;->encoders:[Lorg/concentus/OpusEncoder;

    new-instance v1, Lorg/concentus/OpusEncoder;

    invoke-direct {v1}, Lorg/concentus/OpusEncoder;-><init>()V

    aput-object v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    mul-int/lit8 p2, p1, 0x78

    .line 60
    new-array p2, p2, [I

    iput-object p2, p0, Lorg/concentus/OpusMSEncoder;->window_mem:[I

    .line 61
    new-array p1, p1, [I

    iput-object p1, p0, Lorg/concentus/OpusMSEncoder;->preemph_mem:[I

    return-void

    .line 52
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid channel count in MS encoder"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static Create(IIII[SLorg/concentus/OpusApplication;)Lorg/concentus/OpusMSEncoder;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/concentus/OpusException;
        }
    .end annotation

    const/16 v0, 0xff

    if-gt p1, v0, :cond_2

    const/4 v0, 0x1

    if-lt p1, v0, :cond_2

    if-gt p3, p2, :cond_2

    if-lt p2, v0, :cond_2

    if-ltz p3, :cond_2

    rsub-int v0, p3, 0xff

    if-gt p2, v0, :cond_2

    .line 406
    new-instance v0, Lorg/concentus/OpusMSEncoder;

    invoke-direct {v0, p2, p3}, Lorg/concentus/OpusMSEncoder;-><init>(II)V

    const/4 v8, 0x0

    move-object v1, v0

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 407
    invoke-virtual/range {v1 .. v8}, Lorg/concentus/OpusMSEncoder;->opus_multistream_encoder_init(IIII[SLorg/concentus/OpusApplication;I)I

    move-result p0

    .line 408
    sget p1, Lorg/concentus/OpusError;->OPUS_OK:I

    if-eq p0, p1, :cond_1

    .line 409
    sget p1, Lorg/concentus/OpusError;->OPUS_BAD_ARG:I

    if-ne p0, p1, :cond_0

    .line 410
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "OPUS_BAD_ARG when creating MS encoder"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 412
    :cond_0
    new-instance p1, Lorg/concentus/OpusException;

    const-string p2, "Could not create MS encoder"

    invoke-direct {p1, p2, p0}, Lorg/concentus/OpusException;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_1
    return-object v0

    .line 404
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid channel / stream configuration"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static CreateSurround(IIILorg/concentus/BoxedValueInt;Lorg/concentus/BoxedValueInt;[SLorg/concentus/OpusApplication;)Lorg/concentus/OpusMSEncoder;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/concentus/OpusException;
        }
    .end annotation

    const/16 v0, 0xff

    if-gt p1, v0, :cond_2

    const/4 v0, 0x1

    if-lt p1, v0, :cond_2

    .line 450
    sget-object v0, Lorg/concentus/OpusApplication;->OPUS_APPLICATION_UNIMPLEMENTED:Lorg/concentus/OpusApplication;

    if-eq p6, v0, :cond_2

    .line 453
    new-instance v0, Lorg/concentus/BoxedValueInt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    .line 454
    new-instance v3, Lorg/concentus/BoxedValueInt;

    invoke-direct {v3, v1}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    .line 455
    invoke-static {p1, p2, v0, v3}, Lorg/concentus/OpusMSEncoder;->GetStreamCount(IILorg/concentus/BoxedValueInt;Lorg/concentus/BoxedValueInt;)V

    .line 457
    new-instance v8, Lorg/concentus/OpusMSEncoder;

    iget v0, v0, Lorg/concentus/BoxedValueInt;->Val:I

    iget v1, v3, Lorg/concentus/BoxedValueInt;->Val:I

    invoke-direct {v8, v0, v1}, Lorg/concentus/OpusMSEncoder;-><init>(II)V

    move-object v0, v8

    move v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 458
    invoke-virtual/range {v0 .. v7}, Lorg/concentus/OpusMSEncoder;->opus_multistream_surround_encoder_init(IIILorg/concentus/BoxedValueInt;Lorg/concentus/BoxedValueInt;[SLorg/concentus/OpusApplication;)I

    move-result v0

    .line 459
    sget v1, Lorg/concentus/OpusError;->OPUS_OK:I

    if-eq v0, v1, :cond_1

    .line 460
    sget v1, Lorg/concentus/OpusError;->OPUS_BAD_ARG:I

    if-ne v0, v1, :cond_0

    .line 461
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad argument passed to CreateSurround"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 463
    :cond_0
    new-instance v1, Lorg/concentus/OpusException;

    const-string v2, "Could not create multistream encoder"

    invoke-direct {v1, v2, v0}, Lorg/concentus/OpusException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_1
    return-object v8

    .line 451
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid channel count or application"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static GetStreamCount(IILorg/concentus/BoxedValueInt;Lorg/concentus/BoxedValueInt;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_2

    if-ne p0, v1, :cond_0

    .line 420
    iput v1, p2, Lorg/concentus/BoxedValueInt;->Val:I

    .line 421
    iput v0, p3, Lorg/concentus/BoxedValueInt;->Val:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    if-ne p0, p1, :cond_1

    .line 423
    iput v1, p2, Lorg/concentus/BoxedValueInt;->Val:I

    .line 424
    iput v1, p3, Lorg/concentus/BoxedValueInt;->Val:I

    goto :goto_0

    .line 426
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "More than 2 channels requires custom mappings"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    if-ne p1, v1, :cond_3

    const/16 v2, 0x8

    if-gt p0, v2, :cond_3

    if-lt p0, v1, :cond_3

    .line 429
    sget-object p1, Lorg/concentus/VorbisLayout;->vorbis_mappings:[Lorg/concentus/VorbisLayout;

    sub-int/2addr p0, v1

    aget-object p1, p1, p0

    iget p1, p1, Lorg/concentus/VorbisLayout;->nb_streams:I

    iput p1, p2, Lorg/concentus/BoxedValueInt;->Val:I

    .line 430
    sget-object p1, Lorg/concentus/VorbisLayout;->vorbis_mappings:[Lorg/concentus/VorbisLayout;

    aget-object p0, p1, p0

    iget p0, p0, Lorg/concentus/VorbisLayout;->nb_coupled_streams:I

    iput p0, p3, Lorg/concentus/BoxedValueInt;->Val:I

    goto :goto_0

    :cond_3
    const/16 v1, 0xff

    if-ne p1, v1, :cond_4

    .line 432
    iput p0, p2, Lorg/concentus/BoxedValueInt;->Val:I

    .line 433
    iput v0, p3, Lorg/concentus/BoxedValueInt;->Val:I

    :goto_0
    return-void

    .line 435
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid mapping family"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static channel_pos(I[I)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x4

    if-ne p0, v4, :cond_0

    .line 98
    aput v2, p1, v0

    .line 99
    aput v3, p1, v2

    .line 100
    aput v2, p1, v1

    .line 101
    aput v3, p1, v3

    goto :goto_1

    :cond_0
    const/4 v5, 0x5

    if-eq p0, v3, :cond_3

    if-eq p0, v5, :cond_3

    const/4 v6, 0x6

    if-ne p0, v6, :cond_1

    goto :goto_0

    :cond_1
    const/4 v7, 0x7

    if-ne p0, v7, :cond_2

    .line 110
    aput v2, p1, v0

    .line 111
    aput v1, p1, v2

    .line 112
    aput v3, p1, v1

    .line 113
    aput v2, p1, v3

    .line 114
    aput v3, p1, v4

    .line 115
    aput v1, p1, v5

    .line 116
    aput v0, p1, v6

    goto :goto_1

    :cond_2
    const/16 v8, 0x8

    if-ne p0, v8, :cond_4

    .line 118
    aput v2, p1, v0

    .line 119
    aput v1, p1, v2

    .line 120
    aput v3, p1, v1

    .line 121
    aput v2, p1, v3

    .line 122
    aput v3, p1, v4

    .line 123
    aput v2, p1, v5

    .line 124
    aput v3, p1, v6

    .line 125
    aput v0, p1, v7

    goto :goto_1

    .line 103
    :cond_3
    :goto_0
    aput v2, p1, v0

    .line 104
    aput v1, p1, v2

    .line 105
    aput v3, p1, v1

    .line 106
    aput v2, p1, v3

    .line 107
    aput v3, p1, v4

    .line 108
    aput v0, p1, v5

    :cond_4
    :goto_1
    return-void
.end method

.method static logSum(II)I
    .locals 4

    if-le p0, p1, :cond_0

    .line 143
    invoke-static {p0}, Lorg/concentus/Inlines;->EXTEND32(I)I

    move-result v0

    invoke-static {p1}, Lorg/concentus/Inlines;->EXTEND32(I)I

    move-result p1

    invoke-static {v0, p1}, Lorg/concentus/Inlines;->SUB32(II)I

    move-result p1

    goto :goto_0

    .line 146
    :cond_0
    invoke-static {p1}, Lorg/concentus/Inlines;->EXTEND32(I)I

    move-result v0

    invoke-static {p0}, Lorg/concentus/Inlines;->EXTEND32(I)I

    move-result p0

    invoke-static {v0, p0}, Lorg/concentus/Inlines;->SUB32(II)I

    move-result p0

    move v3, p1

    move p1, p0

    move p0, v3

    :goto_0
    const/16 v0, 0x2000

    if-lt p1, v0, :cond_1

    return p0

    :cond_1
    const/16 v0, 0x9

    .line 151
    invoke-static {p1, v0}, Lorg/concentus/Inlines;->SHR32(II)I

    move-result v1

    .line 152
    invoke-static {v1, v0}, Lorg/concentus/Inlines;->SHL16(II)I

    move-result v0

    sub-int/2addr p1, v0

    const/4 v0, 0x6

    invoke-static {p1, v0}, Lorg/concentus/Inlines;->SHL16(II)I

    move-result p1

    .line 153
    sget-object v0, Lorg/concentus/OpusMSEncoder;->diff_table:[I

    aget v2, v0, v1

    add-int/2addr p0, v2

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    invoke-static {v0, v2}, Lorg/concentus/Inlines;->SUB16(II)I

    move-result v0

    invoke-static {p1, v0}, Lorg/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method static opus_copy_channel_in_short([SII[SIIII)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p7, :cond_0

    mul-int v1, v0, p2

    add-int/2addr v1, p1

    mul-int v2, v0, p5

    add-int/2addr v2, p6

    add-int/2addr v2, p4

    .line 739
    aget-short v2, p3, v2

    aput-short v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static surround_analysis(Lorg/concentus/CeltMode;[SI[I[I[IIIII)V
    .locals 28

    move-object/from16 v7, p0

    move-object/from16 v8, p4

    move/from16 v6, p6

    move/from16 v5, p7

    move/from16 v4, p8

    const/16 v0, 0x8

    .line 168
    new-array v3, v0, [I

    fill-array-data v3, :array_0

    const/4 v2, 0x1

    const/16 v1, 0x15

    .line 172
    invoke-static {v2, v1}, Lorg/concentus/Arrays;->InitTwoDimensionalArrayInt(II)[[I

    move-result-object v18

    const/4 v0, 0x3

    .line 173
    invoke-static {v0, v1}, Lorg/concentus/Arrays;->InitTwoDimensionalArrayInt(II)[[I

    move-result-object v19

    .line 178
    invoke-static/range {p9 .. p9}, Lorg/concentus/CeltCommon;->resampling_factor(I)I

    move-result v15

    mul-int v14, v6, v15

    const/4 v13, 0x0

    move v12, v13

    .line 181
    :goto_0
    iget v9, v7, Lorg/concentus/CeltMode;->maxLM:I

    if-ge v12, v9, :cond_1

    .line 182
    iget v9, v7, Lorg/concentus/CeltMode;->shortMdctSize:I

    shl-int/2addr v9, v12

    if-ne v9, v14, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    add-int v9, v14, v5

    .line 187
    new-array v11, v9, [I

    .line 188
    new-array v10, v6, [S

    .line 189
    invoke-static {v2, v14}, Lorg/concentus/Arrays;->InitTwoDimensionalArrayInt(II)[[I

    move-result-object v20

    .line 191
    invoke-static {v4, v3}, Lorg/concentus/OpusMSEncoder;->channel_pos(I[I)V

    move v9, v13

    :goto_2
    if-ge v9, v0, :cond_3

    move v0, v13

    :goto_3
    if-ge v0, v1, :cond_2

    .line 195
    aget-object v16, v19, v9

    const/16 v17, -0x7000

    aput v17, v16, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v9, v9, 0x1

    const/4 v0, 0x3

    goto :goto_2

    :cond_3
    move v0, v13

    :goto_4
    const/4 v9, 0x2

    if-ge v0, v4, :cond_c

    mul-int v4, v0, v5

    .line 200
    invoke-static {v8, v4, v11, v13, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object v9, v10

    move-object/from16 v21, v10

    move/from16 v10, v16

    move-object/from16 p9, v11

    move/from16 v11, v17

    move/from16 v22, v12

    move-object/from16 v12, p1

    move/from16 v23, v13

    move/from16 v13, p2

    move/from16 v24, v14

    move/from16 v14, p8

    move/from16 v25, v15

    move v15, v0

    move/from16 v16, p6

    .line 201
    invoke-static/range {v9 .. v16}, Lorg/concentus/OpusMSEncoder;->opus_copy_channel_in_short([SII[SIIII)V

    .line 202
    new-instance v15, Lorg/concentus/BoxedValueInt;

    aget v9, p5, v0

    invoke-direct {v15, v9}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    .line 203
    iget-object v14, v7, Lorg/concentus/CeltMode;->preemph:[I

    const/16 v17, 0x0

    const/4 v13, 0x1

    move-object/from16 v9, v21

    move-object/from16 v10, p9

    move/from16 v11, p7

    move/from16 v12, v24

    move-object/from16 v16, v14

    move/from16 v14, v25

    move-object/from16 v26, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v26

    invoke-static/range {v9 .. v17}, Lorg/concentus/CeltCommon;->celt_preemphasis([S[IIIII[ILorg/concentus/BoxedValueInt;I)V

    move-object/from16 v9, v26

    .line 204
    iget v9, v9, Lorg/concentus/BoxedValueInt;->Val:I

    aput v9, p5, v0

    .line 206
    iget-object v9, v7, Lorg/concentus/CeltMode;->mdct:Lorg/concentus/MDCTLookup;

    aget-object v12, v20, v23

    iget-object v14, v7, Lorg/concentus/CeltMode;->window:[I

    iget v10, v7, Lorg/concentus/CeltMode;->maxLM:I

    sub-int v16, v10, v22

    const/16 v17, 0x1

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object/from16 v10, p9

    move/from16 v15, p7

    invoke-static/range {v9 .. v17}, Lorg/concentus/MDCT;->clt_mdct_forward(Lorg/concentus/MDCTLookup;[II[II[IIII)V

    move/from16 v9, v25

    if-eq v9, v2, :cond_5

    move/from16 v13, v23

    :goto_5
    if-ge v13, v6, :cond_4

    .line 219
    aget-object v10, v20, v23

    aget v11, v10, v13

    mul-int/2addr v11, v9

    aput v11, v10, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_4
    move/from16 v10, v24

    :goto_6
    if-ge v13, v10, :cond_6

    .line 222
    aget-object v11, v20, v23

    aput v23, v11, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    :cond_5
    move/from16 v10, v24

    :cond_6
    const/16 v11, 0x15

    const/4 v12, 0x1

    move v13, v0

    const/4 v14, 0x3

    move-object/from16 v0, p0

    move v15, v1

    move-object/from16 v1, v20

    move v14, v2

    move-object/from16 v2, v18

    move-object/from16 v16, v3

    move v3, v11

    move/from16 v11, p8

    move/from16 v27, v4

    move v4, v12

    move v12, v5

    move/from16 v5, v22

    .line 226
    invoke-static/range {v0 .. v5}, Lorg/concentus/Bands;->compute_band_energies(Lorg/concentus/CeltMode;[[I[[IIII)V

    .line 227
    aget-object v3, v18, v23

    mul-int/lit8 v17, v13, 0x15

    const/16 v24, 0x1

    const/16 v1, 0x15

    const/16 v2, 0x15

    move-object/from16 v4, p3

    move/from16 v5, v17

    move/from16 v6, v24

    invoke-static/range {v0 .. v6}, Lorg/concentus/QuantizeBands;->amp2Log2(Lorg/concentus/CeltMode;II[I[III)V

    move v2, v14

    :goto_7
    if-ge v2, v15, :cond_7

    add-int v0, v17, v2

    .line 230
    aget v1, p3, v0

    add-int/lit8 v3, v0, -0x1

    aget v3, p3, v3

    add-int/lit16 v3, v3, -0x400

    invoke-static {v1, v3}, Lorg/concentus/Inlines;->MAX16(II)I

    move-result v1

    aput v1, p3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_7
    const/16 v0, 0x13

    :goto_8
    if-ltz v0, :cond_8

    add-int v1, v17, v0

    .line 233
    aget v2, p3, v1

    add-int/lit8 v3, v1, 0x1

    aget v3, p3, v3

    add-int/lit16 v3, v3, -0x800

    invoke-static {v2, v3}, Lorg/concentus/Inlines;->MAX16(II)I

    move-result v2

    aput v2, p3, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 235
    :cond_8
    aget v0, v16, v13

    if-ne v0, v14, :cond_9

    move/from16 v0, v23

    :goto_9
    if-ge v0, v15, :cond_b

    .line 237
    aget-object v1, v19, v23

    aget v2, v1, v0

    add-int v3, v17, v0

    aget v3, p3, v3

    invoke-static {v2, v3}, Lorg/concentus/OpusMSEncoder;->logSum(II)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_9
    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    move/from16 v0, v23

    :goto_a
    if-ge v0, v15, :cond_b

    const/4 v1, 0x2

    .line 241
    aget-object v2, v19, v1

    aget v3, v2, v0

    add-int v4, v17, v0

    aget v4, p3, v4

    invoke-static {v3, v4}, Lorg/concentus/OpusMSEncoder;->logSum(II)I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_a
    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    move/from16 v0, v23

    :goto_b
    if-ge v0, v15, :cond_b

    .line 245
    aget-object v2, v19, v23

    aget v3, v2, v0

    add-int v4, v17, v0

    aget v5, p3, v4

    add-int/lit16 v5, v5, -0x200

    invoke-static {v3, v5}, Lorg/concentus/OpusMSEncoder;->logSum(II)I

    move-result v3

    aput v3, v2, v0

    .line 246
    aget-object v2, v19, v1

    aget v3, v2, v0

    aget v4, p3, v4

    add-int/lit16 v4, v4, -0x200

    invoke-static {v3, v4}, Lorg/concentus/OpusMSEncoder;->logSum(II)I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_b
    move-object/from16 v0, p9

    move/from16 v1, v27

    .line 249
    invoke-static {v0, v10, v8, v1, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v13, 0x1

    move/from16 v6, p6

    move v4, v11

    move v5, v12

    move v2, v14

    move-object/from16 v3, v16

    move/from16 v12, v22

    move/from16 v13, v23

    move-object v11, v0

    move v0, v1

    move v14, v10

    move v1, v15

    move-object/from16 v10, v21

    move v15, v9

    goto/16 :goto_4

    :cond_c
    move v15, v1

    move v14, v2

    move-object/from16 v16, v3

    move v11, v4

    move v1, v9

    move/from16 v23, v13

    :goto_c
    if-ge v13, v15, :cond_d

    .line 252
    aget-object v0, v19, v14

    aget-object v2, v19, v23

    aget v2, v2, v13

    aget-object v3, v19, v1

    aget v3, v3, v13

    invoke-static {v2, v3}, Lorg/concentus/Inlines;->MIN32(II)I

    move-result v2

    aput v2, v0, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_c

    :cond_d
    add-int/lit8 v0, v11, -0x1

    const v1, 0x8000

    .line 254
    div-int/2addr v1, v0

    invoke-static {v1}, Lorg/concentus/Inlines;->celt_log2(I)I

    move-result v0

    invoke-static {v0}, Lorg/concentus/Inlines;->HALF16(I)I

    move-result v0

    move/from16 v13, v23

    const/4 v1, 0x3

    :goto_d
    if-ge v13, v1, :cond_f

    move/from16 v2, v23

    :goto_e
    if-ge v2, v15, :cond_e

    .line 257
    aget-object v3, v19, v13

    aget v4, v3, v2

    add-int/2addr v4, v0

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_e
    add-int/lit8 v13, v13, 0x1

    goto :goto_d

    :cond_f
    move/from16 v13, v23

    :goto_f
    if-ge v13, v11, :cond_12

    .line 263
    aget v0, v16, v13

    if-eqz v0, :cond_10

    add-int/lit8 v0, v0, -0x1

    .line 264
    aget-object v0, v19, v0

    move/from16 v1, v23

    :goto_10
    if-ge v1, v15, :cond_11

    mul-int/lit8 v2, v13, 0x15

    add-int/2addr v2, v1

    .line 266
    aget v3, p3, v2

    aget v4, v0, v1

    sub-int/2addr v3, v4

    aput v3, p3, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_10
    move/from16 v0, v23

    :goto_11
    if-ge v0, v15, :cond_11

    mul-int/lit8 v1, v13, 0x15

    add-int/2addr v1, v0

    .line 270
    aput v23, p3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_11
    add-int/lit8 v13, v13, 0x1

    goto :goto_f

    :cond_12
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method static validate_encoder_layout(Lorg/concentus/ChannelLayout;)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 80
    :goto_0
    iget v2, p0, Lorg/concentus/ChannelLayout;->nb_streams:I

    if-ge v1, v2, :cond_3

    .line 81
    iget v2, p0, Lorg/concentus/ChannelLayout;->nb_coupled_streams:I

    const/4 v3, -0x1

    if-ge v1, v2, :cond_1

    .line 82
    invoke-static {p0, v1, v3}, Lorg/concentus/OpusMultistream;->get_left_channel(Lorg/concentus/ChannelLayout;II)I

    move-result v2

    if-ne v2, v3, :cond_0

    return v0

    .line 85
    :cond_0
    invoke-static {p0, v1, v3}, Lorg/concentus/OpusMultistream;->get_right_channel(Lorg/concentus/ChannelLayout;II)I

    move-result v2

    if-ne v2, v3, :cond_2

    return v0

    .line 88
    :cond_1
    invoke-static {p0, v1, v3}, Lorg/concentus/OpusMultistream;->get_mono_channel(Lorg/concentus/ChannelLayout;II)I

    move-result v2

    if-ne v2, v3, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public encodeMultistream([SII[BII)I
    .locals 9

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    .line 752
    invoke-virtual/range {v0 .. v8}, Lorg/concentus/OpusMSEncoder;->opus_multistream_encode_native([SII[BIIII)I

    move-result p1

    return p1
.end method

.method public getApplication()Lorg/concentus/OpusApplication;
    .locals 2

    .line 774
    iget-object v0, p0, Lorg/concentus/OpusMSEncoder;->encoders:[Lorg/concentus/OpusEncoder;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/concentus/OpusEncoder;->getApplication()Lorg/concentus/OpusApplication;

    move-result-object v0

    return-object v0
.end method

.method public getBandwidth()Lorg/concentus/OpusBandwidth;
    .locals 2

    .line 804
    iget-object v0, p0, Lorg/concentus/OpusMSEncoder;->encoders:[Lorg/concentus/OpusEncoder;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/concentus/OpusEncoder;->getBandwidth()Lorg/concentus/OpusBandwidth;

    move-result-object v0

    return-object v0
.end method

.method public getBitrate()I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 759
    :goto_0
    iget-object v3, p0, Lorg/concentus/OpusMSEncoder;->layout:Lorg/concentus/ChannelLayout;

    iget v3, v3, Lorg/concentus/ChannelLayout;->nb_streams:I

    if-ge v0, v3, :cond_0

    .line 760
    iget-object v3, p0, Lorg/concentus/OpusMSEncoder;->encoders:[Lorg/concentus/OpusEncoder;

    add-int/lit8 v4, v2, 0x1

    aget-object v2, v3, v2

    .line 761
    invoke-virtual {v2}, Lorg/concentus/OpusEncoder;->getBitrate()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    move v2, v4

    goto :goto_0

    :cond_0
    return v1
.end method

.method public getComplexity()I
    .locals 2

    .line 824
    iget-object v0, p0, Lorg/concentus/OpusMSEncoder;->encoders:[Lorg/concentus/OpusEncoder;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/concentus/OpusEncoder;->getComplexity()I

    move-result v0

    return v0
.end method

.method public getExpertFrameDuration()Lorg/concentus/OpusFramesize;
    .locals 1

    .line 932
    iget-object v0, p0, Lorg/concentus/OpusMSEncoder;->variable_duration:Lorg/concentus/OpusFramesize;

    return-object v0
.end method

.method public getFinalRange()I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 905
    :goto_0
    iget-object v3, p0, Lorg/concentus/OpusMSEncoder;->layout:Lorg/concentus/ChannelLayout;

    iget v3, v3, Lorg/concentus/ChannelLayout;->nb_streams:I

    if-ge v0, v3, :cond_0

    .line 906
    iget-object v3, p0, Lorg/concentus/OpusMSEncoder;->encoders:[Lorg/concentus/OpusEncoder;

    add-int/lit8 v4, v2, 0x1

    aget-object v2, v3, v2

    invoke-virtual {v2}, Lorg/concentus/OpusEncoder;->getFinalRange()I

    move-result v2

    xor-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    move v2, v4

    goto :goto_0

    :cond_0
    return v1
.end method

.method public getForceChannels()I
    .locals 2

    .line 784
    iget-object v0, p0, Lorg/concentus/OpusMSEncoder;->encoders:[Lorg/concentus/OpusEncoder;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/concentus/OpusEncoder;->getForceChannels()I

    move-result v0

    return v0
.end method

.method public getForceMode()Lorg/concentus/OpusMode;
    .locals 2

    .line 834
    iget-object v0, p0, Lorg/concentus/OpusMSEncoder;->encoders:[Lorg/concentus/OpusEncoder;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/concentus/OpusEncoder;->getForceMode()Lorg/concentus/OpusMode;

    move-result-object v0

    return-object v0
.end method

.method public getLSBDepth()I
    .locals 2

    .line 912
    iget-object v0, p0, Lorg/concentus/OpusMSEncoder;->encoders:[Lorg/concentus/OpusEncoder;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/concentus/OpusEncoder;->getLSBDepth()I

    move-result v0

    return v0
.end method

.method public getLookahead()I
    .locals 2

    .line 894
    iget-object v0, p0, Lorg/concentus/OpusMSEncoder;->encoders:[Lorg/concentus/OpusEncoder;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/concentus/OpusEncoder;->getLookahead()I

    move-result v0

    return v0
.end method

.method public getMaxBandwidth()Lorg/concentus/OpusBandwidth;
    .locals 2

    .line 794
    iget-object v0, p0, Lorg/concentus/OpusMSEncoder;->encoders:[Lorg/concentus/OpusEncoder;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/concentus/OpusEncoder;->getMaxBandwidth()Lorg/concentus/OpusBandwidth;

    move-result-object v0

    return-object v0
.end method

.method public getMultistreamEncoderState(I)Lorg/concentus/OpusEncoder;
    .locals 1

    .line 940
    iget-object v0, p0, Lorg/concentus/OpusMSEncoder;->layout:Lorg/concentus/ChannelLayout;

    iget v0, v0, Lorg/concentus/ChannelLayout;->nb_streams:I

    if-ge p1, v0, :cond_0

    .line 943
    iget-object v0, p0, Lorg/concentus/OpusMSEncoder;->encoders:[Lorg/concentus/OpusEncoder;

    aget-object p1, v0, p1

    return-object p1

    .line 941
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Requested stream doesn\'t exist"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPacketLossPercent()I
    .locals 2

    .line 854
    iget-object v0, p0, Lorg/concentus/OpusMSEncoder;->encoders:[Lorg/concentus/OpusEncoder;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/concentus/OpusEncoder;->getPacketLossPercent()I

    move-result v0

    return v0
.end method

.method public getPredictionDisabled()Z
    .locals 2

    .line 922
    iget-object v0, p0, Lorg/concentus/OpusMSEncoder;->encoders:[Lorg/concentus/OpusEncoder;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/concentus/OpusEncoder;->getPredictionDisabled()Z

    move-result v0

    return v0
.end method

.method public getSampleRate()I
    .locals 2

    .line 898
    iget-object v0, p0, Lorg/concentus/OpusMSEncoder;->encoders:[Lorg/concentus/OpusEncoder;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/concentus/OpusEncoder;->getSampleRate()I

    move-result v0

    return v0
.end method

.method public getSignalType()Lorg/concentus/OpusSignal;
    .locals 2

    .line 884
    iget-object v0, p0, Lorg/concentus/OpusMSEncoder;->encoders:[Lorg/concentus/OpusEncoder;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/concentus/OpusEncoder;->getSignalType()Lorg/concentus/OpusSignal;

    move-result-object v0

    return-object v0
.end method

.method public getUseConstrainedVBR()Z
    .locals 2

    .line 874
    iget-object v0, p0, Lorg/concentus/OpusMSEncoder;->encoders:[Lorg/concentus/OpusEncoder;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/concentus/OpusEncoder;->getUseConstrainedVBR()Z

    move-result v0

    return v0
.end method

.method public getUseDTX()Z
    .locals 2

    .line 814
    iget-object v0, p0, Lorg/concentus/OpusMSEncoder;->encoders:[Lorg/concentus/OpusEncoder;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/concentus/OpusEncoder;->getUseDTX()Z

    move-result v0

    return v0
.end method

.method public getUseInbandFEC()Z
    .locals 2

    .line 844
    iget-object v0, p0, Lorg/concentus/OpusMSEncoder;->encoders:[Lorg/concentus/OpusEncoder;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/concentus/OpusEncoder;->getUseInbandFEC()Z

    move-result v0

    return v0
.end method

.method public getUseVBR()Z
    .locals 2

    .line 864
    iget-object v0, p0, Lorg/concentus/OpusMSEncoder;->encoders:[Lorg/concentus/OpusEncoder;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/concentus/OpusEncoder;->getUseVBR()Z

    move-result v0

    return v0
.end method

.method opus_multistream_encode_native([SII[BIIII)I
    .locals 44

    move-object/from16 v0, p0

    move/from16 v1, p6

    const/16 v2, 0xef8

    .line 554
    new-array v15, v2, [B

    .line 555
    new-instance v14, Lorg/concentus/OpusRepacketizer;

    invoke-direct {v14}, Lorg/concentus/OpusRepacketizer;-><init>()V

    const/16 v3, 0x100

    .line 558
    new-array v3, v3, [I

    const/16 v4, 0x2a

    .line 559
    new-array v13, v4, [I

    .line 566
    iget v4, v0, Lorg/concentus/OpusMSEncoder;->surround:I

    if-eqz v4, :cond_0

    .line 567
    iget-object v4, v0, Lorg/concentus/OpusMSEncoder;->preemph_mem:[I

    .line 568
    iget-object v5, v0, Lorg/concentus/OpusMSEncoder;->window_mem:[I

    move-object/from16 v21, v4

    move-object/from16 v20, v5

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    move-object/from16 v20, v4

    move-object/from16 v21, v20

    .line 572
    :goto_0
    iget-object v4, v0, Lorg/concentus/OpusMSEncoder;->encoders:[Lorg/concentus/OpusEncoder;

    const/4 v12, 0x0

    aget-object v4, v4, v12

    invoke-virtual {v4}, Lorg/concentus/OpusEncoder;->getSampleRate()I

    move-result v11

    .line 573
    iget-object v4, v0, Lorg/concentus/OpusMSEncoder;->encoders:[Lorg/concentus/OpusEncoder;

    aget-object v4, v4, v12

    invoke-virtual {v4}, Lorg/concentus/OpusEncoder;->getUseVBR()Z

    move-result v32

    .line 574
    iget-object v4, v0, Lorg/concentus/OpusMSEncoder;->encoders:[Lorg/concentus/OpusEncoder;

    aget-object v4, v4, v12

    invoke-virtual {v4}, Lorg/concentus/OpusEncoder;->GetCeltMode()Lorg/concentus/CeltMode;

    move-result-object v16

    .line 580
    iget-object v4, v0, Lorg/concentus/OpusMSEncoder;->layout:Lorg/concentus/ChannelLayout;

    iget v4, v4, Lorg/concentus/ChannelLayout;->nb_streams:I

    iget-object v5, v0, Lorg/concentus/OpusMSEncoder;->layout:Lorg/concentus/ChannelLayout;

    iget v5, v5, Lorg/concentus/ChannelLayout;->nb_coupled_streams:I

    add-int v26, v4, v5

    .line 581
    iget-object v4, v0, Lorg/concentus/OpusMSEncoder;->encoders:[Lorg/concentus/OpusEncoder;

    aget-object v4, v4, v12

    invoke-virtual {v4}, Lorg/concentus/OpusEncoder;->getLookahead()I

    move-result v4

    .line 582
    div-int/lit16 v5, v11, 0x190

    sub-int v29, v4, v5

    .line 583
    iget-object v4, v0, Lorg/concentus/OpusMSEncoder;->variable_duration:Lorg/concentus/OpusFramesize;

    iget v5, v0, Lorg/concentus/OpusMSEncoder;->bitrate_bps:I

    iget-object v6, v0, Lorg/concentus/OpusMSEncoder;->subframe_mem:[F

    iget-object v7, v0, Lorg/concentus/OpusMSEncoder;->encoders:[Lorg/concentus/OpusEncoder;

    aget-object v7, v7, v12

    iget-object v7, v7, Lorg/concentus/OpusEncoder;->analysis:Lorg/concentus/TonalityAnalysisState;

    iget-boolean v7, v7, Lorg/concentus/TonalityAnalysisState;->enabled:Z

    move-object/from16 v22, p1

    move/from16 v23, p2

    move/from16 v24, p3

    move-object/from16 v25, v4

    move/from16 v27, v11

    move/from16 v28, v5

    move-object/from16 v30, v6

    move/from16 v31, v7

    invoke-static/range {v22 .. v31}, Lorg/concentus/CodecHelpers;->compute_frame_size([SIILorg/concentus/OpusFramesize;IIII[FZ)I

    move-result v10

    mul-int/lit16 v4, v10, 0x190

    if-ge v4, v11, :cond_1

    .line 589
    sget v1, Lorg/concentus/OpusError;->OPUS_BAD_ARG:I

    return v1

    :cond_1
    if-eq v4, v11, :cond_2

    mul-int/lit16 v4, v10, 0xc8

    if-eq v4, v11, :cond_2

    mul-int/lit8 v4, v10, 0x64

    if-eq v4, v11, :cond_2

    mul-int/lit8 v4, v10, 0x32

    if-eq v4, v11, :cond_2

    mul-int/lit8 v5, v10, 0x19

    if-eq v5, v11, :cond_2

    mul-int/lit8 v5, v11, 0x3

    if-eq v4, v5, :cond_2

    .line 596
    sget v1, Lorg/concentus/OpusError;->OPUS_BAD_ARG:I

    return v1

    .line 600
    :cond_2
    iget-object v4, v0, Lorg/concentus/OpusMSEncoder;->layout:Lorg/concentus/ChannelLayout;

    iget v4, v4, Lorg/concentus/ChannelLayout;->nb_streams:I

    const/4 v9, 0x2

    mul-int/2addr v4, v9

    const/16 v26, 0x1

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_3

    .line 602
    sget v1, Lorg/concentus/OpusError;->OPUS_BUFFER_TOO_SMALL:I

    return v1

    :cond_3
    mul-int/lit8 v5, v10, 0x2

    .line 604
    new-array v8, v5, [S

    .line 606
    iget-object v5, v0, Lorg/concentus/OpusMSEncoder;->layout:Lorg/concentus/ChannelLayout;

    iget v5, v5, Lorg/concentus/ChannelLayout;->nb_channels:I

    const/16 v7, 0x15

    mul-int/2addr v5, v7

    new-array v6, v5, [I

    .line 607
    iget v5, v0, Lorg/concentus/OpusMSEncoder;->surround:I

    if-eqz v5, :cond_4

    .line 608
    iget-object v5, v0, Lorg/concentus/OpusMSEncoder;->layout:Lorg/concentus/ChannelLayout;

    iget v5, v5, Lorg/concentus/ChannelLayout;->nb_channels:I

    const/16 v23, 0x78

    move-object/from16 v17, p1

    move/from16 v18, p2

    move-object/from16 v19, v6

    move/from16 v22, v10

    move/from16 v24, v5

    move/from16 v25, v11

    invoke-static/range {v16 .. v25}, Lorg/concentus/OpusMSEncoder;->surround_analysis(Lorg/concentus/CeltMode;[SI[I[I[IIIII)V

    .line 612
    :cond_4
    invoke-virtual {v0, v3, v10}, Lorg/concentus/OpusMSEncoder;->surround_rate_allocation([II)I

    move-result v5

    const/4 v2, -0x1

    if-nez v32, :cond_6

    .line 615
    iget v12, v0, Lorg/concentus/OpusMSEncoder;->bitrate_bps:I

    const/16 v7, -0x3e8

    if-ne v12, v7, :cond_5

    mul-int/lit8 v5, v5, 0x3

    mul-int/lit8 v4, v11, 0x18

    .line 616
    div-int/2addr v4, v10

    div-int/2addr v5, v4

    invoke-static {v1, v5}, Lorg/concentus/Inlines;->IMIN(II)I

    move-result v1

    goto :goto_1

    :cond_5
    if-eq v12, v2, :cond_6

    mul-int/lit8 v12, v12, 0x3

    mul-int/lit8 v5, v11, 0x18

    .line 618
    div-int/2addr v5, v10

    div-int/2addr v12, v5

    invoke-static {v4, v12}, Lorg/concentus/Inlines;->IMAX(II)I

    move-result v4

    invoke-static {v1, v4}, Lorg/concentus/Inlines;->IMIN(II)I

    move-result v1

    :cond_6
    :goto_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 623
    :goto_2
    iget-object v7, v0, Lorg/concentus/OpusMSEncoder;->layout:Lorg/concentus/ChannelLayout;

    iget v7, v7, Lorg/concentus/ChannelLayout;->nb_streams:I

    if-ge v4, v7, :cond_c

    .line 624
    iget-object v7, v0, Lorg/concentus/OpusMSEncoder;->encoders:[Lorg/concentus/OpusEncoder;

    aget-object v7, v7, v5

    add-int/lit8 v5, v5, 0x1

    .line 626
    aget v12, v3, v4

    invoke-virtual {v7, v12}, Lorg/concentus/OpusEncoder;->setBitrate(I)V

    .line 627
    iget v12, v0, Lorg/concentus/OpusMSEncoder;->surround:I

    if-eqz v12, :cond_b

    .line 629
    iget v12, v0, Lorg/concentus/OpusMSEncoder;->bitrate_bps:I

    mul-int/lit8 v2, v10, 0x32

    if-ge v2, v11, :cond_7

    .line 631
    div-int v2, v11, v10

    add-int/lit8 v2, v2, -0x32

    mul-int/lit8 v2, v2, 0x3c

    iget-object v9, v0, Lorg/concentus/OpusMSEncoder;->layout:Lorg/concentus/ChannelLayout;

    iget v9, v9, Lorg/concentus/ChannelLayout;->nb_channels:I

    mul-int/2addr v2, v9

    sub-int/2addr v12, v2

    .line 633
    :cond_7
    iget-object v2, v0, Lorg/concentus/OpusMSEncoder;->layout:Lorg/concentus/ChannelLayout;

    iget v2, v2, Lorg/concentus/ChannelLayout;->nb_channels:I

    mul-int/lit16 v2, v2, 0x2710

    if-le v12, v2, :cond_8

    .line 634
    sget-object v2, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_FULLBAND:Lorg/concentus/OpusBandwidth;

    invoke-virtual {v7, v2}, Lorg/concentus/OpusEncoder;->setBandwidth(Lorg/concentus/OpusBandwidth;)V

    goto :goto_3

    .line 635
    :cond_8
    iget-object v2, v0, Lorg/concentus/OpusMSEncoder;->layout:Lorg/concentus/ChannelLayout;

    iget v2, v2, Lorg/concentus/ChannelLayout;->nb_channels:I

    mul-int/lit16 v2, v2, 0x1b58

    if-le v12, v2, :cond_9

    .line 636
    sget-object v2, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_SUPERWIDEBAND:Lorg/concentus/OpusBandwidth;

    invoke-virtual {v7, v2}, Lorg/concentus/OpusEncoder;->setBandwidth(Lorg/concentus/OpusBandwidth;)V

    goto :goto_3

    .line 637
    :cond_9
    iget-object v2, v0, Lorg/concentus/OpusMSEncoder;->layout:Lorg/concentus/ChannelLayout;

    iget v2, v2, Lorg/concentus/ChannelLayout;->nb_channels:I

    mul-int/lit16 v2, v2, 0x1388

    if-le v12, v2, :cond_a

    .line 638
    sget-object v2, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_WIDEBAND:Lorg/concentus/OpusBandwidth;

    invoke-virtual {v7, v2}, Lorg/concentus/OpusEncoder;->setBandwidth(Lorg/concentus/OpusBandwidth;)V

    goto :goto_3

    .line 640
    :cond_a
    sget-object v2, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_NARROWBAND:Lorg/concentus/OpusBandwidth;

    invoke-virtual {v7, v2}, Lorg/concentus/OpusEncoder;->setBandwidth(Lorg/concentus/OpusBandwidth;)V

    .line 642
    :goto_3
    iget-object v2, v0, Lorg/concentus/OpusMSEncoder;->layout:Lorg/concentus/ChannelLayout;

    iget v2, v2, Lorg/concentus/ChannelLayout;->nb_coupled_streams:I

    if-ge v4, v2, :cond_b

    .line 644
    sget-object v2, Lorg/concentus/OpusMode;->MODE_CELT_ONLY:Lorg/concentus/OpusMode;

    invoke-virtual {v7, v2}, Lorg/concentus/OpusEncoder;->setForceMode(Lorg/concentus/OpusMode;)V

    const/4 v2, 0x2

    .line 645
    invoke-virtual {v7, v2}, Lorg/concentus/OpusEncoder;->setForceChannels(I)V

    :cond_b
    add-int/lit8 v4, v4, 0x1

    const/4 v2, -0x1

    const/4 v9, 0x2

    goto :goto_2

    :cond_c
    move/from16 v2, p5

    const/4 v3, 0x0

    const/4 v12, 0x0

    const/16 v21, 0x0

    .line 653
    :goto_4
    iget-object v4, v0, Lorg/concentus/OpusMSEncoder;->layout:Lorg/concentus/ChannelLayout;

    iget v4, v4, Lorg/concentus/ChannelLayout;->nb_streams:I

    if-ge v12, v4, :cond_18

    .line 659
    invoke-virtual {v14}, Lorg/concentus/OpusRepacketizer;->Reset()V

    .line 660
    iget-object v4, v0, Lorg/concentus/OpusMSEncoder;->encoders:[Lorg/concentus/OpusEncoder;

    aget-object v4, v4, v3

    .line 661
    iget-object v5, v0, Lorg/concentus/OpusMSEncoder;->layout:Lorg/concentus/ChannelLayout;

    iget v5, v5, Lorg/concentus/ChannelLayout;->nb_coupled_streams:I

    if-ge v12, v5, :cond_e

    .line 664
    iget-object v5, v0, Lorg/concentus/OpusMSEncoder;->layout:Lorg/concentus/ChannelLayout;

    const/4 v7, -0x1

    invoke-static {v5, v12, v7}, Lorg/concentus/OpusMultistream;->get_left_channel(Lorg/concentus/ChannelLayout;II)I

    move-result v5

    .line 665
    iget-object v9, v0, Lorg/concentus/OpusMSEncoder;->layout:Lorg/concentus/ChannelLayout;

    invoke-static {v9, v12, v7}, Lorg/concentus/OpusMultistream;->get_right_channel(Lorg/concentus/ChannelLayout;II)I

    move-result v9

    .line 666
    iget-object v7, v0, Lorg/concentus/OpusMSEncoder;->layout:Lorg/concentus/ChannelLayout;

    iget v7, v7, Lorg/concentus/ChannelLayout;->nb_channels:I

    const/16 v34, 0x0

    const/16 v35, 0x2

    move-object/from16 v33, v8

    move-object/from16 v36, p1

    move/from16 v37, p2

    move/from16 v38, v7

    move/from16 v39, v5

    move/from16 v40, v10

    invoke-static/range {v33 .. v40}, Lorg/concentus/OpusMSEncoder;->opus_copy_channel_in_short([SII[SIIII)V

    .line 668
    iget-object v7, v0, Lorg/concentus/OpusMSEncoder;->layout:Lorg/concentus/ChannelLayout;

    iget v7, v7, Lorg/concentus/ChannelLayout;->nb_channels:I

    const/16 v34, 0x1

    move/from16 v38, v7

    move/from16 v39, v9

    invoke-static/range {v33 .. v40}, Lorg/concentus/OpusMSEncoder;->opus_copy_channel_in_short([SII[SIIII)V

    add-int/lit8 v3, v3, 0x1

    .line 671
    iget v7, v0, Lorg/concentus/OpusMSEncoder;->surround:I

    move/from16 p5, v3

    if-eqz v7, :cond_d

    const/16 v3, 0x15

    const/4 v7, 0x0

    :goto_5
    if-ge v7, v3, :cond_d

    mul-int/lit8 v3, v5, 0x15

    add-int/2addr v3, v7

    .line 673
    aget v3, v6, v3

    aput v3, v13, v7

    add-int/lit8 v3, v7, 0x15

    mul-int/lit8 v22, v9, 0x15

    add-int v22, v22, v7

    .line 674
    aget v22, v6, v22

    aput v22, v13, v3

    add-int/lit8 v7, v7, 0x1

    const/16 v3, 0x15

    goto :goto_5

    :cond_d
    move/from16 v22, p5

    move/from16 v17, v5

    move/from16 v23, v9

    const/16 v9, 0x15

    goto :goto_7

    .line 681
    :cond_e
    iget-object v5, v0, Lorg/concentus/OpusMSEncoder;->layout:Lorg/concentus/ChannelLayout;

    const/4 v9, -0x1

    invoke-static {v5, v12, v9}, Lorg/concentus/OpusMultistream;->get_mono_channel(Lorg/concentus/ChannelLayout;II)I

    move-result v5

    .line 682
    iget-object v7, v0, Lorg/concentus/OpusMSEncoder;->layout:Lorg/concentus/ChannelLayout;

    iget v7, v7, Lorg/concentus/ChannelLayout;->nb_channels:I

    const/16 v34, 0x0

    const/16 v35, 0x1

    move-object/from16 v33, v8

    move-object/from16 v36, p1

    move/from16 v37, p2

    move/from16 v38, v7

    move/from16 v39, v5

    move/from16 v40, v10

    invoke-static/range {v33 .. v40}, Lorg/concentus/OpusMSEncoder;->opus_copy_channel_in_short([SII[SIIII)V

    add-int/lit8 v3, v3, 0x1

    .line 685
    iget v7, v0, Lorg/concentus/OpusMSEncoder;->surround:I

    if-eqz v7, :cond_f

    const/4 v7, 0x0

    const/16 v9, 0x15

    :goto_6
    if-ge v7, v9, :cond_10

    mul-int/lit8 v17, v5, 0x15

    add-int v17, v17, v7

    .line 687
    aget v17, v6, v17

    aput v17, v13, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_f
    const/16 v9, 0x15

    :cond_10
    move/from16 v22, v3

    move/from16 v17, v5

    const/16 v23, -0x1

    .line 693
    :goto_7
    iget v3, v0, Lorg/concentus/OpusMSEncoder;->surround:I

    if-eqz v3, :cond_11

    .line 694
    invoke-virtual {v4, v13}, Lorg/concentus/OpusEncoder;->SetEnergyMask([I)V

    :cond_11
    sub-int v24, v1, v21

    .line 700
    iget-object v3, v0, Lorg/concentus/OpusMSEncoder;->layout:Lorg/concentus/ChannelLayout;

    iget v3, v3, Lorg/concentus/ChannelLayout;->nb_streams:I

    sub-int/2addr v3, v12

    add-int/lit8 v3, v3, -0x1

    const/16 v20, 0x2

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, -0x1

    const/4 v7, 0x0

    invoke-static {v7, v3}, Lorg/concentus/Inlines;->IMAX(II)I

    move-result v3

    sub-int v3, v24, v3

    const/16 v5, 0xef8

    .line 701
    invoke-static {v3, v5}, Lorg/concentus/Inlines;->IMIN(II)I

    move-result v3

    .line 703
    iget-object v5, v0, Lorg/concentus/OpusMSEncoder;->layout:Lorg/concentus/ChannelLayout;

    iget v5, v5, Lorg/concentus/ChannelLayout;->nb_streams:I

    add-int/lit8 v5, v5, -0x1

    if-eq v12, v5, :cond_13

    const/16 v5, 0xfd

    if-le v3, v5, :cond_12

    move/from16 v5, v20

    goto :goto_8

    :cond_12
    move/from16 v5, v26

    :goto_8
    sub-int/2addr v3, v5

    :cond_13
    move/from16 v16, v3

    if-nez v32, :cond_14

    .line 706
    iget-object v3, v0, Lorg/concentus/OpusMSEncoder;->layout:Lorg/concentus/ChannelLayout;

    iget v3, v3, Lorg/concentus/ChannelLayout;->nb_streams:I

    add-int/lit8 v3, v3, -0x1

    if-ne v12, v3, :cond_14

    mul-int/lit8 v3, v11, 0x8

    .line 707
    div-int/2addr v3, v10

    mul-int v3, v3, v16

    invoke-virtual {v4, v3}, Lorg/concentus/OpusEncoder;->setBitrate(I)V

    .line 709
    :cond_14
    iget-object v3, v0, Lorg/concentus/OpusMSEncoder;->layout:Lorg/concentus/ChannelLayout;

    iget v5, v3, Lorg/concentus/ChannelLayout;->nb_channels:I

    const/16 v25, 0x0

    const/16 v27, 0x0

    move-object v3, v4

    move-object v4, v8

    move/from16 v18, v5

    const/16 v28, 0xef8

    move/from16 v5, v25

    move-object/from16 v25, v6

    move v6, v10

    move/from16 v30, v7

    move/from16 v29, v9

    move-object v7, v15

    move-object/from16 v31, v8

    move/from16 v8, v27

    const/16 v19, -0x1

    move/from16 v9, v16

    move/from16 v27, v10

    move/from16 v10, p7

    move/from16 v33, v11

    move-object/from16 v11, p1

    move/from16 v41, v12

    move/from16 v12, p2

    move-object/from16 v30, v13

    move/from16 v13, p3

    move-object/from16 v42, v14

    move/from16 v14, v17

    move-object/from16 v43, v15

    move/from16 v15, v23

    move/from16 v16, v18

    move/from16 v17, p8

    invoke-virtual/range {v3 .. v17}, Lorg/concentus/OpusEncoder;->opus_encode_native([SII[BIII[SIIIIII)I

    move-result v3

    if-gez v3, :cond_15

    return v3

    :cond_15
    move-object/from16 v12, v42

    move-object/from16 v11, v43

    const/4 v13, 0x0

    .line 717
    invoke-virtual {v12, v11, v13, v3}, Lorg/concentus/OpusRepacketizer;->addPacket([BII)I

    .line 718
    invoke-virtual {v12}, Lorg/concentus/OpusRepacketizer;->getNumFrames()I

    move-result v5

    .line 719
    iget-object v3, v0, Lorg/concentus/OpusMSEncoder;->layout:Lorg/concentus/ChannelLayout;

    iget v3, v3, Lorg/concentus/ChannelLayout;->nb_streams:I

    add-int/lit8 v3, v3, -0x1

    move/from16 v14, v41

    if-eq v14, v3, :cond_16

    move/from16 v9, v26

    goto :goto_9

    :cond_16
    move v9, v13

    :goto_9
    if-nez v32, :cond_17

    iget-object v3, v0, Lorg/concentus/OpusMSEncoder;->layout:Lorg/concentus/ChannelLayout;

    iget v3, v3, Lorg/concentus/ChannelLayout;->nb_streams:I

    add-int/lit8 v3, v3, -0x1

    if-ne v14, v3, :cond_17

    move/from16 v10, v26

    goto :goto_a

    :cond_17
    move v10, v13

    :goto_a
    const/4 v4, 0x0

    move-object v3, v12

    move-object/from16 v6, p4

    move v7, v2

    move/from16 v8, v24

    .line 718
    invoke-virtual/range {v3 .. v10}, Lorg/concentus/OpusRepacketizer;->opus_repacketizer_out_range_impl(II[BIIII)I

    move-result v3

    add-int/2addr v2, v3

    add-int v21, v21, v3

    add-int/lit8 v3, v14, 0x1

    move-object v15, v11

    move-object v14, v12

    move-object/from16 v6, v25

    move/from16 v10, v27

    move-object/from16 v13, v30

    move-object/from16 v8, v31

    move/from16 v11, v33

    move v12, v3

    move/from16 v3, v22

    goto/16 :goto_4

    :cond_18
    return v21
.end method

.method opus_multistream_encoder_init(IIII[SLorg/concentus/OpusApplication;I)I
    .locals 4

    const/16 v0, 0xff

    if-gt p2, v0, :cond_c

    const/4 v0, 0x1

    if-lt p2, v0, :cond_c

    if-gt p4, p3, :cond_c

    if-lt p3, v0, :cond_c

    if-ltz p4, :cond_c

    rsub-int v1, p4, 0xff

    if-le p3, v1, :cond_0

    goto/16 :goto_4

    .line 293
    :cond_0
    iget-object v1, p0, Lorg/concentus/OpusMSEncoder;->layout:Lorg/concentus/ChannelLayout;

    iput p2, v1, Lorg/concentus/ChannelLayout;->nb_channels:I

    .line 294
    iget-object v1, p0, Lorg/concentus/OpusMSEncoder;->layout:Lorg/concentus/ChannelLayout;

    iput p3, v1, Lorg/concentus/ChannelLayout;->nb_streams:I

    .line 295
    iget-object p3, p0, Lorg/concentus/OpusMSEncoder;->layout:Lorg/concentus/ChannelLayout;

    iput p4, p3, Lorg/concentus/ChannelLayout;->nb_coupled_streams:I

    .line 296
    iget-object p3, p0, Lorg/concentus/OpusMSEncoder;->subframe_mem:[F

    const/4 p4, 0x2

    const/4 v1, 0x0

    aput v1, p3, p4

    aput v1, p3, v0

    const/4 v2, 0x0

    aput v1, p3, v2

    if-nez p7, :cond_1

    const/4 p3, -0x1

    .line 298
    iput p3, p0, Lorg/concentus/OpusMSEncoder;->lfe_stream:I

    :cond_1
    const/16 p3, -0x3e8

    .line 300
    iput p3, p0, Lorg/concentus/OpusMSEncoder;->bitrate_bps:I

    .line 301
    iput-object p6, p0, Lorg/concentus/OpusMSEncoder;->application:Lorg/concentus/OpusApplication;

    .line 302
    sget-object p3, Lorg/concentus/OpusFramesize;->OPUS_FRAMESIZE_ARG:Lorg/concentus/OpusFramesize;

    iput-object p3, p0, Lorg/concentus/OpusMSEncoder;->variable_duration:Lorg/concentus/OpusFramesize;

    move p3, v2

    .line 303
    :goto_0
    iget-object v1, p0, Lorg/concentus/OpusMSEncoder;->layout:Lorg/concentus/ChannelLayout;

    iget v1, v1, Lorg/concentus/ChannelLayout;->nb_channels:I

    if-ge p3, v1, :cond_2

    .line 304
    iget-object v1, p0, Lorg/concentus/OpusMSEncoder;->layout:Lorg/concentus/ChannelLayout;

    iget-object v1, v1, Lorg/concentus/ChannelLayout;->mapping:[S

    aget-short v3, p5, p3

    aput-short v3, v1, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 306
    :cond_2
    iget-object p3, p0, Lorg/concentus/OpusMSEncoder;->layout:Lorg/concentus/ChannelLayout;

    invoke-static {p3}, Lorg/concentus/OpusMultistream;->validate_layout(Lorg/concentus/ChannelLayout;)I

    move-result p3

    if-eqz p3, :cond_b

    iget-object p3, p0, Lorg/concentus/OpusMSEncoder;->layout:Lorg/concentus/ChannelLayout;

    invoke-static {p3}, Lorg/concentus/OpusMSEncoder;->validate_encoder_layout(Lorg/concentus/ChannelLayout;)I

    move-result p3

    if-nez p3, :cond_3

    goto :goto_3

    :cond_3
    move p3, v2

    move p5, p3

    .line 312
    :goto_1
    iget-object v1, p0, Lorg/concentus/OpusMSEncoder;->layout:Lorg/concentus/ChannelLayout;

    iget v1, v1, Lorg/concentus/ChannelLayout;->nb_coupled_streams:I

    if-ge p3, v1, :cond_6

    .line 313
    iget-object v1, p0, Lorg/concentus/OpusMSEncoder;->encoders:[Lorg/concentus/OpusEncoder;

    aget-object v1, v1, p5

    invoke-virtual {v1, p1, p4, p6}, Lorg/concentus/OpusEncoder;->opus_init_encoder(IILorg/concentus/OpusApplication;)I

    move-result v1

    .line 314
    sget v3, Lorg/concentus/OpusError;->OPUS_OK:I

    if-eq v1, v3, :cond_4

    return v1

    .line 317
    :cond_4
    iget v1, p0, Lorg/concentus/OpusMSEncoder;->lfe_stream:I

    if-ne p3, v1, :cond_5

    .line 318
    iget-object v1, p0, Lorg/concentus/OpusMSEncoder;->encoders:[Lorg/concentus/OpusEncoder;

    aget-object v1, v1, p5

    invoke-virtual {v1, v0}, Lorg/concentus/OpusEncoder;->setIsLFE(Z)V

    :cond_5
    add-int/lit8 p5, p5, 0x1

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 322
    :cond_6
    :goto_2
    iget-object p4, p0, Lorg/concentus/OpusMSEncoder;->layout:Lorg/concentus/ChannelLayout;

    iget p4, p4, Lorg/concentus/ChannelLayout;->nb_streams:I

    if-ge p3, p4, :cond_9

    .line 323
    iget-object p4, p0, Lorg/concentus/OpusMSEncoder;->encoders:[Lorg/concentus/OpusEncoder;

    aget-object p4, p4, p5

    invoke-virtual {p4, p1, v0, p6}, Lorg/concentus/OpusEncoder;->opus_init_encoder(IILorg/concentus/OpusApplication;)I

    move-result p4

    .line 324
    iget v1, p0, Lorg/concentus/OpusMSEncoder;->lfe_stream:I

    if-ne p3, v1, :cond_7

    .line 325
    iget-object v1, p0, Lorg/concentus/OpusMSEncoder;->encoders:[Lorg/concentus/OpusEncoder;

    aget-object v1, v1, p5

    invoke-virtual {v1, v0}, Lorg/concentus/OpusEncoder;->setIsLFE(Z)V

    .line 327
    :cond_7
    sget v1, Lorg/concentus/OpusError;->OPUS_OK:I

    if-eq p4, v1, :cond_8

    return p4

    :cond_8
    add-int/lit8 p5, p5, 0x1

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_9
    if-eqz p7, :cond_a

    .line 333
    iget-object p1, p0, Lorg/concentus/OpusMSEncoder;->preemph_mem:[I

    invoke-static {p1, v2, p2}, Lorg/concentus/Arrays;->MemSet([III)V

    .line 334
    iget-object p1, p0, Lorg/concentus/OpusMSEncoder;->window_mem:[I

    mul-int/lit8 p2, p2, 0x78

    invoke-static {p1, v2, p2}, Lorg/concentus/Arrays;->MemSet([III)V

    .line 336
    :cond_a
    iput p7, p0, Lorg/concentus/OpusMSEncoder;->surround:I

    .line 337
    sget p1, Lorg/concentus/OpusError;->OPUS_OK:I

    return p1

    .line 307
    :cond_b
    :goto_3
    sget p1, Lorg/concentus/OpusError;->OPUS_BAD_ARG:I

    return p1

    .line 290
    :cond_c
    :goto_4
    sget p1, Lorg/concentus/OpusError;->OPUS_BAD_ARG:I

    return p1
.end method

.method opus_multistream_surround_encoder_init(IIILorg/concentus/BoxedValueInt;Lorg/concentus/BoxedValueInt;[SLorg/concentus/OpusApplication;)I
    .locals 11

    move-object v8, p0

    move v2, p2

    move v0, p3

    move-object v1, p4

    move-object/from16 v3, p5

    const/4 v4, 0x0

    .line 349
    iput v4, v1, Lorg/concentus/BoxedValueInt;->Val:I

    .line 350
    iput v4, v3, Lorg/concentus/BoxedValueInt;->Val:I

    const/16 v5, 0xff

    if-gt v2, v5, :cond_9

    const/4 v6, 0x1

    if-ge v2, v6, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v7, -0x1

    .line 354
    iput v7, v8, Lorg/concentus/OpusMSEncoder;->lfe_stream:I

    const/4 v7, 0x2

    if-nez v0, :cond_3

    if-ne v2, v6, :cond_1

    .line 357
    iput v6, v1, Lorg/concentus/BoxedValueInt;->Val:I

    .line 358
    iput v4, v3, Lorg/concentus/BoxedValueInt;->Val:I

    .line 359
    aput-short v4, p6, v4

    goto :goto_2

    :cond_1
    if-ne v2, v7, :cond_2

    .line 361
    iput v6, v1, Lorg/concentus/BoxedValueInt;->Val:I

    .line 362
    iput v6, v3, Lorg/concentus/BoxedValueInt;->Val:I

    .line 363
    aput-short v4, p6, v4

    .line 364
    aput-short v6, p6, v6

    goto :goto_2

    .line 366
    :cond_2
    sget v0, Lorg/concentus/OpusError;->OPUS_UNIMPLEMENTED:I

    return v0

    :cond_3
    if-ne v0, v6, :cond_5

    const/16 v9, 0x8

    if-gt v2, v9, :cond_5

    if-lt v2, v6, :cond_5

    .line 370
    sget-object v5, Lorg/concentus/VorbisLayout;->vorbis_mappings:[Lorg/concentus/VorbisLayout;

    add-int/lit8 v9, v2, -0x1

    aget-object v5, v5, v9

    iget v5, v5, Lorg/concentus/VorbisLayout;->nb_streams:I

    iput v5, v1, Lorg/concentus/BoxedValueInt;->Val:I

    .line 371
    sget-object v5, Lorg/concentus/VorbisLayout;->vorbis_mappings:[Lorg/concentus/VorbisLayout;

    aget-object v5, v5, v9

    iget v5, v5, Lorg/concentus/VorbisLayout;->nb_coupled_streams:I

    iput v5, v3, Lorg/concentus/BoxedValueInt;->Val:I

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_4

    .line 373
    sget-object v10, Lorg/concentus/VorbisLayout;->vorbis_mappings:[Lorg/concentus/VorbisLayout;

    aget-object v10, v10, v9

    iget-object v10, v10, Lorg/concentus/VorbisLayout;->mapping:[S

    aget-short v10, v10, v5

    aput-short v10, p6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    const/4 v5, 0x6

    if-lt v2, v5, :cond_6

    .line 376
    iget v5, v1, Lorg/concentus/BoxedValueInt;->Val:I

    sub-int/2addr v5, v6

    iput v5, v8, Lorg/concentus/OpusMSEncoder;->lfe_stream:I

    goto :goto_2

    :cond_5
    if-ne v0, v5, :cond_8

    .line 380
    iput v2, v1, Lorg/concentus/BoxedValueInt;->Val:I

    .line 381
    iput v4, v3, Lorg/concentus/BoxedValueInt;->Val:I

    move v5, v4

    :goto_1
    if-ge v5, v2, :cond_6

    int-to-short v9, v5

    .line 383
    aput-short v9, p6, v5

    add-int/lit8 v5, v5, 0x1

    int-to-byte v5, v5

    goto :goto_1

    .line 388
    :cond_6
    :goto_2
    iget v5, v1, Lorg/concentus/BoxedValueInt;->Val:I

    iget v9, v3, Lorg/concentus/BoxedValueInt;->Val:I

    if-le v2, v7, :cond_7

    if-ne v0, v6, :cond_7

    move v7, v6

    goto :goto_3

    :cond_7
    move v7, v4

    :goto_3
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v5

    move v4, v9

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    invoke-virtual/range {v0 .. v7}, Lorg/concentus/OpusMSEncoder;->opus_multistream_encoder_init(IIII[SLorg/concentus/OpusApplication;I)I

    move-result v0

    return v0

    .line 386
    :cond_8
    sget v0, Lorg/concentus/OpusError;->OPUS_UNIMPLEMENTED:I

    return v0

    .line 352
    :cond_9
    :goto_4
    sget v0, Lorg/concentus/OpusError;->OPUS_BAD_ARG:I

    return v0
.end method

.method public resetState()V
    .locals 4

    .line 66
    iget-object v0, p0, Lorg/concentus/OpusMSEncoder;->subframe_mem:[F

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v1, 0x1

    aput v2, v0, v1

    const/4 v1, 0x0

    aput v2, v0, v1

    .line 67
    iget v0, p0, Lorg/concentus/OpusMSEncoder;->surround:I

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lorg/concentus/OpusMSEncoder;->preemph_mem:[I

    iget-object v2, p0, Lorg/concentus/OpusMSEncoder;->layout:Lorg/concentus/ChannelLayout;

    iget v2, v2, Lorg/concentus/ChannelLayout;->nb_channels:I

    invoke-static {v0, v1, v2}, Lorg/concentus/Arrays;->MemSet([III)V

    .line 69
    iget-object v0, p0, Lorg/concentus/OpusMSEncoder;->window_mem:[I

    iget-object v2, p0, Lorg/concentus/OpusMSEncoder;->layout:Lorg/concentus/ChannelLayout;

    iget v2, v2, Lorg/concentus/ChannelLayout;->nb_channels:I

    mul-int/lit8 v2, v2, 0x78

    invoke-static {v0, v1, v2}, Lorg/concentus/Arrays;->MemSet([III)V

    :cond_0
    move v0, v1

    .line 72
    :goto_0
    iget-object v2, p0, Lorg/concentus/OpusMSEncoder;->layout:Lorg/concentus/ChannelLayout;

    iget v2, v2, Lorg/concentus/ChannelLayout;->nb_streams:I

    if-ge v1, v2, :cond_1

    .line 73
    iget-object v2, p0, Lorg/concentus/OpusMSEncoder;->encoders:[Lorg/concentus/OpusEncoder;

    add-int/lit8 v3, v0, 0x1

    aget-object v0, v2, v0

    .line 74
    invoke-virtual {v0}, Lorg/concentus/OpusEncoder;->resetState()V

    add-int/lit8 v1, v1, 0x1

    move v0, v3

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setApplication(Lorg/concentus/OpusApplication;)V
    .locals 2

    const/4 v0, 0x0

    .line 778
    :goto_0
    iget-object v1, p0, Lorg/concentus/OpusMSEncoder;->layout:Lorg/concentus/ChannelLayout;

    iget v1, v1, Lorg/concentus/ChannelLayout;->nb_streams:I

    if-ge v0, v1, :cond_0

    .line 779
    iget-object v1, p0, Lorg/concentus/OpusMSEncoder;->encoders:[Lorg/concentus/OpusEncoder;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lorg/concentus/OpusEncoder;->setApplication(Lorg/concentus/OpusApplication;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setBandwidth(Lorg/concentus/OpusBandwidth;)V
    .locals 2

    const/4 v0, 0x0

    .line 808
    :goto_0
    iget-object v1, p0, Lorg/concentus/OpusMSEncoder;->layout:Lorg/concentus/ChannelLayout;

    iget v1, v1, Lorg/concentus/ChannelLayout;->nb_streams:I

    if-ge v0, v1, :cond_0

    .line 809
    iget-object v1, p0, Lorg/concentus/OpusMSEncoder;->encoders:[Lorg/concentus/OpusEncoder;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lorg/concentus/OpusEncoder;->setBandwidth(Lorg/concentus/OpusBandwidth;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setBitrate(I)V
    .locals 1

    if-gez p1, :cond_1

    const/16 v0, -0x3e8

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 768
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid bitrate"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 770
    :cond_1
    :goto_0
    iput p1, p0, Lorg/concentus/OpusMSEncoder;->bitrate_bps:I

    return-void
.end method

.method public setComplexity(I)V
    .locals 2

    const/4 v0, 0x0

    .line 828
    :goto_0
    iget-object v1, p0, Lorg/concentus/OpusMSEncoder;->layout:Lorg/concentus/ChannelLayout;

    iget v1, v1, Lorg/concentus/ChannelLayout;->nb_streams:I

    if-ge v0, v1, :cond_0

    .line 829
    iget-object v1, p0, Lorg/concentus/OpusMSEncoder;->encoders:[Lorg/concentus/OpusEncoder;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lorg/concentus/OpusEncoder;->setComplexity(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setExpertFrameDuration(Lorg/concentus/OpusFramesize;)V
    .locals 0

    .line 936
    iput-object p1, p0, Lorg/concentus/OpusMSEncoder;->variable_duration:Lorg/concentus/OpusFramesize;

    return-void
.end method

.method public setForceChannels(I)V
    .locals 2

    const/4 v0, 0x0

    .line 788
    :goto_0
    iget-object v1, p0, Lorg/concentus/OpusMSEncoder;->layout:Lorg/concentus/ChannelLayout;

    iget v1, v1, Lorg/concentus/ChannelLayout;->nb_streams:I

    if-ge v0, v1, :cond_0

    .line 789
    iget-object v1, p0, Lorg/concentus/OpusMSEncoder;->encoders:[Lorg/concentus/OpusEncoder;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lorg/concentus/OpusEncoder;->setForceChannels(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setForceMode(Lorg/concentus/OpusMode;)V
    .locals 2

    const/4 v0, 0x0

    .line 838
    :goto_0
    iget-object v1, p0, Lorg/concentus/OpusMSEncoder;->layout:Lorg/concentus/ChannelLayout;

    iget v1, v1, Lorg/concentus/ChannelLayout;->nb_streams:I

    if-ge v0, v1, :cond_0

    .line 839
    iget-object v1, p0, Lorg/concentus/OpusMSEncoder;->encoders:[Lorg/concentus/OpusEncoder;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lorg/concentus/OpusEncoder;->setForceMode(Lorg/concentus/OpusMode;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setLSBDepth(I)V
    .locals 2

    const/4 v0, 0x0

    .line 916
    :goto_0
    iget-object v1, p0, Lorg/concentus/OpusMSEncoder;->layout:Lorg/concentus/ChannelLayout;

    iget v1, v1, Lorg/concentus/ChannelLayout;->nb_streams:I

    if-ge v0, v1, :cond_0

    .line 917
    iget-object v1, p0, Lorg/concentus/OpusMSEncoder;->encoders:[Lorg/concentus/OpusEncoder;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lorg/concentus/OpusEncoder;->setLSBDepth(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setMaxBandwidth(Lorg/concentus/OpusBandwidth;)V
    .locals 2

    const/4 v0, 0x0

    .line 798
    :goto_0
    iget-object v1, p0, Lorg/concentus/OpusMSEncoder;->layout:Lorg/concentus/ChannelLayout;

    iget v1, v1, Lorg/concentus/ChannelLayout;->nb_streams:I

    if-ge v0, v1, :cond_0

    .line 799
    iget-object v1, p0, Lorg/concentus/OpusMSEncoder;->encoders:[Lorg/concentus/OpusEncoder;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lorg/concentus/OpusEncoder;->setMaxBandwidth(Lorg/concentus/OpusBandwidth;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setPacketLossPercent(I)V
    .locals 2

    const/4 v0, 0x0

    .line 858
    :goto_0
    iget-object v1, p0, Lorg/concentus/OpusMSEncoder;->layout:Lorg/concentus/ChannelLayout;

    iget v1, v1, Lorg/concentus/ChannelLayout;->nb_streams:I

    if-ge v0, v1, :cond_0

    .line 859
    iget-object v1, p0, Lorg/concentus/OpusMSEncoder;->encoders:[Lorg/concentus/OpusEncoder;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lorg/concentus/OpusEncoder;->setPacketLossPercent(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setPredictionDisabled(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 926
    :goto_0
    iget-object v1, p0, Lorg/concentus/OpusMSEncoder;->layout:Lorg/concentus/ChannelLayout;

    iget v1, v1, Lorg/concentus/ChannelLayout;->nb_streams:I

    if-ge v0, v1, :cond_0

    .line 927
    iget-object v1, p0, Lorg/concentus/OpusMSEncoder;->encoders:[Lorg/concentus/OpusEncoder;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lorg/concentus/OpusEncoder;->setPredictionDisabled(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setSignalType(Lorg/concentus/OpusSignal;)V
    .locals 2

    const/4 v0, 0x0

    .line 888
    :goto_0
    iget-object v1, p0, Lorg/concentus/OpusMSEncoder;->layout:Lorg/concentus/ChannelLayout;

    iget v1, v1, Lorg/concentus/ChannelLayout;->nb_streams:I

    if-ge v0, v1, :cond_0

    .line 889
    iget-object v1, p0, Lorg/concentus/OpusMSEncoder;->encoders:[Lorg/concentus/OpusEncoder;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lorg/concentus/OpusEncoder;->setSignalType(Lorg/concentus/OpusSignal;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setUseConstrainedVBR(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 878
    :goto_0
    iget-object v1, p0, Lorg/concentus/OpusMSEncoder;->layout:Lorg/concentus/ChannelLayout;

    iget v1, v1, Lorg/concentus/ChannelLayout;->nb_streams:I

    if-ge v0, v1, :cond_0

    .line 879
    iget-object v1, p0, Lorg/concentus/OpusMSEncoder;->encoders:[Lorg/concentus/OpusEncoder;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lorg/concentus/OpusEncoder;->setUseConstrainedVBR(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setUseDTX(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 818
    :goto_0
    iget-object v1, p0, Lorg/concentus/OpusMSEncoder;->layout:Lorg/concentus/ChannelLayout;

    iget v1, v1, Lorg/concentus/ChannelLayout;->nb_streams:I

    if-ge v0, v1, :cond_0

    .line 819
    iget-object v1, p0, Lorg/concentus/OpusMSEncoder;->encoders:[Lorg/concentus/OpusEncoder;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lorg/concentus/OpusEncoder;->setUseDTX(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setUseInbandFEC(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 848
    :goto_0
    iget-object v1, p0, Lorg/concentus/OpusMSEncoder;->layout:Lorg/concentus/ChannelLayout;

    iget v1, v1, Lorg/concentus/ChannelLayout;->nb_streams:I

    if-ge v0, v1, :cond_0

    .line 849
    iget-object v1, p0, Lorg/concentus/OpusMSEncoder;->encoders:[Lorg/concentus/OpusEncoder;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lorg/concentus/OpusEncoder;->setUseInbandFEC(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setUseVBR(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 868
    :goto_0
    iget-object v1, p0, Lorg/concentus/OpusMSEncoder;->layout:Lorg/concentus/ChannelLayout;

    iget v1, v1, Lorg/concentus/ChannelLayout;->nb_streams:I

    if-ge v0, v1, :cond_0

    .line 869
    iget-object v1, p0, Lorg/concentus/OpusMSEncoder;->encoders:[Lorg/concentus/OpusEncoder;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lorg/concentus/OpusEncoder;->setUseVBR(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method surround_rate_allocation([II)I
    .locals 7

    .line 484
    iget-object v0, p0, Lorg/concentus/OpusMSEncoder;->encoders:[Lorg/concentus/OpusEncoder;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 485
    invoke-virtual {v0}, Lorg/concentus/OpusEncoder;->getSampleRate()I

    move-result v0

    .line 487
    iget v2, p0, Lorg/concentus/OpusMSEncoder;->bitrate_bps:I

    iget-object v3, p0, Lorg/concentus/OpusMSEncoder;->layout:Lorg/concentus/ChannelLayout;

    iget v3, v3, Lorg/concentus/ChannelLayout;->nb_channels:I

    const v4, 0x9c40

    mul-int/2addr v3, v4

    if-le v2, v3, :cond_0

    const/16 v2, 0x4e20

    goto :goto_0

    .line 490
    :cond_0
    iget v2, p0, Lorg/concentus/OpusMSEncoder;->bitrate_bps:I

    iget-object v3, p0, Lorg/concentus/OpusMSEncoder;->layout:Lorg/concentus/ChannelLayout;

    iget v3, v3, Lorg/concentus/ChannelLayout;->nb_channels:I

    div-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 492
    :goto_0
    div-int v3, v0, p2

    add-int/lit8 v3, v3, -0x32

    mul-int/lit8 v3, v3, 0x3c

    add-int/2addr v2, v3

    add-int/lit16 v3, v3, 0xdac

    .line 503
    iget v4, p0, Lorg/concentus/OpusMSEncoder;->bitrate_bps:I

    const/16 v5, -0x3e8

    if-ne v4, v5, :cond_1

    mul-int/lit8 v4, v0, 0x3c

    .line 504
    div-int/2addr v4, p2

    add-int/2addr v0, v4

    goto :goto_2

    :cond_1
    const/4 p2, -0x1

    if-ne v4, p2, :cond_2

    const v0, 0x493e0

    goto :goto_2

    .line 512
    :cond_2
    iget v0, p0, Lorg/concentus/OpusMSEncoder;->lfe_stream:I

    if-eq v0, p2, :cond_3

    const/4 p2, 0x1

    goto :goto_1

    :cond_3
    move p2, v1

    .line 513
    :goto_1
    iget-object v0, p0, Lorg/concentus/OpusMSEncoder;->layout:Lorg/concentus/ChannelLayout;

    iget v0, v0, Lorg/concentus/ChannelLayout;->nb_coupled_streams:I

    .line 514
    iget-object v4, p0, Lorg/concentus/OpusMSEncoder;->layout:Lorg/concentus/ChannelLayout;

    iget v4, v4, Lorg/concentus/ChannelLayout;->nb_streams:I

    sub-int/2addr v4, v0

    sub-int/2addr v4, p2

    shl-int/lit8 v5, v4, 0x8

    mul-int/lit16 v6, v0, 0x200

    add-int/2addr v5, v6

    mul-int/lit8 v6, p2, 0x20

    add-int/2addr v5, v6

    .line 518
    iget v6, p0, Lorg/concentus/OpusMSEncoder;->bitrate_bps:I

    mul-int/2addr p2, v3

    sub-int/2addr v6, p2

    add-int/2addr v0, v4

    mul-int/2addr v0, v2

    sub-int/2addr v6, v0

    mul-int/lit16 v6, v6, 0x100

    div-int v0, v6, v5

    :goto_2
    move p2, v1

    .line 521
    :goto_3
    iget-object v4, p0, Lorg/concentus/OpusMSEncoder;->layout:Lorg/concentus/ChannelLayout;

    iget v4, v4, Lorg/concentus/ChannelLayout;->nb_streams:I

    if-ge v1, v4, :cond_6

    .line 522
    iget-object v4, p0, Lorg/concentus/OpusMSEncoder;->layout:Lorg/concentus/ChannelLayout;

    iget v4, v4, Lorg/concentus/ChannelLayout;->nb_coupled_streams:I

    if-ge v1, v4, :cond_4

    mul-int/lit16 v4, v0, 0x200

    shr-int/lit8 v4, v4, 0x8

    add-int/2addr v4, v2

    .line 523
    aput v4, p1, v1

    goto :goto_4

    .line 524
    :cond_4
    iget v4, p0, Lorg/concentus/OpusMSEncoder;->lfe_stream:I

    if-eq v1, v4, :cond_5

    add-int v4, v2, v0

    .line 525
    aput v4, p1, v1

    goto :goto_4

    :cond_5
    mul-int/lit8 v4, v0, 0x20

    shr-int/lit8 v4, v4, 0x8

    add-int/2addr v4, v3

    .line 527
    aput v4, p1, v1

    .line 529
    :goto_4
    aget v4, p1, v1

    const/16 v5, 0x1f4

    invoke-static {v4, v5}, Lorg/concentus/Inlines;->IMAX(II)I

    move-result v4

    aput v4, p1, v1

    add-int/2addr p2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    return p2
.end method
