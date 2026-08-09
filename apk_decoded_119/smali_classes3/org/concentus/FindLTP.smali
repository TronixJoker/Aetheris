.class Lorg/concentus/FindLTP;
.super Ljava/lang/Object;
.source "FindLTP.java"


# static fields
.field private static final LTP_CORRS_HEAD_ROOM:I = 0x2


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static silk_find_LTP([S[ILorg/concentus/BoxedValueInt;[S[I[IIII[I)V
    .locals 28

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p6

    move/from16 v12, p7

    const/4 v13, 0x5

    .line 72
    new-array v14, v13, [I

    .line 73
    new-array v15, v13, [I

    const/4 v7, 0x4

    .line 74
    new-array v6, v7, [I

    .line 75
    new-array v5, v7, [I

    .line 77
    new-array v4, v7, [I

    .line 84
    new-array v3, v13, [I

    .line 85
    new-array v2, v7, [I

    const/4 v1, 0x0

    move/from16 v0, p8

    move/from16 p8, v1

    move/from16 v13, p8

    move/from16 v16, v13

    move-object/from16 v17, v4

    :goto_0
    const/4 v4, 0x2

    move-object/from16 v19, v3

    if-ge v13, v12, :cond_8

    .line 92
    aget v20, p4, v13

    add-int/lit8 v20, v20, 0x2

    sub-int v20, v0, v20

    .line 93
    new-instance v3, Lorg/concentus/BoxedValueInt;

    invoke-direct {v3, v1}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    .line 94
    new-instance v7, Lorg/concentus/BoxedValueInt;

    invoke-direct {v7, v1}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    move-object/from16 v4, p3

    .line 95
    invoke-static {v3, v7, v4, v0, v11}, Lorg/concentus/SumSqrShift;->silk_sum_sqr_shift(Lorg/concentus/BoxedValueInt;Lorg/concentus/BoxedValueInt;[SII)V

    .line 97
    iget v3, v3, Lorg/concentus/BoxedValueInt;->Val:I

    aput v3, v2, v13

    .line 98
    iget v3, v7, Lorg/concentus/BoxedValueInt;->Val:I

    .line 101
    aget v7, v2, v13

    invoke-static {v7}, Lorg/concentus/Inlines;->silk_CLZ32(I)I

    move-result v7

    const/4 v4, 0x2

    if-ge v7, v4, :cond_0

    .line 103
    aget v1, v2, v13

    rsub-int/lit8 v7, v7, 0x2

    invoke-static {v1, v7}, Lorg/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v1

    aput v1, v2, v13

    add-int/2addr v3, v7

    :cond_0
    move v7, v3

    .line 106
    aput v7, p9, v13

    .line 107
    new-instance v3, Lorg/concentus/BoxedValueInt;

    aget v1, p9, v13

    invoke-direct {v3, v1}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    const/16 v24, 0x5

    const/16 v25, 0x2

    move/from16 v26, v0

    move-object/from16 v0, p3

    move/from16 v1, v20

    move-object/from16 v23, v2

    move/from16 v2, p6

    move-object/from16 v21, v15

    move-object/from16 v27, v19

    const/4 v15, 0x1

    move-object/from16 v19, v3

    move/from16 v3, v24

    move/from16 v4, v25

    move-object/from16 v18, v5

    move-object/from16 v5, p1

    move-object/from16 v24, v6

    move/from16 v6, p8

    move v15, v7

    const/4 v10, 0x4

    move-object/from16 v7, v19

    .line 108
    invoke-static/range {v0 .. v7}, Lorg/concentus/CorrelateMatrix;->silk_corrMatrix([SIIII[IILorg/concentus/BoxedValueInt;)V

    move-object/from16 v0, v19

    .line 110
    iget v7, v0, Lorg/concentus/BoxedValueInt;->Val:I

    aput v7, p9, v13

    const/4 v5, 0x5

    move-object/from16 v0, p3

    move-object/from16 v2, p3

    move/from16 v3, v26

    move/from16 v4, p6

    move-object/from16 v6, v27

    .line 113
    invoke-static/range {v0 .. v7}, Lorg/concentus/CorrelateMatrix;->silk_corrVector([SI[SIII[II)V

    .line 115
    aget v0, p9, v13

    if-le v0, v15, :cond_1

    .line 116
    aget v1, v23, v13

    sub-int/2addr v0, v15

    invoke-static {v1, v0}, Lorg/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v0

    aput v0, v23, v13

    .line 119
    :cond_1
    aget v0, v23, v13

    if-ltz v0, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    .line 122
    aget v0, v23, v13

    const/16 v1, 0x444

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v0

    move/from16 v15, p8

    const/4 v6, 0x5

    const/4 v7, 0x0

    .line 123
    invoke-static {v9, v15, v7, v7, v6}, Lorg/concentus/Inlines;->MatrixGet([IIIII)I

    move-result v2

    invoke-static {v0, v2, v1}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v0

    .line 124
    invoke-static {v9, v15, v10, v10, v6}, Lorg/concentus/Inlines;->MatrixGet([IIIII)I

    move-result v2

    invoke-static {v0, v2, v1}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v4

    const/4 v5, 0x5

    move-object/from16 v0, p1

    move v1, v15

    move-object/from16 v2, v23

    move v3, v13

    .line 125
    invoke-static/range {v0 .. v5}, Lorg/concentus/RegularizeCorrelations;->silk_regularize_correlations([II[IIII)V

    move-object/from16 v5, v27

    .line 127
    invoke-static {v9, v15, v6, v5, v14}, Lorg/concentus/LinearAlgebra;->silk_solve_LDL([III[I[I)V

    move/from16 v6, v16

    .line 131
    invoke-static {v14, v8, v6}, Lorg/concentus/FindLTP;->silk_fit_LTP([I[SI)V

    .line 134
    aget v16, v23, v13

    const/16 v19, 0x5

    const/16 v20, 0xe

    move-object/from16 v0, p0

    move v1, v6

    move-object/from16 v2, p1

    move v3, v15

    move-object v4, v5

    move-object/from16 v22, v5

    move/from16 v5, v16

    move/from16 v16, v6

    move/from16 v6, v19

    move v10, v7

    move/from16 v7, v20

    invoke-static/range {v0 .. v7}, Lorg/concentus/ResidualEnergy;->silk_residual_energy16_covar([SI[II[IIII)I

    move-result v0

    aput v0, v18, v13

    .line 138
    aget v0, p9, v13

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lorg/concentus/Inlines;->silk_min_int(II)I

    move-result v0

    .line 139
    aget v2, v18, v13

    aget v3, p5, v13

    invoke-static {v2, v3}, Lorg/concentus/Inlines;->silk_SMULWB(II)I

    move-result v2

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, v3}, Lorg/concentus/Inlines;->silk_LSHIFT_SAT32(II)I

    move-result v2

    const/16 v3, 0x28f

    .line 140
    invoke-static {v11, v3}, Lorg/concentus/Inlines;->silk_SMULWB(II)I

    move-result v3

    aget v4, p9, v13

    sub-int/2addr v4, v0

    invoke-static {v3, v4}, Lorg/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v3

    add-int/2addr v2, v3

    const/4 v3, 0x1

    .line 142
    invoke-static {v2, v3}, Lorg/concentus/Inlines;->silk_max(II)I

    move-result v2

    .line 143
    aget v3, p5, v13

    int-to-long v3, v3

    const/16 v5, 0x10

    shl-long/2addr v3, v5

    const-wide/32 v6, 0x7fffffff

    cmp-long v3, v3, v6

    if-gez v3, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    move v3, v10

    :goto_2
    invoke-static {v3}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    .line 145
    aget v3, p5, v13

    invoke-static {v3, v5}, Lorg/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v3

    invoke-static {v3, v2}, Lorg/concentus/Inlines;->silk_DIV32(II)I

    move-result v2

    .line 147
    aget v3, p9, v13

    const/16 v4, 0x1f

    add-int/2addr v3, v4

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1a

    invoke-static {v2, v3}, Lorg/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v0

    move v3, v10

    move v2, v15

    :goto_3
    add-int/lit8 v5, v15, 0x19

    if-ge v2, v5, :cond_4

    .line 153
    aget v5, v9, v2

    invoke-static {v5, v3}, Lorg/concentus/Inlines;->silk_max(II)I

    move-result v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 155
    :cond_4
    invoke-static {v3}, Lorg/concentus/Inlines;->silk_CLZ32(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    if-ltz v2, :cond_5

    const/4 v3, 0x1

    goto :goto_4

    :cond_5
    move v3, v10

    .line 157
    :goto_4
    invoke-static {v3}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    if-ge v2, v4, :cond_6

    const/4 v3, 0x1

    .line 159
    invoke-static {v3, v2}, Lorg/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v2

    invoke-static {v0, v2}, Lorg/concentus/Inlines;->silk_min_32(II)I

    move-result v0

    :cond_6
    const/16 v2, 0x19

    .line 162
    invoke-static {v9, v15, v0, v2}, Lorg/concentus/Inlines;->silk_scale_vector32_Q26_lshift_18([IIII)V

    const/4 v0, 0x5

    .line 165
    invoke-static {v9, v15, v1, v1, v0}, Lorg/concentus/Inlines;->MatrixGet([IIIII)I

    move-result v1

    aput v1, v17, v13

    if-ltz v1, :cond_7

    const/4 v1, 0x1

    goto :goto_5

    :cond_7
    move v1, v10

    .line 167
    :goto_5
    invoke-static {v1}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    add-int v0, v26, v11

    add-int/lit8 v16, v16, 0x5

    add-int/lit8 v13, v13, 0x1

    move/from16 p8, v5

    move v1, v10

    move-object/from16 v5, v18

    move-object/from16 v15, v21

    move-object/from16 v3, v22

    move-object/from16 v2, v23

    move-object/from16 v6, v24

    const/4 v7, 0x4

    move-object/from16 v10, p2

    goto/16 :goto_0

    :cond_8
    move v10, v1

    move-object/from16 v23, v2

    move v1, v4

    move-object/from16 v18, v5

    move-object/from16 v24, v6

    move-object/from16 v21, v15

    const/16 v5, 0x10

    move v0, v10

    move v2, v0

    :goto_6
    if-ge v0, v12, :cond_9

    .line 176
    aget v3, p9, v0

    invoke-static {v3, v2}, Lorg/concentus/Inlines;->silk_max_int(II)I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_9
    move-object/from16 v0, p2

    const/4 v3, 0x4

    if-eqz v0, :cond_c

    const/4 v4, 0x1

    .line 183
    invoke-static {v4}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    move v6, v10

    move v7, v6

    move v9, v7

    :goto_7
    if-ge v6, v12, :cond_a

    .line 186
    aget v11, v23, v6

    aget v13, p5, v6

    invoke-static {v11, v13}, Lorg/concentus/Inlines;->silk_SMULWB(II)I

    move-result v11

    invoke-static {v11, v4}, Lorg/concentus/Inlines;->silk_ADD32(II)I

    move-result v11

    aget v13, p9, v6

    sub-int v13, v2, v13

    add-int/2addr v13, v4

    invoke-static {v11, v13}, Lorg/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v11

    invoke-static {v9, v11}, Lorg/concentus/Inlines;->silk_ADD32(II)I

    move-result v9

    .line 188
    aget v11, v18, v6

    aget v13, p5, v6

    invoke-static {v11, v13}, Lorg/concentus/Inlines;->silk_SMULWB(II)I

    move-result v11

    invoke-static {v11, v4}, Lorg/concentus/Inlines;->silk_ADD32(II)I

    move-result v11

    aget v13, p9, v6

    sub-int v13, v2, v13

    add-int/2addr v13, v4

    invoke-static {v11, v13}, Lorg/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v11

    invoke-static {v7, v11}, Lorg/concentus/Inlines;->silk_ADD32(II)I

    move-result v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 191
    :cond_a
    invoke-static {v7, v4}, Lorg/concentus/Inlines;->silk_max(II)I

    move-result v6

    .line 194
    invoke-static {v9, v6, v5}, Lorg/concentus/Inlines;->silk_DIV32_varQ(III)I

    move-result v4

    .line 195
    invoke-static {v4}, Lorg/concentus/Inlines;->silk_lin2log(I)I

    move-result v5

    add-int/lit16 v5, v5, -0x800

    const/4 v6, 0x3

    invoke-static {v6, v5}, Lorg/concentus/Inlines;->silk_SMULBB(II)I

    move-result v5

    iput v5, v0, Lorg/concentus/BoxedValueInt;->Val:I

    .line 197
    iget v0, v0, Lorg/concentus/BoxedValueInt;->Val:I

    invoke-static {v4}, Lorg/concentus/Inlines;->silk_lin2log(I)I

    move-result v4

    add-int/lit16 v4, v4, -0x800

    invoke-static {v6, v4}, Lorg/concentus/Inlines;->silk_MUL(II)I

    move-result v4

    invoke-static {v4}, Lorg/concentus/Inlines;->silk_SAT16(I)I

    move-result v4

    if-ne v0, v4, :cond_b

    const/4 v0, 0x1

    goto :goto_8

    :cond_b
    move v0, v10

    :goto_8
    invoke-static {v0}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    :cond_c
    move v0, v10

    move v4, v0

    :goto_9
    if-ge v0, v12, :cond_e

    .line 204
    aput v10, v24, v0

    move v5, v4

    :goto_a
    const/4 v6, 0x5

    add-int/lit8 v7, v4, 0x5

    if-ge v5, v7, :cond_d

    .line 206
    aget v6, v24, v0

    aget-short v7, v8, v5

    add-int/2addr v6, v7

    aput v6, v24, v0

    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_d
    add-int/lit8 v0, v0, 0x1

    move v4, v7

    goto :goto_9

    :cond_e
    move v0, v10

    move v4, v0

    move v5, v4

    :goto_b
    if-ge v0, v12, :cond_f

    .line 217
    aget v6, v24, v0

    invoke-static {v6}, Lorg/concentus/Inlines;->silk_abs(I)I

    move-result v6

    invoke-static {v4, v6}, Lorg/concentus/Inlines;->silk_max_32(II)I

    move-result v4

    .line 220
    aget v6, v17, v0

    invoke-static {v6}, Lorg/concentus/Inlines;->silk_CLZ32(I)I

    move-result v6

    rsub-int/lit8 v6, v6, 0x20

    aget v7, p9, v0

    add-int/2addr v6, v7

    sub-int/2addr v6, v2

    invoke-static {v5, v6}, Lorg/concentus/Inlines;->silk_max_32(II)I

    move-result v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_f
    const v0, 0x28000

    if-gt v4, v0, :cond_10

    const/4 v0, 0x1

    goto :goto_c

    :cond_10
    move v0, v10

    .line 224
    :goto_c
    invoke-static {v0}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    add-int/lit8 v5, v5, 0x20

    .line 227
    invoke-static {v4}, Lorg/concentus/Inlines;->silk_CLZ32(I)I

    move-result v0

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0xe

    add-int/lit8 v0, v2, 0x1d

    sub-int/2addr v5, v0

    .line 232
    invoke-static {v5, v10}, Lorg/concentus/Inlines;->silk_max_int(II)I

    move-result v0

    add-int/2addr v2, v0

    const/16 v0, 0x106

    .line 236
    invoke-static {v0, v2}, Lorg/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v0

    const/4 v4, 0x1

    add-int/2addr v0, v4

    move v4, v10

    move v5, v4

    :goto_d
    if-ge v4, v12, :cond_11

    .line 241
    aget v6, v17, v4

    aget v7, p9, v4

    sub-int v7, v2, v7

    invoke-static {v6, v7}, Lorg/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v6

    invoke-static {v0, v6}, Lorg/concentus/Inlines;->silk_ADD32(II)I

    move-result v0

    .line 243
    aget v6, v17, v4

    aget v7, p9, v4

    sub-int v7, v2, v7

    invoke-static {v6, v7}, Lorg/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v6

    aget v7, v24, v4

    invoke-static {v6, v7}, Lorg/concentus/Inlines;->silk_SMULWW(II)I

    move-result v6

    invoke-static {v6, v1}, Lorg/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v6

    invoke-static {v5, v6}, Lorg/concentus/Inlines;->silk_ADD32(II)I

    move-result v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_11
    const/16 v2, 0xc

    .line 246
    invoke-static {v5, v0, v2}, Lorg/concentus/Inlines;->silk_DIV32_varQ(III)I

    move-result v0

    move v2, v10

    move v4, v2

    :goto_e
    if-ge v2, v12, :cond_15

    .line 251
    aget v5, p9, v2

    rsub-int/lit8 v6, v5, 0x2

    if-lez v6, :cond_12

    .line 252
    aget v6, v17, v2

    rsub-int/lit8 v5, v5, 0x2

    invoke-static {v6, v5}, Lorg/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v5

    goto :goto_f

    .line 254
    :cond_12
    aget v6, v17, v2

    add-int/lit8 v5, v5, -0x2

    invoke-static {v6, v5}, Lorg/concentus/Inlines;->silk_LSHIFT_SAT32(II)I

    move-result v5

    :goto_f
    const/16 v6, 0xa

    const v7, 0x666667

    .line 260
    invoke-static {v7, v6}, Lorg/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v6

    add-int/2addr v6, v5

    .line 258
    invoke-static {v7, v6}, Lorg/concentus/Inlines;->silk_DIV32(II)I

    move-result v5

    aget v6, v24, v2

    .line 261
    invoke-static {v6, v1}, Lorg/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v6

    invoke-static {v0, v6}, Lorg/concentus/Inlines;->silk_SUB_SAT32(II)I

    move-result v6

    invoke-static {v6, v3}, Lorg/concentus/Inlines;->silk_LSHIFT_SAT32(II)I

    move-result v6

    .line 257
    invoke-static {v5, v6}, Lorg/concentus/Inlines;->silk_MUL(II)I

    move-result v5

    move v6, v10

    move v7, v6

    :goto_10
    const/4 v9, 0x5

    if-ge v6, v9, :cond_13

    add-int v9, v4, v6

    .line 266
    aget-short v9, v8, v9

    const/16 v11, 0x666

    invoke-static {v9, v11}, Lorg/concentus/Inlines;->silk_max_16(SS)S

    move-result v9

    aput v9, v21, v6

    add-int/2addr v7, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    .line 271
    :cond_13
    invoke-static {v5, v7}, Lorg/concentus/Inlines;->silk_DIV32(II)I

    move-result v5

    move v6, v10

    const/4 v7, 0x5

    :goto_11
    if-ge v6, v7, :cond_14

    add-int v9, v4, v6

    .line 274
    aget-short v11, v8, v9

    invoke-static {v5, v3}, Lorg/concentus/Inlines;->silk_LSHIFT_SAT32(II)I

    move-result v13

    aget v14, v21, v6

    invoke-static {v13, v14}, Lorg/concentus/Inlines;->silk_SMULWB(II)I

    move-result v13

    add-int/2addr v11, v13

    const/16 v13, -0x3e80

    const/16 v14, 0x6d60

    invoke-static {v11, v13, v14}, Lorg/concentus/Inlines;->silk_LIMIT_32(III)I

    move-result v11

    int-to-short v11, v11

    aput-short v11, v8, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    :cond_14
    add-int/lit8 v4, v4, 0x5

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_15
    return-void
.end method

.method static silk_fit_LTP([I[SI)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    add-int v1, p2, v0

    .line 293
    aget v2, p0, v0

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lorg/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v2

    invoke-static {v2}, Lorg/concentus/Inlines;->silk_SAT16(I)I

    move-result v2

    int-to-short v2, v2

    aput-short v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
