.class public Lorg/concentus/OpusDecoder;
.super Ljava/lang/Object;
.source "OpusDecoder.java"


# static fields
.field private static final SILENCE:[B


# instance fields
.field Celt_Decoder:Lorg/concentus/CeltDecoder;

.field final DecControl:Lorg/concentus/DecControlState;

.field Fs:I

.field SilkDecoder:Lorg/concentus/SilkDecoder;

.field bandwidth:Lorg/concentus/OpusBandwidth;

.field channels:I

.field decode_gain:I

.field frame_size:I

.field last_packet_duration:I

.field mode:Lorg/concentus/OpusMode;

.field prev_mode:Lorg/concentus/OpusMode;

.field prev_redundancy:I

.field rangeFinal:I

.field stream_channels:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    .line 177
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/concentus/OpusDecoder;->SILENCE:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x1t
        -0x1t
    .end array-data
.end method

.method constructor <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lorg/concentus/DecControlState;

    invoke-direct {v0}, Lorg/concentus/DecControlState;-><init>()V

    iput-object v0, p0, Lorg/concentus/OpusDecoder;->DecControl:Lorg/concentus/DecControlState;

    .line 70
    new-instance v0, Lorg/concentus/SilkDecoder;

    invoke-direct {v0}, Lorg/concentus/SilkDecoder;-><init>()V

    iput-object v0, p0, Lorg/concentus/OpusDecoder;->SilkDecoder:Lorg/concentus/SilkDecoder;

    .line 71
    new-instance v0, Lorg/concentus/CeltDecoder;

    invoke-direct {v0}, Lorg/concentus/CeltDecoder;-><init>()V

    iput-object v0, p0, Lorg/concentus/OpusDecoder;->Celt_Decoder:Lorg/concentus/CeltDecoder;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/concentus/OpusException;
        }
    .end annotation

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lorg/concentus/DecControlState;

    invoke-direct {v0}, Lorg/concentus/DecControlState;-><init>()V

    iput-object v0, p0, Lorg/concentus/OpusDecoder;->DecControl:Lorg/concentus/DecControlState;

    .line 70
    new-instance v0, Lorg/concentus/SilkDecoder;

    invoke-direct {v0}, Lorg/concentus/SilkDecoder;-><init>()V

    iput-object v0, p0, Lorg/concentus/OpusDecoder;->SilkDecoder:Lorg/concentus/SilkDecoder;

    .line 71
    new-instance v0, Lorg/concentus/CeltDecoder;

    invoke-direct {v0}, Lorg/concentus/CeltDecoder;-><init>()V

    iput-object v0, p0, Lorg/concentus/OpusDecoder;->Celt_Decoder:Lorg/concentus/CeltDecoder;

    const v0, 0xbb80

    if-eq p1, v0, :cond_1

    const/16 v0, 0x5dc0

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3e80

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2ee0

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1f40

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 162
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Sample rate is invalid (must be 8/12/16/24/48 Khz)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    goto :goto_1

    .line 165
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Number of channels must be 1 or 2"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 168
    :cond_3
    :goto_1
    invoke-virtual {p0, p1, p2}, Lorg/concentus/OpusDecoder;->opus_decoder_init(II)I

    move-result p1

    .line 169
    sget p2, Lorg/concentus/OpusError;->OPUS_OK:I

    if-eq p1, p2, :cond_5

    .line 170
    sget p2, Lorg/concentus/OpusError;->OPUS_BAD_ARG:I

    if-ne p1, p2, :cond_4

    .line 171
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "OPUS_BAD_ARG when creating decoder"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 173
    :cond_4
    new-instance p2, Lorg/concentus/OpusException;

    const-string v0, "Error while initializing decoder"

    invoke-direct {p2, v0, p1}, Lorg/concentus/OpusException;-><init>(Ljava/lang/String;I)V

    throw p2

    :cond_5
    return-void
.end method


# virtual methods
.method public decode([BII[SIIZ)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/concentus/OpusException;
        }
    .end annotation

    if-lez p6, :cond_2

    .line 694
    :try_start_0
    new-instance v10, Lorg/concentus/BoxedValueInt;

    const/4 v0, 0x0

    invoke-direct {v10, v0}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    .line 695
    invoke-virtual/range {v1 .. v11}, Lorg/concentus/OpusDecoder;->opus_decode_native([BII[SIIIILorg/concentus/BoxedValueInt;I)I

    move-result v0

    if-gez v0, :cond_1

    .line 699
    sget v1, Lorg/concentus/OpusError;->OPUS_BAD_ARG:I

    if-ne v0, v1, :cond_0

    .line 700
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "OPUS_BAD_ARG while decoding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 702
    :cond_0
    new-instance v1, Lorg/concentus/OpusException;

    const-string v2, "An error occurred during decoding"

    invoke-direct {v1, v2, v0}, Lorg/concentus/OpusException;-><init>(Ljava/lang/String;I)V

    throw v1
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return v0

    :catch_0
    move-exception v0

    .line 707
    new-instance v1, Lorg/concentus/OpusException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Internal error during decoding: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/ArithmeticException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/concentus/OpusException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 690
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Frame size must be <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBandwidth()Lorg/concentus/OpusBandwidth;
    .locals 1

    .line 712
    iget-object v0, p0, Lorg/concentus/OpusDecoder;->bandwidth:Lorg/concentus/OpusBandwidth;

    return-object v0
.end method

.method public getFinalRange()I
    .locals 1

    .line 716
    iget v0, p0, Lorg/concentus/OpusDecoder;->rangeFinal:I

    return v0
.end method

.method public getGain()I
    .locals 1

    .line 732
    iget v0, p0, Lorg/concentus/OpusDecoder;->decode_gain:I

    return v0
.end method

.method public getLastPacketDuration()I
    .locals 1

    .line 744
    iget v0, p0, Lorg/concentus/OpusDecoder;->last_packet_duration:I

    return v0
.end method

.method public getPitch()I
    .locals 2

    .line 724
    iget-object v0, p0, Lorg/concentus/OpusDecoder;->prev_mode:Lorg/concentus/OpusMode;

    sget-object v1, Lorg/concentus/OpusMode;->MODE_CELT_ONLY:Lorg/concentus/OpusMode;

    if-ne v0, v1, :cond_0

    .line 725
    iget-object v0, p0, Lorg/concentus/OpusDecoder;->Celt_Decoder:Lorg/concentus/CeltDecoder;

    invoke-virtual {v0}, Lorg/concentus/CeltDecoder;->GetPitch()I

    move-result v0

    return v0

    .line 727
    :cond_0
    iget-object v0, p0, Lorg/concentus/OpusDecoder;->DecControl:Lorg/concentus/DecControlState;

    iget v0, v0, Lorg/concentus/DecControlState;->prevPitchLag:I

    return v0
.end method

.method public getSampleRate()I
    .locals 1

    .line 720
    iget v0, p0, Lorg/concentus/OpusDecoder;->Fs:I

    return v0
.end method

.method opus_decode_frame([BII[SIII)I
    .locals 38

    move-object/from16 v8, p0

    move/from16 v15, p2

    move/from16 v9, p3

    move/from16 v0, p6

    .line 184
    new-instance v14, Lorg/concentus/EntropyCoder;

    invoke-direct {v14}, Lorg/concentus/EntropyCoder;-><init>()V

    .line 209
    iget-object v10, v8, Lorg/concentus/OpusDecoder;->SilkDecoder:Lorg/concentus/SilkDecoder;

    .line 210
    iget-object v13, v8, Lorg/concentus/OpusDecoder;->Celt_Decoder:Lorg/concentus/CeltDecoder;

    .line 211
    iget v1, v8, Lorg/concentus/OpusDecoder;->Fs:I

    div-int/lit8 v11, v1, 0x32

    shr-int/lit8 v12, v11, 0x1

    shr-int/lit8 v7, v11, 0x2

    shr-int/lit8 v6, v11, 0x3

    if-ge v0, v6, :cond_0

    .line 217
    sget v0, Lorg/concentus/OpusError;->OPUS_BUFFER_TOO_SMALL:I

    return v0

    .line 220
    :cond_0
    div-int/lit8 v1, v1, 0x19

    const/4 v5, 0x3

    mul-int/2addr v1, v5

    invoke-static {v0, v1}, Lorg/concentus/Inlines;->IMIN(II)I

    move-result v0

    const/16 v25, 0x0

    const/4 v4, 0x1

    if-gt v9, v4, :cond_1

    .line 225
    iget v1, v8, Lorg/concentus/OpusDecoder;->frame_size:I

    invoke-static {v0, v1}, Lorg/concentus/Inlines;->IMIN(II)I

    move-result v0

    move v3, v0

    move-object/from16 v2, v25

    goto :goto_0

    :cond_1
    move-object/from16 v2, p1

    move v3, v0

    :goto_0
    const/4 v1, 0x0

    if-eqz v2, :cond_2

    .line 228
    iget v0, v8, Lorg/concentus/OpusDecoder;->frame_size:I

    .line 229
    iget-object v4, v8, Lorg/concentus/OpusDecoder;->mode:Lorg/concentus/OpusMode;

    .line 230
    invoke-virtual {v14, v2, v15, v9}, Lorg/concentus/EntropyCoder;->dec_init([BII)V

    move-object/from16 v37, v4

    move v4, v0

    move-object/from16 v0, v37

    goto :goto_3

    .line 233
    :cond_2
    iget-object v4, v8, Lorg/concentus/OpusDecoder;->prev_mode:Lorg/concentus/OpusMode;

    .line 235
    sget-object v0, Lorg/concentus/OpusMode;->MODE_UNKNOWN:Lorg/concentus/OpusMode;

    if-ne v4, v0, :cond_4

    move/from16 v0, p5

    .line 237
    :goto_1
    iget v2, v8, Lorg/concentus/OpusDecoder;->channels:I

    mul-int/2addr v2, v3

    add-int v2, p5, v2

    if-ge v0, v2, :cond_3

    .line 238
    aput-short v1, p4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return v3

    :cond_4
    if-le v3, v11, :cond_7

    move/from16 v9, p5

    move v10, v3

    .line 248
    :goto_2
    invoke-static {v10, v11}, Lorg/concentus/Inlines;->IMIN(II)I

    move-result v6

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v12, v3

    move v3, v4

    move-object/from16 v4, p4

    move v5, v9

    invoke-virtual/range {v0 .. v7}, Lorg/concentus/OpusDecoder;->opus_decode_frame([BII[SIII)I

    move-result v0

    if-gez v0, :cond_5

    return v0

    .line 253
    :cond_5
    iget v1, v8, Lorg/concentus/OpusDecoder;->channels:I

    mul-int/2addr v1, v0

    add-int/2addr v9, v1

    sub-int/2addr v10, v0

    if-gtz v10, :cond_6

    return v12

    :cond_6
    move v3, v12

    goto :goto_2

    :cond_7
    if-ge v3, v11, :cond_9

    if-le v3, v12, :cond_8

    move-object v0, v4

    move v4, v12

    goto :goto_3

    .line 261
    :cond_8
    sget-object v0, Lorg/concentus/OpusMode;->MODE_SILK_ONLY:Lorg/concentus/OpusMode;

    if-eq v4, v0, :cond_9

    if-le v3, v7, :cond_9

    if-ge v3, v12, :cond_9

    move-object v0, v4

    move v4, v7

    goto :goto_3

    :cond_9
    move-object v0, v4

    move v4, v3

    .line 269
    :goto_3
    sget-object v1, Lorg/concentus/OpusMode;->MODE_CELT_ONLY:Lorg/concentus/OpusMode;

    if-eq v0, v1, :cond_a

    if-lt v3, v12, :cond_a

    const/16 v26, 0x1

    goto :goto_4

    :cond_a
    const/16 v26, 0x0

    :goto_4
    if-eqz v2, :cond_e

    .line 273
    iget-object v1, v8, Lorg/concentus/OpusDecoder;->prev_mode:Lorg/concentus/OpusMode;

    sget-object v5, Lorg/concentus/OpusMode;->MODE_UNKNOWN:Lorg/concentus/OpusMode;

    if-eq v1, v5, :cond_e

    iget-object v1, v8, Lorg/concentus/OpusDecoder;->prev_mode:Lorg/concentus/OpusMode;

    sget-object v5, Lorg/concentus/OpusMode;->MODE_AUTO:Lorg/concentus/OpusMode;

    if-eq v1, v5, :cond_e

    sget-object v1, Lorg/concentus/OpusMode;->MODE_CELT_ONLY:Lorg/concentus/OpusMode;

    if-ne v0, v1, :cond_b

    iget-object v1, v8, Lorg/concentus/OpusDecoder;->prev_mode:Lorg/concentus/OpusMode;

    sget-object v5, Lorg/concentus/OpusMode;->MODE_CELT_ONLY:Lorg/concentus/OpusMode;

    if-eq v1, v5, :cond_b

    iget v1, v8, Lorg/concentus/OpusDecoder;->prev_redundancy:I

    if-eqz v1, :cond_c

    :cond_b
    sget-object v1, Lorg/concentus/OpusMode;->MODE_CELT_ONLY:Lorg/concentus/OpusMode;

    if-eq v0, v1, :cond_e

    iget-object v1, v8, Lorg/concentus/OpusDecoder;->prev_mode:Lorg/concentus/OpusMode;

    sget-object v5, Lorg/concentus/OpusMode;->MODE_CELT_ONLY:Lorg/concentus/OpusMode;

    if-ne v1, v5, :cond_e

    .line 277
    :cond_c
    sget-object v1, Lorg/concentus/OpusMode;->MODE_CELT_ONLY:Lorg/concentus/OpusMode;

    if-ne v0, v1, :cond_d

    .line 278
    iget v1, v8, Lorg/concentus/OpusDecoder;->channels:I

    mul-int/2addr v1, v7

    const/16 v17, 0x0

    goto :goto_5

    .line 280
    :cond_d
    iget v1, v8, Lorg/concentus/OpusDecoder;->channels:I

    mul-int/2addr v1, v7

    move/from16 v17, v1

    const/4 v1, 0x0

    :goto_5
    const/16 v18, 0x1

    goto :goto_6

    :cond_e
    const/4 v1, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 283
    :goto_6
    new-array v5, v1, [S

    if-eqz v18, :cond_f

    .line 284
    sget-object v1, Lorg/concentus/OpusMode;->MODE_CELT_ONLY:Lorg/concentus/OpusMode;

    if-ne v0, v1, :cond_f

    .line 286
    invoke-static {v7, v4}, Lorg/concentus/Inlines;->IMIN(II)I

    move-result v19

    const/16 v20, 0x0

    const/4 v1, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    const/16 v28, 0x0

    move-object/from16 v29, v2

    move/from16 v2, v21

    move/from16 v30, v3

    move/from16 v3, v22

    move/from16 v31, v4

    move-object v4, v5

    move-object/from16 v16, v5

    move/from16 v5, v23

    move/from16 p1, v6

    move/from16 v6, v19

    move/from16 v34, v11

    move v11, v7

    move/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Lorg/concentus/OpusDecoder;->opus_decode_frame([BII[SIII)I

    goto :goto_7

    :cond_f
    move-object/from16 v27, v0

    move-object/from16 v29, v2

    move/from16 v30, v3

    move/from16 v31, v4

    move/from16 p1, v6

    move/from16 v34, v11

    const/16 v28, 0x0

    move v11, v7

    move-object/from16 v16, v25

    :goto_7
    move/from16 v0, v30

    move/from16 v7, v31

    if-le v7, v0, :cond_10

    .line 291
    sget v0, Lorg/concentus/OpusError;->OPUS_BAD_ARG:I

    return v0

    .line 297
    :cond_10
    sget-object v0, Lorg/concentus/OpusMode;->MODE_CELT_ONLY:Lorg/concentus/OpusMode;

    move-object/from16 v6, v27

    if-eq v6, v0, :cond_11

    if-nez v26, :cond_11

    invoke-static {v12, v7}, Lorg/concentus/Inlines;->IMAX(II)I

    move-result v0

    iget v1, v8, Lorg/concentus/OpusDecoder;->channels:I

    mul-int/2addr v1, v0

    goto :goto_8

    :cond_11
    move/from16 v1, v28

    .line 298
    :goto_8
    new-array v12, v1, [S

    .line 301
    sget-object v0, Lorg/concentus/OpusMode;->MODE_CELT_ONLY:Lorg/concentus/OpusMode;

    if-eq v6, v0, :cond_1e

    if-eqz v26, :cond_12

    move-object/from16 v4, p4

    move/from16 v1, p5

    goto :goto_9

    :cond_12
    move-object v4, v12

    move/from16 v1, v28

    .line 314
    :goto_9
    iget-object v0, v8, Lorg/concentus/OpusDecoder;->prev_mode:Lorg/concentus/OpusMode;

    sget-object v2, Lorg/concentus/OpusMode;->MODE_CELT_ONLY:Lorg/concentus/OpusMode;

    if-ne v0, v2, :cond_13

    .line 315
    invoke-static {v10}, Lorg/concentus/DecodeAPI;->silk_InitDecoder(Lorg/concentus/SilkDecoder;)I

    .line 319
    :cond_13
    iget-object v0, v8, Lorg/concentus/OpusDecoder;->DecControl:Lorg/concentus/DecControlState;

    mul-int/lit16 v2, v7, 0x3e8

    iget v3, v8, Lorg/concentus/OpusDecoder;->Fs:I

    div-int/2addr v2, v3

    const/16 v3, 0xa

    invoke-static {v3, v2}, Lorg/concentus/Inlines;->IMAX(II)I

    move-result v2

    iput v2, v0, Lorg/concentus/DecControlState;->payloadSize_ms:I

    if-eqz v29, :cond_18

    .line 322
    iget-object v0, v8, Lorg/concentus/OpusDecoder;->DecControl:Lorg/concentus/DecControlState;

    iget v2, v8, Lorg/concentus/OpusDecoder;->stream_channels:I

    iput v2, v0, Lorg/concentus/DecControlState;->nChannelsInternal:I

    .line 323
    sget-object v0, Lorg/concentus/OpusMode;->MODE_SILK_ONLY:Lorg/concentus/OpusMode;

    const/16 v2, 0x3e80

    if-ne v6, v0, :cond_17

    .line 324
    iget-object v0, v8, Lorg/concentus/OpusDecoder;->bandwidth:Lorg/concentus/OpusBandwidth;

    sget-object v3, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_NARROWBAND:Lorg/concentus/OpusBandwidth;

    if-ne v0, v3, :cond_14

    .line 325
    iget-object v0, v8, Lorg/concentus/OpusDecoder;->DecControl:Lorg/concentus/DecControlState;

    const/16 v2, 0x1f40

    iput v2, v0, Lorg/concentus/DecControlState;->internalSampleRate:I

    goto :goto_a

    .line 326
    :cond_14
    iget-object v0, v8, Lorg/concentus/OpusDecoder;->bandwidth:Lorg/concentus/OpusBandwidth;

    sget-object v3, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_MEDIUMBAND:Lorg/concentus/OpusBandwidth;

    if-ne v0, v3, :cond_15

    .line 327
    iget-object v0, v8, Lorg/concentus/OpusDecoder;->DecControl:Lorg/concentus/DecControlState;

    const/16 v2, 0x2ee0

    iput v2, v0, Lorg/concentus/DecControlState;->internalSampleRate:I

    goto :goto_a

    .line 328
    :cond_15
    iget-object v0, v8, Lorg/concentus/OpusDecoder;->bandwidth:Lorg/concentus/OpusBandwidth;

    sget-object v3, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_WIDEBAND:Lorg/concentus/OpusBandwidth;

    if-ne v0, v3, :cond_16

    .line 329
    iget-object v0, v8, Lorg/concentus/OpusDecoder;->DecControl:Lorg/concentus/DecControlState;

    iput v2, v0, Lorg/concentus/DecControlState;->internalSampleRate:I

    goto :goto_a

    .line 331
    :cond_16
    iget-object v0, v8, Lorg/concentus/OpusDecoder;->DecControl:Lorg/concentus/DecControlState;

    iput v2, v0, Lorg/concentus/DecControlState;->internalSampleRate:I

    .line 332
    invoke-static/range {v28 .. v28}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    goto :goto_a

    .line 336
    :cond_17
    iget-object v0, v8, Lorg/concentus/OpusDecoder;->DecControl:Lorg/concentus/DecControlState;

    iput v2, v0, Lorg/concentus/DecControlState;->internalSampleRate:I

    :cond_18
    :goto_a
    if-nez v29, :cond_19

    const/16 v19, 0x1

    goto :goto_b

    :cond_19
    mul-int/lit8 v0, p7, 0x2

    move/from16 v19, v0

    :goto_b
    move v5, v1

    move/from16 v20, v28

    :goto_c
    if-nez v20, :cond_1a

    const/4 v3, 0x1

    goto :goto_d

    :cond_1a
    move/from16 v3, v28

    .line 345
    :goto_d
    new-instance v2, Lorg/concentus/BoxedValueInt;

    move/from16 v1, v28

    invoke-direct {v2, v1}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    .line 346
    iget-object v0, v8, Lorg/concentus/OpusDecoder;->DecControl:Lorg/concentus/DecControlState;

    move-object/from16 v21, v0

    move-object v0, v10

    move-object/from16 v27, v12

    move v12, v1

    move-object/from16 v1, v21

    move-object/from16 p6, v2

    move/from16 v2, v19

    move-object/from16 v21, v4

    move-object v4, v14

    move/from16 v22, v5

    move-object/from16 v5, v21

    move-object/from16 v35, v6

    move/from16 v6, v22

    move v12, v7

    move-object/from16 v7, p6

    invoke-static/range {v0 .. v7}, Lorg/concentus/DecodeAPI;->silk_Decode(Lorg/concentus/SilkDecoder;Lorg/concentus/DecControlState;IILorg/concentus/EntropyCoder;[SILorg/concentus/BoxedValueInt;)I

    move-result v0

    move-object/from16 v1, p6

    .line 348
    iget v4, v1, Lorg/concentus/BoxedValueInt;->Val:I

    if-eqz v0, :cond_1c

    if-eqz v19, :cond_1b

    .line 354
    iget v0, v8, Lorg/concentus/OpusDecoder;->channels:I

    mul-int v4, v12, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v4}, Lorg/concentus/Arrays;->MemSetWithOffset([SSII)V

    move v4, v12

    goto :goto_e

    .line 357
    :cond_1b
    sget v0, Lorg/concentus/OpusError;->OPUS_INTERNAL_ERROR:I

    return v0

    :cond_1c
    move-object/from16 v0, v21

    move/from16 v1, v22

    .line 360
    :goto_e
    iget v2, v8, Lorg/concentus/OpusDecoder;->channels:I

    mul-int/2addr v2, v4

    add-int v5, v1, v2

    add-int v1, v20, v4

    if-lt v1, v12, :cond_1d

    goto :goto_f

    :cond_1d
    move-object v4, v0

    move/from16 v20, v1

    move v7, v12

    move-object/from16 v12, v27

    move-object/from16 v6, v35

    const/16 v28, 0x0

    goto :goto_c

    :cond_1e
    move-object/from16 v35, v6

    move-object/from16 v27, v12

    move v12, v7

    :goto_f
    const/16 v1, 0x11

    const/4 v0, 0x2

    if-nez p7, :cond_24

    .line 366
    sget-object v2, Lorg/concentus/OpusMode;->MODE_CELT_ONLY:Lorg/concentus/OpusMode;

    move-object/from16 v10, v35

    if-eq v10, v2, :cond_25

    if-eqz v29, :cond_25

    .line 367
    invoke-virtual {v14}, Lorg/concentus/EntropyCoder;->tell()I

    move-result v2

    add-int/2addr v2, v1

    iget-object v3, v8, Lorg/concentus/OpusDecoder;->mode:Lorg/concentus/OpusMode;

    sget-object v4, Lorg/concentus/OpusMode;->MODE_HYBRID:Lorg/concentus/OpusMode;

    if-ne v3, v4, :cond_1f

    const/4 v4, 0x1

    goto :goto_10

    :cond_1f
    const/4 v4, 0x0

    :goto_10
    mul-int/lit8 v4, v4, 0x14

    add-int/2addr v2, v4

    mul-int/lit8 v3, v9, 0x8

    if-gt v2, v3, :cond_25

    .line 369
    sget-object v2, Lorg/concentus/OpusMode;->MODE_HYBRID:Lorg/concentus/OpusMode;

    if-ne v10, v2, :cond_20

    const-wide/16 v2, 0xc

    .line 370
    invoke-virtual {v14, v2, v3}, Lorg/concentus/EntropyCoder;->dec_bit_logp(J)I

    move-result v4

    goto :goto_11

    :cond_20
    const/4 v4, 0x1

    :goto_11
    if-eqz v4, :cond_23

    const-wide/16 v2, 0x1

    .line 375
    invoke-virtual {v14, v2, v3}, Lorg/concentus/EntropyCoder;->dec_bit_logp(J)I

    move-result v2

    .line 378
    sget-object v3, Lorg/concentus/OpusMode;->MODE_HYBRID:Lorg/concentus/OpusMode;

    if-ne v10, v3, :cond_21

    const-wide/16 v5, 0x100

    .line 379
    invoke-virtual {v14, v5, v6}, Lorg/concentus/EntropyCoder;->dec_uint(J)J

    move-result-wide v5

    long-to-int v3, v5

    add-int/2addr v3, v0

    const/4 v5, 0x3

    goto :goto_12

    .line 380
    :cond_21
    invoke-virtual {v14}, Lorg/concentus/EntropyCoder;->tell()I

    move-result v3

    add-int/lit8 v3, v3, 0x7

    const/4 v5, 0x3

    shr-int/2addr v3, v5

    sub-int v3, v9, v3

    :goto_12
    sub-int v6, v9, v3

    mul-int/lit8 v7, v6, 0x8

    .line 384
    invoke-virtual {v14}, Lorg/concentus/EntropyCoder;->tell()I

    move-result v9

    if-ge v7, v9, :cond_22

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 390
    :cond_22
    iget v7, v14, Lorg/concentus/EntropyCoder;->storage:I

    sub-int/2addr v7, v3

    iput v7, v14, Lorg/concentus/EntropyCoder;->storage:I

    move/from16 v31, v2

    move/from16 v33, v3

    move/from16 v30, v4

    move v9, v6

    goto :goto_14

    :cond_23
    const/4 v5, 0x3

    move/from16 v30, v4

    goto :goto_13

    :cond_24
    move-object/from16 v10, v35

    :cond_25
    const/4 v5, 0x3

    const/16 v30, 0x0

    :goto_13
    const/16 v31, 0x0

    const/16 v33, 0x0

    .line 393
    :goto_14
    sget-object v2, Lorg/concentus/OpusMode;->MODE_CELT_ONLY:Lorg/concentus/OpusMode;

    if-eq v10, v2, :cond_26

    move v7, v1

    goto :goto_15

    :cond_26
    const/4 v7, 0x0

    .line 400
    :goto_15
    sget-object v2, Lorg/concentus/OpusDecoder$1;->$SwitchMap$org$concentus$OpusBandwidth:[I

    iget-object v3, v8, Lorg/concentus/OpusDecoder;->bandwidth:Lorg/concentus/OpusBandwidth;

    invoke-virtual {v3}, Lorg/concentus/OpusBandwidth;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v6, 0x1

    if-eq v2, v6, :cond_28

    if-eq v2, v0, :cond_29

    if-eq v2, v5, :cond_29

    const/4 v0, 0x4

    if-eq v2, v0, :cond_27

    const/16 v1, 0x15

    goto :goto_16

    :cond_27
    const/16 v1, 0x13

    goto :goto_16

    :cond_28
    const/16 v1, 0xd

    .line 415
    :cond_29
    :goto_16
    invoke-virtual {v13, v1}, Lorg/concentus/CeltDecoder;->SetEndBand(I)V

    .line 416
    iget v0, v8, Lorg/concentus/OpusDecoder;->stream_channels:I

    invoke-virtual {v13, v0}, Lorg/concentus/CeltDecoder;->SetChannels(I)V

    if-eqz v30, :cond_2a

    const/4 v1, 0x0

    const/16 v32, 0x0

    goto :goto_17

    :cond_2a
    move/from16 v1, v17

    move/from16 v32, v18

    .line 424
    :goto_17
    new-array v5, v1, [S

    if-eqz v32, :cond_2b

    .line 426
    sget-object v0, Lorg/concentus/OpusMode;->MODE_CELT_ONLY:Lorg/concentus/OpusMode;

    if-eq v10, v0, :cond_2b

    .line 428
    invoke-static {v11, v12}, Lorg/concentus/Inlines;->IMIN(II)I

    move-result v16

    const/16 v17, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object v4, v5

    move-object/from16 v19, v5

    move/from16 v5, v18

    move/from16 v6, v16

    move-object/from16 v35, v14

    move v14, v7

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Lorg/concentus/OpusDecoder;->opus_decode_frame([BII[SIII)I

    move-object/from16 v0, v19

    goto :goto_18

    :cond_2b
    move-object/from16 v35, v14

    move v14, v7

    move-object/from16 v0, v16

    :goto_18
    if-eqz v30, :cond_2c

    .line 432
    iget v1, v8, Lorg/concentus/OpusDecoder;->channels:I

    mul-int/2addr v1, v11

    goto :goto_19

    :cond_2c
    const/4 v1, 0x0

    .line 433
    :goto_19
    new-array v1, v1, [S

    if-eqz v30, :cond_2d

    if-eqz v31, :cond_2d

    const/4 v2, 0x0

    .line 437
    invoke-virtual {v13, v2}, Lorg/concentus/CeltDecoder;->SetStartBand(I)V

    add-int v18, v15, v9

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v13

    move-object/from16 v17, v29

    move/from16 v19, v33

    move-object/from16 v20, v1

    move/from16 v22, v11

    .line 438
    invoke-virtual/range {v16 .. v24}, Lorg/concentus/CeltDecoder;->celt_decode_with_ec([BII[SIILorg/concentus/EntropyCoder;I)I

    .line 440
    invoke-virtual {v13}, Lorg/concentus/CeltDecoder;->GetFinalRange()I

    move-result v3

    goto :goto_1a

    :cond_2d
    const/4 v2, 0x0

    move v3, v2

    .line 444
    :goto_1a
    invoke-virtual {v13, v14}, Lorg/concentus/CeltDecoder;->SetStartBand(I)V

    .line 446
    sget-object v4, Lorg/concentus/OpusMode;->MODE_SILK_ONLY:Lorg/concentus/OpusMode;

    if-eq v10, v4, :cond_30

    move/from16 v4, v34

    .line 447
    invoke-static {v4, v12}, Lorg/concentus/Inlines;->IMIN(II)I

    move-result v4

    .line 449
    iget-object v5, v8, Lorg/concentus/OpusDecoder;->prev_mode:Lorg/concentus/OpusMode;

    if-eq v10, v5, :cond_2e

    sget-object v6, Lorg/concentus/OpusMode;->MODE_AUTO:Lorg/concentus/OpusMode;

    if-eq v5, v6, :cond_2e

    iget-object v5, v8, Lorg/concentus/OpusDecoder;->prev_mode:Lorg/concentus/OpusMode;

    sget-object v6, Lorg/concentus/OpusMode;->MODE_UNKNOWN:Lorg/concentus/OpusMode;

    if-eq v5, v6, :cond_2e

    iget v5, v8, Lorg/concentus/OpusDecoder;->prev_redundancy:I

    if-nez v5, :cond_2e

    .line 450
    invoke-virtual {v13}, Lorg/concentus/CeltDecoder;->ResetState()V

    :cond_2e
    move v6, v9

    if-eqz p7, :cond_2f

    goto :goto_1b

    :cond_2f
    move-object/from16 v25, v29

    :goto_1b
    move-object v9, v13

    move-object v5, v10

    move-object/from16 v10, v25

    move v7, v11

    move/from16 v11, p2

    move/from16 p3, v3

    move v14, v12

    move v3, v2

    move-object/from16 v2, v27

    move v12, v6

    move-object/from16 v36, v13

    move-object/from16 v13, p4

    move v3, v14

    move-object/from16 p6, v35

    move/from16 v14, p5

    move v15, v4

    move-object/from16 v16, p6

    move/from16 v17, v26

    .line 453
    invoke-virtual/range {v9 .. v17}, Lorg/concentus/CeltDecoder;->celt_decode_with_ec([BII[SIILorg/concentus/EntropyCoder;I)I

    move-result v4

    move/from16 v24, v4

    move-object/from16 v4, v36

    goto :goto_1e

    :cond_30
    move/from16 p3, v3

    move v6, v9

    move-object v5, v10

    move v7, v11

    move v3, v12

    move-object/from16 v36, v13

    move-object/from16 v2, v27

    move-object/from16 p6, v35

    if-nez v26, :cond_31

    move/from16 v4, p5

    .line 457
    :goto_1c
    iget v9, v8, Lorg/concentus/OpusDecoder;->channels:I

    mul-int/2addr v9, v3

    add-int v9, v9, p5

    if-ge v4, v9, :cond_31

    const/4 v9, 0x0

    .line 458
    aput-short v9, p4, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 463
    :cond_31
    iget-object v4, v8, Lorg/concentus/OpusDecoder;->prev_mode:Lorg/concentus/OpusMode;

    sget-object v9, Lorg/concentus/OpusMode;->MODE_HYBRID:Lorg/concentus/OpusMode;

    if-ne v4, v9, :cond_33

    if-eqz v30, :cond_32

    if-eqz v31, :cond_32

    iget v4, v8, Lorg/concentus/OpusDecoder;->prev_redundancy:I

    if-nez v4, :cond_33

    :cond_32
    move-object/from16 v4, v36

    const/4 v9, 0x0

    .line 464
    invoke-virtual {v4, v9}, Lorg/concentus/CeltDecoder;->SetStartBand(I)V

    .line 465
    sget-object v10, Lorg/concentus/OpusDecoder;->SILENCE:[B

    const/4 v12, 0x2

    const/16 v16, 0x0

    const/4 v11, 0x0

    move-object v9, v4

    move-object/from16 v13, p4

    move/from16 v14, p5

    move/from16 v15, p1

    move/from16 v17, v26

    invoke-virtual/range {v9 .. v17}, Lorg/concentus/CeltDecoder;->celt_decode_with_ec([BII[SIILorg/concentus/EntropyCoder;I)I

    goto :goto_1d

    :cond_33
    move-object/from16 v4, v36

    :goto_1d
    const/16 v24, 0x0

    .line 469
    :goto_1e
    sget-object v9, Lorg/concentus/OpusMode;->MODE_CELT_ONLY:Lorg/concentus/OpusMode;

    if-eq v5, v9, :cond_34

    if-nez v26, :cond_34

    const/4 v9, 0x0

    .line 470
    :goto_1f
    iget v10, v8, Lorg/concentus/OpusDecoder;->channels:I

    mul-int/2addr v10, v3

    if-ge v9, v10, :cond_34

    add-int v10, p5, v9

    .line 471
    aget-short v11, p4, v10

    aget-short v12, v2, v9

    invoke-static {v11, v12}, Lorg/concentus/Inlines;->ADD32(II)I

    move-result v11

    invoke-static {v11}, Lorg/concentus/Inlines;->SAT16(I)S

    move-result v11

    aput-short v11, p4, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_1f

    .line 475
    :cond_34
    invoke-virtual {v4}, Lorg/concentus/CeltDecoder;->GetMode()Lorg/concentus/CeltMode;

    move-result-object v2

    iget-object v2, v2, Lorg/concentus/CeltMode;->window:[I

    if-eqz v30, :cond_35

    if-nez v31, :cond_35

    .line 479
    invoke-virtual {v4}, Lorg/concentus/CeltDecoder;->ResetState()V

    const/4 v9, 0x0

    .line 480
    invoke-virtual {v4, v9}, Lorg/concentus/CeltDecoder;->SetStartBand(I)V

    add-int v17, p2, v6

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v20, 0x0

    move-object v15, v4

    move-object/from16 v16, v29

    move/from16 v18, v33

    move-object/from16 v19, v1

    move/from16 v21, v7

    .line 482
    invoke-virtual/range {v15 .. v23}, Lorg/concentus/CeltDecoder;->celt_decode_with_ec([BII[SIILorg/concentus/EntropyCoder;I)I

    .line 483
    invoke-virtual {v4}, Lorg/concentus/CeltDecoder;->GetFinalRange()I

    move-result v4

    .line 484
    iget v15, v8, Lorg/concentus/OpusDecoder;->channels:I

    move/from16 v14, p1

    sub-int v9, v3, v14

    mul-int v10, v15, v9

    add-int v10, p5, v10

    mul-int v12, v15, v14

    mul-int/2addr v9, v15

    add-int v16, p5, v9

    iget v13, v8, Lorg/concentus/OpusDecoder;->Fs:I

    move-object/from16 v9, p4

    move-object v11, v1

    move/from16 v18, v13

    move-object/from16 v13, p4

    move/from16 v14, v16

    move/from16 v16, v15

    move/from16 v15, p1

    move-object/from16 v17, v2

    invoke-static/range {v9 .. v18}, Lorg/concentus/CodecHelpers;->smooth_fade([SI[SI[SIII[II)V

    goto :goto_20

    :cond_35
    move/from16 v4, p3

    :goto_20
    if-eqz v30, :cond_38

    if-eqz v31, :cond_38

    const/4 v9, 0x0

    .line 488
    :goto_21
    iget v15, v8, Lorg/concentus/OpusDecoder;->channels:I

    if-ge v9, v15, :cond_37

    move/from16 v14, p1

    const/4 v10, 0x0

    :goto_22
    if-ge v10, v14, :cond_36

    .line 490
    iget v11, v8, Lorg/concentus/OpusDecoder;->channels:I

    mul-int v12, v11, v10

    add-int/2addr v12, v9

    add-int v12, v12, p5

    mul-int/2addr v11, v10

    add-int/2addr v11, v9

    aget-short v11, v1, v11

    aput-short v11, p4, v12

    add-int/lit8 v10, v10, 0x1

    goto :goto_22

    :cond_36
    add-int/lit8 v9, v9, 0x1

    move/from16 p1, v14

    goto :goto_21

    :cond_37
    move/from16 v14, p1

    mul-int v10, v15, v14

    mul-int v9, v15, v14

    add-int v12, p5, v9

    mul-int v9, v15, v14

    add-int v16, p5, v9

    .line 493
    iget v13, v8, Lorg/concentus/OpusDecoder;->Fs:I

    move-object v9, v1

    move-object/from16 v11, p4

    move v1, v13

    move-object/from16 v13, p4

    move/from16 v19, v14

    move/from16 v14, v16

    move/from16 v16, v15

    move/from16 v15, v19

    move-object/from16 v17, v2

    move/from16 v18, v1

    invoke-static/range {v9 .. v18}, Lorg/concentus/CodecHelpers;->smooth_fade([SI[SI[SIII[II)V

    goto :goto_23

    :cond_38
    move/from16 v19, p1

    :goto_23
    if-eqz v32, :cond_3b

    if-lt v3, v7, :cond_3a

    const/4 v1, 0x0

    .line 498
    :goto_24
    iget v7, v8, Lorg/concentus/OpusDecoder;->channels:I

    mul-int v9, v7, v19

    if-ge v1, v9, :cond_39

    .line 499
    aget-short v7, v0, v1

    aput-short v7, p4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    :cond_39
    mul-int v10, v7, v19

    mul-int v1, v7, v19

    add-int v12, p5, v1

    mul-int v1, v7, v19

    add-int v14, p5, v1

    .line 501
    iget v1, v8, Lorg/concentus/OpusDecoder;->Fs:I

    move-object v9, v0

    move-object/from16 v11, p4

    move-object/from16 v13, p4

    move/from16 v15, v19

    move/from16 v16, v7

    move-object/from16 v17, v2

    move/from16 v18, v1

    invoke-static/range {v9 .. v18}, Lorg/concentus/CodecHelpers;->smooth_fade([SI[SI[SIII[II)V

    goto :goto_25

    .line 510
    :cond_3a
    iget v1, v8, Lorg/concentus/OpusDecoder;->channels:I

    iget v7, v8, Lorg/concentus/OpusDecoder;->Fs:I

    const/4 v10, 0x0

    move-object v9, v0

    move-object/from16 v11, p4

    move/from16 v12, p5

    move-object/from16 v13, p4

    move/from16 v14, p5

    move/from16 v15, v19

    move/from16 v16, v1

    move-object/from16 v17, v2

    move/from16 v18, v7

    invoke-static/range {v9 .. v18}, Lorg/concentus/CodecHelpers;->smooth_fade([SI[SI[SIII[II)V

    .line 516
    :cond_3b
    :goto_25
    iget v0, v8, Lorg/concentus/OpusDecoder;->decode_gain:I

    if-eqz v0, :cond_3c

    const/16 v1, 0x550b

    .line 518
    invoke-static {v1, v0}, Lorg/concentus/Inlines;->MULT16_16_P15(II)I

    move-result v0

    invoke-static {v0}, Lorg/concentus/Inlines;->celt_exp2(I)I

    move-result v0

    move/from16 v1, p5

    .line 519
    :goto_26
    iget v2, v8, Lorg/concentus/OpusDecoder;->channels:I

    mul-int/2addr v2, v3

    add-int v2, p5, v2

    if-ge v1, v2, :cond_3c

    .line 521
    aget-short v2, p4, v1

    invoke-static {v2, v0}, Lorg/concentus/Inlines;->MULT16_32_P16(SI)I

    move-result v2

    const/16 v7, 0x7fff

    .line 522
    invoke-static {v2, v7}, Lorg/concentus/Inlines;->SATURATE(II)I

    move-result v2

    int-to-short v2, v2

    aput-short v2, p4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    :cond_3c
    const/4 v0, 0x1

    if-gt v6, v0, :cond_3d

    const/4 v1, 0x0

    .line 527
    iput v1, v8, Lorg/concentus/OpusDecoder;->rangeFinal:I

    goto :goto_27

    :cond_3d
    move-object/from16 v2, p6

    const/4 v1, 0x0

    .line 529
    iget-wide v6, v2, Lorg/concentus/EntropyCoder;->rng:J

    long-to-int v2, v6

    xor-int/2addr v2, v4

    iput v2, v8, Lorg/concentus/OpusDecoder;->rangeFinal:I

    .line 532
    :goto_27
    iput-object v5, v8, Lorg/concentus/OpusDecoder;->prev_mode:Lorg/concentus/OpusMode;

    if-eqz v30, :cond_3e

    if-nez v31, :cond_3e

    move v4, v0

    goto :goto_28

    :cond_3e
    move v4, v1

    .line 533
    :goto_28
    iput v4, v8, Lorg/concentus/OpusDecoder;->prev_redundancy:I

    if-gez v24, :cond_3f

    move/from16 v4, v24

    goto :goto_29

    :cond_3f
    move v4, v3

    :goto_29
    return v4
.end method

.method opus_decode_native([BII[SIIIILorg/concentus/BoxedValueInt;I)I
    .locals 25

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move/from16 v13, p2

    move/from16 v14, p6

    move/from16 v15, p7

    const/4 v10, 0x0

    move-object/from16 v9, p9

    .line 545
    iput v10, v9, Lorg/concentus/BoxedValueInt;->Val:I

    const/16 v0, 0x30

    .line 550
    new-array v8, v0, [S

    if-ltz v15, :cond_15

    const/4 v7, 0x1

    if-le v15, v7, :cond_0

    goto/16 :goto_7

    :cond_0
    if-nez v15, :cond_1

    if-eqz p3, :cond_1

    if-nez v12, :cond_2

    .line 555
    :cond_1
    iget v0, v11, Lorg/concentus/OpusDecoder;->Fs:I

    div-int/lit16 v0, v0, 0x190

    rem-int v0, v14, v0

    if-eqz v0, :cond_2

    .line 556
    sget v0, Lorg/concentus/OpusError;->OPUS_BAD_ARG:I

    return v0

    :cond_2
    if-eqz p3, :cond_11

    if-nez v12, :cond_3

    goto/16 :goto_5

    :cond_3
    if-gez p3, :cond_4

    .line 572
    sget v0, Lorg/concentus/OpusError;->OPUS_BAD_ARG:I

    return v0

    .line 575
    :cond_4
    invoke-static/range {p1 .. p2}, Lorg/concentus/OpusPacketInfo;->getEncoderMode([BI)Lorg/concentus/OpusMode;

    move-result-object v6

    .line 576
    invoke-static/range {p1 .. p2}, Lorg/concentus/OpusPacketInfo;->getBandwidth([BI)Lorg/concentus/OpusBandwidth;

    move-result-object v5

    .line 577
    iget v0, v11, Lorg/concentus/OpusDecoder;->Fs:I

    invoke-static {v12, v13, v0}, Lorg/concentus/OpusPacketInfo;->getNumSamplesPerFrame([BII)I

    move-result v4

    .line 578
    invoke-static/range {p1 .. p2}, Lorg/concentus/OpusPacketInfo;->getNumEncodedChannels([BI)I

    move-result v3

    .line 580
    new-instance v2, Lorg/concentus/BoxedValueByte;

    invoke-direct {v2, v10}, Lorg/concentus/BoxedValueByte;-><init>(B)V

    .line 581
    new-instance v1, Lorg/concentus/BoxedValueInt;

    invoke-direct {v1, v10}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v19, v1

    move/from16 v1, p2

    move-object/from16 v20, v2

    move/from16 v2, p3

    move/from16 v21, v3

    move/from16 v3, p8

    move/from16 v22, v4

    move-object/from16 v4, v20

    move-object v12, v5

    move-object/from16 v5, v18

    move-object/from16 v23, v6

    move/from16 v6, v16

    move/from16 v16, v7

    move-object v7, v8

    move-object/from16 v18, v8

    move/from16 v8, v17

    move-object/from16 v9, v19

    move-object/from16 v17, v12

    move v12, v10

    move-object/from16 v10, p9

    .line 582
    invoke-static/range {v0 .. v10}, Lorg/concentus/OpusPacketInfo;->opus_packet_parse_impl([BIIILorg/concentus/BoxedValueByte;[[BI[SILorg/concentus/BoxedValueInt;Lorg/concentus/BoxedValueInt;)I

    move-result v8

    move-object/from16 v0, v20

    .line 584
    iget-byte v0, v0, Lorg/concentus/BoxedValueByte;->Val:B

    move-object/from16 v0, v19

    .line 585
    iget v0, v0, Lorg/concentus/BoxedValueInt;->Val:I

    if-gez v8, :cond_5

    return v8

    :cond_5
    add-int/2addr v13, v0

    if-eqz v15, :cond_c

    .line 594
    new-instance v9, Lorg/concentus/BoxedValueInt;

    invoke-direct {v9, v12}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    move/from16 v15, v22

    if-lt v14, v15, :cond_b

    .line 598
    sget-object v0, Lorg/concentus/OpusMode;->MODE_CELT_ONLY:Lorg/concentus/OpusMode;

    move-object/from16 v10, v23

    if-eq v10, v0, :cond_b

    iget-object v0, v11, Lorg/concentus/OpusDecoder;->mode:Lorg/concentus/OpusMode;

    sget-object v1, Lorg/concentus/OpusMode;->MODE_CELT_ONLY:Lorg/concentus/OpusMode;

    if-ne v0, v1, :cond_6

    goto/16 :goto_2

    .line 602
    :cond_6
    iget v8, v11, Lorg/concentus/OpusDecoder;->last_packet_duration:I

    sub-int v7, v14, v15

    if-eqz v7, :cond_9

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v4, p4

    move/from16 v5, p5

    move v6, v7

    move v12, v7

    move/from16 v7, v19

    move/from16 v24, v8

    move/from16 v8, v20

    move-object v14, v10

    move/from16 v10, p10

    .line 604
    invoke-virtual/range {v0 .. v10}, Lorg/concentus/OpusDecoder;->opus_decode_native([BII[SIIIILorg/concentus/BoxedValueInt;I)I

    move-result v0

    if-gez v0, :cond_7

    move/from16 v1, v24

    .line 606
    iput v1, v11, Lorg/concentus/OpusDecoder;->last_packet_duration:I

    return v0

    :cond_7
    if-ne v0, v12, :cond_8

    move/from16 v10, v16

    goto :goto_0

    :cond_8
    const/4 v10, 0x0

    .line 609
    :goto_0
    invoke-static {v10}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    goto :goto_1

    :cond_9
    move v12, v7

    move-object v14, v10

    .line 612
    :goto_1
    iput-object v14, v11, Lorg/concentus/OpusDecoder;->mode:Lorg/concentus/OpusMode;

    move-object/from16 v0, v17

    .line 613
    iput-object v0, v11, Lorg/concentus/OpusDecoder;->bandwidth:Lorg/concentus/OpusBandwidth;

    .line 614
    iput v15, v11, Lorg/concentus/OpusDecoder;->frame_size:I

    move/from16 v1, v21

    .line 615
    iput v1, v11, Lorg/concentus/OpusDecoder;->stream_channels:I

    const/4 v9, 0x0

    .line 616
    aget-short v3, v18, v9

    iget v0, v11, Lorg/concentus/OpusDecoder;->channels:I

    mul-int/2addr v0, v12

    add-int v5, p5, v0

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v13

    move-object/from16 v4, p4

    move v6, v15

    invoke-virtual/range {v0 .. v7}, Lorg/concentus/OpusDecoder;->opus_decode_frame([BII[SIII)I

    move-result v0

    if-gez v0, :cond_a

    return v0

    :cond_a
    move/from16 v10, p6

    .line 621
    iput v10, v11, Lorg/concentus/OpusDecoder;->last_packet_duration:I

    return v10

    :cond_b
    :goto_2
    move v10, v14

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v10, p10

    .line 599
    invoke-virtual/range {v0 .. v10}, Lorg/concentus/OpusDecoder;->opus_decode_native([BII[SIIIILorg/concentus/BoxedValueInt;I)I

    move-result v0

    return v0

    :cond_c
    move v9, v12

    move v10, v14

    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v15, v22

    move-object/from16 v2, v23

    mul-int v4, v8, v15

    if-le v4, v10, :cond_d

    .line 627
    sget v0, Lorg/concentus/OpusError;->OPUS_BUFFER_TOO_SMALL:I

    return v0

    .line 631
    :cond_d
    iput-object v2, v11, Lorg/concentus/OpusDecoder;->mode:Lorg/concentus/OpusMode;

    .line 632
    iput-object v0, v11, Lorg/concentus/OpusDecoder;->bandwidth:Lorg/concentus/OpusBandwidth;

    .line 633
    iput v15, v11, Lorg/concentus/OpusDecoder;->frame_size:I

    .line 634
    iput v1, v11, Lorg/concentus/OpusDecoder;->stream_channels:I

    move v12, v9

    move v14, v13

    move v13, v12

    :goto_3
    if-ge v12, v8, :cond_10

    .line 639
    aget-short v3, v18, v12

    iget v0, v11, Lorg/concentus/OpusDecoder;->channels:I

    mul-int/2addr v0, v13

    add-int v5, p5, v0

    sub-int v6, v10, v13

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move-object/from16 v4, p4

    invoke-virtual/range {v0 .. v7}, Lorg/concentus/OpusDecoder;->opus_decode_frame([BII[SIII)I

    move-result v0

    if-gez v0, :cond_e

    return v0

    :cond_e
    if-ne v0, v15, :cond_f

    move/from16 v1, v16

    goto :goto_4

    :cond_f
    move v1, v9

    .line 643
    :goto_4
    invoke-static {v1}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    .line 644
    aget-short v1, v18, v12

    add-int/2addr v14, v1

    add-int/2addr v13, v0

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 647
    :cond_10
    iput v13, v11, Lorg/concentus/OpusDecoder;->last_packet_duration:I

    return v13

    :cond_11
    :goto_5
    move/from16 v16, v7

    move v9, v10

    move v10, v14

    move v8, v9

    .line 562
    :cond_12
    iget v0, v11, Lorg/concentus/OpusDecoder;->channels:I

    mul-int/2addr v0, v8

    add-int v5, p5, v0

    sub-int v6, v10, v8

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v4, p4

    invoke-virtual/range {v0 .. v7}, Lorg/concentus/OpusDecoder;->opus_decode_frame([BII[SIII)I

    move-result v0

    if-gez v0, :cond_13

    return v0

    :cond_13
    add-int/2addr v8, v0

    if-lt v8, v10, :cond_12

    if-ne v8, v10, :cond_14

    move/from16 v10, v16

    goto :goto_6

    :cond_14
    move v10, v9

    .line 568
    :goto_6
    invoke-static {v10}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    .line 569
    iput v8, v11, Lorg/concentus/OpusDecoder;->last_packet_duration:I

    return v8

    .line 552
    :cond_15
    :goto_7
    sget v0, Lorg/concentus/OpusError;->OPUS_BAD_ARG:I

    return v0
.end method

.method opus_decoder_init(II)I
    .locals 4

    const v0, 0xbb80

    if-eq p1, v0, :cond_0

    const/16 v0, 0x5dc0

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3e80

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2ee0

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1f40

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    .line 111
    :cond_1
    sget p1, Lorg/concentus/OpusError;->OPUS_BAD_ARG:I

    return p1

    .line 113
    :cond_2
    invoke-virtual {p0}, Lorg/concentus/OpusDecoder;->reset()V

    .line 116
    iget-object v0, p0, Lorg/concentus/OpusDecoder;->SilkDecoder:Lorg/concentus/SilkDecoder;

    .line 117
    iget-object v1, p0, Lorg/concentus/OpusDecoder;->Celt_Decoder:Lorg/concentus/CeltDecoder;

    .line 118
    iput p2, p0, Lorg/concentus/OpusDecoder;->channels:I

    iput p2, p0, Lorg/concentus/OpusDecoder;->stream_channels:I

    .line 120
    iput p1, p0, Lorg/concentus/OpusDecoder;->Fs:I

    .line 121
    iget-object v2, p0, Lorg/concentus/OpusDecoder;->DecControl:Lorg/concentus/DecControlState;

    iput p1, v2, Lorg/concentus/DecControlState;->API_sampleRate:I

    .line 122
    iget-object v2, p0, Lorg/concentus/OpusDecoder;->DecControl:Lorg/concentus/DecControlState;

    iget v3, p0, Lorg/concentus/OpusDecoder;->channels:I

    iput v3, v2, Lorg/concentus/DecControlState;->nChannelsAPI:I

    .line 125
    invoke-static {v0}, Lorg/concentus/DecodeAPI;->silk_InitDecoder(Lorg/concentus/SilkDecoder;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 127
    sget p1, Lorg/concentus/OpusError;->OPUS_INTERNAL_ERROR:I

    return p1

    .line 131
    :cond_3
    invoke-virtual {v1, p1, p2}, Lorg/concentus/CeltDecoder;->celt_decoder_init(II)I

    move-result p2

    .line 132
    sget v0, Lorg/concentus/OpusError;->OPUS_OK:I

    if-eq p2, v0, :cond_4

    .line 133
    sget p1, Lorg/concentus/OpusError;->OPUS_INTERNAL_ERROR:I

    return p1

    :cond_4
    const/4 p2, 0x0

    .line 136
    invoke-virtual {v1, p2}, Lorg/concentus/CeltDecoder;->SetSignalling(I)V

    .line 138
    sget-object p2, Lorg/concentus/OpusMode;->MODE_UNKNOWN:Lorg/concentus/OpusMode;

    iput-object p2, p0, Lorg/concentus/OpusDecoder;->prev_mode:Lorg/concentus/OpusMode;

    .line 139
    div-int/lit16 p1, p1, 0x190

    iput p1, p0, Lorg/concentus/OpusDecoder;->frame_size:I

    .line 140
    sget p1, Lorg/concentus/OpusError;->OPUS_OK:I

    return p1
.end method

.method partialReset()V
    .locals 2

    const/4 v0, 0x0

    .line 91
    iput v0, p0, Lorg/concentus/OpusDecoder;->stream_channels:I

    .line 92
    sget-object v1, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_UNKNOWN:Lorg/concentus/OpusBandwidth;

    iput-object v1, p0, Lorg/concentus/OpusDecoder;->bandwidth:Lorg/concentus/OpusBandwidth;

    .line 93
    sget-object v1, Lorg/concentus/OpusMode;->MODE_UNKNOWN:Lorg/concentus/OpusMode;

    iput-object v1, p0, Lorg/concentus/OpusDecoder;->mode:Lorg/concentus/OpusMode;

    .line 94
    sget-object v1, Lorg/concentus/OpusMode;->MODE_UNKNOWN:Lorg/concentus/OpusMode;

    iput-object v1, p0, Lorg/concentus/OpusDecoder;->prev_mode:Lorg/concentus/OpusMode;

    .line 95
    iput v0, p0, Lorg/concentus/OpusDecoder;->frame_size:I

    .line 96
    iput v0, p0, Lorg/concentus/OpusDecoder;->prev_redundancy:I

    .line 97
    iput v0, p0, Lorg/concentus/OpusDecoder;->last_packet_duration:I

    .line 98
    iput v0, p0, Lorg/concentus/OpusDecoder;->rangeFinal:I

    return-void
.end method

.method reset()V
    .locals 2

    const/4 v0, 0x0

    .line 77
    iput v0, p0, Lorg/concentus/OpusDecoder;->channels:I

    .line 78
    iput v0, p0, Lorg/concentus/OpusDecoder;->Fs:I

    .line 82
    iget-object v1, p0, Lorg/concentus/OpusDecoder;->DecControl:Lorg/concentus/DecControlState;

    invoke-virtual {v1}, Lorg/concentus/DecControlState;->Reset()V

    .line 83
    iput v0, p0, Lorg/concentus/OpusDecoder;->decode_gain:I

    .line 84
    invoke-virtual {p0}, Lorg/concentus/OpusDecoder;->partialReset()V

    return-void
.end method

.method public resetState()V
    .locals 1

    .line 748
    invoke-virtual {p0}, Lorg/concentus/OpusDecoder;->partialReset()V

    .line 749
    iget-object v0, p0, Lorg/concentus/OpusDecoder;->Celt_Decoder:Lorg/concentus/CeltDecoder;

    invoke-virtual {v0}, Lorg/concentus/CeltDecoder;->ResetState()V

    .line 750
    iget-object v0, p0, Lorg/concentus/OpusDecoder;->SilkDecoder:Lorg/concentus/SilkDecoder;

    invoke-static {v0}, Lorg/concentus/DecodeAPI;->silk_InitDecoder(Lorg/concentus/SilkDecoder;)I

    .line 751
    iget v0, p0, Lorg/concentus/OpusDecoder;->channels:I

    iput v0, p0, Lorg/concentus/OpusDecoder;->stream_channels:I

    .line 752
    iget v0, p0, Lorg/concentus/OpusDecoder;->Fs:I

    div-int/lit16 v0, v0, 0x190

    iput v0, p0, Lorg/concentus/OpusDecoder;->frame_size:I

    return-void
.end method

.method public setGain(I)V
    .locals 1

    const/16 v0, -0x8000

    if-lt p1, v0, :cond_0

    const/16 v0, 0x7fff

    if-gt p1, v0, :cond_0

    .line 740
    iput p1, p0, Lorg/concentus/OpusDecoder;->decode_gain:I

    return-void

    .line 737
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Gain must be within the range of a signed int16"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
