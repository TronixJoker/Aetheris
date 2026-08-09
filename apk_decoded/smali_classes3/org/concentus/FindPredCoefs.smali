.class Lorg/concentus/FindPredCoefs;
.super Ljava/lang/Object;
.source "FindPredCoefs.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static silk_find_pred_coefs(Lorg/concentus/SilkChannelEncoder;Lorg/concentus/SilkEncoderControl;[S[SII)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x4

    .line 45
    new-array v8, v2, [I

    .line 46
    new-array v13, v2, [I

    .line 47
    new-array v3, v2, [I

    const/16 v12, 0x10

    .line 48
    new-array v11, v12, [S

    .line 53
    new-array v2, v2, [I

    const v4, 0x1ffffff

    const/4 v10, 0x0

    move v5, v10

    .line 57
    :goto_0
    iget v6, v0, Lorg/concentus/SilkChannelEncoder;->nb_subfr:I

    if-ge v5, v6, :cond_0

    .line 58
    iget-object v6, v1, Lorg/concentus/SilkEncoderControl;->Gains_Q16:[I

    aget v6, v6, v5

    invoke-static {v4, v6}, Lorg/concentus/Inlines;->silk_min(II)I

    move-result v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    move v5, v10

    .line 60
    :goto_1
    iget v6, v0, Lorg/concentus/SilkChannelEncoder;->nb_subfr:I

    const/high16 v9, 0x10000

    const/16 v7, 0xe

    const/4 v14, 0x1

    if-ge v5, v6, :cond_3

    .line 62
    iget-object v6, v1, Lorg/concentus/SilkEncoderControl;->Gains_Q16:[I

    aget v6, v6, v5

    if-lez v6, :cond_1

    move v6, v14

    goto :goto_2

    :cond_1
    move v6, v10

    :goto_2
    invoke-static {v6}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    .line 64
    iget-object v6, v1, Lorg/concentus/SilkEncoderControl;->Gains_Q16:[I

    aget v6, v6, v5

    invoke-static {v4, v6, v7}, Lorg/concentus/Inlines;->silk_DIV32_varQ(III)I

    move-result v6

    aput v6, v8, v5

    const/16 v7, 0x16b

    .line 67
    invoke-static {v6, v7}, Lorg/concentus/Inlines;->silk_max(II)I

    move-result v6

    aput v6, v8, v5

    .line 70
    invoke-static {v6}, Lorg/concentus/Inlines;->silk_SAT16(I)I

    move-result v7

    if-ne v6, v7, :cond_2

    move v6, v14

    goto :goto_3

    :cond_2
    move v6, v10

    :goto_3
    invoke-static {v6}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    .line 71
    aget v6, v8, v5

    invoke-static {v6, v6}, Lorg/concentus/Inlines;->silk_SMULWB(II)I

    move-result v6

    .line 72
    invoke-static {v6, v14}, Lorg/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v6

    aput v6, v3, v5

    .line 75
    aget v6, v8, v5

    invoke-static {v9, v6}, Lorg/concentus/Inlines;->silk_DIV32(II)I

    move-result v6

    aput v6, v13, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 78
    :cond_3
    iget v4, v0, Lorg/concentus/SilkChannelEncoder;->nb_subfr:I

    iget v5, v0, Lorg/concentus/SilkChannelEncoder;->predictLPCOrder:I

    mul-int/2addr v4, v5

    iget v5, v0, Lorg/concentus/SilkChannelEncoder;->frame_length:I

    add-int/2addr v4, v5

    new-array v6, v4, [S

    .line 79
    iget-object v4, v0, Lorg/concentus/SilkChannelEncoder;->indices:Lorg/concentus/SideInfoIndices;

    iget-byte v4, v4, Lorg/concentus/SideInfoIndices;->signalType:B

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    .line 89
    iget v4, v0, Lorg/concentus/SilkChannelEncoder;->ltp_mem_length:I

    iget v15, v0, Lorg/concentus/SilkChannelEncoder;->predictLPCOrder:I

    sub-int/2addr v4, v15

    iget-object v15, v1, Lorg/concentus/SilkEncoderControl;->pitchL:[I

    aget v15, v15, v10

    add-int/2addr v15, v5

    if-lt v4, v15, :cond_4

    goto :goto_4

    :cond_4
    move v14, v10

    :goto_4
    invoke-static {v14}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    .line 91
    iget v4, v0, Lorg/concentus/SilkChannelEncoder;->nb_subfr:I

    mul-int/lit8 v4, v4, 0x19

    new-array v4, v4, [I

    .line 94
    new-instance v5, Lorg/concentus/BoxedValueInt;

    iget v14, v1, Lorg/concentus/SilkEncoderControl;->LTPredCodGain_Q7:I

    invoke-direct {v5, v14}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    .line 95
    iget-object v14, v1, Lorg/concentus/SilkEncoderControl;->LTPCoef_Q14:[S

    iget-object v15, v1, Lorg/concentus/SilkEncoderControl;->pitchL:[I

    iget v7, v0, Lorg/concentus/SilkChannelEncoder;->subfr_length:I

    iget v9, v0, Lorg/concentus/SilkChannelEncoder;->nb_subfr:I

    iget v10, v0, Lorg/concentus/SilkChannelEncoder;->ltp_mem_length:I

    move-object/from16 v18, v15

    move-object v15, v4

    move-object/from16 v16, v5

    move-object/from16 v17, p2

    move-object/from16 v19, v3

    move/from16 v20, v7

    move/from16 v21, v9

    move/from16 v22, v10

    move-object/from16 v23, v2

    invoke-static/range {v14 .. v23}, Lorg/concentus/FindLTP;->silk_find_LTP([S[ILorg/concentus/BoxedValueInt;[S[I[IIII[I)V

    .line 98
    iget v2, v5, Lorg/concentus/BoxedValueInt;->Val:I

    iput v2, v1, Lorg/concentus/SilkEncoderControl;->LTPredCodGain_Q7:I

    .line 101
    new-instance v2, Lorg/concentus/BoxedValueByte;

    iget-object v3, v0, Lorg/concentus/SilkChannelEncoder;->indices:Lorg/concentus/SideInfoIndices;

    iget-byte v3, v3, Lorg/concentus/SideInfoIndices;->PERIndex:B

    invoke-direct {v2, v3}, Lorg/concentus/BoxedValueByte;-><init>(B)V

    .line 102
    new-instance v3, Lorg/concentus/BoxedValueInt;

    iget v5, v0, Lorg/concentus/SilkChannelEncoder;->sum_log_gain_Q7:I

    invoke-direct {v3, v5}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    .line 103
    iget-object v14, v1, Lorg/concentus/SilkEncoderControl;->LTPCoef_Q14:[S

    iget-object v5, v0, Lorg/concentus/SilkChannelEncoder;->indices:Lorg/concentus/SideInfoIndices;

    iget-object v15, v5, Lorg/concentus/SideInfoIndices;->LTPIndex:[B

    iget v5, v0, Lorg/concentus/SilkChannelEncoder;->mu_LTP_Q9:I

    iget v7, v0, Lorg/concentus/SilkChannelEncoder;->LTPQuantLowComplexity:I

    iget v9, v0, Lorg/concentus/SilkChannelEncoder;->nb_subfr:I

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move/from16 v19, v5

    move/from16 v20, v7

    move/from16 v21, v9

    invoke-static/range {v14 .. v21}, Lorg/concentus/QuantizeLTPGains;->silk_quant_LTP_gains([S[BLorg/concentus/BoxedValueByte;Lorg/concentus/BoxedValueInt;[IIII)V

    .line 106
    iget-object v4, v0, Lorg/concentus/SilkChannelEncoder;->indices:Lorg/concentus/SideInfoIndices;

    iget-byte v2, v2, Lorg/concentus/BoxedValueByte;->Val:B

    iput-byte v2, v4, Lorg/concentus/SideInfoIndices;->PERIndex:B

    .line 107
    iget v2, v3, Lorg/concentus/BoxedValueInt;->Val:I

    iput v2, v0, Lorg/concentus/SilkChannelEncoder;->sum_log_gain_Q7:I

    move/from16 v2, p5

    .line 110
    invoke-static {v0, v1, v2}, Lorg/concentus/LTPScaleControl;->silk_LTP_scale_ctrl(Lorg/concentus/SilkChannelEncoder;Lorg/concentus/SilkEncoderControl;I)V

    .line 113
    iget v2, v0, Lorg/concentus/SilkChannelEncoder;->predictLPCOrder:I

    sub-int v5, p4, v2

    iget-object v2, v1, Lorg/concentus/SilkEncoderControl;->LTPCoef_Q14:[S

    iget-object v7, v1, Lorg/concentus/SilkEncoderControl;->pitchL:[I

    iget v9, v0, Lorg/concentus/SilkChannelEncoder;->subfr_length:I

    iget v10, v0, Lorg/concentus/SilkChannelEncoder;->nb_subfr:I

    iget v14, v0, Lorg/concentus/SilkChannelEncoder;->predictLPCOrder:I

    move-object v3, v6

    move-object/from16 v4, p3

    move-object/from16 p2, v6

    move-object v6, v2

    const/16 v2, 0xe

    const/high16 v15, 0x10000

    const/4 v2, 0x0

    move-object/from16 v24, v11

    move v11, v14

    invoke-static/range {v3 .. v11}, Lorg/concentus/LTPAnalysisFilter;->silk_LTP_analysis_filter([S[SI[S[I[IIII)V

    move v5, v15

    goto :goto_6

    :cond_5
    move-object/from16 p2, v6

    move v15, v9

    move v2, v10

    move-object/from16 v24, v11

    .line 125
    iget v3, v0, Lorg/concentus/SilkChannelEncoder;->predictLPCOrder:I

    sub-int v3, p4, v3

    move v4, v2

    move v10, v4

    .line 127
    :goto_5
    iget v5, v0, Lorg/concentus/SilkChannelEncoder;->nb_subfr:I

    if-ge v10, v5, :cond_6

    .line 128
    aget v19, v8, v10

    iget v5, v0, Lorg/concentus/SilkChannelEncoder;->subfr_length:I

    iget v6, v0, Lorg/concentus/SilkChannelEncoder;->predictLPCOrder:I

    add-int v20, v5, v6

    move v5, v15

    move-object/from16 v15, p2

    move/from16 v16, v4

    move-object/from16 v17, p3

    move/from16 v18, v3

    invoke-static/range {v15 .. v20}, Lorg/concentus/Inlines;->silk_scale_copy_vector16([SI[SIII)V

    .line 130
    iget v6, v0, Lorg/concentus/SilkChannelEncoder;->subfr_length:I

    iget v7, v0, Lorg/concentus/SilkChannelEncoder;->predictLPCOrder:I

    add-int/2addr v6, v7

    add-int/2addr v4, v6

    .line 131
    iget v6, v0, Lorg/concentus/SilkChannelEncoder;->subfr_length:I

    add-int/2addr v3, v6

    add-int/lit8 v10, v10, 0x1

    move v15, v5

    goto :goto_5

    :cond_6
    move v5, v15

    .line 134
    iget-object v3, v1, Lorg/concentus/SilkEncoderControl;->LTPCoef_Q14:[S

    iget v4, v0, Lorg/concentus/SilkChannelEncoder;->nb_subfr:I

    mul-int/lit8 v4, v4, 0x5

    invoke-static {v3, v2, v4}, Lorg/concentus/Arrays;->MemSet([SSI)V

    .line 135
    iput v2, v1, Lorg/concentus/SilkEncoderControl;->LTPredCodGain_Q7:I

    .line 136
    iput v2, v0, Lorg/concentus/SilkChannelEncoder;->sum_log_gain_Q7:I

    .line 140
    :goto_6
    iget v3, v0, Lorg/concentus/SilkChannelEncoder;->first_frame_after_reset:I

    if-eqz v3, :cond_7

    const v3, 0xa3d70a

    goto :goto_7

    .line 143
    :cond_7
    iget v3, v1, Lorg/concentus/SilkEncoderControl;->LTPredCodGain_Q7:I

    const/16 v4, 0x5555

    const/16 v6, 0x800

    invoke-static {v6, v3, v4}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v3

    invoke-static {v3}, Lorg/concentus/Inlines;->silk_log2lin(I)I

    move-result v3

    const/high16 v4, 0x30000

    .line 145
    iget v6, v1, Lorg/concentus/SilkEncoderControl;->coding_quality_Q14:I

    .line 147
    invoke-static {v5, v4, v6}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v4

    const/16 v5, 0x2710

    .line 146
    invoke-static {v5, v4}, Lorg/concentus/Inlines;->silk_SMULWW(II)I

    move-result v4

    const/16 v5, 0xe

    .line 145
    invoke-static {v3, v4, v5}, Lorg/concentus/Inlines;->silk_DIV32_varQ(III)I

    move-result v3

    :goto_7
    move-object/from16 v5, p2

    move-object/from16 v4, v24

    .line 151
    invoke-static {v0, v4, v5, v3}, Lorg/concentus/FindLPC;->silk_find_LPC(Lorg/concentus/SilkChannelEncoder;[S[SI)V

    .line 154
    iget-object v3, v1, Lorg/concentus/SilkEncoderControl;->PredCoef_Q12:[[S

    iget-object v6, v0, Lorg/concentus/SilkChannelEncoder;->prev_NLSFq_Q15:[S

    invoke-static {v0, v3, v4, v6}, Lorg/concentus/NLSF;->silk_process_NLSFs(Lorg/concentus/SilkChannelEncoder;[[S[S[S)V

    .line 157
    iget-object v9, v1, Lorg/concentus/SilkEncoderControl;->ResNrg:[I

    iget-object v10, v1, Lorg/concentus/SilkEncoderControl;->ResNrgQ:[I

    iget-object v1, v1, Lorg/concentus/SilkEncoderControl;->PredCoef_Q12:[[S

    iget v14, v0, Lorg/concentus/SilkChannelEncoder;->subfr_length:I

    iget v15, v0, Lorg/concentus/SilkChannelEncoder;->nb_subfr:I

    iget v3, v0, Lorg/concentus/SilkChannelEncoder;->predictLPCOrder:I

    move-object v11, v5

    move v5, v12

    move-object v12, v1

    move/from16 v16, v3

    invoke-static/range {v9 .. v16}, Lorg/concentus/ResidualEnergy;->silk_residual_energy([I[I[S[[S[IIII)V

    .line 161
    iget-object v0, v0, Lorg/concentus/SilkChannelEncoder;->prev_NLSFq_Q15:[S

    invoke-static {v4, v2, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
