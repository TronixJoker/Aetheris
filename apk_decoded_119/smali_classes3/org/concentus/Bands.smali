.class Lorg/concentus/Bands;
.super Ljava/lang/Object;
.source "Bands.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/concentus/Bands$band_ctx;,
        Lorg/concentus/Bands$split_ctx;
    }
.end annotation


# static fields
.field private static final bit_deinterleave_table:[S

.field private static final bit_interleave_table:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    .line 994
    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lorg/concentus/Bands;->bit_interleave_table:[B

    .line 996
    new-array v0, v0, [S

    fill-array-data v0, :array_1

    sput-object v0, Lorg/concentus/Bands;->bit_deinterleave_table:[S

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x1t
        0x2t
        0x3t
        0x3t
        0x3t
        0x2t
        0x3t
        0x3t
        0x3t
        0x2t
        0x3t
        0x3t
        0x3t
    .end array-data

    :array_1
    .array-data 2
        0x0s
        0x3s
        0xcs
        0xfs
        0x30s
        0x33s
        0x3cs
        0x3fs
        0xc0s
        0xc3s
        0xccs
        0xcfs
        0xf0s
        0xf3s
        0xfcs
        0xffs
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static anti_collapse(Lorg/concentus/CeltMode;[[I[SIIIII[I[I[I[II)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p6

    move/from16 v5, p7

    move/from16 v4, p12

    :goto_0
    if-ge v3, v5, :cond_a

    .line 228
    iget-object v6, v0, Lorg/concentus/CeltMode;->eBands:[S

    add-int/lit8 v7, v3, 0x1

    aget-short v6, v6, v7

    iget-object v8, v0, Lorg/concentus/CeltMode;->eBands:[S

    aget-short v8, v8, v3

    sub-int/2addr v6, v8

    .line 230
    aget v8, p11, v3

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ltz v8, :cond_0

    move v8, v10

    goto :goto_1

    :cond_0
    move v8, v9

    :goto_1
    invoke-static {v8}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    .line 231
    aget v8, p11, v3

    add-int/2addr v8, v10

    iget-object v11, v0, Lorg/concentus/CeltMode;->eBands:[S

    aget-short v11, v11, v7

    iget-object v12, v0, Lorg/concentus/CeltMode;->eBands:[S

    aget-short v12, v12, v3

    sub-int/2addr v11, v12

    invoke-static {v8, v11}, Lorg/concentus/Inlines;->celt_udiv(II)I

    move-result v8

    shr-int/2addr v8, v1

    const/4 v11, 0x7

    .line 233
    invoke-static {v8, v11}, Lorg/concentus/Inlines;->SHL16(II)I

    move-result v8

    rsub-int/lit8 v8, v8, 0x0

    invoke-static {v8}, Lorg/concentus/Inlines;->celt_exp2(I)I

    move-result v8

    invoke-static {v8, v10}, Lorg/concentus/Inlines;->SHR32(II)I

    move-result v8

    const/16 v11, 0x7fff

    .line 234
    invoke-static {v11, v8}, Lorg/concentus/Inlines;->MIN32(II)I

    move-result v8

    const/16 v12, 0x4000

    invoke-static {v12, v8}, Lorg/concentus/Inlines;->MULT16_32_Q15(SI)I

    move-result v8

    shl-int v13, v6, v1

    .line 238
    invoke-static {v13}, Lorg/concentus/Inlines;->celt_ilog2(I)I

    move-result v14

    shr-int/2addr v14, v10

    rsub-int/lit8 v15, v14, 0x7

    shl-int/2addr v15, v10

    .line 239
    invoke-static {v13, v15}, Lorg/concentus/Inlines;->SHL32(II)I

    move-result v15

    .line 240
    invoke-static {v15}, Lorg/concentus/Inlines;->celt_rsqrt_norm(I)I

    move-result v15

    move/from16 v16, v9

    .line 251
    :goto_2
    iget v11, v0, Lorg/concentus/CeltMode;->nbEBands:I

    mul-int v11, v11, v16

    add-int/2addr v11, v3

    aget v11, p9, v11

    .line 252
    iget v12, v0, Lorg/concentus/CeltMode;->nbEBands:I

    mul-int v12, v12, v16

    add-int/2addr v12, v3

    aget v12, p10, v12

    if-ne v2, v10, :cond_1

    .line 254
    iget v10, v0, Lorg/concentus/CeltMode;->nbEBands:I

    add-int/2addr v10, v3

    aget v10, p9, v10

    invoke-static {v11, v10}, Lorg/concentus/Inlines;->MAX16(II)I

    move-result v11

    .line 255
    iget v10, v0, Lorg/concentus/CeltMode;->nbEBands:I

    add-int/2addr v10, v3

    aget v10, p10, v10

    invoke-static {v12, v10}, Lorg/concentus/Inlines;->MAX16(II)I

    move-result v12

    .line 257
    :cond_1
    iget v10, v0, Lorg/concentus/CeltMode;->nbEBands:I

    mul-int v10, v10, v16

    add-int/2addr v10, v3

    aget v10, p8, v10

    invoke-static {v10}, Lorg/concentus/Inlines;->EXTEND32(I)I

    move-result v10

    invoke-static {v11, v12}, Lorg/concentus/Inlines;->MIN16(II)I

    move-result v11

    invoke-static {v11}, Lorg/concentus/Inlines;->EXTEND32(I)I

    move-result v11

    sub-int/2addr v10, v11

    .line 258
    invoke-static {v9, v10}, Lorg/concentus/Inlines;->MAX32(II)I

    move-result v10

    const/16 v11, 0x4000

    if-ge v10, v11, :cond_2

    .line 261
    invoke-static {v10}, Lorg/concentus/Inlines;->EXTRACT16(I)S

    move-result v10

    rsub-int/lit8 v10, v10, 0x0

    int-to-short v10, v10

    invoke-static {v10}, Lorg/concentus/Inlines;->celt_exp2(I)I

    move-result v10

    const/4 v12, 0x1

    invoke-static {v10, v12}, Lorg/concentus/Inlines;->SHR32(II)I

    move-result v10

    const/16 v12, 0x3fff

    .line 262
    invoke-static {v12, v10}, Lorg/concentus/Inlines;->MIN16(II)I

    move-result v10

    mul-int/lit8 v10, v10, 0x2

    goto :goto_3

    :cond_2
    move v10, v9

    :goto_3
    const/4 v12, 0x3

    if-ne v1, v12, :cond_3

    const/16 v12, 0x5a81

    .line 267
    invoke-static {v12, v10}, Lorg/concentus/Inlines;->MIN32(II)I

    move-result v10

    const/16 v12, 0x5a82

    invoke-static {v12, v10}, Lorg/concentus/Inlines;->MULT16_16_Q14(II)I

    move-result v10

    .line 269
    :cond_3
    invoke-static {v8, v10}, Lorg/concentus/Inlines;->MIN16(II)I

    move-result v10

    const/4 v12, 0x1

    invoke-static {v10, v12}, Lorg/concentus/Inlines;->SHR16(II)I

    move-result v10

    .line 270
    invoke-static {v15, v10}, Lorg/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v10

    invoke-static {v10, v14}, Lorg/concentus/Inlines;->SHR32(II)I

    move-result v10

    .line 272
    iget-object v9, v0, Lorg/concentus/CeltMode;->eBands:[S

    aget-short v9, v9, v3

    shl-int/2addr v9, v1

    const/4 v11, 0x0

    const/16 v17, 0x0

    :goto_4
    shl-int v0, v12, v1

    if-ge v11, v0, :cond_7

    mul-int v0, v3, v2

    add-int v0, v0, v16

    .line 275
    aget-short v0, p2, v0

    shl-int v18, v12, v11

    and-int v0, v0, v18

    if-nez v0, :cond_6

    add-int v0, v9, v11

    const/4 v12, 0x0

    :goto_5
    if-ge v12, v6, :cond_5

    .line 279
    invoke-static {v4}, Lorg/concentus/Bands;->celt_lcg_rand(I)I

    move-result v4

    .line 280
    aget-object v17, p1, v16

    shl-int v19, v12, v1

    add-int v19, v0, v19

    const v20, 0x8000

    and-int v20, v4, v20

    if-eqz v20, :cond_4

    move/from16 v20, v10

    goto :goto_6

    :cond_4
    rsub-int/lit8 v20, v10, 0x0

    :goto_6
    aput v20, v17, v19

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_5
    const/16 v17, 0x1

    :cond_6
    add-int/lit8 v11, v11, 0x1

    const/4 v12, 0x1

    goto :goto_4

    :cond_7
    if-eqz v17, :cond_8

    .line 287
    aget-object v0, p1, v16

    const/16 v10, 0x7fff

    invoke-static {v0, v9, v13, v10}, Lorg/concentus/VQ;->renormalise_vector([IIII)V

    goto :goto_7

    :cond_8
    const/16 v10, 0x7fff

    :goto_7
    add-int/lit8 v0, v16, 0x1

    if-lt v0, v2, :cond_9

    move-object/from16 v0, p0

    move v3, v7

    goto/16 :goto_0

    :cond_9
    move/from16 v16, v0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/16 v12, 0x4000

    move-object/from16 v0, p0

    goto/16 :goto_2

    :cond_a
    return-void
.end method

.method static bitexact_cos(I)I
    .locals 4

    mul-int/2addr p0, p0

    add-int/lit16 p0, p0, 0x1000

    shr-int/lit8 p0, p0, 0xd

    const/16 v0, 0x7fff

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt p0, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 73
    :goto_0
    invoke-static {v0}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    rsub-int v0, p0, 0x7fff

    const/16 v3, -0x272

    .line 75
    invoke-static {v3, p0}, Lorg/concentus/Inlines;->FRAC_MUL16(II)I

    move-result v3

    add-int/lit16 v3, v3, 0x2055

    invoke-static {p0, v3}, Lorg/concentus/Inlines;->FRAC_MUL16(II)I

    move-result v3

    add-int/lit16 v3, v3, -0x1de3

    invoke-static {p0, v3}, Lorg/concentus/Inlines;->FRAC_MUL16(II)I

    move-result p0

    add-int/2addr v0, p0

    const/16 p0, 0x7ffe

    if-gt v0, p0, :cond_1

    move v1, v2

    .line 76
    :cond_1
    invoke-static {v1}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    add-int/2addr v0, v2

    return v0
.end method

.method static bitexact_log2tan(II)I
    .locals 3

    int-to-long v0, p1

    .line 81
    invoke-static {v0, v1}, Lorg/concentus/Inlines;->EC_ILOG(J)I

    move-result v0

    int-to-long v1, p0

    .line 82
    invoke-static {v1, v2}, Lorg/concentus/Inlines;->EC_ILOG(J)I

    move-result v1

    rsub-int/lit8 v2, v0, 0xf

    shl-int/2addr p1, v2

    rsub-int/lit8 v2, v1, 0xf

    shl-int/2addr p0, v2

    sub-int/2addr v1, v0

    mul-int/lit16 v1, v1, 0x800

    const/16 v0, -0xa25

    .line 86
    invoke-static {p0, v0}, Lorg/concentus/Inlines;->FRAC_MUL16(II)I

    move-result v2

    add-int/lit16 v2, v2, 0x1efc

    invoke-static {p0, v2}, Lorg/concentus/Inlines;->FRAC_MUL16(II)I

    move-result p0

    add-int/2addr v1, p0

    .line 87
    invoke-static {p1, v0}, Lorg/concentus/Inlines;->FRAC_MUL16(II)I

    move-result p0

    add-int/lit16 p0, p0, 0x1efc

    invoke-static {p1, p0}, Lorg/concentus/Inlines;->FRAC_MUL16(II)I

    move-result p0

    sub-int/2addr v1, p0

    return v1
.end method

.method static celt_lcg_rand(I)I
    .locals 1

    const v0, 0x19660d

    mul-int/2addr p0, v0

    const v0, 0x3c6ef35f

    add-int/2addr p0, v0

    return p0
.end method

.method static compute_band_energies(Lorg/concentus/CeltMode;[[I[[IIII)V
    .locals 14

    move-object v0, p0

    .line 93
    iget-object v1, v0, Lorg/concentus/CeltMode;->eBands:[S

    .line 94
    iget v2, v0, Lorg/concentus/CeltMode;->shortMdctSize:I

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    move/from16 v4, p3

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_4

    .line 102
    aget-object v6, p1, v3

    aget-short v7, v1, v5

    shl-int v8, v7, p5

    add-int/lit8 v9, v5, 0x1

    aget-short v10, v1, v9

    sub-int/2addr v10, v7

    shl-int v7, v10, p5

    invoke-static {v6, v8, v7}, Lorg/concentus/Inlines;->celt_maxabs32([III)I

    move-result v6

    const/4 v7, 0x1

    if-lez v6, :cond_3

    .line 104
    invoke-static {v6}, Lorg/concentus/Inlines;->celt_ilog2(I)I

    move-result v6

    add-int/lit8 v6, v6, -0xe

    iget-object v8, v0, Lorg/concentus/CeltMode;->logN:[S

    aget-short v8, v8, v5

    shr-int/lit8 v8, v8, 0x3

    add-int v8, v8, p5

    add-int/2addr v8, v7

    shr-int/2addr v8, v7

    add-int/2addr v6, v8

    .line 105
    aget-short v8, v1, v5

    shl-int v8, v8, p5

    move v10, v2

    if-lez v6, :cond_2

    .line 108
    :cond_1
    aget-object v11, p1, v3

    aget v11, v11, v8

    invoke-static {v11, v6}, Lorg/concentus/Inlines;->SHR32(II)I

    move-result v11

    invoke-static {v11}, Lorg/concentus/Inlines;->EXTRACT16(I)S

    move-result v11

    aget-object v12, p1, v3

    aget v12, v12, v8

    .line 109
    invoke-static {v12, v6}, Lorg/concentus/Inlines;->SHR32(II)I

    move-result v12

    invoke-static {v12}, Lorg/concentus/Inlines;->EXTRACT16(I)S

    move-result v12

    .line 108
    invoke-static {v10, v11, v12}, Lorg/concentus/Inlines;->MAC16_16(ISS)I

    move-result v10

    add-int/2addr v8, v7

    .line 110
    aget-short v11, v1, v9

    shl-int v11, v11, p5

    if-lt v8, v11, :cond_1

    goto :goto_1

    .line 113
    :cond_2
    aget-object v11, p1, v3

    aget v11, v11, v8

    neg-int v12, v6

    invoke-static {v11, v12}, Lorg/concentus/Inlines;->SHL32(II)I

    move-result v11

    invoke-static {v11}, Lorg/concentus/Inlines;->EXTRACT16(I)S

    move-result v11

    aget-object v13, p1, v3

    aget v13, v13, v8

    .line 114
    invoke-static {v13, v12}, Lorg/concentus/Inlines;->SHL32(II)I

    move-result v12

    invoke-static {v12}, Lorg/concentus/Inlines;->EXTRACT16(I)S

    move-result v12

    .line 113
    invoke-static {v10, v11, v12}, Lorg/concentus/Inlines;->MAC16_16(ISS)I

    move-result v10

    add-int/2addr v8, v7

    .line 115
    aget-short v11, v1, v9

    shl-int v11, v11, p5

    if-lt v8, v11, :cond_2

    .line 118
    :goto_1
    aget-object v8, p2, v3

    invoke-static {v10}, Lorg/concentus/Inlines;->celt_sqrt(I)I

    move-result v10

    neg-int v6, v6

    invoke-static {v10, v6}, Lorg/concentus/Inlines;->VSHR32(II)I

    move-result v6

    add-int/2addr v6, v7

    aput v6, v8, v5

    goto :goto_2

    .line 120
    :cond_3
    aget-object v6, p2, v3

    aput v7, v6, v5

    :goto_2
    move v5, v9

    goto/16 :goto_0

    :cond_4
    add-int/lit8 v3, v3, 0x1

    move/from16 v5, p4

    if-lt v3, v5, :cond_0

    return-void
.end method

.method static compute_qn(IIIII)I
    .locals 3

    const/16 v0, 0x8

    .line 553
    new-array v0, v0, [S

    fill-array-data v0, :array_0

    mul-int/lit8 v1, p0, 0x2

    add-int/lit8 v2, v1, -0x1

    if-eqz p4, :cond_0

    const/4 p4, 0x2

    if-ne p0, p4, :cond_0

    add-int/lit8 v2, v1, -0x2

    :cond_0
    mul-int/2addr p2, v2

    add-int/2addr p2, p1

    .line 564
    invoke-static {p2, v2}, Lorg/concentus/Inlines;->celt_sudiv(II)I

    move-result p0

    sub-int/2addr p1, p3

    add-int/lit8 p1, p1, -0x20

    .line 565
    invoke-static {p1, p0}, Lorg/concentus/Inlines;->IMIN(II)I

    move-result p0

    const/16 p1, 0x40

    .line 567
    invoke-static {p1, p0}, Lorg/concentus/Inlines;->IMIN(II)I

    move-result p0

    const/4 p1, 0x4

    const/4 p2, 0x1

    if-ge p0, p1, :cond_1

    move p0, p2

    goto :goto_0

    :cond_1
    and-int/lit8 p1, p0, 0x7

    .line 572
    aget-short p1, v0, p1

    shr-int/lit8 p0, p0, 0x3

    rsub-int/lit8 p0, p0, 0xe

    shr-int p0, p1, p0

    add-int/2addr p0, p2

    shr-int/2addr p0, p2

    shl-int/2addr p0, p2

    :goto_0
    const/16 p1, 0x100

    if-gt p0, p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    .line 575
    :goto_1
    invoke-static {p2}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    return p0

    :array_0
    .array-data 2
        0x4000s
        0x45cas
        0x4c1bs
        0x52ffs
        0x5a82s
        0x62b3s
        0x6ba2s
        0x7560s
    .end array-data
.end method

.method static compute_theta(Lorg/concentus/Bands$band_ctx;Lorg/concentus/Bands$split_ctx;[II[IIILorg/concentus/BoxedValueInt;IIIILorg/concentus/BoxedValueInt;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v10, p6

    move-object/from16 v11, p7

    move/from16 v8, p11

    move-object/from16 v12, p12

    .line 623
    iget v13, v0, Lorg/concentus/Bands$band_ctx;->encode:I

    .line 624
    iget-object v9, v0, Lorg/concentus/Bands$band_ctx;->m:Lorg/concentus/CeltMode;

    .line 625
    iget v14, v0, Lorg/concentus/Bands$band_ctx;->i:I

    .line 626
    iget v2, v0, Lorg/concentus/Bands$band_ctx;->intensity:I

    .line 627
    iget-object v15, v0, Lorg/concentus/Bands$band_ctx;->ec:Lorg/concentus/EntropyCoder;

    .line 628
    iget-object v7, v0, Lorg/concentus/Bands$band_ctx;->bandE:[[I

    .line 631
    iget-object v3, v9, Lorg/concentus/CeltMode;->logN:[S

    aget-short v3, v3, v14

    mul-int/lit8 v4, p10, 0x8

    add-int/2addr v3, v4

    shr-int/lit8 v4, v3, 0x1

    const/16 v6, 0x10

    const/4 v5, 0x2

    if-eqz v8, :cond_0

    if-ne v10, v5, :cond_0

    move/from16 v16, v6

    goto :goto_0

    :cond_0
    const/16 v16, 0x4

    :goto_0
    sub-int v4, v4, v16

    .line 633
    iget v5, v11, Lorg/concentus/BoxedValueInt;->Val:I

    invoke-static {v10, v5, v4, v3, v8}, Lorg/concentus/Bands;->compute_qn(IIIII)I

    move-result v3

    const/4 v5, 0x1

    if-eqz v8, :cond_1

    if-lt v14, v2, :cond_1

    move v4, v5

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    const/16 v22, 0x0

    if-eqz v13, :cond_2

    move-object/from16 v2, p2

    move/from16 v3, p3

    move v1, v4

    move-object/from16 v4, p4

    move v12, v5

    move/from16 v5, p5

    move/from16 v6, p11

    move-object/from16 v24, v7

    move/from16 v7, p6

    .line 643
    invoke-static/range {v2 .. v7}, Lorg/concentus/VQ;->stereo_itheta([II[IIII)I

    move-result v2

    goto :goto_2

    :cond_2
    move v1, v4

    move v12, v5

    move-object/from16 v24, v7

    move/from16 v2, v22

    .line 646
    :goto_2
    invoke-virtual {v15}, Lorg/concentus/EntropyCoder;->tell_frac()I

    move-result v25

    const/16 v3, 0x2000

    if-eq v1, v12, :cond_15

    if-eqz v13, :cond_3

    mul-int/2addr v2, v1

    add-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0xe

    :cond_3
    if-eqz v8, :cond_a

    const/4 v6, 0x2

    if-le v10, v6, :cond_a

    .line 658
    div-int/lit8 v4, v1, 0x2

    add-int/lit8 v0, v4, 0x1

    mul-int/lit8 v3, v0, 0x3

    add-int v5, v3, v4

    .line 659
    invoke-static {v5}, Lorg/concentus/Inlines;->CapToUInt32(I)J

    move-result-wide v5

    if-eqz v13, :cond_6

    if-gt v2, v4, :cond_4

    mul-int/lit8 v0, v2, 0x3

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v2, -0x1

    sub-int/2addr v0, v4

    add-int/2addr v0, v3

    :goto_3
    int-to-long v7, v0

    if-gt v2, v4, :cond_5

    add-int/lit8 v0, v2, 0x1

    mul-int/lit8 v0, v0, 0x3

    goto :goto_4

    :cond_5
    sub-int v0, v2, v4

    add-int/2addr v0, v3

    :goto_4
    int-to-long v3, v0

    move-object v0, v15

    move-wide/from16 v16, v7

    move-wide/from16 v18, v3

    move-wide/from16 v20, v5

    .line 662
    invoke-virtual/range {v15 .. v21}, Lorg/concentus/EntropyCoder;->encode(JJJ)V

    move-object v8, v0

    move/from16 v23, v13

    goto/16 :goto_c

    :cond_6
    move/from16 v23, v13

    move-object v8, v15

    .line 671
    invoke-virtual {v8, v5, v6}, Lorg/concentus/EntropyCoder;->decode(J)J

    move-result-wide v12

    long-to-int v2, v12

    if-ge v2, v3, :cond_7

    .line 673
    div-int/lit8 v2, v2, 0x3

    goto :goto_5

    :cond_7
    sub-int/2addr v2, v3

    add-int/2addr v2, v0

    :goto_5
    if-gt v2, v4, :cond_8

    mul-int/lit8 v0, v2, 0x3

    goto :goto_6

    :cond_8
    add-int/lit8 v0, v2, -0x1

    sub-int/2addr v0, v4

    add-int/2addr v0, v3

    :goto_6
    int-to-long v12, v0

    if-gt v2, v4, :cond_9

    add-int/lit8 v0, v2, 0x1

    mul-int/lit8 v0, v0, 0x3

    goto :goto_7

    :cond_9
    sub-int v0, v2, v4

    add-int/2addr v0, v3

    :goto_7
    int-to-long v3, v0

    move-object v15, v8

    move-wide/from16 v16, v12

    move-wide/from16 v18, v3

    move-wide/from16 v20, v5

    .line 678
    invoke-virtual/range {v15 .. v21}, Lorg/concentus/EntropyCoder;->dec_update(JJJ)V

    goto/16 :goto_c

    :cond_a
    move/from16 v23, v13

    move-object v8, v15

    move/from16 v0, p9

    move v3, v12

    if-gt v0, v3, :cond_10

    if-eqz p11, :cond_b

    goto/16 :goto_b

    :cond_b
    shr-int/lit8 v0, v1, 0x1

    add-int/lit8 v3, v0, 0x1

    mul-int v4, v3, v3

    if-eqz v23, :cond_e

    if-gt v2, v0, :cond_c

    add-int/lit8 v3, v2, 0x1

    goto :goto_8

    :cond_c
    add-int/lit8 v3, v1, 0x1

    sub-int/2addr v3, v2

    :goto_8
    if-gt v2, v0, :cond_d

    add-int/lit8 v0, v2, 0x1

    mul-int/2addr v0, v2

    const/4 v5, 0x1

    shr-int/2addr v0, v5

    goto :goto_9

    :cond_d
    const/4 v5, 0x1

    add-int/lit8 v0, v1, 0x1

    sub-int/2addr v0, v2

    add-int/lit8 v6, v1, 0x2

    sub-int/2addr v6, v2

    mul-int/2addr v0, v6

    shr-int/2addr v0, v5

    sub-int v0, v4, v0

    :goto_9
    int-to-long v5, v0

    add-int/2addr v0, v3

    int-to-long v12, v0

    int-to-long v3, v4

    move-object v15, v8

    move-wide/from16 v16, v5

    move-wide/from16 v18, v12

    move-wide/from16 v20, v3

    .line 705
    invoke-virtual/range {v15 .. v21}, Lorg/concentus/EntropyCoder;->encode(JJJ)V

    goto :goto_c

    :cond_e
    int-to-long v5, v4

    .line 710
    invoke-virtual {v8, v5, v6}, Lorg/concentus/EntropyCoder;->decode(J)J

    move-result-wide v12

    long-to-int v2, v12

    mul-int/2addr v0, v3

    const/4 v12, 0x1

    shr-int/2addr v0, v12

    if-ge v2, v0, :cond_f

    mul-int/lit8 v2, v2, 0x8

    add-int/2addr v2, v12

    int-to-long v2, v2

    .line 713
    invoke-static {v2, v3}, Lorg/concentus/Inlines;->isqrt32(J)I

    move-result v0

    sub-int/2addr v0, v12

    shr-int/2addr v0, v12

    add-int/lit8 v2, v0, 0x1

    mul-int v3, v0, v2

    shr-int/2addr v3, v12

    goto :goto_a

    :cond_f
    add-int/lit8 v0, v1, 0x1

    mul-int/lit8 v3, v0, 0x2

    sub-int v2, v4, v2

    sub-int/2addr v2, v12

    mul-int/lit8 v2, v2, 0x8

    add-int/2addr v2, v12

    int-to-long v12, v2

    .line 717
    invoke-static {v12, v13}, Lorg/concentus/Inlines;->isqrt32(J)I

    move-result v2

    sub-int/2addr v3, v2

    const/4 v12, 0x1

    shr-int/lit8 v2, v3, 0x1

    sub-int/2addr v0, v2

    add-int/lit8 v3, v1, 0x2

    sub-int/2addr v3, v2

    mul-int/2addr v3, v0

    shr-int/2addr v3, v12

    sub-int v3, v4, v3

    move/from16 v26, v2

    move v2, v0

    move/from16 v0, v26

    :goto_a
    int-to-long v12, v3

    add-int/2addr v3, v2

    int-to-long v2, v3

    move-object v15, v8

    move-wide/from16 v16, v12

    move-wide/from16 v18, v2

    move-wide/from16 v20, v5

    .line 722
    invoke-virtual/range {v15 .. v21}, Lorg/concentus/EntropyCoder;->dec_update(JJJ)V

    move v2, v0

    goto :goto_c

    :cond_10
    :goto_b
    if-eqz v23, :cond_11

    int-to-long v3, v2

    add-int/lit8 v0, v1, 0x1

    int-to-long v5, v0

    .line 691
    invoke-virtual {v8, v3, v4, v5, v6}, Lorg/concentus/EntropyCoder;->enc_uint(JJ)V

    goto :goto_c

    :cond_11
    add-int/lit8 v4, v1, 0x1

    int-to-long v2, v4

    .line 693
    invoke-virtual {v8, v2, v3}, Lorg/concentus/EntropyCoder;->dec_uint(J)J

    move-result-wide v2

    long-to-int v2, v2

    :goto_c
    if-ltz v2, :cond_12

    const/4 v5, 0x1

    goto :goto_d

    :cond_12
    move/from16 v5, v22

    .line 725
    :goto_d
    invoke-static {v5}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    const/16 v0, 0x4000

    mul-int/2addr v2, v0

    .line 726
    invoke-static {v2, v1}, Lorg/concentus/Inlines;->celt_udiv(II)I

    move-result v1

    if-eqz v23, :cond_14

    if-eqz p11, :cond_14

    if-nez v1, :cond_13

    move-object v2, v9

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move v12, v0

    move-object/from16 v7, v24

    move-object v13, v8

    move v8, v14

    move/from16 v9, p6

    .line 729
    invoke-static/range {v2 .. v9}, Lorg/concentus/Bands;->intensity_stereo(Lorg/concentus/CeltMode;[II[II[[III)V

    goto :goto_e

    :cond_13
    move v12, v0

    move-object v13, v8

    .line 731
    invoke-static/range {p2 .. p6}, Lorg/concentus/Bands;->stereo_split([II[III)V

    goto :goto_e

    :cond_14
    move v12, v0

    move-object v13, v8

    :goto_e
    move v2, v1

    goto/16 :goto_13

    :cond_15
    move/from16 v23, v13

    move-object v13, v15

    const/4 v6, 0x2

    const/16 v12, 0x4000

    if-eqz p11, :cond_1b

    if-eqz v23, :cond_18

    if-le v2, v3, :cond_16

    const/4 v1, 0x1

    goto :goto_f

    :cond_16
    move/from16 v1, v22

    :goto_f
    if-eqz v1, :cond_17

    move/from16 v2, v22

    :goto_10
    if-ge v2, v10, :cond_17

    add-int v3, p5, v2

    .line 740
    aget v4, p4, v3

    rsub-int/lit8 v4, v4, 0x0

    aput v4, p4, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_17
    move-object v2, v9

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move v15, v6

    move/from16 v6, p5

    move-object/from16 v7, v24

    move v8, v14

    move/from16 v9, p6

    .line 743
    invoke-static/range {v2 .. v9}, Lorg/concentus/Bands;->intensity_stereo(Lorg/concentus/CeltMode;[II[II[[III)V

    goto :goto_11

    :cond_18
    move v15, v6

    move/from16 v1, v22

    .line 745
    :goto_11
    iget v2, v11, Lorg/concentus/BoxedValueInt;->Val:I

    const/16 v3, 0x10

    if-le v2, v3, :cond_1a

    iget v0, v0, Lorg/concentus/Bands$band_ctx;->remaining_bits:I

    if-le v0, v3, :cond_1a

    if-eqz v23, :cond_19

    .line 747
    invoke-virtual {v13, v1, v15}, Lorg/concentus/EntropyCoder;->enc_bit_logp(II)V

    goto :goto_12

    :cond_19
    const-wide/16 v0, 0x2

    .line 749
    invoke-virtual {v13, v0, v1}, Lorg/concentus/EntropyCoder;->dec_bit_logp(J)I

    move-result v1

    goto :goto_12

    :cond_1a
    move/from16 v1, v22

    :goto_12
    move/from16 v2, v22

    goto :goto_14

    :cond_1b
    :goto_13
    move/from16 v1, v22

    .line 756
    :goto_14
    invoke-virtual {v13}, Lorg/concentus/EntropyCoder;->tell_frac()I

    move-result v0

    sub-int v0, v0, v25

    .line 757
    iget v3, v11, Lorg/concentus/BoxedValueInt;->Val:I

    sub-int/2addr v3, v0

    iput v3, v11, Lorg/concentus/BoxedValueInt;->Val:I

    const/16 v3, 0x7fff

    if-nez v2, :cond_1c

    move-object/from16 v4, p12

    const/4 v5, 0x1

    .line 762
    iget v6, v4, Lorg/concentus/BoxedValueInt;->Val:I

    shl-int v7, v5, p8

    sub-int/2addr v7, v5

    and-int v5, v6, v7

    iput v5, v4, Lorg/concentus/BoxedValueInt;->Val:I

    const/16 v7, -0x4000

    move-object/from16 v5, p1

    move/from16 v4, v22

    goto :goto_15

    :cond_1c
    move-object/from16 v4, p12

    const/4 v5, 0x1

    if-ne v2, v12, :cond_1d

    .line 767
    iget v6, v4, Lorg/concentus/BoxedValueInt;->Val:I

    shl-int v7, v5, p8

    sub-int/2addr v7, v5

    shl-int v5, v7, p8

    and-int/2addr v5, v6

    iput v5, v4, Lorg/concentus/BoxedValueInt;->Val:I

    move-object/from16 v5, p1

    move v4, v3

    move v7, v12

    move/from16 v3, v22

    goto :goto_15

    :cond_1d
    int-to-short v3, v2

    .line 770
    invoke-static {v3}, Lorg/concentus/Bands;->bitexact_cos(I)I

    move-result v3

    rsub-int v4, v2, 0x4000

    int-to-short v4, v4

    .line 771
    invoke-static {v4}, Lorg/concentus/Bands;->bitexact_cos(I)I

    move-result v4

    add-int/lit8 v5, v10, -0x1

    shl-int/lit8 v5, v5, 0x7

    .line 774
    invoke-static {v4, v3}, Lorg/concentus/Bands;->bitexact_log2tan(II)I

    move-result v6

    invoke-static {v5, v6}, Lorg/concentus/Inlines;->FRAC_MUL16(II)I

    move-result v7

    move-object/from16 v5, p1

    .line 777
    :goto_15
    iput v1, v5, Lorg/concentus/Bands$split_ctx;->inv:I

    .line 778
    iput v3, v5, Lorg/concentus/Bands$split_ctx;->imid:I

    .line 779
    iput v4, v5, Lorg/concentus/Bands$split_ctx;->iside:I

    .line 780
    iput v7, v5, Lorg/concentus/Bands$split_ctx;->delta:I

    .line 781
    iput v2, v5, Lorg/concentus/Bands$split_ctx;->itheta:I

    .line 782
    iput v0, v5, Lorg/concentus/Bands$split_ctx;->qalloc:I

    return-void
.end method

.method static deinterleave_hadamard([IIIII)V
    .locals 7

    mul-int v0, p2, p3

    .line 476
    new-array v1, v0, [I

    const/4 v2, 0x0

    if-lez p3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 478
    :goto_0
    invoke-static {v3}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    if-eqz p4, :cond_2

    add-int/lit8 p4, p3, -0x2

    move v3, v2

    :goto_1
    if-ge v3, p3, :cond_4

    move v4, v2

    :goto_2
    if-ge v4, p2, :cond_1

    .line 484
    sget-object v5, Lorg/concentus/CeltTables;->ordery_table:[I

    add-int v6, p4, v3

    aget v5, v5, v6

    mul-int/2addr v5, p2

    add-int/2addr v5, v4

    mul-int v6, v4, p3

    add-int/2addr v6, v3

    add-int/2addr v6, p1

    aget v6, p0, v6

    aput v6, v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move p4, v2

    :goto_3
    if-ge p4, p3, :cond_4

    move v3, v2

    :goto_4
    if-ge v3, p2, :cond_3

    mul-int v4, p4, p2

    add-int/2addr v4, v3

    mul-int v5, v3, p3

    add-int/2addr v5, p4

    add-int/2addr v5, p1

    .line 490
    aget v5, p0, v5

    aput v5, v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 p4, p4, 0x1

    goto :goto_3

    .line 495
    :cond_4
    invoke-static {v1, v2, p0, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method static denormalise_bands(Lorg/concentus/CeltMode;[I[II[IIIIIII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p9

    .line 157
    iget-object v3, v0, Lorg/concentus/CeltMode;->eBands:[S

    .line 158
    iget v0, v0, Lorg/concentus/CeltMode;->shortMdctSize:I

    mul-int v0, v0, p8

    .line 159
    aget-short v4, v3, p7

    mul-int v4, v4, p8

    const/4 v5, 0x1

    if-eq v2, v5, :cond_0

    .line 161
    div-int v2, v0, v2

    invoke-static {v4, v2}, Lorg/concentus/Inlines;->IMIN(II)I

    move-result v4

    :cond_0
    const/4 v2, 0x0

    if-eqz p10, :cond_1

    move v4, v2

    move v6, v4

    move v7, v6

    goto :goto_0

    :cond_1
    move/from16 v6, p7

    move v7, v4

    move/from16 v4, p6

    .line 168
    :goto_0
    aget-short v8, v3, v4

    mul-int v8, v8, p8

    move/from16 v10, p3

    move v9, v2

    .line 170
    :goto_1
    aget-short v11, v3, v4

    mul-int v11, v11, p8

    if-ge v9, v11, :cond_2

    add-int/lit8 v11, v10, 0x1

    .line 171
    aput v2, v1, v10

    add-int/lit8 v9, v9, 0x1

    move v10, v11

    goto :goto_1

    :cond_2
    move v9, v4

    :goto_2
    if-ge v9, v6, :cond_7

    .line 180
    aget-short v11, v3, v9

    mul-int v11, v11, p8

    add-int/lit8 v12, v9, 0x1

    .line 181
    aget-short v13, v3, v12

    mul-int v13, v13, p8

    add-int v14, p5, v9

    .line 182
    aget v14, p4, v14

    sget-object v15, Lorg/concentus/CeltTables;->eMeans:[B

    aget-byte v9, v15, v9

    int-to-short v9, v9

    const/4 v15, 0x6

    invoke-static {v9, v15}, Lorg/concentus/Inlines;->SHL16(SI)S

    move-result v9

    invoke-static {v14, v9}, Lorg/concentus/Inlines;->ADD16(II)I

    move-result v9

    shr-int/lit8 v14, v9, 0xa

    rsub-int/lit8 v14, v14, 0x10

    const/16 v15, 0x1f

    if-le v14, v15, :cond_3

    move v9, v2

    move v14, v9

    goto :goto_3

    :cond_3
    and-int/lit16 v9, v9, 0x3ff

    .line 191
    invoke-static {v9}, Lorg/concentus/Inlines;->celt_exp2_frac(I)I

    move-result v9

    :goto_3
    if-gez v14, :cond_6

    const/4 v15, -0x2

    if-ge v14, v15, :cond_4

    const/16 v9, 0x7fff

    move v14, v15

    .line 203
    :cond_4
    :goto_4
    aget v15, p1, v8

    invoke-static {v15, v9}, Lorg/concentus/Inlines;->MULT16_16(II)I

    move-result v15

    neg-int v2, v14

    invoke-static {v15, v2}, Lorg/concentus/Inlines;->SHR32(II)I

    move-result v2

    aput v2, v1, v10

    add-int/2addr v11, v5

    if-lt v11, v13, :cond_5

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    goto :goto_4

    :cond_6
    add-int/lit8 v2, v10, 0x1

    add-int/lit8 v15, v8, 0x1

    .line 207
    aget v8, p1, v8

    invoke-static {v8, v9}, Lorg/concentus/Inlines;->MULT16_16(II)I

    move-result v8

    invoke-static {v8, v14}, Lorg/concentus/Inlines;->SHR32(II)I

    move-result v8

    aput v8, v1, v10

    add-int/2addr v11, v5

    move v10, v2

    move v8, v15

    if-lt v11, v13, :cond_6

    :goto_5
    move v9, v12

    const/4 v2, 0x0

    goto :goto_2

    :cond_7
    if-gt v4, v6, :cond_8

    goto :goto_6

    :cond_8
    const/4 v5, 0x0

    .line 212
    :goto_6
    invoke-static {v5}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    add-int v2, p3, v7

    sub-int/2addr v0, v7

    const/4 v3, 0x0

    .line 213
    invoke-static {v1, v3, v2, v0}, Lorg/concentus/Arrays;->MemSetWithOffset([IIII)V

    return-void
.end method

.method static haar1([IIII)V
    .locals 9

    shr-int/lit8 p2, p2, 0x1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_1

    move v2, v0

    :goto_1
    if-ge v2, p2, :cond_0

    add-int v3, p1, v1

    mul-int/lit8 v4, p3, 0x2

    mul-int/2addr v4, v2

    add-int/2addr v3, v4

    .line 529
    aget v4, p0, v3

    const/16 v5, 0x5a82

    invoke-static {v5, v4}, Lorg/concentus/Inlines;->MULT16_16(II)I

    move-result v4

    add-int v6, v3, p3

    .line 530
    aget v7, p0, v6

    invoke-static {v5, v7}, Lorg/concentus/Inlines;->MULT16_16(II)I

    move-result v5

    .line 531
    invoke-static {v4, v5}, Lorg/concentus/Inlines;->ADD32(II)I

    move-result v7

    const/16 v8, 0xf

    invoke-static {v7, v8}, Lorg/concentus/Inlines;->PSHR32(II)I

    move-result v7

    invoke-static {v7}, Lorg/concentus/Inlines;->EXTRACT16(I)S

    move-result v7

    aput v7, p0, v3

    .line 532
    invoke-static {v4, v5}, Lorg/concentus/Inlines;->SUB32(II)I

    move-result v3

    invoke-static {v3, v8}, Lorg/concentus/Inlines;->PSHR32(II)I

    move-result v3

    invoke-static {v3}, Lorg/concentus/Inlines;->EXTRACT16(I)S

    move-result v3

    aput v3, p0, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static haar1ZeroOffset([III)V
    .locals 9

    shr-int/lit8 p1, p1, 0x1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_1

    move v2, v0

    :goto_1
    if-ge v2, p1, :cond_0

    mul-int/lit8 v3, p2, 0x2

    mul-int/2addr v3, v2

    add-int/2addr v3, v1

    .line 544
    aget v4, p0, v3

    const/16 v5, 0x5a82

    invoke-static {v5, v4}, Lorg/concentus/Inlines;->MULT16_16(II)I

    move-result v4

    add-int v6, v3, p2

    .line 545
    aget v7, p0, v6

    invoke-static {v5, v7}, Lorg/concentus/Inlines;->MULT16_16(II)I

    move-result v5

    .line 546
    invoke-static {v4, v5}, Lorg/concentus/Inlines;->ADD32(II)I

    move-result v7

    const/16 v8, 0xf

    invoke-static {v7, v8}, Lorg/concentus/Inlines;->PSHR32(II)I

    move-result v7

    invoke-static {v7}, Lorg/concentus/Inlines;->EXTRACT16(I)S

    move-result v7

    aput v7, p0, v3

    .line 547
    invoke-static {v4, v5}, Lorg/concentus/Inlines;->SUB32(II)I

    move-result v3

    invoke-static {v3, v8}, Lorg/concentus/Inlines;->PSHR32(II)I

    move-result v3

    invoke-static {v3}, Lorg/concentus/Inlines;->EXTRACT16(I)S

    move-result v3

    aput v3, p0, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static hysteresis_decision(I[I[III)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    .line 47
    aget v1, p1, v0

    if-ge p0, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-le v0, p4, :cond_2

    .line 52
    aget p3, p1, p4

    aget v1, p2, p4

    add-int/2addr p3, v1

    if-ge p0, p3, :cond_2

    move v0, p4

    :cond_2
    if-ge v0, p4, :cond_3

    add-int/lit8 p3, p4, -0x1

    .line 56
    aget p1, p1, p3

    aget p2, p2, p3

    sub-int/2addr p1, p2

    if-le p0, p1, :cond_3

    goto :goto_2

    :cond_3
    move p4, v0

    :goto_2
    return p4
.end method

.method static intensity_stereo(Lorg/concentus/CeltMode;[II[II[[III)V
    .locals 4

    const/4 p0, 0x0

    .line 299
    aget-object v0, p5, p0

    aget v0, v0, p6

    const/4 v1, 0x1

    aget-object v2, p5, v1

    aget v2, v2, p6

    invoke-static {v0, v2}, Lorg/concentus/Inlines;->MAX32(II)I

    move-result v0

    invoke-static {v0}, Lorg/concentus/Inlines;->celt_zlog2(I)I

    move-result v0

    add-int/lit8 v0, v0, -0xd

    .line 300
    aget-object v2, p5, p0

    aget v2, v2, p6

    invoke-static {v2, v0}, Lorg/concentus/Inlines;->VSHR32(II)I

    move-result v2

    .line 301
    aget-object p5, p5, v1

    aget p5, p5, p6

    invoke-static {p5, v0}, Lorg/concentus/Inlines;->VSHR32(II)I

    move-result p5

    .line 302
    invoke-static {v2, v2}, Lorg/concentus/Inlines;->MULT16_16(II)I

    move-result p6

    add-int/2addr p6, v1

    invoke-static {p5, p5}, Lorg/concentus/Inlines;->MULT16_16(II)I

    move-result v0

    add-int/2addr p6, v0

    invoke-static {p6}, Lorg/concentus/Inlines;->celt_sqrt(I)I

    move-result p6

    add-int/2addr p6, v1

    const/16 v0, 0xe

    .line 303
    invoke-static {v2, v0}, Lorg/concentus/Inlines;->SHL32(II)I

    move-result v1

    invoke-static {v1, p6}, Lorg/concentus/Inlines;->DIV32_16(II)I

    move-result v1

    .line 304
    invoke-static {p5, v0}, Lorg/concentus/Inlines;->SHL32(II)I

    move-result p5

    invoke-static {p5, p6}, Lorg/concentus/Inlines;->DIV32_16(II)I

    move-result p5

    :goto_0
    if-ge p0, p7, :cond_0

    add-int p6, p2, p0

    .line 307
    aget v2, p1, p6

    add-int v3, p4, p0

    .line 308
    aget v3, p3, v3

    .line 309
    invoke-static {v1, v2}, Lorg/concentus/Inlines;->MULT16_16(II)I

    move-result v2

    invoke-static {v2, p5, v3}, Lorg/concentus/Inlines;->MAC16_16(III)I

    move-result v2

    invoke-static {v2, v0}, Lorg/concentus/Inlines;->SHR32(II)I

    move-result v2

    invoke-static {v2}, Lorg/concentus/Inlines;->EXTRACT16(I)S

    move-result v2

    aput v2, p1, p6

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static interleave_hadamard([IIIII)V
    .locals 8

    mul-int v0, p2, p3

    .line 502
    new-array v1, v0, [I

    const/4 v2, 0x0

    if-eqz p4, :cond_1

    add-int/lit8 p4, p3, -0x2

    move v3, v2

    :goto_0
    if-ge v3, p3, :cond_3

    move v4, v2

    :goto_1
    if-ge v4, p2, :cond_0

    mul-int v5, v4, p3

    add-int/2addr v5, v3

    .line 508
    sget-object v6, Lorg/concentus/CeltTables;->ordery_table:[I

    add-int v7, p4, v3

    aget v6, v6, v7

    mul-int/2addr v6, p2

    add-int/2addr v6, v4

    add-int/2addr v6, p1

    aget v6, p0, v6

    aput v6, v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move p4, v2

    :goto_2
    if-ge p4, p3, :cond_3

    move v3, v2

    :goto_3
    if-ge v3, p2, :cond_2

    mul-int v4, v3, p3

    add-int/2addr v4, p4

    mul-int v5, p4, p2

    add-int/2addr v5, v3

    add-int/2addr v5, p1

    .line 514
    aget v5, p0, v5

    aput v5, v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    .line 519
    :cond_3
    invoke-static {v1, v2, p0, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method static normalise_bands(Lorg/concentus/CeltMode;[[I[[I[[IIII)V
    .locals 9

    .line 130
    iget-object p0, p0, Lorg/concentus/CeltMode;->eBands:[S

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    move v2, v0

    .line 138
    :goto_0
    aget-object v3, p3, v1

    aget v3, v3, v2

    invoke-static {v3}, Lorg/concentus/Inlines;->celt_zlog2(I)I

    move-result v3

    add-int/lit8 v4, v3, -0xd

    .line 139
    aget-object v5, p3, v1

    aget v5, v5, v2

    invoke-static {v5, v4}, Lorg/concentus/Inlines;->VSHR32(II)I

    move-result v4

    const/4 v5, 0x3

    .line 140
    invoke-static {v4, v5}, Lorg/concentus/Inlines;->SHL32(II)I

    move-result v4

    invoke-static {v4}, Lorg/concentus/Inlines;->celt_rcp(I)I

    move-result v4

    invoke-static {v4}, Lorg/concentus/Inlines;->EXTRACT16(I)S

    move-result v4

    .line 141
    aget-short v5, p0, v2

    mul-int/2addr v5, p6

    .line 143
    :cond_1
    aget-object v6, p2, v1

    aget-object v7, p1, v1

    aget v7, v7, v5

    add-int/lit8 v8, v3, -0xe

    invoke-static {v7, v8}, Lorg/concentus/Inlines;->VSHR32(II)I

    move-result v7

    invoke-static {v7, v4}, Lorg/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v7

    aput v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v2, 0x1

    .line 144
    aget-short v7, p0, v6

    mul-int/2addr v7, p6

    if-lt v5, v7, :cond_1

    if-lt v6, p4, :cond_2

    add-int/lit8 v1, v1, 0x1

    if-lt v1, p5, :cond_0

    return-void

    :cond_2
    move v2, v6

    goto :goto_0
.end method

.method static quant_all_bands(ILorg/concentus/CeltMode;II[I[I[S[[I[IIIII[IIILorg/concentus/EntropyCoder;IILorg/concentus/BoxedValueInt;)V
    .locals 43

    move/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p10

    move/from16 v5, p12

    move-object/from16 v6, p19

    .line 1301
    iget-object v7, v1, Lorg/concentus/CeltMode;->eBands:[S

    const/4 v8, 0x1

    if-eqz p5, :cond_0

    const/4 v9, 0x2

    goto :goto_0

    :cond_0
    move v9, v8

    :goto_0
    if-nez v0, :cond_1

    move v11, v8

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    .line 1313
    :goto_1
    new-instance v15, Lorg/concentus/Bands$band_ctx;

    invoke-direct {v15}, Lorg/concentus/Bands$band_ctx;-><init>()V

    shl-int v28, v8, p17

    if-eqz p9, :cond_2

    move/from16 v14, v28

    goto :goto_2

    :cond_2
    move v14, v8

    .line 1317
    :goto_2
    aget-short v12, v7, v2

    mul-int v29, v28, v12

    .line 1321
    iget v12, v1, Lorg/concentus/CeltMode;->nbEBands:I

    sub-int/2addr v12, v8

    aget-short v12, v7, v12

    mul-int v12, v12, v28

    sub-int v12, v12, v29

    mul-int/2addr v12, v9

    new-array v13, v12, [I

    .line 1322
    iget v12, v1, Lorg/concentus/CeltMode;->nbEBands:I

    sub-int/2addr v12, v8

    aget-short v12, v7, v12

    mul-int v12, v12, v28

    sub-int v30, v12, v29

    .line 1327
    iget v12, v1, Lorg/concentus/CeltMode;->nbEBands:I

    sub-int/2addr v12, v8

    aget-short v12, v7, v12

    mul-int v31, v28, v12

    move-object/from16 v12, p7

    .line 1330
    iput-object v12, v15, Lorg/concentus/Bands$band_ctx;->bandE:[[I

    move-object/from16 v12, p16

    .line 1331
    iput-object v12, v15, Lorg/concentus/Bands$band_ctx;->ec:Lorg/concentus/EntropyCoder;

    .line 1332
    iput v0, v15, Lorg/concentus/Bands$band_ctx;->encode:I

    .line 1333
    iput v5, v15, Lorg/concentus/Bands$band_ctx;->intensity:I

    .line 1334
    iput-object v1, v15, Lorg/concentus/Bands$band_ctx;->m:Lorg/concentus/CeltMode;

    .line 1335
    iget v0, v6, Lorg/concentus/BoxedValueInt;->Val:I

    iput v0, v15, Lorg/concentus/Bands$band_ctx;->seed:I

    .line 1336
    iput v4, v15, Lorg/concentus/Bands$band_ctx;->spread:I

    move-object/from16 v19, p4

    move/from16 v0, p11

    move/from16 v16, p15

    move/from16 v17, v8

    const/16 v18, 0x0

    move v8, v2

    :goto_3
    if-ge v8, v3, :cond_1e

    .line 1351
    iput v8, v15, Lorg/concentus/Bands$band_ctx;->i:I

    add-int/lit8 v10, v3, -0x1

    if-ne v8, v10, :cond_3

    const/16 v27, 0x1

    goto :goto_4

    :cond_3
    const/16 v27, 0x0

    .line 1355
    :goto_4
    aget-short v20, v7, v8

    mul-int v21, v28, v20

    const/16 v33, 0x0

    if-eqz p5, :cond_4

    mul-int v22, v28, v20

    move-object/from16 v23, p5

    goto :goto_5

    :cond_4
    move-object/from16 v23, v33

    const/16 v22, 0x0

    :goto_5
    add-int/lit8 v34, v8, 0x1

    .line 1362
    aget-short v24, v7, v34

    mul-int v24, v24, v28

    mul-int v20, v20, v28

    sub-int v35, v24, v20

    .line 1363
    invoke-virtual/range {p16 .. p16}, Lorg/concentus/EntropyCoder;->tell_frac()I

    move-result v36

    if-eq v8, v2, :cond_5

    sub-int v16, v16, v36

    :cond_5
    move/from16 v3, v16

    sub-int v12, p14, v36

    add-int/lit8 v6, v12, -0x1

    .line 1370
    iput v6, v15, Lorg/concentus/Bands$band_ctx;->remaining_bits:I

    add-int/lit8 v6, p18, -0x1

    move-object/from16 v16, v13

    const/4 v13, 0x3

    if-gt v8, v6, :cond_6

    sub-int v6, p18, v8

    .line 1372
    invoke-static {v13, v6}, Lorg/concentus/Inlines;->IMIN(II)I

    move-result v6

    invoke-static {v3, v6}, Lorg/concentus/Inlines;->celt_sudiv(II)I

    move-result v6

    .line 1373
    aget v20, p8, v8

    add-int v6, v20, v6

    invoke-static {v12, v6}, Lorg/concentus/Inlines;->IMIN(II)I

    move-result v6

    const/16 v12, 0x3fff

    invoke-static {v12, v6}, Lorg/concentus/Inlines;->IMIN(II)I

    move-result v6

    const/4 v12, 0x0

    invoke-static {v12, v6}, Lorg/concentus/Inlines;->IMAX(II)I

    move-result v6

    goto :goto_6

    :cond_6
    const/4 v6, 0x0

    :goto_6
    if-eqz v11, :cond_8

    .line 1378
    aget-short v12, v7, v8

    mul-int v12, v12, v28

    sub-int v12, v12, v35

    aget-short v20, v7, v2

    mul-int v13, v28, v20

    if-lt v12, v13, :cond_8

    if-nez v17, :cond_7

    if-nez v18, :cond_8

    :cond_7
    move/from16 v37, v8

    goto :goto_7

    :cond_8
    move/from16 v37, v18

    .line 1382
    :goto_7
    aget v12, p13, v8

    .line 1383
    iput v12, v15, Lorg/concentus/Bands$band_ctx;->tf_change:I

    .line 1384
    iget v13, v1, Lorg/concentus/CeltMode;->effEBands:I

    if-lt v8, v13, :cond_a

    if-eqz p5, :cond_9

    move-object/from16 v23, v16

    const/16 v22, 0x0

    :cond_9
    move-object/from16 v13, v16

    move/from16 v39, v22

    move-object/from16 v38, v23

    move-object/from16 v19, v33

    const/16 v21, 0x0

    goto :goto_8

    :cond_a
    move-object/from16 v13, p4

    move/from16 v39, v22

    move-object/from16 v38, v23

    :goto_8
    if-ne v8, v10, :cond_b

    move-object/from16 v10, v33

    goto :goto_9

    :cond_b
    move-object/from16 v10, v19

    :goto_9
    if-eqz v37, :cond_10

    const/4 v1, 0x3

    if-ne v4, v1, :cond_c

    const/4 v1, 0x1

    if-gt v14, v1, :cond_c

    if-gez v12, :cond_10

    .line 1404
    :cond_c
    aget-short v1, v7, v37

    mul-int v1, v1, v28

    sub-int v1, v1, v29

    sub-int v1, v1, v35

    const/4 v12, 0x0

    invoke-static {v12, v1}, Lorg/concentus/Inlines;->IMAX(II)I

    move-result v1

    move/from16 v17, v37

    :goto_a
    const/16 v18, -0x1

    add-int/lit8 v17, v17, -0x1

    .line 1406
    aget-short v18, v7, v17

    mul-int v12, v28, v18

    add-int v2, v1, v29

    if-le v12, v2, :cond_d

    move/from16 v2, p2

    const/4 v12, 0x0

    goto :goto_a

    :cond_d
    add-int/lit8 v12, v37, -0x1

    :goto_b
    const/16 v18, 0x1

    add-int/lit8 v12, v12, 0x1

    .line 1408
    aget-short v18, v7, v12

    move/from16 p0, v1

    mul-int v1, v28, v18

    add-int v4, v2, v35

    if-ge v1, v4, :cond_e

    move/from16 v1, p0

    move/from16 v4, p10

    goto :goto_b

    :cond_e
    const-wide/16 v1, 0x0

    move/from16 v4, v17

    move-wide/from16 v17, v1

    :goto_c
    mul-int v19, v4, v9

    move/from16 p9, v3

    .line 1412
    aget-short v3, p6, v19

    move/from16 p11, v6

    move-object/from16 v40, v7

    int-to-long v6, v3

    or-long/2addr v1, v6

    add-int v19, v19, v9

    const/4 v3, 0x1

    add-int/lit8 v19, v19, -0x1

    .line 1413
    aget-short v6, p6, v19

    int-to-long v6, v6

    or-long v17, v17, v6

    add-int/2addr v4, v3

    if-lt v4, v12, :cond_f

    move/from16 v6, p0

    move-wide/from16 v3, v17

    goto :goto_d

    :cond_f
    move/from16 v3, p9

    move/from16 v6, p11

    move-object/from16 v7, v40

    goto :goto_c

    :cond_10
    move/from16 p9, v3

    move/from16 p11, v6

    move-object/from16 v40, v7

    const/4 v3, 0x1

    shl-int v1, v3, v14

    sub-int/2addr v1, v3

    int-to-long v1, v1

    move-wide v3, v1

    const/4 v6, -0x1

    :goto_d
    if-eqz v0, :cond_12

    if-ne v8, v5, :cond_12

    if-eqz v11, :cond_11

    const/4 v12, 0x0

    .line 1426
    :goto_e
    aget-short v0, v40, v8

    mul-int v0, v0, v28

    sub-int v0, v0, v29

    if-ge v12, v0, :cond_11

    .line 1427
    aget v0, v16, v12

    add-int v7, v30, v12

    aget v7, v16, v7

    add-int/2addr v0, v7

    invoke-static {v0}, Lorg/concentus/Inlines;->HALF32(I)I

    move-result v0

    aput v0, v16, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_e

    :cond_11
    const/4 v0, 0x0

    :cond_12
    if-eqz v0, :cond_17

    .line 1432
    div-int/lit8 v7, p11, 0x2

    const/4 v12, -0x1

    if-eq v6, v12, :cond_13

    move-object/from16 v18, v16

    goto :goto_f

    :cond_13
    move-object/from16 v18, v33

    :goto_f
    if-eqz v27, :cond_14

    move-object/from16 v22, v33

    goto :goto_10

    :cond_14
    move-object/from16 v22, v16

    .line 1441
    :goto_10
    aget-short v12, v40, v8

    mul-int v12, v12, v28

    sub-int v23, v12, v29

    const/16 v24, 0x7fff

    long-to-int v1, v1

    const/16 v32, 0x0

    move-object v12, v15

    move-object/from16 v41, v16

    move/from16 v42, v14

    move/from16 v14, v21

    move-object v2, v15

    move/from16 v15, v35

    move/from16 v16, v7

    move/from16 v17, v42

    move/from16 v19, v6

    move/from16 v20, p17

    move-object/from16 v21, v22

    move/from16 v22, v23

    move/from16 v23, v24

    move-object/from16 v24, v10

    move/from16 v25, v31

    move/from16 v26, v1

    .line 1432
    invoke-static/range {v12 .. v26}, Lorg/concentus/Bands;->quant_band(Lorg/concentus/Bands$band_ctx;[IIIII[III[III[III)I

    move-result v1

    int-to-long v14, v1

    const/4 v1, -0x1

    if-eq v6, v1, :cond_15

    move-object/from16 v18, v41

    goto :goto_11

    :cond_15
    move-object/from16 v18, v33

    :goto_11
    add-int v19, v30, v6

    if-eqz v27, :cond_16

    move-object/from16 v21, v33

    goto :goto_12

    :cond_16
    move-object/from16 v21, v41

    .line 1457
    :goto_12
    aget-short v1, v40, v8

    mul-int v1, v1, v28

    sub-int v1, v1, v29

    add-int v22, v30, v1

    const/16 v23, 0x7fff

    long-to-int v1, v3

    move-object v12, v2

    move-object/from16 v13, v38

    move-wide v3, v14

    move/from16 v14, v39

    move/from16 v15, v35

    move/from16 v16, v7

    move/from16 v17, v42

    move/from16 v20, p17

    move-object/from16 v24, v10

    move/from16 v25, v31

    move/from16 v26, v1

    .line 1447
    invoke-static/range {v12 .. v26}, Lorg/concentus/Bands;->quant_band(Lorg/concentus/Bands$band_ctx;[IIIII[III[III[III)I

    move-result v1

    int-to-long v6, v1

    move-wide v14, v6

    move-object v7, v2

    goto/16 :goto_18

    :cond_17
    move/from16 v42, v14

    move-object v7, v15

    move-object/from16 v41, v16

    const/16 v32, 0x0

    if-eqz v38, :cond_1a

    const/4 v12, -0x1

    if-eq v6, v12, :cond_18

    move-object/from16 v20, v41

    goto :goto_13

    :cond_18
    move-object/from16 v20, v33

    :goto_13
    if-eqz v27, :cond_19

    move-object/from16 v23, v33

    goto :goto_14

    :cond_19
    move-object/from16 v23, v41

    .line 1477
    :goto_14
    aget-short v12, v40, v8

    mul-int v12, v12, v28

    sub-int v24, v12, v29

    or-long/2addr v1, v3

    long-to-int v1, v1

    move-object v12, v7

    move/from16 v14, v21

    move-object/from16 v15, v38

    move/from16 v16, v39

    move/from16 v17, v35

    move/from16 v18, p11

    move/from16 v19, v42

    move/from16 v21, v6

    move/from16 v22, p17

    move-object/from16 v25, v10

    move/from16 v26, v31

    move/from16 v27, v1

    .line 1465
    invoke-static/range {v12 .. v27}, Lorg/concentus/Bands;->quant_band_stereo(Lorg/concentus/Bands$band_ctx;[II[IIIII[III[II[III)I

    move-result v1

    goto :goto_17

    :cond_1a
    const/4 v12, -0x1

    if-eq v6, v12, :cond_1b

    move-object/from16 v18, v41

    goto :goto_15

    :cond_1b
    move-object/from16 v18, v33

    :goto_15
    if-eqz v27, :cond_1c

    goto :goto_16

    :cond_1c
    move-object/from16 v33, v41

    .line 1493
    :goto_16
    aget-short v12, v40, v8

    mul-int v12, v12, v28

    sub-int v22, v12, v29

    or-long/2addr v1, v3

    long-to-int v1, v1

    const/16 v23, 0x7fff

    move-object v12, v7

    move/from16 v14, v21

    move/from16 v15, v35

    move/from16 v16, p11

    move/from16 v17, v42

    move/from16 v19, v6

    move/from16 v20, p17

    move-object/from16 v21, v33

    move-object/from16 v24, v10

    move/from16 v25, v31

    move/from16 v26, v1

    .line 1483
    invoke-static/range {v12 .. v26}, Lorg/concentus/Bands;->quant_band(Lorg/concentus/Bands$band_ctx;[IIIII[III[III[III)I

    move-result v1

    :goto_17
    int-to-long v1, v1

    move-wide v14, v1

    move-wide v3, v14

    :goto_18
    mul-int v1, v8, v9

    const-wide/16 v12, 0xff

    and-long v2, v3, v12

    long-to-int v2, v2

    int-to-short v2, v2

    .line 1502
    aput-short v2, p6, v1

    add-int/2addr v1, v9

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    and-long v3, v14, v12

    long-to-int v3, v3

    int-to-short v3, v3

    .line 1503
    aput-short v3, p6, v1

    .line 1504
    aget v1, p8, v8

    add-int v1, v1, v36

    add-int v16, p9, v1

    shl-int/lit8 v1, v35, 0x3

    move/from16 v6, p11

    if-le v6, v1, :cond_1d

    move/from16 v17, v2

    goto :goto_19

    :cond_1d
    move/from16 v17, v32

    :goto_19
    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p10

    move-object/from16 v12, p16

    move-object/from16 v6, p19

    move-object v15, v7

    move-object/from16 v19, v10

    move/from16 v8, v34

    move/from16 v18, v37

    move-object/from16 v7, v40

    move-object/from16 v13, v41

    move/from16 v14, v42

    goto/16 :goto_3

    :cond_1e
    move-object v7, v15

    .line 1510
    iget v0, v7, Lorg/concentus/Bands$band_ctx;->seed:I

    move-object/from16 v1, p19

    iput v0, v1, Lorg/concentus/BoxedValueInt;->Val:I

    return-void
.end method

.method static quant_band(Lorg/concentus/Bands$band_ctx;[IIIII[III[III[III)I
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v1, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p12

    .line 1014
    iget v4, v0, Lorg/concentus/Bands$band_ctx;->encode:I

    const/4 v14, 0x1

    if-nez v4, :cond_0

    move/from16 v16, v14

    goto :goto_0

    :cond_0
    const/16 v16, 0x0

    .line 1019
    :goto_0
    iget v4, v0, Lorg/concentus/Bands$band_ctx;->encode:I

    .line 1020
    iget v5, v0, Lorg/concentus/Bands$band_ctx;->tf_change:I

    if-ne v1, v14, :cond_1

    move v10, v14

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    .line 1024
    :goto_1
    invoke-static {v13, v1}, Lorg/concentus/Inlines;->celt_udiv(II)I

    move-result v6

    if-ne v13, v14, :cond_2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v5, p4

    move-object/from16 v6, p9

    move/from16 v7, p10

    .line 1028
    invoke-static/range {v0 .. v7}, Lorg/concentus/Bands;->quant_band_n1(Lorg/concentus/Bands$band_ctx;[II[III[II)I

    move-result v0

    return v0

    :cond_2
    if-lez v5, :cond_3

    move v9, v5

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    :goto_2
    if-eqz v3, :cond_6

    if-eqz v2, :cond_6

    if-nez v9, :cond_5

    and-int/lit8 v7, v6, 0x1

    if-nez v7, :cond_4

    if-ltz v5, :cond_5

    :cond_4
    if-le v1, v14, :cond_6

    :cond_5
    move/from16 v7, p7

    move/from16 v8, p13

    .line 1037
    invoke-static {v2, v7, v3, v8, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v7, v3

    goto :goto_3

    :cond_6
    move/from16 v7, p7

    move v8, v7

    move-object v7, v2

    :goto_3
    move/from16 v2, p14

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v9, :cond_b

    if-eqz v4, :cond_7

    shr-int v15, v13, v3

    shl-int v0, v14, v3

    .line 1044
    invoke-static {v11, v12, v15, v0}, Lorg/concentus/Bands;->haar1([IIII)V

    :cond_7
    if-eqz v7, :cond_8

    shr-int v0, v13, v3

    shl-int v15, v14, v3

    .line 1047
    invoke-static {v7, v8, v0, v15}, Lorg/concentus/Bands;->haar1([IIII)V

    :cond_8
    and-int/lit8 v0, v2, 0xf

    shr-int/lit8 v2, v2, 0x4

    .line 1051
    const-string v15, "e"

    if-gez v0, :cond_9

    .line 1052
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_9
    if-gez v2, :cond_a

    .line 1055
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1057
    :cond_a
    sget-object v14, Lorg/concentus/Bands;->bit_interleave_table:[B

    aget-byte v0, v14, v0

    aget-byte v2, v14, v2

    shl-int/lit8 v2, v2, 0x2

    or-int/2addr v2, v0

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    const/4 v14, 0x1

    goto :goto_4

    :cond_b
    shr-int v0, v1, v9

    shl-int v1, v6, v9

    move v14, v0

    move v15, v1

    move/from16 v17, v2

    const/4 v6, 0x0

    :goto_5
    and-int/lit8 v0, v15, 0x1

    if-nez v0, :cond_e

    if-gez v5, :cond_e

    if-eqz v4, :cond_c

    .line 1065
    invoke-static {v11, v12, v15, v14}, Lorg/concentus/Bands;->haar1([IIII)V

    :cond_c
    if-eqz v7, :cond_d

    .line 1068
    invoke-static {v7, v8, v15, v14}, Lorg/concentus/Bands;->haar1([IIII)V

    :cond_d
    shl-int v0, v17, v14

    or-int v17, v17, v0

    shl-int/lit8 v14, v14, 0x1

    shr-int/lit8 v15, v15, 0x1

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_e
    const/4 v0, 0x1

    if-le v14, v0, :cond_10

    if-eqz v4, :cond_f

    shr-int v0, v15, v9

    shl-int v1, v14, v9

    .line 1082
    invoke-static {v11, v12, v0, v1, v10}, Lorg/concentus/Bands;->deinterleave_hadamard([IIIII)V

    :cond_f
    if-eqz v7, :cond_10

    shr-int v0, v15, v9

    shl-int v1, v14, v9

    .line 1085
    invoke-static {v7, v8, v0, v1, v10}, Lorg/concentus/Bands;->deinterleave_hadamard([IIIII)V

    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move v5, v14

    move v13, v6

    move-object v6, v7

    move v7, v8

    move/from16 v8, p8

    move/from16 p0, v13

    move v13, v9

    move/from16 v9, p11

    move/from16 v18, v10

    move/from16 v10, v17

    .line 1089
    invoke-static/range {v0 .. v10}, Lorg/concentus/Bands;->quant_partition(Lorg/concentus/Bands$band_ctx;[IIIII[IIIII)I

    move-result v0

    if-eqz v16, :cond_15

    const/4 v1, 0x1

    if-le v14, v1, :cond_11

    shr-int v2, v15, v13

    shl-int v3, v14, v13

    move/from16 v4, v18

    .line 1095
    invoke-static {v11, v12, v2, v3, v4}, Lorg/concentus/Bands;->interleave_hadamard([IIIII)V

    :cond_11
    const/4 v2, 0x0

    move/from16 v6, p0

    :goto_6
    if-ge v2, v6, :cond_12

    shr-int/lit8 v14, v14, 0x1

    shl-int/2addr v15, v1

    shr-int v1, v0, v14

    or-int/2addr v0, v1

    .line 1105
    invoke-static {v11, v12, v15, v14}, Lorg/concentus/Bands;->haar1([IIII)V

    add-int/lit8 v2, v2, 0x1

    const/4 v1, 0x1

    goto :goto_6

    :cond_12
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v13, :cond_13

    .line 1109
    sget-object v2, Lorg/concentus/Bands;->bit_deinterleave_table:[S

    aget-short v0, v2, v0

    move/from16 v2, p3

    shr-int v3, v2, v1

    const/4 v4, 0x1

    shl-int v5, v4, v1

    .line 1110
    invoke-static {v11, v12, v3, v5}, Lorg/concentus/Bands;->haar1([IIII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_13
    move/from16 v2, p3

    shl-int v1, v14, v13

    if-eqz p9, :cond_14

    const/16 v3, 0x16

    .line 1118
    invoke-static {v2, v3}, Lorg/concentus/Inlines;->SHL32(II)I

    move-result v3

    invoke-static {v3}, Lorg/concentus/Inlines;->celt_sqrt(I)I

    move-result v3

    const/4 v15, 0x0

    :goto_8
    if-ge v15, v2, :cond_14

    add-int v4, p10, v15

    add-int v5, v12, v15

    .line 1120
    aget v5, v11, v5

    invoke-static {v3, v5}, Lorg/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v5

    aput v5, p9, v4

    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    :cond_14
    const/4 v2, 0x1

    shl-int v1, v2, v1

    sub-int/2addr v1, v2

    and-int/2addr v0, v1

    :cond_15
    return v0
.end method

.method static quant_band_n1(Lorg/concentus/Bands$band_ctx;[II[III[II)I
    .locals 14

    move-object v0, p0

    .line 787
    iget v1, v0, Lorg/concentus/Bands$band_ctx;->encode:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 795
    :goto_0
    iget v4, v0, Lorg/concentus/Bands$band_ctx;->encode:I

    .line 796
    iget-object v5, v0, Lorg/concentus/Bands$band_ctx;->ec:Lorg/concentus/EntropyCoder;

    if-eqz p3, :cond_1

    move v6, v3

    goto :goto_1

    :cond_1
    move v6, v2

    :goto_1
    move-object v7, p1

    move/from16 v8, p2

    move v9, v2

    .line 802
    :goto_2
    iget v10, v0, Lorg/concentus/Bands$band_ctx;->remaining_bits:I

    const/16 v11, 0x8

    if-lt v10, v11, :cond_4

    if-eqz v4, :cond_3

    .line 804
    aget v10, v7, v8

    if-gez v10, :cond_2

    move v10, v3

    goto :goto_3

    :cond_2
    move v10, v2

    :goto_3
    int-to-long v12, v10

    .line 805
    invoke-virtual {v5, v12, v13, v3}, Lorg/concentus/EntropyCoder;->enc_bits(JI)V

    goto :goto_4

    .line 807
    :cond_3
    invoke-virtual {v5, v3}, Lorg/concentus/EntropyCoder;->dec_bits(I)I

    move-result v10

    .line 809
    :goto_4
    iget v12, v0, Lorg/concentus/Bands$band_ctx;->remaining_bits:I

    sub-int/2addr v12, v11

    iput v12, v0, Lorg/concentus/Bands$band_ctx;->remaining_bits:I

    goto :goto_5

    :cond_4
    move v10, v2

    :goto_5
    if-eqz v1, :cond_6

    if-eqz v10, :cond_5

    const/16 v10, -0x4000

    goto :goto_6

    :cond_5
    const/16 v10, 0x4000

    .line 813
    :goto_6
    aput v10, v7, v8

    :cond_6
    add-int/2addr v9, v3

    add-int/lit8 v7, v6, 0x1

    if-lt v9, v7, :cond_8

    if-eqz p6, :cond_7

    .line 819
    aget v0, p1, p2

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lorg/concentus/Inlines;->SHR16(II)I

    move-result v0

    aput v0, p6, p7

    :cond_7
    return v3

    :cond_8
    move-object/from16 v7, p3

    move/from16 v8, p4

    goto :goto_2
.end method

.method static quant_band_stereo(Lorg/concentus/Bands$band_ctx;[II[IIIII[III[II[III)I
    .locals 30

    move-object/from16 v15, p0

    move/from16 v14, p5

    .line 1138
    iget v0, v15, Lorg/concentus/Bands$band_ctx;->encode:I

    const/4 v12, 0x1

    if-nez v0, :cond_0

    move/from16 v16, v12

    goto :goto_0

    :cond_0
    const/16 v16, 0x0

    .line 1142
    :goto_0
    new-instance v11, Lorg/concentus/Bands$split_ctx;

    invoke-direct {v11}, Lorg/concentus/Bands$split_ctx;-><init>()V

    .line 1147
    iget v10, v15, Lorg/concentus/Bands$band_ctx;->encode:I

    .line 1148
    iget-object v9, v15, Lorg/concentus/Bands$band_ctx;->ec:Lorg/concentus/EntropyCoder;

    if-ne v14, v12, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p6

    move-object/from16 v6, p11

    move/from16 v7, p12

    .line 1152
    invoke-static/range {v0 .. v7}, Lorg/concentus/Bands;->quant_band_n1(Lorg/concentus/Bands$band_ctx;[II[III[II)I

    move-result v0

    return v0

    .line 1157
    :cond_1
    new-instance v8, Lorg/concentus/BoxedValueInt;

    move/from16 v0, p6

    invoke-direct {v8, v0}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    .line 1158
    new-instance v7, Lorg/concentus/BoxedValueInt;

    move/from16 v6, p15

    invoke-direct {v7, v6}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object v1, v11

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 p6, v7

    move-object v7, v8

    move-object v13, v8

    move/from16 v8, p7

    move-object/from16 v19, v9

    move/from16 v9, p7

    move/from16 v20, v10

    move/from16 v10, p10

    move-object v15, v11

    move/from16 v11, v17

    move-object/from16 v12, p6

    .line 1159
    invoke-static/range {v0 .. v12}, Lorg/concentus/Bands;->compute_theta(Lorg/concentus/Bands$band_ctx;Lorg/concentus/Bands$split_ctx;[II[IIILorg/concentus/BoxedValueInt;IIIILorg/concentus/BoxedValueInt;)V

    .line 1160
    iget v0, v13, Lorg/concentus/BoxedValueInt;->Val:I

    move-object/from16 v1, p6

    .line 1161
    iget v13, v1, Lorg/concentus/BoxedValueInt;->Val:I

    .line 1163
    iget v12, v15, Lorg/concentus/Bands$split_ctx;->inv:I

    .line 1164
    iget v11, v15, Lorg/concentus/Bands$split_ctx;->imid:I

    .line 1165
    iget v10, v15, Lorg/concentus/Bands$split_ctx;->iside:I

    .line 1166
    iget v1, v15, Lorg/concentus/Bands$split_ctx;->delta:I

    .line 1167
    iget v9, v15, Lorg/concentus/Bands$split_ctx;->itheta:I

    .line 1168
    iget v2, v15, Lorg/concentus/Bands$split_ctx;->qalloc:I

    const/16 v15, 0x4000

    const/4 v8, 0x2

    if-ne v14, v8, :cond_9

    if-eqz v9, :cond_2

    if-eq v9, v15, :cond_2

    const/16 v1, 0x8

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    sub-int v4, v0, v1

    const/16 v0, 0x2000

    if-le v9, v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    move-object/from16 v7, p0

    .line 1188
    iget v3, v7, Lorg/concentus/Bands$band_ctx;->remaining_bits:I

    add-int/2addr v2, v1

    sub-int/2addr v3, v2

    iput v3, v7, Lorg/concentus/Bands$band_ctx;->remaining_bits:I

    if-eqz v0, :cond_4

    move-object/from16 v22, p1

    move-object/from16 v15, p3

    move/from16 v17, p4

    goto :goto_3

    :cond_4
    move-object/from16 v15, p1

    move/from16 v17, p2

    move-object/from16 v22, p3

    :goto_3
    if-eqz v1, :cond_7

    if-eqz v20, :cond_6

    .line 1204
    aget v0, v15, v17

    add-int/lit8 v1, p4, 0x1

    aget v1, v22, v1

    mul-int/2addr v0, v1

    add-int/lit8 v1, v17, 0x1

    aget v1, v15, v1

    aget v2, v22, p4

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    if-gez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    :goto_4
    int-to-long v1, v0

    move-object/from16 v3, v19

    const/4 v5, 0x1

    .line 1205
    invoke-virtual {v3, v1, v2, v5}, Lorg/concentus/EntropyCoder;->enc_bits(JI)V

    goto :goto_5

    :cond_6
    move-object/from16 v3, v19

    const/4 v5, 0x1

    .line 1207
    invoke-virtual {v3, v5}, Lorg/concentus/EntropyCoder;->dec_bits(I)I

    move-result v0

    goto :goto_5

    :cond_7
    const/4 v5, 0x1

    const/4 v0, 0x0

    :goto_5
    mul-int/2addr v0, v8

    rsub-int/lit8 v19, v0, 0x1

    const/16 v13, 0x7fff

    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v2, v17

    move/from16 v3, p5

    move/from16 v5, p7

    move-object/from16 v6, p8

    move/from16 v7, p9

    move v9, v8

    move/from16 v8, p10

    move-object/from16 v9, p11

    move/from16 v24, v10

    move/from16 v10, p12

    move/from16 v25, v11

    move v11, v13

    move/from16 v20, v12

    move-object/from16 v12, p13

    move/from16 v13, p14

    move/from16 v14, p15

    .line 1213
    invoke-static/range {v0 .. v14}, Lorg/concentus/Bands;->quant_band(Lorg/concentus/Bands$band_ctx;[IIIII[III[III[III)I

    move-result v0

    rsub-int/lit8 v1, v19, 0x0

    add-int/lit8 v2, v17, 0x1

    .line 1218
    aget v2, v15, v2

    mul-int/2addr v1, v2

    aput v1, v22, p4

    add-int/lit8 v1, p4, 0x1

    .line 1219
    aget v2, v15, v17

    mul-int v19, v19, v2

    aput v19, v22, v1

    if-eqz v16, :cond_8

    .line 1222
    aget v2, p1, p2

    move/from16 v14, v25

    invoke-static {v14, v2}, Lorg/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v2

    aput v2, p1, p2

    add-int/lit8 v2, p2, 0x1

    .line 1223
    aget v3, p1, v2

    invoke-static {v14, v3}, Lorg/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v3

    aput v3, p1, v2

    .line 1224
    aget v3, p3, p4

    move/from16 v12, v24

    invoke-static {v12, v3}, Lorg/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v3

    aput v3, p3, p4

    .line 1225
    aget v3, p3, v1

    invoke-static {v12, v3}, Lorg/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v3

    aput v3, p3, v1

    .line 1226
    aget v3, p1, p2

    .line 1227
    aget v4, p3, p4

    invoke-static {v3, v4}, Lorg/concentus/Inlines;->SUB16(II)I

    move-result v4

    aput v4, p1, p2

    .line 1228
    aget v4, p3, p4

    invoke-static {v3, v4}, Lorg/concentus/Inlines;->ADD16(II)I

    move-result v3

    aput v3, p3, p4

    .line 1229
    aget v3, p1, v2

    .line 1230
    aget v4, p3, v1

    invoke-static {v3, v4}, Lorg/concentus/Inlines;->SUB16(II)I

    move-result v4

    aput v4, p1, v2

    .line 1231
    aget v2, p3, v1

    invoke-static {v3, v2}, Lorg/concentus/Inlines;->ADD16(II)I

    move-result v2

    aput v2, p3, v1

    goto :goto_6

    :cond_8
    move/from16 v14, v25

    :goto_6
    move/from16 v24, v14

    const/16 v21, 0x0

    goto/16 :goto_9

    :cond_9
    move-object/from16 v7, p0

    move v14, v11

    move/from16 v20, v12

    move v12, v10

    sub-int v1, v0, v1

    const/4 v11, 0x2

    .line 1237
    div-int/2addr v1, v11

    invoke-static {v0, v1}, Lorg/concentus/Inlines;->IMIN(II)I

    move-result v1

    const/4 v10, 0x0

    invoke-static {v10, v1}, Lorg/concentus/Inlines;->IMAX(II)I

    move-result v8

    sub-int v6, v0, v8

    .line 1239
    iget v0, v7, Lorg/concentus/Bands$band_ctx;->remaining_bits:I

    sub-int/2addr v0, v2

    iput v0, v7, Lorg/concentus/Bands$band_ctx;->remaining_bits:I

    .line 1241
    iget v5, v7, Lorg/concentus/Bands$band_ctx;->remaining_bits:I

    const/16 v4, 0x18

    if-lt v8, v6, :cond_b

    const/16 v15, 0x7fff

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p5

    move v4, v8

    move/from16 v17, v5

    move/from16 v5, p7

    move/from16 v18, v6

    move-object/from16 v6, p8

    move/from16 v7, p9

    move/from16 v19, v8

    move/from16 v8, p10

    move/from16 v28, v9

    move-object/from16 v9, p11

    move/from16 v21, v10

    move/from16 v10, p12

    move v11, v15

    move/from16 v22, v12

    move-object/from16 v12, p13

    move/from16 v23, v13

    move/from16 v13, p14

    move/from16 v24, v14

    move/from16 v14, v23

    .line 1245
    invoke-static/range {v0 .. v14}, Lorg/concentus/Bands;->quant_band(Lorg/concentus/Bands$band_ctx;[IIIII[III[III[III)I

    move-result v15

    move-object/from16 v14, p0

    .line 1248
    iget v0, v14, Lorg/concentus/Bands$band_ctx;->remaining_bits:I

    sub-int v5, v17, v0

    sub-int v8, v19, v5

    const/16 v13, 0x18

    if-le v8, v13, :cond_a

    move/from16 v12, v28

    if-eqz v12, :cond_a

    sub-int/2addr v8, v13

    add-int v6, v18, v8

    move v4, v6

    goto :goto_7

    :cond_a
    move/from16 v4, v18

    :goto_7
    const/4 v13, 0x0

    shr-int v17, v23, p7

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v5, p7

    move/from16 v8, p10

    move/from16 v11, v22

    move/from16 v14, v17

    .line 1255
    invoke-static/range {v0 .. v14}, Lorg/concentus/Bands;->quant_band(Lorg/concentus/Bands$band_ctx;[IIIII[III[III[III)I

    move-result v0

    or-int/2addr v0, v15

    goto/16 :goto_9

    :cond_b
    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v19, v8

    move/from16 v21, v10

    move/from16 v22, v12

    move/from16 v23, v13

    move/from16 v24, v14

    move v13, v4

    move-object v14, v7

    move v12, v9

    const/16 v25, 0x0

    shr-int v26, v23, p7

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, v18

    move/from16 v5, p7

    move/from16 v8, p10

    move/from16 v11, v22

    move/from16 v29, v12

    move-object/from16 v12, v27

    move v15, v13

    move/from16 v13, v25

    move-object v15, v14

    move/from16 v14, v26

    .line 1261
    invoke-static/range {v0 .. v14}, Lorg/concentus/Bands;->quant_band(Lorg/concentus/Bands$band_ctx;[IIIII[III[III[III)I

    move-result v22

    .line 1264
    iget v0, v15, Lorg/concentus/Bands$band_ctx;->remaining_bits:I

    sub-int v5, v17, v0

    sub-int v6, v18, v5

    const/16 v0, 0x18

    if-le v6, v0, :cond_c

    move/from16 v1, v29

    const/16 v2, 0x4000

    if-eq v1, v2, :cond_c

    sub-int/2addr v6, v0

    add-int v8, v19, v6

    move v4, v8

    goto :goto_8

    :cond_c
    move/from16 v4, v19

    :goto_8
    const/16 v11, 0x7fff

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p5

    move/from16 v5, p7

    move-object/from16 v6, p8

    move/from16 v7, p9

    move/from16 v8, p10

    move-object/from16 v9, p11

    move/from16 v10, p12

    move-object/from16 v12, p13

    move/from16 v13, p14

    move/from16 v14, v23

    .line 1270
    invoke-static/range {v0 .. v14}, Lorg/concentus/Bands;->quant_band(Lorg/concentus/Bands$band_ctx;[IIIII[III[III[III)I

    move-result v0

    or-int v0, v22, v0

    :goto_9
    if-eqz v16, :cond_e

    move/from16 v1, p5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_d

    move-object/from16 p6, p1

    move/from16 p7, p2

    move-object/from16 p8, p3

    move/from16 p9, p4

    move/from16 p10, v24

    move/from16 p11, p5

    .line 1280
    invoke-static/range {p6 .. p11}, Lorg/concentus/Bands;->stereo_merge([II[IIII)V

    :cond_d
    if-eqz v20, :cond_e

    move/from16 v2, p4

    :goto_a
    add-int v3, v1, p4

    if-ge v2, v3, :cond_e

    .line 1285
    aget v3, p3, v2

    rsub-int/lit8 v13, v3, 0x0

    int-to-short v3, v13

    aput v3, p3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_e
    return v0
.end method

.method static quant_partition(Lorg/concentus/Bands$band_ctx;[IIIII[IIIII)I
    .locals 28

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move/from16 v15, p2

    move/from16 v2, p3

    move/from16 v0, p4

    move/from16 v12, p5

    move/from16 v1, p8

    move/from16 v11, p9

    .line 840
    iget v3, v13, Lorg/concentus/Bands$band_ctx;->encode:I

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 848
    :goto_0
    iget v4, v13, Lorg/concentus/Bands$band_ctx;->encode:I

    .line 849
    iget-object v5, v13, Lorg/concentus/Bands$band_ctx;->m:Lorg/concentus/CeltMode;

    .line 850
    iget v6, v13, Lorg/concentus/Bands$band_ctx;->i:I

    .line 851
    iget v7, v13, Lorg/concentus/Bands$band_ctx;->spread:I

    .line 852
    iget-object v8, v13, Lorg/concentus/Bands$band_ctx;->ec:Lorg/concentus/EntropyCoder;

    .line 853
    iget-object v9, v5, Lorg/concentus/CeltMode;->cache:Lorg/concentus/PulseCache;

    iget-object v9, v9, Lorg/concentus/PulseCache;->bits:[S

    .line 855
    iget-object v10, v5, Lorg/concentus/CeltMode;->cache:Lorg/concentus/PulseCache;

    iget-object v10, v10, Lorg/concentus/PulseCache;->index:[S

    add-int/lit8 v18, v1, 0x1

    iget v11, v5, Lorg/concentus/CeltMode;->nbEBands:I

    mul-int v18, v18, v11

    add-int v18, v18, v6

    aget-short v10, v10, v18

    const/4 v11, -0x1

    if-eq v1, v11, :cond_8

    .line 856
    aget-short v18, v9, v10

    add-int v10, v10, v18

    aget-short v9, v9, v10

    add-int/lit8 v9, v9, 0xc

    if-le v0, v9, :cond_8

    const/4 v10, 0x2

    if-le v2, v10, :cond_8

    .line 860
    new-instance v9, Lorg/concentus/Bands$split_ctx;

    invoke-direct {v9}, Lorg/concentus/Bands$split_ctx;-><init>()V

    const/4 v8, 0x1

    shr-int/lit8 v17, v2, 0x1

    add-int v18, v15, v17

    add-int/lit8 v19, v1, -0x1

    if-ne v12, v8, :cond_1

    and-int/lit8 v1, p10, 0x1

    shl-int/lit8 v2, p10, 0x1

    or-int/2addr v1, v2

    goto :goto_1

    :cond_1
    move/from16 v1, p10

    :goto_1
    add-int/lit8 v2, v12, 0x1

    shr-int/lit8 v20, v2, 0x1

    .line 873
    new-instance v11, Lorg/concentus/BoxedValueInt;

    invoke-direct {v11, v0}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    .line 874
    new-instance v7, Lorg/concentus/BoxedValueInt;

    invoke-direct {v7, v1}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object v1, v9

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p1

    move/from16 v5, v18

    move/from16 v6, v17

    move-object/from16 p3, v7

    move-object v7, v11

    move/from16 v22, v8

    move/from16 v8, v20

    move-object/from16 v24, v9

    move/from16 v9, p5

    move/from16 v16, v10

    move/from16 v14, v22

    move/from16 v10, v19

    move-object v14, v11

    move/from16 v11, v21

    move v15, v12

    move-object/from16 v12, p3

    .line 875
    invoke-static/range {v0 .. v12}, Lorg/concentus/Bands;->compute_theta(Lorg/concentus/Bands$band_ctx;Lorg/concentus/Bands$split_ctx;[II[IIILorg/concentus/BoxedValueInt;IIIILorg/concentus/BoxedValueInt;)V

    .line 876
    iget v0, v14, Lorg/concentus/BoxedValueInt;->Val:I

    move-object/from16 v1, p3

    .line 877
    iget v11, v1, Lorg/concentus/BoxedValueInt;->Val:I

    move-object/from16 v1, v24

    .line 879
    iget v12, v1, Lorg/concentus/Bands$split_ctx;->imid:I

    .line 880
    iget v14, v1, Lorg/concentus/Bands$split_ctx;->iside:I

    .line 881
    iget v2, v1, Lorg/concentus/Bands$split_ctx;->delta:I

    .line 882
    iget v10, v1, Lorg/concentus/Bands$split_ctx;->itheta:I

    .line 883
    iget v1, v1, Lorg/concentus/Bands$split_ctx;->qalloc:I

    const/4 v3, 0x1

    if-le v15, v3, :cond_2

    and-int/lit16 v3, v10, 0x3fff

    if-eqz v3, :cond_2

    const/16 v3, 0x2000

    if-le v10, v3, :cond_3

    rsub-int/lit8 v3, v19, 0x4

    shr-int v3, v2, v3

    sub-int/2addr v2, v3

    :cond_2
    const/4 v9, 0x0

    goto :goto_2

    :cond_3
    shl-int/lit8 v3, v17, 0x3

    rsub-int/lit8 v4, v19, 0x5

    shr-int/2addr v3, v4

    add-int/2addr v2, v3

    const/4 v9, 0x0

    .line 892
    invoke-static {v9, v2}, Lorg/concentus/Inlines;->IMIN(II)I

    move-result v2

    :goto_2
    sub-int v2, v0, v2

    .line 895
    div-int/lit8 v2, v2, 0x2

    invoke-static {v0, v2}, Lorg/concentus/Inlines;->IMIN(II)I

    move-result v2

    invoke-static {v9, v2}, Lorg/concentus/Inlines;->IMAX(II)I

    move-result v8

    sub-int v7, v0, v8

    .line 897
    iget v0, v13, Lorg/concentus/Bands$band_ctx;->remaining_bits:I

    sub-int/2addr v0, v1

    iput v0, v13, Lorg/concentus/Bands$band_ctx;->remaining_bits:I

    if-eqz p6, :cond_4

    add-int v0, p7, v17

    move/from16 v16, v0

    goto :goto_3

    :cond_4
    move/from16 v16, v9

    .line 904
    :goto_3
    iget v9, v13, Lorg/concentus/Bands$band_ctx;->remaining_bits:I

    const/16 v6, 0x18

    if-lt v8, v7, :cond_6

    move/from16 v5, p9

    .line 908
    invoke-static {v5, v12}, Lorg/concentus/Inlines;->MULT16_16_P15(II)I

    move-result v12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v17

    move v4, v8

    move v15, v5

    move/from16 v5, v20

    move/from16 v21, v14

    move v14, v6

    move-object/from16 v6, p6

    move/from16 v23, v7

    move/from16 v7, p7

    move/from16 v24, v8

    move/from16 v8, v19

    move/from16 v25, v9

    move v9, v12

    move v12, v10

    move v10, v11

    .line 906
    invoke-static/range {v0 .. v10}, Lorg/concentus/Bands;->quant_partition(Lorg/concentus/Bands$band_ctx;[IIIII[IIIII)I

    move-result v26

    .line 909
    iget v0, v13, Lorg/concentus/Bands$band_ctx;->remaining_bits:I

    sub-int v9, v25, v0

    sub-int v8, v24, v9

    if-le v8, v14, :cond_5

    if-eqz v12, :cond_5

    sub-int/2addr v8, v14

    add-int v7, v23, v8

    move v4, v7

    move/from16 v0, v21

    goto :goto_4

    :cond_5
    move/from16 v0, v21

    move/from16 v4, v23

    .line 915
    :goto_4
    invoke-static {v15, v0}, Lorg/concentus/Inlines;->MULT16_16_P15(II)I

    move-result v9

    shr-int v10, v11, v20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, v17

    move/from16 v5, v20

    move-object/from16 v6, p6

    move/from16 v7, v16

    move/from16 v8, v19

    .line 913
    invoke-static/range {v0 .. v10}, Lorg/concentus/Bands;->quant_partition(Lorg/concentus/Bands$band_ctx;[IIIII[IIIII)I

    move-result v0

    const/4 v1, 0x1

    shr-int/lit8 v1, p5, 0x1

    shl-int/2addr v0, v1

    or-int v0, v26, v0

    goto/16 :goto_6

    :cond_6
    move/from16 v15, p9

    move/from16 v23, v7

    move/from16 v24, v8

    move/from16 v25, v9

    move v0, v14

    move v14, v6

    .line 919
    invoke-static {v15, v0}, Lorg/concentus/Inlines;->MULT16_16_P15(II)I

    move-result v9

    shr-int v21, v11, v20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, v17

    move/from16 v4, v23

    move/from16 v5, v20

    move-object/from16 v6, p6

    move/from16 v7, v16

    move/from16 v8, v19

    move/from16 v27, v10

    move/from16 v10, v21

    .line 917
    invoke-static/range {v0 .. v10}, Lorg/concentus/Bands;->quant_partition(Lorg/concentus/Bands$band_ctx;[IIIII[IIIII)I

    move-result v0

    const/4 v1, 0x1

    shr-int/lit8 v1, p5, 0x1

    shl-int v16, v0, v1

    .line 920
    iget v0, v13, Lorg/concentus/Bands$band_ctx;->remaining_bits:I

    sub-int v9, v25, v0

    sub-int v7, v23, v9

    if-le v7, v14, :cond_7

    const/16 v0, 0x4000

    move/from16 v1, v27

    if-eq v1, v0, :cond_7

    sub-int/2addr v7, v14

    add-int v8, v24, v7

    move v4, v8

    goto :goto_5

    :cond_7
    move/from16 v4, v24

    .line 926
    :goto_5
    invoke-static {v15, v12}, Lorg/concentus/Inlines;->MULT16_16_P15(II)I

    move-result v9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v17

    move/from16 v5, v20

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, v19

    move v10, v11

    .line 924
    invoke-static/range {v0 .. v10}, Lorg/concentus/Bands;->quant_partition(Lorg/concentus/Bands$band_ctx;[IIIII[IIIII)I

    move-result v0

    or-int v0, v16, v0

    :goto_6
    move v9, v0

    goto/16 :goto_c

    :cond_8
    move/from16 v15, p9

    const/4 v9, 0x0

    .line 930
    invoke-static {v5, v6, v1, v0}, Lorg/concentus/Rate;->bits2pulses(Lorg/concentus/CeltMode;III)I

    move-result v0

    .line 931
    invoke-static {v5, v6, v1, v0}, Lorg/concentus/Rate;->pulses2bits(Lorg/concentus/CeltMode;III)I

    move-result v10

    .line 932
    iget v11, v13, Lorg/concentus/Bands$band_ctx;->remaining_bits:I

    sub-int/2addr v11, v10

    iput v11, v13, Lorg/concentus/Bands$band_ctx;->remaining_bits:I

    .line 935
    :goto_7
    iget v11, v13, Lorg/concentus/Bands$band_ctx;->remaining_bits:I

    if-gez v11, :cond_9

    if-lez v0, :cond_9

    .line 936
    iget v11, v13, Lorg/concentus/Bands$band_ctx;->remaining_bits:I

    add-int/2addr v11, v10

    iput v11, v13, Lorg/concentus/Bands$band_ctx;->remaining_bits:I

    add-int/lit8 v0, v0, -0x1

    .line 938
    invoke-static {v5, v6, v1, v0}, Lorg/concentus/Rate;->pulses2bits(Lorg/concentus/CeltMode;III)I

    move-result v10

    .line 939
    iget v11, v13, Lorg/concentus/Bands$band_ctx;->remaining_bits:I

    sub-int/2addr v11, v10

    iput v11, v13, Lorg/concentus/Bands$band_ctx;->remaining_bits:I

    goto :goto_7

    :cond_9
    if-eqz v0, :cond_b

    .line 943
    invoke-static {v0}, Lorg/concentus/Rate;->get_pulses(I)I

    move-result v3

    if-eqz v4, :cond_a

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move v4, v7

    move/from16 v5, p5

    move-object v6, v8

    .line 947
    invoke-static/range {v0 .. v6}, Lorg/concentus/VQ;->alg_quant([IIIIIILorg/concentus/EntropyCoder;)I

    move-result v0

    goto :goto_6

    :cond_a
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move v4, v7

    move/from16 v5, p5

    move-object v6, v8

    move/from16 v7, p9

    .line 949
    invoke-static/range {v0 .. v7}, Lorg/concentus/VQ;->alg_unquant([IIIIIILorg/concentus/EntropyCoder;I)I

    move-result v0

    goto :goto_6

    :cond_b
    if-eqz v3, :cond_11

    const/4 v0, 0x1

    shl-int v1, v0, p5

    sub-int/2addr v1, v0

    and-int v0, p10, v1

    if-nez v0, :cond_c

    move-object/from16 v3, p1

    move/from16 v4, p2

    .line 963
    invoke-static {v3, v9, v4, v2}, Lorg/concentus/Arrays;->MemSetWithOffset([IIII)V

    goto :goto_c

    :cond_c
    move-object/from16 v3, p1

    move/from16 v4, p2

    if-nez p6, :cond_e

    :goto_8
    if-ge v9, v2, :cond_d

    .line 968
    iget v0, v13, Lorg/concentus/Bands$band_ctx;->seed:I

    invoke-static {v0}, Lorg/concentus/Bands;->celt_lcg_rand(I)I

    move-result v0

    iput v0, v13, Lorg/concentus/Bands$band_ctx;->seed:I

    add-int v0, v4, v9

    .line 969
    iget v5, v13, Lorg/concentus/Bands$band_ctx;->seed:I

    shr-int/lit8 v5, v5, 0x14

    aput v5, v3, v0

    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_d
    move v9, v1

    goto :goto_b

    :cond_e
    :goto_9
    if-ge v9, v2, :cond_10

    .line 976
    iget v1, v13, Lorg/concentus/Bands$band_ctx;->seed:I

    invoke-static {v1}, Lorg/concentus/Bands;->celt_lcg_rand(I)I

    move-result v1

    iput v1, v13, Lorg/concentus/Bands$band_ctx;->seed:I

    .line 979
    iget v1, v13, Lorg/concentus/Bands$band_ctx;->seed:I

    const v5, 0x8000

    and-int/2addr v1, v5

    if-eqz v1, :cond_f

    const/4 v1, 0x4

    goto :goto_a

    :cond_f
    const/4 v1, -0x4

    :goto_a
    add-int v5, v4, v9

    add-int v6, p7, v9

    .line 980
    aget v6, p6, v6

    add-int/2addr v6, v1

    aput v6, v3, v5

    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    :cond_10
    move v9, v0

    .line 985
    :goto_b
    invoke-static {v3, v4, v2, v15}, Lorg/concentus/VQ;->renormalise_vector([IIII)V

    :cond_11
    :goto_c
    return v9
.end method

.method static spreading_decision(Lorg/concentus/CeltMode;[[ILorg/concentus/BoxedValueInt;ILorg/concentus/BoxedValueInt;Lorg/concentus/BoxedValueInt;IIII)I
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move/from16 v4, p7

    move/from16 v5, p8

    .line 377
    iget-object v6, v0, Lorg/concentus/CeltMode;->eBands:[S

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-lez v4, :cond_0

    move v9, v7

    goto :goto_0

    :cond_0
    move v9, v8

    .line 381
    :goto_0
    invoke-static {v9}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    .line 383
    aget-short v9, v6, v4

    add-int/lit8 v10, v4, -0x1

    aget-short v10, v6, v10

    sub-int/2addr v9, v10

    mul-int v9, v9, p9

    const/16 v10, 0x8

    if-gt v9, v10, :cond_1

    return v8

    :cond_1
    move v9, v8

    move v11, v9

    move v12, v11

    move v13, v12

    :goto_1
    move v14, v8

    :goto_2
    const/4 v15, 0x3

    const/4 v10, 0x2

    if-ge v14, v4, :cond_b

    .line 392
    new-array v15, v15, [I

    aput v8, v15, v8

    aput v8, v15, v7

    aput v8, v15, v10

    .line 393
    aget-object v16, p1, v11

    .line 394
    aget-short v17, v6, v14

    mul-int v18, p9, v17

    add-int/lit8 v19, v14, 0x1

    .line 395
    aget-short v20, v6, v19

    sub-int v20, v20, v17

    mul-int v10, p9, v20

    const/16 v7, 0x8

    if-gt v10, v7, :cond_2

    move-object/from16 v22, v6

    goto/16 :goto_8

    :cond_2
    move/from16 v7, v18

    :goto_3
    add-int v8, v10, v18

    if-ge v7, v8, :cond_6

    .line 404
    aget v8, v16, v7

    invoke-static {v8, v8}, Lorg/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v8

    invoke-static {v8, v10}, Lorg/concentus/Inlines;->MULT16_16(II)I

    move-result v8

    move-object/from16 v22, v6

    const/16 v6, 0x800

    if-ge v8, v6, :cond_3

    const/4 v6, 0x0

    .line 406
    aget v21, v15, v6

    const/16 v20, 0x1

    add-int/lit8 v21, v21, 0x1

    aput v21, v15, v6

    goto :goto_4

    :cond_3
    const/16 v20, 0x1

    :goto_4
    const/16 v6, 0x200

    if-ge v8, v6, :cond_4

    .line 409
    aget v6, v15, v20

    add-int/lit8 v6, v6, 0x1

    aput v6, v15, v20

    :cond_4
    const/16 v6, 0x80

    if-ge v8, v6, :cond_5

    const/4 v6, 0x2

    .line 412
    aget v8, v15, v6

    add-int/lit8 v8, v8, 0x1

    aput v8, v15, v6

    :cond_5
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v6, v22

    goto :goto_3

    :cond_6
    move-object/from16 v22, v6

    const/16 v20, 0x1

    .line 417
    iget v6, v0, Lorg/concentus/CeltMode;->nbEBands:I

    add-int/lit8 v6, v6, -0x4

    if-le v14, v6, :cond_7

    .line 418
    aget v6, v15, v20

    const/4 v7, 0x0

    aget v8, v15, v7

    add-int/2addr v6, v8

    mul-int/lit8 v6, v6, 0x20

    invoke-static {v6, v10}, Lorg/concentus/Inlines;->celt_udiv(II)I

    move-result v6

    add-int/2addr v9, v6

    :cond_7
    const/4 v6, 0x2

    .line 421
    aget v7, v15, v6

    mul-int/2addr v7, v6

    if-lt v7, v10, :cond_8

    const/4 v7, 0x1

    goto :goto_5

    :cond_8
    const/4 v7, 0x0

    :goto_5
    const/4 v8, 0x1

    aget v14, v15, v8

    mul-int/2addr v14, v6

    if-lt v14, v10, :cond_9

    const/4 v8, 0x1

    goto :goto_6

    :cond_9
    const/4 v8, 0x0

    :goto_6
    add-int/2addr v7, v8

    const/4 v8, 0x0

    aget v14, v15, v8

    mul-int/2addr v14, v6

    if-lt v14, v10, :cond_a

    const/4 v6, 0x1

    goto :goto_7

    :cond_a
    const/4 v6, 0x0

    :goto_7
    add-int/2addr v7, v6

    const/16 v6, 0x100

    mul-int/2addr v7, v6

    add-int/2addr v12, v7

    add-int/lit8 v13, v13, 0x1

    :goto_8
    move/from16 v14, v19

    move-object/from16 v6, v22

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v10, 0x8

    goto/16 :goto_2

    :cond_b
    move-object/from16 v22, v6

    add-int/lit8 v11, v11, 0x1

    if-lt v11, v5, :cond_17

    if-eqz p6, :cond_11

    if-eqz v9, :cond_c

    .line 429
    iget v0, v0, Lorg/concentus/CeltMode;->nbEBands:I

    rsub-int/lit8 v0, v0, 0x4

    add-int/2addr v0, v4

    mul-int/2addr v0, v5

    invoke-static {v9, v0}, Lorg/concentus/Inlines;->celt_udiv(II)I

    move-result v9

    .line 432
    :cond_c
    iget v0, v2, Lorg/concentus/BoxedValueInt;->Val:I

    add-int/2addr v0, v9

    const/4 v4, 0x1

    shr-int/2addr v0, v4

    iput v0, v2, Lorg/concentus/BoxedValueInt;->Val:I

    .line 433
    iget v0, v2, Lorg/concentus/BoxedValueInt;->Val:I

    .line 435
    iget v2, v3, Lorg/concentus/BoxedValueInt;->Val:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_d

    add-int/lit8 v0, v0, 0x4

    goto :goto_9

    .line 437
    :cond_d
    iget v2, v3, Lorg/concentus/BoxedValueInt;->Val:I

    if-nez v2, :cond_e

    add-int/lit8 v0, v0, -0x4

    :cond_e
    :goto_9
    const/16 v2, 0x16

    if-le v0, v2, :cond_f

    const/4 v2, 0x2

    .line 441
    iput v2, v3, Lorg/concentus/BoxedValueInt;->Val:I

    goto :goto_a

    :cond_f
    const/16 v2, 0x12

    if-le v0, v2, :cond_10

    const/4 v0, 0x1

    .line 443
    iput v0, v3, Lorg/concentus/BoxedValueInt;->Val:I

    goto :goto_a

    :cond_10
    const/4 v6, 0x0

    .line 445
    iput v6, v3, Lorg/concentus/BoxedValueInt;->Val:I

    goto :goto_b

    :cond_11
    :goto_a
    const/4 v6, 0x0

    :goto_b
    if-lez v13, :cond_12

    const/4 v0, 0x1

    goto :goto_c

    :cond_12
    move v0, v6

    .line 449
    :goto_c
    invoke-static {v0}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    if-ltz v12, :cond_13

    const/4 v0, 0x1

    goto :goto_d

    :cond_13
    move v0, v6

    .line 451
    :goto_d
    invoke-static {v0}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    .line 452
    invoke-static {v12, v13}, Lorg/concentus/Inlines;->celt_udiv(II)I

    move-result v0

    .line 455
    iget v2, v1, Lorg/concentus/BoxedValueInt;->Val:I

    add-int/2addr v0, v2

    const/4 v7, 0x1

    shr-int/2addr v0, v7

    .line 456
    iput v0, v1, Lorg/concentus/BoxedValueInt;->Val:I

    mul-int/2addr v0, v15

    rsub-int/lit8 v1, p3, 0x3

    shl-int/lit8 v1, v1, 0x7

    add-int/lit8 v1, v1, 0x40

    add-int/2addr v0, v1

    const/4 v1, 0x2

    add-int/2addr v0, v1

    shr-int/2addr v0, v1

    const/16 v2, 0x50

    if-ge v0, v2, :cond_14

    move v7, v15

    goto :goto_e

    :cond_14
    const/16 v2, 0x100

    if-ge v0, v2, :cond_15

    move v7, v1

    goto :goto_e

    :cond_15
    const/16 v1, 0x180

    if-ge v0, v1, :cond_16

    goto :goto_e

    :cond_16
    move v7, v6

    :goto_e
    return v7

    :cond_17
    move-object/from16 v6, v22

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v10, 0x8

    goto/16 :goto_1
.end method

.method static stereo_merge([II[IIII)V
    .locals 18

    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p4

    move/from16 v14, p5

    .line 327
    new-instance v15, Lorg/concentus/BoxedValueInt;

    const/4 v8, 0x0

    invoke-direct {v15, v8}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    .line 328
    new-instance v7, Lorg/concentus/BoxedValueInt;

    invoke-direct {v7, v8}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p5

    move-object/from16 v16, v7

    move-object v7, v15

    move/from16 v17, v8

    move-object/from16 v8, v16

    .line 335
    invoke-static/range {v0 .. v8}, Lorg/concentus/Kernels;->dual_inner_prod([II[II[IIILorg/concentus/BoxedValueInt;Lorg/concentus/BoxedValueInt;)V

    .line 337
    iget v0, v15, Lorg/concentus/BoxedValueInt;->Val:I

    invoke-static {v13, v0}, Lorg/concentus/Inlines;->MULT16_32_Q15(II)I

    move-result v0

    iput v0, v15, Lorg/concentus/BoxedValueInt;->Val:I

    const/4 v0, 0x1

    .line 339
    invoke-static {v13, v0}, Lorg/concentus/Inlines;->SHR16(II)I

    move-result v1

    .line 340
    invoke-static {v1, v1}, Lorg/concentus/Inlines;->MULT16_16(II)I

    move-result v2

    move-object/from16 v3, v16

    iget v4, v3, Lorg/concentus/BoxedValueInt;->Val:I

    add-int/2addr v2, v4

    iget v4, v15, Lorg/concentus/BoxedValueInt;->Val:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    .line 341
    invoke-static {v1, v1}, Lorg/concentus/Inlines;->MULT16_16(II)I

    move-result v1

    iget v3, v3, Lorg/concentus/BoxedValueInt;->Val:I

    add-int/2addr v1, v3

    iget v3, v15, Lorg/concentus/BoxedValueInt;->Val:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    const v3, 0x27525

    if-lt v1, v3, :cond_4

    if-ge v2, v3, :cond_0

    goto :goto_1

    .line 347
    :cond_0
    invoke-static {v2}, Lorg/concentus/Inlines;->celt_ilog2(I)I

    move-result v3

    shr-int/2addr v3, v0

    .line 348
    invoke-static {v1}, Lorg/concentus/Inlines;->celt_ilog2(I)I

    move-result v4

    shr-int/2addr v4, v0

    add-int/lit8 v5, v3, -0x7

    shl-int/2addr v5, v0

    .line 349
    invoke-static {v2, v5}, Lorg/concentus/Inlines;->VSHR32(II)I

    move-result v2

    .line 350
    invoke-static {v2}, Lorg/concentus/Inlines;->celt_rsqrt_norm(I)I

    move-result v2

    add-int/lit8 v5, v4, -0x7

    shl-int/2addr v5, v0

    .line 351
    invoke-static {v1, v5}, Lorg/concentus/Inlines;->VSHR32(II)I

    move-result v1

    .line 352
    invoke-static {v1}, Lorg/concentus/Inlines;->celt_rsqrt_norm(I)I

    move-result v1

    const/4 v5, 0x7

    if-ge v3, v5, :cond_1

    move v3, v5

    :cond_1
    if-ge v4, v5, :cond_2

    move v4, v5

    :cond_2
    move/from16 v8, v17

    :goto_0
    if-ge v8, v14, :cond_3

    add-int v5, v10, v8

    .line 364
    aget v6, v9, v5

    invoke-static {v13, v6}, Lorg/concentus/Inlines;->MULT16_16_P15(II)I

    move-result v6

    add-int v7, v12, v8

    .line 365
    aget v15, v11, v7

    .line 366
    invoke-static {v6, v15}, Lorg/concentus/Inlines;->SUB16(II)I

    move-result v13

    invoke-static {v2, v13}, Lorg/concentus/Inlines;->MULT16_16(II)I

    move-result v13

    move/from16 v16, v2

    add-int/lit8 v2, v3, 0x1

    invoke-static {v13, v2}, Lorg/concentus/Inlines;->PSHR32(II)I

    move-result v2

    invoke-static {v2}, Lorg/concentus/Inlines;->EXTRACT16(I)S

    move-result v2

    aput v2, v9, v5

    .line 367
    invoke-static {v6, v15}, Lorg/concentus/Inlines;->ADD16(II)I

    move-result v2

    invoke-static {v1, v2}, Lorg/concentus/Inlines;->MULT16_16(II)I

    move-result v2

    add-int/lit8 v5, v4, 0x1

    invoke-static {v2, v5}, Lorg/concentus/Inlines;->PSHR32(II)I

    move-result v2

    invoke-static {v2}, Lorg/concentus/Inlines;->EXTRACT16(I)S

    move-result v2

    aput v2, v11, v7

    add-int/lit8 v8, v8, 0x1

    move/from16 v13, p4

    move/from16 v2, v16

    goto :goto_0

    :cond_3
    return-void

    .line 343
    :cond_4
    :goto_1
    invoke-static {v9, v10, v11, v12, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method static stereo_split([II[III)V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    add-int v1, p1, v0

    .line 318
    aget v2, p0, v1

    const/16 v3, 0x5a82

    invoke-static {v3, v2}, Lorg/concentus/Inlines;->MULT16_16(II)I

    move-result v2

    add-int v4, p3, v0

    .line 319
    aget v5, p2, v4

    invoke-static {v3, v5}, Lorg/concentus/Inlines;->MULT16_16(II)I

    move-result v3

    .line 320
    invoke-static {v2, v3}, Lorg/concentus/Inlines;->ADD32(II)I

    move-result v5

    const/16 v6, 0xf

    invoke-static {v5, v6}, Lorg/concentus/Inlines;->SHR32(II)I

    move-result v5

    invoke-static {v5}, Lorg/concentus/Inlines;->EXTRACT16(I)S

    move-result v5

    aput v5, p0, v1

    .line 321
    invoke-static {v3, v2}, Lorg/concentus/Inlines;->SUB32(II)I

    move-result v1

    invoke-static {v1, v6}, Lorg/concentus/Inlines;->SHR32(II)I

    move-result v1

    invoke-static {v1}, Lorg/concentus/Inlines;->EXTRACT16(I)S

    move-result v1

    aput v1, p2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
