.class public Lorg/concentus/OpusMSDecoder;
.super Ljava/lang/Object;
.source "OpusMSDecoder.java"


# instance fields
.field decoders:[Lorg/concentus/OpusDecoder;

.field layout:Lorg/concentus/ChannelLayout;


# direct methods
.method private constructor <init>(II)V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance p2, Lorg/concentus/ChannelLayout;

    invoke-direct {p2}, Lorg/concentus/ChannelLayout;-><init>()V

    iput-object p2, p0, Lorg/concentus/OpusMSDecoder;->layout:Lorg/concentus/ChannelLayout;

    const/4 p2, 0x0

    .line 40
    iput-object p2, p0, Lorg/concentus/OpusMSDecoder;->decoders:[Lorg/concentus/OpusDecoder;

    .line 43
    new-array p2, p1, [Lorg/concentus/OpusDecoder;

    iput-object p2, p0, Lorg/concentus/OpusMSDecoder;->decoders:[Lorg/concentus/OpusDecoder;

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    .line 45
    iget-object v0, p0, Lorg/concentus/OpusMSDecoder;->decoders:[Lorg/concentus/OpusDecoder;

    new-instance v1, Lorg/concentus/OpusDecoder;

    invoke-direct {v1}, Lorg/concentus/OpusDecoder;-><init>()V

    aput-object v1, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static create(IIII[S)Lorg/concentus/OpusMSDecoder;
    .locals 7
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

    .line 113
    new-instance v0, Lorg/concentus/OpusMSDecoder;

    invoke-direct {v0, p2, p3}, Lorg/concentus/OpusMSDecoder;-><init>(II)V

    move-object v1, v0

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    .line 114
    invoke-virtual/range {v1 .. v6}, Lorg/concentus/OpusMSDecoder;->opus_multistream_decoder_init(IIII[S)I

    move-result p0

    .line 115
    sget p1, Lorg/concentus/OpusError;->OPUS_OK:I

    if-eq p0, p1, :cond_1

    .line 116
    sget p1, Lorg/concentus/OpusError;->OPUS_BAD_ARG:I

    if-ne p0, p1, :cond_0

    .line 117
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Bad argument while creating MS decoder"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 119
    :cond_0
    new-instance p1, Lorg/concentus/OpusException;

    const-string p2, "Could not create MS decoder"

    invoke-direct {p1, p2, p0}, Lorg/concentus/OpusException;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_1
    return-object v0

    .line 111
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid channel / stream configuration"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static opus_copy_channel_out_short([SIII[SIII)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    :goto_0
    if-ge v0, p7, :cond_1

    mul-int v1, v0, p2

    add-int/2addr v1, p3

    add-int/2addr v1, p1

    mul-int v2, v0, p6

    add-int/2addr v2, p5

    .line 267
    aget-short v2, p4, v2

    aput-short v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move p4, v0

    :goto_1
    if-ge p4, p7, :cond_1

    mul-int p5, p4, p2

    add-int/2addr p5, p3

    add-int/2addr p5, p1

    .line 271
    aput-short v0, p0, p5

    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method static opus_multistream_packet_validate([BIIII)I
    .locals 20

    move/from16 v0, p3

    .line 128
    new-instance v12, Lorg/concentus/BoxedValueByte;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Lorg/concentus/BoxedValueByte;-><init>(B)V

    const/16 v1, 0x30

    .line 129
    new-array v14, v1, [S

    .line 131
    new-instance v15, Lorg/concentus/BoxedValueInt;

    invoke-direct {v15, v13}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    .line 132
    new-instance v11, Lorg/concentus/BoxedValueInt;

    invoke-direct {v11, v13}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    move/from16 v10, p1

    move/from16 v16, p2

    move v8, v13

    move v9, v8

    :goto_0
    if-ge v9, v0, :cond_4

    if-gtz v16, :cond_0

    .line 137
    sget v0, Lorg/concentus/OpusError;->OPUS_INVALID_PACKET:I

    return v0

    :cond_0
    add-int/lit8 v1, v0, -0x1

    if-eq v9, v1, :cond_1

    const/4 v1, 0x1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v13

    :goto_1
    const/4 v7, 0x0

    const/16 v17, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move v2, v10

    move/from16 v3, v16

    move-object v5, v12

    move v13, v8

    move-object v8, v14

    move/from16 v18, v9

    move/from16 v9, v17

    move/from16 v19, v10

    move-object v10, v11

    move-object/from16 v17, v11

    move-object v11, v15

    .line 140
    invoke-static/range {v1 .. v11}, Lorg/concentus/OpusPacketInfo;->opus_packet_parse_impl([BIIILorg/concentus/BoxedValueByte;[[BI[SILorg/concentus/BoxedValueInt;Lorg/concentus/BoxedValueInt;)I

    move-result v1

    if-gez v1, :cond_2

    return v1

    .line 146
    :cond_2
    iget v1, v15, Lorg/concentus/BoxedValueInt;->Val:I

    move-object/from16 v2, p0

    move/from16 v3, p4

    move/from16 v4, v19

    invoke-static {v2, v4, v1, v3}, Lorg/concentus/OpusPacketInfo;->getNumSamples([BIII)I

    move-result v8

    if-eqz v18, :cond_3

    if-eq v13, v8, :cond_3

    .line 148
    sget v0, Lorg/concentus/OpusError;->OPUS_INVALID_PACKET:I

    return v0

    .line 151
    :cond_3
    iget v1, v15, Lorg/concentus/BoxedValueInt;->Val:I

    add-int v10, v4, v1

    .line 152
    iget v1, v15, Lorg/concentus/BoxedValueInt;->Val:I

    sub-int v16, v16, v1

    add-int/lit8 v9, v18, 0x1

    move-object/from16 v11, v17

    const/4 v13, 0x0

    goto :goto_0

    :cond_4
    move v13, v8

    return v13
.end method


# virtual methods
.method public GetMultistreamDecoderState(I)Lorg/concentus/OpusDecoder;
    .locals 1

    .line 338
    iget-object v0, p0, Lorg/concentus/OpusMSDecoder;->decoders:[Lorg/concentus/OpusDecoder;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public ResetState()V
    .locals 2

    const/4 v0, 0x0

    .line 332
    :goto_0
    iget-object v1, p0, Lorg/concentus/OpusMSDecoder;->layout:Lorg/concentus/ChannelLayout;

    iget v1, v1, Lorg/concentus/ChannelLayout;->nb_streams:I

    if-ge v0, v1, :cond_0

    .line 333
    iget-object v1, p0, Lorg/concentus/OpusMSDecoder;->decoders:[Lorg/concentus/OpusDecoder;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/concentus/OpusDecoder;->resetState()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public decodeMultistream([BII[SIII)I
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    .line 285
    invoke-virtual/range {v0 .. v8}, Lorg/concentus/OpusMSDecoder;->opus_multistream_decode_native([BII[SIIII)I

    move-result v0

    return v0
.end method

.method public getBandwidth()Lorg/concentus/OpusBandwidth;
    .locals 2

    .line 290
    iget-object v0, p0, Lorg/concentus/OpusMSDecoder;->decoders:[Lorg/concentus/OpusDecoder;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 293
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/concentus/OpusDecoder;->getBandwidth()Lorg/concentus/OpusBandwidth;

    move-result-object v0

    return-object v0

    .line 291
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Decoder not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFinalRange()I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 325
    :goto_0
    iget-object v2, p0, Lorg/concentus/OpusMSDecoder;->layout:Lorg/concentus/ChannelLayout;

    iget v2, v2, Lorg/concentus/ChannelLayout;->nb_streams:I

    if-ge v0, v2, :cond_0

    .line 326
    iget-object v2, p0, Lorg/concentus/OpusMSDecoder;->decoders:[Lorg/concentus/OpusDecoder;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/concentus/OpusDecoder;->getFinalRange()I

    move-result v2

    xor-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public getGain()I
    .locals 2

    .line 304
    iget-object v0, p0, Lorg/concentus/OpusMSDecoder;->decoders:[Lorg/concentus/OpusDecoder;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 307
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/concentus/OpusDecoder;->getGain()I

    move-result v0

    return v0

    .line 305
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Decoder not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLastPacketDuration()I
    .locals 2

    .line 317
    iget-object v0, p0, Lorg/concentus/OpusMSDecoder;->decoders:[Lorg/concentus/OpusDecoder;

    if-eqz v0, :cond_1

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 320
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/concentus/OpusDecoder;->getLastPacketDuration()I

    move-result v0

    return v0

    .line 318
    :cond_1
    :goto_0
    sget v0, Lorg/concentus/OpusError;->OPUS_INVALID_STATE:I

    return v0
.end method

.method public getSampleRate()I
    .locals 2

    .line 297
    iget-object v0, p0, Lorg/concentus/OpusMSDecoder;->decoders:[Lorg/concentus/OpusDecoder;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 300
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/concentus/OpusDecoder;->getSampleRate()I

    move-result v0

    return v0

    .line 298
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Decoder not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method opus_multistream_decode_native([BII[SIIII)I
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p3

    .line 175
    invoke-virtual/range {p0 .. p0}, Lorg/concentus/OpusMSDecoder;->getSampleRate()I

    move-result v2

    .line 176
    div-int/lit8 v3, v2, 0x19

    mul-int/lit8 v3, v3, 0x3

    move/from16 v4, p6

    invoke-static {v4, v3}, Lorg/concentus/Inlines;->IMIN(II)I

    move-result v3

    mul-int/lit8 v4, v3, 0x2

    .line 177
    new-array v4, v4, [S

    const/16 v16, 0x1

    const/4 v15, 0x0

    if-nez v1, :cond_0

    move/from16 v17, v16

    goto :goto_0

    :cond_0
    move/from16 v17, v15

    :goto_0
    if-gez v1, :cond_1

    .line 184
    sget v1, Lorg/concentus/OpusError;->OPUS_BAD_ARG:I

    return v1

    :cond_1
    if-nez v17, :cond_2

    .line 186
    iget-object v5, v0, Lorg/concentus/OpusMSDecoder;->layout:Lorg/concentus/ChannelLayout;

    iget v5, v5, Lorg/concentus/ChannelLayout;->nb_streams:I

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_2

    .line 187
    sget v1, Lorg/concentus/OpusError;->OPUS_INVALID_PACKET:I

    return v1

    :cond_2
    if-nez v17, :cond_4

    .line 190
    iget-object v5, v0, Lorg/concentus/OpusMSDecoder;->layout:Lorg/concentus/ChannelLayout;

    iget v5, v5, Lorg/concentus/ChannelLayout;->nb_streams:I

    move-object/from16 v14, p1

    move/from16 v6, p2

    invoke-static {v14, v6, v1, v5, v2}, Lorg/concentus/OpusMSDecoder;->opus_multistream_packet_validate([BIIII)I

    move-result v2

    if-gez v2, :cond_3

    return v2

    :cond_3
    if-le v2, v3, :cond_5

    .line 194
    sget v1, Lorg/concentus/OpusError;->OPUS_BUFFER_TOO_SMALL:I

    return v1

    :cond_4
    move-object/from16 v14, p1

    move/from16 v6, p2

    :cond_5
    move v2, v1

    move v1, v6

    move v5, v15

    move v13, v5

    .line 197
    :goto_1
    iget-object v6, v0, Lorg/concentus/OpusMSDecoder;->layout:Lorg/concentus/ChannelLayout;

    iget v6, v6, Lorg/concentus/ChannelLayout;->nb_streams:I

    if-ge v13, v6, :cond_c

    .line 201
    iget-object v6, v0, Lorg/concentus/OpusMSDecoder;->decoders:[Lorg/concentus/OpusDecoder;

    add-int/lit8 v18, v5, 0x1

    aget-object v5, v6, v5

    if-nez v17, :cond_6

    if-gtz v2, :cond_6

    .line 204
    sget v1, Lorg/concentus/OpusError;->OPUS_INTERNAL_ERROR:I

    return v1

    .line 206
    :cond_6
    new-instance v12, Lorg/concentus/BoxedValueInt;

    invoke-direct {v12, v15}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    .line 209
    iget-object v6, v0, Lorg/concentus/OpusMSDecoder;->layout:Lorg/concentus/ChannelLayout;

    iget v6, v6, Lorg/concentus/ChannelLayout;->nb_streams:I

    add-int/lit8 v6, v6, -0x1

    if-eq v13, v6, :cond_7

    move/from16 v19, v16

    goto :goto_2

    :cond_7
    move/from16 v19, v15

    :goto_2
    const/4 v10, 0x0

    move-object/from16 v6, p1

    move v7, v1

    move v8, v2

    move-object v9, v4

    move v11, v3

    move-object v3, v12

    move/from16 v12, p7

    move/from16 v20, v13

    move/from16 v13, v19

    move-object v14, v3

    move/from16 v19, v15

    move/from16 v15, p8

    .line 207
    invoke-virtual/range {v5 .. v15}, Lorg/concentus/OpusDecoder;->opus_decode_native([BII[SIIIILorg/concentus/BoxedValueInt;I)I

    move-result v13

    .line 210
    iget v5, v3, Lorg/concentus/BoxedValueInt;->Val:I

    add-int/2addr v1, v5

    .line 211
    iget v3, v3, Lorg/concentus/BoxedValueInt;->Val:I

    sub-int/2addr v2, v3

    if-gtz v13, :cond_8

    return v13

    .line 216
    :cond_8
    iget-object v3, v0, Lorg/concentus/OpusMSDecoder;->layout:Lorg/concentus/ChannelLayout;

    iget v3, v3, Lorg/concentus/ChannelLayout;->nb_coupled_streams:I

    const/4 v14, -0x1

    move/from16 v15, v20

    if-ge v15, v3, :cond_a

    move v3, v14

    .line 220
    :goto_3
    iget-object v5, v0, Lorg/concentus/OpusMSDecoder;->layout:Lorg/concentus/ChannelLayout;

    invoke-static {v5, v15, v3}, Lorg/concentus/OpusMultistream;->get_left_channel(Lorg/concentus/ChannelLayout;II)I

    move-result v3

    if-eq v3, v14, :cond_9

    .line 221
    iget-object v5, v0, Lorg/concentus/OpusMSDecoder;->layout:Lorg/concentus/ChannelLayout;

    iget v7, v5, Lorg/concentus/ChannelLayout;->nb_channels:I

    const/4 v10, 0x0

    const/4 v11, 0x2

    move-object/from16 v5, p4

    move/from16 v6, p5

    move v8, v3

    move-object v9, v4

    move v12, v13

    invoke-static/range {v5 .. v12}, Lorg/concentus/OpusMSDecoder;->opus_copy_channel_out_short([SIII[SIII)V

    goto :goto_3

    :cond_9
    move v3, v14

    .line 227
    :goto_4
    iget-object v5, v0, Lorg/concentus/OpusMSDecoder;->layout:Lorg/concentus/ChannelLayout;

    invoke-static {v5, v15, v3}, Lorg/concentus/OpusMultistream;->get_right_channel(Lorg/concentus/ChannelLayout;II)I

    move-result v3

    if-eq v3, v14, :cond_b

    .line 228
    iget-object v5, v0, Lorg/concentus/OpusMSDecoder;->layout:Lorg/concentus/ChannelLayout;

    iget v7, v5, Lorg/concentus/ChannelLayout;->nb_channels:I

    const/4 v10, 0x1

    const/4 v11, 0x2

    move-object/from16 v5, p4

    move/from16 v6, p5

    move v8, v3

    move-object v9, v4

    move v12, v13

    invoke-static/range {v5 .. v12}, Lorg/concentus/OpusMSDecoder;->opus_copy_channel_out_short([SIII[SIII)V

    goto :goto_4

    :cond_a
    move v3, v14

    .line 236
    :goto_5
    iget-object v5, v0, Lorg/concentus/OpusMSDecoder;->layout:Lorg/concentus/ChannelLayout;

    invoke-static {v5, v15, v3}, Lorg/concentus/OpusMultistream;->get_mono_channel(Lorg/concentus/ChannelLayout;II)I

    move-result v3

    if-eq v3, v14, :cond_b

    .line 237
    iget-object v5, v0, Lorg/concentus/OpusMSDecoder;->layout:Lorg/concentus/ChannelLayout;

    iget v7, v5, Lorg/concentus/ChannelLayout;->nb_channels:I

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v5, p4

    move/from16 v6, p5

    move v8, v3

    move-object v9, v4

    move v12, v13

    invoke-static/range {v5 .. v12}, Lorg/concentus/OpusMSDecoder;->opus_copy_channel_out_short([SIII[SIII)V

    goto :goto_5

    :cond_b
    add-int/lit8 v3, v15, 0x1

    move-object/from16 v14, p1

    move/from16 v5, v18

    move/from16 v15, v19

    move/from16 v21, v13

    move v13, v3

    move/from16 v3, v21

    goto/16 :goto_1

    :cond_c
    move/from16 v19, v15

    .line 244
    :goto_6
    iget-object v1, v0, Lorg/concentus/OpusMSDecoder;->layout:Lorg/concentus/ChannelLayout;

    iget v1, v1, Lorg/concentus/ChannelLayout;->nb_channels:I

    if-ge v15, v1, :cond_e

    .line 245
    iget-object v1, v0, Lorg/concentus/OpusMSDecoder;->layout:Lorg/concentus/ChannelLayout;

    iget-object v1, v1, Lorg/concentus/ChannelLayout;->mapping:[S

    aget-short v1, v1, v15

    const/16 v2, 0xff

    if-ne v1, v2, :cond_d

    .line 246
    iget-object v1, v0, Lorg/concentus/OpusMSDecoder;->layout:Lorg/concentus/ChannelLayout;

    iget v7, v1, Lorg/concentus/ChannelLayout;->nb_channels:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p4

    move/from16 v6, p5

    move v8, v15

    move v12, v3

    invoke-static/range {v5 .. v12}, Lorg/concentus/OpusMSDecoder;->opus_copy_channel_out_short([SIII[SIII)V

    :cond_d
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    :cond_e
    return v3
.end method

.method opus_multistream_decoder_init(IIII[S)I
    .locals 2

    const/16 v0, 0xff

    if-gt p2, v0, :cond_6

    const/4 v0, 0x1

    if-lt p2, v0, :cond_6

    if-gt p4, p3, :cond_6

    if-lt p3, v0, :cond_6

    if-ltz p4, :cond_6

    rsub-int v1, p4, 0xff

    if-gt p3, v1, :cond_6

    .line 64
    iget-object v1, p0, Lorg/concentus/OpusMSDecoder;->layout:Lorg/concentus/ChannelLayout;

    iput p2, v1, Lorg/concentus/ChannelLayout;->nb_channels:I

    .line 65
    iget-object p2, p0, Lorg/concentus/OpusMSDecoder;->layout:Lorg/concentus/ChannelLayout;

    iput p3, p2, Lorg/concentus/ChannelLayout;->nb_streams:I

    .line 66
    iget-object p2, p0, Lorg/concentus/OpusMSDecoder;->layout:Lorg/concentus/ChannelLayout;

    iput p4, p2, Lorg/concentus/ChannelLayout;->nb_coupled_streams:I

    const/4 p2, 0x0

    move p3, p2

    .line 68
    :goto_0
    iget-object p4, p0, Lorg/concentus/OpusMSDecoder;->layout:Lorg/concentus/ChannelLayout;

    iget p4, p4, Lorg/concentus/ChannelLayout;->nb_channels:I

    if-ge p3, p4, :cond_0

    .line 69
    iget-object p4, p0, Lorg/concentus/OpusMSDecoder;->layout:Lorg/concentus/ChannelLayout;

    iget-object p4, p4, Lorg/concentus/ChannelLayout;->mapping:[S

    aget-short v1, p5, p3

    aput-short v1, p4, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 71
    :cond_0
    iget-object p3, p0, Lorg/concentus/OpusMSDecoder;->layout:Lorg/concentus/ChannelLayout;

    invoke-static {p3}, Lorg/concentus/OpusMultistream;->validate_layout(Lorg/concentus/ChannelLayout;)I

    move-result p3

    if-eqz p3, :cond_5

    move p3, p2

    .line 75
    :goto_1
    iget-object p4, p0, Lorg/concentus/OpusMSDecoder;->layout:Lorg/concentus/ChannelLayout;

    iget p4, p4, Lorg/concentus/ChannelLayout;->nb_coupled_streams:I

    if-ge p2, p4, :cond_2

    .line 76
    iget-object p4, p0, Lorg/concentus/OpusMSDecoder;->decoders:[Lorg/concentus/OpusDecoder;

    aget-object p4, p4, p3

    const/4 p5, 0x2

    invoke-virtual {p4, p1, p5}, Lorg/concentus/OpusDecoder;->opus_decoder_init(II)I

    move-result p4

    .line 77
    sget p5, Lorg/concentus/OpusError;->OPUS_OK:I

    if-eq p4, p5, :cond_1

    return p4

    :cond_1
    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 82
    :cond_2
    :goto_2
    iget-object p4, p0, Lorg/concentus/OpusMSDecoder;->layout:Lorg/concentus/ChannelLayout;

    iget p4, p4, Lorg/concentus/ChannelLayout;->nb_streams:I

    if-ge p2, p4, :cond_4

    .line 83
    iget-object p4, p0, Lorg/concentus/OpusMSDecoder;->decoders:[Lorg/concentus/OpusDecoder;

    aget-object p4, p4, p3

    invoke-virtual {p4, p1, v0}, Lorg/concentus/OpusDecoder;->opus_decoder_init(II)I

    move-result p4

    .line 84
    sget p5, Lorg/concentus/OpusError;->OPUS_OK:I

    if-eq p4, p5, :cond_3

    return p4

    :cond_3
    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 89
    :cond_4
    sget p1, Lorg/concentus/OpusError;->OPUS_OK:I

    return p1

    .line 72
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid surround channel layout"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 61
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid channel or coupled stream count"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setGain(I)V
    .locals 2

    const/4 v0, 0x0

    .line 311
    :goto_0
    iget-object v1, p0, Lorg/concentus/OpusMSDecoder;->layout:Lorg/concentus/ChannelLayout;

    iget v1, v1, Lorg/concentus/ChannelLayout;->nb_streams:I

    if-ge v0, v1, :cond_0

    .line 312
    iget-object v1, p0, Lorg/concentus/OpusMSDecoder;->decoders:[Lorg/concentus/OpusDecoder;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lorg/concentus/OpusDecoder;->setGain(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
