.class public Lorg/concentus/CodecHelpers;
.super Ljava/lang/Object;
.source "CodecHelpers.java"


# static fields
.field private static final MAX_DYNAMIC_FRAMESIZE:I = 0x18


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetVersionString()Ljava/lang/String;
    .locals 1

    .line 629
    const-string v0, "concentus 1.0a-java-fixed"

    return-object v0
.end method

.method static compute_frame_size([SIILorg/concentus/OpusFramesize;IIII[FZ)I
    .locals 11

    move v9, p2

    move-object v0, p3

    move/from16 v10, p5

    if-eqz p9, :cond_0

    .line 408
    sget-object v1, Lorg/concentus/OpusFramesize;->OPUS_FRAMESIZE_VARIABLE:Lorg/concentus/OpusFramesize;

    if-ne v0, v1, :cond_0

    div-int/lit16 v1, v10, 0xc8

    if-lt v9, v1, :cond_0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v7, p8

    move/from16 v8, p7

    .line 410
    invoke-static/range {v0 .. v8}, Lorg/concentus/CodecHelpers;->optimize_framesize([SIIIIII[FI)I

    move-result v0

    .line 412
    :goto_0
    div-int/lit16 v1, v10, 0x190

    shl-int/2addr v1, v0

    if-le v1, v9, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 417
    :cond_0
    invoke-static {p2, p3, v10}, Lorg/concentus/CodecHelpers;->frame_size_select(ILorg/concentus/OpusFramesize;I)I

    move-result v1

    :cond_1
    if-gez v1, :cond_2

    const/4 v0, -0x1

    return v0

    :cond_2
    return v1
.end method

.method static compute_stereo_width([SIIILorg/concentus/StereoWidthState;)I
    .locals 16

    move-object/from16 v0, p4

    .line 437
    div-int v1, p3, p2

    const/16 v2, 0x32

    .line 438
    invoke-static {v2, v1}, Lorg/concentus/Inlines;->IMAX(II)I

    move-result v2

    const v3, 0xc7fe7

    div-int/2addr v3, v2

    const/16 v2, 0x7fff

    rsub-int v3, v3, 0x7fff

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    move v7, v6

    move v8, v7

    :goto_0
    add-int/lit8 v9, p2, -0x3

    if-ge v5, v9, :cond_0

    mul-int/lit8 v9, v5, 0x2

    add-int v9, p1, v9

    .line 446
    aget-short v10, p0, v9

    add-int/lit8 v11, v9, 0x1

    .line 447
    aget-short v11, p0, v11

    .line 448
    invoke-static {v10, v10}, Lorg/concentus/Inlines;->MULT16_16(II)I

    move-result v12

    const/4 v13, 0x2

    invoke-static {v12, v13}, Lorg/concentus/Inlines;->SHR32(II)I

    move-result v12

    .line 449
    invoke-static {v10, v11}, Lorg/concentus/Inlines;->MULT16_16(II)I

    move-result v10

    invoke-static {v10, v13}, Lorg/concentus/Inlines;->SHR32(II)I

    move-result v10

    .line 450
    invoke-static {v11, v11}, Lorg/concentus/Inlines;->MULT16_16(II)I

    move-result v11

    invoke-static {v11, v13}, Lorg/concentus/Inlines;->SHR32(II)I

    move-result v11

    add-int/lit8 v14, v9, 0x2

    .line 451
    aget-short v14, p0, v14

    add-int/lit8 v15, v9, 0x3

    .line 452
    aget-short v15, p0, v15

    .line 453
    invoke-static {v14, v14}, Lorg/concentus/Inlines;->MULT16_16(II)I

    move-result v2

    invoke-static {v2, v13}, Lorg/concentus/Inlines;->SHR32(II)I

    move-result v2

    add-int/2addr v12, v2

    .line 454
    invoke-static {v14, v15}, Lorg/concentus/Inlines;->MULT16_16(II)I

    move-result v2

    invoke-static {v2, v13}, Lorg/concentus/Inlines;->SHR32(II)I

    move-result v2

    add-int/2addr v10, v2

    .line 455
    invoke-static {v15, v15}, Lorg/concentus/Inlines;->MULT16_16(II)I

    move-result v2

    invoke-static {v2, v13}, Lorg/concentus/Inlines;->SHR32(II)I

    move-result v2

    add-int/2addr v11, v2

    add-int/lit8 v2, v9, 0x4

    .line 456
    aget-short v2, p0, v2

    add-int/lit8 v14, v9, 0x5

    .line 457
    aget-short v14, p0, v14

    .line 458
    invoke-static {v2, v2}, Lorg/concentus/Inlines;->MULT16_16(II)I

    move-result v15

    invoke-static {v15, v13}, Lorg/concentus/Inlines;->SHR32(II)I

    move-result v15

    add-int/2addr v12, v15

    .line 459
    invoke-static {v2, v14}, Lorg/concentus/Inlines;->MULT16_16(II)I

    move-result v2

    invoke-static {v2, v13}, Lorg/concentus/Inlines;->SHR32(II)I

    move-result v2

    add-int/2addr v10, v2

    .line 460
    invoke-static {v14, v14}, Lorg/concentus/Inlines;->MULT16_16(II)I

    move-result v2

    invoke-static {v2, v13}, Lorg/concentus/Inlines;->SHR32(II)I

    move-result v2

    add-int/2addr v11, v2

    add-int/lit8 v2, v9, 0x6

    .line 461
    aget-short v2, p0, v2

    add-int/lit8 v9, v9, 0x7

    .line 462
    aget-short v9, p0, v9

    .line 463
    invoke-static {v2, v2}, Lorg/concentus/Inlines;->MULT16_16(II)I

    move-result v14

    invoke-static {v14, v13}, Lorg/concentus/Inlines;->SHR32(II)I

    move-result v14

    add-int/2addr v12, v14

    .line 464
    invoke-static {v2, v9}, Lorg/concentus/Inlines;->MULT16_16(II)I

    move-result v2

    invoke-static {v2, v13}, Lorg/concentus/Inlines;->SHR32(II)I

    move-result v2

    add-int/2addr v10, v2

    .line 465
    invoke-static {v9, v9}, Lorg/concentus/Inlines;->MULT16_16(II)I

    move-result v2

    invoke-static {v2, v13}, Lorg/concentus/Inlines;->SHR32(II)I

    move-result v2

    add-int/2addr v11, v2

    const/16 v2, 0xa

    .line 467
    invoke-static {v12, v2}, Lorg/concentus/Inlines;->SHR32(II)I

    move-result v9

    add-int/2addr v6, v9

    .line 468
    invoke-static {v10, v2}, Lorg/concentus/Inlines;->SHR32(II)I

    move-result v9

    add-int/2addr v7, v9

    .line 469
    invoke-static {v11, v2}, Lorg/concentus/Inlines;->SHR32(II)I

    move-result v2

    add-int/2addr v8, v2

    add-int/lit8 v5, v5, 0x4

    const/16 v2, 0x7fff

    goto/16 :goto_0

    .line 472
    :cond_0
    iget v2, v0, Lorg/concentus/StereoWidthState;->XX:I

    iget v5, v0, Lorg/concentus/StereoWidthState;->XX:I

    sub-int/2addr v6, v5

    invoke-static {v3, v6}, Lorg/concentus/Inlines;->MULT16_32_Q15(II)I

    move-result v5

    add-int/2addr v2, v5

    iput v2, v0, Lorg/concentus/StereoWidthState;->XX:I

    .line 473
    iget v2, v0, Lorg/concentus/StereoWidthState;->XY:I

    iget v5, v0, Lorg/concentus/StereoWidthState;->XY:I

    sub-int/2addr v7, v5

    invoke-static {v3, v7}, Lorg/concentus/Inlines;->MULT16_32_Q15(II)I

    move-result v5

    add-int/2addr v2, v5

    iput v2, v0, Lorg/concentus/StereoWidthState;->XY:I

    .line 474
    iget v2, v0, Lorg/concentus/StereoWidthState;->YY:I

    iget v5, v0, Lorg/concentus/StereoWidthState;->YY:I

    sub-int/2addr v8, v5

    invoke-static {v3, v8}, Lorg/concentus/Inlines;->MULT16_32_Q15(II)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Lorg/concentus/StereoWidthState;->YY:I

    .line 475
    iget v2, v0, Lorg/concentus/StereoWidthState;->XX:I

    invoke-static {v4, v2}, Lorg/concentus/Inlines;->MAX32(II)I

    move-result v2

    iput v2, v0, Lorg/concentus/StereoWidthState;->XX:I

    .line 476
    iget v2, v0, Lorg/concentus/StereoWidthState;->XY:I

    invoke-static {v4, v2}, Lorg/concentus/Inlines;->MAX32(II)I

    move-result v2

    iput v2, v0, Lorg/concentus/StereoWidthState;->XY:I

    .line 477
    iget v2, v0, Lorg/concentus/StereoWidthState;->YY:I

    invoke-static {v4, v2}, Lorg/concentus/Inlines;->MAX32(II)I

    move-result v2

    iput v2, v0, Lorg/concentus/StereoWidthState;->YY:I

    .line 478
    iget v2, v0, Lorg/concentus/StereoWidthState;->XX:I

    iget v3, v0, Lorg/concentus/StereoWidthState;->YY:I

    invoke-static {v2, v3}, Lorg/concentus/Inlines;->MAX32(II)I

    move-result v2

    const/16 v3, 0xd2

    if-le v2, v3, :cond_1

    .line 479
    iget v2, v0, Lorg/concentus/StereoWidthState;->XX:I

    invoke-static {v2}, Lorg/concentus/Inlines;->celt_sqrt(I)I

    move-result v2

    .line 480
    iget v3, v0, Lorg/concentus/StereoWidthState;->YY:I

    invoke-static {v3}, Lorg/concentus/Inlines;->celt_sqrt(I)I

    move-result v3

    .line 481
    invoke-static {v2}, Lorg/concentus/Inlines;->celt_sqrt(I)I

    move-result v4

    .line 482
    invoke-static {v3}, Lorg/concentus/Inlines;->celt_sqrt(I)I

    move-result v5

    .line 484
    iget v6, v0, Lorg/concentus/StereoWidthState;->XY:I

    mul-int v7, v2, v3

    invoke-static {v6, v7}, Lorg/concentus/Inlines;->MIN32(II)I

    move-result v6

    iput v6, v0, Lorg/concentus/StereoWidthState;->XY:I

    .line 485
    iget v6, v0, Lorg/concentus/StereoWidthState;->XY:I

    invoke-static {v2, v3}, Lorg/concentus/Inlines;->MULT16_16(II)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v6, v2}, Lorg/concentus/Inlines;->frac_div32(II)I

    move-result v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Lorg/concentus/Inlines;->SHR32(II)I

    move-result v2

    sub-int v3, v4, v5

    .line 487
    invoke-static {v3}, Lorg/concentus/Inlines;->ABS16(I)I

    move-result v3

    const/16 v6, 0x7fff

    mul-int/2addr v3, v6

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v4, v5

    div-int/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    .line 488
    invoke-static {v2, v2}, Lorg/concentus/Inlines;->MULT16_16(II)I

    move-result v2

    sub-int/2addr v4, v2

    invoke-static {v4}, Lorg/concentus/Inlines;->celt_sqrt(I)I

    move-result v2

    invoke-static {v2, v3}, Lorg/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v2

    .line 490
    iget v3, v0, Lorg/concentus/StereoWidthState;->smoothed_width:I

    iget v4, v0, Lorg/concentus/StereoWidthState;->smoothed_width:I

    sub-int/2addr v2, v4

    div-int/2addr v2, v1

    add-int/2addr v3, v2

    iput v3, v0, Lorg/concentus/StereoWidthState;->smoothed_width:I

    .line 492
    iget v2, v0, Lorg/concentus/StereoWidthState;->max_follower:I

    const/16 v3, 0x28f

    div-int/2addr v3, v1

    sub-int/2addr v2, v3

    iget v1, v0, Lorg/concentus/StereoWidthState;->smoothed_width:I

    invoke-static {v2, v1}, Lorg/concentus/Inlines;->MAX16(II)I

    move-result v1

    iput v1, v0, Lorg/concentus/StereoWidthState;->max_follower:I

    .line 499
    :cond_1
    iget v0, v0, Lorg/concentus/StereoWidthState;->max_follower:I

    mul-int/lit8 v0, v0, 0x14

    const/16 v1, 0x7fff

    invoke-static {v1, v0}, Lorg/concentus/Inlines;->MIN32(II)I

    move-result v0

    invoke-static {v0}, Lorg/concentus/Inlines;->EXTRACT16(I)S

    move-result v0

    return v0
.end method

.method static dc_reject([SII[SI[IIII)V
    .locals 12

    move/from16 v0, p7

    mul-int/lit8 v1, p2, 0x3

    .line 100
    div-int v1, p8, v1

    invoke-static {v1}, Lorg/concentus/Inlines;->celt_ilog2(I)I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    move/from16 v4, p6

    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_0

    mul-int v6, v0, v5

    add-int/2addr v6, v3

    add-int v7, v6, p1

    .line 104
    aget-short v7, p0, v7

    invoke-static {v7}, Lorg/concentus/Inlines;->EXTEND32(S)I

    move-result v7

    const/16 v8, 0xf

    invoke-static {v7, v8}, Lorg/concentus/Inlines;->SHL32(II)I

    move-result v7

    mul-int/lit8 v9, v3, 0x2

    .line 106
    aget v10, p5, v9

    sub-int v11, v7, v10

    sub-int/2addr v7, v10

    .line 107
    invoke-static {v7, v1}, Lorg/concentus/Inlines;->PSHR32(II)I

    move-result v7

    add-int/2addr v10, v7

    aput v10, p5, v9

    add-int/lit8 v9, v9, 0x1

    .line 109
    aget v7, p5, v9

    sub-int v10, v11, v7

    sub-int/2addr v11, v7

    .line 110
    invoke-static {v11, v1}, Lorg/concentus/Inlines;->PSHR32(II)I

    move-result v11

    add-int/2addr v7, v11

    aput v7, p5, v9

    add-int v6, v6, p4

    .line 111
    invoke-static {v10, v8}, Lorg/concentus/Inlines;->PSHR32(II)I

    move-result v7

    const/16 v8, 0x7fff

    invoke-static {v7, v8}, Lorg/concentus/Inlines;->SATURATE(II)I

    move-result v7

    invoke-static {v7}, Lorg/concentus/Inlines;->EXTRACT16(I)S

    move-result v7

    aput-short v7, p3, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static frame_size_select(ILorg/concentus/OpusFramesize;I)I
    .locals 4

    .line 380
    div-int/lit16 v0, p2, 0x190

    const/4 v1, -0x1

    if-ge p0, v0, :cond_0

    return v1

    .line 383
    :cond_0
    sget-object v2, Lorg/concentus/OpusFramesize;->OPUS_FRAMESIZE_ARG:Lorg/concentus/OpusFramesize;

    if-ne p1, v2, :cond_1

    move p1, p0

    goto :goto_0

    .line 385
    :cond_1
    sget-object v2, Lorg/concentus/OpusFramesize;->OPUS_FRAMESIZE_VARIABLE:Lorg/concentus/OpusFramesize;

    if-ne p1, v2, :cond_2

    .line 386
    div-int/lit8 p1, p2, 0x32

    goto :goto_0

    .line 387
    :cond_2
    invoke-static {p1}, Lorg/concentus/OpusFramesizeHelpers;->GetOrdinal(Lorg/concentus/OpusFramesize;)I

    move-result v2

    sget-object v3, Lorg/concentus/OpusFramesize;->OPUS_FRAMESIZE_2_5_MS:Lorg/concentus/OpusFramesize;

    invoke-static {v3}, Lorg/concentus/OpusFramesizeHelpers;->GetOrdinal(Lorg/concentus/OpusFramesize;)I

    move-result v3

    if-lt v2, v3, :cond_5

    .line 388
    invoke-static {p1}, Lorg/concentus/OpusFramesizeHelpers;->GetOrdinal(Lorg/concentus/OpusFramesize;)I

    move-result v2

    sget-object v3, Lorg/concentus/OpusFramesize;->OPUS_FRAMESIZE_60_MS:Lorg/concentus/OpusFramesize;

    invoke-static {v3}, Lorg/concentus/OpusFramesizeHelpers;->GetOrdinal(Lorg/concentus/OpusFramesize;)I

    move-result v3

    if-gt v2, v3, :cond_5

    mul-int/lit8 v2, p2, 0x3

    .line 389
    div-int/lit8 v2, v2, 0x32

    invoke-static {p1}, Lorg/concentus/OpusFramesizeHelpers;->GetOrdinal(Lorg/concentus/OpusFramesize;)I

    move-result p1

    sget-object v3, Lorg/concentus/OpusFramesize;->OPUS_FRAMESIZE_2_5_MS:Lorg/concentus/OpusFramesize;

    invoke-static {v3}, Lorg/concentus/OpusFramesizeHelpers;->GetOrdinal(Lorg/concentus/OpusFramesize;)I

    move-result v3

    sub-int/2addr p1, v3

    shl-int p1, v0, p1

    invoke-static {v2, p1}, Lorg/concentus/Inlines;->IMIN(II)I

    move-result p1

    :goto_0
    if-le p1, p0, :cond_3

    return v1

    :cond_3
    mul-int/lit16 p0, p1, 0x190

    if-eq p0, p2, :cond_4

    mul-int/lit16 p0, p1, 0xc8

    if-eq p0, p2, :cond_4

    mul-int/lit8 p0, p1, 0x64

    if-eq p0, p2, :cond_4

    mul-int/lit8 p0, p1, 0x32

    if-eq p0, p2, :cond_4

    mul-int/lit8 v0, p1, 0x19

    if-eq v0, p2, :cond_4

    mul-int/lit8 p2, p2, 0x3

    if-eq p0, p2, :cond_4

    return v1

    :cond_4
    return p1

    :cond_5
    return v1
.end method

.method static gain_fade([SIIIIII[II)V
    .locals 7

    const v0, 0xbb80

    .line 158
    div-int/2addr v0, p8

    .line 159
    div-int/2addr p4, v0

    const/16 p8, 0xf

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p6, v2, :cond_0

    move v2, v1

    :goto_0
    if-ge v2, p4, :cond_1

    mul-int v3, v2, v0

    .line 163
    aget v3, p7, v3

    invoke-static {v3, v3}, Lorg/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v3

    .line 164
    invoke-static {v3, p3}, Lorg/concentus/Inlines;->MULT16_16(II)I

    move-result v4

    rsub-int v3, v3, 0x7fff

    invoke-static {v4, v3, p2}, Lorg/concentus/Inlines;->MAC16_16(III)I

    move-result v3

    invoke-static {v3, p8}, Lorg/concentus/Inlines;->SHR32(II)I

    move-result v3

    add-int v4, p1, v2

    .line 166
    aget-short v5, p0, v4

    invoke-static {v3, v5}, Lorg/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v3

    int-to-short v3, v3

    aput-short v3, p0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_1
    if-ge v3, p4, :cond_1

    mul-int v4, v3, v0

    .line 171
    aget v4, p7, v4

    invoke-static {v4, v4}, Lorg/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v4

    .line 172
    invoke-static {v4, p3}, Lorg/concentus/Inlines;->MULT16_16(II)I

    move-result v5

    rsub-int v4, v4, 0x7fff

    invoke-static {v5, v4, p2}, Lorg/concentus/Inlines;->MAC16_16(III)I

    move-result v4

    invoke-static {v4, p8}, Lorg/concentus/Inlines;->SHR32(II)I

    move-result v4

    mul-int/lit8 v5, v3, 0x2

    add-int/2addr v5, p1

    .line 174
    aget-short v6, p0, v5

    invoke-static {v4, v6}, Lorg/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v6

    int-to-short v6, v6

    aput-short v6, p0, v5

    add-int/2addr v5, v2

    .line 175
    aget-short v6, p0, v5

    invoke-static {v4, v6}, Lorg/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v4

    int-to-short v4, v4

    aput-short v4, p0, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    move p2, p4

    :goto_2
    if-ge p2, p5, :cond_2

    mul-int p7, p2, p6

    add-int/2addr p7, p1

    add-int/2addr p7, v1

    .line 181
    aget-short p8, p0, p7

    invoke-static {p3, p8}, Lorg/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result p8

    int-to-short p8, p8

    aput-short p8, p0, p7

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    if-lt v1, p6, :cond_1

    return-void
.end method

.method static gen_toc(Lorg/concentus/OpusMode;ILorg/concentus/OpusBandwidth;I)B
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x190

    if-ge p1, v2, :cond_0

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    :cond_0
    sget-object p1, Lorg/concentus/OpusMode;->MODE_SILK_ONLY:Lorg/concentus/OpusMode;

    const/4 v2, 0x2

    if-ne p0, p1, :cond_1

    .line 48
    invoke-static {p2}, Lorg/concentus/OpusBandwidthHelpers;->GetOrdinal(Lorg/concentus/OpusBandwidth;)I

    move-result p0

    sget-object p1, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_NARROWBAND:Lorg/concentus/OpusBandwidth;

    invoke-static {p1}, Lorg/concentus/OpusBandwidthHelpers;->GetOrdinal(Lorg/concentus/OpusBandwidth;)I

    move-result p1

    sub-int/2addr p0, p1

    shl-int/lit8 p0, p0, 0x5

    :goto_1
    int-to-short p0, p0

    sub-int/2addr v1, v2

    :goto_2
    shl-int/lit8 p1, v1, 0x3

    int-to-short p1, p1

    or-int/2addr p0, p1

    int-to-short p0, p0

    goto :goto_3

    .line 50
    :cond_1
    sget-object p1, Lorg/concentus/OpusMode;->MODE_CELT_ONLY:Lorg/concentus/OpusMode;

    if-ne p0, p1, :cond_3

    .line 51
    invoke-static {p2}, Lorg/concentus/OpusBandwidthHelpers;->GetOrdinal(Lorg/concentus/OpusBandwidth;)I

    move-result p0

    sget-object p1, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_MEDIUMBAND:Lorg/concentus/OpusBandwidth;

    invoke-static {p1}, Lorg/concentus/OpusBandwidthHelpers;->GetOrdinal(Lorg/concentus/OpusBandwidth;)I

    move-result p1

    sub-int/2addr p0, p1

    if-gez p0, :cond_2

    move p0, v0

    :cond_2
    shl-int/lit8 p0, p0, 0x5

    int-to-short p0, p0

    or-int/lit16 p0, p0, 0x80

    int-to-short p0, p0

    goto :goto_2

    .line 60
    :cond_3
    invoke-static {p2}, Lorg/concentus/OpusBandwidthHelpers;->GetOrdinal(Lorg/concentus/OpusBandwidth;)I

    move-result p0

    sget-object p1, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_SUPERWIDEBAND:Lorg/concentus/OpusBandwidth;

    invoke-static {p1}, Lorg/concentus/OpusBandwidthHelpers;->GetOrdinal(Lorg/concentus/OpusBandwidth;)I

    move-result p1

    sub-int/2addr p0, p1

    shl-int/lit8 p0, p0, 0x4

    int-to-short p0, p0

    or-int/lit8 p0, p0, 0x60

    goto :goto_1

    :goto_3
    if-ne p3, v2, :cond_4

    const/4 v0, 0x1

    :cond_4
    shl-int/lit8 p1, v0, 0x2

    int-to-short p1, p1

    or-int/2addr p0, p1

    int-to-short p0, p0

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    return p0
.end method

.method static hp_cutoff([SII[SI[IIII)V
    .locals 14

    move/from16 v0, p2

    const v1, 0xd42d2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v0, v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 72
    :goto_0
    invoke-static {v1}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    const/16 v1, 0x9a7

    .line 73
    invoke-static {v1, v0}, Lorg/concentus/Inlines;->silk_SMULBB(II)I

    move-result v0

    move/from16 v1, p8

    div-int/lit16 v1, v1, 0x3e8

    invoke-static {v0, v1}, Lorg/concentus/Inlines;->silk_DIV32_16(II)I

    move-result v0

    if-lez v0, :cond_1

    const v1, 0x8000

    if-ge v0, v1, :cond_1

    move v2, v3

    .line 74
    :cond_1
    invoke-static {v2}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    const/16 v1, 0x1d7

    .line 76
    invoke-static {v1, v0}, Lorg/concentus/Inlines;->silk_MUL(II)I

    move-result v1

    const/high16 v2, 0x10000000

    sub-int/2addr v2, v1

    neg-int v1, v2

    .line 81
    invoke-static {v1, v3}, Lorg/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v1

    .line 82
    filled-new-array {v2, v1, v2}, [I

    move-result-object v1

    const/4 v4, 0x6

    .line 85
    invoke-static {v2, v4}, Lorg/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v2

    .line 86
    invoke-static {v0, v0}, Lorg/concentus/Inlines;->silk_SMULWW(II)I

    move-result v0

    const/high16 v4, 0x800000

    sub-int/2addr v0, v4

    invoke-static {v2, v0}, Lorg/concentus/Inlines;->silk_SMULWW(II)I

    move-result v0

    .line 87
    invoke-static {v2, v2}, Lorg/concentus/Inlines;->silk_SMULWW(II)I

    move-result v2

    filled-new-array {v0, v2}, [I

    move-result-object v0

    const/4 v9, 0x0

    move-object v4, p0

    move v5, p1

    move-object v6, v1

    move-object v7, v0

    move-object/from16 v8, p5

    move-object/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p6

    move/from16 v13, p7

    .line 89
    invoke-static/range {v4 .. v13}, Lorg/concentus/Filters;->silk_biquad_alt([SI[I[I[II[SIII)V

    const/4 v2, 0x2

    if-ne v13, v2, :cond_2

    add-int/lit8 v5, p1, 0x1

    const/4 v9, 0x2

    add-int/lit8 v11, p4, 0x1

    move-object v4, p0

    move-object v6, v1

    move-object v7, v0

    move-object/from16 v8, p5

    move-object/from16 v10, p3

    move/from16 v12, p6

    move/from16 v13, p7

    .line 91
    invoke-static/range {v4 .. v13}, Lorg/concentus/Filters;->silk_biquad_alt([SI[I[I[II[SIII)V

    :cond_2
    return-void
.end method

.method static optimize_framesize([SIIIIII[FI)I
    .locals 23

    const/16 v0, 0x1c

    .line 313
    new-array v0, v0, [F

    const/16 v1, 0x1b

    .line 314
    new-array v1, v1, [F

    move/from16 v2, p4

    .line 322
    div-int/lit16 v11, v2, 0x190

    .line 323
    new-array v12, v11, [I

    const/4 v13, 0x0

    .line 324
    aget v2, p7, v13

    aput v2, v0, v13

    .line 325
    aget v2, p7, v13

    const/high16 v14, 0x3f800000    # 1.0f

    add-float/2addr v2, v14

    div-float v2, v14, v2

    aput v2, v1, v13

    const/4 v15, 0x2

    const/16 v16, 0x1

    if-eqz p8, :cond_1

    mul-int/lit8 v2, v11, 0x2

    sub-int v2, v2, p8

    if-ltz v2, :cond_0

    if-gt v2, v11, :cond_0

    move/from16 v3, v16

    goto :goto_0

    :cond_0
    move v3, v13

    .line 330
    :goto_0
    invoke-static {v3}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    sub-int v3, p2, v2

    .line 332
    aget v4, p7, v16

    aput v4, v0, v16

    .line 333
    aget v4, p7, v16

    add-float/2addr v4, v14

    div-float v4, v14, v4

    aput v4, v1, v16

    .line 334
    aget v4, p7, v15

    aput v4, v0, v15

    .line 335
    aget v4, p7, v15

    add-float/2addr v4, v14

    div-float v4, v14, v4

    aput v4, v1, v15

    const/4 v4, 0x3

    move/from16 v17, v2

    move/from16 v18, v4

    goto :goto_1

    :cond_1
    move/from16 v3, p2

    move/from16 v17, v13

    move/from16 v18, v16

    .line 341
    :goto_1
    div-int/2addr v3, v11

    const/16 v10, 0x18

    invoke-static {v3, v10}, Lorg/concentus/Inlines;->IMIN(II)I

    move-result v9

    move v8, v13

    move/from16 v19, v8

    :goto_2
    if-ge v8, v9, :cond_4

    mul-int v2, v8, v11

    add-int v7, v2, v17

    const/16 v20, 0x0

    const/16 v21, -0x2

    const/4 v5, 0x0

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object v4, v12

    move v6, v11

    move/from16 v22, v8

    move/from16 v8, v20

    move/from16 v20, v9

    move/from16 v9, v21

    move v15, v10

    move/from16 v10, p3

    .line 350
    invoke-static/range {v2 .. v10}, Lorg/concentus/Downmix;->downmix_int([SI[IIIIIII)V

    if-nez v22, :cond_2

    .line 352
    aget v19, v12, v13

    :cond_2
    move v2, v13

    move v3, v14

    :goto_3
    if-ge v2, v11, :cond_3

    .line 355
    aget v4, v12, v2

    sub-int v5, v4, v19

    int-to-float v5, v5

    mul-float/2addr v5, v5

    add-float/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    move/from16 v19, v4

    goto :goto_3

    :cond_3
    add-int v8, v22, v18

    .line 359
    aput v3, v0, v8

    div-float v2, v14, v3

    .line 360
    aput v2, v1, v8

    add-int/lit8 v8, v22, 0x1

    move v10, v15

    move/from16 v9, v20

    const/4 v15, 0x2

    goto :goto_2

    :cond_4
    move/from16 v22, v8

    move/from16 v20, v9

    move v15, v10

    add-int v8, v22, v18

    add-int/lit8 v2, v8, -0x1

    .line 365
    aget v2, v0, v2

    aput v2, v0, v8

    if-eqz p8, :cond_5

    add-int/lit8 v9, v20, 0x2

    .line 367
    invoke-static {v15, v9}, Lorg/concentus/Inlines;->IMIN(II)I

    move-result v9

    goto :goto_4

    :cond_5
    move/from16 v9, v20

    :goto_4
    const/high16 v2, 0x3f000000    # 0.5f

    move/from16 v3, p6

    int-to-float v3, v3

    mul-float/2addr v3, v2

    add-float/2addr v3, v14

    mul-int/lit8 v2, p3, 0x3c

    add-int/lit8 v2, v2, 0x28

    int-to-float v2, v2

    mul-float/2addr v3, v2

    float-to-int v2, v3

    move/from16 v3, p5

    .line 369
    div-int/lit16 v3, v3, 0x190

    invoke-static {v0, v1, v9, v2, v3}, Lorg/concentus/CodecHelpers;->transient_viterbi([F[FIII)I

    move-result v1

    shl-int v2, v16, v1

    .line 370
    aget v3, v0, v2

    aput v3, p7, v13

    if-eqz p8, :cond_6

    add-int/lit8 v3, v2, 0x1

    .line 372
    aget v3, v0, v3

    aput v3, p7, v16

    const/4 v3, 0x2

    add-int/2addr v2, v3

    .line 373
    aget v0, v0, v2

    aput v0, p7, v3

    :cond_6
    return v1
.end method

.method public static opus_strerror(I)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x8

    .line 611
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "success"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "invalid argument"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "buffer too small"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "error"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "corrupted stream"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "request not implemented"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "invalid state"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "memory allocation failed"

    aput-object v2, v0, v1

    if-gtz p0, :cond_1

    const/4 v1, -0x7

    if-ge p0, v1, :cond_0

    goto :goto_0

    :cond_0
    neg-int p0, p0

    .line 624
    aget-object p0, v0, p0

    return-object p0

    .line 622
    :cond_1
    :goto_0
    const-string p0, "unknown error"

    return-object p0
.end method

.method static smooth_fade([SI[SI[SIII[II)V
    .locals 10

    move/from16 v0, p7

    const v1, 0xbb80

    .line 506
    div-int v1, v1, p9

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    move/from16 v4, p6

    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_0

    mul-int v6, v5, v1

    .line 509
    aget v6, p8, v6

    invoke-static {v6, v6}, Lorg/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v6

    mul-int v7, v5, v0

    add-int v8, p5, v7

    add-int/2addr v8, v3

    add-int v9, p3, v7

    add-int/2addr v9, v3

    .line 510
    aget-short v9, p2, v9

    invoke-static {v6, v9}, Lorg/concentus/Inlines;->MULT16_16(II)I

    move-result v9

    rsub-int v6, v6, 0x7fff

    add-int/2addr v7, p1

    add-int/2addr v7, v3

    aget-short v7, p0, v7

    invoke-static {v9, v6, v7}, Lorg/concentus/Inlines;->MAC16_16(III)I

    move-result v6

    const/16 v7, 0xf

    invoke-static {v6, v7}, Lorg/concentus/Inlines;->SHR32(II)I

    move-result v6

    int-to-short v6, v6

    aput-short v6, p4, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static stereo_fade([SIIIII[II)V
    .locals 6

    const v0, 0xbb80

    .line 128
    div-int/2addr v0, p7

    .line 129
    div-int/2addr p3, v0

    rsub-int p1, p1, 0x7fff

    rsub-int p2, p2, 0x7fff

    const/4 p7, 0x0

    :goto_0
    if-ge p7, p3, :cond_0

    mul-int v1, p7, v0

    .line 135
    aget v1, p6, v1

    invoke-static {v1, v1}, Lorg/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v1

    .line 136
    invoke-static {v1, p2}, Lorg/concentus/Inlines;->MULT16_16(II)I

    move-result v2

    rsub-int v1, v1, 0x7fff

    invoke-static {v2, v1, p1}, Lorg/concentus/Inlines;->MAC16_16(III)I

    move-result v1

    const/16 v2, 0xf

    invoke-static {v1, v2}, Lorg/concentus/Inlines;->SHR32(II)I

    move-result v1

    mul-int v2, p7, p5

    .line 138
    aget-short v3, p0, v2

    add-int/lit8 v4, v2, 0x1

    aget-short v5, p0, v4

    sub-int/2addr v3, v5

    invoke-static {v3}, Lorg/concentus/Inlines;->HALF32(I)I

    move-result v3

    invoke-static {v3}, Lorg/concentus/Inlines;->EXTRACT16(I)S

    move-result v3

    .line 139
    invoke-static {v1, v3}, Lorg/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result v1

    .line 140
    aget-short v3, p0, v2

    sub-int/2addr v3, v1

    int-to-short v3, v3

    aput-short v3, p0, v2

    .line 141
    aget-short v2, p0, v4

    add-int/2addr v2, v1

    int-to-short v1, v2

    aput-short v1, p0, v4

    add-int/lit8 p7, p7, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge p7, p4, :cond_1

    mul-int p1, p7, p5

    .line 145
    aget-short p3, p0, p1

    add-int/lit8 p6, p1, 0x1

    aget-short v0, p0, p6

    sub-int/2addr p3, v0

    invoke-static {p3}, Lorg/concentus/Inlines;->HALF32(I)I

    move-result p3

    invoke-static {p3}, Lorg/concentus/Inlines;->EXTRACT16(I)S

    move-result p3

    .line 146
    invoke-static {p2, p3}, Lorg/concentus/Inlines;->MULT16_16_Q15(II)I

    move-result p3

    .line 147
    aget-short v0, p0, p1

    sub-int/2addr v0, p3

    int-to-short v0, v0

    aput-short v0, p0, p1

    .line 148
    aget-short p1, p0, p6

    add-int/2addr p1, p3

    int-to-short p1, p1

    aput-short p1, p0, p6

    add-int/lit8 p7, p7, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method static transient_boost([FI[FII)F
    .locals 4

    const/4 v0, 0x1

    shl-int p3, v0, p3

    add-int/2addr p3, v0

    .line 196
    invoke-static {p4, p3}, Lorg/concentus/Inlines;->IMIN(II)I

    move-result p3

    const/4 p4, 0x0

    move v0, p1

    move v1, p4

    move v2, v1

    :goto_0
    add-int v3, p3, p1

    if-ge v0, v3, :cond_0

    .line 198
    aget v3, p0, v0

    add-float/2addr v1, v3

    .line 199
    aget v3, p2, v0

    add-float/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    mul-float/2addr v1, v2

    mul-int/2addr p3, p3

    int-to-float p0, p3

    div-float/2addr v1, p0

    const/high16 p0, 0x40000000    # 2.0f

    sub-float/2addr v1, p0

    const p0, 0x3d4ccccd    # 0.05f

    mul-float/2addr v1, p0

    .line 206
    invoke-static {p4, v1}, Lorg/concentus/Inlines;->MAX16(FF)F

    move-result p0

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p1, p0}, Lorg/concentus/Inlines;->MIN16(FF)F

    move-result p0

    return p0
.end method

.method static transient_viterbi([F[FIII)I
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p4

    const/16 v4, 0x18

    const/16 v5, 0x10

    .line 231
    invoke-static {v4, v5}, Lorg/concentus/Arrays;->InitTwoDimensionalArrayFloat(II)[[F

    move-result-object v6

    .line 232
    invoke-static {v4, v5}, Lorg/concentus/Arrays;->InitTwoDimensionalArrayInt(II)[[I

    move-result-object v4

    const/16 v7, 0x50

    const/high16 v8, 0x3f800000    # 1.0f

    if-ge v3, v7, :cond_0

    const/4 v7, 0x0

    goto :goto_0

    :cond_0
    const/16 v7, 0xa0

    if-le v3, v7, :cond_1

    move v7, v8

    goto :goto_0

    :cond_1
    int-to-float v7, v3

    const/high16 v9, 0x42a00000    # 80.0f

    sub-float/2addr v7, v9

    div-float/2addr v7, v9

    :goto_0
    const/4 v9, 0x0

    move v10, v9

    :goto_1
    if-ge v10, v5, :cond_2

    .line 249
    aget-object v11, v4, v9

    const/4 v12, -0x1

    aput v12, v11, v10

    .line 250
    aget-object v11, v6, v9

    const v12, 0x501502f9    # 1.0E10f

    aput v12, v11, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    move v10, v9

    :goto_2
    const/4 v11, 0x4

    const/4 v12, 0x1

    if-ge v10, v11, :cond_3

    .line 253
    aget-object v11, v6, v9

    shl-int/2addr v12, v10

    mul-int v13, v3, v12

    add-int v13, p3, v13

    int-to-float v13, v13

    add-int/lit8 v14, v2, 0x1

    invoke-static {v0, v9, v1, v10, v14}, Lorg/concentus/CodecHelpers;->transient_boost([FI[FII)F

    move-result v14

    mul-float/2addr v14, v7

    add-float/2addr v14, v8

    mul-float/2addr v13, v14

    aput v13, v11, v12

    .line 254
    aget-object v11, v4, v9

    aput v10, v11, v12

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_3
    move v10, v12

    :goto_3
    const/4 v13, 0x2

    if-ge v10, v2, :cond_9

    :goto_4
    if-ge v13, v5, :cond_4

    .line 261
    aget-object v14, v6, v10

    add-int/lit8 v15, v10, -0x1

    aget-object v15, v6, v15

    add-int/lit8 v16, v13, -0x1

    aget v15, v15, v16

    aput v15, v14, v13

    .line 262
    aget-object v14, v4, v10

    aput v16, v14, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_4
    move v13, v9

    :goto_5
    if-ge v13, v11, :cond_8

    .line 270
    aget-object v14, v4, v10

    shl-int v15, v12, v13

    aput v12, v14, v15

    add-int/lit8 v14, v10, -0x1

    .line 271
    aget-object v16, v6, v14

    aget v16, v16, v12

    move v9, v12

    :cond_5
    :goto_6
    if-ge v9, v11, :cond_6

    .line 273
    aget-object v17, v6, v14

    add-int/lit8 v9, v9, 0x1

    shl-int v18, v12, v9

    add-int/lit8 v18, v18, -0x1

    aget v17, v17, v18

    cmpg-float v19, v17, v16

    if-gez v19, :cond_5

    .line 275
    aget-object v16, v4, v10

    aput v18, v16, v15

    move/from16 v16, v17

    goto :goto_6

    :cond_6
    mul-int v9, v3, v15

    add-int v9, p3, v9

    int-to-float v9, v9

    sub-int v14, v2, v10

    add-int/lit8 v11, v14, 0x1

    .line 279
    invoke-static {v0, v10, v1, v13, v11}, Lorg/concentus/CodecHelpers;->transient_boost([FI[FII)F

    move-result v11

    mul-float/2addr v11, v7

    add-float/2addr v11, v8

    mul-float/2addr v9, v11

    .line 280
    aget-object v11, v6, v10

    aput v16, v11, v15

    if-ge v14, v15, :cond_7

    int-to-float v14, v14

    mul-float/2addr v9, v14

    int-to-float v14, v15

    div-float/2addr v9, v14

    add-float v16, v16, v9

    .line 283
    aput v16, v11, v15

    goto :goto_7

    :cond_7
    add-float v16, v16, v9

    .line 285
    aput v16, v11, v15

    :goto_7
    add-int/lit8 v13, v13, 0x1

    const/4 v9, 0x0

    const/4 v11, 0x4

    goto :goto_5

    :cond_8
    add-int/lit8 v10, v10, 0x1

    const/4 v9, 0x0

    const/4 v11, 0x4

    goto :goto_3

    :cond_9
    add-int/lit8 v0, v2, -0x1

    .line 291
    aget-object v1, v6, v0

    aget v1, v1, v12

    :goto_8
    if-ge v13, v5, :cond_b

    .line 294
    aget-object v2, v6, v0

    aget v2, v2, v13

    cmpg-float v3, v2, v1

    if-gez v3, :cond_a

    move v1, v2

    move v12, v13

    :cond_a
    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    :cond_b
    :goto_9
    if-ltz v0, :cond_c

    .line 303
    aget-object v1, v4, v0

    aget v12, v1, v12

    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_c
    return v12
.end method
