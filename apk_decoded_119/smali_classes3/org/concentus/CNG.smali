.class Lorg/concentus/CNG;
.super Ljava/lang/Object;
.source "CNG.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static silk_CNG(Lorg/concentus/SilkChannelDecoder;Lorg/concentus/SilkDecoderControl;[SII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v7, p4

    .line 107
    iget v2, v0, Lorg/concentus/SilkChannelDecoder;->LPC_order:I

    new-array v8, v2, [S

    .line 108
    iget-object v9, v0, Lorg/concentus/SilkChannelDecoder;->sCNG:Lorg/concentus/CNGState;

    .line 110
    iget v2, v0, Lorg/concentus/SilkChannelDecoder;->fs_kHz:I

    iget v3, v9, Lorg/concentus/CNGState;->fs_kHz:I

    if-eq v2, v3, :cond_0

    .line 112
    invoke-static/range {p0 .. p0}, Lorg/concentus/CNG;->silk_CNG_Reset(Lorg/concentus/SilkChannelDecoder;)V

    .line 114
    iget v2, v0, Lorg/concentus/SilkChannelDecoder;->fs_kHz:I

    iput v2, v9, Lorg/concentus/CNGState;->fs_kHz:I

    .line 117
    :cond_0
    iget v2, v0, Lorg/concentus/SilkChannelDecoder;->lossCnt:I

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-nez v2, :cond_4

    iget v2, v0, Lorg/concentus/SilkChannelDecoder;->prevSignalType:I

    if-nez v2, :cond_4

    move v2, v11

    .line 121
    :goto_0
    iget v3, v0, Lorg/concentus/SilkChannelDecoder;->LPC_order:I

    if-ge v2, v3, :cond_1

    .line 122
    iget-object v3, v9, Lorg/concentus/CNGState;->CNG_smth_NLSF_Q15:[S

    aget-short v4, v3, v2

    iget-object v5, v0, Lorg/concentus/SilkChannelDecoder;->prevNLSF_Q15:[S

    aget-short v5, v5, v2

    iget-object v6, v9, Lorg/concentus/CNGState;->CNG_smth_NLSF_Q15:[S

    aget-short v6, v6, v2

    sub-int/2addr v5, v6

    const/16 v6, 0x3fdc

    invoke-static {v5, v6}, Lorg/concentus/Inlines;->silk_SMULWB(II)I

    move-result v5

    int-to-short v5, v5

    add-int/2addr v4, v5

    int-to-short v4, v4

    aput-short v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v11

    move v3, v2

    .line 128
    :goto_1
    iget v4, v0, Lorg/concentus/SilkChannelDecoder;->nb_subfr:I

    if-ge v2, v4, :cond_3

    .line 129
    iget-object v4, v1, Lorg/concentus/SilkDecoderControl;->Gains_Q16:[I

    aget v4, v4, v2

    if-le v4, v3, :cond_2

    .line 130
    iget-object v3, v1, Lorg/concentus/SilkDecoderControl;->Gains_Q16:[I

    aget v3, v3, v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 136
    :cond_3
    iget-object v2, v9, Lorg/concentus/CNGState;->CNG_exc_buf_Q14:[I

    iget v3, v0, Lorg/concentus/SilkChannelDecoder;->subfr_length:I

    iget v4, v0, Lorg/concentus/SilkChannelDecoder;->nb_subfr:I

    sub-int/2addr v4, v10

    iget v5, v0, Lorg/concentus/SilkChannelDecoder;->subfr_length:I

    mul-int/2addr v4, v5

    invoke-static {v2, v11, v3, v4}, Lorg/concentus/Arrays;->MemMove([IIII)V

    move v2, v11

    .line 139
    :goto_2
    iget v3, v0, Lorg/concentus/SilkChannelDecoder;->nb_subfr:I

    if-ge v2, v3, :cond_4

    .line 140
    iget v3, v9, Lorg/concentus/CNGState;->CNG_smth_Gain_Q16:I

    iget-object v4, v1, Lorg/concentus/SilkDecoderControl;->Gains_Q16:[I

    aget v4, v4, v2

    iget v5, v9, Lorg/concentus/CNGState;->CNG_smth_Gain_Q16:I

    sub-int/2addr v4, v5

    const/16 v5, 0x121a

    invoke-static {v4, v5}, Lorg/concentus/Inlines;->silk_SMULWB(II)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v9, Lorg/concentus/CNGState;->CNG_smth_Gain_Q16:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 145
    :cond_4
    iget v1, v0, Lorg/concentus/SilkChannelDecoder;->lossCnt:I

    if-eqz v1, :cond_b

    add-int/lit8 v1, v7, 0x10

    .line 146
    new-array v12, v1, [I

    .line 149
    iget-object v1, v0, Lorg/concentus/SilkChannelDecoder;->sPLC:Lorg/concentus/PLCStruct;

    iget-short v1, v1, Lorg/concentus/PLCStruct;->randScale_Q14:S

    iget-object v2, v0, Lorg/concentus/SilkChannelDecoder;->sPLC:Lorg/concentus/PLCStruct;

    iget-object v2, v2, Lorg/concentus/PLCStruct;->prevGain_Q16:[I

    aget v2, v2, v10

    invoke-static {v1, v2}, Lorg/concentus/Inlines;->silk_SMULWW(II)I

    move-result v1

    const/high16 v2, 0x200000

    const/16 v13, 0x8

    const/4 v14, 0x5

    const/16 v15, 0x10

    if-ge v1, v2, :cond_6

    .line 150
    iget v2, v9, Lorg/concentus/CNGState;->CNG_smth_Gain_Q16:I

    const/high16 v3, 0x800000

    if-le v2, v3, :cond_5

    goto :goto_3

    .line 155
    :cond_5
    invoke-static {v1, v1}, Lorg/concentus/Inlines;->silk_SMULWW(II)I

    move-result v1

    .line 156
    iget v2, v9, Lorg/concentus/CNGState;->CNG_smth_Gain_Q16:I

    iget v3, v9, Lorg/concentus/CNGState;->CNG_smth_Gain_Q16:I

    invoke-static {v2, v3}, Lorg/concentus/Inlines;->silk_SMULWW(II)I

    move-result v2

    invoke-static {v2, v1, v14}, Lorg/concentus/Inlines;->silk_SUB_LSHIFT32(III)I

    move-result v1

    .line 157
    invoke-static {v1}, Lorg/concentus/Inlines;->silk_SQRT_APPROX(I)I

    move-result v1

    invoke-static {v1, v13}, Lorg/concentus/Inlines;->silk_LSHIFT32(II)I

    move-result v1

    goto :goto_4

    .line 151
    :cond_6
    :goto_3
    invoke-static {v1, v1}, Lorg/concentus/Inlines;->silk_SMULTT(II)I

    move-result v1

    .line 152
    iget v2, v9, Lorg/concentus/CNGState;->CNG_smth_Gain_Q16:I

    iget v3, v9, Lorg/concentus/CNGState;->CNG_smth_Gain_Q16:I

    invoke-static {v2, v3}, Lorg/concentus/Inlines;->silk_SMULTT(II)I

    move-result v2

    invoke-static {v2, v1, v14}, Lorg/concentus/Inlines;->silk_SUB_LSHIFT32(III)I

    move-result v1

    .line 153
    invoke-static {v1}, Lorg/concentus/Inlines;->silk_SQRT_APPROX(I)I

    move-result v1

    invoke-static {v1, v15}, Lorg/concentus/Inlines;->silk_LSHIFT32(II)I

    move-result v1

    :goto_4
    move v4, v1

    .line 160
    new-instance v6, Lorg/concentus/BoxedValueInt;

    iget v1, v9, Lorg/concentus/CNGState;->rand_seed:I

    invoke-direct {v6, v1}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    const/16 v2, 0x10

    .line 161
    iget-object v3, v9, Lorg/concentus/CNGState;->CNG_exc_buf_Q14:[I

    move-object v1, v12

    move/from16 v5, p4

    move-object/from16 p1, v6

    invoke-static/range {v1 .. v6}, Lorg/concentus/CNG;->silk_CNG_exc([II[IIILorg/concentus/BoxedValueInt;)V

    move-object/from16 v1, p1

    .line 162
    iget v1, v1, Lorg/concentus/BoxedValueInt;->Val:I

    iput v1, v9, Lorg/concentus/CNGState;->rand_seed:I

    .line 165
    iget-object v1, v9, Lorg/concentus/CNGState;->CNG_smth_NLSF_Q15:[S

    iget v2, v0, Lorg/concentus/SilkChannelDecoder;->LPC_order:I

    invoke-static {v8, v1, v2}, Lorg/concentus/NLSF;->silk_NLSF2A([S[SI)V

    .line 168
    iget-object v1, v9, Lorg/concentus/CNGState;->CNG_synth_state:[I

    invoke-static {v1, v11, v12, v11, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v1, v11

    :goto_5
    if-ge v1, v7, :cond_a

    add-int/lit8 v2, v1, 0x10

    .line 172
    iget v3, v0, Lorg/concentus/SilkChannelDecoder;->LPC_order:I

    const/16 v4, 0xa

    if-eq v3, v4, :cond_8

    iget v3, v0, Lorg/concentus/SilkChannelDecoder;->LPC_order:I

    if-ne v3, v15, :cond_7

    goto :goto_6

    :cond_7
    move v3, v11

    goto :goto_7

    :cond_8
    :goto_6
    move v3, v10

    :goto_7
    invoke-static {v3}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    .line 174
    iget v3, v0, Lorg/concentus/SilkChannelDecoder;->LPC_order:I

    invoke-static {v3, v10}, Lorg/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v3

    add-int/lit8 v5, v1, 0xf

    .line 175
    aget v5, v12, v5

    aget-short v6, v8, v11

    invoke-static {v3, v5, v6}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v3

    add-int/lit8 v5, v1, 0xe

    .line 176
    aget v5, v12, v5

    aget-short v6, v8, v10

    invoke-static {v3, v5, v6}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v3

    add-int/lit8 v5, v1, 0xd

    .line 177
    aget v5, v12, v5

    const/4 v6, 0x2

    aget-short v6, v8, v6

    invoke-static {v3, v5, v6}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v3

    add-int/lit8 v5, v1, 0xc

    .line 178
    aget v5, v12, v5

    const/4 v6, 0x3

    aget-short v6, v8, v6

    invoke-static {v3, v5, v6}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v3

    add-int/lit8 v5, v1, 0xb

    .line 179
    aget v5, v12, v5

    const/4 v6, 0x4

    aget-short v10, v8, v6

    invoke-static {v3, v5, v10}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v3

    add-int/lit8 v5, v1, 0xa

    .line 180
    aget v5, v12, v5

    aget-short v10, v8, v14

    invoke-static {v3, v5, v10}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v3

    add-int/lit8 v5, v1, 0x9

    .line 181
    aget v5, v12, v5

    const/4 v10, 0x6

    aget-short v10, v8, v10

    invoke-static {v3, v5, v10}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v3

    add-int/lit8 v5, v1, 0x8

    .line 182
    aget v5, v12, v5

    const/4 v10, 0x7

    aget-short v10, v8, v10

    invoke-static {v3, v5, v10}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v3

    add-int/lit8 v5, v1, 0x7

    .line 183
    aget v5, v12, v5

    aget-short v10, v8, v13

    invoke-static {v3, v5, v10}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v3

    add-int/lit8 v5, v1, 0x6

    .line 184
    aget v5, v12, v5

    const/16 v10, 0x9

    aget-short v10, v8, v10

    invoke-static {v3, v5, v10}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v3

    .line 186
    iget v5, v0, Lorg/concentus/SilkChannelDecoder;->LPC_order:I

    if-ne v5, v15, :cond_9

    add-int/lit8 v5, v1, 0x5

    .line 187
    aget v5, v12, v5

    aget-short v10, v8, v4

    invoke-static {v3, v5, v10}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v3

    add-int/lit8 v5, v1, 0x4

    .line 188
    aget v5, v12, v5

    const/16 v10, 0xb

    aget-short v10, v8, v10

    invoke-static {v3, v5, v10}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v3

    add-int/lit8 v5, v1, 0x3

    .line 189
    aget v5, v12, v5

    const/16 v10, 0xc

    aget-short v10, v8, v10

    invoke-static {v3, v5, v10}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v3

    add-int/lit8 v5, v1, 0x2

    .line 190
    aget v5, v12, v5

    const/16 v10, 0xd

    aget-short v10, v8, v10

    invoke-static {v3, v5, v10}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v3

    add-int/lit8 v5, v1, 0x1

    .line 191
    aget v5, v12, v5

    const/16 v10, 0xe

    aget-short v10, v8, v10

    invoke-static {v3, v5, v10}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v3

    .line 192
    aget v5, v12, v1

    const/16 v10, 0xf

    aget-short v10, v8, v10

    invoke-static {v3, v5, v10}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v3

    .line 196
    :cond_9
    aget v5, v12, v2

    invoke-static {v5, v3, v6}, Lorg/concentus/Inlines;->silk_ADD_LSHIFT(III)I

    move-result v3

    aput v3, v12, v2

    add-int v2, p3, v1

    .line 198
    aget-short v5, p2, v2

    invoke-static {v3, v4}, Lorg/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v3

    int-to-short v3, v3

    invoke-static {v5, v3}, Lorg/concentus/Inlines;->silk_ADD_SAT16(SS)S

    move-result v3

    aput-short v3, p2, v2

    add-int/lit8 v1, v1, 0x1

    const/4 v10, 0x1

    goto/16 :goto_5

    .line 201
    :cond_a
    iget-object v0, v9, Lorg/concentus/CNGState;->CNG_synth_state:[I

    invoke-static {v12, v7, v0, v11, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_8

    .line 203
    :cond_b
    iget-object v1, v9, Lorg/concentus/CNGState;->CNG_synth_state:[I

    iget v0, v0, Lorg/concentus/SilkChannelDecoder;->LPC_order:I

    invoke-static {v1, v11, v0}, Lorg/concentus/Arrays;->MemSet([III)V

    :goto_8
    return-void
.end method

.method static silk_CNG_Reset(Lorg/concentus/SilkChannelDecoder;)V
    .locals 6

    .line 82
    iget v0, p0, Lorg/concentus/SilkChannelDecoder;->LPC_order:I

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    const/16 v1, 0x7fff

    invoke-static {v1, v0}, Lorg/concentus/Inlines;->silk_DIV32_16(II)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 84
    :goto_0
    iget v4, p0, Lorg/concentus/SilkChannelDecoder;->LPC_order:I

    if-ge v2, v4, :cond_0

    add-int/2addr v3, v0

    .line 86
    iget-object v4, p0, Lorg/concentus/SilkChannelDecoder;->sCNG:Lorg/concentus/CNGState;

    iget-object v4, v4, Lorg/concentus/CNGState;->CNG_smth_NLSF_Q15:[S

    int-to-short v5, v3

    aput-short v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 88
    :cond_0
    iget-object v0, p0, Lorg/concentus/SilkChannelDecoder;->sCNG:Lorg/concentus/CNGState;

    iput v1, v0, Lorg/concentus/CNGState;->CNG_smth_Gain_Q16:I

    .line 89
    iget-object p0, p0, Lorg/concentus/SilkChannelDecoder;->sCNG:Lorg/concentus/CNGState;

    const v0, 0x307880

    iput v0, p0, Lorg/concentus/CNGState;->rand_seed:I

    return-void
.end method

.method static silk_CNG_exc([II[IIILorg/concentus/BoxedValueInt;)V
    .locals 8

    const/16 v0, 0xff

    move v1, v0

    :goto_0
    const/4 v2, 0x1

    if-le v1, p4, :cond_0

    .line 60
    invoke-static {v1, v2}, Lorg/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v1

    goto :goto_0

    .line 63
    :cond_0
    iget v3, p5, Lorg/concentus/BoxedValueInt;->Val:I

    move v4, p1

    :goto_1
    add-int v5, p1, p4

    if-ge v4, v5, :cond_3

    .line 65
    invoke-static {v3}, Lorg/concentus/Inlines;->silk_RAND(I)I

    move-result v3

    const/16 v5, 0x18

    .line 66
    invoke-static {v3, v5}, Lorg/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v5

    and-int/2addr v5, v1

    const/4 v6, 0x0

    if-ltz v5, :cond_1

    move v7, v2

    goto :goto_2

    :cond_1
    move v7, v6

    .line 67
    :goto_2
    invoke-static {v7}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    if-gt v5, v0, :cond_2

    move v6, v2

    .line 68
    :cond_2
    invoke-static {v6}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    .line 69
    aget v5, p2, v5

    shr-int/lit8 v6, p3, 0x4

    invoke-static {v5, v6}, Lorg/concentus/Inlines;->silk_SMULWW(II)I

    move-result v5

    invoke-static {v5}, Lorg/concentus/Inlines;->silk_SAT16(I)I

    move-result v5

    int-to-short v5, v5

    aput v5, p0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 72
    :cond_3
    iput v3, p5, Lorg/concentus/BoxedValueInt;->Val:I

    return-void
.end method
