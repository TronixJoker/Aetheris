.class public Lorg/concentus/OpusPacketInfo;
.super Ljava/lang/Object;
.source "OpusPacketInfo.java"


# instance fields
.field public Frames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public PayloadOffset:I

.field public TOCByte:B


# direct methods
.method private constructor <init>(BLjava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/Byte;",
            ">;I)V"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-byte p1, p0, Lorg/concentus/OpusPacketInfo;->TOCByte:B

    .line 59
    iput-object p2, p0, Lorg/concentus/OpusPacketInfo;->Frames:Ljava/util/List;

    .line 60
    iput p3, p0, Lorg/concentus/OpusPacketInfo;->PayloadOffset:I

    return-void
.end method

.method static encode_size(I[BI)I
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0xfc

    if-ge p0, v1, :cond_0

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    .line 212
    aput-byte p0, p1, p2

    return v0

    :cond_0
    and-int/lit8 v2, p0, 0x3

    add-int/2addr v2, v1

    and-int/lit16 v1, v2, 0xff

    int-to-byte v1, v1

    .line 216
    aput-byte v1, p1, p2

    add-int/2addr p2, v0

    sub-int/2addr p0, v2

    const/4 v0, 0x2

    shr-int/2addr p0, v0

    int-to-byte p0, p0

    .line 217
    aput-byte p0, p1, p2

    return v0
.end method

.method public static getBandwidth([BI)Lorg/concentus/OpusBandwidth;
    .locals 3

    .line 127
    aget-byte v0, p0, p1

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_0

    .line 128
    sget-object v0, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_MEDIUMBAND:Lorg/concentus/OpusBandwidth;

    invoke-static {v0}, Lorg/concentus/OpusBandwidthHelpers;->GetOrdinal(Lorg/concentus/OpusBandwidth;)I

    move-result v0

    aget-byte p0, p0, p1

    shr-int/lit8 p0, p0, 0x5

    and-int/lit8 p0, p0, 0x3

    add-int/2addr v0, p0

    invoke-static {v0}, Lorg/concentus/OpusBandwidthHelpers;->GetBandwidth(I)Lorg/concentus/OpusBandwidth;

    move-result-object p0

    .line 129
    sget-object p1, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_MEDIUMBAND:Lorg/concentus/OpusBandwidth;

    if-ne p0, p1, :cond_3

    .line 130
    sget-object p0, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_NARROWBAND:Lorg/concentus/OpusBandwidth;

    goto :goto_0

    :cond_0
    and-int/lit8 v1, v0, 0x60

    const/16 v2, 0x60

    if-ne v1, v2, :cond_2

    and-int/lit8 p0, v0, 0x10

    if-eqz p0, :cond_1

    .line 133
    sget-object p0, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_FULLBAND:Lorg/concentus/OpusBandwidth;

    goto :goto_0

    .line 134
    :cond_1
    sget-object p0, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_SUPERWIDEBAND:Lorg/concentus/OpusBandwidth;

    goto :goto_0

    .line 136
    :cond_2
    sget-object v0, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_NARROWBAND:Lorg/concentus/OpusBandwidth;

    invoke-static {v0}, Lorg/concentus/OpusBandwidthHelpers;->GetOrdinal(Lorg/concentus/OpusBandwidth;)I

    move-result v0

    aget-byte p0, p0, p1

    shr-int/lit8 p0, p0, 0x5

    and-int/lit8 p0, p0, 0x3

    add-int/2addr v0, p0

    invoke-static {v0}, Lorg/concentus/OpusBandwidthHelpers;->GetBandwidth(I)Lorg/concentus/OpusBandwidth;

    move-result-object p0

    :cond_3
    :goto_0
    return-object p0
.end method

.method public static getEncoderMode([BI)Lorg/concentus/OpusMode;
    .locals 0

    .line 200
    aget-byte p0, p0, p1

    and-int/lit16 p1, p0, 0x80

    if-eqz p1, :cond_0

    .line 201
    sget-object p0, Lorg/concentus/OpusMode;->MODE_CELT_ONLY:Lorg/concentus/OpusMode;

    goto :goto_0

    :cond_0
    const/16 p1, 0x60

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_1

    .line 203
    sget-object p0, Lorg/concentus/OpusMode;->MODE_HYBRID:Lorg/concentus/OpusMode;

    goto :goto_0

    .line 205
    :cond_1
    sget-object p0, Lorg/concentus/OpusMode;->MODE_SILK_ONLY:Lorg/concentus/OpusMode;

    :goto_0
    return-object p0
.end method

.method public static getNumEncodedChannels([BI)I
    .locals 0

    .line 142
    aget-byte p0, p0, p1

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public static getNumFrames([BII)I
    .locals 4

    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    .line 154
    sget p0, Lorg/concentus/OpusError;->OPUS_BAD_ARG:I

    return p0

    .line 156
    :cond_0
    aget-byte v1, p0, p1

    const/4 v2, 0x3

    and-int/2addr v1, v2

    if-nez v1, :cond_1

    return v0

    :cond_1
    const/4 v3, 0x2

    if-eq v1, v2, :cond_2

    return v3

    :cond_2
    if-ge p2, v3, :cond_3

    .line 162
    sget p0, Lorg/concentus/OpusError;->OPUS_INVALID_PACKET:I

    return p0

    :cond_3
    add-int/2addr p1, v0

    .line 164
    aget-byte p0, p0, p1

    and-int/lit8 p0, p0, 0x3f

    return p0
.end method

.method public static getNumSamples(Lorg/concentus/OpusDecoder;[BII)I
    .locals 0

    .line 195
    iget p0, p0, Lorg/concentus/OpusDecoder;->Fs:I

    invoke-static {p1, p2, p3, p0}, Lorg/concentus/OpusPacketInfo;->getNumSamples([BIII)I

    move-result p0

    return p0
.end method

.method public static getNumSamples([BIII)I
    .locals 0

    .line 171
    invoke-static {p0, p1, p2}, Lorg/concentus/OpusPacketInfo;->getNumFrames([BII)I

    move-result p2

    if-gez p2, :cond_0

    return p2

    .line 177
    :cond_0
    invoke-static {p0, p1, p3}, Lorg/concentus/OpusPacketInfo;->getNumSamplesPerFrame([BII)I

    move-result p0

    mul-int/2addr p2, p0

    mul-int/lit8 p0, p2, 0x19

    mul-int/lit8 p3, p3, 0x3

    if-le p0, p3, :cond_1

    .line 180
    sget p0, Lorg/concentus/OpusError;->OPUS_INVALID_PACKET:I

    return p0

    :cond_1
    return p2
.end method

.method public static getNumSamplesPerFrame([BII)I
    .locals 2

    .line 104
    aget-byte p0, p0, p1

    and-int/lit16 p1, p0, 0x80

    const/4 v0, 0x3

    if-eqz p1, :cond_0

    shr-int/2addr p0, v0

    and-int/2addr p0, v0

    shl-int p0, p2, p0

    .line 106
    div-int/lit16 p0, p0, 0x190

    goto :goto_1

    :cond_0
    and-int/lit8 p1, p0, 0x60

    const/16 v1, 0x60

    if-ne p1, v1, :cond_2

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_1

    .line 108
    div-int/lit8 p2, p2, 0x32

    goto :goto_0

    :cond_1
    div-int/lit8 p2, p2, 0x64

    :goto_0
    move p0, p2

    goto :goto_1

    :cond_2
    shr-int/2addr p0, v0

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_3

    mul-int/lit8 p2, p2, 0x3c

    .line 112
    div-int/lit16 p0, p2, 0x3e8

    goto :goto_1

    :cond_3
    shl-int p0, p2, p0

    .line 114
    div-int/lit8 p0, p0, 0x64

    :goto_1
    return p0
.end method

.method static opus_packet_parse_impl([BIIILorg/concentus/BoxedValueByte;[[BI[SILorg/concentus/BoxedValueInt;Lorg/concentus/BoxedValueInt;)I
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p9

    move-object/from16 v4, p10

    const/4 v5, 0x0

    .line 251
    iput-byte v5, v2, Lorg/concentus/BoxedValueByte;->Val:B

    .line 252
    iput v5, v3, Lorg/concentus/BoxedValueInt;->Val:I

    .line 253
    iput v5, v4, Lorg/concentus/BoxedValueInt;->Val:I

    if-eqz p7, :cond_21

    if-gez p2, :cond_0

    goto/16 :goto_f

    :cond_0
    if-nez p2, :cond_1

    .line 259
    sget v0, Lorg/concentus/OpusError;->OPUS_INVALID_PACKET:I

    return v0

    :cond_1
    const v6, 0xbb80

    .line 262
    invoke-static {v0, v1, v6}, Lorg/concentus/OpusPacketInfo;->getNumSamplesPerFrame([BII)I

    move-result v6

    add-int/lit8 v7, v1, 0x1

    .line 265
    aget-byte v8, v0, v1

    add-int/lit8 v9, p2, -0x1

    and-int/lit8 v10, v8, 0x3

    const/4 v11, 0x1

    if-eqz v10, :cond_17

    const/4 v12, 0x2

    if-eq v10, v11, :cond_14

    if-eq v10, v12, :cond_11

    if-ge v9, v11, :cond_2

    .line 303
    sget v0, Lorg/concentus/OpusError;->OPUS_INVALID_PACKET:I

    return v0

    :cond_2
    add-int/lit8 v10, v1, 0x2

    .line 306
    aget-byte v7, v0, v7

    invoke-static {v7}, Lorg/concentus/Inlines;->SignedByteToUnsignedInt(B)I

    move-result v7

    and-int/lit8 v12, v7, 0x3f

    if-lez v12, :cond_10

    mul-int/2addr v6, v12

    const/16 v13, 0x1680

    if-le v6, v13, :cond_3

    goto/16 :goto_7

    :cond_3
    add-int/lit8 v6, p2, -0x2

    and-int/lit8 v13, v7, 0x40

    if-eqz v13, :cond_7

    move v13, v5

    :goto_0
    if-gtz v6, :cond_4

    .line 318
    sget v0, Lorg/concentus/OpusError;->OPUS_INVALID_PACKET:I

    return v0

    :cond_4
    add-int/lit8 v14, v10, 0x1

    .line 320
    aget-byte v10, v0, v10

    invoke-static {v10}, Lorg/concentus/Inlines;->SignedByteToUnsignedInt(B)I

    move-result v10

    add-int/lit8 v6, v6, -0x1

    const/16 v15, 0xff

    if-ne v10, v15, :cond_5

    const/16 v16, 0xfe

    goto :goto_1

    :cond_5
    move/from16 v16, v10

    :goto_1
    sub-int v6, v6, v16

    add-int v13, v13, v16

    if-eq v10, v15, :cond_6

    move v10, v14

    goto :goto_2

    :cond_6
    move v10, v14

    goto :goto_0

    :cond_7
    move v13, v5

    :goto_2
    if-gez v6, :cond_8

    .line 328
    sget v0, Lorg/concentus/OpusError;->OPUS_INVALID_PACKET:I

    return v0

    :cond_8
    and-int/lit16 v7, v7, 0x80

    if-eqz v7, :cond_9

    move v7, v5

    goto :goto_3

    :cond_9
    move v7, v11

    :goto_3
    if-nez v7, :cond_d

    move v14, v5

    move v9, v6

    :goto_4
    add-int/lit8 v15, v12, -0x1

    if-ge v14, v15, :cond_c

    .line 336
    new-instance v15, Lorg/concentus/BoxedValueShort;

    add-int v16, p8, v14

    aget-short v5, p7, v16

    invoke-direct {v15, v5}, Lorg/concentus/BoxedValueShort;-><init>(S)V

    .line 337
    invoke-static {v0, v10, v6, v15}, Lorg/concentus/OpusPacketInfo;->parse_size([BIILorg/concentus/BoxedValueShort;)I

    move-result v5

    .line 338
    iget-short v15, v15, Lorg/concentus/BoxedValueShort;->Val:S

    aput-short v15, p7, v16

    sub-int/2addr v6, v5

    if-ltz v15, :cond_b

    if-le v15, v6, :cond_a

    goto :goto_5

    :cond_a
    add-int/2addr v10, v5

    add-int/2addr v5, v15

    sub-int/2addr v9, v5

    add-int/lit8 v14, v14, 0x1

    const/4 v5, 0x0

    goto :goto_4

    .line 341
    :cond_b
    :goto_5
    sget v0, Lorg/concentus/OpusError;->OPUS_INVALID_PACKET:I

    return v0

    :cond_c
    if-gez v9, :cond_f

    .line 347
    sget v0, Lorg/concentus/OpusError;->OPUS_INVALID_PACKET:I

    return v0

    :cond_d
    if-nez p3, :cond_f

    .line 351
    div-int v9, v6, v12

    mul-int v5, v9, v12

    if-eq v5, v6, :cond_e

    .line 353
    sget v0, Lorg/concentus/OpusError;->OPUS_INVALID_PACKET:I

    return v0

    :cond_e
    const/4 v5, 0x0

    :goto_6
    add-int/lit8 v14, v12, -0x1

    if-ge v5, v14, :cond_f

    add-int v14, p8, v5

    int-to-short v15, v9

    .line 356
    aput-short v15, p7, v14

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_f
    move v5, v7

    move v7, v10

    goto :goto_a

    .line 309
    :cond_10
    :goto_7
    sget v0, Lorg/concentus/OpusError;->OPUS_INVALID_PACKET:I

    return v0

    .line 289
    :cond_11
    new-instance v5, Lorg/concentus/BoxedValueShort;

    aget-short v6, p7, p8

    invoke-direct {v5, v6}, Lorg/concentus/BoxedValueShort;-><init>(S)V

    .line 290
    invoke-static {v0, v7, v9, v5}, Lorg/concentus/OpusPacketInfo;->parse_size([BIILorg/concentus/BoxedValueShort;)I

    move-result v6

    .line 291
    iget-short v5, v5, Lorg/concentus/BoxedValueShort;->Val:S

    aput-short v5, p7, p8

    sub-int/2addr v9, v6

    if-ltz v5, :cond_13

    if-le v5, v9, :cond_12

    goto :goto_8

    :cond_12
    add-int/2addr v7, v6

    sub-int v5, v9, v5

    move v6, v9

    const/4 v13, 0x0

    move v9, v5

    const/4 v5, 0x0

    goto :goto_a

    .line 294
    :cond_13
    :goto_8
    sget v0, Lorg/concentus/OpusError;->OPUS_INVALID_PACKET:I

    return v0

    :cond_14
    if-nez p3, :cond_16

    and-int/lit8 v5, v9, 0x1

    if-eqz v5, :cond_15

    .line 279
    sget v0, Lorg/concentus/OpusError;->OPUS_INVALID_PACKET:I

    return v0

    .line 281
    :cond_15
    div-int/lit8 v5, v9, 0x2

    int-to-short v6, v5

    .line 283
    aput-short v6, p7, p8

    move v6, v9

    const/4 v13, 0x0

    move v9, v5

    move v5, v11

    goto :goto_a

    :cond_16
    move v6, v9

    move v5, v11

    goto :goto_9

    :cond_17
    move v6, v9

    move v12, v11

    const/4 v5, 0x0

    :goto_9
    const/4 v13, 0x0

    :goto_a
    if-eqz p3, :cond_1c

    .line 364
    new-instance v10, Lorg/concentus/BoxedValueShort;

    add-int v14, p8, v12

    sub-int/2addr v14, v11

    aget-short v11, p7, v14

    invoke-direct {v10, v11}, Lorg/concentus/BoxedValueShort;-><init>(S)V

    .line 365
    invoke-static {v0, v7, v6, v10}, Lorg/concentus/OpusPacketInfo;->parse_size([BIILorg/concentus/BoxedValueShort;)I

    move-result v11

    .line 366
    iget-short v10, v10, Lorg/concentus/BoxedValueShort;->Val:S

    aput-short v10, p7, v14

    sub-int/2addr v6, v11

    if-ltz v10, :cond_1b

    if-le v10, v6, :cond_18

    goto :goto_c

    :cond_18
    add-int/2addr v7, v11

    if-eqz v5, :cond_1a

    mul-int/2addr v10, v12

    if-le v10, v6, :cond_19

    .line 375
    sget v0, Lorg/concentus/OpusError;->OPUS_INVALID_PACKET:I

    return v0

    :cond_19
    const/4 v5, 0x0

    :goto_b
    add-int/lit8 v6, v12, -0x1

    if-ge v5, v6, :cond_1e

    add-int v6, p8, v5

    .line 378
    aget-short v9, p7, v14

    aput-short v9, p7, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_1a
    add-int/2addr v11, v10

    if-le v11, v9, :cond_1e

    .line 381
    sget v0, Lorg/concentus/OpusError;->OPUS_INVALID_PACKET:I

    return v0

    .line 369
    :cond_1b
    :goto_c
    sget v0, Lorg/concentus/OpusError;->OPUS_INVALID_PACKET:I

    return v0

    :cond_1c
    const/16 v5, 0x4fb

    if-le v9, v5, :cond_1d

    .line 388
    sget v0, Lorg/concentus/OpusError;->OPUS_INVALID_PACKET:I

    return v0

    :cond_1d
    add-int v5, p8, v12

    sub-int/2addr v5, v11

    int-to-short v6, v9

    .line 390
    aput-short v6, p7, v5

    :cond_1e
    sub-int v5, v7, v1

    .line 393
    iput v5, v3, Lorg/concentus/BoxedValueInt;->Val:I

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v12, :cond_20

    if-eqz p5, :cond_1f

    add-int v5, p6, v3

    .line 399
    array-length v6, v0

    sub-int/2addr v6, v7

    new-array v6, v6, [B

    aput-object v6, p5, v5

    .line 400
    array-length v5, v0

    sub-int/2addr v5, v7

    const/4 v9, 0x0

    invoke-static {v0, v7, v6, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_e

    :cond_1f
    const/4 v9, 0x0

    :goto_e
    add-int v5, p8, v3

    .line 402
    aget-short v5, p7, v5

    add-int/2addr v7, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_20
    sub-int/2addr v7, v1

    add-int/2addr v13, v7

    .line 405
    iput v13, v4, Lorg/concentus/BoxedValueInt;->Val:I

    .line 407
    iput-byte v8, v2, Lorg/concentus/BoxedValueByte;->Val:B

    return v12

    .line 256
    :cond_21
    :goto_f
    sget v0, Lorg/concentus/OpusError;->OPUS_BAD_ARG:I

    return v0
.end method

.method public static parseOpusPacket([BII)Lorg/concentus/OpusPacketInfo;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/concentus/OpusException;
        }
    .end annotation

    .line 75
    invoke-static/range {p0 .. p2}, Lorg/concentus/OpusPacketInfo;->getNumFrames([BII)I

    move-result v0

    .line 77
    new-instance v12, Lorg/concentus/BoxedValueInt;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    .line 78
    new-instance v14, Lorg/concentus/BoxedValueByte;

    invoke-direct {v14, v13}, Lorg/concentus/BoxedValueByte;-><init>(B)V

    .line 79
    new-array v15, v0, [[B

    .line 80
    new-array v8, v0, [S

    .line 81
    new-instance v11, Lorg/concentus/BoxedValueInt;

    invoke-direct {v11, v13}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object v5, v14

    move-object v6, v15

    move-object v10, v12

    .line 82
    invoke-static/range {v1 .. v11}, Lorg/concentus/OpusPacketInfo;->opus_packet_parse_impl([BIIILorg/concentus/BoxedValueByte;[[BI[SILorg/concentus/BoxedValueInt;Lorg/concentus/BoxedValueInt;)I

    move-result v1

    if-ltz v1, :cond_2

    .line 89
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v2, v13

    :goto_0
    if-ge v2, v0, :cond_1

    .line 92
    aget-object v3, v15, v2

    array-length v3, v3

    new-array v4, v3, [Ljava/lang/Byte;

    move v5, v13

    :goto_1
    if-ge v5, v3, :cond_0

    .line 94
    aget-object v6, v15, v2

    aget-byte v6, v6, v5

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 96
    :cond_0
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 99
    :cond_1
    new-instance v0, Lorg/concentus/OpusPacketInfo;

    iget-byte v2, v14, Lorg/concentus/BoxedValueByte;->Val:B

    iget v3, v12, Lorg/concentus/BoxedValueInt;->Val:I

    invoke-direct {v0, v2, v1, v3}, Lorg/concentus/OpusPacketInfo;-><init>(BLjava/util/List;I)V

    return-object v0

    .line 84
    :cond_2
    new-instance v0, Lorg/concentus/OpusException;

    const-string v2, "An error occurred while parsing the packet"

    invoke-direct {v0, v2, v1}, Lorg/concentus/OpusException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method static parse_size([BIILorg/concentus/BoxedValueShort;)I
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ge p2, v1, :cond_0

    .line 224
    iput-short v0, p3, Lorg/concentus/BoxedValueShort;->Val:S

    return v0

    .line 226
    :cond_0
    aget-byte v2, p0, p1

    invoke-static {v2}, Lorg/concentus/Inlines;->SignedByteToUnsignedInt(B)I

    move-result v2

    const/16 v3, 0xfc

    if-ge v2, v3, :cond_1

    .line 227
    aget-byte p0, p0, p1

    invoke-static {p0}, Lorg/concentus/Inlines;->SignedByteToUnsignedInt(B)I

    move-result p0

    int-to-short p0, p0

    iput-short p0, p3, Lorg/concentus/BoxedValueShort;->Val:S

    return v1

    :cond_1
    const/4 v1, 0x2

    if-ge p2, v1, :cond_2

    .line 230
    iput-short v0, p3, Lorg/concentus/BoxedValueShort;->Val:S

    return v0

    :cond_2
    add-int/lit8 p2, p1, 0x1

    .line 233
    aget-byte p2, p0, p2

    invoke-static {p2}, Lorg/concentus/Inlines;->SignedByteToUnsignedInt(B)I

    move-result p2

    mul-int/lit8 p2, p2, 0x4

    aget-byte p0, p0, p1

    invoke-static {p0}, Lorg/concentus/Inlines;->SignedByteToUnsignedInt(B)I

    move-result p0

    add-int/2addr p2, p0

    int-to-short p0, p2

    iput-short p0, p3, Lorg/concentus/BoxedValueShort;->Val:S

    return v1
.end method
