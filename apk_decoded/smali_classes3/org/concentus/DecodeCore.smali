.class Lorg/concentus/DecodeCore;
.super Ljava/lang/Object;
.source "DecodeCore.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static silk_decode_core(Lorg/concentus/SilkChannelDecoder;Lorg/concentus/SilkDecoderControl;[SI[S)V
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 52
    iget-object v3, v1, Lorg/concentus/SilkDecoderControl;->LTPCoef_Q14:[S

    .line 65
    iget v4, v0, Lorg/concentus/SilkChannelDecoder;->prev_gain_Q16:I

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-static {v4}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    .line 67
    iget v4, v0, Lorg/concentus/SilkChannelDecoder;->ltp_mem_length:I

    new-array v4, v4, [S

    .line 68
    iget v7, v0, Lorg/concentus/SilkChannelDecoder;->ltp_mem_length:I

    iget v8, v0, Lorg/concentus/SilkChannelDecoder;->frame_length:I

    add-int/2addr v7, v8

    new-array v15, v7, [I

    .line 69
    iget v7, v0, Lorg/concentus/SilkChannelDecoder;->subfr_length:I

    new-array v14, v7, [I

    .line 70
    iget v7, v0, Lorg/concentus/SilkChannelDecoder;->subfr_length:I

    const/16 v13, 0x10

    add-int/2addr v7, v13

    new-array v12, v7, [I

    .line 72
    sget-object v7, Lorg/concentus/SilkTables;->silk_Quantization_Offsets_Q10:[[S

    iget-object v8, v0, Lorg/concentus/SilkChannelDecoder;->indices:Lorg/concentus/SideInfoIndices;

    iget-byte v8, v8, Lorg/concentus/SideInfoIndices;->signalType:B

    shr-int/2addr v8, v5

    aget-object v7, v7, v8

    iget-object v8, v0, Lorg/concentus/SilkChannelDecoder;->indices:Lorg/concentus/SideInfoIndices;

    iget-byte v8, v8, Lorg/concentus/SideInfoIndices;->quantOffsetType:B

    aget-short v7, v7, v8

    .line 74
    iget-object v8, v0, Lorg/concentus/SilkChannelDecoder;->indices:Lorg/concentus/SideInfoIndices;

    iget-byte v8, v8, Lorg/concentus/SideInfoIndices;->NLSFInterpCoef_Q2:B

    const/4 v11, 0x4

    if-ge v8, v11, :cond_1

    move/from16 v16, v5

    goto :goto_1

    :cond_1
    const/16 v16, 0x0

    .line 81
    :goto_1
    iget-object v8, v0, Lorg/concentus/SilkChannelDecoder;->indices:Lorg/concentus/SideInfoIndices;

    iget-byte v8, v8, Lorg/concentus/SideInfoIndices;->Seed:B

    const/4 v9, 0x0

    .line 82
    :goto_2
    iget v10, v0, Lorg/concentus/SilkChannelDecoder;->frame_length:I

    const/16 v5, 0xe

    if-ge v9, v10, :cond_5

    .line 83
    invoke-static {v8}, Lorg/concentus/Inlines;->silk_RAND(I)I

    move-result v8

    .line 84
    iget-object v10, v0, Lorg/concentus/SilkChannelDecoder;->exc_Q14:[I

    aget-short v6, p4, v9

    invoke-static {v6, v5}, Lorg/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v5

    aput v5, v10, v9

    .line 85
    iget-object v5, v0, Lorg/concentus/SilkChannelDecoder;->exc_Q14:[I

    aget v5, v5, v9

    if-lez v5, :cond_2

    .line 86
    iget-object v5, v0, Lorg/concentus/SilkChannelDecoder;->exc_Q14:[I

    aget v6, v5, v9

    add-int/lit16 v6, v6, -0x500

    aput v6, v5, v9

    goto :goto_3

    .line 88
    :cond_2
    iget-object v5, v0, Lorg/concentus/SilkChannelDecoder;->exc_Q14:[I

    aget v5, v5, v9

    if-gez v5, :cond_3

    .line 89
    iget-object v5, v0, Lorg/concentus/SilkChannelDecoder;->exc_Q14:[I

    aget v6, v5, v9

    add-int/lit16 v6, v6, 0x500

    aput v6, v5, v9

    .line 92
    :cond_3
    :goto_3
    iget-object v5, v0, Lorg/concentus/SilkChannelDecoder;->exc_Q14:[I

    aget v6, v5, v9

    shl-int/lit8 v10, v7, 0x4

    add-int/2addr v6, v10

    aput v6, v5, v9

    if-gez v8, :cond_4

    .line 94
    iget-object v5, v0, Lorg/concentus/SilkChannelDecoder;->exc_Q14:[I

    iget-object v6, v0, Lorg/concentus/SilkChannelDecoder;->exc_Q14:[I

    aget v6, v6, v9

    neg-int v6, v6

    aput v6, v5, v9

    .line 97
    :cond_4
    aget-short v5, p4, v9

    invoke-static {v8, v5}, Lorg/concentus/Inlines;->silk_ADD32_ovflw(II)I

    move-result v8

    add-int/lit8 v9, v9, 0x1

    const/4 v5, 0x1

    goto :goto_2

    .line 101
    :cond_5
    iget-object v6, v0, Lorg/concentus/SilkChannelDecoder;->sLPC_Q14_buf:[I

    const/4 v7, 0x0

    invoke-static {v6, v7, v12, v7, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    iget v6, v0, Lorg/concentus/SilkChannelDecoder;->ltp_mem_length:I

    move/from16 v19, p3

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/16 v18, 0x0

    .line 107
    :goto_4
    iget v8, v0, Lorg/concentus/SilkChannelDecoder;->nb_subfr:I

    if-ge v10, v8, :cond_18

    .line 110
    iget-object v8, v1, Lorg/concentus/SilkDecoderControl;->PredCoef_Q12:[[S

    shr-int/lit8 v9, v10, 0x1

    aget-object v20, v8, v9

    mul-int/lit8 v9, v10, 0x5

    .line 112
    iget-object v8, v0, Lorg/concentus/SilkChannelDecoder;->indices:Lorg/concentus/SideInfoIndices;

    iget-byte v8, v8, Lorg/concentus/SideInfoIndices;->signalType:B

    .line 114
    iget-object v11, v1, Lorg/concentus/SilkDecoderControl;->Gains_Q16:[I

    aget v11, v11, v10

    const/4 v5, 0x6

    invoke-static {v11, v5}, Lorg/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v11

    .line 115
    iget-object v5, v1, Lorg/concentus/SilkDecoderControl;->Gains_Q16:[I

    aget v5, v5, v10

    const/16 v13, 0x2f

    invoke-static {v5, v13}, Lorg/concentus/Inlines;->silk_INVERSE32_varQ(II)I

    move-result v5

    .line 118
    iget-object v13, v1, Lorg/concentus/SilkDecoderControl;->Gains_Q16:[I

    aget v13, v13, v10

    move/from16 v22, v7

    iget v7, v0, Lorg/concentus/SilkChannelDecoder;->prev_gain_Q16:I

    move/from16 v23, v8

    if-eq v13, v7, :cond_6

    .line 119
    iget v7, v0, Lorg/concentus/SilkChannelDecoder;->prev_gain_Q16:I

    iget-object v13, v1, Lorg/concentus/SilkDecoderControl;->Gains_Q16:[I

    aget v13, v13, v10

    const/16 v8, 0x10

    invoke-static {v7, v13, v8}, Lorg/concentus/Inlines;->silk_DIV32_varQ(III)I

    move-result v7

    const/4 v13, 0x0

    :goto_5
    if-ge v13, v8, :cond_7

    .line 123
    aget v8, v12, v13

    invoke-static {v7, v8}, Lorg/concentus/Inlines;->silk_SMULWW(II)I

    move-result v8

    aput v8, v12, v13

    add-int/lit8 v13, v13, 0x1

    const/16 v8, 0x10

    goto :goto_5

    :cond_6
    const/high16 v7, 0x10000

    :cond_7
    if-eqz v5, :cond_8

    const/4 v8, 0x1

    goto :goto_6

    :cond_8
    const/4 v8, 0x0

    .line 130
    :goto_6
    invoke-static {v8}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    .line 131
    iget-object v8, v1, Lorg/concentus/SilkDecoderControl;->Gains_Q16:[I

    aget v8, v8, v10

    iput v8, v0, Lorg/concentus/SilkChannelDecoder;->prev_gain_Q16:I

    .line 134
    iget v8, v0, Lorg/concentus/SilkChannelDecoder;->lossCnt:I

    const/4 v13, 0x5

    move-object/from16 v25, v12

    const/4 v12, 0x2

    if-eqz v8, :cond_9

    iget v8, v0, Lorg/concentus/SilkChannelDecoder;->prevSignalType:I

    if-ne v8, v12, :cond_9

    iget-object v8, v0, Lorg/concentus/SilkChannelDecoder;->indices:Lorg/concentus/SideInfoIndices;

    iget-byte v8, v8, Lorg/concentus/SideInfoIndices;->signalType:B

    if-eq v8, v12, :cond_9

    if-ge v10, v12, :cond_9

    const/4 v8, 0x0

    .line 137
    invoke-static {v3, v8, v9, v13}, Lorg/concentus/Arrays;->MemSetWithOffset([SSII)V

    add-int/lit8 v8, v9, 0x2

    const/16 v23, 0x1000

    .line 138
    aput-short v23, v3, v8

    .line 141
    iget-object v8, v1, Lorg/concentus/SilkDecoderControl;->pitchL:[I

    iget v13, v0, Lorg/concentus/SilkChannelDecoder;->lagPrev:I

    aput v13, v8, v10

    move v13, v12

    goto :goto_7

    :cond_9
    move/from16 v13, v23

    :goto_7
    if-ne v13, v12, :cond_11

    .line 146
    iget-object v8, v1, Lorg/concentus/SilkDecoderControl;->pitchL:[I

    aget v22, v8, v10

    if-eqz v10, :cond_c

    if-ne v10, v12, :cond_a

    if-eqz v16, :cond_a

    goto :goto_9

    :cond_a
    const/high16 v5, 0x10000

    if-eq v7, v5, :cond_b

    const/4 v5, 0x0

    :goto_8
    add-int/lit8 v8, v22, 0x2

    if-ge v5, v8, :cond_b

    sub-int v8, v6, v5

    const/16 v17, 0x1

    add-int/lit8 v8, v8, -0x1

    .line 171
    aget v12, v15, v8

    invoke-static {v7, v12}, Lorg/concentus/Inlines;->silk_SMULWW(II)I

    move-result v12

    aput v12, v15, v8

    add-int/lit8 v5, v5, 0x1

    const/4 v12, 0x2

    goto :goto_8

    :cond_b
    move/from16 v23, v9

    move/from16 v30, v10

    move/from16 v24, v11

    move v2, v12

    move/from16 v31, v13

    move-object/from16 v26, v14

    const/16 v21, 0x5

    goto/16 :goto_d

    .line 151
    :cond_c
    :goto_9
    iget v7, v0, Lorg/concentus/SilkChannelDecoder;->ltp_mem_length:I

    sub-int v7, v7, v22

    iget v8, v0, Lorg/concentus/SilkChannelDecoder;->LPC_order:I

    sub-int/2addr v7, v8

    const/4 v12, 0x2

    add-int/lit8 v8, v7, -0x2

    if-lez v8, :cond_d

    const/4 v7, 0x1

    goto :goto_a

    :cond_d
    const/4 v7, 0x0

    .line 152
    :goto_a
    invoke-static {v7}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    if-ne v10, v12, :cond_e

    .line 155
    iget-object v7, v0, Lorg/concentus/SilkChannelDecoder;->outBuf:[S

    move/from16 v23, v9

    iget v9, v0, Lorg/concentus/SilkChannelDecoder;->ltp_mem_length:I

    move/from16 v24, v11

    iget v11, v0, Lorg/concentus/SilkChannelDecoder;->subfr_length:I

    mul-int/2addr v11, v12

    move/from16 v12, p3

    invoke-static {v2, v12, v7, v9, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_b

    :cond_e
    move/from16 v12, p3

    move/from16 v23, v9

    move/from16 v24, v11

    .line 158
    :goto_b
    iget-object v9, v0, Lorg/concentus/SilkChannelDecoder;->outBuf:[S

    iget v7, v0, Lorg/concentus/SilkChannelDecoder;->subfr_length:I

    mul-int/2addr v7, v10

    add-int v11, v8, v7

    iget v7, v0, Lorg/concentus/SilkChannelDecoder;->ltp_mem_length:I

    sub-int v27, v7, v8

    iget v7, v0, Lorg/concentus/SilkChannelDecoder;->LPC_order:I

    const/16 v28, 0x0

    move/from16 v29, v7

    move-object v7, v4

    const/16 v21, 0x10

    move/from16 v30, v10

    move v10, v11

    const/4 v2, 0x4

    move-object/from16 v11, v20

    const/4 v2, 0x2

    move/from16 v12, v28

    move/from16 v31, v13

    const/16 v21, 0x5

    move/from16 v13, v27

    move-object/from16 v26, v14

    move/from16 v14, v29

    invoke-static/range {v7 .. v14}, Lorg/concentus/Filters;->silk_LPC_analysis_filter([SI[SI[SIII)V

    if-nez v30, :cond_f

    .line 164
    iget v7, v1, Lorg/concentus/SilkDecoderControl;->LTP_scale_Q14:I

    invoke-static {v5, v7}, Lorg/concentus/Inlines;->silk_SMULWB(II)I

    move-result v5

    invoke-static {v5, v2}, Lorg/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v5

    :cond_f
    const/4 v7, 0x0

    :goto_c
    add-int/lit8 v8, v22, 0x2

    if-ge v7, v8, :cond_10

    sub-int v8, v6, v7

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    .line 167
    iget v10, v0, Lorg/concentus/SilkChannelDecoder;->ltp_mem_length:I

    sub-int/2addr v10, v7

    sub-int/2addr v10, v9

    aget-short v9, v4, v10

    invoke-static {v5, v9}, Lorg/concentus/Inlines;->silk_SMULWB(II)I

    move-result v9

    aput v9, v15, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    :cond_10
    :goto_d
    move/from16 v7, v22

    move/from16 v12, v31

    goto :goto_e

    :cond_11
    move/from16 v23, v9

    move/from16 v30, v10

    move/from16 v24, v11

    move v2, v12

    move-object/from16 v26, v14

    const/16 v21, 0x5

    move v12, v13

    move/from16 v7, v22

    :goto_e
    if-ne v12, v2, :cond_13

    sub-int v5, v6, v7

    add-int/2addr v5, v2

    const/4 v8, 0x0

    .line 180
    :goto_f
    iget v9, v0, Lorg/concentus/SilkChannelDecoder;->subfr_length:I

    if-ge v8, v9, :cond_12

    .line 184
    aget v9, v15, v5

    aget-short v10, v3, v23

    invoke-static {v2, v9, v10}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v9

    add-int/lit8 v10, v5, -0x1

    .line 185
    aget v10, v15, v10

    add-int/lit8 v11, v23, 0x1

    aget-short v11, v3, v11

    invoke-static {v9, v10, v11}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v9

    add-int/lit8 v10, v5, -0x2

    .line 186
    aget v10, v15, v10

    add-int/lit8 v11, v23, 0x2

    aget-short v11, v3, v11

    invoke-static {v9, v10, v11}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v9

    add-int/lit8 v10, v5, -0x3

    .line 187
    aget v10, v15, v10

    add-int/lit8 v11, v23, 0x3

    aget-short v11, v3, v11

    invoke-static {v9, v10, v11}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v9

    add-int/lit8 v10, v5, -0x4

    .line 188
    aget v10, v15, v10

    add-int/lit8 v11, v23, 0x4

    aget-short v11, v3, v11

    invoke-static {v9, v10, v11}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v9

    const/4 v10, 0x1

    add-int/2addr v5, v10

    .line 192
    iget-object v11, v0, Lorg/concentus/SilkChannelDecoder;->exc_Q14:[I

    add-int v12, v18, v8

    aget v11, v11, v12

    invoke-static {v11, v9, v10}, Lorg/concentus/Inlines;->silk_ADD_LSHIFT32(III)I

    move-result v9

    aput v9, v26, v8

    .line 195
    invoke-static {v9, v10}, Lorg/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v9

    aput v9, v15, v6

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_f

    :cond_12
    move-object/from16 v14, v26

    const/4 v5, 0x0

    goto :goto_10

    .line 199
    :cond_13
    iget-object v14, v0, Lorg/concentus/SilkChannelDecoder;->exc_Q14:[I

    move/from16 v5, v18

    :goto_10
    const/4 v8, 0x0

    .line 203
    :goto_11
    iget v9, v0, Lorg/concentus/SilkChannelDecoder;->subfr_length:I

    if-ge v8, v9, :cond_17

    .line 205
    iget v9, v0, Lorg/concentus/SilkChannelDecoder;->LPC_order:I

    const/16 v10, 0xa

    if-eq v9, v10, :cond_15

    iget v9, v0, Lorg/concentus/SilkChannelDecoder;->LPC_order:I

    const/16 v11, 0x10

    if-ne v9, v11, :cond_14

    goto :goto_12

    :cond_14
    const/4 v9, 0x0

    goto :goto_13

    :cond_15
    const/16 v11, 0x10

    :goto_12
    const/4 v9, 0x1

    :goto_13
    invoke-static {v9}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    .line 207
    iget v9, v0, Lorg/concentus/SilkChannelDecoder;->LPC_order:I

    const/4 v12, 0x1

    invoke-static {v9, v12}, Lorg/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v9

    add-int/lit8 v13, v8, 0x10

    add-int/lit8 v17, v8, 0xf

    .line 208
    aget v10, v25, v17

    const/16 v17, 0x0

    aget-short v11, v20, v17

    invoke-static {v9, v10, v11}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v9

    add-int/lit8 v10, v8, 0xe

    .line 209
    aget v10, v25, v10

    aget-short v11, v20, v12

    invoke-static {v9, v10, v11}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v9

    add-int/lit8 v10, v8, 0xd

    .line 210
    aget v10, v25, v10

    aget-short v11, v20, v2

    invoke-static {v9, v10, v11}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v9

    add-int/lit8 v10, v8, 0xc

    .line 211
    aget v10, v25, v10

    const/4 v11, 0x3

    aget-short v11, v20, v11

    invoke-static {v9, v10, v11}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v9

    add-int/lit8 v10, v8, 0xb

    .line 212
    aget v10, v25, v10

    const/4 v11, 0x4

    aget-short v2, v20, v11

    invoke-static {v9, v10, v2}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v2

    add-int/lit8 v9, v8, 0xa

    .line 213
    aget v9, v25, v9

    aget-short v10, v20, v21

    invoke-static {v2, v9, v10}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v2

    add-int/lit8 v9, v8, 0x9

    .line 214
    aget v9, v25, v9

    const/4 v10, 0x6

    aget-short v11, v20, v10

    invoke-static {v2, v9, v11}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v2

    add-int/lit8 v9, v8, 0x8

    .line 215
    aget v9, v25, v9

    const/4 v11, 0x7

    aget-short v11, v20, v11

    invoke-static {v2, v9, v11}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v2

    add-int/lit8 v9, v8, 0x7

    .line 216
    aget v9, v25, v9

    const/16 v11, 0x8

    aget-short v10, v20, v11

    invoke-static {v2, v9, v10}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v2

    add-int/lit8 v9, v8, 0x6

    .line 217
    aget v9, v25, v9

    const/16 v10, 0x9

    aget-short v10, v20, v10

    invoke-static {v2, v9, v10}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v2

    .line 218
    iget v9, v0, Lorg/concentus/SilkChannelDecoder;->LPC_order:I

    const/16 v10, 0x10

    if-ne v9, v10, :cond_16

    add-int/lit8 v9, v8, 0x5

    .line 219
    aget v9, v25, v9

    const/16 v10, 0xa

    aget-short v10, v20, v10

    invoke-static {v2, v9, v10}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v2

    add-int/lit8 v9, v8, 0x4

    .line 220
    aget v9, v25, v9

    const/16 v10, 0xb

    aget-short v10, v20, v10

    invoke-static {v2, v9, v10}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v2

    add-int/lit8 v9, v8, 0x3

    .line 221
    aget v9, v25, v9

    const/16 v10, 0xc

    aget-short v10, v20, v10

    invoke-static {v2, v9, v10}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v2

    add-int/lit8 v9, v8, 0x2

    .line 222
    aget v9, v25, v9

    const/16 v10, 0xd

    aget-short v10, v20, v10

    invoke-static {v2, v9, v10}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v2

    add-int/lit8 v9, v8, 0x1

    .line 223
    aget v9, v25, v9

    const/16 v10, 0xe

    aget-short v12, v20, v10

    invoke-static {v2, v9, v12}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v2

    .line 224
    aget v9, v25, v8

    const/16 v12, 0xf

    aget-short v12, v20, v12

    invoke-static {v2, v9, v12}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v2

    goto :goto_14

    :cond_16
    const/16 v10, 0xe

    :goto_14
    add-int v9, v5, v8

    .line 228
    aget v9, v14, v9

    const/4 v12, 0x4

    invoke-static {v9, v2, v12}, Lorg/concentus/Inlines;->silk_ADD_LSHIFT32(III)I

    move-result v2

    aput v2, v25, v13

    add-int v9, v19, v8

    move/from16 v13, v24

    .line 231
    invoke-static {v2, v13}, Lorg/concentus/Inlines;->silk_SMULWW(II)I

    move-result v2

    invoke-static {v2, v11}, Lorg/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v2

    invoke-static {v2}, Lorg/concentus/Inlines;->silk_SAT16(I)I

    move-result v2

    int-to-short v2, v2

    move v11, v13

    aput-short v2, p2, v9

    add-int/lit8 v8, v8, 0x1

    move/from16 v24, v11

    const/4 v2, 0x2

    goto/16 :goto_11

    :cond_17
    const/16 v10, 0xe

    const/4 v12, 0x4

    .line 237
    iget v2, v0, Lorg/concentus/SilkChannelDecoder;->subfr_length:I

    move-object/from16 v5, v25

    const/16 v8, 0x10

    const/4 v9, 0x0

    invoke-static {v5, v2, v5, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 238
    iget v2, v0, Lorg/concentus/SilkChannelDecoder;->subfr_length:I

    add-int v18, v18, v2

    .line 239
    iget v2, v0, Lorg/concentus/SilkChannelDecoder;->subfr_length:I

    add-int v19, v19, v2

    add-int/lit8 v2, v30, 0x1

    move v13, v8

    move v11, v12

    move-object/from16 v14, v26

    move-object v12, v5

    move v5, v10

    move v10, v2

    move-object/from16 v2, p2

    goto/16 :goto_4

    :cond_18
    move-object v5, v12

    move v8, v13

    const/4 v9, 0x0

    .line 243
    iget-object v0, v0, Lorg/concentus/SilkChannelDecoder;->sLPC_Q14_buf:[I

    invoke-static {v5, v9, v0, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
