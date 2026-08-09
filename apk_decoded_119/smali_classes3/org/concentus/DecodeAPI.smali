.class Lorg/concentus/DecodeAPI;
.super Ljava/lang/Object;
.source "DecodeAPI.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static silk_Decode(Lorg/concentus/SilkDecoder;Lorg/concentus/DecControlState;IILorg/concentus/EntropyCoder;[SILorg/concentus/BoxedValueInt;)I
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v9, p2

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move/from16 v12, p6

    move-object/from16 v13, p7

    .line 71
    sget v2, Lorg/concentus/SilkError;->SILK_NO_ERROR:I

    .line 73
    new-instance v14, Lorg/concentus/BoxedValueInt;

    const/4 v15, 0x0

    invoke-direct {v14, v15}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    const/4 v8, 0x2

    .line 75
    new-array v7, v8, [I

    .line 79
    new-array v6, v8, [I

    aput v15, v6, v15

    const/4 v5, 0x1

    aput v15, v6, v5

    .line 82
    iget-object v4, v0, Lorg/concentus/SilkDecoder;->channel_state:[Lorg/concentus/SilkChannelDecoder;

    .line 86
    iput v15, v13, Lorg/concentus/BoxedValueInt;->Val:I

    .line 88
    iget v3, v1, Lorg/concentus/DecControlState;->nChannelsInternal:I

    if-eq v3, v5, :cond_1

    iget v3, v1, Lorg/concentus/DecControlState;->nChannelsInternal:I

    if-ne v3, v8, :cond_0

    goto :goto_0

    :cond_0
    move v3, v15

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v5

    :goto_1
    invoke-static {v3}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    if-eqz p3, :cond_2

    move v3, v15

    .line 98
    :goto_2
    iget v8, v1, Lorg/concentus/DecControlState;->nChannelsInternal:I

    if-ge v3, v8, :cond_2

    .line 99
    aget-object v8, v4, v3

    iput v15, v8, Lorg/concentus/SilkChannelDecoder;->nFramesDecoded:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 105
    :cond_2
    iget v3, v1, Lorg/concentus/DecControlState;->nChannelsInternal:I

    iget v8, v0, Lorg/concentus/SilkDecoder;->nChannelsInternal:I

    if-le v3, v8, :cond_3

    .line 106
    aget-object v3, v4, v5

    invoke-virtual {v3}, Lorg/concentus/SilkChannelDecoder;->silk_init_decoder()I

    move-result v3

    add-int/2addr v2, v3

    .line 109
    :cond_3
    iget v3, v1, Lorg/concentus/DecControlState;->nChannelsInternal:I

    const/16 v8, 0x3e8

    if-ne v3, v5, :cond_4

    iget v3, v0, Lorg/concentus/SilkDecoder;->nChannelsInternal:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_4

    iget v3, v1, Lorg/concentus/DecControlState;->internalSampleRate:I

    aget-object v5, v4, v15

    iget v5, v5, Lorg/concentus/SilkChannelDecoder;->fs_kHz:I

    mul-int/2addr v5, v8

    if-ne v3, v5, :cond_4

    const/16 v24, 0x1

    goto :goto_3

    :cond_4
    move/from16 v24, v15

    .line 112
    :goto_3
    aget-object v3, v4, v15

    iget v3, v3, Lorg/concentus/SilkChannelDecoder;->nFramesDecoded:I

    const/16 v15, 0xa

    if-nez v3, :cond_b

    const/4 v3, 0x0

    .line 113
    :goto_4
    iget v8, v1, Lorg/concentus/DecControlState;->nChannelsInternal:I

    if-ge v3, v8, :cond_b

    .line 115
    iget v8, v1, Lorg/concentus/DecControlState;->payloadSize_ms:I

    if-nez v8, :cond_5

    .line 117
    aget-object v8, v4, v3

    const/4 v5, 0x1

    iput v5, v8, Lorg/concentus/SilkChannelDecoder;->nFramesPerPacket:I

    .line 118
    aget-object v8, v4, v3

    const/4 v5, 0x2

    iput v5, v8, Lorg/concentus/SilkChannelDecoder;->nb_subfr:I

    :goto_5
    const/4 v8, 0x4

    goto :goto_6

    :cond_5
    const/4 v5, 0x2

    .line 119
    iget v8, v1, Lorg/concentus/DecControlState;->payloadSize_ms:I

    if-ne v8, v15, :cond_6

    .line 120
    aget-object v8, v4, v3

    const/4 v15, 0x1

    iput v15, v8, Lorg/concentus/SilkChannelDecoder;->nFramesPerPacket:I

    .line 121
    aget-object v8, v4, v3

    iput v5, v8, Lorg/concentus/SilkChannelDecoder;->nb_subfr:I

    goto :goto_5

    :cond_6
    const/4 v15, 0x1

    .line 122
    iget v5, v1, Lorg/concentus/DecControlState;->payloadSize_ms:I

    const/16 v8, 0x14

    if-ne v5, v8, :cond_7

    .line 123
    aget-object v5, v4, v3

    iput v15, v5, Lorg/concentus/SilkChannelDecoder;->nFramesPerPacket:I

    .line 124
    aget-object v5, v4, v3

    const/4 v8, 0x4

    iput v8, v5, Lorg/concentus/SilkChannelDecoder;->nb_subfr:I

    goto :goto_6

    :cond_7
    const/4 v8, 0x4

    .line 125
    iget v5, v1, Lorg/concentus/DecControlState;->payloadSize_ms:I

    const/16 v15, 0x28

    if-ne v5, v15, :cond_8

    .line 126
    aget-object v5, v4, v3

    const/4 v15, 0x2

    iput v15, v5, Lorg/concentus/SilkChannelDecoder;->nFramesPerPacket:I

    .line 127
    aget-object v5, v4, v3

    iput v8, v5, Lorg/concentus/SilkChannelDecoder;->nb_subfr:I

    goto :goto_6

    .line 128
    :cond_8
    iget v5, v1, Lorg/concentus/DecControlState;->payloadSize_ms:I

    const/16 v15, 0x3c

    if-ne v5, v15, :cond_a

    .line 129
    aget-object v5, v4, v3

    const/4 v15, 0x3

    iput v15, v5, Lorg/concentus/SilkChannelDecoder;->nFramesPerPacket:I

    .line 130
    aget-object v5, v4, v3

    iput v8, v5, Lorg/concentus/SilkChannelDecoder;->nb_subfr:I

    .line 135
    :goto_6
    iget v5, v1, Lorg/concentus/DecControlState;->internalSampleRate:I

    const/16 v15, 0xa

    shr-int/2addr v5, v15

    const/4 v15, 0x1

    add-int/2addr v5, v15

    const/16 v15, 0x8

    if-eq v5, v15, :cond_9

    const/16 v15, 0xc

    if-eq v5, v15, :cond_9

    const/16 v15, 0x10

    if-eq v5, v15, :cond_9

    const/4 v15, 0x0

    .line 137
    invoke-static {v15}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    .line 138
    sget v0, Lorg/concentus/SilkError;->SILK_DEC_INVALID_SAMPLING_FREQUENCY:I

    return v0

    .line 140
    :cond_9
    aget-object v15, v4, v3

    iget v8, v1, Lorg/concentus/DecControlState;->API_sampleRate:I

    invoke-virtual {v15, v5, v8}, Lorg/concentus/SilkChannelDecoder;->silk_decoder_set_fs(II)I

    move-result v5

    add-int/2addr v2, v5

    add-int/lit8 v3, v3, 0x1

    const/16 v15, 0xa

    goto :goto_4

    :cond_a
    const/4 v2, 0x0

    .line 132
    invoke-static {v2}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    .line 133
    sget v0, Lorg/concentus/SilkError;->SILK_DEC_INVALID_FRAME_SIZE:I

    return v0

    .line 144
    :cond_b
    iget v3, v1, Lorg/concentus/DecControlState;->nChannelsAPI:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_d

    iget v3, v1, Lorg/concentus/DecControlState;->nChannelsInternal:I

    if-ne v3, v5, :cond_d

    iget v3, v0, Lorg/concentus/SilkDecoder;->nChannelsAPI:I

    const/4 v8, 0x1

    if-eq v3, v8, :cond_c

    iget v3, v0, Lorg/concentus/SilkDecoder;->nChannelsInternal:I

    if-ne v3, v8, :cond_d

    .line 145
    :cond_c
    iget-object v3, v0, Lorg/concentus/SilkDecoder;->sStereo:Lorg/concentus/StereoDecodeState;

    iget-object v3, v3, Lorg/concentus/StereoDecodeState;->pred_prev_Q13:[S

    const/4 v15, 0x0

    invoke-static {v3, v15, v5}, Lorg/concentus/Arrays;->MemSet([SSI)V

    .line 146
    iget-object v3, v0, Lorg/concentus/SilkDecoder;->sStereo:Lorg/concentus/StereoDecodeState;

    iget-object v3, v3, Lorg/concentus/StereoDecodeState;->sSide:[S

    invoke-static {v3, v15, v5}, Lorg/concentus/Arrays;->MemSet([SSI)V

    .line 147
    aget-object v3, v4, v8

    iget-object v3, v3, Lorg/concentus/SilkChannelDecoder;->resampler_state:Lorg/concentus/SilkResamplerState;

    aget-object v5, v4, v15

    iget-object v5, v5, Lorg/concentus/SilkChannelDecoder;->resampler_state:Lorg/concentus/SilkResamplerState;

    invoke-virtual {v3, v5}, Lorg/concentus/SilkResamplerState;->Assign(Lorg/concentus/SilkResamplerState;)V

    .line 149
    :cond_d
    iget v3, v1, Lorg/concentus/DecControlState;->nChannelsAPI:I

    iput v3, v0, Lorg/concentus/SilkDecoder;->nChannelsAPI:I

    .line 150
    iget v3, v1, Lorg/concentus/DecControlState;->nChannelsInternal:I

    iput v3, v0, Lorg/concentus/SilkDecoder;->nChannelsInternal:I

    .line 152
    iget v3, v1, Lorg/concentus/DecControlState;->API_sampleRate:I

    const v5, 0xbb80

    if-gt v3, v5, :cond_3a

    iget v3, v1, Lorg/concentus/DecControlState;->API_sampleRate:I

    const/16 v5, 0x1f40

    if-ge v3, v5, :cond_e

    goto/16 :goto_2a

    :cond_e
    const/4 v3, 0x1

    if-eq v9, v3, :cond_1a

    const/4 v3, 0x0

    .line 157
    aget-object v5, v4, v3

    iget v3, v5, Lorg/concentus/SilkChannelDecoder;->nFramesDecoded:I

    if-nez v3, :cond_1a

    const/4 v3, 0x0

    .line 160
    :goto_7
    iget v5, v1, Lorg/concentus/DecControlState;->nChannelsInternal:I

    if-ge v3, v5, :cond_10

    const/4 v5, 0x0

    .line 161
    :goto_8
    aget-object v8, v4, v3

    iget v8, v8, Lorg/concentus/SilkChannelDecoder;->nFramesPerPacket:I

    move-object v15, v14

    const-wide/16 v13, 0x1

    if-ge v5, v8, :cond_f

    .line 162
    aget-object v8, v4, v3

    iget-object v8, v8, Lorg/concentus/SilkChannelDecoder;->VAD_flags:[I

    invoke-virtual {v10, v13, v14}, Lorg/concentus/EntropyCoder;->dec_bit_logp(J)I

    move-result v13

    aput v13, v8, v5

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v13, p7

    move-object v14, v15

    goto :goto_8

    .line 164
    :cond_f
    aget-object v5, v4, v3

    invoke-virtual {v10, v13, v14}, Lorg/concentus/EntropyCoder;->dec_bit_logp(J)I

    move-result v8

    iput v8, v5, Lorg/concentus/SilkChannelDecoder;->LBRR_flag:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v13, p7

    move-object v14, v15

    goto :goto_7

    :cond_10
    move-object v15, v14

    const/4 v3, 0x0

    .line 167
    :goto_9
    iget v5, v1, Lorg/concentus/DecControlState;->nChannelsInternal:I

    if-ge v3, v5, :cond_13

    .line 168
    aget-object v5, v4, v3

    iget-object v5, v5, Lorg/concentus/SilkChannelDecoder;->LBRR_flags:[I

    const/4 v8, 0x3

    const/4 v13, 0x0

    invoke-static {v5, v13, v8}, Lorg/concentus/Arrays;->MemSet([III)V

    .line 169
    aget-object v5, v4, v3

    iget v5, v5, Lorg/concentus/SilkChannelDecoder;->LBRR_flag:I

    if-eqz v5, :cond_12

    .line 170
    aget-object v5, v4, v3

    iget v5, v5, Lorg/concentus/SilkChannelDecoder;->nFramesPerPacket:I

    const/4 v8, 0x1

    if-ne v5, v8, :cond_11

    .line 171
    aget-object v5, v4, v3

    iget-object v5, v5, Lorg/concentus/SilkChannelDecoder;->LBRR_flags:[I

    aput v8, v5, v13

    goto :goto_b

    .line 173
    :cond_11
    sget-object v5, Lorg/concentus/SilkTables;->silk_LBRR_flags_iCDF_ptr:[[S

    aget-object v13, v4, v3

    iget v13, v13, Lorg/concentus/SilkChannelDecoder;->nFramesPerPacket:I

    const/4 v14, 0x2

    sub-int/2addr v13, v14

    aget-object v5, v5, v13

    const/16 v13, 0x8

    invoke-virtual {v10, v5, v13}, Lorg/concentus/EntropyCoder;->dec_icdf([SI)I

    move-result v5

    add-int/2addr v5, v8

    const/4 v14, 0x0

    .line 174
    :goto_a
    aget-object v13, v4, v3

    iget v13, v13, Lorg/concentus/SilkChannelDecoder;->nFramesPerPacket:I

    if-ge v14, v13, :cond_12

    .line 175
    aget-object v13, v4, v3

    iget-object v13, v13, Lorg/concentus/SilkChannelDecoder;->LBRR_flags:[I

    invoke-static {v5, v14}, Lorg/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v17

    and-int/lit8 v21, v17, 0x1

    aput v21, v13, v14

    add-int/lit8 v14, v14, 0x1

    const/4 v8, 0x1

    goto :goto_a

    :cond_12
    :goto_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_13
    if-nez v9, :cond_19

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_c
    const/4 v8, 0x0

    .line 183
    aget-object v13, v4, v8

    iget v8, v13, Lorg/concentus/SilkChannelDecoder;->nFramesPerPacket:I

    if-ge v3, v8, :cond_18

    const/4 v8, 0x0

    .line 184
    :goto_d
    iget v13, v1, Lorg/concentus/DecControlState;->nChannelsInternal:I

    if-ge v8, v13, :cond_17

    .line 185
    aget-object v13, v4, v8

    iget-object v13, v13, Lorg/concentus/SilkChannelDecoder;->LBRR_flags:[I

    aget v13, v13, v3

    if-eqz v13, :cond_16

    const/16 v13, 0x140

    .line 186
    new-array v13, v13, [S

    .line 189
    iget v14, v1, Lorg/concentus/DecControlState;->nChannelsInternal:I

    move/from16 v21, v2

    const/4 v2, 0x2

    if-ne v14, v2, :cond_14

    if-nez v8, :cond_14

    .line 190
    invoke-static {v10, v6}, Lorg/concentus/Stereo;->silk_stereo_decode_pred(Lorg/concentus/EntropyCoder;[I)V

    const/4 v2, 0x1

    .line 191
    aget-object v14, v4, v2

    iget-object v2, v14, Lorg/concentus/SilkChannelDecoder;->LBRR_flags:[I

    aget v2, v2, v3

    if-nez v2, :cond_14

    .line 192
    new-instance v2, Lorg/concentus/BoxedValueInt;

    invoke-direct {v2, v5}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    .line 193
    invoke-static {v10, v2}, Lorg/concentus/Stereo;->silk_stereo_decode_mid_only(Lorg/concentus/EntropyCoder;Lorg/concentus/BoxedValueInt;)V

    .line 194
    iget v5, v2, Lorg/concentus/BoxedValueInt;->Val:I

    :cond_14
    if-lez v3, :cond_15

    .line 198
    aget-object v2, v4, v8

    iget-object v2, v2, Lorg/concentus/SilkChannelDecoder;->LBRR_flags:[I

    add-int/lit8 v14, v3, -0x1

    aget v2, v2, v14

    if-eqz v2, :cond_15

    const/4 v2, 0x2

    goto :goto_e

    :cond_15
    const/4 v2, 0x0

    .line 203
    :goto_e
    aget-object v14, v4, v8

    move/from16 v22, v5

    const/4 v5, 0x1

    invoke-static {v14, v10, v3, v5, v2}, Lorg/concentus/DecodeIndices;->silk_decode_indices(Lorg/concentus/SilkChannelDecoder;Lorg/concentus/EntropyCoder;III)V

    .line 204
    aget-object v2, v4, v8

    iget-object v2, v2, Lorg/concentus/SilkChannelDecoder;->indices:Lorg/concentus/SideInfoIndices;

    iget-byte v2, v2, Lorg/concentus/SideInfoIndices;->signalType:B

    aget-object v5, v4, v8

    iget-object v5, v5, Lorg/concentus/SilkChannelDecoder;->indices:Lorg/concentus/SideInfoIndices;

    iget-byte v5, v5, Lorg/concentus/SideInfoIndices;->quantOffsetType:B

    aget-object v14, v4, v8

    iget v14, v14, Lorg/concentus/SilkChannelDecoder;->frame_length:I

    invoke-static {v10, v13, v2, v5, v14}, Lorg/concentus/DecodePulses;->silk_decode_pulses(Lorg/concentus/EntropyCoder;[SIII)V

    move/from16 v5, v22

    goto :goto_f

    :cond_16
    move/from16 v21, v2

    :goto_f
    add-int/lit8 v8, v8, 0x1

    move/from16 v2, v21

    goto :goto_d

    :cond_17
    move/from16 v21, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_18
    move/from16 v21, v2

    goto :goto_11

    :cond_19
    move/from16 v21, v2

    goto :goto_10

    :cond_1a
    move/from16 v21, v2

    move-object v15, v14

    :goto_10
    const/4 v5, 0x0

    .line 213
    :goto_11
    iget v2, v1, Lorg/concentus/DecControlState;->nChannelsInternal:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_20

    if-eqz v9, :cond_1c

    if-ne v9, v3, :cond_1b

    const/4 v2, 0x0

    .line 214
    aget-object v8, v4, v2

    iget-object v8, v8, Lorg/concentus/SilkChannelDecoder;->LBRR_flags:[I

    aget-object v13, v4, v2

    iget v2, v13, Lorg/concentus/SilkChannelDecoder;->nFramesDecoded:I

    aget v2, v8, v2

    const/4 v8, 0x1

    if-ne v2, v8, :cond_1b

    goto :goto_13

    :cond_1b
    const/4 v2, 0x0

    :goto_12
    if-ge v2, v3, :cond_20

    .line 228
    iget-object v3, v0, Lorg/concentus/SilkDecoder;->sStereo:Lorg/concentus/StereoDecodeState;

    iget-object v3, v3, Lorg/concentus/StereoDecodeState;->pred_prev_Q13:[S

    aget-short v3, v3, v2

    aput v3, v6, v2

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x2

    goto :goto_12

    .line 216
    :cond_1c
    :goto_13
    invoke-static {v10, v6}, Lorg/concentus/Stereo;->silk_stereo_decode_pred(Lorg/concentus/EntropyCoder;[I)V

    const/4 v2, 0x1

    if-nez v9, :cond_1d

    .line 218
    aget-object v3, v4, v2

    iget-object v3, v3, Lorg/concentus/SilkChannelDecoder;->VAD_flags:[I

    const/4 v8, 0x0

    aget-object v13, v4, v8

    iget v13, v13, Lorg/concentus/SilkChannelDecoder;->nFramesDecoded:I

    aget v3, v3, v13

    if-eqz v3, :cond_1e

    goto :goto_14

    :cond_1d
    const/4 v8, 0x0

    :goto_14
    const/4 v3, 0x2

    if-ne v9, v3, :cond_1f

    aget-object v3, v4, v2

    iget-object v2, v3, Lorg/concentus/SilkChannelDecoder;->LBRR_flags:[I

    aget-object v3, v4, v8

    iget v3, v3, Lorg/concentus/SilkChannelDecoder;->nFramesDecoded:I

    aget v2, v2, v3

    if-nez v2, :cond_1f

    .line 220
    :cond_1e
    new-instance v2, Lorg/concentus/BoxedValueInt;

    invoke-direct {v2, v5}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    .line 221
    invoke-static {v10, v2}, Lorg/concentus/Stereo;->silk_stereo_decode_mid_only(Lorg/concentus/EntropyCoder;Lorg/concentus/BoxedValueInt;)V

    .line 222
    iget v2, v2, Lorg/concentus/BoxedValueInt;->Val:I

    move v13, v2

    goto :goto_15

    :cond_1f
    const/4 v13, 0x0

    goto :goto_15

    :cond_20
    move v13, v5

    .line 234
    :goto_15
    iget v2, v1, Lorg/concentus/DecControlState;->nChannelsInternal:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_21

    if-nez v13, :cond_21

    iget v2, v0, Lorg/concentus/SilkDecoder;->prev_decode_only_middle:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_21

    .line 235
    iget-object v2, v0, Lorg/concentus/SilkDecoder;->channel_state:[Lorg/concentus/SilkChannelDecoder;

    aget-object v2, v2, v3

    iget-object v2, v2, Lorg/concentus/SilkChannelDecoder;->outBuf:[S

    const/16 v5, 0x1e0

    const/4 v8, 0x0

    invoke-static {v2, v8, v5}, Lorg/concentus/Arrays;->MemSet([SSI)V

    .line 236
    iget-object v2, v0, Lorg/concentus/SilkDecoder;->channel_state:[Lorg/concentus/SilkChannelDecoder;

    aget-object v2, v2, v3

    iget-object v2, v2, Lorg/concentus/SilkChannelDecoder;->sLPC_Q14_buf:[I

    const/16 v5, 0x10

    invoke-static {v2, v8, v5}, Lorg/concentus/Arrays;->MemSet([III)V

    .line 237
    iget-object v2, v0, Lorg/concentus/SilkDecoder;->channel_state:[Lorg/concentus/SilkChannelDecoder;

    aget-object v2, v2, v3

    const/16 v5, 0x64

    iput v5, v2, Lorg/concentus/SilkChannelDecoder;->lagPrev:I

    .line 238
    iget-object v2, v0, Lorg/concentus/SilkDecoder;->channel_state:[Lorg/concentus/SilkChannelDecoder;

    aget-object v2, v2, v3

    const/16 v5, 0xa

    iput-byte v5, v2, Lorg/concentus/SilkChannelDecoder;->LastGainIndex:B

    .line 239
    iget-object v2, v0, Lorg/concentus/SilkDecoder;->channel_state:[Lorg/concentus/SilkChannelDecoder;

    aget-object v2, v2, v3

    iput v8, v2, Lorg/concentus/SilkChannelDecoder;->prevSignalType:I

    .line 240
    iget-object v2, v0, Lorg/concentus/SilkDecoder;->channel_state:[Lorg/concentus/SilkChannelDecoder;

    aget-object v2, v2, v3

    iput v3, v2, Lorg/concentus/SilkChannelDecoder;->first_frame_after_reset:I

    .line 246
    :cond_21
    iget v2, v1, Lorg/concentus/DecControlState;->internalSampleRate:I

    iget v3, v1, Lorg/concentus/DecControlState;->nChannelsInternal:I

    mul-int/2addr v2, v3

    iget v3, v1, Lorg/concentus/DecControlState;->API_sampleRate:I

    iget v5, v1, Lorg/concentus/DecControlState;->nChannelsAPI:I

    mul-int/2addr v3, v5

    if-ge v2, v3, :cond_22

    const/4 v14, 0x1

    goto :goto_16

    :cond_22
    const/4 v14, 0x0

    :goto_16
    if-eqz v14, :cond_23

    const/4 v2, 0x0

    .line 251
    aput v12, v7, v2

    .line 252
    aget-object v3, v4, v2

    iget v3, v3, Lorg/concentus/SilkChannelDecoder;->frame_length:I

    add-int/2addr v3, v12

    const/4 v5, 0x2

    add-int/2addr v3, v5

    const/4 v8, 0x1

    aput v3, v7, v8

    move-object v8, v11

    goto :goto_17

    :cond_23
    const/4 v2, 0x0

    const/4 v5, 0x2

    .line 254
    iget v3, v1, Lorg/concentus/DecControlState;->nChannelsInternal:I

    aget-object v8, v4, v2

    iget v8, v8, Lorg/concentus/SilkChannelDecoder;->frame_length:I

    add-int/2addr v8, v5

    mul-int/2addr v3, v8

    new-array v3, v3, [S

    .line 256
    aput v2, v7, v2

    .line 257
    aget-object v8, v4, v2

    iget v2, v8, Lorg/concentus/SilkChannelDecoder;->frame_length:I

    add-int/2addr v2, v5

    const/4 v8, 0x1

    aput v2, v7, v8

    move-object v8, v3

    :goto_17
    if-nez v9, :cond_25

    if-nez v13, :cond_24

    const/4 v2, 0x1

    goto :goto_18

    :cond_24
    const/4 v2, 0x0

    :goto_18
    move/from16 v17, v2

    const/4 v5, 0x1

    goto :goto_1b

    .line 263
    :cond_25
    iget v2, v0, Lorg/concentus/SilkDecoder;->prev_decode_only_middle:I

    if-eqz v2, :cond_28

    iget v2, v1, Lorg/concentus/DecControlState;->nChannelsInternal:I

    if-ne v2, v5, :cond_26

    if-ne v9, v5, :cond_26

    const/4 v5, 0x1

    aget-object v2, v4, v5

    iget-object v2, v2, Lorg/concentus/SilkChannelDecoder;->LBRR_flags:[I

    aget-object v3, v4, v5

    iget v3, v3, Lorg/concentus/SilkChannelDecoder;->nFramesDecoded:I

    aget v2, v2, v3

    if-ne v2, v5, :cond_27

    goto :goto_19

    :cond_26
    const/4 v5, 0x1

    :cond_27
    const/4 v2, 0x0

    goto :goto_1a

    :cond_28
    const/4 v5, 0x1

    :goto_19
    move v2, v5

    :goto_1a
    move/from16 v17, v2

    :goto_1b
    move/from16 v25, v21

    const/4 v3, 0x0

    .line 269
    :goto_1c
    iget v2, v1, Lorg/concentus/DecControlState;->nChannelsInternal:I

    if-ge v3, v2, :cond_2f

    if-eqz v3, :cond_2a

    if-eqz v17, :cond_29

    goto :goto_1d

    .line 289
    :cond_29
    aget v2, v7, v3

    const/4 v5, 0x2

    add-int/2addr v2, v5

    iget v5, v15, Lorg/concentus/BoxedValueInt;->Val:I

    move-object/from16 v21, v6

    const/4 v6, 0x0

    invoke-static {v8, v6, v2, v5}, Lorg/concentus/Arrays;->MemSetWithOffset([SSII)V

    move/from16 v23, v3

    move-object/from16 v26, v4

    move-object/from16 v28, v7

    move-object/from16 p3, v8

    const/4 v10, 0x1

    const/16 v27, 0x8

    goto :goto_20

    :cond_2a
    :goto_1d
    move-object/from16 v21, v6

    const/4 v6, 0x0

    .line 274
    aget-object v2, v4, v6

    iget v2, v2, Lorg/concentus/SilkChannelDecoder;->nFramesDecoded:I

    sub-int/2addr v2, v3

    if-gtz v2, :cond_2b

    const/16 v22, 0x0

    goto :goto_1f

    :cond_2b
    const/4 v5, 0x2

    if-ne v9, v5, :cond_2d

    .line 279
    aget-object v5, v4, v3

    iget-object v5, v5, Lorg/concentus/SilkChannelDecoder;->LBRR_flags:[I

    add-int/lit8 v2, v2, -0x1

    aget v2, v5, v2

    if-eqz v2, :cond_2c

    const/4 v5, 0x2

    goto :goto_1e

    :cond_2c
    const/4 v5, 0x0

    :goto_1e
    move/from16 v22, v5

    goto :goto_1f

    :cond_2d
    if-lez v3, :cond_2e

    .line 280
    iget v2, v0, Lorg/concentus/SilkDecoder;->prev_decode_only_middle:I

    if-eqz v2, :cond_2e

    const/16 v22, 0x1

    goto :goto_1f

    :cond_2e
    const/16 v22, 0x2

    .line 287
    :goto_1f
    aget-object v2, v4, v3

    aget v5, v7, v3

    const/16 v16, 0x2

    add-int/lit8 v5, v5, 0x2

    move/from16 v23, v3

    move-object/from16 v3, p4

    move-object/from16 v26, v4

    move-object v4, v8

    const/4 v6, 0x4

    const/4 v10, 0x1

    const/16 v27, 0x8

    move-object v6, v15

    move-object/from16 v28, v7

    move/from16 v7, p2

    move-object/from16 p3, v8

    move/from16 v8, v22

    invoke-virtual/range {v2 .. v8}, Lorg/concentus/SilkChannelDecoder;->silk_decode_frame(Lorg/concentus/EntropyCoder;[SILorg/concentus/BoxedValueInt;II)I

    move-result v2

    add-int v25, v25, v2

    .line 291
    :goto_20
    aget-object v2, v26, v23

    iget v3, v2, Lorg/concentus/SilkChannelDecoder;->nFramesDecoded:I

    add-int/2addr v3, v10

    iput v3, v2, Lorg/concentus/SilkChannelDecoder;->nFramesDecoded:I

    add-int/lit8 v3, v23, 0x1

    move-object/from16 v8, p3

    move v5, v10

    move-object/from16 v6, v21

    move-object/from16 v4, v26

    move-object/from16 v7, v28

    move-object/from16 v10, p4

    goto/16 :goto_1c

    :cond_2f
    move-object/from16 v26, v4

    move v10, v5

    move-object/from16 v21, v6

    move-object/from16 v28, v7

    move-object/from16 p3, v8

    const/16 v27, 0x8

    .line 294
    iget v2, v1, Lorg/concentus/DecControlState;->nChannelsAPI:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_30

    iget v2, v1, Lorg/concentus/DecControlState;->nChannelsInternal:I

    if-ne v2, v3, :cond_30

    .line 296
    iget-object v2, v0, Lorg/concentus/SilkDecoder;->sStereo:Lorg/concentus/StereoDecodeState;

    const/4 v4, 0x0

    aget v18, v28, v4

    aget v20, v28, v10

    aget-object v5, v26, v4

    iget v4, v5, Lorg/concentus/SilkChannelDecoder;->fs_kHz:I

    iget v5, v15, Lorg/concentus/BoxedValueInt;->Val:I

    move-object/from16 v16, v2

    move-object/from16 v17, p3

    move-object/from16 v19, p3

    move/from16 v22, v4

    move/from16 v23, v5

    invoke-static/range {v16 .. v23}, Lorg/concentus/Stereo;->silk_stereo_MS_to_LR(Lorg/concentus/StereoDecodeState;[SI[SI[III)V

    move-object/from16 v6, p3

    const/4 v4, 0x0

    goto :goto_21

    .line 299
    :cond_30
    iget-object v2, v0, Lorg/concentus/SilkDecoder;->sStereo:Lorg/concentus/StereoDecodeState;

    iget-object v2, v2, Lorg/concentus/StereoDecodeState;->sMid:[S

    const/4 v4, 0x0

    aget v5, v28, v4

    move-object/from16 v6, p3

    invoke-static {v2, v4, v6, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 300
    aget v2, v28, v4

    iget v5, v15, Lorg/concentus/BoxedValueInt;->Val:I

    add-int/2addr v2, v5

    iget-object v5, v0, Lorg/concentus/SilkDecoder;->sStereo:Lorg/concentus/StereoDecodeState;

    iget-object v5, v5, Lorg/concentus/StereoDecodeState;->sMid:[S

    invoke-static {v6, v2, v5, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 304
    :goto_21
    iget v2, v15, Lorg/concentus/BoxedValueInt;->Val:I

    iget v5, v1, Lorg/concentus/DecControlState;->API_sampleRate:I

    mul-int/2addr v2, v5

    aget-object v5, v26, v4

    iget v4, v5, Lorg/concentus/SilkChannelDecoder;->fs_kHz:I

    const/16 v5, 0x3e8

    invoke-static {v4, v5}, Lorg/concentus/Inlines;->silk_SMULBB(II)I

    move-result v4

    invoke-static {v2, v4}, Lorg/concentus/Inlines;->silk_DIV32(II)I

    move-result v2

    move-object/from16 v4, p7

    iput v2, v4, Lorg/concentus/BoxedValueInt;->Val:I

    .line 307
    iget v2, v1, Lorg/concentus/DecControlState;->nChannelsAPI:I

    if-ne v2, v3, :cond_31

    .line 308
    iget v2, v4, Lorg/concentus/BoxedValueInt;->Val:I

    new-array v2, v2, [S

    const/4 v5, 0x0

    goto :goto_22

    :cond_31
    move-object v2, v11

    move v5, v12

    :goto_22
    if-eqz v14, :cond_32

    .line 317
    iget v6, v1, Lorg/concentus/DecControlState;->nChannelsInternal:I

    const/4 v7, 0x0

    aget-object v8, v26, v7

    iget v8, v8, Lorg/concentus/SilkChannelDecoder;->frame_length:I

    add-int/2addr v8, v3

    mul-int/2addr v6, v8

    new-array v8, v6, [S

    .line 318
    iget v6, v1, Lorg/concentus/DecControlState;->nChannelsInternal:I

    aget-object v14, v26, v7

    iget v14, v14, Lorg/concentus/SilkChannelDecoder;->frame_length:I

    add-int/2addr v14, v3

    mul-int/2addr v6, v14

    invoke-static {v11, v12, v8, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 320
    aput v7, v28, v7

    .line 321
    aget-object v6, v26, v7

    iget v6, v6, Lorg/concentus/SilkChannelDecoder;->frame_length:I

    add-int/2addr v6, v3

    aput v6, v28, v10

    goto :goto_23

    :cond_32
    move-object v8, v6

    :goto_23
    const/4 v6, 0x0

    .line 323
    :goto_24
    iget v7, v1, Lorg/concentus/DecControlState;->nChannelsAPI:I

    iget v14, v1, Lorg/concentus/DecControlState;->nChannelsInternal:I

    invoke-static {v7, v14}, Lorg/concentus/Inlines;->silk_min(II)I

    move-result v7

    if-ge v6, v7, :cond_34

    .line 326
    aget-object v7, v26, v6

    iget-object v7, v7, Lorg/concentus/SilkChannelDecoder;->resampler_state:Lorg/concentus/SilkResamplerState;

    aget v14, v28, v6

    add-int/lit8 v20, v14, 0x1

    iget v14, v15, Lorg/concentus/BoxedValueInt;->Val:I

    move-object/from16 v16, v7

    move-object/from16 v17, v2

    move/from16 v18, v5

    move-object/from16 v19, v8

    move/from16 v21, v14

    invoke-static/range {v16 .. v21}, Lorg/concentus/Resampler;->silk_resampler(Lorg/concentus/SilkResamplerState;[SI[SII)I

    move-result v7

    add-int v25, v25, v7

    .line 329
    iget v7, v1, Lorg/concentus/DecControlState;->nChannelsAPI:I

    if-ne v7, v3, :cond_33

    add-int v7, v12, v6

    const/4 v14, 0x0

    .line 331
    :goto_25
    iget v10, v4, Lorg/concentus/BoxedValueInt;->Val:I

    if-ge v14, v10, :cond_33

    mul-int/lit8 v10, v14, 0x2

    add-int/2addr v10, v7

    add-int v16, v5, v14

    .line 332
    aget-short v16, v2, v16

    aput-short v16, v11, v10

    add-int/lit8 v14, v14, 0x1

    goto :goto_25

    :cond_33
    add-int/lit8 v6, v6, 0x1

    const/4 v10, 0x1

    goto :goto_24

    .line 338
    :cond_34
    iget v6, v1, Lorg/concentus/DecControlState;->nChannelsAPI:I

    if-ne v6, v3, :cond_36

    iget v6, v1, Lorg/concentus/DecControlState;->nChannelsInternal:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_36

    if-eqz v24, :cond_35

    .line 342
    aget-object v6, v26, v7

    iget-object v6, v6, Lorg/concentus/SilkChannelDecoder;->resampler_state:Lorg/concentus/SilkResamplerState;

    const/4 v10, 0x0

    aget v14, v28, v10

    add-int/lit8 v20, v14, 0x1

    iget v7, v15, Lorg/concentus/BoxedValueInt;->Val:I

    move-object/from16 v16, v6

    move-object/from16 v17, v2

    move/from16 v18, v5

    move-object/from16 v19, v8

    move/from16 v21, v7

    invoke-static/range {v16 .. v21}, Lorg/concentus/Resampler;->silk_resampler(Lorg/concentus/SilkResamplerState;[SI[SII)I

    move-result v6

    add-int v25, v25, v6

    const/4 v15, 0x0

    .line 344
    :goto_26
    iget v6, v4, Lorg/concentus/BoxedValueInt;->Val:I

    if-ge v15, v6, :cond_36

    const/4 v6, 0x1

    add-int/lit8 v7, v12, 0x1

    mul-int/lit8 v6, v15, 0x2

    add-int/2addr v7, v6

    add-int v6, v5, v15

    .line 345
    aget-short v6, v2, v6

    aput-short v6, v11, v7

    add-int/lit8 v15, v15, 0x1

    goto :goto_26

    :cond_35
    const/4 v15, 0x0

    .line 348
    :goto_27
    iget v2, v4, Lorg/concentus/BoxedValueInt;->Val:I

    if-ge v15, v2, :cond_36

    add-int/lit8 v2, v12, 0x1

    mul-int/lit8 v5, v15, 0x2

    add-int/2addr v2, v5

    add-int/2addr v5, v12

    .line 349
    aget-short v5, v11, v5

    aput-short v5, v11, v2

    add-int/lit8 v15, v15, 0x1

    goto :goto_27

    :cond_36
    const/4 v2, 0x0

    .line 355
    aget-object v4, v26, v2

    iget v4, v4, Lorg/concentus/SilkChannelDecoder;->prevSignalType:I

    if-ne v4, v3, :cond_37

    const/4 v4, 0x6

    const/4 v5, 0x3

    const/4 v6, 0x4

    .line 356
    filled-new-array {v4, v6, v5}, [I

    move-result-object v4

    .line 357
    aget-object v5, v26, v2

    iget v5, v5, Lorg/concentus/SilkChannelDecoder;->lagPrev:I

    aget-object v6, v26, v2

    iget v6, v6, Lorg/concentus/SilkChannelDecoder;->fs_kHz:I

    add-int/lit8 v6, v6, -0x8

    shr-int/lit8 v3, v6, 0x2

    aget v3, v4, v3

    mul-int/2addr v5, v3

    iput v5, v1, Lorg/concentus/DecControlState;->prevPitchLag:I

    goto :goto_28

    .line 359
    :cond_37
    iput v2, v1, Lorg/concentus/DecControlState;->prevPitchLag:I

    :goto_28
    const/4 v1, 0x1

    if-ne v9, v1, :cond_38

    move v15, v2

    .line 365
    :goto_29
    iget v1, v0, Lorg/concentus/SilkDecoder;->nChannelsInternal:I

    if-ge v15, v1, :cond_39

    .line 366
    iget-object v1, v0, Lorg/concentus/SilkDecoder;->channel_state:[Lorg/concentus/SilkChannelDecoder;

    aget-object v1, v1, v15

    const/16 v2, 0xa

    iput-byte v2, v1, Lorg/concentus/SilkChannelDecoder;->LastGainIndex:B

    add-int/lit8 v15, v15, 0x1

    goto :goto_29

    .line 369
    :cond_38
    iput v13, v0, Lorg/concentus/SilkDecoder;->prev_decode_only_middle:I

    :cond_39
    return v25

    .line 153
    :cond_3a
    :goto_2a
    sget v0, Lorg/concentus/SilkError;->SILK_DEC_INVALID_SAMPLING_FREQUENCY:I

    return v0
.end method

.method static silk_InitDecoder(Lorg/concentus/SilkDecoder;)I
    .locals 5

    .line 43
    invoke-virtual {p0}, Lorg/concentus/SilkDecoder;->Reset()V

    .line 45
    sget v0, Lorg/concentus/SilkError;->SILK_NO_ERROR:I

    .line 46
    iget-object v1, p0, Lorg/concentus/SilkDecoder;->channel_state:[Lorg/concentus/SilkChannelDecoder;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    .line 49
    aget-object v0, v1, v3

    invoke-virtual {v0}, Lorg/concentus/SilkChannelDecoder;->silk_init_decoder()I

    move-result v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 52
    :cond_0
    iget-object v1, p0, Lorg/concentus/SilkDecoder;->sStereo:Lorg/concentus/StereoDecodeState;

    invoke-virtual {v1}, Lorg/concentus/StereoDecodeState;->Reset()V

    .line 55
    iput v2, p0, Lorg/concentus/SilkDecoder;->prev_decode_only_middle:I

    return v0
.end method
