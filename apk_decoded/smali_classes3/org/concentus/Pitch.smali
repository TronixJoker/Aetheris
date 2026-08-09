.class Lorg/concentus/Pitch;
.super Ljava/lang/Object;
.source "Pitch.java"


# static fields
.field private static final second_check:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    .line 277
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/concentus/Pitch;->second_check:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x3
        0x2
        0x3
        0x2
        0x5
        0x2
        0x3
        0x2
        0x3
        0x2
        0x5
        0x2
        0x3
        0x2
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static celt_fir5([I[I[II[I)V
    .locals 18

    const/4 v0, 0x0

    .line 95
    aget v1, p1, v0

    const/4 v2, 0x1

    .line 96
    aget v3, p1, v2

    const/4 v4, 0x2

    .line 97
    aget v5, p1, v4

    const/4 v6, 0x3

    .line 98
    aget v7, p1, v6

    const/4 v8, 0x4

    .line 99
    aget v9, p1, v8

    .line 100
    aget v10, p4, v0

    .line 101
    aget v11, p4, v2

    .line 102
    aget v12, p4, v4

    .line 103
    aget v13, p4, v6

    .line 104
    aget v14, p4, v8

    move/from16 v15, p3

    move v8, v0

    :goto_0
    if-ge v8, v15, :cond_0

    .line 106
    aget v16, p0, v8

    invoke-static/range {v16 .. v16}, Lorg/concentus/Inlines;->EXTEND32(I)I

    move-result v6

    const/16 v4, 0xc

    invoke-static {v6, v4}, Lorg/concentus/Inlines;->SHL32(II)I

    move-result v6

    .line 107
    invoke-static {v6, v1, v10}, Lorg/concentus/Inlines;->MAC16_16(III)I

    move-result v6

    .line 108
    invoke-static {v6, v3, v11}, Lorg/concentus/Inlines;->MAC16_16(III)I

    move-result v6

    .line 109
    invoke-static {v6, v5, v12}, Lorg/concentus/Inlines;->MAC16_16(III)I

    move-result v6

    .line 110
    invoke-static {v6, v7, v13}, Lorg/concentus/Inlines;->MAC16_16(III)I

    move-result v6

    .line 111
    invoke-static {v6, v9, v14}, Lorg/concentus/Inlines;->MAC16_16(III)I

    move-result v6

    .line 116
    aget v14, p0, v8

    .line 117
    invoke-static {v6, v4}, Lorg/concentus/Inlines;->ROUND16(II)I

    move-result v4

    aput v4, p2, v8

    add-int/lit8 v8, v8, 0x1

    const/4 v4, 0x2

    const/4 v6, 0x3

    move/from16 v17, v11

    move v11, v10

    move v10, v14

    move v14, v13

    move v13, v12

    move/from16 v12, v17

    goto :goto_0

    .line 119
    :cond_0
    aput v10, p4, v0

    .line 120
    aput v11, p4, v2

    const/4 v0, 0x2

    .line 121
    aput v12, p4, v0

    const/4 v0, 0x3

    .line 122
    aput v13, p4, v0

    const/4 v0, 0x4

    .line 123
    aput v14, p4, v0

    return-void
.end method

.method static find_best_pitch([I[III[III)V
    .locals 15

    move/from16 v0, p2

    move/from16 v1, p5

    .line 49
    invoke-static/range {p6 .. p6}, Lorg/concentus/Inlines;->celt_ilog2(I)I

    move-result v2

    add-int/lit8 v2, v2, -0xe

    const/4 v3, 0x0

    .line 55
    aput v3, p4, v3

    const/4 v4, 0x1

    .line 56
    aput v4, p4, v4

    move v5, v3

    move v6, v4

    :goto_0
    if-ge v5, v0, :cond_0

    .line 58
    aget v7, p1, v5

    invoke-static {v7, v7}, Lorg/concentus/Inlines;->MULT16_16(II)I

    move-result v7

    invoke-static {v7, v1}, Lorg/concentus/Inlines;->SHR32(II)I

    move-result v7

    invoke-static {v6, v7}, Lorg/concentus/Inlines;->ADD32(II)I

    move-result v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, -0x1

    move/from16 v8, p3

    move v9, v3

    move v10, v9

    move v11, v10

    move v7, v6

    move v6, v5

    :goto_1
    if-ge v9, v8, :cond_3

    .line 61
    aget v12, p0, v9

    if-lez v12, :cond_2

    .line 64
    invoke-static {v12, v2}, Lorg/concentus/Inlines;->VSHR32(II)I

    move-result v12

    invoke-static {v12}, Lorg/concentus/Inlines;->EXTRACT16(I)S

    move-result v12

    .line 65
    invoke-static {v12, v12}, Lorg/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v12

    .line 66
    invoke-static {v12, v10}, Lorg/concentus/Inlines;->MULT16_32_Q15(II)I

    move-result v13

    invoke-static {v5, v7}, Lorg/concentus/Inlines;->MULT16_32_Q15(II)I

    move-result v14

    if-le v13, v14, :cond_2

    .line 67
    invoke-static {v12, v11}, Lorg/concentus/Inlines;->MULT16_32_Q15(II)I

    move-result v5

    invoke-static {v6, v7}, Lorg/concentus/Inlines;->MULT16_32_Q15(II)I

    move-result v10

    if-le v5, v10, :cond_1

    .line 70
    aget v5, p4, v3

    aput v5, p4, v4

    .line 73
    aput v9, p4, v3

    move v5, v6

    move v10, v11

    move v6, v12

    move v11, v7

    goto :goto_2

    .line 77
    :cond_1
    aput v9, p4, v4

    move v10, v7

    move v5, v12

    :cond_2
    :goto_2
    add-int v12, v9, v0

    .line 82
    aget v12, p1, v12

    invoke-static {v12, v12}, Lorg/concentus/Inlines;->MULT16_16(II)I

    move-result v12

    invoke-static {v12, v1}, Lorg/concentus/Inlines;->SHR32(II)I

    move-result v12

    aget v13, p1, v9

    invoke-static {v13, v13}, Lorg/concentus/Inlines;->MULT16_16(II)I

    move-result v13

    invoke-static {v13, v1}, Lorg/concentus/Inlines;->SHR32(II)I

    move-result v13

    sub-int/2addr v12, v13

    add-int/2addr v7, v12

    .line 83
    invoke-static {v4, v7}, Lorg/concentus/Inlines;->MAX32(II)I

    move-result v7

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method static pitch_downsample([[I[III)V
    .locals 16

    move-object/from16 v6, p1

    move/from16 v0, p2

    move/from16 v1, p3

    const/4 v2, 0x5

    .line 128
    new-array v7, v2, [I

    const/4 v8, 0x4

    .line 130
    new-array v9, v8, [I

    const/4 v10, 0x0

    .line 131
    filled-new-array {v10, v10, v10, v10, v10}, [I

    move-result-object v11

    .line 136
    aget-object v2, p0, v10

    invoke-static {v2, v10, v0}, Lorg/concentus/Inlines;->celt_maxabs32([III)I

    move-result v2

    const/4 v12, 0x1

    const/4 v13, 0x2

    if-ne v1, v13, :cond_0

    .line 138
    aget-object v3, p0, v12

    invoke-static {v3, v10, v0}, Lorg/concentus/Inlines;->celt_maxabs32([III)I

    move-result v3

    .line 139
    invoke-static {v2, v3}, Lorg/concentus/Inlines;->MAX32(II)I

    move-result v2

    :cond_0
    if-ge v2, v12, :cond_1

    move v2, v12

    .line 144
    :cond_1
    invoke-static {v2}, Lorg/concentus/Inlines;->celt_ilog2(I)I

    move-result v2

    add-int/lit8 v2, v2, -0xa

    if-gez v2, :cond_2

    move v2, v10

    :cond_2
    if-ne v1, v13, :cond_3

    add-int/lit8 v2, v2, 0x1

    :cond_3
    shr-int/lit8 v14, v0, 0x1

    move v0, v12

    :goto_0
    if-ge v0, v14, :cond_4

    .line 154
    aget-object v3, p0, v10

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v5, v4, -0x1

    aget v5, v3, v5

    add-int/lit8 v15, v4, 0x1

    aget v3, v3, v15

    add-int/2addr v5, v3

    invoke-static {v5}, Lorg/concentus/Inlines;->HALF32(I)I

    move-result v3

    aget-object v5, p0, v10

    aget v4, v5, v4

    add-int/2addr v3, v4

    invoke-static {v3}, Lorg/concentus/Inlines;->HALF32(I)I

    move-result v3

    invoke-static {v3, v2}, Lorg/concentus/Inlines;->SHR32(II)I

    move-result v3

    aput v3, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 157
    :cond_4
    aget-object v0, p0, v10

    aget v0, v0, v12

    invoke-static {v0}, Lorg/concentus/Inlines;->HALF32(I)I

    move-result v0

    aget-object v3, p0, v10

    aget v3, v3, v10

    add-int/2addr v0, v3

    invoke-static {v0}, Lorg/concentus/Inlines;->HALF32(I)I

    move-result v0

    invoke-static {v0, v2}, Lorg/concentus/Inlines;->SHR32(II)I

    move-result v0

    aput v0, v6, v10

    if-ne v1, v13, :cond_6

    move v0, v12

    :goto_1
    if-ge v0, v14, :cond_5

    .line 161
    aget v1, v6, v0

    aget-object v3, p0, v12

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v5, v4, -0x1

    aget v5, v3, v5

    add-int/lit8 v15, v4, 0x1

    aget v3, v3, v15

    add-int/2addr v5, v3

    invoke-static {v5}, Lorg/concentus/Inlines;->HALF32(I)I

    move-result v3

    aget-object v5, p0, v12

    aget v4, v5, v4

    add-int/2addr v3, v4

    invoke-static {v3}, Lorg/concentus/Inlines;->HALF32(I)I

    move-result v3

    invoke-static {v3, v2}, Lorg/concentus/Inlines;->SHR32(II)I

    move-result v3

    add-int/2addr v1, v3

    aput v1, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 163
    :cond_5
    aget v0, v6, v10

    aget-object v1, p0, v12

    aget v1, v1, v12

    invoke-static {v1}, Lorg/concentus/Inlines;->HALF32(I)I

    move-result v1

    aget-object v3, p0, v12

    aget v3, v3, v10

    add-int/2addr v1, v3

    invoke-static {v1}, Lorg/concentus/Inlines;->HALF32(I)I

    move-result v1

    invoke-static {v1, v2}, Lorg/concentus/Inlines;->SHR32(II)I

    move-result v1

    add-int/2addr v0, v1

    aput v0, v6, v10

    :cond_6
    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v2, 0x0

    move-object/from16 v0, p1

    move-object v1, v7

    move v5, v14

    .line 166
    invoke-static/range {v0 .. v5}, Lorg/concentus/Autocorrelation;->_celt_autocorr([I[I[IIII)I

    .line 169
    aget v0, v7, v10

    const/16 v1, 0xd

    invoke-static {v0, v1}, Lorg/concentus/Inlines;->SHR32(II)I

    move-result v1

    add-int/2addr v0, v1

    aput v0, v7, v10

    move v0, v12

    :goto_2
    if-gt v0, v8, :cond_7

    .line 173
    aget v1, v7, v0

    mul-int/lit8 v2, v0, 0x2

    mul-int/2addr v2, v0

    invoke-static {v2, v1}, Lorg/concentus/Inlines;->MULT16_32_Q15(II)I

    move-result v2

    sub-int/2addr v1, v2

    aput v1, v7, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 176
    :cond_7
    invoke-static {v9, v7, v8}, Lorg/concentus/CeltLPC;->celt_lpc([I[II)V

    const/16 v0, 0x7fff

    move v1, v10

    :goto_3
    if-ge v1, v8, :cond_8

    const/16 v2, 0x7333

    .line 178
    invoke-static {v2, v0}, Lorg/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v0

    .line 179
    aget v2, v9, v1

    invoke-static {v2, v0}, Lorg/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v2

    aput v2, v9, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 182
    :cond_8
    aget v0, v9, v10

    add-int/lit16 v1, v0, 0xccd

    .line 183
    aget v2, v9, v12

    const/16 v3, 0x6666

    invoke-static {v3, v0}, Lorg/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v0

    add-int/2addr v2, v0

    .line 184
    aget v0, v9, v13

    aget v4, v9, v12

    invoke-static {v3, v4}, Lorg/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v4

    add-int/2addr v0, v4

    const/4 v4, 0x3

    .line 185
    aget v5, v9, v4

    aget v7, v9, v13

    invoke-static {v3, v7}, Lorg/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v7

    add-int/2addr v5, v7

    .line 186
    aget v4, v9, v4

    invoke-static {v3, v4}, Lorg/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v3

    filled-new-array {v1, v2, v0, v5, v3}, [I

    move-result-object v0

    .line 188
    invoke-static {v6, v0, v6, v14, v11}, Lorg/concentus/Pitch;->celt_fir5([I[I[II[I)V

    return-void
.end method

.method static pitch_search([II[IIILorg/concentus/BoxedValueInt;)V
    .locals 15

    const/4 v7, 0x0

    .line 196
    filled-new-array {v7, v7}, [I

    move-result-object v8

    const/4 v9, 0x1

    if-lez p3, :cond_0

    move v0, v9

    goto :goto_0

    :cond_0
    move v0, v7

    .line 202
    :goto_0
    invoke-static {v0}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    if-lez p4, :cond_1

    move v0, v9

    goto :goto_1

    :cond_1
    move v0, v7

    .line 203
    :goto_1
    invoke-static {v0}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    add-int v0, p3, p4

    shr-int/lit8 v2, p3, 0x2

    .line 206
    new-array v1, v2, [I

    const/4 v10, 0x2

    shr-int/2addr v0, v10

    .line 207
    new-array v3, v0, [I

    shr-int/lit8 v11, p4, 0x1

    .line 208
    new-array v12, v11, [I

    move v4, v7

    :goto_2
    if-ge v4, v2, :cond_2

    mul-int/lit8 v5, v4, 0x2

    add-int v5, p1, v5

    .line 212
    aget v5, p0, v5

    aput v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    move v4, v7

    :goto_3
    if-ge v4, v0, :cond_3

    mul-int/lit8 v5, v4, 0x2

    .line 215
    aget v5, p2, v5

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 218
    :cond_3
    invoke-static {v1, v7, v2}, Lorg/concentus/Inlines;->celt_maxabs32([III)I

    move-result v4

    .line 219
    invoke-static {v3, v7, v0}, Lorg/concentus/Inlines;->celt_maxabs32([III)I

    move-result v5

    .line 220
    invoke-static {v4, v5}, Lorg/concentus/Inlines;->MAX32(II)I

    move-result v4

    invoke-static {v9, v4}, Lorg/concentus/Inlines;->MAX32(II)I

    move-result v4

    invoke-static {v4}, Lorg/concentus/Inlines;->celt_ilog2(I)I

    move-result v4

    add-int/lit8 v4, v4, -0xb

    if-lez v4, :cond_6

    move v5, v7

    :goto_4
    if-ge v5, v2, :cond_4

    .line 223
    aget v6, v1, v5

    invoke-static {v6, v4}, Lorg/concentus/Inlines;->SHR16(II)I

    move-result v6

    aput v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_4
    move v5, v7

    :goto_5
    if-ge v5, v0, :cond_5

    .line 226
    aget v6, v3, v5

    invoke-static {v6, v4}, Lorg/concentus/Inlines;->SHR16(II)I

    move-result v6

    aput v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_5
    mul-int/2addr v4, v10

    move v13, v4

    goto :goto_6

    :cond_6
    move v13, v7

    :goto_6
    shr-int/lit8 v4, p4, 0x2

    .line 235
    invoke-static {v1, v3, v12, v2, v4}, Lorg/concentus/CeltPitchXCorr;->pitch_xcorr([I[I[III)I

    move-result v6

    const/4 v5, 0x0

    move-object v0, v12

    move-object v1, v3

    move v3, v4

    move-object v4, v8

    .line 237
    invoke-static/range {v0 .. v6}, Lorg/concentus/Pitch;->find_best_pitch([I[III[III)V

    move v0, v7

    move v6, v9

    :goto_7
    const/4 v14, -0x1

    if-ge v0, v11, :cond_9

    .line 243
    aput v7, v12, v0

    .line 244
    aget v1, v8, v7

    mul-int/2addr v1, v10

    sub-int v1, v0, v1

    invoke-static {v1}, Lorg/concentus/Inlines;->abs(I)I

    move-result v1

    if-le v1, v10, :cond_7

    aget v1, v8, v9

    mul-int/2addr v1, v10

    sub-int v1, v0, v1

    invoke-static {v1}, Lorg/concentus/Inlines;->abs(I)I

    move-result v1

    if-le v1, v10, :cond_7

    goto :goto_9

    :cond_7
    move v1, v7

    move v2, v1

    :goto_8
    shr-int/lit8 v3, p3, 0x1

    if-ge v1, v3, :cond_8

    add-int v3, p1, v1

    .line 249
    aget v3, p0, v3

    add-int v4, v0, v1

    aget v4, p2, v4

    invoke-static {v3, v4}, Lorg/concentus/Inlines;->MULT16_16(II)I

    move-result v3

    invoke-static {v3, v13}, Lorg/concentus/Inlines;->SHR32(II)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 252
    :cond_8
    invoke-static {v14, v2}, Lorg/concentus/Inlines;->MAX32(II)I

    move-result v1

    aput v1, v12, v0

    .line 253
    invoke-static {v6, v2}, Lorg/concentus/Inlines;->MAX32(II)I

    move-result v6

    :goto_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_9
    shr-int/lit8 v2, p3, 0x1

    add-int/lit8 v5, v13, 0x1

    move-object v0, v12

    move-object/from16 v1, p2

    move v3, v11

    move-object v4, v8

    .line 255
    invoke-static/range {v0 .. v6}, Lorg/concentus/Pitch;->find_best_pitch([I[III[III)V

    .line 258
    aget v0, v8, v7

    if-lez v0, :cond_b

    sub-int/2addr v11, v9

    if-ge v0, v11, :cond_b

    add-int/lit8 v1, v0, -0x1

    .line 260
    aget v1, v12, v1

    .line 261
    aget v2, v12, v0

    add-int/2addr v0, v9

    .line 262
    aget v0, v12, v0

    sub-int v3, v0, v1

    sub-int v4, v2, v1

    const/16 v5, 0x599a

    .line 263
    invoke-static {v5, v4}, Lorg/concentus/Inlines;->MULT16_32_Q15(SI)I

    move-result v4

    if-le v3, v4, :cond_a

    goto :goto_a

    :cond_a
    sub-int/2addr v1, v0

    sub-int/2addr v2, v0

    .line 265
    invoke-static {v5, v2}, Lorg/concentus/Inlines;->MULT16_32_Q15(SI)I

    move-result v0

    if-le v1, v0, :cond_b

    move v9, v14

    goto :goto_a

    :cond_b
    move v9, v7

    .line 274
    :goto_a
    aget v0, v8, v7

    mul-int/2addr v0, v10

    sub-int/2addr v0, v9

    move-object/from16 v1, p5

    iput v0, v1, Lorg/concentus/BoxedValueInt;->Val:I

    return-void
.end method

.method static remove_doubling([IIIILorg/concentus/BoxedValueInt;II)I
    .locals 26

    move-object/from16 v9, p0

    move/from16 v10, p2

    move-object/from16 v11, p4

    const/4 v12, 0x3

    .line 285
    new-array v13, v12, [I

    const/4 v14, 0x2

    .line 289
    div-int/lit8 v15, p1, 0x2

    .line 290
    div-int/lit8 v8, v10, 0x2

    .line 291
    iget v0, v11, Lorg/concentus/BoxedValueInt;->Val:I

    div-int/2addr v0, v14

    iput v0, v11, Lorg/concentus/BoxedValueInt;->Val:I

    .line 292
    div-int/lit8 v16, p5, 0x2

    .line 293
    div-int/lit8 v7, p3, 0x2

    .line 295
    iget v0, v11, Lorg/concentus/BoxedValueInt;->Val:I

    if-lt v0, v15, :cond_0

    add-int/lit8 v0, v15, -0x1

    .line 296
    iput v0, v11, Lorg/concentus/BoxedValueInt;->Val:I

    .line 299
    :cond_0
    iget v6, v11, Lorg/concentus/BoxedValueInt;->Val:I

    add-int/lit8 v0, v15, 0x1

    .line 300
    new-array v5, v0, [I

    .line 301
    new-instance v4, Lorg/concentus/BoxedValueInt;

    const/4 v3, 0x0

    invoke-direct {v4, v3}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    .line 302
    new-instance v2, Lorg/concentus/BoxedValueInt;

    invoke-direct {v2, v3}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    .line 303
    new-instance v1, Lorg/concentus/BoxedValueInt;

    invoke-direct {v1, v3}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    sub-int v17, v15, v6

    move-object/from16 v0, p0

    move-object/from16 p1, v1

    move v1, v15

    move-object/from16 p3, v2

    move-object/from16 v2, p0

    move v12, v3

    move v3, v15

    move-object/from16 p5, v4

    move-object/from16 v4, p0

    move-object/from16 v18, v5

    move/from16 v5, v17

    move v14, v6

    move v6, v7

    move/from16 v19, v7

    move-object/from16 v7, p5

    move/from16 v20, v8

    move-object/from16 v8, p3

    .line 304
    invoke-static/range {v0 .. v8}, Lorg/concentus/Kernels;->dual_inner_prod([II[II[IIILorg/concentus/BoxedValueInt;Lorg/concentus/BoxedValueInt;)V

    move-object/from16 v0, p5

    .line 305
    iget v8, v0, Lorg/concentus/BoxedValueInt;->Val:I

    move-object/from16 v7, p3

    .line 306
    iget v0, v7, Lorg/concentus/BoxedValueInt;->Val:I

    .line 307
    aput v8, v18, v12

    const/4 v6, 0x1

    move v1, v6

    move v2, v8

    :goto_0
    if-gt v1, v15, :cond_1

    sub-int v3, v15, v1

    .line 311
    aget v4, v9, v3

    invoke-static {v4, v4}, Lorg/concentus/Inlines;->MULT16_16(II)I

    move-result v4

    add-int/2addr v2, v4

    move/from16 v5, v19

    add-int/2addr v3, v5

    aget v3, v9, v3

    invoke-static {v3, v3}, Lorg/concentus/Inlines;->MULT16_16(II)I

    move-result v3

    sub-int/2addr v2, v3

    .line 312
    invoke-static {v12, v2}, Lorg/concentus/Inlines;->MAX32(II)I

    move-result v3

    aput v3, v18, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move/from16 v5, v19

    .line 314
    aget v1, v18, v14

    .line 321
    invoke-static {v8, v1}, Lorg/concentus/Inlines;->MULT32_32_Q31(II)I

    move-result v2

    invoke-static {v2}, Lorg/concentus/Inlines;->HALF32(I)I

    move-result v2

    add-int/2addr v2, v6

    .line 322
    invoke-static {v2}, Lorg/concentus/Inlines;->celt_ilog2(I)I

    move-result v3

    shr-int/2addr v3, v6

    add-int/lit8 v4, v3, -0x7

    const/16 v17, 0x2

    mul-int/lit8 v4, v4, 0x2

    .line 323
    invoke-static {v2, v4}, Lorg/concentus/Inlines;->VSHR32(II)I

    move-result v2

    .line 324
    invoke-static {v2}, Lorg/concentus/Inlines;->celt_rsqrt_norm(I)I

    move-result v2

    invoke-static {v2, v0}, Lorg/concentus/Inlines;->MULT16_32_Q15(II)I

    move-result v2

    add-int/2addr v3, v6

    invoke-static {v2, v3}, Lorg/concentus/Inlines;->VSHR32(II)I

    move-result v4

    move v3, v0

    move v2, v1

    move v0, v4

    move/from16 v19, v14

    const/4 v1, 0x2

    :goto_1
    const/16 v6, 0xf

    if-gt v1, v6, :cond_a

    mul-int/lit8 v6, v14, 0x2

    add-int/2addr v6, v1

    mul-int/lit8 v12, v1, 0x2

    .line 334
    invoke-static {v6, v12}, Lorg/concentus/Inlines;->celt_udiv(II)I

    move-result v6

    move/from16 v10, v20

    if-ge v6, v10, :cond_2

    move/from16 v23, v0

    move/from16 p3, v2

    move/from16 v21, v5

    move-object/from16 v24, v13

    move/from16 v22, v15

    const/4 v0, 0x0

    move v13, v3

    goto/16 :goto_7

    :cond_2
    move/from16 v20, v0

    const/4 v0, 0x2

    if-ne v1, v0, :cond_3

    add-int v12, v6, v14

    if-le v12, v15, :cond_4

    move v12, v14

    goto :goto_2

    .line 347
    :cond_3
    sget-object v17, Lorg/concentus/Pitch;->second_check:[I

    aget v17, v17, v1

    mul-int/lit8 v21, v17, 0x2

    mul-int v21, v21, v14

    add-int v0, v21, v1

    invoke-static {v0, v12}, Lorg/concentus/Inlines;->celt_udiv(II)I

    move-result v0

    move v12, v0

    :cond_4
    :goto_2
    sub-int v21, v15, v6

    sub-int v22, v15, v12

    move/from16 v11, v20

    move-object/from16 v0, p0

    move/from16 v20, v1

    move v1, v15

    move/from16 v23, v11

    move v11, v2

    move-object/from16 v2, p0

    move-object/from16 v24, v13

    move v13, v3

    move/from16 v3, v21

    move v9, v4

    move-object/from16 v4, p0

    move/from16 v21, v5

    move/from16 v5, v22

    move/from16 p3, v11

    move/from16 v22, v15

    const/4 v11, 0x1

    move v15, v6

    move/from16 v6, v21

    move-object/from16 v25, v7

    move v11, v8

    move-object/from16 v8, p1

    .line 350
    invoke-static/range {v0 .. v8}, Lorg/concentus/Kernels;->dual_inner_prod([II[II[IIILorg/concentus/BoxedValueInt;Lorg/concentus/BoxedValueInt;)V

    move-object/from16 v0, v25

    .line 351
    iget v1, v0, Lorg/concentus/BoxedValueInt;->Val:I

    move-object/from16 v2, p1

    .line 352
    iget v3, v2, Lorg/concentus/BoxedValueInt;->Val:I

    add-int/2addr v1, v3

    .line 355
    aget v3, v18, v15

    aget v4, v18, v12

    add-int/2addr v3, v4

    .line 360
    invoke-static {v11, v3}, Lorg/concentus/Inlines;->MULT32_32_Q31(II)I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    .line 361
    invoke-static {v4}, Lorg/concentus/Inlines;->celt_ilog2(I)I

    move-result v6

    shr-int/2addr v6, v5

    add-int/lit8 v7, v6, -0x7

    const/4 v8, 0x2

    mul-int/2addr v7, v8

    .line 362
    invoke-static {v4, v7}, Lorg/concentus/Inlines;->VSHR32(II)I

    move-result v4

    .line 363
    invoke-static {v4}, Lorg/concentus/Inlines;->celt_rsqrt_norm(I)I

    move-result v4

    invoke-static {v4, v1}, Lorg/concentus/Inlines;->MULT16_32_Q15(II)I

    move-result v4

    add-int/2addr v6, v5

    invoke-static {v4, v6}, Lorg/concentus/Inlines;->VSHR32(II)I

    move-result v4

    sub-int v6, v15, v16

    .line 366
    invoke-static {v6}, Lorg/concentus/Inlines;->abs(I)I

    move-result v7

    if-gt v7, v5, :cond_5

    move/from16 v5, p6

    :goto_3
    const/16 v6, 0x599a

    goto :goto_4

    .line 368
    :cond_5
    invoke-static {v6}, Lorg/concentus/Inlines;->abs(I)I

    move-result v5

    if-gt v5, v8, :cond_6

    mul-int/lit8 v5, v20, 0x5

    mul-int v5, v5, v20

    if-ge v5, v14, :cond_6

    .line 369
    invoke-static/range {p6 .. p6}, Lorg/concentus/Inlines;->HALF16(I)I

    move-result v5

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    goto :goto_3

    .line 373
    :goto_4
    invoke-static {v6, v9}, Lorg/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v6

    sub-int/2addr v6, v5

    const/16 v7, 0x2666

    invoke-static {v7, v6}, Lorg/concentus/Inlines;->MAX16(II)I

    move-result v6

    mul-int/lit8 v8, v10, 0x3

    if-ge v15, v8, :cond_7

    const/16 v6, 0x6ccd

    .line 378
    invoke-static {v6, v9}, Lorg/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v6

    sub-int/2addr v6, v5

    const/16 v5, 0x3333

    invoke-static {v5, v6}, Lorg/concentus/Inlines;->MAX16(II)I

    move-result v6

    goto :goto_5

    :cond_7
    mul-int/lit8 v8, v10, 0x2

    if-ge v15, v8, :cond_8

    const/16 v6, 0x7333

    .line 380
    invoke-static {v6, v9}, Lorg/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v6

    sub-int/2addr v6, v5

    const/16 v5, 0x4000

    invoke-static {v5, v6}, Lorg/concentus/Inlines;->MAX16(II)I

    move-result v6

    :cond_8
    :goto_5
    if-le v4, v6, :cond_9

    move v13, v1

    move/from16 v23, v4

    move/from16 v19, v15

    goto :goto_6

    :cond_9
    move/from16 v3, p3

    :goto_6
    add-int/lit8 v1, v20, 0x1

    move-object v7, v0

    move-object/from16 p1, v2

    move v2, v3

    move v4, v9

    move/from16 v20, v10

    move v8, v11

    move v3, v13

    move/from16 v5, v21

    move/from16 v15, v22

    move/from16 v0, v23

    move-object/from16 v13, v24

    const/4 v12, 0x0

    move-object/from16 v9, p0

    move/from16 v10, p2

    move-object/from16 v11, p4

    goto/16 :goto_1

    :cond_a
    move/from16 v23, v0

    move/from16 p3, v2

    move/from16 v21, v5

    move-object/from16 v24, v13

    move/from16 v22, v15

    move v13, v3

    const/4 v0, 0x0

    .line 390
    :goto_7
    invoke-static {v0, v13}, Lorg/concentus/Inlines;->MAX32(II)I

    move-result v1

    move/from16 v3, p3

    if-gt v3, v1, :cond_b

    const/16 v0, 0x7fff

    move v1, v0

    const/4 v0, 0x1

    goto :goto_8

    :cond_b
    const/4 v0, 0x1

    add-int/lit8 v2, v3, 0x1

    .line 394
    invoke-static {v1, v2}, Lorg/concentus/Inlines;->frac_div32(II)I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lorg/concentus/Inlines;->SHR32(II)I

    move-result v1

    :goto_8
    const/4 v2, 0x3

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_c

    add-int v4, v19, v3

    sub-int/2addr v4, v0

    sub-int v15, v22, v4

    move-object/from16 v4, p0

    move/from16 v6, v21

    move/from16 v5, v22

    .line 398
    invoke-static {v4, v5, v4, v15, v6}, Lorg/concentus/Kernels;->celt_inner_prod([II[III)I

    move-result v7

    aput v7, v24, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_c
    const/4 v3, 0x2

    .line 401
    aget v2, v24, v3

    const/4 v4, 0x0

    aget v5, v24, v4

    sub-int/2addr v2, v5

    aget v6, v24, v0

    sub-int/2addr v6, v5

    const/16 v5, 0x599a

    invoke-static {v5, v6}, Lorg/concentus/Inlines;->MULT16_32_Q15(SI)I

    move-result v6

    if-le v2, v6, :cond_d

    move v3, v0

    :goto_a
    move/from16 v4, v23

    goto :goto_b

    .line 403
    :cond_d
    aget v2, v24, v4

    aget v6, v24, v3

    sub-int/2addr v2, v6

    aget v0, v24, v0

    sub-int/2addr v0, v6

    invoke-static {v5, v0}, Lorg/concentus/Inlines;->MULT16_32_Q15(SI)I

    move-result v0

    if-le v2, v0, :cond_e

    const/4 v3, -0x1

    goto :goto_a

    :cond_e
    move v3, v4

    goto :goto_a

    :goto_b
    if-le v1, v4, :cond_f

    move v0, v4

    goto :goto_c

    :cond_f
    move v0, v1

    :goto_c
    const/4 v1, 0x2

    mul-int/lit8 v19, v19, 0x2

    add-int v1, v19, v3

    move-object/from16 v2, p4

    .line 413
    iput v1, v2, Lorg/concentus/BoxedValueInt;->Val:I

    .line 415
    iget v1, v2, Lorg/concentus/BoxedValueInt;->Val:I

    move/from16 v3, p2

    if-ge v1, v3, :cond_10

    .line 416
    iput v3, v2, Lorg/concentus/BoxedValueInt;->Val:I

    :cond_10
    return v0
.end method
