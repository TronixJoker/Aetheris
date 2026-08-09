.class Lorg/concentus/EncodeAPI;
.super Ljava/lang/Object;
.source "EncodeAPI.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static silk_Encode(Lorg/concentus/SilkEncoder;Lorg/concentus/EncControlState;[SILorg/concentus/EntropyCoder;Lorg/concentus/BoxedValueInt;I)I
    .locals 38

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    .line 117
    sget v1, Lorg/concentus/SilkError;->SILK_NO_ERROR:I

    const/4 v12, 0x2

    .line 123
    new-array v15, v12, [I

    const/4 v14, 0x0

    .line 126
    iput v14, v11, Lorg/concentus/BoxedValueInt;->Val:I

    .line 128
    iget v2, v7, Lorg/concentus/EncControlState;->reducedDependency:I

    const/4 v13, 0x1

    if-eqz v2, :cond_0

    .line 129
    iget-object v2, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v2, v2, v14

    iput v13, v2, Lorg/concentus/SilkChannelEncoder;->first_frame_after_reset:I

    .line 130
    iget-object v2, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v2, v2, v13

    iput v13, v2, Lorg/concentus/SilkChannelEncoder;->first_frame_after_reset:I

    .line 132
    :cond_0
    iget-object v2, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v2, v2, v14

    iget-object v3, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v3, v3, v13

    iput v14, v3, Lorg/concentus/SilkChannelEncoder;->nFramesEncoded:I

    iput v14, v2, Lorg/concentus/SilkChannelEncoder;->nFramesEncoded:I

    .line 135
    invoke-virtual/range {p1 .. p1}, Lorg/concentus/EncControlState;->check_control_input()I

    move-result v2

    add-int/2addr v1, v2

    .line 136
    sget v2, Lorg/concentus/SilkError;->SILK_NO_ERROR:I

    if-eq v1, v2, :cond_1

    .line 137
    invoke-static {v14}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    return v1

    .line 141
    :cond_1
    iput v14, v7, Lorg/concentus/EncControlState;->switchReady:I

    .line 143
    iget v2, v7, Lorg/concentus/EncControlState;->nChannelsInternal:I

    iget v3, v0, Lorg/concentus/SilkEncoder;->nChannelsInternal:I

    const/4 v6, 0x3

    if-le v2, v3, :cond_2

    .line 145
    iget-object v2, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v2, v2, v13

    invoke-static {v2}, Lorg/concentus/SilkEncoder;->silk_init_encoder(Lorg/concentus/SilkChannelEncoder;)I

    move-result v2

    add-int/2addr v1, v2

    .line 147
    iget-object v2, v0, Lorg/concentus/SilkEncoder;->sStereo:Lorg/concentus/StereoEncodeState;

    iget-object v2, v2, Lorg/concentus/StereoEncodeState;->pred_prev_Q13:[S

    invoke-static {v2, v14, v12}, Lorg/concentus/Arrays;->MemSet([SSI)V

    .line 148
    iget-object v2, v0, Lorg/concentus/SilkEncoder;->sStereo:Lorg/concentus/StereoEncodeState;

    iget-object v2, v2, Lorg/concentus/StereoEncodeState;->sSide:[S

    invoke-static {v2, v14, v12}, Lorg/concentus/Arrays;->MemSet([SSI)V

    .line 149
    iget-object v2, v0, Lorg/concentus/SilkEncoder;->sStereo:Lorg/concentus/StereoEncodeState;

    iget-object v2, v2, Lorg/concentus/StereoEncodeState;->mid_side_amp_Q0:[I

    aput v14, v2, v14

    .line 150
    iget-object v2, v0, Lorg/concentus/SilkEncoder;->sStereo:Lorg/concentus/StereoEncodeState;

    iget-object v2, v2, Lorg/concentus/StereoEncodeState;->mid_side_amp_Q0:[I

    aput v13, v2, v13

    .line 151
    iget-object v2, v0, Lorg/concentus/SilkEncoder;->sStereo:Lorg/concentus/StereoEncodeState;

    iget-object v2, v2, Lorg/concentus/StereoEncodeState;->mid_side_amp_Q0:[I

    aput v14, v2, v12

    .line 152
    iget-object v2, v0, Lorg/concentus/SilkEncoder;->sStereo:Lorg/concentus/StereoEncodeState;

    iget-object v2, v2, Lorg/concentus/StereoEncodeState;->mid_side_amp_Q0:[I

    aput v13, v2, v6

    .line 153
    iget-object v2, v0, Lorg/concentus/SilkEncoder;->sStereo:Lorg/concentus/StereoEncodeState;

    iput-short v14, v2, Lorg/concentus/StereoEncodeState;->width_prev_Q14:S

    .line 154
    iget-object v2, v0, Lorg/concentus/SilkEncoder;->sStereo:Lorg/concentus/StereoEncodeState;

    const/16 v3, 0x4000

    iput-short v3, v2, Lorg/concentus/StereoEncodeState;->smth_width_Q14:S

    .line 155
    iget v2, v0, Lorg/concentus/SilkEncoder;->nChannelsAPI:I

    if-ne v2, v12, :cond_2

    .line 156
    iget-object v2, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v2, v2, v13

    iget-object v2, v2, Lorg/concentus/SilkChannelEncoder;->resampler_state:Lorg/concentus/SilkResamplerState;

    iget-object v3, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v3, v3, v14

    iget-object v3, v3, Lorg/concentus/SilkChannelEncoder;->resampler_state:Lorg/concentus/SilkResamplerState;

    invoke-virtual {v2, v3}, Lorg/concentus/SilkResamplerState;->Assign(Lorg/concentus/SilkResamplerState;)V

    .line 157
    iget-object v2, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v2, v2, v14

    iget-object v2, v2, Lorg/concentus/SilkChannelEncoder;->In_HP_State:[I

    iget-object v3, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v3, v3, v13

    iget-object v3, v3, Lorg/concentus/SilkChannelEncoder;->In_HP_State:[I

    invoke-static {v2, v14, v3, v14, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    :cond_2
    iget v2, v7, Lorg/concentus/EncControlState;->payloadSize_ms:I

    iget-object v3, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v3, v3, v14

    iget v3, v3, Lorg/concentus/SilkChannelEncoder;->PacketSize_ms:I

    if-ne v2, v3, :cond_4

    iget v2, v0, Lorg/concentus/SilkEncoder;->nChannelsInternal:I

    iget v3, v7, Lorg/concentus/EncControlState;->nChannelsInternal:I

    if-eq v2, v3, :cond_3

    goto :goto_0

    :cond_3
    move/from16 v16, v14

    goto :goto_1

    :cond_4
    :goto_0
    move/from16 v16, v13

    .line 163
    :goto_1
    iget v2, v7, Lorg/concentus/EncControlState;->nChannelsAPI:I

    iput v2, v0, Lorg/concentus/SilkEncoder;->nChannelsAPI:I

    .line 164
    iget v2, v7, Lorg/concentus/EncControlState;->nChannelsInternal:I

    iput v2, v0, Lorg/concentus/SilkEncoder;->nChannelsInternal:I

    mul-int/lit8 v2, v9, 0x64

    .line 166
    iget v3, v7, Lorg/concentus/EncControlState;->API_sampleRate:I

    invoke-static {v2, v3}, Lorg/concentus/Inlines;->silk_DIV32(II)I

    move-result v5

    if-le v5, v13, :cond_5

    shr-int/lit8 v3, v5, 0x1

    move v4, v3

    goto :goto_2

    :cond_5
    move v4, v13

    :goto_2
    const/16 v3, 0xa

    if-eqz p6, :cond_a

    if-eq v5, v13, :cond_6

    .line 172
    invoke-static {v14}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    .line 173
    sget v0, Lorg/concentus/SilkError;->SILK_ENC_INPUT_INVALID_NO_OF_SAMPLES:I

    return v0

    :cond_6
    move v2, v14

    .line 176
    :goto_3
    iget v6, v7, Lorg/concentus/EncControlState;->nChannelsInternal:I

    if-ge v2, v6, :cond_8

    .line 177
    iget-object v6, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v6, v6, v2

    invoke-static {v6}, Lorg/concentus/SilkEncoder;->silk_init_encoder(Lorg/concentus/SilkChannelEncoder;)I

    move-result v6

    add-int/2addr v1, v6

    .line 178
    sget v6, Lorg/concentus/SilkError;->SILK_NO_ERROR:I

    if-ne v1, v6, :cond_7

    move v6, v13

    goto :goto_4

    :cond_7
    move v6, v14

    :goto_4
    invoke-static {v6}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 180
    :cond_8
    iget v2, v7, Lorg/concentus/EncControlState;->payloadSize_ms:I

    .line 181
    iput v3, v7, Lorg/concentus/EncControlState;->payloadSize_ms:I

    .line 182
    iget v6, v7, Lorg/concentus/EncControlState;->complexity:I

    .line 183
    iput v14, v7, Lorg/concentus/EncControlState;->complexity:I

    move v3, v14

    .line 184
    :goto_5
    iget v12, v7, Lorg/concentus/EncControlState;->nChannelsInternal:I

    if-ge v3, v12, :cond_9

    .line 185
    iget-object v12, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v12, v12, v3

    iput v14, v12, Lorg/concentus/SilkChannelEncoder;->controlled_since_last_payload:I

    .line 186
    iget-object v12, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v12, v12, v3

    iput v13, v12, Lorg/concentus/SilkChannelEncoder;->prefillFlag:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_9
    move v12, v2

    goto :goto_6

    .line 190
    :cond_a
    iget v3, v7, Lorg/concentus/EncControlState;->API_sampleRate:I

    mul-int/2addr v3, v5

    if-ne v3, v2, :cond_49

    if-gez v9, :cond_b

    goto/16 :goto_33

    :cond_b
    mul-int/lit16 v2, v9, 0x3e8

    .line 195
    iget v3, v7, Lorg/concentus/EncControlState;->payloadSize_ms:I

    iget v6, v7, Lorg/concentus/EncControlState;->API_sampleRate:I

    mul-int/2addr v3, v6

    if-le v2, v3, :cond_c

    .line 196
    invoke-static {v14}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    .line 197
    sget v0, Lorg/concentus/SilkError;->SILK_ENC_INPUT_INVALID_NO_OF_SAMPLES:I

    return v0

    :cond_c
    move v6, v14

    move v12, v6

    .line 201
    :goto_6
    iget v2, v7, Lorg/concentus/EncControlState;->bitRate:I

    iget v3, v7, Lorg/concentus/EncControlState;->nChannelsInternal:I

    sub-int/2addr v3, v13

    invoke-static {v2, v3}, Lorg/concentus/Inlines;->silk_RSHIFT32(II)I

    move-result v19

    move/from16 v20, v1

    move v3, v14

    .line 203
    :goto_7
    iget v1, v7, Lorg/concentus/EncControlState;->nChannelsInternal:I

    if-ge v3, v1, :cond_11

    if-ne v3, v13, :cond_d

    .line 205
    iget-object v1, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v1, v1, v14

    iget v1, v1, Lorg/concentus/SilkChannelEncoder;->fs_kHz:I

    move/from16 v21, v1

    goto :goto_8

    :cond_d
    move/from16 v21, v14

    .line 206
    :goto_8
    iget-object v1, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v1, v1, v3

    iget v2, v0, Lorg/concentus/SilkEncoder;->allowBandwidthSwitch:I

    move/from16 v22, v2

    move-object/from16 v2, p1

    move/from16 v18, v3

    move-object/from16 v23, v15

    const/16 v15, 0xa

    move/from16 v3, v19

    move/from16 v26, v4

    move/from16 v4, v22

    move/from16 v22, v5

    move/from16 v5, v18

    move/from16 v27, v6

    move/from16 v6, v21

    invoke-virtual/range {v1 .. v6}, Lorg/concentus/SilkChannelEncoder;->silk_control_encoder(Lorg/concentus/EncControlState;IIII)I

    move-result v1

    add-int v1, v20, v1

    .line 208
    sget v2, Lorg/concentus/SilkError;->SILK_NO_ERROR:I

    if-eq v1, v2, :cond_e

    .line 209
    invoke-static {v14}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    return v1

    .line 213
    :cond_e
    iget-object v2, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v2, v2, v18

    iget v2, v2, Lorg/concentus/SilkChannelEncoder;->first_frame_after_reset:I

    if-nez v2, :cond_f

    if-eqz v16, :cond_10

    :cond_f
    move v2, v14

    .line 214
    :goto_9
    iget-object v3, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v3, v3, v14

    iget v3, v3, Lorg/concentus/SilkChannelEncoder;->nFramesPerPacket:I

    if-ge v2, v3, :cond_10

    .line 215
    iget-object v3, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v3, v3, v18

    iget-object v3, v3, Lorg/concentus/SilkChannelEncoder;->LBRR_flags:[I

    aput v14, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 219
    :cond_10
    iget-object v2, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v2, v2, v18

    iget-object v3, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v3, v3, v18

    iget v3, v3, Lorg/concentus/SilkChannelEncoder;->useDTX:I

    iput v3, v2, Lorg/concentus/SilkChannelEncoder;->inDTX:I

    add-int/lit8 v3, v18, 0x1

    move/from16 v20, v1

    move/from16 v5, v22

    move-object/from16 v15, v23

    move/from16 v4, v26

    move/from16 v6, v27

    goto :goto_7

    :cond_11
    move/from16 v26, v4

    move/from16 v22, v5

    move/from16 v27, v6

    move-object/from16 v23, v15

    const/16 v15, 0xa

    .line 222
    iget v1, v7, Lorg/concentus/EncControlState;->nChannelsInternal:I

    if-eq v1, v13, :cond_13

    iget-object v1, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v1, v1, v14

    iget v1, v1, Lorg/concentus/SilkChannelEncoder;->fs_kHz:I

    iget-object v2, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v2, v2, v13

    iget v2, v2, Lorg/concentus/SilkChannelEncoder;->fs_kHz:I

    if-ne v1, v2, :cond_12

    goto :goto_a

    :cond_12
    move v1, v14

    goto :goto_b

    :cond_13
    :goto_a
    move v1, v13

    :goto_b
    invoke-static {v1}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    mul-int/lit8 v28, v22, 0xa

    .line 225
    iget-object v1, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v1, v1, v14

    iget v1, v1, Lorg/concentus/SilkChannelEncoder;->fs_kHz:I

    mul-int v6, v28, v1

    .line 226
    iget-object v1, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v1, v1, v14

    iget v1, v1, Lorg/concentus/SilkChannelEncoder;->API_fs_Hz:I

    mul-int/2addr v1, v6

    iget-object v2, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v2, v2, v14

    iget v2, v2, Lorg/concentus/SilkChannelEncoder;->fs_kHz:I

    const/16 v5, 0x3e8

    mul-int/2addr v2, v5

    int-to-short v2, v2

    .line 227
    invoke-static {v1, v2}, Lorg/concentus/Inlines;->silk_DIV32_16(II)I

    move-result v1

    .line 231
    new-array v4, v1, [S

    move v1, v14

    move v3, v1

    .line 235
    :goto_c
    iget-object v2, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v2, v2, v14

    iget v2, v2, Lorg/concentus/SilkChannelEncoder;->frame_length:I

    iget-object v15, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v15, v15, v14

    iget v15, v15, Lorg/concentus/SilkChannelEncoder;->inputBufIx:I

    sub-int/2addr v2, v15

    .line 236
    invoke-static {v2, v6}, Lorg/concentus/Inlines;->silk_min(II)I

    move-result v2

    .line 237
    iget-object v15, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v15, v15, v14

    iget v15, v15, Lorg/concentus/SilkChannelEncoder;->API_fs_Hz:I

    mul-int/2addr v15, v2

    iget-object v13, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v13, v13, v14

    iget v13, v13, Lorg/concentus/SilkChannelEncoder;->fs_kHz:I

    mul-int/2addr v13, v5

    invoke-static {v15, v13}, Lorg/concentus/Inlines;->silk_DIV32_16(II)I

    move-result v13

    .line 240
    iget v15, v7, Lorg/concentus/EncControlState;->nChannelsAPI:I

    const/4 v5, 0x2

    if-ne v15, v5, :cond_17

    iget v15, v7, Lorg/concentus/EncControlState;->nChannelsInternal:I

    if-ne v15, v5, :cond_17

    .line 241
    iget-object v5, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v5, v5, v14

    iget v5, v5, Lorg/concentus/SilkChannelEncoder;->nFramesEncoded:I

    move v15, v14

    :goto_d
    if-ge v15, v13, :cond_14

    mul-int/lit8 v17, v15, 0x2

    add-int v17, v1, v17

    .line 243
    aget-short v17, v8, v17

    aput-short v17, v4, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_d

    .line 247
    :cond_14
    iget v15, v0, Lorg/concentus/SilkEncoder;->nPrevChannelsInternal:I

    const/4 v14, 0x1

    if-ne v15, v14, :cond_15

    if-nez v5, :cond_15

    .line 249
    iget-object v5, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v5, v5, v14

    iget-object v5, v5, Lorg/concentus/SilkChannelEncoder;->resampler_state:Lorg/concentus/SilkResamplerState;

    iget-object v14, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    iget-object v14, v14, Lorg/concentus/SilkChannelEncoder;->resampler_state:Lorg/concentus/SilkResamplerState;

    invoke-virtual {v5, v14}, Lorg/concentus/SilkResamplerState;->Assign(Lorg/concentus/SilkResamplerState;)V

    goto :goto_e

    :cond_15
    const/4 v15, 0x0

    .line 252
    :goto_e
    iget-object v5, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v5, v5, v15

    iget-object v5, v5, Lorg/concentus/SilkChannelEncoder;->resampler_state:Lorg/concentus/SilkResamplerState;

    iget-object v14, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v14, v14, v15

    iget-object v14, v14, Lorg/concentus/SilkChannelEncoder;->inputBuf:[S

    move/from16 v35, v6

    iget-object v6, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v6, v6, v15

    iget v6, v6, Lorg/concentus/SilkChannelEncoder;->inputBufIx:I

    const/4 v15, 0x2

    add-int/lit8 v31, v6, 0x2

    const/16 v33, 0x0

    move-object/from16 v29, v5

    move-object/from16 v30, v14

    move-object/from16 v32, v4

    move/from16 v34, v13

    invoke-static/range {v29 .. v34}, Lorg/concentus/Resampler;->silk_resampler(Lorg/concentus/SilkResamplerState;[SI[SII)I

    move-result v5

    add-int v20, v20, v5

    .line 260
    iget-object v5, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    iget v6, v5, Lorg/concentus/SilkChannelEncoder;->inputBufIx:I

    add-int/2addr v6, v2

    iput v6, v5, Lorg/concentus/SilkChannelEncoder;->inputBufIx:I

    .line 262
    iget-object v2, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    const/4 v5, 0x1

    aget-object v2, v2, v5

    iget v2, v2, Lorg/concentus/SilkChannelEncoder;->frame_length:I

    iget-object v6, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v6, v6, v5

    iget v6, v6, Lorg/concentus/SilkChannelEncoder;->inputBufIx:I

    sub-int/2addr v2, v6

    .line 263
    iget-object v6, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v6, v6, v5

    iget v6, v6, Lorg/concentus/SilkChannelEncoder;->fs_kHz:I

    mul-int v6, v6, v28

    invoke-static {v2, v6}, Lorg/concentus/Inlines;->silk_min(II)I

    move-result v2

    const/4 v6, 0x0

    :goto_f
    if-ge v6, v13, :cond_16

    mul-int/lit8 v14, v6, 0x2

    add-int/2addr v14, v1

    add-int/2addr v14, v5

    .line 265
    aget-short v14, v8, v14

    aput-short v14, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    .line 267
    :cond_16
    iget-object v6, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v6, v6, v5

    iget-object v6, v6, Lorg/concentus/SilkChannelEncoder;->resampler_state:Lorg/concentus/SilkResamplerState;

    iget-object v14, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v14, v14, v5

    iget-object v14, v14, Lorg/concentus/SilkChannelEncoder;->inputBuf:[S

    iget-object v15, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v15, v15, v5

    iget v5, v15, Lorg/concentus/SilkChannelEncoder;->inputBufIx:I

    const/4 v15, 0x2

    add-int/lit8 v31, v5, 0x2

    const/16 v33, 0x0

    move-object/from16 v29, v6

    move-object/from16 v30, v14

    move-object/from16 v32, v4

    move/from16 v34, v13

    invoke-static/range {v29 .. v34}, Lorg/concentus/Resampler;->silk_resampler(Lorg/concentus/SilkResamplerState;[SI[SII)I

    move-result v5

    add-int v20, v20, v5

    .line 275
    iget-object v5, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    iget v14, v5, Lorg/concentus/SilkChannelEncoder;->inputBufIx:I

    add-int/2addr v14, v2

    iput v14, v5, Lorg/concentus/SilkChannelEncoder;->inputBufIx:I

    move/from16 p3, v3

    move/from16 v36, v12

    goto/16 :goto_12

    :cond_17
    move/from16 v35, v6

    const/4 v6, 0x1

    .line 276
    iget v5, v7, Lorg/concentus/EncControlState;->nChannelsAPI:I

    const/4 v14, 0x2

    if-ne v5, v14, :cond_1a

    iget v5, v7, Lorg/concentus/EncControlState;->nChannelsInternal:I

    if-ne v5, v6, :cond_1a

    const/4 v5, 0x0

    :goto_10
    if-ge v5, v13, :cond_18

    mul-int/lit8 v14, v5, 0x2

    add-int/2addr v14, v1

    .line 279
    aget-short v15, v8, v14

    add-int/2addr v14, v6

    aget-short v14, v8, v14

    add-int/2addr v15, v14

    .line 280
    invoke-static {v15, v6}, Lorg/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v14

    int-to-short v6, v14

    aput-short v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    goto :goto_10

    .line 283
    :cond_18
    iget-object v5, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    iget-object v5, v5, Lorg/concentus/SilkChannelEncoder;->resampler_state:Lorg/concentus/SilkResamplerState;

    iget-object v14, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v14, v14, v6

    iget-object v14, v14, Lorg/concentus/SilkChannelEncoder;->inputBuf:[S

    iget-object v15, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v15, v15, v6

    iget v6, v15, Lorg/concentus/SilkChannelEncoder;->inputBufIx:I

    const/4 v15, 0x2

    add-int/lit8 v31, v6, 0x2

    const/16 v33, 0x0

    move-object/from16 v29, v5

    move-object/from16 v30, v14

    move-object/from16 v32, v4

    move/from16 v34, v13

    invoke-static/range {v29 .. v34}, Lorg/concentus/Resampler;->silk_resampler(Lorg/concentus/SilkResamplerState;[SI[SII)I

    move-result v5

    add-int v20, v20, v5

    .line 292
    iget v5, v0, Lorg/concentus/SilkEncoder;->nPrevChannelsInternal:I

    if-ne v5, v15, :cond_19

    iget-object v5, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    iget v5, v5, Lorg/concentus/SilkChannelEncoder;->nFramesEncoded:I

    if-nez v5, :cond_19

    .line 293
    iget-object v5, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    iget-object v5, v5, Lorg/concentus/SilkChannelEncoder;->resampler_state:Lorg/concentus/SilkResamplerState;

    iget-object v14, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v14, v14, v6

    iget-object v14, v14, Lorg/concentus/SilkChannelEncoder;->inputBuf:[S

    iget-object v15, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v15, v15, v6

    iget v6, v15, Lorg/concentus/SilkChannelEncoder;->inputBufIx:I

    const/4 v15, 0x2

    add-int/lit8 v31, v6, 0x2

    const/16 v33, 0x0

    move-object/from16 v29, v5

    move-object/from16 v30, v14

    move-object/from16 v32, v4

    move/from16 v34, v13

    invoke-static/range {v29 .. v34}, Lorg/concentus/Resampler;->silk_resampler(Lorg/concentus/SilkResamplerState;[SI[SII)I

    move-result v5

    add-int v20, v20, v5

    const/4 v5, 0x0

    .line 301
    :goto_11
    iget-object v6, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    const/4 v14, 0x0

    aget-object v6, v6, v14

    iget v6, v6, Lorg/concentus/SilkChannelEncoder;->frame_length:I

    if-ge v5, v6, :cond_19

    .line 302
    iget-object v6, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v6, v6, v14

    iget-object v6, v6, Lorg/concentus/SilkChannelEncoder;->inputBuf:[S

    iget-object v15, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v15, v15, v14

    iget v15, v15, Lorg/concentus/SilkChannelEncoder;->inputBufIx:I

    add-int/2addr v15, v5

    const/16 v19, 0x2

    add-int/lit8 v15, v15, 0x2

    move/from16 v36, v12

    iget-object v12, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v12, v12, v14

    iget-object v12, v12, Lorg/concentus/SilkChannelEncoder;->inputBuf:[S

    iget-object v11, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v11, v11, v14

    iget v11, v11, Lorg/concentus/SilkChannelEncoder;->inputBufIx:I

    add-int/2addr v11, v5

    add-int/lit8 v11, v11, 0x2

    aget-short v11, v12, v11

    iget-object v12, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    const/4 v14, 0x1

    aget-object v12, v12, v14

    iget-object v12, v12, Lorg/concentus/SilkChannelEncoder;->inputBuf:[S

    move/from16 p3, v3

    iget-object v3, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v3, v3, v14

    iget v3, v3, Lorg/concentus/SilkChannelEncoder;->inputBufIx:I

    add-int/2addr v3, v5

    add-int/lit8 v3, v3, 0x2

    aget-short v3, v12, v3

    add-int/2addr v11, v3

    .line 303
    invoke-static {v11, v14}, Lorg/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v3

    int-to-short v3, v3

    aput-short v3, v6, v15

    add-int/lit8 v5, v5, 0x1

    move/from16 v3, p3

    move-object/from16 v11, p5

    move/from16 v12, v36

    goto :goto_11

    :cond_19
    move/from16 p3, v3

    move/from16 v36, v12

    .line 308
    iget-object v3, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    iget v5, v3, Lorg/concentus/SilkChannelEncoder;->inputBufIx:I

    add-int/2addr v5, v2

    iput v5, v3, Lorg/concentus/SilkChannelEncoder;->inputBufIx:I

    :goto_12
    move/from16 v2, v20

    const/4 v5, 0x0

    goto :goto_14

    :cond_1a
    move/from16 p3, v3

    move/from16 v36, v12

    .line 310
    iget v3, v7, Lorg/concentus/EncControlState;->nChannelsAPI:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1b

    iget v3, v7, Lorg/concentus/EncControlState;->nChannelsInternal:I

    if-ne v3, v5, :cond_1b

    const/4 v3, 0x1

    goto :goto_13

    :cond_1b
    const/4 v3, 0x0

    :goto_13
    invoke-static {v3}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    const/4 v3, 0x0

    .line 311
    invoke-static {v8, v1, v4, v3, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 312
    iget-object v5, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v5, v5, v3

    iget-object v5, v5, Lorg/concentus/SilkChannelEncoder;->resampler_state:Lorg/concentus/SilkResamplerState;

    iget-object v6, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v6, v6, v3

    iget-object v6, v6, Lorg/concentus/SilkChannelEncoder;->inputBuf:[S

    iget-object v11, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v11, v11, v3

    iget v3, v11, Lorg/concentus/SilkChannelEncoder;->inputBufIx:I

    const/4 v11, 0x2

    add-int/lit8 v31, v3, 0x2

    const/16 v33, 0x0

    move-object/from16 v29, v5

    move-object/from16 v30, v6

    move-object/from16 v32, v4

    move/from16 v34, v13

    invoke-static/range {v29 .. v34}, Lorg/concentus/Resampler;->silk_resampler(Lorg/concentus/SilkResamplerState;[SI[SII)I

    move-result v3

    add-int v20, v20, v3

    .line 320
    iget-object v3, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    iget v6, v3, Lorg/concentus/SilkChannelEncoder;->inputBufIx:I

    add-int/2addr v6, v2

    iput v6, v3, Lorg/concentus/SilkChannelEncoder;->inputBufIx:I

    move/from16 v2, v20

    .line 323
    :goto_14
    iget v3, v7, Lorg/concentus/EncControlState;->nChannelsAPI:I

    mul-int/2addr v3, v13

    add-int v11, v1, v3

    sub-int/2addr v9, v13

    .line 327
    iput v5, v0, Lorg/concentus/SilkEncoder;->allowBandwidthSwitch:I

    .line 330
    iget-object v1, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v1, v1, v5

    iget v1, v1, Lorg/concentus/SilkChannelEncoder;->inputBufIx:I

    iget-object v3, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v3, v3, v5

    iget v3, v3, Lorg/concentus/SilkChannelEncoder;->frame_length:I

    if-lt v1, v3, :cond_45

    .line 332
    iget-object v1, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v1, v1, v5

    iget v1, v1, Lorg/concentus/SilkChannelEncoder;->inputBufIx:I

    iget-object v3, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v3, v3, v5

    iget v3, v3, Lorg/concentus/SilkChannelEncoder;->frame_length:I

    if-ne v1, v3, :cond_1c

    const/4 v1, 0x1

    goto :goto_15

    :cond_1c
    const/4 v1, 0x0

    :goto_15
    invoke-static {v1}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    .line 333
    iget v1, v7, Lorg/concentus/EncControlState;->nChannelsInternal:I

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1e

    iget-object v1, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v1, v1, v3

    iget v1, v1, Lorg/concentus/SilkChannelEncoder;->inputBufIx:I

    iget-object v5, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v5, v5, v3

    iget v3, v5, Lorg/concentus/SilkChannelEncoder;->frame_length:I

    if-ne v1, v3, :cond_1d

    goto :goto_16

    :cond_1d
    const/4 v1, 0x0

    goto :goto_17

    :cond_1e
    :goto_16
    const/4 v1, 0x1

    :goto_17
    invoke-static {v1}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    .line 336
    iget-object v1, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    iget v1, v1, Lorg/concentus/SilkChannelEncoder;->nFramesEncoded:I

    const/16 v6, 0x8

    if-nez v1, :cond_29

    if-nez p6, :cond_29

    const/4 v1, 0x2

    .line 338
    new-array v5, v1, [S

    aput-short v3, v5, v3

    const/4 v1, 0x1

    aput-short v3, v5, v1

    .line 339
    iget-object v13, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v13, v13, v3

    iget v13, v13, Lorg/concentus/SilkChannelEncoder;->nFramesPerPacket:I

    add-int/2addr v13, v1

    iget v1, v7, Lorg/concentus/EncControlState;->nChannelsInternal:I

    mul-int/2addr v13, v1

    const/16 v1, 0x100

    invoke-static {v1, v13}, Lorg/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v13

    sub-int/2addr v1, v13

    int-to-short v1, v1

    aput-short v1, v5, v3

    .line 340
    invoke-virtual {v10, v3, v5, v6}, Lorg/concentus/EntropyCoder;->enc_icdf(I[SI)V

    const/4 v1, 0x0

    .line 344
    :goto_18
    iget v3, v7, Lorg/concentus/EncControlState;->nChannelsInternal:I

    if-ge v1, v3, :cond_22

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 346
    :goto_19
    iget-object v13, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v13, v13, v1

    iget v13, v13, Lorg/concentus/SilkChannelEncoder;->nFramesPerPacket:I

    if-ge v3, v13, :cond_1f

    .line 347
    iget-object v13, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v13, v13, v1

    iget-object v13, v13, Lorg/concentus/SilkChannelEncoder;->LBRR_flags:[I

    aget v13, v13, v3

    invoke-static {v13, v3}, Lorg/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v13

    or-int/2addr v5, v13

    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 350
    :cond_1f
    iget-object v3, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v3, v3, v1

    if-lez v5, :cond_20

    const/4 v13, 0x1

    goto :goto_1a

    :cond_20
    const/4 v13, 0x0

    :goto_1a
    int-to-byte v13, v13

    iput-byte v13, v3, Lorg/concentus/SilkChannelEncoder;->LBRR_flag:B

    if-eqz v5, :cond_21

    .line 351
    iget-object v3, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v3, v3, v1

    iget v3, v3, Lorg/concentus/SilkChannelEncoder;->nFramesPerPacket:I

    const/4 v13, 0x1

    if-le v3, v13, :cond_21

    add-int/lit8 v5, v5, -0x1

    .line 352
    sget-object v3, Lorg/concentus/SilkTables;->silk_LBRR_flags_iCDF_ptr:[[S

    iget-object v13, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v13, v13, v1

    iget v13, v13, Lorg/concentus/SilkChannelEncoder;->nFramesPerPacket:I

    const/4 v14, 0x2

    sub-int/2addr v13, v14

    aget-object v3, v3, v13

    invoke-virtual {v10, v5, v3, v6}, Lorg/concentus/EntropyCoder;->enc_icdf(I[SI)V

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_22
    const/4 v1, 0x0

    .line 357
    :goto_1b
    iget-object v3, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    iget v3, v3, Lorg/concentus/SilkChannelEncoder;->nFramesPerPacket:I

    if-ge v1, v3, :cond_27

    const/4 v3, 0x0

    .line 358
    :goto_1c
    iget v5, v7, Lorg/concentus/EncControlState;->nChannelsInternal:I

    if-ge v3, v5, :cond_26

    .line 359
    iget-object v5, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v5, v5, v3

    iget-object v5, v5, Lorg/concentus/SilkChannelEncoder;->LBRR_flags:[I

    aget v5, v5, v1

    if-eqz v5, :cond_25

    .line 362
    iget v5, v7, Lorg/concentus/EncControlState;->nChannelsInternal:I

    const/4 v13, 0x2

    if-ne v5, v13, :cond_23

    if-nez v3, :cond_23

    .line 363
    iget-object v5, v0, Lorg/concentus/SilkEncoder;->sStereo:Lorg/concentus/StereoEncodeState;

    iget-object v5, v5, Lorg/concentus/StereoEncodeState;->predIx:[[[B

    aget-object v5, v5, v1

    invoke-static {v10, v5}, Lorg/concentus/Stereo;->silk_stereo_encode_pred(Lorg/concentus/EntropyCoder;[[B)V

    .line 365
    iget-object v5, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    const/4 v13, 0x1

    aget-object v5, v5, v13

    iget-object v5, v5, Lorg/concentus/SilkChannelEncoder;->LBRR_flags:[I

    aget v5, v5, v1

    if-nez v5, :cond_23

    .line 366
    iget-object v5, v0, Lorg/concentus/SilkEncoder;->sStereo:Lorg/concentus/StereoEncodeState;

    iget-object v5, v5, Lorg/concentus/StereoEncodeState;->mid_only_flags:[B

    aget-byte v5, v5, v1

    invoke-static {v10, v5}, Lorg/concentus/Stereo;->silk_stereo_encode_mid_only(Lorg/concentus/EntropyCoder;B)V

    :cond_23
    if-lez v1, :cond_24

    .line 371
    iget-object v5, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v5, v5, v3

    iget-object v5, v5, Lorg/concentus/SilkChannelEncoder;->LBRR_flags:[I

    add-int/lit8 v13, v1, -0x1

    aget v5, v5, v13

    if-eqz v5, :cond_24

    const/4 v5, 0x2

    goto :goto_1d

    :cond_24
    const/4 v5, 0x0

    .line 377
    :goto_1d
    iget-object v13, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v13, v13, v3

    const/4 v14, 0x1

    invoke-static {v13, v10, v1, v14, v5}, Lorg/concentus/EncodeIndices;->silk_encode_indices(Lorg/concentus/SilkChannelEncoder;Lorg/concentus/EntropyCoder;III)V

    .line 378
    iget-object v5, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v5, v5, v3

    iget-object v5, v5, Lorg/concentus/SilkChannelEncoder;->indices_LBRR:[Lorg/concentus/SideInfoIndices;

    aget-object v5, v5, v1

    iget-byte v5, v5, Lorg/concentus/SideInfoIndices;->signalType:B

    iget-object v13, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v13, v13, v3

    iget-object v13, v13, Lorg/concentus/SilkChannelEncoder;->indices_LBRR:[Lorg/concentus/SideInfoIndices;

    aget-object v13, v13, v1

    iget-byte v13, v13, Lorg/concentus/SideInfoIndices;->quantOffsetType:B

    iget-object v14, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v14, v14, v3

    iget-object v14, v14, Lorg/concentus/SilkChannelEncoder;->pulses_LBRR:[[B

    aget-object v14, v14, v1

    iget-object v15, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v15, v15, v3

    iget v15, v15, Lorg/concentus/SilkChannelEncoder;->frame_length:I

    invoke-static {v10, v5, v13, v14, v15}, Lorg/concentus/EncodePulses;->silk_encode_pulses(Lorg/concentus/EntropyCoder;II[BI)V

    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_27
    const/4 v1, 0x0

    .line 385
    :goto_1e
    iget v3, v7, Lorg/concentus/EncControlState;->nChannelsInternal:I

    if-ge v1, v3, :cond_28

    .line 386
    iget-object v3, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v3, v3, v1

    iget-object v3, v3, Lorg/concentus/SilkChannelEncoder;->LBRR_flags:[I

    const/4 v5, 0x3

    const/4 v13, 0x0

    invoke-static {v3, v13, v5}, Lorg/concentus/Arrays;->MemSet([III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_28
    const/4 v5, 0x3

    .line 389
    invoke-virtual/range {p4 .. p4}, Lorg/concentus/EntropyCoder;->tell()I

    move-result v1

    iput v1, v0, Lorg/concentus/SilkEncoder;->nBitsUsedLBRR:I

    goto :goto_1f

    :cond_29
    const/4 v5, 0x3

    .line 392
    :goto_1f
    iget-object v1, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    invoke-static {v1}, Lorg/concentus/HPVariableCutoff;->silk_HP_variable_cutoff([Lorg/concentus/SilkChannelEncoder;)V

    .line 395
    iget v1, v7, Lorg/concentus/EncControlState;->bitRate:I

    iget v3, v7, Lorg/concentus/EncControlState;->payloadSize_ms:I

    invoke-static {v1, v3}, Lorg/concentus/Inlines;->silk_MUL(II)I

    move-result v1

    const/16 v3, 0x3e8

    invoke-static {v1, v3}, Lorg/concentus/Inlines;->silk_DIV32_16(II)I

    move-result v1

    if-nez p6, :cond_2a

    .line 399
    iget v3, v0, Lorg/concentus/SilkEncoder;->nBitsUsedLBRR:I

    sub-int/2addr v1, v3

    .line 403
    :cond_2a
    iget-object v3, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    const/4 v13, 0x0

    aget-object v3, v3, v13

    iget v3, v3, Lorg/concentus/SilkChannelEncoder;->nFramesPerPacket:I

    invoke-static {v1, v3}, Lorg/concentus/Inlines;->silk_DIV32_16(II)I

    move-result v1

    .line 406
    iget v3, v7, Lorg/concentus/EncControlState;->payloadSize_ms:I

    const/16 v15, 0x64

    const/16 v14, 0xa

    if-ne v3, v14, :cond_2b

    .line 407
    invoke-static {v1, v15}, Lorg/concentus/Inlines;->silk_SMULBB(II)I

    move-result v3

    goto :goto_20

    :cond_2b
    const/16 v3, 0x32

    .line 409
    invoke-static {v1, v3}, Lorg/concentus/Inlines;->silk_SMULBB(II)I

    move-result v3

    .line 413
    :goto_20
    iget v13, v0, Lorg/concentus/SilkEncoder;->nBitsExceeded:I

    const/16 v6, 0x3e8

    invoke-static {v13, v6}, Lorg/concentus/Inlines;->silk_MUL(II)I

    move-result v13

    const/16 v6, 0x1f4

    invoke-static {v13, v6}, Lorg/concentus/Inlines;->silk_DIV32_16(II)I

    move-result v13

    sub-int/2addr v3, v13

    if-nez p6, :cond_2c

    .line 415
    iget-object v13, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    const/16 v17, 0x0

    aget-object v13, v13, v17

    iget v13, v13, Lorg/concentus/SilkChannelEncoder;->nFramesEncoded:I

    if-lez v13, :cond_2c

    .line 417
    invoke-virtual/range {p4 .. p4}, Lorg/concentus/EntropyCoder;->tell()I

    move-result v13

    iget v14, v0, Lorg/concentus/SilkEncoder;->nBitsUsedLBRR:I

    sub-int/2addr v13, v14

    iget-object v14, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v14, v14, v17

    iget v14, v14, Lorg/concentus/SilkChannelEncoder;->nFramesEncoded:I

    mul-int/2addr v1, v14

    sub-int/2addr v13, v1

    const/16 v1, 0x3e8

    .line 418
    invoke-static {v13, v1}, Lorg/concentus/Inlines;->silk_MUL(II)I

    move-result v13

    invoke-static {v13, v6}, Lorg/concentus/Inlines;->silk_DIV32_16(II)I

    move-result v6

    sub-int/2addr v3, v6

    goto :goto_21

    :cond_2c
    const/16 v1, 0x3e8

    .line 422
    :goto_21
    iget v6, v7, Lorg/concentus/EncControlState;->bitRate:I

    const/16 v13, 0x1388

    invoke-static {v3, v6, v13}, Lorg/concentus/Inlines;->silk_LIMIT(III)I

    move-result v29

    .line 425
    iget v3, v7, Lorg/concentus/EncControlState;->nChannelsInternal:I

    const/4 v6, 0x2

    if-ne v3, v6, :cond_30

    .line 426
    new-instance v3, Lorg/concentus/BoxedValueByte;

    iget-object v6, v0, Lorg/concentus/SilkEncoder;->sStereo:Lorg/concentus/StereoEncodeState;

    iget-object v6, v6, Lorg/concentus/StereoEncodeState;->mid_only_flags:[B

    iget-object v13, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    iget v13, v13, Lorg/concentus/SilkChannelEncoder;->nFramesEncoded:I

    aget-byte v6, v6, v13

    invoke-direct {v3, v6}, Lorg/concentus/BoxedValueByte;-><init>(B)V

    .line 427
    iget-object v13, v0, Lorg/concentus/SilkEncoder;->sStereo:Lorg/concentus/StereoEncodeState;

    iget-object v6, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v6, v6, v14

    iget-object v6, v6, Lorg/concentus/SilkChannelEncoder;->inputBuf:[S

    iget-object v1, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    const/16 v16, 0x1

    aget-object v1, v1, v16

    iget-object v1, v1, Lorg/concentus/SilkChannelEncoder;->inputBuf:[S

    iget-object v15, v0, Lorg/concentus/SilkEncoder;->sStereo:Lorg/concentus/StereoEncodeState;

    iget-object v15, v15, Lorg/concentus/StereoEncodeState;->predIx:[[[B

    iget-object v5, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v5, v5, v14

    iget v5, v5, Lorg/concentus/SilkChannelEncoder;->nFramesEncoded:I

    aget-object v5, v15, v5

    iget-object v15, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v15, v15, v14

    iget v15, v15, Lorg/concentus/SilkChannelEncoder;->speech_activity_Q8:I

    iget v12, v7, Lorg/concentus/EncControlState;->toMono:I

    move/from16 v32, v2

    iget-object v2, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v2, v2, v14

    iget v2, v2, Lorg/concentus/SilkChannelEncoder;->fs_kHz:I

    move-object/from16 v33, v4

    iget-object v4, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v4, v4, v14

    iget v4, v4, Lorg/concentus/SilkChannelEncoder;->frame_length:I

    const/16 v19, 0x2

    const/16 v20, 0x2

    move v8, v14

    const/16 v16, 0xa

    move-object v14, v6

    move v6, v15

    move-object/from16 v34, v23

    move/from16 v15, v19

    move-object/from16 v16, v1

    move/from16 v17, v20

    move-object/from16 v18, v5

    move-object/from16 v19, v3

    move-object/from16 v20, v34

    move/from16 v21, v29

    move/from16 v22, v6

    move/from16 v23, v12

    move/from16 v24, v2

    move/from16 v25, v4

    invoke-static/range {v13 .. v25}, Lorg/concentus/Stereo;->silk_stereo_LR_to_MS(Lorg/concentus/StereoEncodeState;[SI[SI[[BLorg/concentus/BoxedValueByte;[IIIIII)V

    .line 441
    iget-object v1, v0, Lorg/concentus/SilkEncoder;->sStereo:Lorg/concentus/StereoEncodeState;

    iget-object v1, v1, Lorg/concentus/StereoEncodeState;->mid_only_flags:[B

    iget-object v2, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v2, v2, v8

    iget v2, v2, Lorg/concentus/SilkChannelEncoder;->nFramesEncoded:I

    iget-byte v4, v3, Lorg/concentus/BoxedValueByte;->Val:B

    aput-byte v4, v1, v2

    .line 443
    iget-byte v1, v3, Lorg/concentus/BoxedValueByte;->Val:B

    if-nez v1, :cond_2e

    .line 445
    iget v1, v0, Lorg/concentus/SilkEncoder;->prev_decode_only_middle:I

    const/4 v12, 0x1

    if-ne v1, v12, :cond_2d

    .line 446
    iget-object v1, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v1, v1, v12

    iget-object v1, v1, Lorg/concentus/SilkChannelEncoder;->sShape:Lorg/concentus/SilkShapeState;

    invoke-virtual {v1}, Lorg/concentus/SilkShapeState;->Reset()V

    .line 447
    iget-object v1, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v1, v1, v12

    iget-object v1, v1, Lorg/concentus/SilkChannelEncoder;->sPrefilt:Lorg/concentus/SilkPrefilterState;

    invoke-virtual {v1}, Lorg/concentus/SilkPrefilterState;->Reset()V

    .line 448
    iget-object v1, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v1, v1, v12

    iget-object v1, v1, Lorg/concentus/SilkChannelEncoder;->sNSQ:Lorg/concentus/SilkNSQState;

    invoke-virtual {v1}, Lorg/concentus/SilkNSQState;->Reset()V

    .line 449
    iget-object v1, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v1, v1, v12

    iget-object v1, v1, Lorg/concentus/SilkChannelEncoder;->prev_NLSFq_Q15:[S

    const/16 v2, 0x10

    invoke-static {v1, v8, v2}, Lorg/concentus/Arrays;->MemSet([SSI)V

    .line 450
    iget-object v1, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v1, v1, v12

    iget-object v1, v1, Lorg/concentus/SilkChannelEncoder;->sLP:Lorg/concentus/SilkLPState;

    iget-object v1, v1, Lorg/concentus/SilkLPState;->In_LP_State:[I

    const/4 v2, 0x2

    invoke-static {v1, v8, v2}, Lorg/concentus/Arrays;->MemSet([III)V

    .line 452
    iget-object v1, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v1, v1, v12

    const/16 v2, 0x64

    iput v2, v1, Lorg/concentus/SilkChannelEncoder;->prevLag:I

    .line 453
    iget-object v1, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v1, v1, v12

    iget-object v1, v1, Lorg/concentus/SilkChannelEncoder;->sNSQ:Lorg/concentus/SilkNSQState;

    iput v2, v1, Lorg/concentus/SilkNSQState;->lagPrev:I

    .line 454
    iget-object v1, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v1, v1, v12

    iget-object v1, v1, Lorg/concentus/SilkChannelEncoder;->sShape:Lorg/concentus/SilkShapeState;

    const/16 v13, 0xa

    iput-byte v13, v1, Lorg/concentus/SilkShapeState;->LastGainIndex:B

    .line 455
    iget-object v1, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v1, v1, v12

    iput-byte v8, v1, Lorg/concentus/SilkChannelEncoder;->prevSignalType:B

    .line 456
    iget-object v1, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v1, v1, v12

    iget-object v1, v1, Lorg/concentus/SilkChannelEncoder;->sNSQ:Lorg/concentus/SilkNSQState;

    const/high16 v2, 0x10000

    iput v2, v1, Lorg/concentus/SilkNSQState;->prev_gain_Q16:I

    .line 457
    iget-object v1, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v1, v1, v12

    iput v12, v1, Lorg/concentus/SilkChannelEncoder;->first_frame_after_reset:I

    goto :goto_22

    :cond_2d
    const/16 v13, 0xa

    .line 460
    :goto_22
    iget-object v1, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v1, v1, v12

    invoke-virtual {v1}, Lorg/concentus/SilkChannelEncoder;->silk_encode_do_VAD()V

    goto :goto_23

    :cond_2e
    const/4 v12, 0x1

    const/16 v13, 0xa

    .line 462
    iget-object v1, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v1, v1, v12

    iget-object v1, v1, Lorg/concentus/SilkChannelEncoder;->VAD_flags:[B

    iget-object v2, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v2, v2, v8

    iget v2, v2, Lorg/concentus/SilkChannelEncoder;->nFramesEncoded:I

    aput-byte v8, v1, v2

    :goto_23
    if-nez p6, :cond_2f

    .line 466
    iget-object v1, v0, Lorg/concentus/SilkEncoder;->sStereo:Lorg/concentus/StereoEncodeState;

    iget-object v1, v1, Lorg/concentus/StereoEncodeState;->predIx:[[[B

    iget-object v2, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v2, v2, v8

    iget v2, v2, Lorg/concentus/SilkChannelEncoder;->nFramesEncoded:I

    aget-object v1, v1, v2

    invoke-static {v10, v1}, Lorg/concentus/Stereo;->silk_stereo_encode_pred(Lorg/concentus/EntropyCoder;[[B)V

    .line 467
    iget-object v1, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v1, v1, v12

    iget-object v1, v1, Lorg/concentus/SilkChannelEncoder;->VAD_flags:[B

    iget-object v2, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v2, v2, v8

    iget v2, v2, Lorg/concentus/SilkChannelEncoder;->nFramesEncoded:I

    aget-byte v1, v1, v2

    if-nez v1, :cond_2f

    .line 468
    iget-object v1, v0, Lorg/concentus/SilkEncoder;->sStereo:Lorg/concentus/StereoEncodeState;

    iget-object v1, v1, Lorg/concentus/StereoEncodeState;->mid_only_flags:[B

    iget-object v2, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v2, v2, v8

    iget v2, v2, Lorg/concentus/SilkChannelEncoder;->nFramesEncoded:I

    aget-byte v1, v1, v2

    invoke-static {v10, v1}, Lorg/concentus/Stereo;->silk_stereo_encode_mid_only(Lorg/concentus/EntropyCoder;B)V

    :cond_2f
    const/4 v14, 0x2

    goto :goto_24

    :cond_30
    move/from16 v32, v2

    move-object/from16 v33, v4

    move-object/from16 v34, v23

    const/4 v8, 0x0

    const/4 v12, 0x1

    const/16 v13, 0xa

    .line 473
    iget-object v1, v0, Lorg/concentus/SilkEncoder;->sStereo:Lorg/concentus/StereoEncodeState;

    iget-object v1, v1, Lorg/concentus/StereoEncodeState;->sMid:[S

    iget-object v2, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v2, v2, v8

    iget-object v2, v2, Lorg/concentus/SilkChannelEncoder;->inputBuf:[S

    const/4 v14, 0x2

    invoke-static {v1, v8, v2, v8, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 474
    iget-object v1, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v1, v1, v8

    iget-object v1, v1, Lorg/concentus/SilkChannelEncoder;->inputBuf:[S

    iget-object v2, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v2, v2, v8

    iget v2, v2, Lorg/concentus/SilkChannelEncoder;->frame_length:I

    iget-object v3, v0, Lorg/concentus/SilkEncoder;->sStereo:Lorg/concentus/StereoEncodeState;

    iget-object v3, v3, Lorg/concentus/StereoEncodeState;->sMid:[S

    invoke-static {v1, v2, v3, v8, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 477
    :goto_24
    iget-object v1, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v1, v1, v8

    invoke-virtual {v1}, Lorg/concentus/SilkChannelEncoder;->silk_encode_do_VAD()V

    move v15, v8

    move/from16 v20, v32

    .line 480
    :goto_25
    iget v1, v7, Lorg/concentus/EncControlState;->nChannelsInternal:I

    if-ge v15, v1, :cond_3c

    .line 484
    iget v1, v7, Lorg/concentus/EncControlState;->maxBits:I

    move/from16 v6, v26

    if-ne v6, v14, :cond_31

    if-nez p3, :cond_31

    mul-int/lit8 v1, v1, 0x3

    .line 486
    div-int/lit8 v1, v1, 0x5

    move/from16 v3, p3

    const/4 v5, 0x3

    goto :goto_26

    :cond_31
    const/4 v5, 0x3

    if-ne v6, v5, :cond_32

    if-nez p3, :cond_33

    mul-int/lit8 v1, v1, 0x2

    .line 489
    div-int/lit8 v1, v1, 0x5

    :cond_32
    move/from16 v3, p3

    goto :goto_26

    :cond_33
    move/from16 v3, p3

    if-ne v3, v12, :cond_34

    mul-int/lit8 v1, v1, 0x3

    .line 491
    div-int/lit8 v1, v1, 0x4

    .line 495
    :cond_34
    :goto_26
    iget v2, v7, Lorg/concentus/EncControlState;->useCBR:I

    if-eqz v2, :cond_35

    add-int/lit8 v4, v6, -0x1

    if-ne v3, v4, :cond_35

    move v2, v12

    goto :goto_27

    :cond_35
    move v2, v8

    .line 497
    :goto_27
    iget v4, v7, Lorg/concentus/EncControlState;->nChannelsInternal:I

    if-ne v4, v12, :cond_36

    move/from16 v16, v1

    move/from16 v17, v2

    move/from16 v4, v29

    goto :goto_28

    .line 500
    :cond_36
    aget v4, v34, v15

    if-nez v15, :cond_37

    .line 501
    aget v16, v34, v12

    if-lez v16, :cond_37

    .line 504
    iget v2, v7, Lorg/concentus/EncControlState;->maxBits:I

    mul-int/lit8 v16, v6, 0x2

    div-int v2, v2, v16

    sub-int/2addr v1, v2

    move/from16 v16, v1

    move/from16 v17, v8

    goto :goto_28

    :cond_37
    move/from16 v16, v1

    move/from16 v17, v2

    :goto_28
    if-lez v4, :cond_3b

    .line 511
    iget-object v1, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v1, v1, v15

    invoke-virtual {v1, v4}, Lorg/concentus/SilkChannelEncoder;->silk_control_SNR(I)I

    .line 514
    iget-object v1, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v1, v1, v8

    iget v1, v1, Lorg/concentus/SilkChannelEncoder;->nFramesEncoded:I

    sub-int/2addr v1, v15

    if-gtz v1, :cond_38

    move v4, v8

    goto :goto_29

    :cond_38
    if-lez v15, :cond_39

    .line 516
    iget v1, v0, Lorg/concentus/SilkEncoder;->prev_decode_only_middle:I

    if-eqz v1, :cond_39

    move v4, v12

    goto :goto_29

    :cond_39
    move v4, v14

    .line 524
    :goto_29
    iget-object v1, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v1, v1, v15

    const/16 v18, 0x3e8

    move-object/from16 v2, p5

    move/from16 v19, v3

    move-object/from16 v3, p4

    move-object/from16 v21, v33

    move/from16 v13, v18

    move/from16 v18, v5

    move/from16 v5, v16

    move/from16 v16, v6

    move/from16 v22, v35

    const/16 v23, 0x8

    move/from16 v6, v17

    invoke-virtual/range {v1 .. v6}, Lorg/concentus/SilkChannelEncoder;->silk_encode_frame(Lorg/concentus/BoxedValueInt;Lorg/concentus/EntropyCoder;III)I

    move-result v1

    add-int v1, v20, v1

    .line 525
    sget v2, Lorg/concentus/SilkError;->SILK_NO_ERROR:I

    if-ne v1, v2, :cond_3a

    move v2, v12

    goto :goto_2a

    :cond_3a
    move v2, v8

    :goto_2a
    invoke-static {v2}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    move/from16 v20, v1

    goto :goto_2b

    :cond_3b
    move/from16 v19, v3

    move/from16 v18, v5

    move/from16 v16, v6

    move-object/from16 v21, v33

    move/from16 v22, v35

    const/16 v13, 0x3e8

    const/16 v23, 0x8

    .line 528
    :goto_2b
    iget-object v1, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v1, v1, v15

    iput v8, v1, Lorg/concentus/SilkChannelEncoder;->controlled_since_last_payload:I

    .line 529
    iget-object v1, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v1, v1, v15

    iput v8, v1, Lorg/concentus/SilkChannelEncoder;->inputBufIx:I

    .line 530
    iget-object v1, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v1, v1, v15

    iget v2, v1, Lorg/concentus/SilkChannelEncoder;->nFramesEncoded:I

    add-int/2addr v2, v12

    iput v2, v1, Lorg/concentus/SilkChannelEncoder;->nFramesEncoded:I

    add-int/lit8 v15, v15, 0x1

    move/from16 v26, v16

    move/from16 p3, v19

    move-object/from16 v33, v21

    move/from16 v35, v22

    const/16 v13, 0xa

    goto/16 :goto_25

    :cond_3c
    move/from16 v19, p3

    move/from16 v16, v26

    move-object/from16 v21, v33

    move/from16 v22, v35

    const/16 v13, 0x3e8

    const/16 v18, 0x3

    const/16 v23, 0x8

    .line 533
    iget-object v1, v0, Lorg/concentus/SilkEncoder;->sStereo:Lorg/concentus/StereoEncodeState;

    iget-object v1, v1, Lorg/concentus/StereoEncodeState;->mid_only_flags:[B

    iget-object v2, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v2, v2, v8

    iget v2, v2, Lorg/concentus/SilkChannelEncoder;->nFramesEncoded:I

    sub-int/2addr v2, v12

    aget-byte v1, v1, v2

    iput v1, v0, Lorg/concentus/SilkEncoder;->prev_decode_only_middle:I

    move-object/from16 v1, p5

    .line 536
    iget v2, v1, Lorg/concentus/BoxedValueInt;->Val:I

    if-lez v2, :cond_43

    iget-object v2, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v2, v2, v8

    iget v2, v2, Lorg/concentus/SilkChannelEncoder;->nFramesEncoded:I

    iget-object v3, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v3, v3, v8

    iget v3, v3, Lorg/concentus/SilkChannelEncoder;->nFramesPerPacket:I

    if-ne v2, v3, :cond_43

    move v2, v8

    move v3, v2

    .line 538
    :goto_2c
    iget v4, v7, Lorg/concentus/EncControlState;->nChannelsInternal:I

    if-ge v2, v4, :cond_3e

    move v4, v8

    .line 539
    :goto_2d
    iget-object v5, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v5, v5, v2

    iget v5, v5, Lorg/concentus/SilkChannelEncoder;->nFramesPerPacket:I

    if-ge v4, v5, :cond_3d

    .line 540
    invoke-static {v3, v12}, Lorg/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v3

    .line 541
    iget-object v5, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v5, v5, v2

    iget-object v5, v5, Lorg/concentus/SilkChannelEncoder;->VAD_flags:[B

    aget-byte v5, v5, v4

    or-int/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    .line 543
    :cond_3d
    invoke-static {v3, v12}, Lorg/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v3

    .line 544
    iget-object v4, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v4, v4, v2

    iget-byte v4, v4, Lorg/concentus/SilkChannelEncoder;->LBRR_flag:B

    or-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    :cond_3e
    if-nez p6, :cond_3f

    int-to-long v2, v3

    .line 548
    iget-object v4, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v4, v4, v8

    iget v4, v4, Lorg/concentus/SilkChannelEncoder;->nFramesPerPacket:I

    add-int/2addr v4, v12

    iget v5, v7, Lorg/concentus/EncControlState;->nChannelsInternal:I

    mul-int/2addr v4, v5

    invoke-virtual {v10, v2, v3, v4}, Lorg/concentus/EntropyCoder;->enc_patch_initial_bits(JI)V

    .line 552
    :cond_3f
    iget-object v2, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v2, v2, v8

    iget v2, v2, Lorg/concentus/SilkChannelEncoder;->inDTX:I

    if-eqz v2, :cond_41

    iget v2, v7, Lorg/concentus/EncControlState;->nChannelsInternal:I

    if-eq v2, v12, :cond_40

    iget-object v2, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v2, v2, v12

    iget v2, v2, Lorg/concentus/SilkChannelEncoder;->inDTX:I

    if-eqz v2, :cond_41

    .line 553
    :cond_40
    iput v8, v1, Lorg/concentus/BoxedValueInt;->Val:I

    .line 556
    :cond_41
    iget v2, v0, Lorg/concentus/SilkEncoder;->nBitsExceeded:I

    iget v3, v1, Lorg/concentus/BoxedValueInt;->Val:I

    mul-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    iput v2, v0, Lorg/concentus/SilkEncoder;->nBitsExceeded:I

    .line 557
    iget v2, v0, Lorg/concentus/SilkEncoder;->nBitsExceeded:I

    iget v3, v7, Lorg/concentus/EncControlState;->bitRate:I

    iget v4, v7, Lorg/concentus/EncControlState;->payloadSize_ms:I

    invoke-static {v3, v4}, Lorg/concentus/Inlines;->silk_MUL(II)I

    move-result v3

    invoke-static {v3, v13}, Lorg/concentus/Inlines;->silk_DIV32_16(II)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Lorg/concentus/SilkEncoder;->nBitsExceeded:I

    .line 558
    iget v2, v0, Lorg/concentus/SilkEncoder;->nBitsExceeded:I

    const/16 v3, 0x2710

    invoke-static {v2, v8, v3}, Lorg/concentus/Inlines;->silk_LIMIT(III)I

    move-result v2

    iput v2, v0, Lorg/concentus/SilkEncoder;->nBitsExceeded:I

    const/16 v2, 0xc74

    .line 561
    iget v3, v0, Lorg/concentus/SilkEncoder;->timeSinceSwitchAllowed_ms:I

    const/16 v4, 0xd

    invoke-static {v4, v2, v3}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v2

    .line 564
    iget-object v3, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v3, v3, v8

    iget v3, v3, Lorg/concentus/SilkChannelEncoder;->speech_activity_Q8:I

    if-ge v3, v2, :cond_42

    .line 565
    iput v12, v0, Lorg/concentus/SilkEncoder;->allowBandwidthSwitch:I

    .line 566
    iput v8, v0, Lorg/concentus/SilkEncoder;->timeSinceSwitchAllowed_ms:I

    goto :goto_2e

    .line 568
    :cond_42
    iput v8, v0, Lorg/concentus/SilkEncoder;->allowBandwidthSwitch:I

    .line 569
    iget v2, v0, Lorg/concentus/SilkEncoder;->timeSinceSwitchAllowed_ms:I

    iget v3, v7, Lorg/concentus/EncControlState;->payloadSize_ms:I

    add-int/2addr v2, v3

    iput v2, v0, Lorg/concentus/SilkEncoder;->timeSinceSwitchAllowed_ms:I

    :cond_43
    :goto_2e
    if-nez v9, :cond_44

    move/from16 v2, v20

    goto :goto_2f

    :cond_44
    add-int/lit8 v3, v19, 0x1

    move v14, v8

    move v5, v13

    move/from16 v26, v16

    move-object/from16 v4, v21

    move/from16 v6, v22

    move-object/from16 v23, v34

    const/16 v15, 0xa

    move-object/from16 v8, p2

    move v13, v12

    move/from16 v12, v36

    move/from16 v37, v11

    move-object v11, v1

    move/from16 v1, v37

    goto/16 :goto_c

    :cond_45
    move/from16 v32, v2

    move v8, v5

    const/4 v12, 0x1

    const/16 v13, 0x3e8

    .line 583
    :goto_2f
    iget v1, v7, Lorg/concentus/EncControlState;->nChannelsInternal:I

    iput v1, v0, Lorg/concentus/SilkEncoder;->nPrevChannelsInternal:I

    .line 585
    iget v1, v0, Lorg/concentus/SilkEncoder;->allowBandwidthSwitch:I

    iput v1, v7, Lorg/concentus/EncControlState;->allowBandwidthSwitch:I

    .line 586
    iget-object v1, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v1, v1, v8

    iget v1, v1, Lorg/concentus/SilkChannelEncoder;->fs_kHz:I

    const/16 v3, 0x10

    if-ne v1, v3, :cond_46

    iget-object v1, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v1, v1, v8

    iget-object v1, v1, Lorg/concentus/SilkChannelEncoder;->sLP:Lorg/concentus/SilkLPState;

    iget v1, v1, Lorg/concentus/SilkLPState;->mode:I

    if-nez v1, :cond_46

    move v14, v12

    goto :goto_30

    :cond_46
    move v14, v8

    :goto_30
    iput v14, v7, Lorg/concentus/EncControlState;->inWBmodeWithoutVariableLP:I

    .line 587
    iget-object v1, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v1, v1, v8

    iget v1, v1, Lorg/concentus/SilkChannelEncoder;->fs_kHz:I

    invoke-static {v1, v13}, Lorg/concentus/Inlines;->silk_SMULBB(II)I

    move-result v1

    iput v1, v7, Lorg/concentus/EncControlState;->internalSampleRate:I

    .line 588
    iget v1, v7, Lorg/concentus/EncControlState;->toMono:I

    if-eqz v1, :cond_47

    move v14, v8

    goto :goto_31

    :cond_47
    iget-object v1, v0, Lorg/concentus/SilkEncoder;->sStereo:Lorg/concentus/StereoEncodeState;

    iget-short v14, v1, Lorg/concentus/StereoEncodeState;->smth_width_Q14:S

    :goto_31
    iput v14, v7, Lorg/concentus/EncControlState;->stereoWidth_Q14:I

    if-eqz p6, :cond_48

    move/from16 v14, v36

    .line 591
    iput v14, v7, Lorg/concentus/EncControlState;->payloadSize_ms:I

    move/from16 v14, v27

    .line 592
    iput v14, v7, Lorg/concentus/EncControlState;->complexity:I

    move v14, v8

    .line 594
    :goto_32
    iget v1, v7, Lorg/concentus/EncControlState;->nChannelsInternal:I

    if-ge v14, v1, :cond_48

    .line 595
    iget-object v1, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v1, v1, v14

    iput v8, v1, Lorg/concentus/SilkChannelEncoder;->controlled_since_last_payload:I

    .line 596
    iget-object v1, v0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v1, v1, v14

    iput v8, v1, Lorg/concentus/SilkChannelEncoder;->prefillFlag:I

    add-int/lit8 v14, v14, 0x1

    goto :goto_32

    :cond_48
    return v2

    :cond_49
    :goto_33
    move v8, v14

    .line 191
    invoke-static {v8}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    .line 192
    sget v0, Lorg/concentus/SilkError;->SILK_ENC_INPUT_INVALID_NO_OF_SAMPLES:I

    return v0
.end method

.method static silk_InitEncoder(Lorg/concentus/SilkEncoder;Lorg/concentus/EncControlState;)I
    .locals 5

    .line 44
    sget v0, Lorg/concentus/SilkError;->SILK_NO_ERROR:I

    .line 47
    invoke-virtual {p0}, Lorg/concentus/SilkEncoder;->Reset()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ge v2, v3, :cond_1

    .line 50
    iget-object v3, p0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v3, v3, v2

    invoke-static {v3}, Lorg/concentus/SilkEncoder;->silk_init_encoder(Lorg/concentus/SilkChannelEncoder;)I

    move-result v3

    add-int/2addr v0, v3

    .line 51
    sget v3, Lorg/concentus/SilkError;->SILK_NO_ERROR:I

    if-ne v0, v3, :cond_0

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    invoke-static {v4}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 54
    :cond_1
    iput v4, p0, Lorg/concentus/SilkEncoder;->nChannelsAPI:I

    .line 55
    iput v4, p0, Lorg/concentus/SilkEncoder;->nChannelsInternal:I

    .line 58
    invoke-static {p0, p1}, Lorg/concentus/EncodeAPI;->silk_QueryEncoder(Lorg/concentus/SilkEncoder;Lorg/concentus/EncControlState;)I

    move-result p0

    add-int/2addr v0, p0

    .line 59
    sget p0, Lorg/concentus/SilkError;->SILK_NO_ERROR:I

    if-ne v0, p0, :cond_2

    move v1, v4

    :cond_2
    invoke-static {v1}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    return v0
.end method

.method static silk_QueryEncoder(Lorg/concentus/SilkEncoder;Lorg/concentus/EncControlState;)I
    .locals 4

    .line 71
    sget v0, Lorg/concentus/SilkError;->SILK_NO_ERROR:I

    .line 72
    iget-object v1, p0, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 74
    invoke-virtual {p1}, Lorg/concentus/EncControlState;->Reset()V

    .line 76
    iget v3, p0, Lorg/concentus/SilkEncoder;->nChannelsAPI:I

    iput v3, p1, Lorg/concentus/EncControlState;->nChannelsAPI:I

    .line 77
    iget p0, p0, Lorg/concentus/SilkEncoder;->nChannelsInternal:I

    iput p0, p1, Lorg/concentus/EncControlState;->nChannelsInternal:I

    .line 78
    iget p0, v1, Lorg/concentus/SilkChannelEncoder;->API_fs_Hz:I

    iput p0, p1, Lorg/concentus/EncControlState;->API_sampleRate:I

    .line 79
    iget p0, v1, Lorg/concentus/SilkChannelEncoder;->maxInternal_fs_Hz:I

    iput p0, p1, Lorg/concentus/EncControlState;->maxInternalSampleRate:I

    .line 80
    iget p0, v1, Lorg/concentus/SilkChannelEncoder;->minInternal_fs_Hz:I

    iput p0, p1, Lorg/concentus/EncControlState;->minInternalSampleRate:I

    .line 81
    iget p0, v1, Lorg/concentus/SilkChannelEncoder;->desiredInternal_fs_Hz:I

    iput p0, p1, Lorg/concentus/EncControlState;->desiredInternalSampleRate:I

    .line 82
    iget p0, v1, Lorg/concentus/SilkChannelEncoder;->PacketSize_ms:I

    iput p0, p1, Lorg/concentus/EncControlState;->payloadSize_ms:I

    .line 83
    iget p0, v1, Lorg/concentus/SilkChannelEncoder;->TargetRate_bps:I

    iput p0, p1, Lorg/concentus/EncControlState;->bitRate:I

    .line 84
    iget p0, v1, Lorg/concentus/SilkChannelEncoder;->PacketLoss_perc:I

    iput p0, p1, Lorg/concentus/EncControlState;->packetLossPercentage:I

    .line 85
    iget p0, v1, Lorg/concentus/SilkChannelEncoder;->Complexity:I

    iput p0, p1, Lorg/concentus/EncControlState;->complexity:I

    .line 86
    iget p0, v1, Lorg/concentus/SilkChannelEncoder;->useInBandFEC:I

    iput p0, p1, Lorg/concentus/EncControlState;->useInBandFEC:I

    .line 87
    iget p0, v1, Lorg/concentus/SilkChannelEncoder;->useDTX:I

    iput p0, p1, Lorg/concentus/EncControlState;->useDTX:I

    .line 88
    iget p0, v1, Lorg/concentus/SilkChannelEncoder;->useCBR:I

    iput p0, p1, Lorg/concentus/EncControlState;->useCBR:I

    .line 89
    iget p0, v1, Lorg/concentus/SilkChannelEncoder;->fs_kHz:I

    const/16 v3, 0x3e8

    invoke-static {p0, v3}, Lorg/concentus/Inlines;->silk_SMULBB(II)I

    move-result p0

    iput p0, p1, Lorg/concentus/EncControlState;->internalSampleRate:I

    .line 90
    iget p0, v1, Lorg/concentus/SilkChannelEncoder;->allow_bandwidth_switch:I

    iput p0, p1, Lorg/concentus/EncControlState;->allowBandwidthSwitch:I

    .line 91
    iget p0, v1, Lorg/concentus/SilkChannelEncoder;->fs_kHz:I

    const/16 v3, 0x10

    if-ne p0, v3, :cond_0

    iget-object p0, v1, Lorg/concentus/SilkChannelEncoder;->sLP:Lorg/concentus/SilkLPState;

    iget p0, p0, Lorg/concentus/SilkLPState;->mode:I

    if-nez p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput v2, p1, Lorg/concentus/EncControlState;->inWBmodeWithoutVariableLP:I

    return v0
.end method
