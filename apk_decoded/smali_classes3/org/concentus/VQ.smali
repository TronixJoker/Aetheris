.class Lorg/concentus/VQ;
.super Ljava/lang/Object;
.source "VQ.java"


# static fields
.field private static SPREAD_FACTOR:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xa

    const/4 v1, 0x5

    const/16 v2, 0xf

    .line 64
    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lorg/concentus/VQ;->SPREAD_FACTOR:[I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static alg_quant([IIIIIILorg/concentus/EntropyCoder;)I
    .locals 18

    move/from16 v7, p2

    move/from16 v8, p3

    .line 164
    new-array v9, v7, [I

    .line 165
    new-array v10, v7, [I

    .line 166
    new-array v11, v7, [I

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-lez v8, :cond_0

    move v0, v12

    goto :goto_0

    :cond_0
    move v0, v13

    .line 175
    :goto_0
    const-string v1, "alg_quant() needs at least one pulse"

    invoke-static {v0, v1}, Lorg/concentus/Inlines;->OpusAssert(ZLjava/lang/String;)V

    if-le v7, v12, :cond_1

    move v0, v12

    goto :goto_1

    :cond_1
    move v0, v13

    .line 176
    :goto_1
    const-string v1, "alg_quant() needs at least two dimensions"

    invoke-static {v0, v1}, Lorg/concentus/Inlines;->OpusAssert(ZLjava/lang/String;)V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v4, p5

    move/from16 v5, p3

    move/from16 v6, p4

    .line 178
    invoke-static/range {v0 .. v6}, Lorg/concentus/VQ;->exp_rotation([IIIIIII)V

    move v0, v13

    :goto_2
    add-int v1, p1, v0

    .line 184
    aget v2, p0, v1

    if-lez v2, :cond_2

    .line 185
    aput v12, v11, v0

    goto :goto_3

    :cond_2
    const/4 v2, -0x1

    .line 187
    aput v2, v11, v0

    .line 188
    aget v2, p0, v1

    rsub-int/lit8 v2, v2, 0x0

    aput v2, p0, v1

    .line 191
    :goto_3
    aput v13, v10, v0

    .line 192
    aput v13, v9, v0

    add-int/lit8 v0, v0, 0x1

    if-lt v0, v7, :cond_f

    shr-int/lit8 v0, v7, 0x1

    if-le v8, v0, :cond_7

    move v0, v13

    move v1, v0

    :cond_3
    add-int v2, p1, v1

    .line 204
    aget v2, p0, v2

    add-int/2addr v0, v2

    add-int/2addr v1, v12

    if-lt v1, v7, :cond_3

    if-gt v0, v8, :cond_5

    const/16 v1, 0x4000

    .line 211
    aput v1, p0, p1

    add-int/lit8 v0, p1, 0x1

    .line 214
    :cond_4
    aput v13, p0, v0

    add-int/2addr v0, v12

    add-int v2, v7, p1

    if-lt v0, v2, :cond_4

    move v0, v1

    :cond_5
    add-int/lit8 v1, v8, -0x1

    .line 220
    invoke-static {v0}, Lorg/concentus/Inlines;->celt_rcp(I)I

    move-result v0

    invoke-static {v1, v0}, Lorg/concentus/Inlines;->MULT16_32_Q16(II)I

    move-result v0

    invoke-static {v0}, Lorg/concentus/Inlines;->EXTRACT16(I)S

    move-result v2

    move v4, v8

    move v0, v13

    move v1, v0

    move v3, v1

    :cond_6
    add-int v5, p1, v0

    .line 225
    aget v6, p0, v5

    invoke-static {v6, v2}, Lorg/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v6

    aput v6, v10, v0

    .line 226
    aput v6, v9, v0

    .line 227
    invoke-static {v1, v6, v6}, Lorg/concentus/Inlines;->MAC16_16(III)I

    move-result v1

    .line 228
    aget v5, p0, v5

    aget v6, v9, v0

    invoke-static {v3, v5, v6}, Lorg/concentus/Inlines;->MAC16_16(III)I

    move-result v3

    .line 229
    aget v5, v9, v0

    mul-int/lit8 v5, v5, 0x2

    aput v5, v9, v0

    .line 230
    aget v5, v10, v0

    sub-int/2addr v4, v5

    add-int/2addr v0, v12

    if-lt v0, v7, :cond_6

    goto :goto_4

    :cond_7
    move v4, v8

    move v1, v13

    move v3, v1

    :goto_4
    if-lt v4, v12, :cond_8

    move v0, v12

    goto :goto_5

    :cond_8
    move v0, v13

    .line 234
    :goto_5
    const-string v2, "Allocated too many pulses in the quick pass"

    invoke-static {v0, v2}, Lorg/concentus/Inlines;->OpusAssert(ZLjava/lang/String;)V

    add-int/lit8 v0, v7, 0x3

    if-le v4, v0, :cond_9

    .line 240
    invoke-static {v1, v4, v4}, Lorg/concentus/Inlines;->MAC16_16(III)I

    move-result v0

    .line 241
    aget v1, v9, v13

    invoke-static {v0, v4, v1}, Lorg/concentus/Inlines;->MAC16_16(III)I

    move-result v1

    .line 242
    aget v0, v10, v13

    add-int/2addr v0, v4

    aput v0, v10, v13

    move v4, v13

    :cond_9
    move v0, v13

    :goto_6
    if-ge v0, v4, :cond_c

    sub-int v2, v8, v4

    add-int/2addr v2, v0

    add-int/2addr v2, v12

    .line 251
    invoke-static {v2}, Lorg/concentus/Inlines;->celt_ilog2(I)I

    move-result v2

    add-int/2addr v2, v12

    .line 255
    invoke-static {v1, v12}, Lorg/concentus/Inlines;->ADD16(II)I

    move-result v1

    const/16 v5, -0x7fff

    move v6, v13

    move v14, v6

    move v15, v14

    :goto_7
    add-int v16, p1, v6

    .line 260
    aget v16, p0, v16

    invoke-static/range {v16 .. v16}, Lorg/concentus/Inlines;->EXTEND32(I)I

    move-result v13

    invoke-static {v3, v13}, Lorg/concentus/Inlines;->ADD32(II)I

    move-result v13

    invoke-static {v13, v2}, Lorg/concentus/Inlines;->SHR32(II)I

    move-result v13

    invoke-static {v13}, Lorg/concentus/Inlines;->EXTRACT16(I)S

    move-result v13

    .line 262
    aget v12, v9, v6

    invoke-static {v1, v12}, Lorg/concentus/Inlines;->ADD16(II)I

    move-result v12

    .line 266
    invoke-static {v13, v13}, Lorg/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v13

    move/from16 p4, v2

    .line 270
    invoke-static {v14, v13}, Lorg/concentus/Inlines;->MULT16_16(II)I

    move-result v2

    move/from16 v17, v4

    invoke-static {v12, v5}, Lorg/concentus/Inlines;->MULT16_16(II)I

    move-result v4

    if-le v2, v4, :cond_a

    move v15, v6

    move v14, v12

    move v5, v13

    :cond_a
    add-int/lit8 v6, v6, 0x1

    if-lt v6, v7, :cond_b

    add-int v2, p1, v15

    .line 278
    aget v2, p0, v2

    invoke-static {v2}, Lorg/concentus/Inlines;->EXTEND32(I)I

    move-result v2

    invoke-static {v3, v2}, Lorg/concentus/Inlines;->ADD32(II)I

    move-result v3

    .line 280
    aget v2, v9, v15

    invoke-static {v1, v2}, Lorg/concentus/Inlines;->ADD16(II)I

    move-result v1

    .line 284
    aget v2, v9, v15

    add-int/lit8 v2, v2, 0x2

    aput v2, v9, v15

    .line 285
    aget v2, v10, v15

    const/4 v4, 0x1

    add-int/2addr v2, v4

    aput v2, v10, v15

    add-int/lit8 v0, v0, 0x1

    move v12, v4

    move/from16 v4, v17

    const/4 v13, 0x0

    goto :goto_6

    :cond_b
    move/from16 v2, p4

    move/from16 v4, v17

    const/4 v12, 0x1

    const/4 v13, 0x0

    goto :goto_7

    :cond_c
    const/4 v13, 0x0

    :goto_8
    add-int v0, p1, v13

    .line 291
    aget v1, v11, v13

    aget v2, p0, v0

    invoke-static {v1, v2}, Lorg/concentus/Inlines;->MULT16_16(II)I

    move-result v1

    aput v1, p0, v0

    .line 292
    aget v0, v11, v13

    if-gez v0, :cond_d

    .line 293
    aget v0, v10, v13

    neg-int v0, v0

    aput v0, v10, v13

    :cond_d
    add-int/lit8 v13, v13, 0x1

    if-lt v13, v7, :cond_e

    move-object/from16 v1, p6

    .line 297
    invoke-static {v10, v7, v8, v1}, Lorg/concentus/CWRS;->encode_pulses([IIILorg/concentus/EntropyCoder;)V

    move/from16 v2, p5

    .line 299
    invoke-static {v10, v7, v2}, Lorg/concentus/VQ;->extract_collapse_mask([III)I

    move-result v0

    return v0

    :cond_e
    move/from16 v2, p5

    move-object/from16 v1, p6

    goto :goto_8

    :cond_f
    move/from16 v2, p5

    move-object/from16 v1, p6

    goto/16 :goto_2
.end method

.method static alg_unquant([IIIIIILorg/concentus/EntropyCoder;I)I
    .locals 9

    move v7, p2

    move v6, p3

    .line 312
    new-array v8, v7, [I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez v6, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 313
    :goto_0
    const-string v3, "alg_unquant() needs at least one pulse"

    invoke-static {v2, v3}, Lorg/concentus/Inlines;->OpusAssert(ZLjava/lang/String;)V

    if-le v7, v1, :cond_1

    move v0, v1

    .line 314
    :cond_1
    const-string v1, "alg_unquant() needs at least two dimensions"

    invoke-static {v0, v1}, Lorg/concentus/Inlines;->OpusAssert(ZLjava/lang/String;)V

    move-object v0, p6

    .line 315
    invoke-static {v8, p2, p3, p6}, Lorg/concentus/CWRS;->decode_pulses([IIILorg/concentus/EntropyCoder;)I

    move-result v4

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move v3, p2

    move/from16 v5, p7

    .line 316
    invoke-static/range {v0 .. v5}, Lorg/concentus/VQ;->normalise_residual([I[IIIII)V

    const/4 v3, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p5

    move v5, p3

    move v6, p4

    .line 317
    invoke-static/range {v0 .. v6}, Lorg/concentus/VQ;->exp_rotation([IIIIIII)V

    move v0, p5

    .line 318
    invoke-static {v8, p2, p5}, Lorg/concentus/VQ;->extract_collapse_mask([III)I

    move-result v0

    return v0
.end method

.method static exp_rotation([IIIIIII)V
    .locals 9

    mul-int/lit8 v0, p5, 0x2

    if-ge v0, p2, :cond_6

    if-nez p6, :cond_0

    goto/16 :goto_3

    .line 77
    :cond_0
    sget-object v0, Lorg/concentus/VQ;->SPREAD_FACTOR:[I

    const/4 v1, 0x1

    sub-int/2addr p6, v1

    aget p6, v0, p6

    const/16 v0, 0x7fff

    .line 79
    invoke-static {v0, p2}, Lorg/concentus/Inlines;->MULT16_16(II)I

    move-result v2

    mul-int/2addr p6, p5

    add-int/2addr p6, p2

    invoke-static {v2, p6}, Lorg/concentus/Inlines;->celt_div(II)I

    move-result p5

    .line 80
    invoke-static {p5, p5}, Lorg/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result p5

    invoke-static {p5}, Lorg/concentus/Inlines;->HALF16(I)I

    move-result p5

    .line 82
    invoke-static {p5}, Lorg/concentus/Inlines;->EXTEND32(I)I

    move-result p6

    invoke-static {p6}, Lorg/concentus/Inlines;->celt_cos_norm(I)I

    move-result p6

    .line 83
    invoke-static {v0, p5}, Lorg/concentus/Inlines;->SUB16(II)I

    move-result p5

    invoke-static {p5}, Lorg/concentus/Inlines;->EXTEND32(I)I

    move-result p5

    invoke-static {p5}, Lorg/concentus/Inlines;->celt_cos_norm(I)I

    move-result p5

    mul-int/lit8 v0, p4, 0x8

    const/4 v2, 0x0

    if-lt p2, v0, :cond_1

    :goto_0
    mul-int v0, v1, v1

    add-int/2addr v0, v1

    mul-int/2addr v0, p4

    shr-int/lit8 v3, p4, 0x2

    add-int/2addr v0, v3

    if-ge v0, p2, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 97
    :cond_2
    invoke-static {p2, p4}, Lorg/concentus/Inlines;->celt_udiv(II)I

    move-result p2

    move v0, v2

    :goto_1
    if-ge v0, p4, :cond_6

    if-gez p3, :cond_4

    if-eqz v1, :cond_3

    mul-int v2, v0, p2

    add-int v3, p1, v2

    move-object v2, p0

    move v4, p2

    move v5, v1

    move v6, p5

    move v7, p6

    .line 101
    invoke-static/range {v2 .. v7}, Lorg/concentus/VQ;->exp_rotation1([IIIIII)V

    :cond_3
    mul-int v2, v0, p2

    add-int v3, p1, v2

    const/4 v5, 0x1

    move-object v2, p0

    move v4, p2

    move v6, p6

    move v7, p5

    .line 104
    invoke-static/range {v2 .. v7}, Lorg/concentus/VQ;->exp_rotation1([IIIIII)V

    goto :goto_2

    :cond_4
    mul-int v2, v0, p2

    add-int v8, p1, v2

    rsub-int/lit8 v2, p5, 0x0

    int-to-short v7, v2

    const/4 v5, 0x1

    move-object v2, p0

    move v3, v8

    move v4, p2

    move v6, p6

    .line 106
    invoke-static/range {v2 .. v7}, Lorg/concentus/VQ;->exp_rotation1([IIIIII)V

    if-eqz v1, :cond_5

    rsub-int/lit8 v2, p6, 0x0

    int-to-short v7, v2

    move-object v2, p0

    move v3, v8

    move v4, p2

    move v5, v1

    move v6, p5

    .line 109
    invoke-static/range {v2 .. v7}, Lorg/concentus/VQ;->exp_rotation1([IIIIII)V

    :cond_5
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    :goto_3
    return-void
.end method

.method static exp_rotation1([IIIIII)V
    .locals 8

    .line 44
    invoke-static {p5}, Lorg/concentus/Inlines;->NEG16(I)I

    move-result v0

    const/4 v1, 0x0

    move v2, p1

    :goto_0
    sub-int v3, p2, p3

    const/16 v4, 0xf

    if-ge v1, v3, :cond_0

    .line 47
    aget v3, p0, v2

    add-int v5, v2, p3

    .line 48
    aget v6, p0, v5

    .line 49
    invoke-static {p4, v6}, Lorg/concentus/Inlines;->MULT16_16(II)I

    move-result v7

    invoke-static {v7, p5, v3}, Lorg/concentus/Inlines;->MAC16_16(III)I

    move-result v7

    invoke-static {v7, v4}, Lorg/concentus/Inlines;->PSHR32(II)I

    move-result v7

    invoke-static {v7}, Lorg/concentus/Inlines;->EXTRACT16(I)S

    move-result v7

    aput v7, p0, v5

    .line 50
    invoke-static {p4, v3}, Lorg/concentus/Inlines;->MULT16_16(II)I

    move-result v3

    invoke-static {v3, v0, v6}, Lorg/concentus/Inlines;->MAC16_16(III)I

    move-result v3

    invoke-static {v3, v4}, Lorg/concentus/Inlines;->PSHR32(II)I

    move-result v3

    invoke-static {v3}, Lorg/concentus/Inlines;->EXTRACT16(I)S

    move-result v3

    aput v3, p0, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    mul-int/lit8 v1, p3, 0x2

    sub-int/2addr p2, v1

    add-int/lit8 p2, p2, -0x1

    add-int/2addr p1, p2

    :goto_1
    if-ltz p2, :cond_1

    .line 56
    aget v1, p0, p1

    add-int v2, p1, p3

    .line 57
    aget v3, p0, v2

    .line 58
    invoke-static {p4, v3}, Lorg/concentus/Inlines;->MULT16_16(II)I

    move-result v5

    invoke-static {v5, p5, v1}, Lorg/concentus/Inlines;->MAC16_16(III)I

    move-result v5

    invoke-static {v5, v4}, Lorg/concentus/Inlines;->PSHR32(II)I

    move-result v5

    invoke-static {v5}, Lorg/concentus/Inlines;->EXTRACT16(I)S

    move-result v5

    aput v5, p0, v2

    .line 59
    invoke-static {p4, v1}, Lorg/concentus/Inlines;->MULT16_16(II)I

    move-result v1

    invoke-static {v1, v0, v3}, Lorg/concentus/Inlines;->MAC16_16(III)I

    move-result v1

    invoke-static {v1, v4}, Lorg/concentus/Inlines;->PSHR32(II)I

    move-result v1

    invoke-static {v1}, Lorg/concentus/Inlines;->EXTRACT16(I)S

    move-result v1

    aput v1, p0, p1

    add-int/lit8 p1, p1, -0x1

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method static extract_collapse_mask([III)I
    .locals 7

    const/4 v0, 0x1

    if-gt p2, v0, :cond_0

    return v0

    .line 145
    :cond_0
    invoke-static {p1, p2}, Lorg/concentus/Inlines;->celt_udiv(II)I

    move-result p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :cond_1
    move v4, v1

    move v5, v4

    :cond_2
    mul-int v6, v2, p1

    add-int/2addr v6, v5

    .line 153
    aget v6, p0, v6

    or-int/2addr v4, v6

    add-int/2addr v5, v0

    if-lt v5, p1, :cond_2

    if-eqz v4, :cond_3

    move v4, v0

    goto :goto_0

    :cond_3
    move v4, v1

    :goto_0
    shl-int/2addr v4, v2

    or-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    if-lt v2, p2, :cond_1

    return v3
.end method

.method static normalise_residual([I[IIIII)V
    .locals 4

    .line 126
    invoke-static {p4}, Lorg/concentus/Inlines;->celt_ilog2(I)I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v0, -0x7

    mul-int/lit8 v1, v1, 0x2

    .line 127
    invoke-static {p4, v1}, Lorg/concentus/Inlines;->VSHR32(II)I

    move-result p4

    .line 128
    invoke-static {p4}, Lorg/concentus/Inlines;->celt_rsqrt_norm(I)I

    move-result p4

    invoke-static {p4, p5}, Lorg/concentus/Inlines;->MULT16_16_P15(II)I

    move-result p4

    const/4 p5, 0x0

    :cond_0
    add-int v1, p2, p5

    .line 132
    aget v2, p0, p5

    invoke-static {p4, v2}, Lorg/concentus/Inlines;->MULT16_16(II)I

    move-result v2

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, v3}, Lorg/concentus/Inlines;->PSHR32(II)I

    move-result v2

    invoke-static {v2}, Lorg/concentus/Inlines;->EXTRACT16(I)S

    move-result v2

    aput v2, p1, v1

    add-int/lit8 p5, p5, 0x1

    if-lt p5, p3, :cond_0

    return-void
.end method

.method static renormalise_vector([IIII)V
    .locals 4

    .line 330
    invoke-static {p0, p1, p0, p1, p2}, Lorg/concentus/Kernels;->celt_inner_prod([II[III)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 331
    invoke-static {v0}, Lorg/concentus/Inlines;->celt_ilog2(I)I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v1, -0x7

    mul-int/lit8 v2, v2, 0x2

    .line 332
    invoke-static {v0, v2}, Lorg/concentus/Inlines;->VSHR32(II)I

    move-result v0

    .line 333
    invoke-static {v0}, Lorg/concentus/Inlines;->celt_rsqrt_norm(I)I

    move-result v0

    invoke-static {v0, p3}, Lorg/concentus/Inlines;->MULT16_16_P15(II)I

    move-result p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 337
    aget v2, p0, p1

    invoke-static {p3, v2}, Lorg/concentus/Inlines;->MULT16_16(II)I

    move-result v2

    add-int/lit8 v3, v1, 0x1

    invoke-static {v2, v3}, Lorg/concentus/Inlines;->PSHR32(II)I

    move-result v2

    invoke-static {v2}, Lorg/concentus/Inlines;->EXTRACT16(I)S

    move-result v2

    aput v2, p0, p1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static stereo_itheta([II[IIII)I
    .locals 7

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    const/4 p4, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    if-ge p4, p5, :cond_1

    add-int v3, p1, p4

    .line 353
    aget v4, p0, v3

    invoke-static {v4, v0}, Lorg/concentus/Inlines;->SHR16(II)I

    move-result v4

    add-int v5, p3, p4

    aget v6, p2, v5

    invoke-static {v6, v0}, Lorg/concentus/Inlines;->SHR16(II)I

    move-result v6

    invoke-static {v4, v6}, Lorg/concentus/Inlines;->ADD16(II)I

    move-result v4

    .line 354
    aget v3, p0, v3

    invoke-static {v3, v0}, Lorg/concentus/Inlines;->SHR16(II)I

    move-result v3

    aget v5, p2, v5

    invoke-static {v5, v0}, Lorg/concentus/Inlines;->SHR16(II)I

    move-result v5

    invoke-static {v3, v5}, Lorg/concentus/Inlines;->SUB16(II)I

    move-result v3

    .line 355
    invoke-static {v1, v4, v4}, Lorg/concentus/Inlines;->MAC16_16(III)I

    move-result v1

    .line 356
    invoke-static {v2, v3, v3}, Lorg/concentus/Inlines;->MAC16_16(III)I

    move-result v2

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 359
    :cond_0
    invoke-static {p0, p1, p0, p1, p5}, Lorg/concentus/Kernels;->celt_inner_prod([II[III)I

    move-result p0

    add-int/lit8 v1, p0, 0x1

    .line 360
    invoke-static {p2, p3, p2, p3, p5}, Lorg/concentus/Kernels;->celt_inner_prod([II[III)I

    move-result p0

    add-int/lit8 v2, p0, 0x1

    .line 362
    :cond_1
    invoke-static {v1}, Lorg/concentus/Inlines;->celt_sqrt(I)I

    move-result p0

    .line 363
    invoke-static {v2}, Lorg/concentus/Inlines;->celt_sqrt(I)I

    move-result p1

    const/16 p2, 0x517d

    .line 365
    invoke-static {p1, p0}, Lorg/concentus/Inlines;->celt_atan2p(II)I

    move-result p0

    invoke-static {p2, p0}, Lorg/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result p0

    return p0
.end method
