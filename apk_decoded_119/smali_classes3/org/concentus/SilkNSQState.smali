.class Lorg/concentus/SilkNSQState;
.super Ljava/lang/Object;
.source "SilkNSQState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;,
        Lorg/concentus/SilkNSQState$NSQ_sample_struct;
    }
.end annotation


# instance fields
.field lagPrev:I

.field prev_gain_Q16:I

.field rand_seed:I

.field rewhite_flag:I

.field final sAR2_Q14:[I

.field sLF_AR_shp_Q14:I

.field final sLPC_Q14:[I

.field sLTP_buf_idx:I

.field final sLTP_shp_Q14:[I

.field sLTP_shp_buf_idx:I

.field final xq:[S


# direct methods
.method constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x280

    .line 42
    new-array v1, v0, [S

    iput-object v1, p0, Lorg/concentus/SilkNSQState;->xq:[S

    .line 43
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/concentus/SilkNSQState;->sLTP_shp_Q14:[I

    .line 44
    sget v0, Lorg/concentus/SilkConstants;->NSQ_LPC_BUF_LENGTH:I

    add-int/lit8 v0, v0, 0x50

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/concentus/SilkNSQState;->sLPC_Q14:[I

    const/16 v0, 0x10

    .line 45
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/concentus/SilkNSQState;->sAR2_Q14:[I

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lorg/concentus/SilkNSQState;->sLF_AR_shp_Q14:I

    .line 47
    iput v0, p0, Lorg/concentus/SilkNSQState;->lagPrev:I

    .line 48
    iput v0, p0, Lorg/concentus/SilkNSQState;->sLTP_buf_idx:I

    .line 49
    iput v0, p0, Lorg/concentus/SilkNSQState;->sLTP_shp_buf_idx:I

    .line 50
    iput v0, p0, Lorg/concentus/SilkNSQState;->rand_seed:I

    .line 51
    iput v0, p0, Lorg/concentus/SilkNSQState;->prev_gain_Q16:I

    .line 52
    iput v0, p0, Lorg/concentus/SilkNSQState;->rewhite_flag:I

    return-void
.end method

.method private silk_noise_shape_quantizer(I[I[BI[SI[I[S[SI[SIIIIIIIIIII)V
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p14

    move/from16 v3, p16

    move/from16 v4, p18

    move/from16 v5, p19

    move/from16 v6, p20

    move/from16 v7, p21

    move/from16 v8, p22

    .line 296
    iget v9, v0, Lorg/concentus/SilkNSQState;->sLTP_shp_buf_idx:I

    sub-int v9, v9, p13

    const/4 v10, 0x1

    add-int/2addr v9, v10

    .line 297
    iget v11, v0, Lorg/concentus/SilkNSQState;->sLTP_buf_idx:I

    sub-int v11, v11, p13

    const/4 v12, 0x2

    add-int/2addr v11, v12

    const/4 v13, 0x6

    move/from16 v14, p17

    .line 298
    invoke-static {v14, v13}, Lorg/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v14

    .line 301
    sget v15, Lorg/concentus/SilkConstants;->NSQ_LPC_BUF_LENGTH:I

    sub-int/2addr v15, v10

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v6, :cond_f

    .line 305
    iget v13, v0, Lorg/concentus/SilkNSQState;->rand_seed:I

    invoke-static {v13}, Lorg/concentus/Inlines;->silk_RAND(I)I

    move-result v13

    iput v13, v0, Lorg/concentus/SilkNSQState;->rand_seed:I

    const/16 v13, 0x10

    const/16 v10, 0xa

    if-eq v8, v10, :cond_1

    if-ne v8, v13, :cond_0

    goto :goto_1

    :cond_0
    const/16 v16, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/16 v16, 0x1

    .line 308
    :goto_2
    invoke-static/range {v16 .. v16}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    const/4 v10, 0x1

    .line 310
    invoke-static {v8, v10}, Lorg/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v13

    .line 311
    iget-object v10, v0, Lorg/concentus/SilkNSQState;->sLPC_Q14:[I

    aget v10, v10, v15

    const/16 v17, 0x0

    aget-short v6, p8, v17

    invoke-static {v13, v10, v6}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v6

    .line 312
    iget-object v10, v0, Lorg/concentus/SilkNSQState;->sLPC_Q14:[I

    add-int/lit8 v13, v15, -0x1

    aget v10, v10, v13

    move/from16 v17, v14

    const/4 v13, 0x1

    aget-short v14, p8, v13

    invoke-static {v6, v10, v14}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v6

    .line 313
    iget-object v10, v0, Lorg/concentus/SilkNSQState;->sLPC_Q14:[I

    add-int/lit8 v13, v15, -0x2

    aget v10, v10, v13

    const/4 v13, 0x2

    aget-short v14, p8, v13

    invoke-static {v6, v10, v14}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v6

    .line 314
    iget-object v10, v0, Lorg/concentus/SilkNSQState;->sLPC_Q14:[I

    add-int/lit8 v13, v15, -0x3

    aget v10, v10, v13

    const/4 v13, 0x3

    aget-short v14, p8, v13

    invoke-static {v6, v10, v14}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v6

    .line 315
    iget-object v10, v0, Lorg/concentus/SilkNSQState;->sLPC_Q14:[I

    add-int/lit8 v14, v15, -0x4

    aget v10, v10, v14

    const/4 v14, 0x4

    aget-short v13, p8, v14

    invoke-static {v6, v10, v13}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v6

    .line 316
    iget-object v10, v0, Lorg/concentus/SilkNSQState;->sLPC_Q14:[I

    add-int/lit8 v13, v15, -0x5

    aget v10, v10, v13

    const/4 v13, 0x5

    aget-short v13, p8, v13

    invoke-static {v6, v10, v13}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v6

    .line 317
    iget-object v10, v0, Lorg/concentus/SilkNSQState;->sLPC_Q14:[I

    add-int/lit8 v13, v15, -0x6

    aget v10, v10, v13

    const/4 v13, 0x6

    aget-short v14, p8, v13

    invoke-static {v6, v10, v14}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v6

    .line 318
    iget-object v10, v0, Lorg/concentus/SilkNSQState;->sLPC_Q14:[I

    add-int/lit8 v14, v15, -0x7

    aget v10, v10, v14

    const/4 v14, 0x7

    aget-short v14, p8, v14

    invoke-static {v6, v10, v14}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v6

    .line 319
    iget-object v10, v0, Lorg/concentus/SilkNSQState;->sLPC_Q14:[I

    add-int/lit8 v14, v15, -0x8

    aget v10, v10, v14

    const/16 v14, 0x8

    aget-short v13, p8, v14

    invoke-static {v6, v10, v13}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v6

    .line 320
    iget-object v10, v0, Lorg/concentus/SilkNSQState;->sLPC_Q14:[I

    add-int/lit8 v13, v15, -0x9

    aget v10, v10, v13

    const/16 v13, 0x9

    aget-short v13, p8, v13

    invoke-static {v6, v10, v13}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v6

    const/16 v10, 0x10

    if-ne v8, v10, :cond_2

    .line 322
    iget-object v10, v0, Lorg/concentus/SilkNSQState;->sLPC_Q14:[I

    add-int/lit8 v13, v15, -0xa

    aget v10, v10, v13

    const/16 v13, 0xa

    aget-short v14, p8, v13

    invoke-static {v6, v10, v14}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v6

    .line 323
    iget-object v10, v0, Lorg/concentus/SilkNSQState;->sLPC_Q14:[I

    add-int/lit8 v13, v15, -0xb

    aget v10, v10, v13

    const/16 v13, 0xb

    aget-short v13, p8, v13

    invoke-static {v6, v10, v13}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v6

    .line 324
    iget-object v10, v0, Lorg/concentus/SilkNSQState;->sLPC_Q14:[I

    add-int/lit8 v13, v15, -0xc

    aget v10, v10, v13

    const/16 v13, 0xc

    aget-short v13, p8, v13

    invoke-static {v6, v10, v13}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v6

    .line 325
    iget-object v10, v0, Lorg/concentus/SilkNSQState;->sLPC_Q14:[I

    add-int/lit8 v13, v15, -0xd

    aget v10, v10, v13

    const/16 v13, 0xd

    aget-short v13, p8, v13

    invoke-static {v6, v10, v13}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v6

    .line 326
    iget-object v10, v0, Lorg/concentus/SilkNSQState;->sLPC_Q14:[I

    add-int/lit8 v13, v15, -0xe

    aget v10, v10, v13

    const/16 v13, 0xe

    aget-short v13, p8, v13

    invoke-static {v6, v10, v13}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v6

    .line 327
    iget-object v10, v0, Lorg/concentus/SilkNSQState;->sLPC_Q14:[I

    add-int/lit8 v13, v15, -0xf

    aget v10, v10, v13

    const/16 v13, 0xf

    aget-short v13, p8, v13

    invoke-static {v6, v10, v13}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v6

    :cond_2
    const/4 v10, 0x2

    if-ne v1, v10, :cond_3

    .line 335
    aget v13, p7, v11

    aget-short v14, p9, p10

    invoke-static {v10, v13, v14}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v13

    add-int/lit8 v10, v11, -0x1

    .line 336
    aget v10, p7, v10

    add-int/lit8 v14, p10, 0x1

    aget-short v14, p9, v14

    invoke-static {v13, v10, v14}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v10

    add-int/lit8 v13, v11, -0x2

    .line 337
    aget v13, p7, v13

    add-int/lit8 v14, p10, 0x2

    aget-short v14, p9, v14

    invoke-static {v10, v13, v14}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v10

    add-int/lit8 v13, v11, -0x3

    .line 338
    aget v13, p7, v13

    add-int/lit8 v14, p10, 0x3

    aget-short v14, p9, v14

    invoke-static {v10, v13, v14}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v10

    add-int/lit8 v13, v11, -0x4

    .line 339
    aget v13, p7, v13

    const/4 v14, 0x4

    add-int/lit8 v19, p10, 0x4

    aget-short v14, p9, v19

    invoke-static {v10, v13, v14}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v10

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_3
    const/4 v10, 0x0

    :goto_3
    and-int/lit8 v13, v7, 0x1

    if-nez v13, :cond_4

    const/4 v13, 0x1

    goto :goto_4

    :cond_4
    const/4 v13, 0x0

    .line 346
    :goto_4
    invoke-static {v13}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    .line 348
    iget-object v13, v0, Lorg/concentus/SilkNSQState;->sLPC_Q14:[I

    aget v13, v13, v15

    .line 349
    iget-object v14, v0, Lorg/concentus/SilkNSQState;->sAR2_Q14:[I

    const/16 v19, 0x0

    aget v20, v14, v19

    .line 350
    aput v13, v14, v19

    const/4 v14, 0x1

    .line 351
    invoke-static {v7, v14}, Lorg/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v8

    .line 352
    aget-short v14, p11, p12

    invoke-static {v8, v13, v14}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v8

    move/from16 v14, v20

    const/4 v13, 0x2

    :goto_5
    if-ge v13, v7, :cond_5

    move/from16 v19, v11

    .line 354
    iget-object v11, v0, Lorg/concentus/SilkNSQState;->sAR2_Q14:[I

    add-int/lit8 v20, v13, -0x1

    move/from16 v21, v15

    aget v15, v11, v20

    .line 355
    aput v14, v11, v20

    add-int v11, p12, v13

    add-int/lit8 v20, v11, -0x1

    .line 356
    aget-short v4, p11, v20

    invoke-static {v8, v14, v4}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v4

    .line 357
    iget-object v8, v0, Lorg/concentus/SilkNSQState;->sAR2_Q14:[I

    aget v14, v8, v13

    .line 358
    aput v15, v8, v13

    .line 359
    aget-short v8, p11, v11

    invoke-static {v4, v15, v8}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v8

    add-int/lit8 v13, v13, 0x2

    move/from16 v4, p18

    move/from16 v11, v19

    move/from16 v15, v21

    goto :goto_5

    :cond_5
    move/from16 v19, v11

    move/from16 v21, v15

    .line 361
    iget-object v4, v0, Lorg/concentus/SilkNSQState;->sAR2_Q14:[I

    add-int/lit8 v11, v7, -0x1

    aput v14, v4, v11

    add-int v4, p12, v7

    const/4 v11, 0x1

    sub-int/2addr v4, v11

    .line 362
    aget-short v4, p11, v4

    invoke-static {v8, v14, v4}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v4

    .line 364
    invoke-static {v4, v11}, Lorg/concentus/Inlines;->silk_LSHIFT32(II)I

    move-result v4

    .line 366
    iget v8, v0, Lorg/concentus/SilkNSQState;->sLF_AR_shp_Q14:I

    move/from16 v13, p15

    invoke-static {v4, v8, v13}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v4

    .line 368
    iget-object v8, v0, Lorg/concentus/SilkNSQState;->sLTP_shp_Q14:[I

    iget v14, v0, Lorg/concentus/SilkNSQState;->sLTP_shp_buf_idx:I

    sub-int/2addr v14, v11

    aget v8, v8, v14

    invoke-static {v8, v3}, Lorg/concentus/Inlines;->silk_SMULWB(II)I

    move-result v8

    .line 369
    iget v11, v0, Lorg/concentus/SilkNSQState;->sLF_AR_shp_Q14:I

    invoke-static {v8, v11, v3}, Lorg/concentus/Inlines;->silk_SMLAWT(III)I

    move-result v8

    const/4 v11, 0x2

    if-gtz p13, :cond_7

    if-eq v1, v11, :cond_6

    goto :goto_6

    :cond_6
    const/4 v14, 0x0

    goto :goto_7

    :cond_7
    :goto_6
    const/4 v14, 0x1

    .line 371
    :goto_7
    invoke-static {v14}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    .line 374
    invoke-static {v6, v11}, Lorg/concentus/Inlines;->silk_LSHIFT32(II)I

    move-result v14

    invoke-static {v14, v4}, Lorg/concentus/Inlines;->silk_SUB32(II)I

    move-result v11

    .line 376
    invoke-static {v11, v8}, Lorg/concentus/Inlines;->silk_SUB32(II)I

    move-result v11

    if-lez p13, :cond_8

    .line 380
    iget-object v14, v0, Lorg/concentus/SilkNSQState;->sLTP_shp_Q14:[I

    aget v15, v14, v9

    add-int/lit8 v20, v9, -0x2

    aget v14, v14, v20

    invoke-static {v15, v14}, Lorg/concentus/Inlines;->silk_ADD32(II)I

    move-result v14

    invoke-static {v14, v2}, Lorg/concentus/Inlines;->silk_SMULWB(II)I

    move-result v14

    .line 381
    iget-object v15, v0, Lorg/concentus/SilkNSQState;->sLTP_shp_Q14:[I

    add-int/lit8 v20, v9, -0x1

    aget v15, v15, v20

    invoke-static {v14, v15, v2}, Lorg/concentus/Inlines;->silk_SMLAWT(III)I

    move-result v14

    const/4 v15, 0x1

    .line 382
    invoke-static {v14, v15}, Lorg/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v14

    add-int/lit8 v9, v9, 0x1

    .line 385
    invoke-static {v10, v14}, Lorg/concentus/Inlines;->silk_SUB32(II)I

    move-result v14

    .line 387
    invoke-static {v14, v11, v15}, Lorg/concentus/Inlines;->silk_ADD_LSHIFT32(III)I

    move-result v11

    const/4 v14, 0x3

    .line 389
    invoke-static {v11, v14}, Lorg/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v11

    goto :goto_8

    :cond_8
    const/4 v14, 0x2

    .line 392
    invoke-static {v11, v14}, Lorg/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v11

    .line 396
    :goto_8
    aget v14, p2, v12

    invoke-static {v14, v11}, Lorg/concentus/Inlines;->silk_SUB32(II)I

    move-result v11

    .line 400
    iget v14, v0, Lorg/concentus/SilkNSQState;->rand_seed:I

    if-gez v14, :cond_9

    neg-int v11, v11

    :cond_9
    const/16 v14, -0x7c00

    const/16 v15, 0x7800

    .line 403
    invoke-static {v11, v14, v15}, Lorg/concentus/Inlines;->silk_LIMIT_32(III)I

    move-result v11

    .line 406
    invoke-static {v11, v5}, Lorg/concentus/Inlines;->silk_SUB32(II)I

    move-result v14

    const/16 v15, 0xa

    .line 407
    invoke-static {v14, v15}, Lorg/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v14

    const/16 v15, 0x50

    if-lez v14, :cond_a

    const/16 v1, 0xa

    .line 409
    invoke-static {v14, v1}, Lorg/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v14

    invoke-static {v14, v15}, Lorg/concentus/Inlines;->silk_SUB32(II)I

    move-result v1

    .line 410
    invoke-static {v1, v5}, Lorg/concentus/Inlines;->silk_ADD32(II)I

    move-result v1

    const/16 v14, 0x400

    .line 411
    invoke-static {v1, v14}, Lorg/concentus/Inlines;->silk_ADD32(II)I

    move-result v14

    move/from16 v15, p18

    .line 412
    invoke-static {v1, v15}, Lorg/concentus/Inlines;->silk_SMULBB(II)I

    move-result v18

    .line 413
    invoke-static {v14, v15}, Lorg/concentus/Inlines;->silk_SMULBB(II)I

    move-result v20

    move v2, v1

    :goto_9
    move/from16 v15, v18

    move/from16 v1, v20

    goto :goto_a

    :cond_a
    move/from16 v1, p18

    const/16 v15, 0x3b0

    if-nez v14, :cond_b

    .line 416
    invoke-static {v5, v15}, Lorg/concentus/Inlines;->silk_ADD32(II)I

    move-result v14

    .line 417
    invoke-static {v5, v1}, Lorg/concentus/Inlines;->silk_SMULBB(II)I

    move-result v18

    .line 418
    invoke-static {v14, v1}, Lorg/concentus/Inlines;->silk_SMULBB(II)I

    move-result v20

    move v2, v5

    goto :goto_9

    :cond_b
    const/4 v2, -0x1

    if-ne v14, v2, :cond_c

    .line 421
    invoke-static {v5, v15}, Lorg/concentus/Inlines;->silk_SUB32(II)I

    move-result v2

    neg-int v14, v2

    .line 422
    invoke-static {v14, v1}, Lorg/concentus/Inlines;->silk_SMULBB(II)I

    move-result v18

    .line 423
    invoke-static {v5, v1}, Lorg/concentus/Inlines;->silk_SMULBB(II)I

    move-result v20

    move v14, v5

    goto :goto_9

    :cond_c
    const/16 v2, 0xa

    .line 426
    invoke-static {v14, v2}, Lorg/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v14

    const/16 v2, 0x50

    invoke-static {v14, v2}, Lorg/concentus/Inlines;->silk_ADD32(II)I

    move-result v2

    .line 427
    invoke-static {v2, v5}, Lorg/concentus/Inlines;->silk_ADD32(II)I

    move-result v2

    const/16 v14, 0x400

    .line 428
    invoke-static {v2, v14}, Lorg/concentus/Inlines;->silk_ADD32(II)I

    move-result v14

    neg-int v15, v2

    .line 429
    invoke-static {v15, v1}, Lorg/concentus/Inlines;->silk_SMULBB(II)I

    move-result v18

    neg-int v15, v14

    .line 430
    invoke-static {v15, v1}, Lorg/concentus/Inlines;->silk_SMULBB(II)I

    move-result v20

    goto :goto_9

    .line 432
    :goto_a
    invoke-static {v11, v2}, Lorg/concentus/Inlines;->silk_SUB32(II)I

    move-result v3

    .line 433
    invoke-static {v15, v3, v3}, Lorg/concentus/Inlines;->silk_SMLABB(III)I

    move-result v3

    .line 434
    invoke-static {v11, v14}, Lorg/concentus/Inlines;->silk_SUB32(II)I

    move-result v11

    .line 435
    invoke-static {v1, v11, v11}, Lorg/concentus/Inlines;->silk_SMLABB(III)I

    move-result v1

    if-ge v1, v3, :cond_d

    move v2, v14

    :cond_d
    add-int v1, p4, v12

    const/16 v3, 0xa

    .line 441
    invoke-static {v2, v3}, Lorg/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, p3, v1

    const/4 v3, 0x4

    .line 444
    invoke-static {v2, v3}, Lorg/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v2

    .line 445
    iget v11, v0, Lorg/concentus/SilkNSQState;->rand_seed:I

    if-gez v11, :cond_e

    neg-int v2, v2

    :cond_e
    const/4 v11, 0x1

    .line 450
    invoke-static {v2, v10, v11}, Lorg/concentus/Inlines;->silk_ADD_LSHIFT32(III)I

    move-result v2

    .line 451
    invoke-static {v2, v6, v3}, Lorg/concentus/Inlines;->silk_ADD_LSHIFT32(III)I

    move-result v3

    add-int v6, p6, v12

    move/from16 v10, v17

    .line 454
    invoke-static {v3, v10}, Lorg/concentus/Inlines;->silk_SMULWW(II)I

    move-result v11

    const/16 v14, 0x8

    invoke-static {v11, v14}, Lorg/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v11

    invoke-static {v11}, Lorg/concentus/Inlines;->silk_SAT16(I)I

    move-result v11

    int-to-short v11, v11

    aput-short v11, p5, v6

    add-int/lit8 v15, v21, 0x1

    .line 458
    iget-object v6, v0, Lorg/concentus/SilkNSQState;->sLPC_Q14:[I

    aput v3, v6, v15

    const/4 v6, 0x2

    .line 459
    invoke-static {v3, v4, v6}, Lorg/concentus/Inlines;->silk_SUB_LSHIFT32(III)I

    move-result v3

    .line 460
    iput v3, v0, Lorg/concentus/SilkNSQState;->sLF_AR_shp_Q14:I

    .line 462
    iget-object v4, v0, Lorg/concentus/SilkNSQState;->sLTP_shp_Q14:[I

    iget v11, v0, Lorg/concentus/SilkNSQState;->sLTP_shp_buf_idx:I

    invoke-static {v3, v8, v6}, Lorg/concentus/Inlines;->silk_SUB_LSHIFT32(III)I

    move-result v3

    aput v3, v4, v11

    .line 463
    iget v3, v0, Lorg/concentus/SilkNSQState;->sLTP_buf_idx:I

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lorg/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v2

    aput v2, p7, v3

    .line 464
    iget v2, v0, Lorg/concentus/SilkNSQState;->sLTP_shp_buf_idx:I

    add-int/2addr v2, v4

    iput v2, v0, Lorg/concentus/SilkNSQState;->sLTP_shp_buf_idx:I

    .line 465
    iget v2, v0, Lorg/concentus/SilkNSQState;->sLTP_buf_idx:I

    add-int/2addr v2, v4

    iput v2, v0, Lorg/concentus/SilkNSQState;->sLTP_buf_idx:I

    .line 468
    iget v2, v0, Lorg/concentus/SilkNSQState;->rand_seed:I

    aget-byte v1, p3, v1

    invoke-static {v2, v1}, Lorg/concentus/Inlines;->silk_ADD32_ovflw(II)I

    move-result v1

    iput v1, v0, Lorg/concentus/SilkNSQState;->rand_seed:I

    add-int/lit8 v12, v12, 0x1

    move/from16 v1, p1

    move/from16 v2, p14

    move/from16 v3, p16

    move/from16 v6, p20

    move/from16 v8, p22

    move v14, v10

    move/from16 v11, v19

    move v10, v4

    move/from16 v4, p18

    goto/16 :goto_0

    .line 472
    :cond_f
    iget-object v1, v0, Lorg/concentus/SilkNSQState;->sLPC_Q14:[I

    sget v2, Lorg/concentus/SilkConstants;->NSQ_LPC_BUF_LENGTH:I

    move/from16 v3, p20

    const/4 v4, 0x0

    invoke-static {v1, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private silk_noise_shape_quantizer_del_dec([Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;I[I[BI[SI[I[I[S[SI[SIIIIIIIIIIIIIILorg/concentus/BoxedValueInt;I)V
    .locals 28

    move-object/from16 v0, p0

    move/from16 v1, p16

    move/from16 v2, p18

    move/from16 v3, p20

    move/from16 v4, p21

    move/from16 v5, p22

    move/from16 v6, p24

    move/from16 v7, p25

    move/from16 v8, p26

    move/from16 v9, p27

    move-object/from16 v10, p28

    move/from16 v11, p29

    if-lez v9, :cond_0

    const/4 v14, 0x1

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    .line 831
    :goto_0
    invoke-static {v14}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    mul-int/lit8 v14, v9, 0x2

    .line 832
    new-array v15, v14, [Lorg/concentus/SilkNSQState$NSQ_sample_struct;

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v14, :cond_1

    .line 835
    new-instance v13, Lorg/concentus/SilkNSQState$NSQ_sample_struct;

    move/from16 v17, v14

    const/4 v14, 0x0

    invoke-direct {v13, v0, v14}, Lorg/concentus/SilkNSQState$NSQ_sample_struct;-><init>(Lorg/concentus/SilkNSQState;Lorg/concentus/SilkNSQState$NSQ_sample_struct-IA;)V

    aput-object v13, v15, v12

    add-int/lit8 v12, v12, 0x1

    move/from16 v14, v17

    goto :goto_1

    .line 838
    :cond_1
    iget v12, v0, Lorg/concentus/SilkNSQState;->sLTP_shp_buf_idx:I

    sub-int v12, v12, p15

    const/4 v13, 0x1

    add-int/2addr v12, v13

    .line 839
    iget v13, v0, Lorg/concentus/SilkNSQState;->sLTP_buf_idx:I

    sub-int v13, v13, p15

    const/4 v14, 0x2

    add-int/2addr v13, v14

    const/4 v14, 0x6

    move/from16 v18, v12

    move/from16 v12, p19

    .line 840
    invoke-static {v12, v14}, Lorg/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v12

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v5, :cond_1d

    move/from16 v5, p2

    move/from16 v19, v12

    const/4 v12, 0x2

    if-ne v5, v12, :cond_2

    .line 850
    aget v5, p8, v13

    aget-short v11, p11, p12

    invoke-static {v12, v5, v11}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v5

    add-int/lit8 v11, v13, -0x1

    .line 851
    aget v11, p8, v11

    add-int/lit8 v12, p12, 0x1

    aget-short v12, p11, v12

    invoke-static {v5, v11, v12}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v5

    add-int/lit8 v11, v13, -0x2

    .line 852
    aget v11, p8, v11

    add-int/lit8 v12, p12, 0x2

    aget-short v12, p11, v12

    invoke-static {v5, v11, v12}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v5

    add-int/lit8 v11, v13, -0x3

    .line 853
    aget v11, p8, v11

    add-int/lit8 v12, p12, 0x3

    aget-short v12, p11, v12

    invoke-static {v5, v11, v12}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v5

    add-int/lit8 v11, v13, -0x4

    .line 854
    aget v11, p8, v11

    const/4 v12, 0x4

    add-int/lit8 v20, p12, 0x4

    aget-short v12, p11, v20

    invoke-static {v5, v11, v12}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v5

    const/4 v11, 0x1

    .line 855
    invoke-static {v5, v11}, Lorg/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v5

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_2
    const/4 v5, 0x0

    :goto_3
    if-lez p15, :cond_3

    .line 865
    iget-object v11, v0, Lorg/concentus/SilkNSQState;->sLTP_shp_Q14:[I

    aget v12, v11, v18

    add-int/lit8 v20, v18, -0x2

    aget v11, v11, v20

    invoke-static {v12, v11}, Lorg/concentus/Inlines;->silk_ADD32(II)I

    move-result v11

    invoke-static {v11, v1}, Lorg/concentus/Inlines;->silk_SMULWB(II)I

    move-result v11

    .line 866
    iget-object v12, v0, Lorg/concentus/SilkNSQState;->sLTP_shp_Q14:[I

    add-int/lit8 v20, v18, -0x1

    aget v12, v12, v20

    invoke-static {v11, v12, v1}, Lorg/concentus/Inlines;->silk_SMLAWT(III)I

    move-result v11

    const/4 v12, 0x2

    .line 867
    invoke-static {v5, v11, v12}, Lorg/concentus/Inlines;->silk_SUB_LSHIFT32(III)I

    move-result v11

    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    :cond_3
    const/4 v11, 0x0

    :goto_4
    const/4 v12, 0x0

    :goto_5
    if-ge v12, v9, :cond_10

    .line 876
    aget-object v1, p1, v12

    move/from16 v21, v13

    .line 877
    iget-object v13, v1, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->sAR2_Q14:[I

    mul-int/lit8 v22, v12, 0x2

    add-int/lit8 v23, v22, 0x1

    .line 884
    iget v0, v1, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->Seed:I

    invoke-static {v0}, Lorg/concentus/Inlines;->silk_RAND(I)I

    move-result v0

    iput v0, v1, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->Seed:I

    .line 887
    sget v0, Lorg/concentus/SilkConstants;->NSQ_LPC_BUF_LENGTH:I

    const/4 v9, 0x1

    sub-int/2addr v0, v9

    add-int/2addr v0, v14

    const/16 v9, 0x10

    move/from16 v24, v12

    const/16 v12, 0xa

    if-eq v7, v12, :cond_5

    if-ne v7, v9, :cond_4

    goto :goto_6

    :cond_4
    const/4 v12, 0x0

    goto :goto_7

    :cond_5
    :goto_6
    const/4 v12, 0x1

    .line 889
    :goto_7
    invoke-static {v12}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    const/4 v12, 0x1

    .line 891
    invoke-static {v7, v12}, Lorg/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v9

    .line 892
    iget-object v12, v1, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->sLPC_Q14:[I

    aget v12, v12, v0

    move/from16 v26, v5

    const/16 v16, 0x0

    aget-short v5, p10, v16

    invoke-static {v9, v12, v5}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v5

    .line 893
    iget-object v9, v1, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->sLPC_Q14:[I

    add-int/lit8 v12, v0, -0x1

    aget v9, v9, v12

    move-object/from16 v27, v15

    const/4 v12, 0x1

    aget-short v15, p10, v12

    invoke-static {v5, v9, v15}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v5

    .line 894
    iget-object v9, v1, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->sLPC_Q14:[I

    add-int/lit8 v12, v0, -0x2

    aget v9, v9, v12

    const/4 v12, 0x2

    aget-short v15, p10, v12

    invoke-static {v5, v9, v15}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v5

    .line 895
    iget-object v9, v1, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->sLPC_Q14:[I

    add-int/lit8 v12, v0, -0x3

    aget v9, v9, v12

    const/4 v12, 0x3

    aget-short v12, p10, v12

    invoke-static {v5, v9, v12}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v5

    .line 896
    iget-object v9, v1, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->sLPC_Q14:[I

    add-int/lit8 v12, v0, -0x4

    aget v9, v9, v12

    const/4 v12, 0x4

    aget-short v15, p10, v12

    invoke-static {v5, v9, v15}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v5

    .line 897
    iget-object v9, v1, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->sLPC_Q14:[I

    add-int/lit8 v12, v0, -0x5

    aget v9, v9, v12

    const/4 v12, 0x5

    aget-short v12, p10, v12

    invoke-static {v5, v9, v12}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v5

    .line 898
    iget-object v9, v1, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->sLPC_Q14:[I

    add-int/lit8 v12, v0, -0x6

    aget v9, v9, v12

    const/4 v12, 0x6

    aget-short v15, p10, v12

    invoke-static {v5, v9, v15}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v5

    .line 899
    iget-object v9, v1, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->sLPC_Q14:[I

    add-int/lit8 v15, v0, -0x7

    aget v9, v9, v15

    const/4 v15, 0x7

    aget-short v15, p10, v15

    invoke-static {v5, v9, v15}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v5

    .line 900
    iget-object v9, v1, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->sLPC_Q14:[I

    add-int/lit8 v15, v0, -0x8

    aget v9, v9, v15

    const/16 v15, 0x8

    aget-short v15, p10, v15

    invoke-static {v5, v9, v15}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v5

    .line 901
    iget-object v9, v1, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->sLPC_Q14:[I

    add-int/lit8 v15, v0, -0x9

    aget v9, v9, v15

    const/16 v15, 0x9

    aget-short v15, p10, v15

    invoke-static {v5, v9, v15}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v5

    const/16 v9, 0x10

    if-ne v7, v9, :cond_6

    .line 903
    iget-object v9, v1, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->sLPC_Q14:[I

    add-int/lit8 v15, v0, -0xa

    aget v9, v9, v15

    const/16 v15, 0xa

    aget-short v12, p10, v15

    invoke-static {v5, v9, v12}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v5

    .line 904
    iget-object v9, v1, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->sLPC_Q14:[I

    add-int/lit8 v12, v0, -0xb

    aget v9, v9, v12

    const/16 v12, 0xb

    aget-short v12, p10, v12

    invoke-static {v5, v9, v12}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v5

    .line 905
    iget-object v9, v1, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->sLPC_Q14:[I

    add-int/lit8 v12, v0, -0xc

    aget v9, v9, v12

    const/16 v12, 0xc

    aget-short v12, p10, v12

    invoke-static {v5, v9, v12}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v5

    .line 906
    iget-object v9, v1, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->sLPC_Q14:[I

    add-int/lit8 v12, v0, -0xd

    aget v9, v9, v12

    const/16 v12, 0xd

    aget-short v12, p10, v12

    invoke-static {v5, v9, v12}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v5

    .line 907
    iget-object v9, v1, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->sLPC_Q14:[I

    add-int/lit8 v12, v0, -0xe

    aget v9, v9, v12

    const/16 v12, 0xe

    aget-short v12, p10, v12

    invoke-static {v5, v9, v12}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v5

    .line 908
    iget-object v9, v1, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->sLPC_Q14:[I

    add-int/lit8 v12, v0, -0xf

    aget v9, v9, v12

    const/16 v12, 0xf

    aget-short v12, p10, v12

    invoke-static {v5, v9, v12}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v5

    :cond_6
    const/4 v9, 0x4

    .line 910
    invoke-static {v5, v9}, Lorg/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v5

    and-int/lit8 v9, v6, 0x1

    if-nez v9, :cond_7

    const/4 v9, 0x1

    goto :goto_8

    :cond_7
    const/4 v9, 0x0

    .line 915
    :goto_8
    invoke-static {v9}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    .line 918
    iget-object v9, v1, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->sLPC_Q14:[I

    aget v0, v9, v0

    const/4 v9, 0x0

    aget v12, v13, v9

    invoke-static {v0, v12, v8}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v0

    .line 920
    aget v12, v13, v9

    const/4 v15, 0x1

    aget v16, v13, v15

    sub-int v15, v16, v0

    invoke-static {v12, v15, v8}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v12

    .line 921
    aput v0, v13, v9

    const/4 v9, 0x1

    .line 922
    invoke-static {v6, v9}, Lorg/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v15

    .line 923
    aget-short v9, p13, p14

    invoke-static {v15, v0, v9}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v0

    move v9, v12

    const/4 v12, 0x2

    :goto_9
    if-ge v12, v6, :cond_8

    add-int/lit8 v15, v12, -0x1

    .line 927
    aget v7, v13, v15

    aget v20, v13, v12

    sub-int v3, v20, v9

    invoke-static {v7, v3, v8}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v3

    .line 928
    aput v9, v13, v15

    add-int v7, p14, v12

    add-int/lit8 v15, v7, -0x1

    .line 929
    aget-short v15, p13, v15

    invoke-static {v0, v9, v15}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v0

    .line 931
    aget v9, v13, v12

    add-int/lit8 v15, v12, 0x1

    aget v15, v13, v15

    sub-int/2addr v15, v3

    invoke-static {v9, v15, v8}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v9

    .line 932
    aput v3, v13, v12

    .line 933
    aget-short v7, p13, v7

    invoke-static {v0, v3, v7}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v0

    add-int/lit8 v12, v12, 0x2

    move/from16 v3, p20

    move/from16 v7, p25

    goto :goto_9

    :cond_8
    add-int/lit8 v3, v6, -0x1

    .line 935
    aput v9, v13, v3

    add-int v3, p14, v6

    const/4 v7, 0x1

    sub-int/2addr v3, v7

    .line 936
    aget-short v3, p13, v3

    invoke-static {v0, v9, v3}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v0

    .line 938
    invoke-static {v0, v7}, Lorg/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v0

    .line 940
    iget v3, v1, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->LF_AR_Q14:I

    move/from16 v7, p17

    invoke-static {v0, v3, v7}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v0

    const/4 v3, 0x2

    .line 942
    invoke-static {v0, v3}, Lorg/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v0

    .line 945
    iget-object v9, v1, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->Shape_Q14:[I

    iget v12, v10, Lorg/concentus/BoxedValueInt;->Val:I

    aget v9, v9, v12

    invoke-static {v9, v2}, Lorg/concentus/Inlines;->silk_SMULWB(II)I

    move-result v9

    .line 947
    iget v12, v1, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->LF_AR_Q14:I

    invoke-static {v9, v12, v2}, Lorg/concentus/Inlines;->silk_SMLAWT(III)I

    move-result v9

    .line 949
    invoke-static {v9, v3}, Lorg/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v9

    .line 954
    invoke-static {v0, v9}, Lorg/concentus/Inlines;->silk_ADD32(II)I

    move-result v12

    .line 956
    invoke-static {v11, v5}, Lorg/concentus/Inlines;->silk_ADD32(II)I

    move-result v13

    .line 958
    invoke-static {v13, v12}, Lorg/concentus/Inlines;->silk_SUB32(II)I

    move-result v12

    const/4 v13, 0x4

    .line 960
    invoke-static {v12, v13}, Lorg/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v12

    .line 963
    aget v13, p3, v14

    invoke-static {v13, v12}, Lorg/concentus/Inlines;->silk_SUB32(II)I

    move-result v12

    .line 967
    iget v13, v1, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->Seed:I

    if-gez v13, :cond_9

    neg-int v12, v12

    :cond_9
    const/16 v13, -0x7c00

    const/16 v15, 0x7800

    .line 970
    invoke-static {v12, v13, v15}, Lorg/concentus/Inlines;->silk_LIMIT_32(III)I

    move-result v12

    .line 973
    invoke-static {v12, v4}, Lorg/concentus/Inlines;->silk_SUB32(II)I

    move-result v13

    const/16 v15, 0xa

    .line 974
    invoke-static {v13, v15}, Lorg/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v13

    const/16 v3, 0x50

    if-lez v13, :cond_a

    .line 976
    invoke-static {v13, v15}, Lorg/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v13

    invoke-static {v13, v3}, Lorg/concentus/Inlines;->silk_SUB32(II)I

    move-result v3

    .line 977
    invoke-static {v3, v4}, Lorg/concentus/Inlines;->silk_ADD32(II)I

    move-result v3

    const/16 v13, 0x400

    .line 978
    invoke-static {v3, v13}, Lorg/concentus/Inlines;->silk_ADD32(II)I

    move-result v13

    move/from16 v15, p20

    .line 979
    invoke-static {v3, v15}, Lorg/concentus/Inlines;->silk_SMULBB(II)I

    move-result v20

    .line 980
    invoke-static {v13, v15}, Lorg/concentus/Inlines;->silk_SMULBB(II)I

    move-result v25

    :goto_a
    move/from16 v2, v20

    move/from16 v4, v25

    goto :goto_b

    :cond_a
    move/from16 v15, p20

    const/16 v3, 0x3b0

    if-nez v13, :cond_b

    .line 983
    invoke-static {v4, v3}, Lorg/concentus/Inlines;->silk_ADD32(II)I

    move-result v13

    .line 984
    invoke-static {v4, v15}, Lorg/concentus/Inlines;->silk_SMULBB(II)I

    move-result v20

    .line 985
    invoke-static {v13, v15}, Lorg/concentus/Inlines;->silk_SMULBB(II)I

    move-result v25

    move v3, v4

    goto :goto_a

    :cond_b
    const/4 v2, -0x1

    if-ne v13, v2, :cond_c

    .line 988
    invoke-static {v4, v3}, Lorg/concentus/Inlines;->silk_SUB32(II)I

    move-result v3

    neg-int v2, v3

    .line 989
    invoke-static {v2, v15}, Lorg/concentus/Inlines;->silk_SMULBB(II)I

    move-result v20

    .line 990
    invoke-static {v4, v15}, Lorg/concentus/Inlines;->silk_SMULBB(II)I

    move-result v25

    move v13, v4

    goto :goto_a

    :cond_c
    const/16 v2, 0xa

    .line 993
    invoke-static {v13, v2}, Lorg/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v3

    const/16 v13, 0x50

    invoke-static {v3, v13}, Lorg/concentus/Inlines;->silk_ADD32(II)I

    move-result v3

    .line 994
    invoke-static {v3, v4}, Lorg/concentus/Inlines;->silk_ADD32(II)I

    move-result v3

    const/16 v13, 0x400

    .line 995
    invoke-static {v3, v13}, Lorg/concentus/Inlines;->silk_ADD32(II)I

    move-result v13

    neg-int v2, v3

    .line 996
    invoke-static {v2, v15}, Lorg/concentus/Inlines;->silk_SMULBB(II)I

    move-result v20

    neg-int v2, v13

    .line 997
    invoke-static {v2, v15}, Lorg/concentus/Inlines;->silk_SMULBB(II)I

    move-result v25

    goto :goto_a

    .line 999
    :goto_b
    invoke-static {v12, v3}, Lorg/concentus/Inlines;->silk_SUB32(II)I

    move-result v6

    .line 1000
    invoke-static {v2, v6, v6}, Lorg/concentus/Inlines;->silk_SMLABB(III)I

    move-result v2

    const/16 v6, 0xa

    invoke-static {v2, v6}, Lorg/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v2

    .line 1001
    invoke-static {v12, v13}, Lorg/concentus/Inlines;->silk_SUB32(II)I

    move-result v12

    .line 1002
    invoke-static {v4, v12, v12}, Lorg/concentus/Inlines;->silk_SMLABB(III)I

    move-result v4

    invoke-static {v4, v6}, Lorg/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v4

    if-ge v2, v4, :cond_d

    .line 1005
    aget-object v6, v27, v22

    iget v12, v1, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->RD_Q10:I

    invoke-static {v12, v2}, Lorg/concentus/Inlines;->silk_ADD32(II)I

    move-result v2

    iput v2, v6, Lorg/concentus/SilkNSQState$NSQ_sample_struct;->RD_Q10:I

    .line 1006
    aget-object v2, v27, v23

    iget v6, v1, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->RD_Q10:I

    invoke-static {v6, v4}, Lorg/concentus/Inlines;->silk_ADD32(II)I

    move-result v4

    iput v4, v2, Lorg/concentus/SilkNSQState$NSQ_sample_struct;->RD_Q10:I

    .line 1007
    aget-object v2, v27, v22

    iput v3, v2, Lorg/concentus/SilkNSQState$NSQ_sample_struct;->Q_Q10:I

    .line 1008
    aget-object v2, v27, v23

    iput v13, v2, Lorg/concentus/SilkNSQState$NSQ_sample_struct;->Q_Q10:I

    goto :goto_c

    .line 1010
    :cond_d
    aget-object v6, v27, v22

    iget v12, v1, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->RD_Q10:I

    invoke-static {v12, v4}, Lorg/concentus/Inlines;->silk_ADD32(II)I

    move-result v4

    iput v4, v6, Lorg/concentus/SilkNSQState$NSQ_sample_struct;->RD_Q10:I

    .line 1011
    aget-object v4, v27, v23

    iget v6, v1, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->RD_Q10:I

    invoke-static {v6, v2}, Lorg/concentus/Inlines;->silk_ADD32(II)I

    move-result v2

    iput v2, v4, Lorg/concentus/SilkNSQState$NSQ_sample_struct;->RD_Q10:I

    .line 1012
    aget-object v2, v27, v22

    iput v13, v2, Lorg/concentus/SilkNSQState$NSQ_sample_struct;->Q_Q10:I

    .line 1013
    aget-object v2, v27, v23

    iput v3, v2, Lorg/concentus/SilkNSQState$NSQ_sample_struct;->Q_Q10:I

    .line 1019
    :goto_c
    aget-object v2, v27, v22

    iget v2, v2, Lorg/concentus/SilkNSQState$NSQ_sample_struct;->Q_Q10:I

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lorg/concentus/Inlines;->silk_LSHIFT32(II)I

    move-result v2

    .line 1020
    iget v3, v1, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->Seed:I

    if-gez v3, :cond_e

    neg-int v2, v2

    :cond_e
    move/from16 v3, v26

    .line 1025
    invoke-static {v2, v3}, Lorg/concentus/Inlines;->silk_ADD32(II)I

    move-result v2

    .line 1026
    invoke-static {v2, v5}, Lorg/concentus/Inlines;->silk_ADD32(II)I

    move-result v4

    .line 1029
    invoke-static {v4, v0}, Lorg/concentus/Inlines;->silk_SUB32(II)I

    move-result v6

    .line 1030
    aget-object v12, v27, v22

    invoke-static {v6, v9}, Lorg/concentus/Inlines;->silk_SUB32(II)I

    move-result v13

    iput v13, v12, Lorg/concentus/SilkNSQState$NSQ_sample_struct;->sLTP_shp_Q14:I

    .line 1031
    aget-object v12, v27, v22

    iput v6, v12, Lorg/concentus/SilkNSQState$NSQ_sample_struct;->LF_AR_Q14:I

    .line 1032
    aget-object v6, v27, v22

    iput v2, v6, Lorg/concentus/SilkNSQState$NSQ_sample_struct;->LPC_exc_Q14:I

    .line 1033
    aget-object v2, v27, v22

    iput v4, v2, Lorg/concentus/SilkNSQState$NSQ_sample_struct;->xq_Q14:I

    .line 1038
    aget-object v2, v27, v23

    iget v2, v2, Lorg/concentus/SilkNSQState$NSQ_sample_struct;->Q_Q10:I

    const/4 v4, 0x4

    invoke-static {v2, v4}, Lorg/concentus/Inlines;->silk_LSHIFT32(II)I

    move-result v2

    .line 1039
    iget v1, v1, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->Seed:I

    if-gez v1, :cond_f

    neg-int v2, v2

    .line 1045
    :cond_f
    invoke-static {v2, v3}, Lorg/concentus/Inlines;->silk_ADD32(II)I

    move-result v1

    .line 1046
    invoke-static {v1, v5}, Lorg/concentus/Inlines;->silk_ADD32(II)I

    move-result v2

    .line 1049
    invoke-static {v2, v0}, Lorg/concentus/Inlines;->silk_SUB32(II)I

    move-result v0

    .line 1050
    aget-object v5, v27, v23

    invoke-static {v0, v9}, Lorg/concentus/Inlines;->silk_SUB32(II)I

    move-result v6

    iput v6, v5, Lorg/concentus/SilkNSQState$NSQ_sample_struct;->sLTP_shp_Q14:I

    .line 1051
    aget-object v5, v27, v23

    iput v0, v5, Lorg/concentus/SilkNSQState$NSQ_sample_struct;->LF_AR_Q14:I

    .line 1052
    aget-object v0, v27, v23

    iput v1, v0, Lorg/concentus/SilkNSQState$NSQ_sample_struct;->LPC_exc_Q14:I

    .line 1053
    aget-object v0, v27, v23

    iput v2, v0, Lorg/concentus/SilkNSQState$NSQ_sample_struct;->xq_Q14:I

    add-int/lit8 v12, v24, 0x1

    move-object/from16 v0, p0

    move/from16 v2, p18

    move/from16 v4, p21

    move/from16 v6, p24

    move/from16 v7, p25

    move/from16 v9, p27

    move v5, v3

    move v3, v15

    move/from16 v13, v21

    move-object/from16 v15, v27

    goto/16 :goto_5

    :cond_10
    move/from16 v7, p17

    move/from16 v21, v13

    move-object/from16 v27, v15

    move v15, v3

    .line 1056
    iget v0, v10, Lorg/concentus/BoxedValueInt;->Val:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x1f

    iput v0, v10, Lorg/concentus/BoxedValueInt;->Val:I

    .line 1058
    iget v0, v10, Lorg/concentus/BoxedValueInt;->Val:I

    move/from16 v1, p29

    add-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x1f

    const/4 v2, 0x0

    .line 1062
    aget-object v3, v27, v2

    iget v2, v3, Lorg/concentus/SilkNSQState$NSQ_sample_struct;->RD_Q10:I

    move/from16 v5, p27

    const/4 v3, 0x0

    const/4 v4, 0x1

    :goto_d
    if-ge v4, v5, :cond_12

    mul-int/lit8 v6, v4, 0x2

    .line 1065
    aget-object v9, v27, v6

    iget v9, v9, Lorg/concentus/SilkNSQState$NSQ_sample_struct;->RD_Q10:I

    if-ge v9, v2, :cond_11

    .line 1066
    aget-object v2, v27, v6

    iget v2, v2, Lorg/concentus/SilkNSQState$NSQ_sample_struct;->RD_Q10:I

    move v3, v4

    :cond_11
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 1072
    :cond_12
    aget-object v2, p1, v3

    iget-object v2, v2, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->RandState:[I

    aget v2, v2, v0

    const/4 v4, 0x0

    :goto_e
    if-ge v4, v5, :cond_15

    .line 1074
    aget-object v6, p1, v4

    iget-object v6, v6, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->RandState:[I

    aget v6, v6, v0

    if-eq v6, v2, :cond_14

    mul-int/lit8 v6, v4, 0x2

    .line 1076
    aget-object v9, v27, v6

    iget v11, v9, Lorg/concentus/SilkNSQState$NSQ_sample_struct;->RD_Q10:I

    const v12, 0x7ffffff

    invoke-static {v11, v12}, Lorg/concentus/Inlines;->silk_ADD32(II)I

    move-result v11

    iput v11, v9, Lorg/concentus/SilkNSQState$NSQ_sample_struct;->RD_Q10:I

    add-int/lit8 v9, v6, 0x1

    .line 1077
    aget-object v9, v27, v9

    iget v11, v9, Lorg/concentus/SilkNSQState$NSQ_sample_struct;->RD_Q10:I

    invoke-static {v11, v12}, Lorg/concentus/Inlines;->silk_ADD32(II)I

    move-result v11

    iput v11, v9, Lorg/concentus/SilkNSQState$NSQ_sample_struct;->RD_Q10:I

    .line 1078
    aget-object v6, v27, v6

    iget v6, v6, Lorg/concentus/SilkNSQState$NSQ_sample_struct;->RD_Q10:I

    if-ltz v6, :cond_13

    const/4 v6, 0x1

    goto :goto_f

    :cond_13
    const/4 v6, 0x0

    :goto_f
    invoke-static {v6}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    :cond_14
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_15
    const/4 v4, 0x0

    .line 1083
    aget-object v2, v27, v4

    iget v2, v2, Lorg/concentus/SilkNSQState$NSQ_sample_struct;->RD_Q10:I

    const/4 v4, 0x1

    .line 1084
    aget-object v6, v27, v4

    iget v4, v6, Lorg/concentus/SilkNSQState$NSQ_sample_struct;->RD_Q10:I

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x1

    :goto_10
    if-ge v11, v5, :cond_18

    mul-int/lit8 v12, v11, 0x2

    .line 1090
    aget-object v13, v27, v12

    iget v13, v13, Lorg/concentus/SilkNSQState$NSQ_sample_struct;->RD_Q10:I

    if-le v13, v2, :cond_16

    .line 1091
    aget-object v2, v27, v12

    iget v2, v2, Lorg/concentus/SilkNSQState$NSQ_sample_struct;->RD_Q10:I

    move v6, v11

    :cond_16
    add-int/lit8 v12, v12, 0x1

    .line 1095
    aget-object v13, v27, v12

    iget v13, v13, Lorg/concentus/SilkNSQState$NSQ_sample_struct;->RD_Q10:I

    if-ge v13, v4, :cond_17

    .line 1096
    aget-object v4, v27, v12

    iget v4, v4, Lorg/concentus/SilkNSQState$NSQ_sample_struct;->RD_Q10:I

    move v9, v11

    :cond_17
    add-int/lit8 v11, v11, 0x1

    goto :goto_10

    :cond_18
    if-ge v4, v2, :cond_19

    .line 1103
    aget-object v2, p1, v6

    aget-object v4, p1, v9

    invoke-virtual {v2, v4, v14}, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->PartialCopyFrom(Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;I)V

    mul-int/lit8 v6, v6, 0x2

    .line 1104
    aget-object v2, v27, v6

    mul-int/lit8 v9, v9, 0x2

    const/4 v4, 0x1

    add-int/2addr v9, v4

    aget-object v4, v27, v9

    invoke-virtual {v2, v4}, Lorg/concentus/SilkNSQState$NSQ_sample_struct;->Assign(Lorg/concentus/SilkNSQState$NSQ_sample_struct;)V

    .line 1108
    :cond_19
    aget-object v2, p1, v3

    if-gtz p23, :cond_1b

    if-lt v14, v1, :cond_1a

    goto :goto_11

    :cond_1a
    move-object/from16 v3, p0

    goto :goto_12

    :cond_1b
    :goto_11
    add-int v3, p5, v14

    sub-int/2addr v3, v1

    .line 1110
    iget-object v4, v2, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->Q_Q10:[I

    aget v4, v4, v0

    const/16 v6, 0xa

    invoke-static {v4, v6}, Lorg/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, p4, v3

    add-int v3, p7, v14

    sub-int/2addr v3, v1

    .line 1111
    iget-object v4, v2, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->Xq_Q14:[I

    aget v4, v4, v0

    aget v6, p9, v0

    .line 1112
    invoke-static {v4, v6}, Lorg/concentus/Inlines;->silk_SMULWW(II)I

    move-result v4

    const/16 v6, 0x8

    .line 1111
    invoke-static {v4, v6}, Lorg/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v4

    invoke-static {v4}, Lorg/concentus/Inlines;->silk_SAT16(I)I

    move-result v4

    int-to-short v4, v4

    aput-short v4, p6, v3

    move-object/from16 v3, p0

    .line 1113
    iget-object v4, v3, Lorg/concentus/SilkNSQState;->sLTP_shp_Q14:[I

    iget v6, v3, Lorg/concentus/SilkNSQState;->sLTP_shp_buf_idx:I

    sub-int/2addr v6, v1

    iget-object v9, v2, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->Shape_Q14:[I

    aget v9, v9, v0

    aput v9, v4, v6

    .line 1114
    iget v4, v3, Lorg/concentus/SilkNSQState;->sLTP_buf_idx:I

    sub-int/2addr v4, v1

    iget-object v2, v2, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->Pred_Q15:[I

    aget v0, v2, v0

    aput v0, p8, v4

    .line 1116
    :goto_12
    iget v0, v3, Lorg/concentus/SilkNSQState;->sLTP_shp_buf_idx:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, v3, Lorg/concentus/SilkNSQState;->sLTP_shp_buf_idx:I

    .line 1117
    iget v0, v3, Lorg/concentus/SilkNSQState;->sLTP_buf_idx:I

    add-int/2addr v0, v2

    iput v0, v3, Lorg/concentus/SilkNSQState;->sLTP_buf_idx:I

    const/4 v0, 0x0

    :goto_13
    if-ge v0, v5, :cond_1c

    .line 1121
    aget-object v2, p1, v0

    mul-int/lit8 v4, v0, 0x2

    .line 1123
    aget-object v6, v27, v4

    iget v6, v6, Lorg/concentus/SilkNSQState$NSQ_sample_struct;->LF_AR_Q14:I

    iput v6, v2, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->LF_AR_Q14:I

    .line 1124
    iget-object v6, v2, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->sLPC_Q14:[I

    sget v9, Lorg/concentus/SilkConstants;->NSQ_LPC_BUF_LENGTH:I

    add-int/2addr v9, v14

    aget-object v11, v27, v4

    iget v11, v11, Lorg/concentus/SilkNSQState$NSQ_sample_struct;->xq_Q14:I

    aput v11, v6, v9

    .line 1125
    iget-object v6, v2, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->Xq_Q14:[I

    iget v9, v10, Lorg/concentus/BoxedValueInt;->Val:I

    aget-object v11, v27, v4

    iget v11, v11, Lorg/concentus/SilkNSQState$NSQ_sample_struct;->xq_Q14:I

    aput v11, v6, v9

    .line 1126
    iget-object v6, v2, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->Q_Q10:[I

    iget v9, v10, Lorg/concentus/BoxedValueInt;->Val:I

    aget-object v11, v27, v4

    iget v11, v11, Lorg/concentus/SilkNSQState$NSQ_sample_struct;->Q_Q10:I

    aput v11, v6, v9

    .line 1127
    iget-object v6, v2, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->Pred_Q15:[I

    iget v9, v10, Lorg/concentus/BoxedValueInt;->Val:I

    aget-object v11, v27, v4

    iget v11, v11, Lorg/concentus/SilkNSQState$NSQ_sample_struct;->LPC_exc_Q14:I

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lorg/concentus/Inlines;->silk_LSHIFT32(II)I

    move-result v11

    aput v11, v6, v9

    .line 1128
    iget-object v6, v2, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->Shape_Q14:[I

    iget v9, v10, Lorg/concentus/BoxedValueInt;->Val:I

    aget-object v11, v27, v4

    iget v11, v11, Lorg/concentus/SilkNSQState$NSQ_sample_struct;->sLTP_shp_Q14:I

    aput v11, v6, v9

    .line 1129
    iget v6, v2, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->Seed:I

    aget-object v9, v27, v4

    iget v9, v9, Lorg/concentus/SilkNSQState$NSQ_sample_struct;->Q_Q10:I

    const/16 v11, 0xa

    invoke-static {v9, v11}, Lorg/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v9

    invoke-static {v6, v9}, Lorg/concentus/Inlines;->silk_ADD32_ovflw(II)I

    move-result v6

    iput v6, v2, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->Seed:I

    .line 1130
    iget-object v6, v2, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->RandState:[I

    iget v9, v10, Lorg/concentus/BoxedValueInt;->Val:I

    iget v13, v2, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->Seed:I

    aput v13, v6, v9

    .line 1131
    aget-object v4, v27, v4

    iget v4, v4, Lorg/concentus/SilkNSQState$NSQ_sample_struct;->RD_Q10:I

    iput v4, v2, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->RD_Q10:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_1c
    const/4 v12, 0x1

    .line 1133
    iget v0, v10, Lorg/concentus/BoxedValueInt;->Val:I

    aput v19, p9, v0

    add-int/lit8 v14, v14, 0x1

    move/from16 v2, p18

    move/from16 v4, p21

    move/from16 v6, p24

    move/from16 v7, p25

    move v11, v1

    move-object v0, v3

    move v9, v5

    move v3, v15

    move/from16 v12, v19

    move/from16 v13, v21

    move-object/from16 v15, v27

    move/from16 v1, p16

    move/from16 v5, p22

    goto/16 :goto_2

    :cond_1d
    move-object v3, v0

    move v5, v9

    const/4 v0, 0x0

    :goto_14
    if-ge v0, v5, :cond_1e

    .line 1138
    aget-object v1, p1, v0

    .line 1139
    iget-object v2, v1, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->sLPC_Q14:[I

    iget-object v1, v1, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->sLPC_Q14:[I

    sget v4, Lorg/concentus/SilkConstants;->NSQ_LPC_BUF_LENGTH:I

    move/from16 v6, p22

    const/4 v7, 0x0

    invoke-static {v2, v6, v1, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_1e
    return-void
.end method

.method private silk_nsq_del_dec_scale_states(Lorg/concentus/SilkChannelEncoder;[Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;[II[I[S[IIII[I[III)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    .line 1163
    aget v2, p12, p8

    .line 1164
    aget v3, p11, p8

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lorg/concentus/Inlines;->silk_max(II)I

    move-result v3

    const/16 v5, 0x2f

    invoke-static {v3, v5}, Lorg/concentus/Inlines;->silk_INVERSE32_varQ(II)I

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    move v6, v4

    goto :goto_0

    :cond_0
    move v6, v5

    .line 1165
    :goto_0
    invoke-static {v6}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    .line 1168
    aget v6, p11, p8

    iget v7, v0, Lorg/concentus/SilkNSQState;->prev_gain_Q16:I

    const/high16 v8, 0x10000

    if-eq v6, v7, :cond_1

    const/16 v9, 0x10

    .line 1169
    invoke-static {v7, v6, v9}, Lorg/concentus/Inlines;->silk_DIV32_varQ(III)I

    move-result v6

    goto :goto_1

    :cond_1
    move v6, v8

    :goto_1
    const/16 v7, 0x8

    .line 1175
    invoke-static {v3, v7}, Lorg/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v7

    move v9, v5

    .line 1176
    :goto_2
    iget v10, v1, Lorg/concentus/SilkChannelEncoder;->subfr_length:I

    if-ge v9, v10, :cond_2

    add-int v10, p4, v9

    .line 1177
    aget v10, p3, v10

    invoke-static {v10, v7}, Lorg/concentus/Inlines;->silk_SMULWW(II)I

    move-result v10

    aput v10, p5, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1181
    :cond_2
    aget v7, p11, p8

    iput v7, v0, Lorg/concentus/SilkNSQState;->prev_gain_Q16:I

    .line 1184
    iget v7, v0, Lorg/concentus/SilkNSQState;->rewhite_flag:I

    const/4 v9, 0x2

    if-eqz v7, :cond_5

    if-nez p8, :cond_3

    move/from16 v7, p10

    .line 1187
    invoke-static {v3, v7}, Lorg/concentus/Inlines;->silk_SMULWB(II)I

    move-result v3

    invoke-static {v3, v9}, Lorg/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v3

    .line 1189
    :cond_3
    iget v7, v0, Lorg/concentus/SilkNSQState;->sLTP_buf_idx:I

    sub-int/2addr v7, v2

    sub-int/2addr v7, v9

    :goto_3
    iget v10, v0, Lorg/concentus/SilkNSQState;->sLTP_buf_idx:I

    if-ge v7, v10, :cond_5

    const/16 v10, 0x140

    if-ge v7, v10, :cond_4

    move v10, v4

    goto :goto_4

    :cond_4
    move v10, v5

    .line 1190
    :goto_4
    invoke-static {v10}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    .line 1191
    aget-short v10, p6, v7

    invoke-static {v3, v10}, Lorg/concentus/Inlines;->silk_SMULWB(II)I

    move-result v10

    aput v10, p7, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_5
    if-eq v6, v8, :cond_b

    .line 1198
    iget v3, v0, Lorg/concentus/SilkNSQState;->sLTP_shp_buf_idx:I

    iget v4, v1, Lorg/concentus/SilkChannelEncoder;->ltp_mem_length:I

    sub-int/2addr v3, v4

    :goto_5
    iget v4, v0, Lorg/concentus/SilkNSQState;->sLTP_shp_buf_idx:I

    if-ge v3, v4, :cond_6

    .line 1199
    iget-object v4, v0, Lorg/concentus/SilkNSQState;->sLTP_shp_Q14:[I

    aget v7, v4, v3

    invoke-static {v6, v7}, Lorg/concentus/Inlines;->silk_SMULWW(II)I

    move-result v7

    aput v7, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_6
    move/from16 v3, p13

    if-ne v3, v9, :cond_7

    .line 1203
    iget v3, v0, Lorg/concentus/SilkNSQState;->rewhite_flag:I

    if-nez v3, :cond_7

    .line 1204
    iget v3, v0, Lorg/concentus/SilkNSQState;->sLTP_buf_idx:I

    sub-int/2addr v3, v2

    sub-int/2addr v3, v9

    :goto_6
    iget v2, v0, Lorg/concentus/SilkNSQState;->sLTP_buf_idx:I

    sub-int v2, v2, p14

    if-ge v3, v2, :cond_7

    .line 1205
    aget v2, p7, v3

    invoke-static {v6, v2}, Lorg/concentus/Inlines;->silk_SMULWW(II)I

    move-result v2

    aput v2, p7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_7
    move/from16 v2, p9

    move v3, v5

    :goto_7
    if-ge v3, v2, :cond_b

    .line 1210
    aget-object v4, p2, v3

    .line 1213
    iget v7, v4, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->LF_AR_Q14:I

    invoke-static {v6, v7}, Lorg/concentus/Inlines;->silk_SMULWW(II)I

    move-result v7

    iput v7, v4, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->LF_AR_Q14:I

    move v7, v5

    .line 1216
    :goto_8
    sget v8, Lorg/concentus/SilkConstants;->NSQ_LPC_BUF_LENGTH:I

    if-ge v7, v8, :cond_8

    .line 1217
    iget-object v8, v4, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->sLPC_Q14:[I

    iget-object v9, v4, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->sLPC_Q14:[I

    aget v9, v9, v7

    invoke-static {v6, v9}, Lorg/concentus/Inlines;->silk_SMULWW(II)I

    move-result v9

    aput v9, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_8
    move v7, v5

    .line 1219
    :goto_9
    iget v8, v1, Lorg/concentus/SilkChannelEncoder;->shapingLPCOrder:I

    if-ge v7, v8, :cond_9

    .line 1220
    iget-object v8, v4, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->sAR2_Q14:[I

    iget-object v9, v4, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->sAR2_Q14:[I

    aget v9, v9, v7

    invoke-static {v6, v9}, Lorg/concentus/Inlines;->silk_SMULWW(II)I

    move-result v9

    aput v9, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :cond_9
    move v7, v5

    :goto_a
    const/16 v8, 0x20

    if-ge v7, v8, :cond_a

    .line 1223
    iget-object v8, v4, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->Pred_Q15:[I

    iget-object v9, v4, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->Pred_Q15:[I

    aget v9, v9, v7

    invoke-static {v6, v9}, Lorg/concentus/Inlines;->silk_SMULWW(II)I

    move-result v9

    aput v9, v8, v7

    .line 1224
    iget-object v8, v4, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->Shape_Q14:[I

    iget-object v9, v4, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->Shape_Q14:[I

    aget v9, v9, v7

    invoke-static {v6, v9}, Lorg/concentus/Inlines;->silk_SMULWW(II)I

    move-result v9

    aput v9, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_b
    return-void
.end method

.method private silk_nsq_scale_states(Lorg/concentus/SilkChannelEncoder;[II[I[S[III[I[II)V
    .locals 12

    move-object v0, p0

    move-object v1, p1

    .line 491
    aget v2, p10, p7

    .line 492
    aget v3, p9, p7

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lorg/concentus/Inlines;->silk_max(II)I

    move-result v3

    const/16 v5, 0x2f

    invoke-static {v3, v5}, Lorg/concentus/Inlines;->silk_INVERSE32_varQ(II)I

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    move v6, v4

    goto :goto_0

    :cond_0
    move v6, v5

    .line 493
    :goto_0
    invoke-static {v6}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    .line 496
    aget v6, p9, p7

    iget v7, v0, Lorg/concentus/SilkNSQState;->prev_gain_Q16:I

    const/16 v8, 0x10

    const/high16 v9, 0x10000

    if-eq v6, v7, :cond_1

    .line 497
    invoke-static {v7, v6, v8}, Lorg/concentus/Inlines;->silk_DIV32_varQ(III)I

    move-result v6

    goto :goto_1

    :cond_1
    move v6, v9

    :goto_1
    const/16 v7, 0x8

    .line 503
    invoke-static {v3, v7}, Lorg/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v7

    move v10, v5

    .line 504
    :goto_2
    iget v11, v1, Lorg/concentus/SilkChannelEncoder;->subfr_length:I

    if-ge v10, v11, :cond_2

    add-int v11, p3, v10

    .line 505
    aget v11, p2, v11

    invoke-static {v11, v7}, Lorg/concentus/Inlines;->silk_SMULWW(II)I

    move-result v11

    aput v11, p4, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 509
    :cond_2
    aget v7, p9, p7

    iput v7, v0, Lorg/concentus/SilkNSQState;->prev_gain_Q16:I

    .line 512
    iget v7, v0, Lorg/concentus/SilkNSQState;->rewhite_flag:I

    const/4 v10, 0x2

    if-eqz v7, :cond_5

    if-nez p7, :cond_3

    move/from16 v7, p8

    .line 515
    invoke-static {v3, v7}, Lorg/concentus/Inlines;->silk_SMULWB(II)I

    move-result v3

    invoke-static {v3, v10}, Lorg/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v3

    .line 517
    :cond_3
    iget v7, v0, Lorg/concentus/SilkNSQState;->sLTP_buf_idx:I

    sub-int/2addr v7, v2

    sub-int/2addr v7, v10

    :goto_3
    iget v11, v0, Lorg/concentus/SilkNSQState;->sLTP_buf_idx:I

    if-ge v7, v11, :cond_5

    const/16 v11, 0x140

    if-ge v7, v11, :cond_4

    move v11, v4

    goto :goto_4

    :cond_4
    move v11, v5

    .line 518
    :goto_4
    invoke-static {v11}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    .line 519
    aget-short v11, p5, v7

    invoke-static {v3, v11}, Lorg/concentus/Inlines;->silk_SMULWB(II)I

    move-result v11

    aput v11, p6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_5
    if-eq v6, v9, :cond_9

    .line 526
    iget v3, v0, Lorg/concentus/SilkNSQState;->sLTP_shp_buf_idx:I

    iget v1, v1, Lorg/concentus/SilkChannelEncoder;->ltp_mem_length:I

    sub-int/2addr v3, v1

    :goto_5
    iget v1, v0, Lorg/concentus/SilkNSQState;->sLTP_shp_buf_idx:I

    if-ge v3, v1, :cond_6

    .line 527
    iget-object v1, v0, Lorg/concentus/SilkNSQState;->sLTP_shp_Q14:[I

    aget v4, v1, v3

    invoke-static {v6, v4}, Lorg/concentus/Inlines;->silk_SMULWW(II)I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_6
    move/from16 v1, p11

    if-ne v1, v10, :cond_7

    .line 531
    iget v1, v0, Lorg/concentus/SilkNSQState;->rewhite_flag:I

    if-nez v1, :cond_7

    .line 532
    iget v1, v0, Lorg/concentus/SilkNSQState;->sLTP_buf_idx:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, v10

    :goto_6
    iget v2, v0, Lorg/concentus/SilkNSQState;->sLTP_buf_idx:I

    if-ge v1, v2, :cond_7

    .line 533
    aget v2, p6, v1

    invoke-static {v6, v2}, Lorg/concentus/Inlines;->silk_SMULWW(II)I

    move-result v2

    aput v2, p6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 537
    :cond_7
    iget v1, v0, Lorg/concentus/SilkNSQState;->sLF_AR_shp_Q14:I

    invoke-static {v6, v1}, Lorg/concentus/Inlines;->silk_SMULWW(II)I

    move-result v1

    iput v1, v0, Lorg/concentus/SilkNSQState;->sLF_AR_shp_Q14:I

    move v1, v5

    .line 540
    :goto_7
    sget v2, Lorg/concentus/SilkConstants;->NSQ_LPC_BUF_LENGTH:I

    if-ge v1, v2, :cond_8

    .line 541
    iget-object v2, v0, Lorg/concentus/SilkNSQState;->sLPC_Q14:[I

    aget v3, v2, v1

    invoke-static {v6, v3}, Lorg/concentus/Inlines;->silk_SMULWW(II)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_8
    :goto_8
    if-ge v5, v8, :cond_9

    .line 544
    iget-object v1, v0, Lorg/concentus/SilkNSQState;->sAR2_Q14:[I

    aget v2, v1, v5

    invoke-static {v6, v2}, Lorg/concentus/Inlines;->silk_SMULWW(II)I

    move-result v2

    aput v2, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_9
    return-void
.end method


# virtual methods
.method Assign(Lorg/concentus/SilkNSQState;)V
    .locals 4

    .line 70
    iget v0, p1, Lorg/concentus/SilkNSQState;->sLF_AR_shp_Q14:I

    iput v0, p0, Lorg/concentus/SilkNSQState;->sLF_AR_shp_Q14:I

    .line 71
    iget v0, p1, Lorg/concentus/SilkNSQState;->lagPrev:I

    iput v0, p0, Lorg/concentus/SilkNSQState;->lagPrev:I

    .line 72
    iget v0, p1, Lorg/concentus/SilkNSQState;->sLTP_buf_idx:I

    iput v0, p0, Lorg/concentus/SilkNSQState;->sLTP_buf_idx:I

    .line 73
    iget v0, p1, Lorg/concentus/SilkNSQState;->sLTP_shp_buf_idx:I

    iput v0, p0, Lorg/concentus/SilkNSQState;->sLTP_shp_buf_idx:I

    .line 74
    iget v0, p1, Lorg/concentus/SilkNSQState;->rand_seed:I

    iput v0, p0, Lorg/concentus/SilkNSQState;->rand_seed:I

    .line 75
    iget v0, p1, Lorg/concentus/SilkNSQState;->prev_gain_Q16:I

    iput v0, p0, Lorg/concentus/SilkNSQState;->prev_gain_Q16:I

    .line 76
    iget v0, p1, Lorg/concentus/SilkNSQState;->rewhite_flag:I

    iput v0, p0, Lorg/concentus/SilkNSQState;->rewhite_flag:I

    .line 77
    iget-object v0, p1, Lorg/concentus/SilkNSQState;->xq:[S

    iget-object v1, p0, Lorg/concentus/SilkNSQState;->xq:[S

    const/4 v2, 0x0

    const/16 v3, 0x280

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    iget-object v0, p1, Lorg/concentus/SilkNSQState;->sLTP_shp_Q14:[I

    iget-object v1, p0, Lorg/concentus/SilkNSQState;->sLTP_shp_Q14:[I

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    iget-object v0, p1, Lorg/concentus/SilkNSQState;->sLPC_Q14:[I

    iget-object v1, p0, Lorg/concentus/SilkNSQState;->sLPC_Q14:[I

    sget v3, Lorg/concentus/SilkConstants;->NSQ_LPC_BUF_LENGTH:I

    add-int/lit8 v3, v3, 0x50

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    iget-object p1, p1, Lorg/concentus/SilkNSQState;->sAR2_Q14:[I

    iget-object v0, p0, Lorg/concentus/SilkNSQState;->sAR2_Q14:[I

    const/16 v1, 0x10

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method Reset()V
    .locals 3

    .line 55
    iget-object v0, p0, Lorg/concentus/SilkNSQState;->xq:[S

    const/4 v1, 0x0

    const/16 v2, 0x280

    invoke-static {v0, v1, v2}, Lorg/concentus/Arrays;->MemSet([SSI)V

    .line 56
    iget-object v0, p0, Lorg/concentus/SilkNSQState;->sLTP_shp_Q14:[I

    invoke-static {v0, v1, v2}, Lorg/concentus/Arrays;->MemSet([III)V

    .line 57
    iget-object v0, p0, Lorg/concentus/SilkNSQState;->sLPC_Q14:[I

    sget v2, Lorg/concentus/SilkConstants;->NSQ_LPC_BUF_LENGTH:I

    add-int/lit8 v2, v2, 0x50

    invoke-static {v0, v1, v2}, Lorg/concentus/Arrays;->MemSet([III)V

    .line 58
    iget-object v0, p0, Lorg/concentus/SilkNSQState;->sAR2_Q14:[I

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Lorg/concentus/Arrays;->MemSet([III)V

    .line 59
    iput v1, p0, Lorg/concentus/SilkNSQState;->sLF_AR_shp_Q14:I

    .line 60
    iput v1, p0, Lorg/concentus/SilkNSQState;->lagPrev:I

    .line 61
    iput v1, p0, Lorg/concentus/SilkNSQState;->sLTP_buf_idx:I

    .line 62
    iput v1, p0, Lorg/concentus/SilkNSQState;->sLTP_shp_buf_idx:I

    .line 63
    iput v1, p0, Lorg/concentus/SilkNSQState;->rand_seed:I

    .line 64
    iput v1, p0, Lorg/concentus/SilkNSQState;->prev_gain_Q16:I

    .line 65
    iput v1, p0, Lorg/concentus/SilkNSQState;->rewhite_flag:I

    return-void
.end method

.method silk_NSQ(Lorg/concentus/SilkChannelEncoder;Lorg/concentus/SideInfoIndices;[I[B[[S[S[S[I[I[I[I[III)V
    .locals 36

    move-object/from16 v14, p0

    move-object/from16 v13, p1

    move-object/from16 v12, p2

    .line 166
    iget-byte v0, v12, Lorg/concentus/SideInfoIndices;->Seed:B

    iput v0, v14, Lorg/concentus/SilkNSQState;->rand_seed:I

    .line 169
    iget v0, v14, Lorg/concentus/SilkNSQState;->lagPrev:I

    .line 171
    iget v1, v14, Lorg/concentus/SilkNSQState;->prev_gain_Q16:I

    const/4 v15, 0x1

    const/4 v11, 0x0

    if-eqz v1, :cond_0

    move v1, v15

    goto :goto_0

    :cond_0
    move v1, v11

    :goto_0
    invoke-static {v1}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    .line 173
    sget-object v1, Lorg/concentus/SilkTables;->silk_Quantization_Offsets_Q10:[[S

    iget-byte v2, v12, Lorg/concentus/SideInfoIndices;->signalType:B

    shr-int/2addr v2, v15

    aget-object v1, v1, v2

    iget-byte v2, v12, Lorg/concentus/SideInfoIndices;->quantOffsetType:B

    aget-short v23, v1, v2

    .line 175
    iget-byte v1, v12, Lorg/concentus/SideInfoIndices;->NLSFInterpCoef_Q2:B

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    move v10, v11

    goto :goto_1

    :cond_1
    move v10, v15

    .line 181
    :goto_1
    iget v1, v13, Lorg/concentus/SilkChannelEncoder;->ltp_mem_length:I

    iget v2, v13, Lorg/concentus/SilkChannelEncoder;->frame_length:I

    add-int/2addr v1, v2

    new-array v9, v1, [I

    .line 182
    iget v1, v13, Lorg/concentus/SilkChannelEncoder;->ltp_mem_length:I

    iget v2, v13, Lorg/concentus/SilkChannelEncoder;->frame_length:I

    add-int/2addr v1, v2

    new-array v8, v1, [S

    .line 183
    iget v1, v13, Lorg/concentus/SilkChannelEncoder;->subfr_length:I

    new-array v7, v1, [I

    .line 185
    iget v1, v13, Lorg/concentus/SilkChannelEncoder;->ltp_mem_length:I

    iput v1, v14, Lorg/concentus/SilkNSQState;->sLTP_shp_buf_idx:I

    .line 186
    iget v1, v13, Lorg/concentus/SilkChannelEncoder;->ltp_mem_length:I

    iput v1, v14, Lorg/concentus/SilkNSQState;->sLTP_buf_idx:I

    .line 187
    iget v1, v13, Lorg/concentus/SilkChannelEncoder;->ltp_mem_length:I

    move/from16 v32, v1

    move v6, v11

    move/from16 v33, v6

    move/from16 v34, v33

    .line 188
    :goto_2
    iget v1, v13, Lorg/concentus/SilkChannelEncoder;->nb_subfr:I

    if-ge v6, v1, :cond_5

    shr-int/lit8 v1, v6, 0x1

    rsub-int/lit8 v2, v10, 0x1

    or-int v16, v1, v2

    mul-int/lit8 v18, v6, 0x5

    mul-int/lit8 v19, v6, 0x10

    .line 194
    aget v1, p8, v6

    if-ltz v1, :cond_2

    move v1, v15

    goto :goto_3

    :cond_2
    move v1, v11

    :goto_3
    invoke-static {v1}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    .line 195
    aget v1, p8, v6

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lorg/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v1

    .line 196
    aget v3, p8, v6

    invoke-static {v3, v15}, Lorg/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Lorg/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v3

    or-int v35, v1, v3

    .line 198
    iput v11, v14, Lorg/concentus/SilkNSQState;->rewhite_flag:I

    .line 199
    iget-byte v1, v12, Lorg/concentus/SideInfoIndices;->signalType:B

    if-ne v1, v2, :cond_4

    .line 201
    aget v0, p12, v6

    .line 204
    invoke-static {v10, v15}, Lorg/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x3

    and-int/2addr v1, v6

    if-nez v1, :cond_4

    .line 206
    iget v1, v13, Lorg/concentus/SilkChannelEncoder;->ltp_mem_length:I

    sub-int/2addr v1, v0

    iget v3, v13, Lorg/concentus/SilkChannelEncoder;->predictLPCOrder:I

    sub-int/2addr v1, v3

    add-int/lit8 v25, v1, -0x2

    if-lez v25, :cond_3

    move v1, v15

    goto :goto_4

    :cond_3
    move v1, v11

    .line 207
    :goto_4
    invoke-static {v1}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    .line 209
    iget-object v1, v14, Lorg/concentus/SilkNSQState;->xq:[S

    iget v2, v13, Lorg/concentus/SilkChannelEncoder;->subfr_length:I

    mul-int/2addr v2, v6

    add-int v27, v25, v2

    aget-object v28, p5, v16

    iget v2, v13, Lorg/concentus/SilkChannelEncoder;->ltp_mem_length:I

    sub-int v30, v2, v25

    iget v2, v13, Lorg/concentus/SilkChannelEncoder;->predictLPCOrder:I

    const/16 v29, 0x0

    move-object/from16 v24, v8

    move-object/from16 v26, v1

    move/from16 v31, v2

    invoke-static/range {v24 .. v31}, Lorg/concentus/Filters;->silk_LPC_analysis_filter([SI[SI[SIII)V

    .line 212
    iput v15, v14, Lorg/concentus/SilkNSQState;->rewhite_flag:I

    .line 213
    iget v1, v13, Lorg/concentus/SilkChannelEncoder;->ltp_mem_length:I

    iput v1, v14, Lorg/concentus/SilkNSQState;->sLTP_buf_idx:I

    :cond_4
    move/from16 v24, v0

    .line 217
    iget-byte v5, v12, Lorg/concentus/SideInfoIndices;->signalType:B

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, v34

    move-object v4, v7

    move/from16 v17, v5

    move-object v5, v8

    move/from16 v25, v6

    move-object v6, v9

    move-object/from16 v26, v7

    move/from16 v7, v25

    move-object/from16 v27, v8

    move/from16 v8, p14

    move-object/from16 v28, v9

    move-object/from16 v9, p11

    move/from16 v29, v10

    move-object/from16 v10, p12

    move/from16 v11, v17

    invoke-direct/range {v0 .. v11}, Lorg/concentus/SilkNSQState;->silk_nsq_scale_states(Lorg/concentus/SilkChannelEncoder;[II[I[S[III[I[II)V

    .line 219
    iget-byte v1, v12, Lorg/concentus/SideInfoIndices;->signalType:B

    iget-object v5, v14, Lorg/concentus/SilkNSQState;->xq:[S

    aget-object v8, p5, v16

    aget v0, p9, v25

    move/from16 v30, v15

    move v15, v0

    aget v16, p10, v25

    aget v17, p11, v25

    iget v0, v13, Lorg/concentus/SilkChannelEncoder;->subfr_length:I

    move/from16 v20, v0

    iget v0, v13, Lorg/concentus/SilkChannelEncoder;->shapingLPCOrder:I

    move/from16 v21, v0

    iget v0, v13, Lorg/concentus/SilkChannelEncoder;->predictLPCOrder:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v2, v26

    move-object/from16 v3, p4

    move/from16 v4, v33

    move/from16 v6, v32

    move-object/from16 v7, v28

    move-object/from16 v9, p6

    move/from16 v10, v18

    move-object/from16 v11, p7

    move/from16 v12, v19

    move/from16 v13, v24

    move/from16 v14, v35

    move/from16 v18, p13

    move/from16 v19, v23

    invoke-direct/range {v0 .. v22}, Lorg/concentus/SilkNSQState;->silk_noise_shape_quantizer(I[I[BI[SI[I[S[SI[SIIIIIIIIIII)V

    move-object/from16 v0, p1

    .line 243
    iget v1, v0, Lorg/concentus/SilkChannelEncoder;->subfr_length:I

    add-int v34, v34, v1

    .line 244
    iget v1, v0, Lorg/concentus/SilkChannelEncoder;->subfr_length:I

    add-int v33, v33, v1

    .line 245
    iget v1, v0, Lorg/concentus/SilkChannelEncoder;->subfr_length:I

    add-int v32, v32, v1

    add-int/lit8 v6, v25, 0x1

    move-object/from16 v14, p0

    move-object/from16 v12, p2

    move-object v13, v0

    move/from16 v0, v24

    move-object/from16 v7, v26

    move-object/from16 v8, v27

    move-object/from16 v9, v28

    move/from16 v10, v29

    move/from16 v15, v30

    const/4 v11, 0x0

    goto/16 :goto_2

    :cond_5
    move-object v0, v13

    move/from16 v30, v15

    .line 249
    iget v1, v0, Lorg/concentus/SilkChannelEncoder;->nb_subfr:I

    add-int/lit8 v1, v1, -0x1

    aget v1, p12, v1

    move-object/from16 v2, p0

    iput v1, v2, Lorg/concentus/SilkNSQState;->lagPrev:I

    .line 252
    iget-object v1, v2, Lorg/concentus/SilkNSQState;->xq:[S

    iget v3, v0, Lorg/concentus/SilkChannelEncoder;->frame_length:I

    iget v4, v0, Lorg/concentus/SilkChannelEncoder;->ltp_mem_length:I

    const/4 v5, 0x0

    invoke-static {v1, v3, v5, v4}, Lorg/concentus/Arrays;->MemMove([SIII)V

    .line 253
    iget-object v1, v2, Lorg/concentus/SilkNSQState;->sLTP_shp_Q14:[I

    iget v3, v0, Lorg/concentus/SilkChannelEncoder;->frame_length:I

    iget v0, v0, Lorg/concentus/SilkChannelEncoder;->ltp_mem_length:I

    invoke-static {v1, v3, v5, v0}, Lorg/concentus/Arrays;->MemMove([IIII)V

    return-void
.end method

.method silk_NSQ_del_dec(Lorg/concentus/SilkChannelEncoder;Lorg/concentus/SideInfoIndices;[I[B[[S[S[S[I[I[I[I[III)V
    .locals 47

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v13, p2

    .line 582
    iget v0, v15, Lorg/concentus/SilkNSQState;->lagPrev:I

    .line 584
    iget v1, v15, Lorg/concentus/SilkNSQState;->prev_gain_Q16:I

    const/4 v12, 0x1

    const/4 v11, 0x0

    if-eqz v1, :cond_0

    move v1, v12

    goto :goto_0

    :cond_0
    move v1, v11

    :goto_0
    invoke-static {v1}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    .line 587
    iget v1, v14, Lorg/concentus/SilkChannelEncoder;->nStatesDelayedDecision:I

    new-array v10, v1, [Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;

    move v1, v11

    .line 588
    :goto_1
    iget v2, v14, Lorg/concentus/SilkChannelEncoder;->nStatesDelayedDecision:I

    if-ge v1, v2, :cond_1

    .line 589
    new-instance v2, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;

    iget v3, v14, Lorg/concentus/SilkChannelEncoder;->shapingLPCOrder:I

    invoke-direct {v2, v15, v3}, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;-><init>(Lorg/concentus/SilkNSQState;I)V

    aput-object v2, v10, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v11

    .line 592
    :goto_2
    iget v2, v14, Lorg/concentus/SilkChannelEncoder;->nStatesDelayedDecision:I

    if-ge v1, v2, :cond_2

    .line 593
    aget-object v2, v10, v1

    .line 594
    iget-byte v3, v13, Lorg/concentus/SideInfoIndices;->Seed:B

    add-int/2addr v3, v1

    and-int/lit8 v3, v3, 0x3

    iput v3, v2, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->Seed:I

    .line 595
    iget v3, v2, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->Seed:I

    iput v3, v2, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->SeedInit:I

    .line 596
    iput v11, v2, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->RD_Q10:I

    .line 597
    iget v3, v15, Lorg/concentus/SilkNSQState;->sLF_AR_shp_Q14:I

    iput v3, v2, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->LF_AR_Q14:I

    .line 598
    iget-object v3, v2, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->Shape_Q14:[I

    iget-object v4, v15, Lorg/concentus/SilkNSQState;->sLTP_shp_Q14:[I

    iget v5, v14, Lorg/concentus/SilkChannelEncoder;->ltp_mem_length:I

    sub-int/2addr v5, v12

    aget v4, v4, v5

    aput v4, v3, v11

    .line 599
    iget-object v3, v15, Lorg/concentus/SilkNSQState;->sLPC_Q14:[I

    iget-object v4, v2, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->sLPC_Q14:[I

    sget v5, Lorg/concentus/SilkConstants;->NSQ_LPC_BUF_LENGTH:I

    invoke-static {v3, v11, v4, v11, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 600
    iget-object v3, v15, Lorg/concentus/SilkNSQState;->sAR2_Q14:[I

    iget-object v2, v2, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->sAR2_Q14:[I

    iget v4, v14, Lorg/concentus/SilkChannelEncoder;->shapingLPCOrder:I

    invoke-static {v3, v11, v2, v11, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 603
    :cond_2
    sget-object v1, Lorg/concentus/SilkTables;->silk_Quantization_Offsets_Q10:[[S

    iget-byte v2, v13, Lorg/concentus/SideInfoIndices;->signalType:B

    shr-int/2addr v2, v12

    aget-object v1, v1, v2

    iget-byte v2, v13, Lorg/concentus/SideInfoIndices;->quantOffsetType:B

    aget-short v30, v1, v2

    .line 607
    iget v1, v14, Lorg/concentus/SilkChannelEncoder;->subfr_length:I

    const/16 v2, 0x20

    invoke-static {v2, v1}, Lorg/concentus/Inlines;->silk_min_int(II)I

    move-result v1

    .line 610
    iget-byte v3, v13, Lorg/concentus/SideInfoIndices;->signalType:B

    const/4 v9, 0x2

    if-ne v3, v9, :cond_3

    move v3, v11

    .line 611
    :goto_3
    iget v4, v14, Lorg/concentus/SilkChannelEncoder;->nb_subfr:I

    if-ge v3, v4, :cond_4

    .line 612
    aget v4, p12, v3

    add-int/lit8 v4, v4, -0x3

    invoke-static {v1, v4}, Lorg/concentus/Inlines;->silk_min_int(II)I

    move-result v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    if-lez v0, :cond_4

    add-int/lit8 v3, v0, -0x3

    .line 615
    invoke-static {v1, v3}, Lorg/concentus/Inlines;->silk_min_int(II)I

    move-result v1

    :cond_4
    move v8, v1

    .line 618
    iget-byte v1, v13, Lorg/concentus/SideInfoIndices;->NLSFInterpCoef_Q2:B

    const/4 v3, 0x4

    if-ne v1, v3, :cond_5

    move v7, v11

    goto :goto_4

    :cond_5
    move v7, v12

    .line 624
    :goto_4
    iget v1, v14, Lorg/concentus/SilkChannelEncoder;->ltp_mem_length:I

    iget v3, v14, Lorg/concentus/SilkChannelEncoder;->frame_length:I

    add-int/2addr v1, v3

    new-array v6, v1, [I

    .line 625
    iget v1, v14, Lorg/concentus/SilkChannelEncoder;->ltp_mem_length:I

    iget v3, v14, Lorg/concentus/SilkChannelEncoder;->frame_length:I

    add-int/2addr v1, v3

    new-array v5, v1, [S

    .line 626
    iget v1, v14, Lorg/concentus/SilkChannelEncoder;->subfr_length:I

    new-array v4, v1, [I

    .line 627
    new-array v3, v2, [I

    .line 630
    iget v1, v14, Lorg/concentus/SilkChannelEncoder;->ltp_mem_length:I

    .line 631
    iget v2, v14, Lorg/concentus/SilkChannelEncoder;->ltp_mem_length:I

    iput v2, v15, Lorg/concentus/SilkNSQState;->sLTP_shp_buf_idx:I

    .line 632
    iget v2, v14, Lorg/concentus/SilkChannelEncoder;->ltp_mem_length:I

    iput v2, v15, Lorg/concentus/SilkNSQState;->sLTP_buf_idx:I

    move/from16 v31, v1

    move v1, v11

    move v2, v1

    move/from16 v16, v2

    move/from16 v32, v16

    move/from16 v33, v32

    .line 634
    :goto_5
    iget v11, v14, Lorg/concentus/SilkChannelEncoder;->nb_subfr:I

    if-ge v2, v11, :cond_10

    shr-int/lit8 v11, v2, 0x1

    rsub-int/lit8 v17, v7, 0x1

    or-int v26, v11, v17

    .line 638
    aget v11, p8, v2

    if-ltz v11, :cond_6

    const/4 v11, 0x1

    goto :goto_6

    :cond_6
    const/4 v11, 0x0

    :goto_6
    invoke-static {v11}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    .line 639
    aget v11, p8, v2

    invoke-static {v11, v9}, Lorg/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v11

    .line 640
    aget v12, p8, v2

    const/4 v9, 0x1

    invoke-static {v12, v9}, Lorg/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v12

    const/16 v9, 0x10

    invoke-static {v12, v9}, Lorg/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v9

    or-int v29, v11, v9

    const/4 v11, 0x0

    .line 642
    iput v11, v15, Lorg/concentus/SilkNSQState;->rewhite_flag:I

    .line 643
    iget-byte v9, v13, Lorg/concentus/SideInfoIndices;->signalType:B

    const/4 v12, 0x2

    if-ne v9, v12, :cond_f

    .line 645
    aget v0, p12, v2

    const/4 v9, 0x1

    .line 648
    invoke-static {v7, v9}, Lorg/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v18

    rsub-int/lit8 v9, v18, 0x3

    and-int/2addr v9, v2

    if-nez v9, :cond_f

    if-ne v2, v12, :cond_d

    .line 652
    aget-object v9, v10, v11

    iget v9, v9, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->RD_Q10:I

    move-object/from16 v28, v3

    const/4 v12, 0x1

    .line 654
    :goto_7
    iget v3, v14, Lorg/concentus/SilkChannelEncoder;->nStatesDelayedDecision:I

    if-ge v12, v3, :cond_8

    .line 655
    aget-object v3, v10, v12

    iget v3, v3, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->RD_Q10:I

    if-ge v3, v9, :cond_7

    .line 656
    aget-object v3, v10, v12

    iget v3, v3, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->RD_Q10:I

    move v9, v3

    move v11, v12

    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    :cond_8
    const/4 v3, 0x0

    .line 660
    :goto_8
    iget v9, v14, Lorg/concentus/SilkChannelEncoder;->nStatesDelayedDecision:I

    if-ge v3, v9, :cond_b

    if-eq v3, v11, :cond_a

    .line 662
    aget-object v9, v10, v3

    iget v12, v9, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->RD_Q10:I

    const v16, 0x7ffffff

    add-int v12, v12, v16

    iput v12, v9, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->RD_Q10:I

    .line 663
    aget-object v9, v10, v3

    iget v9, v9, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->RD_Q10:I

    if-ltz v9, :cond_9

    const/4 v9, 0x1

    goto :goto_9

    :cond_9
    const/4 v9, 0x0

    :goto_9
    invoke-static {v9}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 668
    :cond_b
    aget-object v3, v10, v11

    add-int v9, v1, v8

    const/4 v11, 0x0

    :goto_a
    if-ge v11, v8, :cond_c

    const/4 v12, 0x1

    sub-int/2addr v9, v12

    and-int/lit8 v9, v9, 0x1f

    add-int v12, v32, v11

    sub-int/2addr v12, v8

    move/from16 v34, v1

    .line 672
    iget-object v1, v3, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->Q_Q10:[I

    aget v1, v1, v9

    move-object/from16 v35, v4

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lorg/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, p4, v12

    .line 673
    iget-object v1, v15, Lorg/concentus/SilkNSQState;->xq:[S

    add-int v4, v31, v11

    sub-int/2addr v4, v8

    iget-object v12, v3, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->Xq_Q14:[I

    aget v12, v12, v9

    move-object/from16 v36, v6

    const/16 v16, 0x1

    aget v6, p11, v16

    .line 674
    invoke-static {v12, v6}, Lorg/concentus/Inlines;->silk_SMULWW(II)I

    move-result v6

    const/16 v12, 0xe

    .line 673
    invoke-static {v6, v12}, Lorg/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v6

    invoke-static {v6}, Lorg/concentus/Inlines;->silk_SAT16(I)I

    move-result v6

    int-to-short v6, v6

    aput-short v6, v1, v4

    .line 675
    iget-object v1, v15, Lorg/concentus/SilkNSQState;->sLTP_shp_Q14:[I

    iget v4, v15, Lorg/concentus/SilkNSQState;->sLTP_shp_buf_idx:I

    sub-int/2addr v4, v8

    add-int/2addr v4, v11

    iget-object v6, v3, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->Shape_Q14:[I

    aget v6, v6, v9

    aput v6, v1, v4

    add-int/lit8 v11, v11, 0x1

    move/from16 v1, v34

    move-object/from16 v4, v35

    move-object/from16 v6, v36

    goto :goto_a

    :cond_c
    move/from16 v34, v1

    move-object/from16 v35, v4

    move-object/from16 v36, v6

    const/4 v1, 0x0

    goto :goto_b

    :cond_d
    move/from16 v34, v1

    move-object/from16 v28, v3

    move-object/from16 v35, v4

    move-object/from16 v36, v6

    move/from16 v1, v16

    .line 682
    :goto_b
    iget v3, v14, Lorg/concentus/SilkChannelEncoder;->ltp_mem_length:I

    sub-int/2addr v3, v0

    iget v4, v14, Lorg/concentus/SilkChannelEncoder;->predictLPCOrder:I

    sub-int/2addr v3, v4

    const/4 v9, 0x2

    add-int/lit8 v17, v3, -0x2

    if-lez v17, :cond_e

    const/4 v3, 0x1

    goto :goto_c

    :cond_e
    const/4 v3, 0x0

    .line 683
    :goto_c
    invoke-static {v3}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    .line 685
    iget-object v3, v15, Lorg/concentus/SilkNSQState;->xq:[S

    iget v4, v14, Lorg/concentus/SilkChannelEncoder;->subfr_length:I

    mul-int/2addr v4, v2

    add-int v19, v17, v4

    aget-object v20, p5, v26

    iget v4, v14, Lorg/concentus/SilkChannelEncoder;->ltp_mem_length:I

    sub-int v22, v4, v17

    iget v4, v14, Lorg/concentus/SilkChannelEncoder;->predictLPCOrder:I

    const/16 v21, 0x0

    move-object/from16 v16, v5

    move-object/from16 v18, v3

    move/from16 v23, v4

    invoke-static/range {v16 .. v23}, Lorg/concentus/Filters;->silk_LPC_analysis_filter([SI[SI[SIII)V

    .line 688
    iget v3, v14, Lorg/concentus/SilkChannelEncoder;->ltp_mem_length:I

    iput v3, v15, Lorg/concentus/SilkNSQState;->sLTP_buf_idx:I

    const/4 v12, 0x1

    .line 689
    iput v12, v15, Lorg/concentus/SilkNSQState;->rewhite_flag:I

    move/from16 v37, v0

    move/from16 v23, v1

    goto :goto_d

    :cond_f
    move/from16 v34, v1

    move-object/from16 v28, v3

    move-object/from16 v35, v4

    move-object/from16 v36, v6

    move v9, v12

    const/4 v12, 0x1

    move/from16 v37, v0

    move/from16 v23, v16

    .line 693
    :goto_d
    iget v11, v14, Lorg/concentus/SilkChannelEncoder;->nStatesDelayedDecision:I

    iget-byte v6, v13, Lorg/concentus/SideInfoIndices;->signalType:B

    move-object/from16 v0, p0

    move/from16 v4, v34

    move-object/from16 v1, p1

    move/from16 v34, v2

    move-object v2, v10

    move-object/from16 v38, v28

    move-object/from16 v3, p3

    move v15, v4

    move/from16 v4, v33

    move-object/from16 v39, v5

    move-object/from16 v5, v35

    move/from16 v16, v6

    move-object/from16 v6, v39

    move/from16 v40, v7

    move-object/from16 v7, v36

    move/from16 v41, v8

    move/from16 v8, v34

    move/from16 v42, v9

    move v9, v11

    move-object/from16 v43, v10

    move/from16 v10, p14

    move-object/from16 v11, p11

    move/from16 v44, v12

    move-object/from16 v12, p12

    move/from16 v13, v16

    move/from16 v14, v41

    invoke-direct/range {v0 .. v14}, Lorg/concentus/SilkNSQState;->silk_nsq_del_dec_scale_states(Lorg/concentus/SilkChannelEncoder;[Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;[II[I[S[IIII[I[III)V

    .line 709
    new-instance v13, Lorg/concentus/BoxedValueInt;

    move-object/from16 v28, v13

    invoke-direct {v13, v15}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    move-object/from16 v15, p2

    .line 710
    iget-byte v2, v15, Lorg/concentus/SideInfoIndices;->signalType:B

    move-object/from16 v11, p0

    iget-object v6, v11, Lorg/concentus/SilkNSQState;->xq:[S

    aget-object v10, p5, v26

    mul-int/lit8 v12, v34, 0x5

    mul-int/lit8 v14, v34, 0x10

    aget v17, p9, v34

    aget v18, p10, v34

    aget v19, p11, v34

    move-object/from16 v9, p1

    iget v0, v9, Lorg/concentus/SilkChannelEncoder;->subfr_length:I

    move/from16 v22, v0

    add-int/lit8 v45, v23, 0x1

    iget v0, v9, Lorg/concentus/SilkChannelEncoder;->shapingLPCOrder:I

    move/from16 v24, v0

    iget v0, v9, Lorg/concentus/SilkChannelEncoder;->predictLPCOrder:I

    move/from16 v25, v0

    iget v0, v9, Lorg/concentus/SilkChannelEncoder;->warping_Q16:I

    move/from16 v26, v0

    iget v0, v9, Lorg/concentus/SilkChannelEncoder;->nStatesDelayedDecision:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move-object/from16 v3, v35

    move-object/from16 v4, p4

    move/from16 v5, v32

    move/from16 v7, v31

    move-object/from16 v8, v36

    move-object/from16 v9, v38

    move-object/from16 v11, p6

    move-object/from16 v46, v13

    move-object/from16 v13, p7

    move/from16 v15, v37

    move/from16 v16, v29

    move/from16 v20, p13

    move/from16 v21, v30

    move/from16 v29, v41

    invoke-direct/range {v0 .. v29}, Lorg/concentus/SilkNSQState;->silk_noise_shape_quantizer_del_dec([Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;I[I[BI[SI[I[I[S[SI[SIIIIIIIIIIIIIILorg/concentus/BoxedValueInt;I)V

    move-object/from16 v0, v46

    .line 740
    iget v1, v0, Lorg/concentus/BoxedValueInt;->Val:I

    move-object/from16 v0, p1

    .line 742
    iget v2, v0, Lorg/concentus/SilkChannelEncoder;->subfr_length:I

    add-int v33, v33, v2

    .line 743
    iget v2, v0, Lorg/concentus/SilkChannelEncoder;->subfr_length:I

    add-int v32, v32, v2

    .line 744
    iget v2, v0, Lorg/concentus/SilkChannelEncoder;->subfr_length:I

    add-int v31, v31, v2

    add-int/lit8 v2, v34, 0x1

    move-object/from16 v15, p0

    move-object/from16 v13, p2

    move-object v14, v0

    move-object/from16 v4, v35

    move-object/from16 v6, v36

    move/from16 v0, v37

    move-object/from16 v3, v38

    move-object/from16 v5, v39

    move/from16 v7, v40

    move/from16 v8, v41

    move/from16 v9, v42

    move-object/from16 v10, v43

    move/from16 v12, v44

    move/from16 v16, v45

    goto/16 :goto_5

    :cond_10
    move/from16 v41, v8

    move-object/from16 v43, v10

    move-object v0, v14

    const/4 v2, 0x0

    const/16 v44, 0x1

    .line 748
    aget-object v3, v43, v2

    iget v3, v3, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->RD_Q10:I

    move v11, v2

    move/from16 v12, v44

    .line 750
    :goto_e
    iget v4, v0, Lorg/concentus/SilkChannelEncoder;->nStatesDelayedDecision:I

    if-ge v12, v4, :cond_12

    .line 751
    aget-object v4, v43, v12

    iget v4, v4, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->RD_Q10:I

    if-ge v4, v3, :cond_11

    .line 752
    aget-object v3, v43, v12

    iget v3, v3, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->RD_Q10:I

    move v11, v12

    :cond_11
    add-int/lit8 v12, v12, 0x1

    goto :goto_e

    .line 758
    :cond_12
    aget-object v3, v43, v11

    .line 759
    iget v4, v3, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->SeedInit:I

    int-to-byte v4, v4

    move-object/from16 v5, p2

    iput-byte v4, v5, Lorg/concentus/SideInfoIndices;->Seed:B

    move/from16 v4, v41

    add-int/2addr v1, v4

    .line 761
    iget v5, v0, Lorg/concentus/SilkChannelEncoder;->nb_subfr:I

    add-int/lit8 v5, v5, -0x1

    aget v5, p11, v5

    const/4 v6, 0x6

    invoke-static {v5, v6}, Lorg/concentus/Inlines;->silk_RSHIFT32(II)I

    move-result v5

    move v11, v2

    :goto_f
    if-ge v11, v4, :cond_13

    add-int/lit8 v1, v1, -0x1

    and-int/lit8 v1, v1, 0x1f

    add-int v6, v32, v11

    sub-int/2addr v6, v4

    .line 764
    iget-object v7, v3, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->Q_Q10:[I

    aget v7, v7, v1

    const/16 v8, 0xa

    invoke-static {v7, v8}, Lorg/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, p4, v6

    move-object/from16 v6, p0

    .line 765
    iget-object v7, v6, Lorg/concentus/SilkNSQState;->xq:[S

    add-int v9, v31, v11

    sub-int/2addr v9, v4

    iget-object v10, v3, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->Xq_Q14:[I

    aget v10, v10, v1

    .line 766
    invoke-static {v10, v5}, Lorg/concentus/Inlines;->silk_SMULWW(II)I

    move-result v10

    const/16 v12, 0x8

    .line 765
    invoke-static {v10, v12}, Lorg/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v10

    invoke-static {v10}, Lorg/concentus/Inlines;->silk_SAT16(I)I

    move-result v10

    int-to-short v10, v10

    aput-short v10, v7, v9

    .line 767
    iget-object v7, v6, Lorg/concentus/SilkNSQState;->sLTP_shp_Q14:[I

    iget v9, v6, Lorg/concentus/SilkNSQState;->sLTP_shp_buf_idx:I

    sub-int/2addr v9, v4

    add-int/2addr v9, v11

    iget-object v10, v3, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->Shape_Q14:[I

    aget v10, v10, v1

    aput v10, v7, v9

    add-int/lit8 v11, v11, 0x1

    goto :goto_f

    :cond_13
    move-object/from16 v6, p0

    .line 769
    iget-object v1, v3, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->sLPC_Q14:[I

    iget v4, v0, Lorg/concentus/SilkChannelEncoder;->subfr_length:I

    iget-object v5, v6, Lorg/concentus/SilkNSQState;->sLPC_Q14:[I

    sget v7, Lorg/concentus/SilkConstants;->NSQ_LPC_BUF_LENGTH:I

    invoke-static {v1, v4, v5, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 770
    iget-object v1, v3, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->sAR2_Q14:[I

    iget-object v4, v6, Lorg/concentus/SilkNSQState;->sAR2_Q14:[I

    iget v5, v0, Lorg/concentus/SilkChannelEncoder;->shapingLPCOrder:I

    invoke-static {v1, v2, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 773
    iget v1, v3, Lorg/concentus/SilkNSQState$NSQ_del_dec_struct;->LF_AR_Q14:I

    iput v1, v6, Lorg/concentus/SilkNSQState;->sLF_AR_shp_Q14:I

    .line 774
    iget v1, v0, Lorg/concentus/SilkChannelEncoder;->nb_subfr:I

    add-int/lit8 v1, v1, -0x1

    aget v1, p12, v1

    iput v1, v6, Lorg/concentus/SilkNSQState;->lagPrev:I

    .line 777
    iget-object v1, v6, Lorg/concentus/SilkNSQState;->xq:[S

    iget v3, v0, Lorg/concentus/SilkChannelEncoder;->frame_length:I

    iget v4, v0, Lorg/concentus/SilkChannelEncoder;->ltp_mem_length:I

    invoke-static {v1, v3, v2, v4}, Lorg/concentus/Arrays;->MemMove([SIII)V

    .line 778
    iget-object v1, v6, Lorg/concentus/SilkNSQState;->sLTP_shp_Q14:[I

    iget v3, v0, Lorg/concentus/SilkChannelEncoder;->frame_length:I

    iget v0, v0, Lorg/concentus/SilkChannelEncoder;->ltp_mem_length:I

    invoke-static {v1, v3, v2, v0}, Lorg/concentus/Arrays;->MemMove([IIII)V

    return-void
.end method
