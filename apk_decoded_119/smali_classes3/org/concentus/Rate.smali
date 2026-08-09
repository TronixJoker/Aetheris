.class Lorg/concentus/Rate;
.super Ljava/lang/Object;
.source "Rate.java"


# static fields
.field private static final ALLOC_STEPS:I = 0x6

.field private static final LOG2_FRAC_TABLE:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x18

    .line 39
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/concentus/Rate;->LOG2_FRAC_TABLE:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x8t
        0xdt
        0x10t
        0x13t
        0x15t
        0x17t
        0x18t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x20t
        0x21t
        0x22t
        0x22t
        0x23t
        0x24t
        0x24t
        0x25t
        0x25t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bits2pulses(Lorg/concentus/CeltMode;III)I
    .locals 5

    add-int/lit8 p2, p2, 0x1

    .line 58
    iget-object v0, p0, Lorg/concentus/CeltMode;->cache:Lorg/concentus/PulseCache;

    iget-object v0, v0, Lorg/concentus/PulseCache;->bits:[S

    .line 59
    iget-object v1, p0, Lorg/concentus/CeltMode;->cache:Lorg/concentus/PulseCache;

    iget-object v1, v1, Lorg/concentus/PulseCache;->index:[S

    iget p0, p0, Lorg/concentus/CeltMode;->nbEBands:I

    mul-int/2addr p2, p0

    add-int/2addr p2, p1

    aget-short p0, v1, p2

    .line 62
    aget-short p1, v0, p0

    const/4 p2, -0x1

    add-int/2addr p3, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x6

    if-ge v1, v3, :cond_1

    add-int v3, v2, p1

    add-int/lit8 v3, v3, 0x1

    shr-int/lit8 v3, v3, 0x1

    add-int v4, p0, v3

    .line 67
    aget-short v4, v0, v4

    if-lt v4, p3, :cond_0

    move p1, v3

    goto :goto_1

    :cond_0
    move v2, v3

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    add-int p2, p0, v2

    .line 73
    aget-short p2, v0, p2

    :goto_2
    sub-int p2, p3, p2

    add-int/2addr p0, p1

    aget-short p0, v0, p0

    sub-int/2addr p0, p3

    if-gt p2, p0, :cond_3

    return v2

    :cond_3
    return p1
.end method

.method static compute_allocation(Lorg/concentus/CeltMode;II[I[IILorg/concentus/BoxedValueInt;Lorg/concentus/BoxedValueInt;ILorg/concentus/BoxedValueInt;[I[I[IIILorg/concentus/EntropyCoder;III)I
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v15, p13

    const/4 v3, 0x0

    move/from16 v4, p8

    .line 358
    invoke-static {v4, v3}, Lorg/concentus/Inlines;->IMAX(II)I

    move-result v4

    .line 359
    iget v5, v0, Lorg/concentus/CeltMode;->nbEBands:I

    const/16 v6, 0x8

    if-lt v4, v6, :cond_0

    move v10, v6

    goto :goto_0

    :cond_0
    move v10, v3

    :goto_0
    sub-int/2addr v4, v10

    const/4 v7, 0x2

    if-ne v15, v7, :cond_3

    .line 367
    sget-object v8, Lorg/concentus/Rate;->LOG2_FRAC_TABLE:[B

    sub-int v9, v2, v1

    aget-byte v8, v8, v9

    if-le v8, v4, :cond_1

    goto :goto_2

    :cond_1
    sub-int/2addr v4, v8

    if-lt v4, v6, :cond_2

    goto :goto_1

    :cond_2
    move v6, v3

    :goto_1
    sub-int/2addr v4, v6

    move v14, v6

    move v12, v8

    goto :goto_3

    :cond_3
    :goto_2
    move v12, v3

    move v14, v12

    :goto_3
    move v8, v4

    .line 377
    new-array v4, v5, [I

    .line 378
    new-array v6, v5, [I

    .line 379
    new-array v9, v5, [I

    .line 380
    new-array v11, v5, [I

    move v13, v1

    :goto_4
    if-ge v13, v2, :cond_5

    shl-int/lit8 v7, v15, 0x3

    .line 384
    iget-object v3, v0, Lorg/concentus/CeltMode;->eBands:[S

    add-int/lit8 v18, v13, 0x1

    aget-short v3, v3, v18

    move/from16 v19, v14

    iget-object v14, v0, Lorg/concentus/CeltMode;->eBands:[S

    aget-short v14, v14, v13

    sub-int/2addr v3, v14

    mul-int/lit8 v3, v3, 0x3

    shl-int v3, v3, p14

    shl-int/lit8 v3, v3, 0x3

    shr-int/lit8 v3, v3, 0x4

    invoke-static {v7, v3}, Lorg/concentus/Inlines;->IMAX(II)I

    move-result v3

    aput v3, v9, v13

    .line 386
    iget-object v3, v0, Lorg/concentus/CeltMode;->eBands:[S

    aget-short v3, v3, v18

    iget-object v14, v0, Lorg/concentus/CeltMode;->eBands:[S

    aget-short v14, v14, v13

    sub-int/2addr v3, v14

    mul-int/2addr v3, v15

    add-int/lit8 v14, p5, -0x5

    sub-int v14, v14, p14

    mul-int/2addr v3, v14

    sub-int v14, v2, v13

    move/from16 v20, v12

    const/4 v12, 0x1

    sub-int/2addr v14, v12

    mul-int/2addr v3, v14

    add-int/lit8 v14, p14, 0x3

    shl-int v14, v12, v14

    mul-int/2addr v3, v14

    shr-int/lit8 v3, v3, 0x6

    aput v3, v11, v13

    .line 390
    iget-object v3, v0, Lorg/concentus/CeltMode;->eBands:[S

    aget-short v3, v3, v18

    iget-object v14, v0, Lorg/concentus/CeltMode;->eBands:[S

    aget-short v14, v14, v13

    sub-int/2addr v3, v14

    shl-int v3, v3, p14

    if-ne v3, v12, :cond_4

    .line 391
    aget v3, v11, v13

    sub-int/2addr v3, v7

    aput v3, v11, v13

    :cond_4
    move/from16 v13, v18

    move/from16 v14, v19

    move/from16 v12, v20

    const/4 v7, 0x2

    goto :goto_4

    :cond_5
    move/from16 v20, v12

    move/from16 v19, v14

    const/4 v12, 0x1

    .line 395
    iget v3, v0, Lorg/concentus/CeltMode;->nbAllocVectors:I

    sub-int/2addr v3, v12

    move v7, v12

    :goto_5
    add-int v13, v7, v3

    shr-int/2addr v13, v12

    move v12, v2

    const/4 v14, 0x0

    const/16 v17, 0x0

    :goto_6
    add-int/lit8 v21, v12, -0x1

    if-le v12, v1, :cond_a

    .line 402
    iget-object v1, v0, Lorg/concentus/CeltMode;->eBands:[S

    aget-short v1, v1, v12

    iget-object v12, v0, Lorg/concentus/CeltMode;->eBands:[S

    aget-short v12, v12, v21

    sub-int/2addr v1, v12

    mul-int/2addr v1, v15

    .line 403
    iget-object v12, v0, Lorg/concentus/CeltMode;->allocVectors:[S

    mul-int v22, v13, v5

    add-int v22, v22, v21

    aget-short v12, v12, v22

    mul-int/2addr v1, v12

    shl-int v1, v1, p14

    const/4 v12, 0x2

    shr-int/2addr v1, v12

    if-lez v1, :cond_6

    .line 406
    aget v12, v11, v21

    add-int/2addr v1, v12

    const/4 v12, 0x0

    invoke-static {v12, v1}, Lorg/concentus/Inlines;->IMAX(II)I

    move-result v1

    .line 409
    :cond_6
    aget v12, p3, v21

    add-int/2addr v1, v12

    .line 411
    aget v12, v9, v21

    if-ge v1, v12, :cond_8

    if-eqz v17, :cond_7

    goto :goto_7

    :cond_7
    shl-int/lit8 v12, v15, 0x3

    if-lt v1, v12, :cond_9

    add-int/2addr v14, v12

    goto :goto_8

    .line 414
    :cond_8
    :goto_7
    aget v12, p4, v21

    invoke-static {v1, v12}, Lorg/concentus/Inlines;->IMIN(II)I

    move-result v1

    add-int/2addr v14, v1

    const/16 v17, 0x1

    :cond_9
    :goto_8
    move/from16 v1, p1

    move/from16 v12, v21

    goto :goto_6

    :cond_a
    if-le v14, v8, :cond_b

    add-int/lit8 v13, v13, -0x1

    move v3, v13

    goto :goto_9

    :cond_b
    add-int/lit8 v7, v13, 0x1

    :goto_9
    if-le v7, v3, :cond_12

    add-int/lit8 v1, v7, -0x1

    move/from16 v3, p1

    move v12, v3

    :goto_a
    if-ge v12, v2, :cond_11

    .line 432
    iget-object v13, v0, Lorg/concentus/CeltMode;->eBands:[S

    add-int/lit8 v14, v12, 0x1

    aget-short v13, v13, v14

    iget-object v2, v0, Lorg/concentus/CeltMode;->eBands:[S

    aget-short v2, v2, v12

    sub-int/2addr v13, v2

    mul-int v2, v15, v13

    .line 433
    iget-object v13, v0, Lorg/concentus/CeltMode;->allocVectors:[S

    mul-int v17, v1, v5

    add-int v17, v17, v12

    aget-short v13, v13, v17

    mul-int/2addr v13, v2

    shl-int v13, v13, p14

    const/16 v17, 0x2

    shr-int/lit8 v13, v13, 0x2

    move/from16 p5, v14

    .line 434
    iget v14, v0, Lorg/concentus/CeltMode;->nbAllocVectors:I

    if-lt v7, v14, :cond_c

    .line 435
    aget v2, p4, v12

    goto :goto_b

    :cond_c
    iget-object v14, v0, Lorg/concentus/CeltMode;->allocVectors:[S

    mul-int v18, v7, v5

    add-int v18, v18, v12

    aget-short v14, v14, v18

    mul-int/2addr v2, v14

    shl-int v2, v2, p14

    shr-int/lit8 v2, v2, 0x2

    :goto_b
    if-lez v13, :cond_d

    .line 437
    aget v14, v11, v12

    add-int/2addr v13, v14

    const/4 v14, 0x0

    invoke-static {v14, v13}, Lorg/concentus/Inlines;->IMAX(II)I

    move-result v13

    goto :goto_c

    :cond_d
    const/4 v14, 0x0

    :goto_c
    if-lez v2, :cond_e

    .line 440
    aget v16, v11, v12

    add-int v2, v2, v16

    invoke-static {v14, v2}, Lorg/concentus/Inlines;->IMAX(II)I

    move-result v2

    :cond_e
    if-lez v1, :cond_f

    .line 443
    aget v14, p3, v12

    add-int/2addr v13, v14

    .line 445
    :cond_f
    aget v14, p3, v12

    add-int/2addr v2, v14

    if-lez v14, :cond_10

    move v3, v12

    :cond_10
    sub-int/2addr v2, v13

    const/4 v14, 0x0

    .line 449
    invoke-static {v14, v2}, Lorg/concentus/Inlines;->IMAX(II)I

    move-result v2

    .line 450
    aput v13, v4, v12

    .line 451
    aput v2, v6, v12

    move/from16 v2, p2

    move/from16 v12, p5

    goto :goto_a

    :cond_11
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object v5, v6

    move-object v6, v9

    move-object/from16 v7, p4

    move-object/from16 v9, p9

    move-object/from16 v11, p6

    move/from16 v12, v20

    move-object/from16 v13, p7

    move/from16 v14, v19

    move-object/from16 v15, p10

    move-object/from16 v16, p11

    move-object/from16 v17, p12

    move/from16 v18, p13

    move/from16 v19, p14

    move-object/from16 v20, p15

    move/from16 v21, p16

    move/from16 v22, p17

    move/from16 v23, p18

    .line 454
    invoke-static/range {v0 .. v23}, Lorg/concentus/Rate;->interp_bits2pulses(Lorg/concentus/CeltMode;III[I[I[I[IILorg/concentus/BoxedValueInt;ILorg/concentus/BoxedValueInt;ILorg/concentus/BoxedValueInt;I[I[I[IIILorg/concentus/EntropyCoder;III)I

    move-result v0

    return v0

    :cond_12
    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v15, p13

    const/4 v12, 0x1

    goto/16 :goto_5
.end method

.method static get_pulses(I)I
    .locals 2

    const/16 v0, 0x8

    if-ge p0, v0, :cond_0

    goto :goto_0

    :cond_0
    and-int/lit8 v1, p0, 0x7

    add-int/2addr v1, v0

    shr-int/lit8 p0, p0, 0x3

    add-int/lit8 p0, p0, -0x1

    shl-int p0, v1, p0

    :goto_0
    return p0
.end method

.method static interp_bits2pulses(Lorg/concentus/CeltMode;III[I[I[I[IILorg/concentus/BoxedValueInt;ILorg/concentus/BoxedValueInt;ILorg/concentus/BoxedValueInt;I[I[I[IIILorg/concentus/EntropyCoder;III)I
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p8

    move-object/from16 v3, p11

    move-object/from16 v4, p13

    move/from16 v5, p18

    move-object/from16 v6, p20

    shl-int/lit8 v7, v5, 0x3

    const/4 v9, 0x1

    if-le v5, v9, :cond_0

    move v10, v9

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_0
    shl-int/lit8 v11, p19, 0x3

    const/16 v12, 0x40

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_1
    const/4 v15, 0x6

    if-ge v13, v15, :cond_6

    add-int v16, v14, v12

    shr-int/lit8 v16, v16, 0x1

    move/from16 v9, p2

    const/4 v8, 0x0

    const/16 v17, 0x0

    :goto_2
    add-int/lit8 v18, v9, -0x1

    if-le v9, v1, :cond_4

    .line 111
    aget v9, p4, v18

    aget v19, p5, v18

    mul-int v19, v19, v16

    shr-int/lit8 v19, v19, 0x6

    add-int v9, v9, v19

    .line 112
    aget v15, p6, v18

    if-ge v9, v15, :cond_2

    if-eqz v17, :cond_1

    goto :goto_3

    :cond_1
    if-lt v9, v7, :cond_3

    add-int/2addr v8, v7

    goto :goto_4

    .line 115
    :cond_2
    :goto_3
    aget v15, p7, v18

    invoke-static {v9, v15}, Lorg/concentus/Inlines;->IMIN(II)I

    move-result v9

    add-int/2addr v8, v9

    const/16 v17, 0x1

    :cond_3
    :goto_4
    move/from16 v9, v18

    const/4 v15, 0x6

    goto :goto_2

    :cond_4
    if-le v8, v2, :cond_5

    move/from16 v12, v16

    goto :goto_5

    :cond_5
    move/from16 v14, v16

    :goto_5
    add-int/lit8 v13, v13, 0x1

    const/4 v9, 0x1

    goto :goto_1

    :cond_6
    move/from16 v12, p2

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_6
    add-int/lit8 v13, v12, -0x1

    if-le v12, v1, :cond_9

    .line 130
    aget v12, p4, v13

    aget v15, p5, v13

    mul-int/2addr v15, v14

    const/16 v16, 0x6

    shr-int/lit8 v15, v15, 0x6

    add-int/2addr v12, v15

    .line 131
    aget v15, p6, v13

    if-ge v12, v15, :cond_8

    if-nez v8, :cond_8

    if-lt v12, v7, :cond_7

    move v12, v7

    goto :goto_7

    :cond_7
    const/4 v12, 0x0

    goto :goto_7

    :cond_8
    const/4 v8, 0x1

    .line 142
    :goto_7
    aget v15, p7, v13

    invoke-static {v12, v15}, Lorg/concentus/Inlines;->IMIN(II)I

    move-result v12

    .line 143
    aput v12, p15, v13

    add-int/2addr v9, v12

    move v12, v13

    goto :goto_6

    :cond_9
    move/from16 v12, p2

    move/from16 v8, p12

    :goto_8
    add-int/lit8 v13, v12, -0x1

    move/from16 v14, p3

    if-gt v13, v14, :cond_a

    add-int v2, v2, p10

    move/from16 v16, v10

    goto/16 :goto_c

    :cond_a
    sub-int v15, v2, v9

    .line 168
    iget-object v2, v0, Lorg/concentus/CeltMode;->eBands:[S

    aget-short v2, v2, v12

    iget-object v14, v0, Lorg/concentus/CeltMode;->eBands:[S

    aget-short v14, v14, v1

    sub-int/2addr v2, v14

    invoke-static {v15, v2}, Lorg/concentus/Inlines;->celt_udiv(II)I

    move-result v2

    .line 169
    iget-object v14, v0, Lorg/concentus/CeltMode;->eBands:[S

    aget-short v14, v14, v12

    move/from16 v16, v10

    iget-object v10, v0, Lorg/concentus/CeltMode;->eBands:[S

    aget-short v10, v10, v1

    sub-int/2addr v14, v10

    mul-int/2addr v14, v2

    sub-int/2addr v15, v14

    .line 170
    iget-object v10, v0, Lorg/concentus/CeltMode;->eBands:[S

    aget-short v10, v10, v13

    iget-object v14, v0, Lorg/concentus/CeltMode;->eBands:[S

    aget-short v14, v14, v1

    sub-int/2addr v10, v14

    sub-int/2addr v15, v10

    const/4 v10, 0x0

    invoke-static {v15, v10}, Lorg/concentus/Inlines;->IMAX(II)I

    move-result v14

    .line 171
    iget-object v10, v0, Lorg/concentus/CeltMode;->eBands:[S

    aget-short v10, v10, v12

    iget-object v15, v0, Lorg/concentus/CeltMode;->eBands:[S

    aget-short v15, v15, v13

    sub-int/2addr v10, v15

    .line 172
    aget v15, p15, v13

    mul-int/2addr v2, v10

    add-int/2addr v15, v2

    add-int/2addr v15, v14

    .line 176
    aget v2, p6, v13

    add-int/lit8 v14, v7, 0x8

    invoke-static {v2, v14}, Lorg/concentus/Inlines;->IMAX(II)I

    move-result v2

    if-lt v15, v2, :cond_29

    if-eqz p21, :cond_f

    add-int/lit8 v2, v1, 0x2

    if-le v12, v2, :cond_e

    move/from16 v2, p22

    if-ge v13, v2, :cond_b

    const/4 v14, 0x7

    goto :goto_9

    :cond_b
    const/16 v14, 0x9

    :goto_9
    mul-int/2addr v14, v10

    shl-int v10, v14, p19

    shl-int/lit8 v10, v10, 0x3

    shr-int/lit8 v10, v10, 0x4

    if-le v15, v10, :cond_c

    move/from16 v10, p23

    if-gt v13, v10, :cond_d

    goto :goto_a

    :cond_c
    move/from16 v10, p23

    :cond_d
    const/4 v2, 0x1

    const/4 v14, 0x0

    .line 187
    invoke-virtual {v6, v14, v2}, Lorg/concentus/EntropyCoder;->enc_bit_logp(II)V

    move/from16 v17, v7

    move/from16 p12, v13

    move-object/from16 v7, p9

    move v13, v2

    move/from16 v2, p2

    goto/16 :goto_20

    :cond_e
    :goto_a
    const/4 v2, 0x1

    .line 184
    invoke-virtual {v6, v2, v2}, Lorg/concentus/EntropyCoder;->enc_bit_logp(II)V

    goto :goto_b

    :cond_f
    move/from16 v10, p23

    move/from16 p12, v13

    const-wide/16 v13, 0x1

    .line 188
    invoke-virtual {v6, v13, v14}, Lorg/concentus/EntropyCoder;->dec_bit_logp(J)I

    move-result v2

    if-eqz v2, :cond_28

    :goto_b
    move/from16 v2, p8

    :goto_c
    if-le v12, v1, :cond_10

    const/4 v10, 0x1

    goto :goto_d

    :cond_10
    const/4 v10, 0x0

    .line 211
    :goto_d
    invoke-static {v10}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    if-lez v8, :cond_12

    if-eqz p21, :cond_11

    .line 215
    iget v8, v3, Lorg/concentus/BoxedValueInt;->Val:I

    invoke-static {v8, v12}, Lorg/concentus/Inlines;->IMIN(II)I

    move-result v8

    iput v8, v3, Lorg/concentus/BoxedValueInt;->Val:I

    .line 216
    iget v8, v3, Lorg/concentus/BoxedValueInt;->Val:I

    sub-int/2addr v8, v1

    int-to-long v13, v8

    add-int/lit8 v8, v12, 0x1

    sub-int/2addr v8, v1

    move/from16 v17, v7

    int-to-long v7, v8

    invoke-virtual {v6, v13, v14, v7, v8}, Lorg/concentus/EntropyCoder;->enc_uint(JJ)V

    goto :goto_e

    :cond_11
    move/from16 v17, v7

    add-int/lit8 v7, v12, 0x1

    sub-int/2addr v7, v1

    int-to-long v7, v7

    .line 218
    invoke-virtual {v6, v7, v8}, Lorg/concentus/EntropyCoder;->dec_uint(J)J

    move-result-wide v7

    long-to-int v7, v7

    add-int/2addr v7, v1

    iput v7, v3, Lorg/concentus/BoxedValueInt;->Val:I

    goto :goto_e

    :cond_12
    move/from16 v17, v7

    const/4 v7, 0x0

    .line 221
    iput v7, v3, Lorg/concentus/BoxedValueInt;->Val:I

    .line 224
    :goto_e
    iget v7, v3, Lorg/concentus/BoxedValueInt;->Val:I

    if-gt v7, v1, :cond_13

    add-int v2, v2, p14

    move v7, v2

    const/4 v2, 0x0

    goto :goto_f

    :cond_13
    move v7, v2

    move/from16 v2, p14

    :goto_f
    if-lez v2, :cond_15

    if-eqz p21, :cond_14

    .line 230
    iget v2, v4, Lorg/concentus/BoxedValueInt;->Val:I

    const/4 v8, 0x1

    invoke-virtual {v6, v2, v8}, Lorg/concentus/EntropyCoder;->enc_bit_logp(II)V

    goto :goto_10

    :cond_14
    const-wide/16 v13, 0x1

    .line 232
    invoke-virtual {v6, v13, v14}, Lorg/concentus/EntropyCoder;->dec_bit_logp(J)I

    move-result v2

    iput v2, v4, Lorg/concentus/BoxedValueInt;->Val:I

    goto :goto_10

    :cond_15
    const/4 v2, 0x0

    .line 235
    iput v2, v4, Lorg/concentus/BoxedValueInt;->Val:I

    :goto_10
    sub-int/2addr v7, v9

    .line 240
    iget-object v2, v0, Lorg/concentus/CeltMode;->eBands:[S

    aget-short v2, v2, v12

    iget-object v6, v0, Lorg/concentus/CeltMode;->eBands:[S

    aget-short v6, v6, v1

    sub-int/2addr v2, v6

    invoke-static {v7, v2}, Lorg/concentus/Inlines;->celt_udiv(II)I

    move-result v2

    .line 241
    iget-object v6, v0, Lorg/concentus/CeltMode;->eBands:[S

    aget-short v6, v6, v12

    iget-object v8, v0, Lorg/concentus/CeltMode;->eBands:[S

    aget-short v8, v8, v1

    sub-int/2addr v6, v8

    mul-int/2addr v6, v2

    sub-int/2addr v7, v6

    move v6, v1

    :goto_11
    if-ge v6, v12, :cond_16

    .line 243
    aget v8, p15, v6

    iget-object v9, v0, Lorg/concentus/CeltMode;->eBands:[S

    add-int/lit8 v10, v6, 0x1

    aget-short v9, v9, v10

    iget-object v13, v0, Lorg/concentus/CeltMode;->eBands:[S

    aget-short v13, v13, v6

    sub-int/2addr v9, v13

    mul-int/2addr v9, v2

    add-int/2addr v8, v9

    aput v8, p15, v6

    move v6, v10

    goto :goto_11

    :cond_16
    move v2, v1

    :goto_12
    if-ge v2, v12, :cond_17

    .line 246
    iget-object v6, v0, Lorg/concentus/CeltMode;->eBands:[S

    add-int/lit8 v8, v2, 0x1

    aget-short v6, v6, v8

    iget-object v9, v0, Lorg/concentus/CeltMode;->eBands:[S

    aget-short v9, v9, v2

    sub-int/2addr v6, v9

    invoke-static {v7, v6}, Lorg/concentus/Inlines;->IMIN(II)I

    move-result v6

    .line 247
    aget v9, p15, v2

    add-int/2addr v9, v6

    aput v9, p15, v2

    sub-int/2addr v7, v6

    move v2, v8

    goto :goto_12

    :cond_17
    const/4 v2, 0x0

    :goto_13
    if-ge v1, v12, :cond_24

    .line 259
    aget v6, p15, v1

    if-ltz v6, :cond_18

    const/4 v6, 0x1

    goto :goto_14

    :cond_18
    const/4 v6, 0x0

    :goto_14
    invoke-static {v6}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    .line 260
    iget-object v6, v0, Lorg/concentus/CeltMode;->eBands:[S

    add-int/lit8 v7, v1, 0x1

    aget-short v6, v6, v7

    iget-object v8, v0, Lorg/concentus/CeltMode;->eBands:[S

    aget-short v8, v8, v1

    sub-int/2addr v6, v8

    shl-int v6, v6, p19

    .line 262
    aget v8, p15, v1

    add-int/2addr v8, v2

    const/4 v10, 0x1

    if-le v6, v10, :cond_1f

    .line 265
    aget v10, p7, v1

    sub-int v10, v8, v10

    const/4 v13, 0x0

    invoke-static {v10, v13}, Lorg/concentus/Inlines;->MAX32(II)I

    move-result v10

    sub-int/2addr v8, v10

    .line 266
    aput v8, p15, v1

    mul-int v8, v5, v6

    const/4 v13, 0x2

    if-ne v5, v13, :cond_19

    if-le v6, v13, :cond_19

    .line 269
    iget v14, v4, Lorg/concentus/BoxedValueInt;->Val:I

    if-nez v14, :cond_19

    iget v14, v3, Lorg/concentus/BoxedValueInt;->Val:I

    if-ge v1, v14, :cond_19

    const/4 v14, 0x1

    goto :goto_15

    :cond_19
    const/4 v14, 0x0

    :goto_15
    add-int/2addr v8, v14

    .line 271
    iget-object v14, v0, Lorg/concentus/CeltMode;->logN:[S

    aget-short v14, v14, v1

    add-int/2addr v14, v11

    mul-int/2addr v14, v8

    shr-int/lit8 v15, v14, 0x1

    mul-int/lit8 v18, v8, 0x15

    sub-int v15, v15, v18

    if-ne v6, v13, :cond_1a

    shl-int/lit8 v6, v8, 0x3

    shr-int/2addr v6, v13

    add-int/2addr v15, v6

    .line 284
    :cond_1a
    aget v6, p15, v1

    add-int v13, v6, v15

    mul-int/lit8 v18, v8, 0x2

    shl-int/lit8 v9, v18, 0x3

    if-ge v13, v9, :cond_1b

    shr-int/lit8 v9, v14, 0x2

    :goto_16
    add-int/2addr v15, v9

    goto :goto_17

    :cond_1b
    add-int v9, v6, v15

    mul-int/lit8 v13, v8, 0x3

    shl-int/lit8 v13, v13, 0x3

    if-ge v9, v13, :cond_1c

    shr-int/lit8 v9, v14, 0x3

    goto :goto_16

    :cond_1c
    :goto_17
    add-int/2addr v6, v15

    shl-int/lit8 v9, v8, 0x2

    add-int/2addr v6, v9

    const/4 v9, 0x0

    .line 291
    invoke-static {v9, v6}, Lorg/concentus/Inlines;->IMAX(II)I

    move-result v6

    aput v6, p16, v1

    .line 292
    invoke-static {v6, v8}, Lorg/concentus/Inlines;->celt_udiv(II)I

    move-result v6

    shr-int/lit8 v6, v6, 0x3

    aput v6, p16, v1

    mul-int/2addr v6, v5

    .line 295
    aget v9, p15, v1

    shr-int/lit8 v13, v9, 0x3

    if-le v6, v13, :cond_1d

    shr-int v6, v9, v16

    shr-int/lit8 v6, v6, 0x3

    .line 296
    aput v6, p16, v1

    .line 300
    :cond_1d
    aget v6, p16, v1

    const/16 v9, 0x8

    invoke-static {v6, v9}, Lorg/concentus/Inlines;->IMIN(II)I

    move-result v6

    aput v6, p16, v1

    shl-int/lit8 v8, v8, 0x3

    mul-int/2addr v6, v8

    .line 304
    aget v8, p15, v1

    add-int/2addr v8, v15

    if-lt v6, v8, :cond_1e

    const/4 v6, 0x1

    goto :goto_18

    :cond_1e
    const/4 v6, 0x0

    :goto_18
    aput v6, p17, v1

    .line 307
    aget v6, p15, v1

    aget v8, p16, v1

    mul-int/2addr v8, v5

    shl-int/lit8 v8, v8, 0x3

    sub-int/2addr v6, v8

    aput v6, p15, v1

    goto :goto_19

    :cond_1f
    sub-int v6, v8, v17

    const/4 v9, 0x0

    .line 311
    invoke-static {v9, v6}, Lorg/concentus/Inlines;->MAX32(II)I

    move-result v10

    sub-int/2addr v8, v10

    .line 312
    aput v8, p15, v1

    .line 313
    aput v9, p16, v1

    const/4 v6, 0x1

    .line 314
    aput v6, p17, v1

    :goto_19
    if-lez v10, :cond_21

    add-int/lit8 v6, v16, 0x3

    shr-int v6, v10, v6

    .line 323
    aget v8, p16, v1

    const/16 v9, 0x8

    sub-int/2addr v9, v8

    invoke-static {v6, v9}, Lorg/concentus/Inlines;->IMIN(II)I

    move-result v6

    .line 324
    aget v8, p16, v1

    add-int/2addr v8, v6

    aput v8, p16, v1

    mul-int/2addr v6, v5

    shl-int/lit8 v6, v6, 0x3

    sub-int v2, v10, v2

    if-lt v6, v2, :cond_20

    const/4 v2, 0x1

    goto :goto_1a

    :cond_20
    const/4 v2, 0x0

    .line 326
    :goto_1a
    aput v2, p17, v1

    sub-int/2addr v10, v6

    :cond_21
    move v2, v10

    .line 331
    aget v6, p15, v1

    if-ltz v6, :cond_22

    const/4 v6, 0x1

    goto :goto_1b

    :cond_22
    const/4 v6, 0x0

    :goto_1b
    invoke-static {v6}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    .line 332
    aget v1, p16, v1

    if-ltz v1, :cond_23

    const/4 v1, 0x1

    goto :goto_1c

    :cond_23
    const/4 v1, 0x0

    :goto_1c
    invoke-static {v1}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    move v1, v7

    goto/16 :goto_13

    :cond_24
    move-object/from16 v7, p9

    .line 336
    iput v2, v7, Lorg/concentus/BoxedValueInt;->Val:I

    move/from16 v2, p2

    :goto_1d
    if-ge v1, v2, :cond_27

    .line 340
    aget v0, p15, v1

    shr-int v0, v0, v16

    shr-int/lit8 v0, v0, 0x3

    aput v0, p16, v1

    mul-int/2addr v0, v5

    shl-int/lit8 v0, v0, 0x3

    .line 341
    aget v3, p15, v1

    if-ne v0, v3, :cond_25

    const/4 v0, 0x1

    goto :goto_1e

    :cond_25
    const/4 v0, 0x0

    :goto_1e
    invoke-static {v0}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    const/4 v0, 0x0

    .line 342
    aput v0, p15, v1

    .line 343
    aget v0, p16, v1

    const/4 v13, 0x1

    if-ge v0, v13, :cond_26

    move v10, v13

    goto :goto_1f

    :cond_26
    const/4 v10, 0x0

    :goto_1f
    aput v10, p17, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_27
    return v12

    :cond_28
    move/from16 v2, p2

    move/from16 v17, v7

    const/4 v13, 0x1

    move-object/from16 v7, p9

    :goto_20
    add-int/lit8 v9, v9, 0x8

    add-int/lit8 v15, v15, -0x8

    goto :goto_21

    :cond_29
    move/from16 v2, p2

    move/from16 v10, p23

    move/from16 v17, v7

    move/from16 p12, v13

    const/4 v13, 0x1

    move-object/from16 v7, p9

    .line 196
    :goto_21
    aget v14, p15, p12

    add-int/2addr v14, v8

    sub-int/2addr v9, v14

    if-lez v8, :cond_2a

    .line 198
    sget-object v8, Lorg/concentus/Rate;->LOG2_FRAC_TABLE:[B

    sub-int v14, p12, v1

    aget-byte v8, v8, v14

    :cond_2a
    add-int/2addr v9, v8

    move/from16 v14, v17

    if-lt v15, v14, :cond_2b

    add-int/2addr v9, v14

    .line 204
    aput v14, p15, p12

    const/4 v15, 0x0

    goto :goto_22

    :cond_2b
    const/4 v15, 0x0

    .line 207
    aput v15, p15, p12

    :goto_22
    add-int/lit8 v12, v12, -0x1

    move/from16 v2, p8

    move v7, v14

    move/from16 v10, v16

    goto/16 :goto_8
.end method

.method static pulses2bits(Lorg/concentus/CeltMode;III)I
    .locals 2

    add-int/lit8 p2, p2, 0x1

    if-nez p3, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 82
    :cond_0
    iget-object v0, p0, Lorg/concentus/CeltMode;->cache:Lorg/concentus/PulseCache;

    iget-object v0, v0, Lorg/concentus/PulseCache;->bits:[S

    iget-object v1, p0, Lorg/concentus/CeltMode;->cache:Lorg/concentus/PulseCache;

    iget-object v1, v1, Lorg/concentus/PulseCache;->index:[S

    iget p0, p0, Lorg/concentus/CeltMode;->nbEBands:I

    mul-int/2addr p2, p0

    add-int/2addr p2, p1

    aget-short p0, v1, p2

    add-int/2addr p0, p3

    aget-short p0, v0, p0

    add-int/lit8 p0, p0, 0x1

    :goto_0
    return p0
.end method
