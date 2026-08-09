.class public Lorg/concentus/OpusRepacketizer;
.super Ljava/lang/Object;
.source "OpusRepacketizer.java"


# instance fields
.field final frames:[[B

.field framesize:I

.field final len:[S

.field nb_frames:I

.field toc:B


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-byte v0, p0, Lorg/concentus/OpusRepacketizer;->toc:B

    .line 40
    iput v0, p0, Lorg/concentus/OpusRepacketizer;->nb_frames:I

    const/16 v1, 0x30

    .line 41
    new-array v2, v1, [[B

    iput-object v2, p0, Lorg/concentus/OpusRepacketizer;->frames:[[B

    .line 42
    new-array v1, v1, [S

    iput-object v1, p0, Lorg/concentus/OpusRepacketizer;->len:[S

    .line 43
    iput v0, p0, Lorg/concentus/OpusRepacketizer;->framesize:I

    .line 71
    invoke-virtual {p0}, Lorg/concentus/OpusRepacketizer;->Reset()V

    return-void
.end method

.method public static padMultistreamPacket([BIIII)I
    .locals 20

    move/from16 v0, p2

    move/from16 v1, p3

    .line 455
    new-instance v11, Lorg/concentus/BoxedValueByte;

    const/4 v2, 0x0

    invoke-direct {v11, v2}, Lorg/concentus/BoxedValueByte;-><init>(B)V

    const/16 v3, 0x30

    .line 456
    new-array v12, v3, [S

    .line 457
    new-instance v13, Lorg/concentus/BoxedValueInt;

    invoke-direct {v13, v2}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    .line 458
    new-instance v14, Lorg/concentus/BoxedValueInt;

    invoke-direct {v14, v2}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    const/4 v15, 0x1

    if-ge v0, v15, :cond_0

    .line 462
    sget v0, Lorg/concentus/OpusError;->OPUS_BAD_ARG:I

    return v0

    :cond_0
    if-ne v0, v1, :cond_1

    .line 465
    sget v0, Lorg/concentus/OpusError;->OPUS_OK:I

    return v0

    :cond_1
    if-le v0, v1, :cond_2

    .line 467
    sget v0, Lorg/concentus/OpusError;->OPUS_BAD_ARG:I

    return v0

    :cond_2
    sub-int v16, v1, v0

    move/from16 v10, p1

    move v9, v0

    move v8, v2

    :goto_0
    add-int/lit8 v0, p4, -0x1

    if-ge v8, v0, :cond_5

    if-gtz v9, :cond_3

    .line 473
    sget v0, Lorg/concentus/OpusError;->OPUS_INVALID_PACKET:I

    return v0

    :cond_3
    const/4 v6, 0x0

    const/16 v17, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v10

    move v2, v9

    move-object v4, v11

    move-object v7, v12

    move/from16 v18, v8

    move/from16 v8, v17

    move v15, v9

    move-object v9, v14

    move-object/from16 v19, v11

    move v11, v10

    move-object v10, v13

    .line 475
    invoke-static/range {v0 .. v10}, Lorg/concentus/OpusPacketInfo;->opus_packet_parse_impl([BIIILorg/concentus/BoxedValueByte;[[BI[SILorg/concentus/BoxedValueInt;Lorg/concentus/BoxedValueInt;)I

    move-result v0

    if-gez v0, :cond_4

    return v0

    .line 480
    :cond_4
    iget v0, v13, Lorg/concentus/BoxedValueInt;->Val:I

    add-int v10, v11, v0

    .line 481
    iget v0, v13, Lorg/concentus/BoxedValueInt;->Val:I

    sub-int v9, v15, v0

    add-int/lit8 v8, v18, 0x1

    move-object/from16 v11, v19

    const/4 v15, 0x1

    goto :goto_0

    :cond_5
    move v15, v9

    move v11, v10

    add-int v9, v15, v16

    move-object/from16 v0, p0

    .line 483
    invoke-static {v0, v11, v15, v9}, Lorg/concentus/OpusRepacketizer;->padPacket([BIII)I

    move-result v0

    return v0
.end method

.method public static padPacket([BIII)I
    .locals 8

    .line 381
    new-instance v0, Lorg/concentus/OpusRepacketizer;

    invoke-direct {v0}, Lorg/concentus/OpusRepacketizer;-><init>()V

    const/4 v1, 0x1

    if-ge p2, v1, :cond_0

    .line 384
    sget p0, Lorg/concentus/OpusError;->OPUS_BAD_ARG:I

    return p0

    :cond_0
    if-ne p2, p3, :cond_1

    .line 387
    sget p0, Lorg/concentus/OpusError;->OPUS_OK:I

    return p0

    :cond_1
    if-le p2, p3, :cond_2

    .line 389
    sget p0, Lorg/concentus/OpusError;->OPUS_BAD_ARG:I

    return p0

    .line 391
    :cond_2
    invoke-virtual {v0}, Lorg/concentus/OpusRepacketizer;->Reset()V

    add-int v1, p1, p3

    sub-int/2addr v1, p2

    .line 393
    invoke-static {p0, p1, v1, p2}, Lorg/concentus/Arrays;->MemMove([BIII)V

    .line 395
    invoke-virtual {v0, p0, v1, p2}, Lorg/concentus/OpusRepacketizer;->addPacket([BII)I

    .line 396
    iget v2, v0, Lorg/concentus/OpusRepacketizer;->nb_frames:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v1, 0x0

    move-object v3, p0

    move v4, p1

    move v5, p3

    invoke-virtual/range {v0 .. v7}, Lorg/concentus/OpusRepacketizer;->opus_repacketizer_out_range_impl(II[BIIII)I

    move-result p0

    if-lez p0, :cond_3

    .line 398
    sget p0, Lorg/concentus/OpusError;->OPUS_OK:I

    :cond_3
    return p0
.end method

.method public static unpadMultistreamPacket([BIII)I
    .locals 24

    move/from16 v0, p3

    .line 505
    new-instance v12, Lorg/concentus/BoxedValueByte;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Lorg/concentus/BoxedValueByte;-><init>(B)V

    const/16 v1, 0x30

    .line 506
    new-array v14, v1, [S

    .line 507
    new-instance v15, Lorg/concentus/BoxedValueInt;

    invoke-direct {v15, v13}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    .line 508
    new-instance v11, Lorg/concentus/BoxedValueInt;

    invoke-direct {v11, v13}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    .line 509
    new-instance v10, Lorg/concentus/OpusRepacketizer;

    invoke-direct {v10}, Lorg/concentus/OpusRepacketizer;-><init>()V

    const/4 v9, 0x1

    move/from16 v1, p2

    if-ge v1, v9, :cond_0

    .line 514
    sget v0, Lorg/concentus/OpusError;->OPUS_BAD_ARG:I

    return v0

    :cond_0
    move/from16 v8, p1

    move/from16 v16, v8

    move/from16 v17, v1

    move v7, v13

    move/from16 v18, v7

    :goto_0
    if-ge v7, v0, :cond_6

    if-eq v7, v0, :cond_1

    move v1, v9

    goto :goto_1

    :cond_1
    move v1, v13

    :goto_1
    add-int/lit8 v6, v1, -0x1

    if-gtz v17, :cond_2

    .line 523
    sget v0, Lorg/concentus/OpusError;->OPUS_INVALID_PACKET:I

    return v0

    .line 525
    :cond_2
    invoke-virtual {v10}, Lorg/concentus/OpusRepacketizer;->Reset()V

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v1, p0

    move v2, v8

    move/from16 v3, v17

    move v4, v6

    move-object v5, v12

    move v13, v6

    move-object/from16 v6, v21

    move/from16 v21, v7

    move/from16 v7, v19

    move/from16 v22, v8

    move-object v8, v14

    move/from16 v19, v9

    move/from16 v9, v20

    move-object/from16 v23, v10

    move-object v10, v11

    move-object/from16 v20, v11

    move-object v11, v15

    .line 526
    invoke-static/range {v1 .. v11}, Lorg/concentus/OpusPacketInfo;->opus_packet_parse_impl([BIIILorg/concentus/BoxedValueByte;[[BI[SILorg/concentus/BoxedValueInt;Lorg/concentus/BoxedValueInt;)I

    move-result v1

    if-gez v1, :cond_3

    return v1

    .line 531
    :cond_3
    iget v1, v15, Lorg/concentus/BoxedValueInt;->Val:I

    move-object/from16 v9, p0

    move/from16 v11, v22

    move-object/from16 v10, v23

    invoke-virtual {v10, v9, v11, v1, v13}, Lorg/concentus/OpusRepacketizer;->opus_repacketizer_cat_impl([BIII)I

    move-result v1

    if-gez v1, :cond_4

    return v1

    .line 535
    :cond_4
    iget v3, v10, Lorg/concentus/OpusRepacketizer;->nb_frames:I

    const/4 v8, 0x0

    const/4 v2, 0x0

    move-object v1, v10

    move-object/from16 v4, p0

    move/from16 v5, v16

    move/from16 v6, v17

    move v7, v13

    invoke-virtual/range {v1 .. v8}, Lorg/concentus/OpusRepacketizer;->opus_repacketizer_out_range_impl(II[BIIII)I

    move-result v1

    if-gez v1, :cond_5

    return v1

    :cond_5
    add-int v18, v18, v1

    add-int v16, v16, v1

    .line 542
    iget v1, v15, Lorg/concentus/BoxedValueInt;->Val:I

    add-int v8, v11, v1

    .line 543
    iget v1, v15, Lorg/concentus/BoxedValueInt;->Val:I

    sub-int v17, v17, v1

    add-int/lit8 v7, v21, 0x1

    move/from16 v9, v19

    move-object/from16 v11, v20

    const/4 v13, 0x0

    goto :goto_0

    :cond_6
    return v18
.end method

.method public static unpadPacket([BII)I
    .locals 9

    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    .line 420
    sget p0, Lorg/concentus/OpusError;->OPUS_BAD_ARG:I

    return p0

    .line 423
    :cond_0
    new-instance v1, Lorg/concentus/OpusRepacketizer;

    invoke-direct {v1}, Lorg/concentus/OpusRepacketizer;-><init>()V

    .line 424
    invoke-virtual {v1}, Lorg/concentus/OpusRepacketizer;->Reset()V

    .line 425
    invoke-virtual {v1, p0, p1, p2}, Lorg/concentus/OpusRepacketizer;->addPacket([BII)I

    move-result v2

    if-gez v2, :cond_1

    return v2

    .line 429
    :cond_1
    iget v3, v1, Lorg/concentus/OpusRepacketizer;->nb_frames:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    move-object v4, p0

    move v5, p1

    move v6, p2

    invoke-virtual/range {v1 .. v8}, Lorg/concentus/OpusRepacketizer;->opus_repacketizer_out_range_impl(II[BIIII)I

    move-result p0

    if-lez p0, :cond_2

    if-gt p0, p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 430
    :goto_0
    invoke-static {v0}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    return p0
.end method


# virtual methods
.method public Reset()V
    .locals 1

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lorg/concentus/OpusRepacketizer;->nb_frames:I

    return-void
.end method

.method public addPacket([BII)I
    .locals 1

    const/4 v0, 0x0

    .line 150
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/concentus/OpusRepacketizer;->opus_repacketizer_cat_impl([BIII)I

    move-result p1

    return p1
.end method

.method public createPacket(II[BII)I
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 328
    invoke-virtual/range {v0 .. v7}, Lorg/concentus/OpusRepacketizer;->opus_repacketizer_out_range_impl(II[BIIII)I

    move-result p1

    return p1
.end method

.method public createPacket([BII)I
    .locals 8

    .line 361
    iget v2, p0, Lorg/concentus/OpusRepacketizer;->nb_frames:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v7}, Lorg/concentus/OpusRepacketizer;->opus_repacketizer_out_range_impl(II[BIIII)I

    move-result p1

    return p1
.end method

.method public getNumFrames()I
    .locals 1

    .line 166
    iget v0, p0, Lorg/concentus/OpusRepacketizer;->nb_frames:I

    return v0
.end method

.method opus_repacketizer_cat_impl([BIII)I
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    .line 75
    new-instance v5, Lorg/concentus/BoxedValueByte;

    const/4 v3, 0x0

    invoke-direct {v5, v3}, Lorg/concentus/BoxedValueByte;-><init>(B)V

    .line 76
    new-instance v11, Lorg/concentus/BoxedValueInt;

    invoke-direct {v11, v3}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    const/4 v12, 0x1

    move/from16 v3, p3

    if-ge v3, v12, :cond_0

    .line 80
    sget v1, Lorg/concentus/OpusError;->OPUS_INVALID_PACKET:I

    return v1

    .line 83
    :cond_0
    iget v4, v0, Lorg/concentus/OpusRepacketizer;->nb_frames:I

    if-nez v4, :cond_1

    .line 84
    aget-byte v4, v1, v2

    iput-byte v4, v0, Lorg/concentus/OpusRepacketizer;->toc:B

    const/16 v4, 0x1f40

    .line 85
    invoke-static {p1, v2, v4}, Lorg/concentus/OpusPacketInfo;->getNumSamplesPerFrame([BII)I

    move-result v4

    iput v4, v0, Lorg/concentus/OpusRepacketizer;->framesize:I

    goto :goto_0

    .line 86
    :cond_1
    iget-byte v4, v0, Lorg/concentus/OpusRepacketizer;->toc:B

    and-int/lit16 v4, v4, 0xfc

    aget-byte v6, v1, v2

    and-int/lit16 v6, v6, 0xfc

    if-eq v4, v6, :cond_2

    .line 88
    sget v1, Lorg/concentus/OpusError;->OPUS_INVALID_PACKET:I

    return v1

    .line 90
    :cond_2
    :goto_0
    invoke-static/range {p1 .. p3}, Lorg/concentus/OpusPacketInfo;->getNumFrames([BII)I

    move-result v13

    if-ge v13, v12, :cond_3

    .line 92
    sget v1, Lorg/concentus/OpusError;->OPUS_INVALID_PACKET:I

    return v1

    .line 96
    :cond_3
    iget v9, v0, Lorg/concentus/OpusRepacketizer;->nb_frames:I

    add-int v4, v13, v9

    iget v6, v0, Lorg/concentus/OpusRepacketizer;->framesize:I

    mul-int/2addr v4, v6

    const/16 v6, 0x3c0

    if-le v4, v6, :cond_4

    .line 97
    sget v1, Lorg/concentus/OpusError;->OPUS_INVALID_PACKET:I

    return v1

    .line 100
    :cond_4
    iget-object v6, v0, Lorg/concentus/OpusRepacketizer;->frames:[[B

    iget-object v8, v0, Lorg/concentus/OpusRepacketizer;->len:[S

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move v7, v9

    move-object v10, v11

    invoke-static/range {v1 .. v11}, Lorg/concentus/OpusPacketInfo;->opus_packet_parse_impl([BIIILorg/concentus/BoxedValueByte;[[BI[SILorg/concentus/BoxedValueInt;Lorg/concentus/BoxedValueInt;)I

    move-result v1

    if-ge v1, v12, :cond_5

    return v1

    .line 105
    :cond_5
    iget v1, v0, Lorg/concentus/OpusRepacketizer;->nb_frames:I

    add-int/2addr v1, v13

    iput v1, v0, Lorg/concentus/OpusRepacketizer;->nb_frames:I

    .line 106
    sget v1, Lorg/concentus/OpusError;->OPUS_OK:I

    return v1
.end method

.method opus_repacketizer_out_range_impl(II[BIIII)I
    .locals 15

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p5

    if-ltz v1, :cond_1d

    if-ge v1, v2, :cond_1d

    .line 175
    iget v5, v0, Lorg/concentus/OpusRepacketizer;->nb_frames:I

    if-le v2, v5, :cond_0

    goto/16 :goto_11

    :cond_0
    sub-int/2addr v2, v1

    const/16 v5, 0xfc

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz p6, :cond_2

    .line 182
    iget-object v8, v0, Lorg/concentus/OpusRepacketizer;->len:[S

    add-int/lit8 v9, v2, -0x1

    aget-short v8, v8, v9

    if-lt v8, v5, :cond_1

    move v8, v7

    goto :goto_0

    :cond_1
    move v8, v6

    :goto_0
    add-int/2addr v8, v7

    goto :goto_1

    :cond_2
    move v8, v6

    :goto_1
    const/4 v9, 0x2

    if-ne v2, v7, :cond_4

    .line 190
    iget-object v10, v0, Lorg/concentus/OpusRepacketizer;->len:[S

    aget-short v10, v10, v6

    add-int/2addr v10, v7

    add-int/2addr v8, v10

    if-le v8, v4, :cond_3

    .line 192
    sget v1, Lorg/concentus/OpusError;->OPUS_BUFFER_TOO_SMALL:I

    return v1

    :cond_3
    add-int/lit8 v10, p4, 0x1

    .line 194
    iget-byte v11, v0, Lorg/concentus/OpusRepacketizer;->toc:B

    and-int/2addr v11, v5

    int-to-byte v11, v11

    aput-byte v11, v3, p4

    goto :goto_3

    :cond_4
    if-ne v2, v9, :cond_9

    .line 196
    iget-object v10, v0, Lorg/concentus/OpusRepacketizer;->len:[S

    aget-short v11, v10, v7

    aget-short v10, v10, v6

    if-ne v11, v10, :cond_6

    mul-int/2addr v10, v9

    add-int/2addr v10, v7

    add-int/2addr v8, v10

    if-le v8, v4, :cond_5

    .line 200
    sget v1, Lorg/concentus/OpusError;->OPUS_BUFFER_TOO_SMALL:I

    return v1

    :cond_5
    add-int/lit8 v10, p4, 0x1

    .line 202
    iget-byte v11, v0, Lorg/concentus/OpusRepacketizer;->toc:B

    and-int/2addr v11, v5

    or-int/2addr v11, v7

    int-to-byte v11, v11

    aput-byte v11, v3, p4

    goto :goto_3

    :cond_6
    add-int/2addr v11, v10

    add-int/2addr v11, v9

    if-lt v10, v5, :cond_7

    move v12, v7

    goto :goto_2

    :cond_7
    move v12, v6

    :goto_2
    add-int/2addr v11, v12

    add-int/2addr v8, v11

    if-le v8, v4, :cond_8

    .line 207
    sget v1, Lorg/concentus/OpusError;->OPUS_BUFFER_TOO_SMALL:I

    return v1

    :cond_8
    add-int/lit8 v11, p4, 0x1

    .line 209
    iget-byte v12, v0, Lorg/concentus/OpusRepacketizer;->toc:B

    and-int/2addr v12, v5

    or-int/2addr v12, v9

    int-to-byte v12, v12

    aput-byte v12, v3, p4

    .line 210
    invoke-static {v10, v3, v11}, Lorg/concentus/OpusPacketInfo;->encode_size(I[BI)I

    move-result v10

    add-int/2addr v10, v11

    goto :goto_3

    :cond_9
    move/from16 v10, p4

    :goto_3
    if-gt v2, v9, :cond_a

    if-eqz p7, :cond_18

    if-ge v8, v4, :cond_18

    :cond_a
    if-eqz p6, :cond_c

    .line 221
    iget-object v8, v0, Lorg/concentus/OpusRepacketizer;->len:[S

    add-int/lit8 v10, v2, -0x1

    aget-short v8, v8, v10

    if-lt v8, v5, :cond_b

    move v8, v7

    goto :goto_4

    :cond_b
    move v8, v6

    :goto_4
    add-int/2addr v8, v7

    goto :goto_5

    :cond_c
    move v8, v6

    :goto_5
    move v10, v7

    :goto_6
    if-ge v10, v2, :cond_e

    .line 227
    iget-object v11, v0, Lorg/concentus/OpusRepacketizer;->len:[S

    aget-short v12, v11, v10

    aget-short v11, v11, v6

    if-eq v12, v11, :cond_d

    move v10, v7

    goto :goto_7

    :cond_d
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_e
    move v10, v6

    :goto_7
    if-eqz v10, :cond_12

    add-int/2addr v8, v9

    move v9, v6

    :goto_8
    add-int/lit8 v11, v2, -0x1

    if-ge v9, v11, :cond_10

    .line 235
    iget-object v11, v0, Lorg/concentus/OpusRepacketizer;->len:[S

    aget-short v11, v11, v9

    if-lt v11, v5, :cond_f

    move v12, v7

    goto :goto_9

    :cond_f
    move v12, v6

    :goto_9
    add-int/2addr v12, v7

    add-int/2addr v12, v11

    add-int/2addr v8, v12

    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 237
    :cond_10
    iget-object v9, v0, Lorg/concentus/OpusRepacketizer;->len:[S

    aget-short v9, v9, v11

    add-int/2addr v8, v9

    if-le v8, v4, :cond_11

    .line 240
    sget v1, Lorg/concentus/OpusError;->OPUS_BUFFER_TOO_SMALL:I

    return v1

    :cond_11
    add-int/lit8 v9, p4, 0x1

    .line 242
    iget-byte v11, v0, Lorg/concentus/OpusRepacketizer;->toc:B

    and-int/2addr v5, v11

    or-int/lit8 v5, v5, 0x3

    int-to-byte v5, v5

    aput-byte v5, v3, p4

    add-int/lit8 v5, p4, 0x2

    or-int/lit16 v11, v2, 0x80

    int-to-byte v11, v11

    .line 243
    aput-byte v11, v3, v9

    goto :goto_a

    .line 245
    :cond_12
    iget-object v11, v0, Lorg/concentus/OpusRepacketizer;->len:[S

    aget-short v11, v11, v6

    mul-int/2addr v11, v2

    add-int/2addr v11, v9

    add-int/2addr v8, v11

    if-le v8, v4, :cond_13

    .line 247
    sget v1, Lorg/concentus/OpusError;->OPUS_BUFFER_TOO_SMALL:I

    return v1

    :cond_13
    add-int/lit8 v9, p4, 0x1

    .line 249
    iget-byte v11, v0, Lorg/concentus/OpusRepacketizer;->toc:B

    and-int/2addr v5, v11

    or-int/lit8 v5, v5, 0x3

    int-to-byte v5, v5

    aput-byte v5, v3, p4

    add-int/lit8 v5, p4, 0x2

    int-to-byte v11, v2

    .line 250
    aput-byte v11, v3, v9

    :goto_a
    if-eqz p7, :cond_14

    sub-int v9, v4, v8

    goto :goto_b

    :cond_14
    move v9, v6

    :goto_b
    if-eqz v9, :cond_16

    add-int/lit8 v11, p4, 0x1

    .line 257
    aget-byte v12, v3, v11

    or-int/lit8 v12, v12, 0x40

    int-to-byte v12, v12

    aput-byte v12, v3, v11

    add-int/lit8 v11, v9, -0x1

    .line 258
    div-int/lit16 v11, v11, 0xff

    move v12, v6

    :goto_c
    if-ge v12, v11, :cond_15

    add-int/lit8 v13, v5, 0x1

    const/4 v14, -0x1

    .line 260
    aput-byte v14, v3, v5

    add-int/lit8 v12, v12, 0x1

    move v5, v13

    goto :goto_c

    :cond_15
    add-int/lit8 v12, v5, 0x1

    mul-int/lit16 v11, v11, 0xff

    sub-int v11, v9, v11

    sub-int/2addr v11, v7

    int-to-byte v7, v11

    .line 263
    aput-byte v7, v3, v5

    add-int/2addr v8, v9

    goto :goto_d

    :cond_16
    move v12, v5

    :goto_d
    if-eqz v10, :cond_17

    move v5, v6

    move v10, v12

    :goto_e
    add-int/lit8 v7, v2, -0x1

    if-ge v5, v7, :cond_18

    .line 269
    iget-object v7, v0, Lorg/concentus/OpusRepacketizer;->len:[S

    aget-short v7, v7, v5

    invoke-static {v7, v3, v10}, Lorg/concentus/OpusPacketInfo;->encode_size(I[BI)I

    move-result v7

    add-int/2addr v10, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_17
    move v10, v12

    :cond_18
    if-eqz p6, :cond_19

    .line 275
    iget-object v5, v0, Lorg/concentus/OpusRepacketizer;->len:[S

    add-int/lit8 v7, v2, -0x1

    aget-short v5, v5, v7

    invoke-static {v5, v3, v10}, Lorg/concentus/OpusPacketInfo;->encode_size(I[BI)I

    move-result v5

    add-int/2addr v10, v5

    :cond_19
    move v5, v1

    :goto_f
    add-int v7, v2, v1

    if-ge v5, v7, :cond_1b

    .line 282
    iget-object v7, v0, Lorg/concentus/OpusRepacketizer;->frames:[[B

    aget-object v7, v7, v5

    if-ne v3, v7, :cond_1a

    .line 285
    iget-object v7, v0, Lorg/concentus/OpusRepacketizer;->len:[S

    aget-short v7, v7, v5

    invoke-static {v3, v6, v10, v7}, Lorg/concentus/Arrays;->MemMove([BIII)V

    goto :goto_10

    .line 287
    :cond_1a
    iget-object v9, v0, Lorg/concentus/OpusRepacketizer;->len:[S

    aget-short v9, v9, v5

    invoke-static {v7, v6, v3, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 289
    :goto_10
    iget-object v7, v0, Lorg/concentus/OpusRepacketizer;->len:[S

    aget-short v7, v7, v5

    add-int/2addr v10, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_1b
    if-eqz p7, :cond_1c

    add-int v1, p4, v4

    sub-int/2addr v1, v10

    .line 294
    invoke-static {v3, v6, v10, v1}, Lorg/concentus/Arrays;->MemSetWithOffset([BBII)V

    :cond_1c
    return v8

    .line 177
    :cond_1d
    :goto_11
    sget v1, Lorg/concentus/OpusError;->OPUS_BAD_ARG:I

    return v1
.end method
