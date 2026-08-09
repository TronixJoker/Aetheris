.class Lorg/concentus/NoiseShapeAnalysis;
.super Ljava/lang/Object;
.source "NoiseShapeAnalysis.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static limit_warped_coefs([I[IIII)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p2

    move/from16 v4, p4

    neg-int v3, v3

    add-int/lit8 v5, v4, -0x1

    move v6, v5

    :goto_0
    if-lez v6, :cond_0

    add-int/lit8 v7, v6, -0x1

    .line 73
    aget v8, v0, v7

    aget v9, v0, v6

    invoke-static {v8, v9, v3}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v8

    aput v8, v0, v7

    .line 74
    aget v8, v1, v7

    aget v9, v1, v6

    invoke-static {v8, v9, v3}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v8

    aput v8, v1, v7

    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    :cond_0
    neg-int v3, v3

    neg-int v6, v3

    const/high16 v7, 0x10000

    .line 77
    invoke-static {v7, v6, v3}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v6

    const/4 v8, 0x0

    .line 78
    aget v9, v0, v8

    const/high16 v10, 0x1000000

    invoke-static {v10, v9, v3}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v9

    const/16 v11, 0x18

    .line 79
    invoke-static {v6, v9, v11}, Lorg/concentus/Inlines;->silk_DIV32_varQ(III)I

    move-result v9

    .line 80
    aget v12, v1, v8

    invoke-static {v10, v12, v3}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v12

    .line 81
    invoke-static {v6, v12, v11}, Lorg/concentus/Inlines;->silk_DIV32_varQ(III)I

    move-result v6

    move v12, v8

    :goto_1
    if-ge v12, v4, :cond_1

    .line 83
    aget v13, v0, v12

    invoke-static {v9, v13}, Lorg/concentus/Inlines;->silk_SMULWW(II)I

    move-result v13

    aput v13, v0, v12

    .line 84
    aget v13, v1, v12

    invoke-static {v6, v13}, Lorg/concentus/Inlines;->silk_SMULWW(II)I

    move-result v13

    aput v13, v1, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_1
    move v12, v8

    move v13, v12

    :goto_2
    const/16 v14, 0xa

    if-ge v12, v14, :cond_9

    const/4 v14, -0x1

    move v15, v8

    :goto_3
    if-ge v15, v4, :cond_3

    .line 91
    aget v16, v0, v15

    invoke-static/range {v16 .. v16}, Lorg/concentus/Inlines;->silk_abs_int32(I)I

    move-result v11

    aget v16, v1, v15

    invoke-static/range {v16 .. v16}, Lorg/concentus/Inlines;->silk_abs_int32(I)I

    move-result v10

    invoke-static {v11, v10}, Lorg/concentus/Inlines;->silk_max(II)I

    move-result v10

    if-le v10, v14, :cond_2

    move v14, v10

    move v13, v15

    :cond_2
    add-int/lit8 v15, v15, 0x1

    const/high16 v10, 0x1000000

    const/16 v11, 0x18

    goto :goto_3

    :cond_3
    if-gt v14, v2, :cond_4

    return-void

    :cond_4
    const/4 v10, 0x1

    :goto_4
    if-ge v10, v4, :cond_5

    add-int/lit8 v11, v10, -0x1

    .line 104
    aget v15, v0, v11

    aget v8, v0, v10

    invoke-static {v15, v8, v3}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v8

    aput v8, v0, v11

    .line 105
    aget v8, v1, v11

    aget v15, v1, v10

    invoke-static {v8, v15, v3}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v8

    aput v8, v1, v11

    add-int/lit8 v10, v10, 0x1

    const/4 v8, 0x0

    goto :goto_4

    :cond_5
    const/16 v8, 0x20

    .line 107
    invoke-static {v9, v8}, Lorg/concentus/Inlines;->silk_INVERSE32_varQ(II)I

    move-result v9

    .line 108
    invoke-static {v6, v8}, Lorg/concentus/Inlines;->silk_INVERSE32_varQ(II)I

    move-result v6

    const/4 v8, 0x0

    :goto_5
    if-ge v8, v4, :cond_6

    .line 110
    aget v10, v0, v8

    invoke-static {v9, v10}, Lorg/concentus/Inlines;->silk_SMULWW(II)I

    move-result v10

    aput v10, v0, v8

    .line 111
    aget v10, v1, v8

    invoke-static {v6, v10}, Lorg/concentus/Inlines;->silk_SMULWW(II)I

    move-result v10

    aput v10, v1, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_6
    sub-int v6, v14, v2

    const/16 v8, 0x333

    const/16 v9, 0x66

    .line 116
    invoke-static {v8, v9, v12}, Lorg/concentus/Inlines;->silk_SMLABB(III)I

    move-result v8

    invoke-static {v6, v8}, Lorg/concentus/Inlines;->silk_SMULWB(II)I

    move-result v6

    add-int/lit8 v8, v13, 0x1

    .line 117
    invoke-static {v14, v8}, Lorg/concentus/Inlines;->silk_MUL(II)I

    move-result v8

    const/16 v9, 0x16

    .line 115
    invoke-static {v6, v8, v9}, Lorg/concentus/Inlines;->silk_DIV32_varQ(III)I

    move-result v6

    const v8, 0xfd71

    sub-int/2addr v8, v6

    .line 118
    invoke-static {v0, v4, v8}, Lorg/concentus/BWExpander;->silk_bwexpander_32([III)V

    .line 119
    invoke-static {v1, v4, v8}, Lorg/concentus/BWExpander;->silk_bwexpander_32([III)V

    neg-int v3, v3

    move v6, v5

    :goto_6
    if-lez v6, :cond_7

    add-int/lit8 v8, v6, -0x1

    .line 124
    aget v9, v0, v8

    aget v10, v0, v6

    invoke-static {v9, v10, v3}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v9

    aput v9, v0, v8

    .line 125
    aget v9, v1, v8

    aget v10, v1, v6

    invoke-static {v9, v10, v3}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v9

    aput v9, v1, v8

    add-int/lit8 v6, v6, -0x1

    goto :goto_6

    :cond_7
    neg-int v3, v3

    neg-int v6, v3

    .line 128
    invoke-static {v7, v6, v3}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v6

    const/4 v8, 0x0

    .line 129
    aget v9, v0, v8

    const/high16 v10, 0x1000000

    invoke-static {v10, v9, v3}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v9

    const/16 v11, 0x18

    .line 130
    invoke-static {v6, v9, v11}, Lorg/concentus/Inlines;->silk_DIV32_varQ(III)I

    move-result v9

    .line 131
    aget v14, v1, v8

    invoke-static {v10, v14, v3}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v8

    .line 132
    invoke-static {v6, v8, v11}, Lorg/concentus/Inlines;->silk_DIV32_varQ(III)I

    move-result v6

    const/4 v8, 0x0

    :goto_7
    if-ge v8, v4, :cond_8

    .line 134
    aget v14, v0, v8

    invoke-static {v9, v14}, Lorg/concentus/Inlines;->silk_SMULWW(II)I

    move-result v14

    aput v14, v0, v8

    .line 135
    aget v14, v1, v8

    invoke-static {v6, v14}, Lorg/concentus/Inlines;->silk_SMULWW(II)I

    move-result v14

    aput v14, v1, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_8
    add-int/lit8 v12, v12, 0x1

    const/4 v8, 0x0

    goto/16 :goto_2

    :cond_9
    move v3, v8

    .line 138
    invoke-static {v3}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    return-void
.end method

.method static silk_noise_shape_analysis(Lorg/concentus/SilkChannelEncoder;Lorg/concentus/SilkEncoderControl;[SI[SI)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 156
    iget-object v2, v0, Lorg/concentus/SilkChannelEncoder;->sShape:Lorg/concentus/SilkShapeState;

    const/16 v3, 0x11

    .line 161
    new-array v3, v3, [I

    const/16 v10, 0x10

    .line 162
    new-array v11, v10, [I

    .line 163
    new-array v12, v10, [I

    .line 164
    new-array v13, v10, [I

    .line 170
    iget v4, v0, Lorg/concentus/SilkChannelEncoder;->la_shape:I

    sub-int v4, p5, v4

    .line 179
    iget v5, v0, Lorg/concentus/SilkChannelEncoder;->SNR_dB_Q7:I

    .line 182
    iget-object v6, v0, Lorg/concentus/SilkChannelEncoder;->input_quality_bands_Q15:[I

    const/4 v14, 0x0

    aget v6, v6, v14

    iget-object v7, v0, Lorg/concentus/SilkChannelEncoder;->input_quality_bands_Q15:[I

    const/4 v15, 0x1

    aget v7, v7, v15

    add-int/2addr v6, v7

    const/4 v9, 0x2

    invoke-static {v6, v9}, Lorg/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v6

    iput v6, v1, Lorg/concentus/SilkEncoderControl;->input_quality_Q14:I

    add-int/lit16 v6, v5, -0xa00

    const/4 v8, 0x4

    .line 186
    invoke-static {v6, v8}, Lorg/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v6

    invoke-static {v6}, Lorg/concentus/Sigmoid;->silk_sigm_Q15(I)I

    move-result v6

    invoke-static {v6, v15}, Lorg/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v6

    iput v6, v1, Lorg/concentus/SilkEncoderControl;->coding_quality_Q14:I

    .line 190
    iget v6, v0, Lorg/concentus/SilkChannelEncoder;->useCBR:I

    const/16 v7, 0x8

    const/16 v10, 0x100

    if-nez v6, :cond_0

    .line 191
    iget v6, v0, Lorg/concentus/SilkChannelEncoder;->speech_activity_Q8:I

    rsub-int v6, v6, 0x100

    .line 192
    invoke-static {v6, v7}, Lorg/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v8

    invoke-static {v8, v6}, Lorg/concentus/Inlines;->silk_SMULWB(II)I

    move-result v6

    const/4 v8, -0x8

    .line 194
    invoke-static {v8, v6}, Lorg/concentus/Inlines;->silk_SMULBB(II)I

    move-result v6

    iget v8, v1, Lorg/concentus/SilkEncoderControl;->input_quality_Q14:I

    add-int/lit16 v8, v8, 0x4000

    iget v7, v1, Lorg/concentus/SilkEncoderControl;->coding_quality_Q14:I

    .line 195
    invoke-static {v8, v7}, Lorg/concentus/Inlines;->silk_SMULWB(II)I

    move-result v7

    .line 193
    invoke-static {v5, v6, v7}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v5

    .line 199
    :cond_0
    iget-object v6, v0, Lorg/concentus/SilkChannelEncoder;->indices:Lorg/concentus/SideInfoIndices;

    iget-byte v6, v6, Lorg/concentus/SideInfoIndices;->signalType:B

    if-ne v6, v9, :cond_1

    const/16 v6, 0x200

    .line 201
    iget v7, v0, Lorg/concentus/SilkChannelEncoder;->LTPCorr_Q15:I

    invoke-static {v5, v6, v7}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v5

    goto :goto_0

    :cond_1
    const v6, -0x1999a

    .line 204
    iget v7, v0, Lorg/concentus/SilkChannelEncoder;->SNR_dB_Q7:I

    const/16 v8, 0xc00

    .line 205
    invoke-static {v8, v6, v7}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v6

    iget v7, v1, Lorg/concentus/SilkEncoderControl;->input_quality_Q14:I

    rsub-int v7, v7, 0x4000

    .line 204
    invoke-static {v5, v6, v7}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v5

    .line 217
    :goto_0
    iget-object v6, v0, Lorg/concentus/SilkChannelEncoder;->indices:Lorg/concentus/SideInfoIndices;

    iget-byte v6, v6, Lorg/concentus/SideInfoIndices;->signalType:B

    if-ne v6, v9, :cond_2

    .line 219
    iget-object v6, v0, Lorg/concentus/SilkChannelEncoder;->indices:Lorg/concentus/SideInfoIndices;

    iput-byte v14, v6, Lorg/concentus/SideInfoIndices;->quantOffsetType:B

    .line 220
    iput v14, v1, Lorg/concentus/SilkEncoderControl;->sparseness_Q8:I

    move/from16 v21, v4

    move v10, v5

    const/high16 v7, 0x10000

    const/16 v9, 0x199a

    goto/16 :goto_3

    .line 223
    :cond_2
    iget v6, v0, Lorg/concentus/SilkChannelEncoder;->fs_kHz:I

    invoke-static {v6, v15}, Lorg/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v6

    .line 227
    new-instance v10, Lorg/concentus/BoxedValueInt;

    invoke-direct {v10, v14}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    .line 228
    new-instance v7, Lorg/concentus/BoxedValueInt;

    invoke-direct {v7, v14}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    move/from16 v15, p3

    move v8, v14

    move/from16 v18, v8

    move/from16 v19, v18

    :goto_1
    const/4 v9, 0x5

    move/from16 v21, v4

    .line 229
    iget v4, v0, Lorg/concentus/SilkChannelEncoder;->nb_subfr:I

    invoke-static {v9, v4}, Lorg/concentus/Inlines;->silk_SMULBB(II)I

    move-result v4

    const/4 v9, 0x2

    div-int/2addr v4, v9

    if-ge v14, v4, :cond_4

    move-object/from16 v4, p2

    .line 230
    invoke-static {v10, v7, v4, v15, v6}, Lorg/concentus/SumSqrShift;->silk_sum_sqr_shift(Lorg/concentus/BoxedValueInt;Lorg/concentus/BoxedValueInt;[SII)V

    .line 231
    iget v9, v10, Lorg/concentus/BoxedValueInt;->Val:I

    .line 232
    iget v4, v7, Lorg/concentus/BoxedValueInt;->Val:I

    .line 233
    invoke-static {v6, v4}, Lorg/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v19

    add-int v9, v9, v19

    .line 236
    invoke-static {v9}, Lorg/concentus/Inlines;->silk_lin2log(I)I

    move-result v9

    if-lez v14, :cond_3

    sub-int v18, v9, v18

    .line 238
    invoke-static/range {v18 .. v18}, Lorg/concentus/Inlines;->silk_abs(I)I

    move-result v18

    add-int v8, v8, v18

    :cond_3
    add-int/2addr v15, v6

    add-int/lit8 v14, v14, 0x1

    move/from16 v19, v4

    move/from16 v18, v9

    move/from16 v4, v21

    goto :goto_1

    :cond_4
    add-int/lit16 v8, v8, -0x280

    const/16 v9, 0x199a

    .line 244
    invoke-static {v8, v9}, Lorg/concentus/Inlines;->silk_SMULWB(II)I

    move-result v4

    invoke-static {v4}, Lorg/concentus/Sigmoid;->silk_sigm_Q15(I)I

    move-result v4

    const/4 v6, 0x7

    invoke-static {v4, v6}, Lorg/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v4

    iput v4, v1, Lorg/concentus/SilkEncoderControl;->sparseness_Q8:I

    .line 248
    iget v4, v1, Lorg/concentus/SilkEncoderControl;->sparseness_Q8:I

    const/16 v6, 0xc0

    if-le v4, v6, :cond_5

    .line 249
    iget-object v4, v0, Lorg/concentus/SilkChannelEncoder;->indices:Lorg/concentus/SideInfoIndices;

    const/4 v6, 0x0

    iput-byte v6, v4, Lorg/concentus/SideInfoIndices;->quantOffsetType:B

    goto :goto_2

    .line 251
    :cond_5
    iget-object v4, v0, Lorg/concentus/SilkChannelEncoder;->indices:Lorg/concentus/SideInfoIndices;

    const/4 v6, 0x1

    iput-byte v6, v4, Lorg/concentus/SideInfoIndices;->quantOffsetType:B

    .line 255
    :goto_2
    iget v4, v1, Lorg/concentus/SilkEncoderControl;->sparseness_Q8:I

    add-int/lit8 v4, v4, -0x80

    const/high16 v7, 0x10000

    invoke-static {v5, v7, v4}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v5

    move v10, v5

    move/from16 v14, v19

    .line 266
    :goto_3
    iget v4, v1, Lorg/concentus/SilkEncoderControl;->predGain_Q16:I

    const/16 v5, 0x42

    invoke-static {v4, v5}, Lorg/concentus/Inlines;->silk_SMULWB(II)I

    move-result v4

    const v5, 0xf333

    .line 268
    invoke-static {v7, v4, v4}, Lorg/concentus/Inlines;->silk_SMLAWW(III)I

    move-result v4

    const/16 v6, 0x10

    .line 267
    invoke-static {v5, v4, v6}, Lorg/concentus/Inlines;->silk_DIV32_varQ(III)I

    move-result v4

    .line 269
    iget v5, v1, Lorg/concentus/SilkEncoderControl;->coding_quality_Q14:I

    const/4 v15, 0x3

    invoke-static {v15, v5}, Lorg/concentus/Inlines;->silk_SMULBB(II)I

    move-result v5

    sub-int v5, v7, v5

    const/16 v6, 0x28f

    invoke-static {v5, v6}, Lorg/concentus/Inlines;->silk_SMULWB(II)I

    move-result v5

    .line 271
    invoke-static {v4, v5}, Lorg/concentus/Inlines;->silk_SUB32(II)I

    move-result v6

    .line 272
    invoke-static {v4, v5}, Lorg/concentus/Inlines;->silk_ADD32(II)I

    move-result v8

    const/16 v5, 0xe

    .line 274
    invoke-static {v6, v5}, Lorg/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v4

    const/4 v6, 0x2

    invoke-static {v8, v6}, Lorg/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v5

    invoke-static {v4, v5}, Lorg/concentus/Inlines;->silk_DIV32_16(II)I

    move-result v5

    .line 276
    iget v4, v0, Lorg/concentus/SilkChannelEncoder;->warping_Q16:I

    if-lez v4, :cond_6

    .line 278
    iget v4, v0, Lorg/concentus/SilkChannelEncoder;->warping_Q16:I

    iget v6, v1, Lorg/concentus/SilkEncoderControl;->coding_quality_Q14:I

    const/16 v7, 0xa3d

    invoke-static {v4, v6, v7}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v4

    move v6, v4

    goto :goto_4

    :cond_6
    const/4 v6, 0x0

    .line 290
    :goto_4
    iget v4, v0, Lorg/concentus/SilkChannelEncoder;->shapeWinLength:I

    new-array v7, v4, [S

    move/from16 v4, v21

    const/4 v15, 0x0

    .line 291
    :goto_5
    iget v9, v0, Lorg/concentus/SilkChannelEncoder;->nb_subfr:I

    if-ge v15, v9, :cond_11

    .line 294
    iget v9, v0, Lorg/concentus/SilkChannelEncoder;->fs_kHz:I

    const/16 v18, 0x3

    mul-int/lit8 v9, v9, 0x3

    move/from16 v18, v5

    .line 295
    iget v5, v0, Lorg/concentus/SilkChannelEncoder;->shapeWinLength:I

    sub-int/2addr v5, v9

    move/from16 v19, v6

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lorg/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v5

    const/16 v23, 0x0

    const/16 v26, 0x1

    move-object/from16 v22, v7

    move-object/from16 v24, p4

    move/from16 v25, v4

    move/from16 v27, v5

    .line 297
    invoke-static/range {v22 .. v27}, Lorg/concentus/ApplySineWindow;->silk_apply_sine_window([SI[SIII)V

    add-int v6, v4, v5

    move-object/from16 v21, v2

    move-object/from16 v2, p4

    .line 299
    invoke-static {v2, v6, v7, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v23, v5, v9

    add-int v25, v4, v23

    const/16 v26, 0x2

    .line 301
    invoke-static/range {v22 .. v27}, Lorg/concentus/ApplySineWindow;->silk_apply_sine_window([SI[SIII)V

    .line 304
    iget v5, v0, Lorg/concentus/SilkChannelEncoder;->subfr_length:I

    add-int v22, v4, v5

    .line 305
    new-instance v9, Lorg/concentus/BoxedValueInt;

    invoke-direct {v9, v14}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    .line 306
    iget v4, v0, Lorg/concentus/SilkChannelEncoder;->warping_Q16:I

    if-lez v4, :cond_7

    .line 308
    iget v14, v0, Lorg/concentus/SilkChannelEncoder;->shapeWinLength:I

    iget v6, v0, Lorg/concentus/SilkChannelEncoder;->shapingLPCOrder:I

    move-object v4, v3

    move/from16 v2, v18

    move/from16 v18, v10

    const/16 v10, 0xe

    move-object v5, v9

    move/from16 p2, v19

    const/16 v20, 0x2

    move/from16 v19, v6

    move-object v6, v7

    move-object v10, v7

    move/from16 v7, p2

    move/from16 v16, v2

    move v2, v8

    move-object/from16 v17, v12

    const/4 v12, 0x4

    move v8, v14

    move-object v14, v9

    move/from16 v9, v19

    invoke-static/range {v4 .. v9}, Lorg/concentus/Autocorrelation;->silk_warped_autocorrelation([ILorg/concentus/BoxedValueInt;[SIII)V

    const/4 v6, 0x1

    goto :goto_6

    :cond_7
    move v2, v8

    move-object v14, v9

    move-object/from16 v17, v12

    move/from16 v16, v18

    move/from16 p2, v19

    const/4 v12, 0x4

    move/from16 v18, v10

    move-object v10, v7

    .line 311
    iget v4, v0, Lorg/concentus/SilkChannelEncoder;->shapeWinLength:I

    iget v5, v0, Lorg/concentus/SilkChannelEncoder;->shapingLPCOrder:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    invoke-static {v3, v14, v10, v4, v5}, Lorg/concentus/Autocorrelation;->silk_autocorr([ILorg/concentus/BoxedValueInt;[SII)V

    .line 313
    :goto_6
    iget v14, v14, Lorg/concentus/BoxedValueInt;->Val:I

    const/4 v4, 0x0

    .line 316
    aget v5, v3, v4

    invoke-static {v5, v12}, Lorg/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v7

    const/16 v8, 0x34

    invoke-static {v7, v8}, Lorg/concentus/Inlines;->silk_SMULWB(II)I

    move-result v7

    invoke-static {v7, v6}, Lorg/concentus/Inlines;->silk_max_32(II)I

    move-result v7

    invoke-static {v5, v7}, Lorg/concentus/Inlines;->silk_ADD32(II)I

    move-result v5

    aput v5, v3, v4

    .line 320
    iget v4, v0, Lorg/concentus/SilkChannelEncoder;->shapingLPCOrder:I

    invoke-static {v11, v3, v4}, Lorg/concentus/Schur;->silk_schur64([I[II)I

    move-result v4

    if-ltz v4, :cond_8

    const/4 v5, 0x1

    goto :goto_7

    :cond_8
    const/4 v5, 0x0

    .line 321
    :goto_7
    invoke-static {v5}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    .line 324
    iget v5, v0, Lorg/concentus/SilkChannelEncoder;->shapingLPCOrder:I

    invoke-static {v13, v11, v5}, Lorg/concentus/K2A;->silk_k2a_Q16([I[II)V

    neg-int v5, v14

    const/16 v6, -0xc

    if-lt v5, v6, :cond_9

    const/4 v6, 0x1

    goto :goto_8

    :cond_9
    const/4 v6, 0x0

    .line 328
    :goto_8
    invoke-static {v6}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    const/16 v6, 0x1e

    if-gt v5, v6, :cond_a

    const/4 v6, 0x1

    goto :goto_9

    :cond_a
    const/4 v6, 0x0

    .line 329
    :goto_9
    invoke-static {v6}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    and-int/lit8 v6, v5, 0x1

    if-eqz v6, :cond_b

    add-int/lit8 v5, v5, -0x1

    shr-int/lit8 v4, v4, 0x1

    .line 337
    :cond_b
    invoke-static {v4}, Lorg/concentus/Inlines;->silk_SQRT_APPROX(I)I

    move-result v4

    const/4 v6, 0x1

    shr-int/2addr v5, v6

    .line 341
    iget-object v6, v1, Lorg/concentus/SilkEncoderControl;->Gains_Q16:[I

    const/16 v7, 0x10

    rsub-int/lit8 v5, v5, 0x10

    invoke-static {v4, v5}, Lorg/concentus/Inlines;->silk_LSHIFT_SAT32(II)I

    move-result v4

    aput v4, v6, v15

    .line 343
    iget v4, v0, Lorg/concentus/SilkChannelEncoder;->warping_Q16:I

    if-lez v4, :cond_e

    .line 345
    iget v4, v0, Lorg/concentus/SilkChannelEncoder;->shapingLPCOrder:I

    move/from16 v5, p2

    invoke-static {v13, v5, v4}, Lorg/concentus/NoiseShapeAnalysis;->warped_gain([III)I

    move-result v4

    .line 346
    iget-object v6, v1, Lorg/concentus/SilkEncoderControl;->Gains_Q16:[I

    aget v6, v6, v15

    if-ltz v6, :cond_c

    const/4 v6, 0x1

    goto :goto_a

    :cond_c
    const/4 v6, 0x0

    :goto_a
    invoke-static {v6}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    .line 347
    iget-object v6, v1, Lorg/concentus/SilkEncoderControl;->Gains_Q16:[I

    aget v6, v6, v15

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lorg/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v6

    invoke-static {v6, v4}, Lorg/concentus/Inlines;->silk_SMULWW(II)I

    move-result v6

    const v7, 0x3fffffff    # 1.9999999f

    if-lt v6, v7, :cond_d

    .line 348
    iget-object v4, v1, Lorg/concentus/SilkEncoderControl;->Gains_Q16:[I

    const v6, 0x7fffffff

    aput v6, v4, v15

    goto :goto_b

    .line 350
    :cond_d
    iget-object v6, v1, Lorg/concentus/SilkEncoderControl;->Gains_Q16:[I

    iget-object v7, v1, Lorg/concentus/SilkEncoderControl;->Gains_Q16:[I

    aget v7, v7, v15

    invoke-static {v7, v4}, Lorg/concentus/Inlines;->silk_SMULWW(II)I

    move-result v4

    aput v4, v6, v15

    goto :goto_b

    :cond_e
    move/from16 v5, p2

    .line 355
    :goto_b
    iget v4, v0, Lorg/concentus/SilkChannelEncoder;->shapingLPCOrder:I

    invoke-static {v13, v4, v2}, Lorg/concentus/BWExpander;->silk_bwexpander_32([III)V

    .line 358
    iget v4, v0, Lorg/concentus/SilkChannelEncoder;->shapingLPCOrder:I

    move-object/from16 v6, v17

    const/4 v7, 0x0

    invoke-static {v13, v7, v6, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move/from16 v4, v16

    const/high16 v7, 0x10000

    if-gt v4, v7, :cond_f

    const/4 v8, 0x1

    goto :goto_c

    :cond_f
    const/4 v8, 0x0

    .line 361
    :goto_c
    invoke-static {v8}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    .line 362
    iget v8, v0, Lorg/concentus/SilkChannelEncoder;->shapingLPCOrder:I

    invoke-static {v6, v8, v4}, Lorg/concentus/BWExpander;->silk_bwexpander_32([III)V

    .line 365
    iget v8, v0, Lorg/concentus/SilkChannelEncoder;->shapingLPCOrder:I

    invoke-static {v13, v8}, Lorg/concentus/LPCInversePredGain;->silk_LPC_inverse_pred_gain_Q24([II)I

    move-result v8

    .line 366
    iget v9, v0, Lorg/concentus/SilkChannelEncoder;->shapingLPCOrder:I

    invoke-static {v6, v9}, Lorg/concentus/LPCInversePredGain;->silk_LPC_inverse_pred_gain_Q24([II)I

    move-result v9

    const/16 v12, 0x599a

    .line 369
    invoke-static {v8, v12}, Lorg/concentus/Inlines;->silk_SMULWB(II)I

    move-result v8

    const/4 v12, 0x1

    invoke-static {v8, v12}, Lorg/concentus/Inlines;->silk_LSHIFT32(II)I

    move-result v8

    .line 370
    iget-object v12, v1, Lorg/concentus/SilkEncoderControl;->GainsPre_Q14:[I

    const/16 v7, 0xe

    invoke-static {v8, v9, v7}, Lorg/concentus/Inlines;->silk_DIV32_varQ(III)I

    move-result v8

    add-int/lit16 v8, v8, 0x1333

    aput v8, v12, v15

    const v8, 0x3ffbe78

    .line 373
    iget v9, v0, Lorg/concentus/SilkChannelEncoder;->shapingLPCOrder:I

    invoke-static {v13, v6, v5, v8, v9}, Lorg/concentus/NoiseShapeAnalysis;->limit_warped_coefs([I[IIII)V

    const/4 v8, 0x0

    .line 376
    :goto_d
    iget v9, v0, Lorg/concentus/SilkChannelEncoder;->shapingLPCOrder:I

    if-ge v8, v9, :cond_10

    .line 377
    iget-object v9, v1, Lorg/concentus/SilkEncoderControl;->AR1_Q13:[S

    mul-int/lit8 v12, v15, 0x10

    add-int/2addr v12, v8

    aget v7, v6, v8

    move/from16 v16, v2

    const/16 v2, 0xb

    invoke-static {v7, v2}, Lorg/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v7

    invoke-static {v7}, Lorg/concentus/Inlines;->silk_SAT16(I)I

    move-result v7

    int-to-short v7, v7

    aput-short v7, v9, v12

    .line 378
    iget-object v7, v1, Lorg/concentus/SilkEncoderControl;->AR2_Q13:[S

    aget v9, v13, v8

    invoke-static {v9, v2}, Lorg/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v2

    invoke-static {v2}, Lorg/concentus/Inlines;->silk_SAT16(I)I

    move-result v2

    int-to-short v2, v2

    aput-short v2, v7, v12

    add-int/lit8 v8, v8, 0x1

    move/from16 v2, v16

    const/16 v7, 0xe

    goto :goto_d

    :cond_10
    move/from16 v16, v2

    add-int/lit8 v15, v15, 0x1

    move-object v12, v6

    move-object v7, v10

    move/from16 v8, v16

    move/from16 v10, v18

    move-object/from16 v2, v21

    move v6, v5

    move v5, v4

    move/from16 v4, v22

    goto/16 :goto_5

    :cond_11
    move-object/from16 v21, v2

    move/from16 v18, v10

    const/16 v2, -0x800

    const/16 v3, 0x28f6

    move/from16 v5, v18

    .line 390
    invoke-static {v2, v5, v3}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v2

    neg-int v2, v2

    invoke-static {v2}, Lorg/concentus/Inlines;->silk_log2lin(I)I

    move-result v2

    const/16 v4, 0x800

    const/16 v5, 0x100

    .line 391
    invoke-static {v4, v5, v3}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v3

    invoke-static {v3}, Lorg/concentus/Inlines;->silk_log2lin(I)I

    move-result v3

    if-lez v2, :cond_12

    const/4 v4, 0x1

    goto :goto_e

    :cond_12
    const/4 v4, 0x0

    .line 392
    :goto_e
    invoke-static {v4}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    const/4 v4, 0x0

    .line 393
    :goto_f
    iget v5, v0, Lorg/concentus/SilkChannelEncoder;->nb_subfr:I

    if-ge v4, v5, :cond_14

    .line 394
    iget-object v5, v1, Lorg/concentus/SilkEncoderControl;->Gains_Q16:[I

    iget-object v6, v1, Lorg/concentus/SilkEncoderControl;->Gains_Q16:[I

    aget v6, v6, v4

    invoke-static {v6, v2}, Lorg/concentus/Inlines;->silk_SMULWW(II)I

    move-result v6

    aput v6, v5, v4

    .line 395
    iget-object v5, v1, Lorg/concentus/SilkEncoderControl;->Gains_Q16:[I

    aget v5, v5, v4

    if-ltz v5, :cond_13

    const/4 v5, 0x1

    goto :goto_10

    :cond_13
    const/4 v5, 0x0

    :goto_10
    invoke-static {v5}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    .line 396
    iget-object v5, v1, Lorg/concentus/SilkEncoderControl;->Gains_Q16:[I

    iget-object v6, v1, Lorg/concentus/SilkEncoderControl;->Gains_Q16:[I

    aget v6, v6, v4

    invoke-static {v6, v3}, Lorg/concentus/Inlines;->silk_ADD_POS_SAT32(II)I

    move-result v6

    aput v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 399
    :cond_14
    iget v2, v1, Lorg/concentus/SilkEncoderControl;->coding_quality_Q14:I

    const/16 v3, 0x19a

    const v4, 0x333333

    invoke-static {v4, v2, v3}, Lorg/concentus/Inlines;->silk_MLA(III)I

    move-result v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lorg/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v2

    const/high16 v3, 0x10000

    add-int/2addr v2, v3

    const/4 v3, 0x0

    .line 401
    :goto_11
    iget v4, v0, Lorg/concentus/SilkChannelEncoder;->nb_subfr:I

    if-ge v3, v4, :cond_15

    .line 402
    iget-object v4, v1, Lorg/concentus/SilkEncoderControl;->GainsPre_Q14:[I

    iget-object v5, v1, Lorg/concentus/SilkEncoderControl;->GainsPre_Q14:[I

    aget v5, v5, v3

    invoke-static {v2, v5}, Lorg/concentus/Inlines;->silk_SMULWB(II)I

    move-result v5

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 413
    :cond_15
    iget-object v2, v0, Lorg/concentus/SilkChannelEncoder;->input_quality_bands_Q15:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    add-int/lit16 v2, v2, -0x8000

    const/16 v3, 0x1000

    invoke-static {v3, v3, v2}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v2

    const/16 v3, 0x40

    invoke-static {v3, v2}, Lorg/concentus/Inlines;->silk_MUL(II)I

    move-result v2

    .line 415
    iget v3, v0, Lorg/concentus/SilkChannelEncoder;->speech_activity_Q8:I

    invoke-static {v2, v3}, Lorg/concentus/Inlines;->silk_MUL(II)I

    move-result v2

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lorg/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v2

    .line 416
    iget-object v3, v0, Lorg/concentus/SilkChannelEncoder;->indices:Lorg/concentus/SideInfoIndices;

    iget-byte v3, v3, Lorg/concentus/SideInfoIndices;->signalType:B

    const/16 v4, -0x4000

    const v5, 0xffff

    const/4 v6, 0x2

    if-ne v3, v6, :cond_17

    const/16 v3, 0xccd

    .line 419
    iget v7, v0, Lorg/concentus/SilkChannelEncoder;->fs_kHz:I

    invoke-static {v3, v7}, Lorg/concentus/Inlines;->silk_DIV32_16(II)I

    move-result v3

    const/4 v7, 0x0

    .line 420
    :goto_12
    iget v8, v0, Lorg/concentus/SilkChannelEncoder;->nb_subfr:I

    const v9, 0xc000

    if-ge v7, v8, :cond_16

    .line 421
    iget-object v8, v1, Lorg/concentus/SilkEncoderControl;->pitchL:[I

    aget v8, v8, v7

    invoke-static {v9, v8}, Lorg/concentus/Inlines;->silk_DIV32_16(II)I

    move-result v8

    add-int/2addr v8, v3

    .line 423
    iget-object v9, v1, Lorg/concentus/SilkEncoderControl;->LF_shp_Q14:[I

    rsub-int v10, v8, 0x4000

    invoke-static {v2, v8}, Lorg/concentus/Inlines;->silk_SMULWB(II)I

    move-result v11

    sub-int/2addr v10, v11

    const/16 v11, 0x10

    invoke-static {v10, v11}, Lorg/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v10

    aput v10, v9, v7

    .line 424
    iget-object v9, v1, Lorg/concentus/SilkEncoderControl;->LF_shp_Q14:[I

    aget v10, v9, v7

    add-int/lit16 v8, v8, -0x4000

    and-int/2addr v8, v5

    or-int/2addr v8, v10

    aput v8, v9, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_12

    :cond_16
    const/4 v7, 0x1

    .line 426
    invoke-static {v7}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    const v2, 0x59999a

    .line 428
    iget v3, v0, Lorg/concentus/SilkChannelEncoder;->speech_activity_Q8:I

    .line 429
    invoke-static {v2, v3}, Lorg/concentus/Inlines;->silk_SMULWB(II)I

    move-result v2

    .line 428
    invoke-static {v9, v2}, Lorg/concentus/Inlines;->silk_SMULWB(II)I

    move-result v2

    sub-int/2addr v4, v2

    const/4 v8, 0x0

    goto :goto_14

    :cond_17
    const/16 v3, 0x5333

    .line 431
    iget v7, v0, Lorg/concentus/SilkChannelEncoder;->fs_kHz:I

    invoke-static {v3, v7}, Lorg/concentus/Inlines;->silk_DIV32_16(II)I

    move-result v3

    .line 434
    iget-object v7, v1, Lorg/concentus/SilkEncoderControl;->LF_shp_Q14:[I

    rsub-int v8, v3, 0x4000

    const v9, 0x999a

    .line 435
    invoke-static {v9, v3}, Lorg/concentus/Inlines;->silk_SMULWB(II)I

    move-result v9

    invoke-static {v2, v9}, Lorg/concentus/Inlines;->silk_SMULWB(II)I

    move-result v2

    sub-int/2addr v8, v2

    const/16 v2, 0x10

    .line 434
    invoke-static {v8, v2}, Lorg/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v2

    const/4 v8, 0x0

    aput v2, v7, v8

    .line 436
    iget-object v2, v1, Lorg/concentus/SilkEncoderControl;->LF_shp_Q14:[I

    aget v7, v2, v8

    add-int/lit16 v3, v3, -0x4000

    and-int/2addr v3, v5

    or-int/2addr v3, v7

    aput v3, v2, v8

    const/4 v2, 0x1

    .line 437
    :goto_13
    iget v3, v0, Lorg/concentus/SilkChannelEncoder;->nb_subfr:I

    if-ge v2, v3, :cond_18

    .line 438
    iget-object v3, v1, Lorg/concentus/SilkEncoderControl;->LF_shp_Q14:[I

    iget-object v5, v1, Lorg/concentus/SilkEncoderControl;->LF_shp_Q14:[I

    aget v5, v5, v8

    aput v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 451
    :cond_18
    :goto_14
    iget v2, v1, Lorg/concentus/SilkEncoderControl;->coding_quality_Q14:I

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lorg/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v2

    const/high16 v3, 0x20000

    sub-int/2addr v3, v2

    iget v2, v0, Lorg/concentus/SilkChannelEncoder;->LTPCorr_Q15:I

    invoke-static {v3, v2}, Lorg/concentus/Inlines;->silk_SMULWB(II)I

    move-result v2

    const/16 v3, 0x199a

    invoke-static {v2, v3}, Lorg/concentus/Inlines;->silk_SMULWB(II)I

    move-result v2

    .line 455
    iget v5, v1, Lorg/concentus/SilkEncoderControl;->input_quality_Q14:I

    .line 456
    invoke-static {v5, v6}, Lorg/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v5

    const/high16 v7, 0x10000

    sub-int v5, v7, v5

    .line 455
    invoke-static {v2, v5, v3}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v2

    .line 458
    iget-object v3, v0, Lorg/concentus/SilkChannelEncoder;->indices:Lorg/concentus/SideInfoIndices;

    iget-byte v3, v3, Lorg/concentus/SideInfoIndices;->signalType:B

    if-ne v3, v6, :cond_19

    .line 460
    iget v3, v1, Lorg/concentus/SilkEncoderControl;->coding_quality_Q14:I

    const/4 v5, 0x4

    .line 461
    invoke-static {v3, v5}, Lorg/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v3

    const/high16 v5, 0x40000

    sub-int/2addr v5, v3

    iget v3, v1, Lorg/concentus/SilkEncoderControl;->input_quality_Q14:I

    invoke-static {v5, v3}, Lorg/concentus/Inlines;->silk_SMULWB(II)I

    move-result v3

    sub-int/2addr v7, v3

    const/16 v3, 0x3333

    const/16 v5, 0x4ccd

    .line 460
    invoke-static {v5, v7, v3}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v3

    const/4 v5, 0x1

    .line 465
    invoke-static {v3, v5}, Lorg/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v3

    iget v0, v0, Lorg/concentus/SilkChannelEncoder;->LTPCorr_Q15:I

    const/16 v5, 0xf

    .line 466
    invoke-static {v0, v5}, Lorg/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v0

    invoke-static {v0}, Lorg/concentus/Inlines;->silk_SQRT_APPROX(I)I

    move-result v0

    .line 465
    invoke-static {v3, v0}, Lorg/concentus/Inlines;->silk_SMULWB(II)I

    move-result v0

    goto :goto_15

    :cond_19
    move v0, v8

    :goto_15
    move v14, v8

    const/4 v3, 0x4

    :goto_16
    if-ge v14, v3, :cond_1a

    move-object/from16 v5, v21

    .line 479
    iget v7, v5, Lorg/concentus/SilkShapeState;->HarmBoost_smth_Q16:I

    iget v8, v5, Lorg/concentus/SilkShapeState;->HarmBoost_smth_Q16:I

    sub-int v8, v2, v8

    const/16 v9, 0x6666

    .line 480
    invoke-static {v7, v8, v9}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v7

    iput v7, v5, Lorg/concentus/SilkShapeState;->HarmBoost_smth_Q16:I

    .line 481
    iget v7, v5, Lorg/concentus/SilkShapeState;->HarmShapeGain_smth_Q16:I

    iget v8, v5, Lorg/concentus/SilkShapeState;->HarmShapeGain_smth_Q16:I

    sub-int v8, v0, v8

    .line 482
    invoke-static {v7, v8, v9}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v7

    iput v7, v5, Lorg/concentus/SilkShapeState;->HarmShapeGain_smth_Q16:I

    .line 483
    iget v7, v5, Lorg/concentus/SilkShapeState;->Tilt_smth_Q16:I

    iget v8, v5, Lorg/concentus/SilkShapeState;->Tilt_smth_Q16:I

    sub-int v8, v4, v8

    .line 484
    invoke-static {v7, v8, v9}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v7

    iput v7, v5, Lorg/concentus/SilkShapeState;->Tilt_smth_Q16:I

    .line 486
    iget-object v7, v1, Lorg/concentus/SilkEncoderControl;->HarmBoost_Q14:[I

    iget v8, v5, Lorg/concentus/SilkShapeState;->HarmBoost_smth_Q16:I

    invoke-static {v8, v6}, Lorg/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v8

    aput v8, v7, v14

    .line 487
    iget-object v7, v1, Lorg/concentus/SilkEncoderControl;->HarmShapeGain_Q14:[I

    iget v8, v5, Lorg/concentus/SilkShapeState;->HarmShapeGain_smth_Q16:I

    invoke-static {v8, v6}, Lorg/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v8

    aput v8, v7, v14

    .line 488
    iget-object v7, v1, Lorg/concentus/SilkEncoderControl;->Tilt_Q14:[I

    iget v8, v5, Lorg/concentus/SilkShapeState;->Tilt_smth_Q16:I

    invoke-static {v8, v6}, Lorg/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v8

    aput v8, v7, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_16

    :cond_1a
    return-void
.end method

.method static warped_gain([III)I
    .locals 2

    neg-int p1, p1

    add-int/lit8 v0, p2, -0x1

    .line 49
    aget v0, p0, v0

    add-int/lit8 p2, p2, -0x2

    :goto_0
    if-ltz p2, :cond_0

    .line 51
    aget v1, p0, p2

    invoke-static {v1, v0, p1}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v0

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
    const/high16 p0, 0x1000000

    neg-int p1, p1

    .line 53
    invoke-static {p0, v0, p1}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result p0

    const/16 p1, 0x28

    .line 54
    invoke-static {p0, p1}, Lorg/concentus/Inlines;->silk_INVERSE32_varQ(II)I

    move-result p0

    return p0
.end method
