.class Lorg/concentus/BurgModified;
.super Ljava/lang/Object;
.source "BurgModified.java"


# static fields
.field private static final MAX_FRAME_SIZE:I = 0x180

.field private static final MAX_RSHIFTS:I = 0x7

.field private static final MIN_RSHIFTS:I = -0x10

.field private static final N_BITS_HEAD_ROOM:I = 0x2

.field private static final QA:I = 0x19


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static silk_burg_modified(Lorg/concentus/BoxedValueInt;Lorg/concentus/BoxedValueInt;[I[SIIIII)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    move/from16 v14, p8

    const/16 v15, 0x10

    .line 58
    new-array v8, v15, [I

    .line 59
    new-array v7, v15, [I

    .line 60
    new-array v6, v15, [I

    const/16 v5, 0x11

    .line 61
    new-array v4, v5, [I

    .line 62
    new-array v3, v5, [I

    .line 63
    new-array v2, v15, [I

    mul-int v5, v12, v13

    const/16 v15, 0x180

    if-gt v5, v15, :cond_0

    const/4 v15, 0x1

    goto :goto_0

    :cond_0
    const/4 v15, 0x0

    .line 66
    :goto_0
    invoke-static {v15}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    move-object v15, v2

    .line 69
    invoke-static {v9, v10, v9, v10, v5}, Lorg/concentus/Inlines;->silk_inner_prod16_aligned_64([SI[SII)J

    move-result-wide v1

    .line 70
    invoke-static {v1, v2}, Lorg/concentus/Inlines;->silk_CLZ64(J)I

    move-result v5

    rsub-int/lit8 v5, v5, 0x23

    move-object/from16 v18, v15

    const/4 v15, 0x7

    if-le v5, v15, :cond_1

    move v5, v15

    :cond_1
    const/16 v15, -0x10

    if-ge v5, v15, :cond_2

    goto :goto_1

    :cond_2
    move v15, v5

    :goto_1
    if-lez v15, :cond_3

    .line 80
    invoke-static {v1, v2, v15}, Lorg/concentus/Inlines;->silk_RSHIFT64(JI)J

    move-result-wide v1

    long-to-int v1, v1

    goto :goto_2

    :cond_3
    long-to-int v1, v1

    neg-int v2, v15

    .line 82
    invoke-static {v1, v2}, Lorg/concentus/Inlines;->silk_LSHIFT32(II)I

    move-result v1

    :goto_2
    const v5, 0xa7c6

    .line 85
    invoke-static {v5, v1}, Lorg/concentus/Inlines;->silk_SMMUL(II)I

    move-result v2

    add-int/2addr v2, v1

    const/16 v17, 0x1

    add-int/lit8 v2, v2, 0x1

    const/4 v5, 0x0

    aput v2, v4, v5

    aput v2, v3, v5

    const/16 v2, 0x10

    .line 87
    invoke-static {v8, v5, v2}, Lorg/concentus/Arrays;->MemSet([III)V

    if-lez v15, :cond_6

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v13, :cond_5

    mul-int v5, v2, v12

    add-int/2addr v5, v10

    move-object/from16 v19, v3

    const/4 v3, 0x1

    :goto_4
    move-object/from16 v20, v4

    add-int/lit8 v4, v14, 0x1

    if-ge v3, v4, :cond_4

    add-int/lit8 v4, v3, -0x1

    .line 92
    aget v18, v8, v4

    move-object/from16 v21, v6

    add-int v6, v5, v3

    move-object/from16 v22, v7

    sub-int v7, v12, v3

    .line 93
    invoke-static {v9, v5, v9, v6, v7}, Lorg/concentus/Inlines;->silk_inner_prod16_aligned_64([SI[SII)J

    move-result-wide v6

    .line 92
    invoke-static {v6, v7, v15}, Lorg/concentus/Inlines;->silk_RSHIFT64(JI)J

    move-result-wide v6

    long-to-int v6, v6

    add-int v18, v18, v6

    aput v18, v8, v4

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v4, v20

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    goto :goto_4

    :cond_4
    move-object/from16 v21, v6

    move-object/from16 v22, v7

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    goto :goto_3

    :cond_5
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v16, v6

    move-object v0, v7

    move-object v11, v8

    goto/16 :goto_9

    :cond_6
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    const/4 v7, 0x0

    :goto_5
    if-ge v7, v13, :cond_a

    mul-int v2, v7, v12

    add-int v23, v10, v2

    add-int/lit8 v5, v23, 0x1

    sub-int v24, v12, v14

    move-object/from16 v2, p3

    move/from16 v3, v23

    move-object/from16 v4, p3

    const/16 v0, 0x11

    const v6, 0xa7c6

    move v0, v6

    move-object/from16 v16, v21

    move-object/from16 v6, v18

    move-object/from16 v0, v22

    move/from16 v22, v7

    move/from16 v7, v24

    move-object v11, v8

    move/from16 v8, p8

    .line 101
    invoke-static/range {v2 .. v8}, Lorg/concentus/CeltPitchXCorr;->pitch_xcorr([SI[SI[III)I

    const/4 v2, 0x1

    :goto_6
    add-int/lit8 v3, v14, 0x1

    if-ge v2, v3, :cond_8

    add-int v3, v2, v12

    sub-int/2addr v3, v14

    const/4 v4, 0x0

    :goto_7
    if-ge v3, v12, :cond_7

    add-int v5, v23, v3

    .line 104
    aget-short v6, v9, v5

    sub-int/2addr v5, v2

    aget-short v5, v9, v5

    invoke-static {v4, v6, v5}, Lorg/concentus/Inlines;->MAC16_16(ISS)I

    move-result v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_7
    add-int/lit8 v3, v2, -0x1

    .line 106
    aget v5, v18, v3

    add-int/2addr v5, v4

    aput v5, v18, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_8
    const/4 v2, 0x1

    :goto_8
    if-ge v2, v3, :cond_9

    add-int/lit8 v4, v2, -0x1

    .line 109
    aget v5, v11, v4

    aget v6, v18, v4

    neg-int v7, v15

    invoke-static {v6, v7}, Lorg/concentus/Inlines;->silk_LSHIFT32(II)I

    move-result v6

    add-int/2addr v5, v6

    aput v5, v11, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_9
    add-int/lit8 v7, v22, 0x1

    move-object/from16 v22, v0

    move-object v8, v11

    move-object/from16 v21, v16

    move-object/from16 v0, p0

    move/from16 v11, p5

    goto :goto_5

    :cond_a
    move-object v11, v8

    move-object/from16 v16, v21

    move-object/from16 v0, v22

    :goto_9
    const/4 v2, 0x0

    const/16 v3, 0x10

    .line 113
    invoke-static {v11, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const v3, 0xa7c6

    .line 116
    invoke-static {v3, v1}, Lorg/concentus/Inlines;->silk_SMMUL(II)I

    move-result v4

    add-int/2addr v4, v1

    const/4 v3, 0x1

    add-int/2addr v4, v3

    aput v4, v20, v2

    aput v4, v19, v2

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x0

    :goto_a
    if-ge v5, v14, :cond_1b

    const/4 v8, -0x2

    if-le v15, v8, :cond_e

    const/4 v8, 0x0

    :goto_b
    if-ge v8, v13, :cond_d

    mul-int v18, v8, v12

    add-int v18, v10, v18

    add-int v22, v18, v5

    .line 129
    aget-short v6, v9, v22

    rsub-int/lit8 v2, v15, 0x10

    invoke-static {v6, v2}, Lorg/concentus/Inlines;->silk_LSHIFT32(II)I

    move-result v6

    neg-int v6, v6

    add-int v18, v18, v12

    sub-int v18, v18, v5

    add-int/lit8 v25, v18, -0x1

    .line 131
    aget-short v7, v9, v25

    invoke-static {v7, v2}, Lorg/concentus/Inlines;->silk_LSHIFT32(II)I

    move-result v2

    neg-int v2, v2

    .line 133
    aget-short v7, v9, v22

    move/from16 v26, v3

    const/16 v3, 0x9

    invoke-static {v7, v3}, Lorg/concentus/Inlines;->silk_LSHIFT32(II)I

    move-result v7

    move/from16 v27, v7

    .line 135
    aget-short v7, v9, v25

    invoke-static {v7, v3}, Lorg/concentus/Inlines;->silk_LSHIFT32(II)I

    move-result v7

    move/from16 v25, v1

    move v3, v7

    move/from16 v7, v27

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v5, :cond_b

    .line 138
    aget v14, v11, v1

    sub-int v27, v22, v1

    const/16 v17, 0x1

    add-int/lit8 v27, v27, -0x1

    move/from16 v28, v4

    aget-short v4, v9, v27

    invoke-static {v14, v6, v4}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v4

    aput v4, v11, v1

    .line 140
    aget v4, v0, v1

    add-int v14, v18, v1

    move/from16 v29, v6

    aget-short v6, v9, v14

    invoke-static {v4, v2, v6}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v4

    aput v4, v0, v1

    .line 142
    aget v4, v16, v1

    .line 143
    aget-short v6, v9, v27

    invoke-static {v7, v4, v6}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v7

    .line 145
    aget-short v6, v9, v14

    invoke-static {v3, v4, v6}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v3

    add-int/lit8 v1, v1, 0x1

    move/from16 v14, p8

    move/from16 v4, v28

    move/from16 v6, v29

    goto :goto_c

    :cond_b
    move/from16 v28, v4

    neg-int v1, v7

    rsub-int/lit8 v2, v15, 0x7

    .line 148
    invoke-static {v1, v2}, Lorg/concentus/Inlines;->silk_LSHIFT32(II)I

    move-result v1

    neg-int v3, v3

    .line 150
    invoke-static {v3, v2}, Lorg/concentus/Inlines;->silk_LSHIFT32(II)I

    move-result v2

    const/4 v3, 0x0

    :goto_d
    if-gt v3, v5, :cond_c

    .line 153
    aget v4, v20, v3

    sub-int v6, v22, v3

    aget-short v6, v9, v6

    invoke-static {v4, v1, v6}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v4

    aput v4, v20, v3

    .line 155
    aget v4, v19, v3

    add-int v6, v18, v3

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    aget-short v6, v9, v6

    invoke-static {v4, v2, v6}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v4

    aput v4, v19, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_c
    add-int/lit8 v8, v8, 0x1

    move/from16 v14, p8

    move/from16 v1, v25

    move/from16 v3, v26

    move/from16 v4, v28

    goto/16 :goto_b

    :cond_d
    move/from16 v25, v1

    move/from16 v26, v3

    move/from16 v28, v4

    goto/16 :goto_11

    :cond_e
    move/from16 v25, v1

    move/from16 v26, v3

    move/from16 v28, v4

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v13, :cond_11

    mul-int v2, v1, v12

    add-int/2addr v2, v10

    add-int v3, v2, v5

    .line 162
    aget-short v4, v9, v3

    neg-int v6, v15

    invoke-static {v4, v6}, Lorg/concentus/Inlines;->silk_LSHIFT32(II)I

    move-result v4

    neg-int v4, v4

    add-int/2addr v2, v12

    sub-int/2addr v2, v5

    add-int/lit8 v7, v2, -0x1

    .line 164
    aget-short v8, v9, v7

    invoke-static {v8, v6}, Lorg/concentus/Inlines;->silk_LSHIFT32(II)I

    move-result v8

    neg-int v8, v8

    .line 166
    aget-short v14, v9, v3

    const/16 v10, 0x11

    invoke-static {v14, v10}, Lorg/concentus/Inlines;->silk_LSHIFT32(II)I

    move-result v14

    .line 168
    aget-short v7, v9, v7

    invoke-static {v7, v10}, Lorg/concentus/Inlines;->silk_LSHIFT32(II)I

    move-result v7

    const/4 v10, 0x0

    :goto_f
    if-ge v10, v5, :cond_f

    .line 171
    aget v12, v11, v10

    sub-int v18, v3, v10

    const/16 v17, 0x1

    add-int/lit8 v18, v18, -0x1

    aget-short v13, v9, v18

    invoke-static {v12, v4, v13}, Lorg/concentus/Inlines;->silk_MLA(III)I

    move-result v12

    aput v12, v11, v10

    .line 173
    aget v12, v0, v10

    add-int v13, v2, v10

    move/from16 v22, v4

    aget-short v4, v9, v13

    invoke-static {v12, v8, v4}, Lorg/concentus/Inlines;->silk_MLA(III)I

    move-result v4

    aput v4, v0, v10

    .line 175
    aget v4, v16, v10

    const/16 v12, 0x8

    invoke-static {v4, v12}, Lorg/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v4

    .line 177
    aget-short v12, v9, v18

    invoke-static {v14, v12, v4}, Lorg/concentus/Inlines;->silk_MLA(III)I

    move-result v14

    .line 179
    aget-short v12, v9, v13

    invoke-static {v7, v12, v4}, Lorg/concentus/Inlines;->silk_MLA(III)I

    move-result v7

    add-int/lit8 v10, v10, 0x1

    move/from16 v12, p6

    move/from16 v13, p7

    move/from16 v4, v22

    goto :goto_f

    :cond_f
    neg-int v4, v14

    neg-int v7, v7

    const/4 v8, 0x0

    :goto_10
    if-gt v8, v5, :cond_10

    .line 187
    aget v10, v20, v8

    sub-int v12, v3, v8

    aget-short v12, v9, v12

    add-int/lit8 v13, v6, -0x1

    .line 188
    invoke-static {v12, v13}, Lorg/concentus/Inlines;->silk_LSHIFT32(II)I

    move-result v12

    .line 187
    invoke-static {v10, v4, v12}, Lorg/concentus/Inlines;->silk_SMLAWW(III)I

    move-result v10

    aput v10, v20, v8

    .line 190
    aget v10, v19, v8

    add-int v12, v2, v8

    const/4 v14, 0x1

    sub-int/2addr v12, v14

    aget-short v12, v9, v12

    .line 191
    invoke-static {v12, v13}, Lorg/concentus/Inlines;->silk_LSHIFT32(II)I

    move-result v12

    .line 190
    invoke-static {v10, v7, v12}, Lorg/concentus/Inlines;->silk_SMLAWW(III)I

    move-result v10

    aput v10, v19, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_10

    :cond_10
    add-int/lit8 v1, v1, 0x1

    move/from16 v10, p4

    move/from16 v12, p6

    move/from16 v13, p7

    goto/16 :goto_e

    .line 198
    :cond_11
    :goto_11
    aget v1, v11, v5

    .line 200
    aget v2, v0, v5

    const/4 v3, 0x0

    .line 204
    aget v4, v19, v3

    aget v6, v20, v3

    invoke-static {v4, v6}, Lorg/concentus/Inlines;->silk_ADD32(II)I

    move-result v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_12
    if-ge v4, v5, :cond_12

    .line 207
    aget v7, v16, v4

    .line 208
    invoke-static {v7}, Lorg/concentus/Inlines;->silk_abs(I)I

    move-result v8

    invoke-static {v8}, Lorg/concentus/Inlines;->silk_CLZ32(I)I

    move-result v8

    const/4 v10, 0x1

    sub-int/2addr v8, v10

    const/4 v10, 0x7

    .line 209
    invoke-static {v10, v8}, Lorg/concentus/Inlines;->silk_min(II)I

    move-result v8

    .line 210
    invoke-static {v7, v8}, Lorg/concentus/Inlines;->silk_LSHIFT32(II)I

    move-result v7

    sub-int v12, v5, v4

    add-int/lit8 v13, v12, -0x1

    .line 213
    aget v14, v0, v13

    invoke-static {v14, v7}, Lorg/concentus/Inlines;->silk_SMMUL(II)I

    move-result v14

    rsub-int/lit8 v8, v8, 0x7

    invoke-static {v1, v14, v8}, Lorg/concentus/Inlines;->silk_ADD_LSHIFT32(III)I

    move-result v1

    .line 215
    aget v13, v11, v13

    invoke-static {v13, v7}, Lorg/concentus/Inlines;->silk_SMMUL(II)I

    move-result v13

    invoke-static {v2, v13, v8}, Lorg/concentus/Inlines;->silk_ADD_LSHIFT32(III)I

    move-result v2

    .line 217
    aget v12, v19, v12

    invoke-static {v12, v7}, Lorg/concentus/Inlines;->silk_SMMUL(II)I

    move-result v12

    invoke-static {v6, v12, v8}, Lorg/concentus/Inlines;->silk_ADD_LSHIFT32(III)I

    move-result v6

    add-int/lit8 v4, v4, 0x1

    .line 219
    aget v12, v19, v4

    aget v13, v20, v4

    invoke-static {v12, v13}, Lorg/concentus/Inlines;->silk_ADD32(II)I

    move-result v12

    invoke-static {v12, v7}, Lorg/concentus/Inlines;->silk_SMMUL(II)I

    move-result v7

    invoke-static {v3, v7, v8}, Lorg/concentus/Inlines;->silk_ADD_LSHIFT32(III)I

    move-result v3

    goto :goto_12

    :cond_12
    const/4 v10, 0x7

    add-int/lit8 v4, v5, 0x1

    .line 223
    aput v1, v20, v4

    .line 225
    aput v2, v19, v4

    .line 227
    invoke-static {v6, v2}, Lorg/concentus/Inlines;->silk_ADD32(II)I

    move-result v1

    neg-int v1, v1

    const/4 v2, 0x1

    .line 229
    invoke-static {v1, v2}, Lorg/concentus/Inlines;->silk_LSHIFT32(II)I

    move-result v1

    .line 233
    invoke-static {v1}, Lorg/concentus/Inlines;->silk_abs(I)I

    move-result v2

    if-ge v2, v3, :cond_13

    const/16 v2, 0x1f

    .line 234
    invoke-static {v1, v3, v2}, Lorg/concentus/Inlines;->silk_DIV32_varQ(III)I

    move-result v2

    goto :goto_13

    :cond_13
    if-lez v1, :cond_14

    const v2, 0x7fffffff

    goto :goto_13

    :cond_14
    const/high16 v2, -0x80000000

    .line 240
    :goto_13
    invoke-static {v2, v2}, Lorg/concentus/Inlines;->silk_SMMUL(II)I

    move-result v3

    const/high16 v6, 0x40000000    # 2.0f

    sub-int v3, v6, v3

    move/from16 v7, v28

    .line 241
    invoke-static {v7, v3}, Lorg/concentus/Inlines;->silk_SMMUL(II)I

    move-result v3

    const/4 v8, 0x2

    invoke-static {v3, v8}, Lorg/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v3

    move/from16 v8, p5

    if-gt v3, v8, :cond_16

    const/16 v2, 0x1e

    .line 244
    invoke-static {v8, v7, v2}, Lorg/concentus/Inlines;->silk_DIV32_varQ(III)I

    move-result v2

    sub-int v2, v6, v2

    .line 246
    invoke-static {v2}, Lorg/concentus/Inlines;->silk_SQRT_APPROX(I)I

    move-result v3

    .line 249
    invoke-static {v2, v3}, Lorg/concentus/Inlines;->silk_DIV32(II)I

    move-result v2

    add-int/2addr v3, v2

    const/4 v2, 0x1

    invoke-static {v3, v2}, Lorg/concentus/Inlines;->silk_RSHIFT32(II)I

    move-result v3

    const/16 v12, 0x10

    .line 251
    invoke-static {v3, v12}, Lorg/concentus/Inlines;->silk_LSHIFT32(II)I

    move-result v2

    if-gez v1, :cond_15

    neg-int v1, v2

    move v2, v1

    :cond_15
    move v1, v8

    const/4 v3, 0x1

    goto :goto_14

    :cond_16
    const/16 v12, 0x10

    move v1, v3

    move/from16 v3, v26

    :goto_14
    const/4 v7, 0x0

    :goto_15
    shr-int/lit8 v13, v4, 0x1

    if-ge v7, v13, :cond_17

    .line 265
    aget v13, v16, v7

    sub-int v14, v5, v7

    const/4 v6, 0x1

    sub-int/2addr v14, v6

    .line 267
    aget v10, v16, v14

    .line 269
    invoke-static {v10, v2}, Lorg/concentus/Inlines;->silk_SMMUL(II)I

    move-result v12

    invoke-static {v13, v12, v6}, Lorg/concentus/Inlines;->silk_ADD_LSHIFT32(III)I

    move-result v12

    aput v12, v16, v7

    .line 271
    invoke-static {v13, v2}, Lorg/concentus/Inlines;->silk_SMMUL(II)I

    move-result v12

    invoke-static {v10, v12, v6}, Lorg/concentus/Inlines;->silk_ADD_LSHIFT32(III)I

    move-result v10

    aput v10, v16, v14

    add-int/lit8 v7, v7, 0x1

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v10, 0x7

    const/16 v12, 0x10

    goto :goto_15

    :cond_17
    const/4 v6, 0x6

    .line 274
    invoke-static {v2, v6}, Lorg/concentus/Inlines;->silk_RSHIFT32(II)I

    move-result v6

    aput v6, v16, v5

    if-eqz v3, :cond_19

    move/from16 v6, p8

    :goto_16
    if-ge v4, v6, :cond_18

    const/4 v0, 0x0

    .line 280
    aput v0, v16, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    :cond_18
    move v4, v1

    goto :goto_18

    :cond_19
    move/from16 v6, p8

    const/4 v7, 0x0

    :goto_17
    if-gt v7, v4, :cond_1a

    .line 287
    aget v10, v20, v7

    sub-int v12, v5, v7

    const/4 v13, 0x1

    add-int/2addr v12, v13

    .line 289
    aget v14, v19, v12

    move-object/from16 v22, v0

    .line 291
    invoke-static {v14, v2}, Lorg/concentus/Inlines;->silk_SMMUL(II)I

    move-result v0

    invoke-static {v10, v0, v13}, Lorg/concentus/Inlines;->silk_ADD_LSHIFT32(III)I

    move-result v0

    aput v0, v20, v7

    .line 293
    invoke-static {v10, v2}, Lorg/concentus/Inlines;->silk_SMMUL(II)I

    move-result v0

    invoke-static {v14, v0, v13}, Lorg/concentus/Inlines;->silk_ADD_LSHIFT32(III)I

    move-result v0

    aput v0, v19, v12

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v22

    goto :goto_17

    :cond_1a
    move/from16 v10, p4

    move/from16 v12, p6

    move/from16 v13, p7

    move v5, v4

    move v14, v6

    move v4, v1

    move/from16 v1, v25

    goto/16 :goto_a

    :cond_1b
    move/from16 v25, v1

    move/from16 v26, v3

    move v7, v4

    move v6, v14

    :goto_18
    if-eqz v3, :cond_1f

    const/4 v5, 0x0

    :goto_19
    if-ge v5, v6, :cond_1c

    .line 301
    aget v0, v16, v5

    const/16 v1, 0x9

    invoke-static {v0, v1}, Lorg/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v0

    neg-int v0, v0

    aput v0, p2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    :cond_1c
    if-lez v15, :cond_1d

    move/from16 v0, p7

    move/from16 v1, v25

    const/4 v5, 0x0

    :goto_1a
    if-ge v5, v0, :cond_1e

    mul-int v2, v5, p6

    add-int v2, p4, v2

    .line 307
    invoke-static {v9, v2, v9, v2, v6}, Lorg/concentus/Inlines;->silk_inner_prod16_aligned_64([SI[SII)J

    move-result-wide v2

    invoke-static {v2, v3, v15}, Lorg/concentus/Inlines;->silk_RSHIFT64(JI)J

    move-result-wide v2

    long-to-int v2, v2

    sub-int/2addr v1, v2

    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    :cond_1d
    move/from16 v0, p7

    move/from16 v1, v25

    const/4 v5, 0x0

    :goto_1b
    if-ge v5, v0, :cond_1e

    mul-int v2, v5, p6

    add-int v2, p4, v2

    .line 312
    invoke-static {v9, v2, v6}, Lorg/concentus/Inlines;->silk_inner_prod_self([SII)I

    move-result v2

    neg-int v3, v15

    invoke-static {v2, v3}, Lorg/concentus/Inlines;->silk_LSHIFT32(II)I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    .line 316
    :cond_1e
    invoke-static {v4, v1}, Lorg/concentus/Inlines;->silk_SMMUL(II)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lorg/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v0

    move-object/from16 v1, p0

    iput v0, v1, Lorg/concentus/BoxedValueInt;->Val:I

    const/4 v0, 0x0

    rsub-int/lit8 v1, v15, 0x0

    move-object/from16 v0, p1

    .line 317
    iput v1, v0, Lorg/concentus/BoxedValueInt;->Val:I

    goto :goto_1d

    :cond_1f
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v2, 0x0

    .line 320
    aget v3, v20, v2

    const/high16 v4, 0x10000

    :goto_1c
    if-ge v2, v6, :cond_20

    .line 325
    aget v5, v16, v2

    const/16 v7, 0x9

    invoke-static {v5, v7}, Lorg/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v5

    add-int/lit8 v8, v2, 0x1

    .line 327
    aget v9, v20, v8

    invoke-static {v3, v9, v5}, Lorg/concentus/Inlines;->silk_SMLAWW(III)I

    move-result v3

    .line 329
    invoke-static {v4, v5, v5}, Lorg/concentus/Inlines;->silk_SMLAWW(III)I

    move-result v4

    neg-int v5, v5

    .line 331
    aput v5, p2, v2

    move v2, v8

    goto :goto_1c

    :cond_20
    move/from16 v2, v25

    const v5, 0xa7c6

    .line 333
    invoke-static {v5, v2}, Lorg/concentus/Inlines;->silk_SMMUL(II)I

    move-result v2

    neg-int v4, v4

    invoke-static {v3, v2, v4}, Lorg/concentus/Inlines;->silk_SMLAWW(III)I

    move-result v2

    iput v2, v1, Lorg/concentus/BoxedValueInt;->Val:I

    neg-int v1, v15

    .line 334
    iput v1, v0, Lorg/concentus/BoxedValueInt;->Val:I

    :goto_1d
    return-void
.end method
