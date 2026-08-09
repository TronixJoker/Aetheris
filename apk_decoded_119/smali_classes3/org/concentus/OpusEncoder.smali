.class public Lorg/concentus/OpusEncoder;
.super Ljava/lang/Object;
.source "OpusEncoder.java"


# instance fields
.field final Celt_Encoder:Lorg/concentus/CeltEncoder;

.field Fs:I

.field final SilkEncoder:Lorg/concentus/SilkEncoder;

.field final analysis:Lorg/concentus/TonalityAnalysisState;

.field application:Lorg/concentus/OpusApplication;

.field bandwidth:Lorg/concentus/OpusBandwidth;

.field bitrate_bps:I

.field channels:I

.field final delay_buffer:[S

.field delay_compensation:I

.field detected_bandwidth:Lorg/concentus/OpusBandwidth;

.field encoder_buffer:I

.field energy_masking:[I

.field first:I

.field force_channels:I

.field final hp_mem:[I

.field hybrid_stereo_width_Q14:S

.field lfe:I

.field lsb_depth:I

.field max_bandwidth:Lorg/concentus/OpusBandwidth;

.field mode:Lorg/concentus/OpusMode;

.field prev_HB_gain:I

.field prev_channels:I

.field prev_framesize:I

.field prev_mode:Lorg/concentus/OpusMode;

.field rangeFinal:I

.field signal_type:Lorg/concentus/OpusSignal;

.field silk_bw_switch:I

.field final silk_mode:Lorg/concentus/EncControlState;

.field stream_channels:I

.field use_vbr:I

.field user_bandwidth:Lorg/concentus/OpusBandwidth;

.field user_bitrate_bps:I

.field user_forced_mode:Lorg/concentus/OpusMode;

.field variable_HP_smth2_Q15:I

.field variable_duration:Lorg/concentus/OpusFramesize;

.field vbr_constraint:I

.field voice_ratio:I

.field final width_mem:Lorg/concentus/StereoWidthState;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lorg/concentus/EncControlState;

    invoke-direct {v0}, Lorg/concentus/EncControlState;-><init>()V

    iput-object v0, p0, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    .line 61
    new-instance v0, Lorg/concentus/TonalityAnalysisState;

    invoke-direct {v0}, Lorg/concentus/TonalityAnalysisState;-><init>()V

    iput-object v0, p0, Lorg/concentus/OpusEncoder;->analysis:Lorg/concentus/TonalityAnalysisState;

    const/4 v0, 0x4

    .line 68
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/concentus/OpusEncoder;->hp_mem:[I

    .line 78
    new-instance v0, Lorg/concentus/StereoWidthState;

    invoke-direct {v0}, Lorg/concentus/StereoWidthState;-><init>()V

    iput-object v0, p0, Lorg/concentus/OpusEncoder;->width_mem:Lorg/concentus/StereoWidthState;

    const/16 v0, 0x3c0

    .line 79
    new-array v0, v0, [S

    iput-object v0, p0, Lorg/concentus/OpusEncoder;->delay_buffer:[S

    .line 86
    new-instance v0, Lorg/concentus/SilkEncoder;

    invoke-direct {v0}, Lorg/concentus/SilkEncoder;-><init>()V

    iput-object v0, p0, Lorg/concentus/OpusEncoder;->SilkEncoder:Lorg/concentus/SilkEncoder;

    .line 87
    new-instance v0, Lorg/concentus/CeltEncoder;

    invoke-direct {v0}, Lorg/concentus/CeltEncoder;-><init>()V

    iput-object v0, p0, Lorg/concentus/OpusEncoder;->Celt_Encoder:Lorg/concentus/CeltEncoder;

    return-void
.end method

.method public constructor <init>(IILorg/concentus/OpusApplication;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/concentus/OpusException;
        }
    .end annotation

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lorg/concentus/EncControlState;

    invoke-direct {v0}, Lorg/concentus/EncControlState;-><init>()V

    iput-object v0, p0, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    .line 61
    new-instance v0, Lorg/concentus/TonalityAnalysisState;

    invoke-direct {v0}, Lorg/concentus/TonalityAnalysisState;-><init>()V

    iput-object v0, p0, Lorg/concentus/OpusEncoder;->analysis:Lorg/concentus/TonalityAnalysisState;

    const/4 v0, 0x4

    .line 68
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/concentus/OpusEncoder;->hp_mem:[I

    .line 78
    new-instance v0, Lorg/concentus/StereoWidthState;

    invoke-direct {v0}, Lorg/concentus/StereoWidthState;-><init>()V

    iput-object v0, p0, Lorg/concentus/OpusEncoder;->width_mem:Lorg/concentus/StereoWidthState;

    const/16 v0, 0x3c0

    .line 79
    new-array v0, v0, [S

    iput-object v0, p0, Lorg/concentus/OpusEncoder;->delay_buffer:[S

    .line 86
    new-instance v0, Lorg/concentus/SilkEncoder;

    invoke-direct {v0}, Lorg/concentus/SilkEncoder;-><init>()V

    iput-object v0, p0, Lorg/concentus/OpusEncoder;->SilkEncoder:Lorg/concentus/SilkEncoder;

    .line 87
    new-instance v0, Lorg/concentus/CeltEncoder;

    invoke-direct {v0}, Lorg/concentus/CeltEncoder;-><init>()V

    iput-object v0, p0, Lorg/concentus/OpusEncoder;->Celt_Encoder:Lorg/concentus/CeltEncoder;

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

    .line 192
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

    .line 195
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Number of channels must be 1 or 2"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 198
    :cond_3
    :goto_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/concentus/OpusEncoder;->opus_init_encoder(IILorg/concentus/OpusApplication;)I

    move-result p1

    .line 199
    sget p2, Lorg/concentus/OpusError;->OPUS_OK:I

    if-eq p1, p2, :cond_5

    .line 200
    sget p2, Lorg/concentus/OpusError;->OPUS_BAD_ARG:I

    if-ne p1, p2, :cond_4

    .line 201
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "OPUS_BAD_ARG when creating encoder"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 203
    :cond_4
    new-instance p2, Lorg/concentus/OpusException;

    const-string p3, "Error while initializing encoder"

    invoke-direct {p2, p3, p1}, Lorg/concentus/OpusException;-><init>(Ljava/lang/String;I)V

    throw p2

    :cond_5
    return-void
.end method


# virtual methods
.method GetCeltMode()Lorg/concentus/CeltMode;
    .locals 1

    .line 1619
    iget-object v0, p0, Lorg/concentus/OpusEncoder;->Celt_Encoder:Lorg/concentus/CeltEncoder;

    invoke-virtual {v0}, Lorg/concentus/CeltEncoder;->GetMode()Lorg/concentus/CeltMode;

    move-result-object v0

    return-object v0
.end method

.method PartialReset()V
    .locals 3

    const/4 v0, 0x0

    .line 120
    iput v0, p0, Lorg/concentus/OpusEncoder;->stream_channels:I

    .line 121
    iput-short v0, p0, Lorg/concentus/OpusEncoder;->hybrid_stereo_width_Q14:S

    .line 122
    iput v0, p0, Lorg/concentus/OpusEncoder;->variable_HP_smth2_Q15:I

    .line 123
    iput v0, p0, Lorg/concentus/OpusEncoder;->prev_HB_gain:I

    .line 124
    iget-object v1, p0, Lorg/concentus/OpusEncoder;->hp_mem:[I

    const/4 v2, 0x4

    invoke-static {v1, v0, v2}, Lorg/concentus/Arrays;->MemSet([III)V

    .line 125
    sget-object v1, Lorg/concentus/OpusMode;->MODE_UNKNOWN:Lorg/concentus/OpusMode;

    iput-object v1, p0, Lorg/concentus/OpusEncoder;->mode:Lorg/concentus/OpusMode;

    .line 126
    sget-object v1, Lorg/concentus/OpusMode;->MODE_UNKNOWN:Lorg/concentus/OpusMode;

    iput-object v1, p0, Lorg/concentus/OpusEncoder;->prev_mode:Lorg/concentus/OpusMode;

    .line 127
    iput v0, p0, Lorg/concentus/OpusEncoder;->prev_channels:I

    .line 128
    iput v0, p0, Lorg/concentus/OpusEncoder;->prev_framesize:I

    .line 129
    sget-object v1, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_UNKNOWN:Lorg/concentus/OpusBandwidth;

    iput-object v1, p0, Lorg/concentus/OpusEncoder;->bandwidth:Lorg/concentus/OpusBandwidth;

    .line 130
    iput v0, p0, Lorg/concentus/OpusEncoder;->silk_bw_switch:I

    .line 131
    iput v0, p0, Lorg/concentus/OpusEncoder;->first:I

    const/4 v1, 0x0

    .line 132
    iput-object v1, p0, Lorg/concentus/OpusEncoder;->energy_masking:[I

    .line 133
    iget-object v1, p0, Lorg/concentus/OpusEncoder;->width_mem:Lorg/concentus/StereoWidthState;

    invoke-virtual {v1}, Lorg/concentus/StereoWidthState;->Reset()V

    .line 134
    iget-object v1, p0, Lorg/concentus/OpusEncoder;->delay_buffer:[S

    const/16 v2, 0x3c0

    invoke-static {v1, v0, v2}, Lorg/concentus/Arrays;->MemSet([SSI)V

    .line 135
    sget-object v1, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_UNKNOWN:Lorg/concentus/OpusBandwidth;

    iput-object v1, p0, Lorg/concentus/OpusEncoder;->detected_bandwidth:Lorg/concentus/OpusBandwidth;

    .line 136
    iput v0, p0, Lorg/concentus/OpusEncoder;->rangeFinal:I

    return-void
.end method

.method SetEnergyMask([I)V
    .locals 1

    .line 1614
    iput-object p1, p0, Lorg/concentus/OpusEncoder;->energy_masking:[I

    .line 1615
    iget-object v0, p0, Lorg/concentus/OpusEncoder;->Celt_Encoder:Lorg/concentus/CeltEncoder;

    invoke-virtual {v0, p1}, Lorg/concentus/CeltEncoder;->SetEnergyMask([I)V

    return-void
.end method

.method public encode([SII[BII)I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/concentus/OpusException;
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v0, p1

    move-object/from16 v11, p4

    move/from16 v12, p6

    add-int v1, p5, v12

    .line 1292
    array-length v2, v11

    if-gt v1, v2, :cond_4

    .line 1297
    iget-object v1, v15, Lorg/concentus/OpusEncoder;->application:Lorg/concentus/OpusApplication;

    sget-object v2, Lorg/concentus/OpusApplication;->OPUS_APPLICATION_RESTRICTED_LOWDELAY:Lorg/concentus/OpusApplication;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 1300
    :cond_0
    iget v1, v15, Lorg/concentus/OpusEncoder;->delay_compensation:I

    :goto_0
    move v8, v1

    .line 1303
    iget-object v4, v15, Lorg/concentus/OpusEncoder;->variable_duration:Lorg/concentus/OpusFramesize;

    iget v5, v15, Lorg/concentus/OpusEncoder;->channels:I

    iget v6, v15, Lorg/concentus/OpusEncoder;->Fs:I

    iget v7, v15, Lorg/concentus/OpusEncoder;->bitrate_bps:I

    iget-object v1, v15, Lorg/concentus/OpusEncoder;->analysis:Lorg/concentus/TonalityAnalysisState;

    iget-object v9, v1, Lorg/concentus/TonalityAnalysisState;->subframe_mem:[F

    iget-object v1, v15, Lorg/concentus/OpusEncoder;->analysis:Lorg/concentus/TonalityAnalysisState;

    iget-boolean v10, v1, Lorg/concentus/TonalityAnalysisState;->enabled:Z

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-static/range {v1 .. v10}, Lorg/concentus/CodecHelpers;->compute_frame_size([SIILorg/concentus/OpusFramesize;IIII[FZ)I

    move-result v4

    add-int v1, p2, v4

    .line 1308
    array-length v2, v0

    if-gt v1, v2, :cond_3

    .line 1313
    :try_start_0
    iget v14, v15, Lorg/concentus/OpusEncoder;->channels:I

    const/16 v16, 0x0

    const/16 v8, 0x10

    const/4 v13, 0x0

    const/16 v17, -0x2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move v12, v13

    move/from16 v13, v17

    move/from16 v15, v16

    invoke-virtual/range {v1 .. v15}, Lorg/concentus/OpusEncoder;->opus_encode_native([SII[BIII[SIIIIII)I

    move-result v0

    if-gez v0, :cond_2

    .line 1318
    sget v1, Lorg/concentus/OpusError;->OPUS_BAD_ARG:I

    if-ne v0, v1, :cond_1

    .line 1319
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "OPUS_BAD_ARG while encoding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1321
    :cond_1
    new-instance v1, Lorg/concentus/OpusException;

    const-string v2, "An error occurred during encoding"

    invoke-direct {v1, v2, v0}, Lorg/concentus/OpusException;-><init>(Ljava/lang/String;I)V

    throw v1
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return v0

    :catch_0
    move-exception v0

    .line 1326
    new-instance v1, Lorg/concentus/OpusException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Internal error during encoding: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/ArithmeticException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/concentus/OpusException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1309
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Not enough samples provided in input signal: Expected "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " samples, found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v0, v0

    sub-int v0, v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1293
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Output buffer is too small: Stated size is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes, actual size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v11

    sub-int v2, v2, p5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getApplication()Lorg/concentus/OpusApplication;
    .locals 1

    .line 1336
    iget-object v0, p0, Lorg/concentus/OpusEncoder;->application:Lorg/concentus/OpusApplication;

    return-object v0
.end method

.method public getBandwidth()Lorg/concentus/OpusBandwidth;
    .locals 1

    .line 1406
    iget-object v0, p0, Lorg/concentus/OpusEncoder;->bandwidth:Lorg/concentus/OpusBandwidth;

    return-object v0
.end method

.method public getBitrate()I
    .locals 2

    .line 1351
    iget v0, p0, Lorg/concentus/OpusEncoder;->prev_framesize:I

    const/16 v1, 0x4fc

    invoke-virtual {p0, v0, v1}, Lorg/concentus/OpusEncoder;->user_bitrate_to_bitrate(II)I

    move-result v0

    return v0
.end method

.method public getComplexity()I
    .locals 1

    .line 1437
    iget-object v0, p0, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    iget v0, v0, Lorg/concentus/EncControlState;->complexity:I

    return v0
.end method

.method public getEnableAnalysis()Z
    .locals 1

    .line 1606
    iget-object v0, p0, Lorg/concentus/OpusEncoder;->analysis:Lorg/concentus/TonalityAnalysisState;

    iget-boolean v0, v0, Lorg/concentus/TonalityAnalysisState;->enabled:Z

    return v0
.end method

.method public getExpertFrameDuration()Lorg/concentus/OpusFramesize;
    .locals 1

    .line 1556
    iget-object v0, p0, Lorg/concentus/OpusEncoder;->variable_duration:Lorg/concentus/OpusFramesize;

    return-object v0
.end method

.method public getFinalRange()I
    .locals 1

    .line 1532
    iget v0, p0, Lorg/concentus/OpusEncoder;->rangeFinal:I

    return v0
.end method

.method public getForceChannels()I
    .locals 1

    .line 1373
    iget v0, p0, Lorg/concentus/OpusEncoder;->force_channels:I

    return v0
.end method

.method public getForceMode()Lorg/concentus/OpusMode;
    .locals 1

    .line 1571
    iget-object v0, p0, Lorg/concentus/OpusEncoder;->user_forced_mode:Lorg/concentus/OpusMode;

    return-object v0
.end method

.method public getIsLFE()Z
    .locals 1

    .line 1582
    iget v0, p0, Lorg/concentus/OpusEncoder;->lfe:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getLSBDepth()I
    .locals 1

    .line 1540
    iget v0, p0, Lorg/concentus/OpusEncoder;->lsb_depth:I

    return v0
.end method

.method public getLookahead()I
    .locals 3

    .line 1516
    iget v0, p0, Lorg/concentus/OpusEncoder;->Fs:I

    div-int/lit16 v0, v0, 0x190

    .line 1517
    iget-object v1, p0, Lorg/concentus/OpusEncoder;->application:Lorg/concentus/OpusApplication;

    sget-object v2, Lorg/concentus/OpusApplication;->OPUS_APPLICATION_RESTRICTED_LOWDELAY:Lorg/concentus/OpusApplication;

    if-eq v1, v2, :cond_0

    .line 1518
    iget v1, p0, Lorg/concentus/OpusEncoder;->delay_compensation:I

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public getMaxBandwidth()Lorg/concentus/OpusBandwidth;
    .locals 1

    .line 1388
    iget-object v0, p0, Lorg/concentus/OpusEncoder;->max_bandwidth:Lorg/concentus/OpusBandwidth;

    return-object v0
.end method

.method public getPacketLossPercent()I
    .locals 1

    .line 1466
    iget-object v0, p0, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    iget v0, v0, Lorg/concentus/EncControlState;->packetLossPercentage:I

    return v0
.end method

.method public getPredictionDisabled()Z
    .locals 1

    .line 1594
    iget-object v0, p0, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    iget v0, v0, Lorg/concentus/EncControlState;->reducedDependency:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getSampleRate()I
    .locals 1

    .line 1528
    iget v0, p0, Lorg/concentus/OpusEncoder;->Fs:I

    return v0
.end method

.method public getSignalType()Lorg/concentus/OpusSignal;
    .locals 1

    .line 1505
    iget-object v0, p0, Lorg/concentus/OpusEncoder;->signal_type:Lorg/concentus/OpusSignal;

    return-object v0
.end method

.method public getUseConstrainedVBR()Z
    .locals 1

    .line 1494
    iget v0, p0, Lorg/concentus/OpusEncoder;->vbr_constraint:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getUseDTX()Z
    .locals 1

    .line 1426
    iget-object v0, p0, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    iget v0, v0, Lorg/concentus/EncControlState;->useDTX:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getUseInbandFEC()Z
    .locals 1

    .line 1454
    iget-object v0, p0, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    iget v0, v0, Lorg/concentus/EncControlState;->useInBandFEC:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getUseVBR()Z
    .locals 1

    .line 1482
    iget v0, p0, Lorg/concentus/OpusEncoder;->use_vbr:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method opus_encode_native([SII[BIII[SIIIIII)I
    .locals 55

    move-object/from16 v15, p0

    move/from16 v14, p2

    move/from16 v12, p3

    move-object/from16 v13, p4

    move/from16 v11, p5

    move/from16 v10, p6

    .line 330
    new-instance v9, Lorg/concentus/EntropyCoder;

    invoke-direct {v9}, Lorg/concentus/EntropyCoder;-><init>()V

    .line 357
    new-instance v8, Lorg/concentus/AnalysisInfo;

    invoke-direct {v8}, Lorg/concentus/AnalysisInfo;-><init>()V

    const/16 v0, 0x4fc

    .line 362
    invoke-static {v0, v10}, Lorg/concentus/Inlines;->IMIN(II)I

    move-result v7

    const/4 v6, 0x0

    .line 364
    iput v6, v15, Lorg/concentus/OpusEncoder;->rangeFinal:I

    .line 365
    iget-object v0, v15, Lorg/concentus/OpusEncoder;->variable_duration:Lorg/concentus/OpusFramesize;

    sget-object v1, Lorg/concentus/OpusFramesize;->OPUS_FRAMESIZE_UNKNOWN:Lorg/concentus/OpusFramesize;

    const/4 v5, 0x3

    if-ne v0, v1, :cond_0

    mul-int/lit16 v0, v12, 0x190

    iget v1, v15, Lorg/concentus/OpusEncoder;->Fs:I

    if-eq v0, v1, :cond_0

    mul-int/lit16 v0, v12, 0xc8

    if-eq v0, v1, :cond_0

    mul-int/lit8 v0, v12, 0x64

    if-eq v0, v1, :cond_0

    mul-int/lit8 v0, v12, 0x32

    if-eq v0, v1, :cond_0

    mul-int/lit8 v2, v12, 0x19

    if-eq v2, v1, :cond_0

    mul-int/2addr v1, v5

    if-ne v0, v1, :cond_ba

    :cond_0
    mul-int/lit16 v0, v12, 0x190

    iget v1, v15, Lorg/concentus/OpusEncoder;->Fs:I

    if-lt v0, v1, :cond_ba

    if-gtz v7, :cond_1

    goto/16 :goto_5c

    .line 372
    :cond_1
    iget-object v4, v15, Lorg/concentus/OpusEncoder;->SilkEncoder:Lorg/concentus/SilkEncoder;

    .line 373
    iget-object v3, v15, Lorg/concentus/OpusEncoder;->Celt_Encoder:Lorg/concentus/CeltEncoder;

    .line 374
    iget-object v0, v15, Lorg/concentus/OpusEncoder;->application:Lorg/concentus/OpusApplication;

    sget-object v1, Lorg/concentus/OpusApplication;->OPUS_APPLICATION_RESTRICTED_LOWDELAY:Lorg/concentus/OpusApplication;

    if-ne v0, v1, :cond_2

    move/from16 v16, v6

    goto :goto_0

    .line 377
    :cond_2
    iget v0, v15, Lorg/concentus/OpusEncoder;->delay_compensation:I

    move/from16 v16, v0

    .line 380
    :goto_0
    iget v0, v15, Lorg/concentus/OpusEncoder;->lsb_depth:I

    move/from16 v1, p7

    invoke-static {v1, v0}, Lorg/concentus/Inlines;->IMIN(II)I

    move-result v2

    .line 381
    invoke-virtual {v3}, Lorg/concentus/CeltEncoder;->GetMode()Lorg/concentus/CeltMode;

    move-result-object v1

    const/4 v0, -0x1

    .line 382
    iput v0, v15, Lorg/concentus/OpusEncoder;->voice_ratio:I

    .line 384
    iget-object v0, v15, Lorg/concentus/OpusEncoder;->analysis:Lorg/concentus/TonalityAnalysisState;

    iget-boolean v0, v0, Lorg/concentus/TonalityAnalysisState;->enabled:Z

    const/4 v13, 0x7

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    .line 385
    iput v0, v8, Lorg/concentus/AnalysisInfo;->valid:I

    .line 386
    iget-object v0, v15, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    iget v0, v0, Lorg/concentus/EncControlState;->complexity:I

    if-lt v0, v13, :cond_4

    iget v0, v15, Lorg/concentus/OpusEncoder;->Fs:I

    const v5, 0xbb80

    if-ne v0, v5, :cond_4

    .line 387
    iget-object v0, v15, Lorg/concentus/OpusEncoder;->analysis:Lorg/concentus/TonalityAnalysisState;

    iget v5, v0, Lorg/concentus/TonalityAnalysisState;->read_pos:I

    .line 388
    iget-object v0, v15, Lorg/concentus/OpusEncoder;->analysis:Lorg/concentus/TonalityAnalysisState;

    iget v0, v0, Lorg/concentus/TonalityAnalysisState;->read_subframe:I

    .line 389
    iget-object v6, v15, Lorg/concentus/OpusEncoder;->analysis:Lorg/concentus/TonalityAnalysisState;

    if-eqz p8, :cond_3

    move-object/from16 v20, p8

    goto :goto_1

    :cond_3
    const/16 v20, 0x0

    .line 391
    :goto_1
    iget v13, v15, Lorg/concentus/OpusEncoder;->Fs:I

    move/from16 v17, v0

    const/16 v23, 0x0

    move-object v0, v6

    move-object v6, v1

    move/from16 p7, v2

    move-object/from16 v2, v20

    move-object/from16 v24, v3

    move/from16 v3, p9

    move-object/from16 v25, v4

    move/from16 v4, p10

    move/from16 v18, v5

    move/from16 v5, p3

    move-object/from16 v28, v6

    const/16 v12, 0xe

    move/from16 v6, p11

    move/from16 v29, v7

    move/from16 v7, p12

    move-object/from16 v19, v8

    move/from16 v8, p13

    move-object/from16 v30, v9

    move v9, v13

    move v13, v10

    move/from16 v10, p7

    move-object/from16 v11, v19

    .line 389
    invoke-static/range {v0 .. v11}, Lorg/concentus/Analysis;->run_analysis(Lorg/concentus/TonalityAnalysisState;Lorg/concentus/CeltMode;[SIIIIIIIILorg/concentus/AnalysisInfo;)V

    move/from16 v0, v18

    goto :goto_2

    :cond_4
    move-object/from16 v28, v1

    move/from16 p7, v2

    move-object/from16 v24, v3

    move-object/from16 v25, v4

    move/from16 v29, v7

    move-object/from16 v19, v8

    move-object/from16 v30, v9

    move v13, v10

    const/16 v12, 0xe

    const/4 v0, -0x1

    const/16 v17, -0x1

    .line 403
    :goto_2
    sget-object v1, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_UNKNOWN:Lorg/concentus/OpusBandwidth;

    iput-object v1, v15, Lorg/concentus/OpusEncoder;->detected_bandwidth:Lorg/concentus/OpusBandwidth;

    move-object/from16 v1, v19

    .line 404
    iget v2, v1, Lorg/concentus/AnalysisInfo;->valid:I

    if-eqz v2, :cond_a

    .line 406
    iget-object v2, v15, Lorg/concentus/OpusEncoder;->signal_type:Lorg/concentus/OpusSignal;

    sget-object v3, Lorg/concentus/OpusSignal;->OPUS_SIGNAL_AUTO:Lorg/concentus/OpusSignal;

    if-ne v2, v3, :cond_5

    const/high16 v2, 0x3f800000    # 1.0f

    .line 407
    iget v3, v1, Lorg/concentus/AnalysisInfo;->music_prob:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v15, Lorg/concentus/OpusEncoder;->voice_ratio:I

    .line 410
    :cond_5
    iget v2, v1, Lorg/concentus/AnalysisInfo;->bandwidth:I

    const/16 v3, 0xc

    if-gt v2, v3, :cond_6

    .line 412
    sget-object v2, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_NARROWBAND:Lorg/concentus/OpusBandwidth;

    iput-object v2, v15, Lorg/concentus/OpusEncoder;->detected_bandwidth:Lorg/concentus/OpusBandwidth;

    goto :goto_3

    :cond_6
    if-gt v2, v12, :cond_7

    .line 414
    sget-object v2, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_MEDIUMBAND:Lorg/concentus/OpusBandwidth;

    iput-object v2, v15, Lorg/concentus/OpusEncoder;->detected_bandwidth:Lorg/concentus/OpusBandwidth;

    goto :goto_3

    :cond_7
    const/16 v3, 0x10

    if-gt v2, v3, :cond_8

    .line 416
    sget-object v2, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_WIDEBAND:Lorg/concentus/OpusBandwidth;

    iput-object v2, v15, Lorg/concentus/OpusEncoder;->detected_bandwidth:Lorg/concentus/OpusBandwidth;

    goto :goto_3

    :cond_8
    const/16 v3, 0x12

    if-gt v2, v3, :cond_9

    .line 418
    sget-object v2, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_SUPERWIDEBAND:Lorg/concentus/OpusBandwidth;

    iput-object v2, v15, Lorg/concentus/OpusEncoder;->detected_bandwidth:Lorg/concentus/OpusBandwidth;

    goto :goto_3

    .line 420
    :cond_9
    sget-object v2, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_FULLBAND:Lorg/concentus/OpusBandwidth;

    iput-object v2, v15, Lorg/concentus/OpusEncoder;->detected_bandwidth:Lorg/concentus/OpusBandwidth;

    :cond_a
    :goto_3
    move/from16 v2, v17

    goto :goto_4

    :cond_b
    move-object/from16 v28, v1

    move/from16 p7, v2

    move-object/from16 v24, v3

    move-object/from16 v25, v4

    move/from16 v29, v7

    move-object v1, v8

    move-object/from16 v30, v9

    move v13, v10

    const/16 v12, 0xe

    const/4 v0, -0x1

    const/4 v2, -0x1

    .line 425
    :goto_4
    iget v3, v15, Lorg/concentus/OpusEncoder;->channels:I

    const/4 v6, 0x2

    const/4 v11, 0x1

    if-ne v3, v6, :cond_c

    iget v3, v15, Lorg/concentus/OpusEncoder;->force_channels:I

    if-eq v3, v11, :cond_c

    .line 426
    iget v3, v15, Lorg/concentus/OpusEncoder;->Fs:I

    iget-object v4, v15, Lorg/concentus/OpusEncoder;->width_mem:Lorg/concentus/StereoWidthState;

    move/from16 v5, p3

    move v7, v12

    move-object/from16 v12, p1

    invoke-static {v12, v14, v5, v3, v4}, Lorg/concentus/CodecHelpers;->compute_stereo_width([SIIILorg/concentus/StereoWidthState;)I

    move-result v3

    move/from16 v4, v29

    goto :goto_5

    :cond_c
    move/from16 v5, p3

    move v7, v12

    move-object/from16 v12, p1

    move/from16 v4, v29

    const/4 v3, 0x0

    .line 431
    :goto_5
    invoke-virtual {v15, v5, v4}, Lorg/concentus/OpusEncoder;->user_bitrate_to_bitrate(II)I

    move-result v8

    iput v8, v15, Lorg/concentus/OpusEncoder;->bitrate_bps:I

    .line 433
    iget v9, v15, Lorg/concentus/OpusEncoder;->Fs:I

    div-int v10, v9, v5

    .line 434
    iget v7, v15, Lorg/concentus/OpusEncoder;->use_vbr:I

    const/16 v11, 0x8

    if-nez v7, :cond_d

    const/4 v7, 0x3

    mul-int/2addr v9, v7

    .line 437
    div-int/2addr v9, v5

    mul-int/2addr v8, v7

    .line 439
    div-int/2addr v8, v11

    div-int/lit8 v17, v9, 0x2

    add-int v8, v8, v17

    div-int/2addr v8, v9

    invoke-static {v8, v4}, Lorg/concentus/Inlines;->IMIN(II)I

    move-result v4

    mul-int/2addr v9, v4

    mul-int/2addr v9, v11

    .line 440
    div-int/2addr v9, v7

    iput v9, v15, Lorg/concentus/OpusEncoder;->bitrate_bps:I

    goto :goto_6

    :cond_d
    const/4 v7, 0x3

    :goto_6
    const/16 v9, 0x32

    if-lt v4, v7, :cond_b0

    .line 443
    iget v7, v15, Lorg/concentus/OpusEncoder;->bitrate_bps:I

    mul-int/lit8 v8, v10, 0x18

    if-lt v7, v8, :cond_b0

    if-ge v10, v9, :cond_e

    mul-int v8, v4, v10

    const/16 v6, 0x12c

    if-lt v8, v6, :cond_b0

    const/16 v6, 0x960

    if-ge v7, v6, :cond_e

    goto/16 :goto_58

    :cond_e
    mul-int v6, v10, v4

    mul-int/lit8 v8, v6, 0x8

    .line 477
    iget v11, v15, Lorg/concentus/OpusEncoder;->channels:I

    mul-int/lit8 v11, v11, 0x28

    add-int/lit8 v11, v11, 0x14

    iget v12, v15, Lorg/concentus/OpusEncoder;->Fs:I

    div-int/2addr v12, v5

    sub-int/2addr v12, v9

    mul-int/2addr v11, v12

    sub-int/2addr v7, v11

    .line 479
    iget-object v11, v15, Lorg/concentus/OpusEncoder;->signal_type:Lorg/concentus/OpusSignal;

    sget-object v12, Lorg/concentus/OpusSignal;->OPUS_SIGNAL_VOICE:Lorg/concentus/OpusSignal;

    if-ne v11, v12, :cond_10

    const/16 v11, 0x7f

    :cond_f
    move v9, v11

    goto :goto_7

    .line 481
    :cond_10
    iget-object v11, v15, Lorg/concentus/OpusEncoder;->signal_type:Lorg/concentus/OpusSignal;

    sget-object v12, Lorg/concentus/OpusSignal;->OPUS_SIGNAL_MUSIC:Lorg/concentus/OpusSignal;

    if-ne v11, v12, :cond_11

    const/4 v9, 0x0

    goto :goto_7

    .line 483
    :cond_11
    iget v11, v15, Lorg/concentus/OpusEncoder;->voice_ratio:I

    if-ltz v11, :cond_12

    mul-int/lit16 v11, v11, 0x147

    const/16 v12, 0x8

    shr-int/2addr v11, v12

    .line 486
    iget-object v12, v15, Lorg/concentus/OpusEncoder;->application:Lorg/concentus/OpusApplication;

    sget-object v9, Lorg/concentus/OpusApplication;->OPUS_APPLICATION_AUDIO:Lorg/concentus/OpusApplication;

    if-ne v12, v9, :cond_f

    const/16 v9, 0x73

    .line 487
    invoke-static {v11, v9}, Lorg/concentus/Inlines;->IMIN(II)I

    move-result v9

    goto :goto_7

    .line 489
    :cond_12
    iget-object v9, v15, Lorg/concentus/OpusEncoder;->application:Lorg/concentus/OpusApplication;

    sget-object v11, Lorg/concentus/OpusApplication;->OPUS_APPLICATION_VOIP:Lorg/concentus/OpusApplication;

    if-ne v9, v11, :cond_13

    const/16 v9, 0x73

    goto :goto_7

    :cond_13
    const/16 v9, 0x30

    .line 495
    :goto_7
    iget v11, v15, Lorg/concentus/OpusEncoder;->force_channels:I

    const/16 v12, -0x3e8

    if-eq v11, v12, :cond_14

    iget v12, v15, Lorg/concentus/OpusEncoder;->channels:I

    move-object/from16 v23, v1

    const/4 v1, 0x2

    if-ne v12, v1, :cond_15

    .line 496
    iput v11, v15, Lorg/concentus/OpusEncoder;->stream_channels:I

    goto :goto_a

    :cond_14
    move-object/from16 v23, v1

    const/4 v1, 0x2

    .line 497
    :cond_15
    iget v11, v15, Lorg/concentus/OpusEncoder;->channels:I

    if-ne v11, v1, :cond_18

    .line 500
    iget v11, v15, Lorg/concentus/OpusEncoder;->stream_channels:I

    if-ne v11, v1, :cond_16

    const/16 v1, 0x7530

    const/16 v11, -0x3e8

    add-int/2addr v1, v11

    goto :goto_8

    :cond_16
    const/16 v1, 0x7530

    add-int/lit16 v1, v1, 0x3e8

    :goto_8
    if-le v7, v1, :cond_17

    const/4 v1, 0x2

    goto :goto_9

    :cond_17
    const/4 v1, 0x1

    .line 505
    :goto_9
    iput v1, v15, Lorg/concentus/OpusEncoder;->stream_channels:I

    goto :goto_a

    .line 507
    :cond_18
    iput v11, v15, Lorg/concentus/OpusEncoder;->stream_channels:I

    .line 509
    :goto_a
    iget v1, v15, Lorg/concentus/OpusEncoder;->bitrate_bps:I

    iget v7, v15, Lorg/concentus/OpusEncoder;->stream_channels:I

    mul-int/lit8 v7, v7, 0x28

    add-int/lit8 v7, v7, 0x14

    iget v11, v15, Lorg/concentus/OpusEncoder;->Fs:I

    div-int/2addr v11, v5

    const/16 v12, 0x32

    sub-int/2addr v11, v12

    mul-int/2addr v7, v11

    sub-int/2addr v1, v7

    .line 512
    iget-object v7, v15, Lorg/concentus/OpusEncoder;->application:Lorg/concentus/OpusApplication;

    sget-object v11, Lorg/concentus/OpusApplication;->OPUS_APPLICATION_RESTRICTED_LOWDELAY:Lorg/concentus/OpusApplication;

    if-ne v7, v11, :cond_19

    .line 513
    sget-object v3, Lorg/concentus/OpusMode;->MODE_CELT_ONLY:Lorg/concentus/OpusMode;

    iput-object v3, v15, Lorg/concentus/OpusEncoder;->mode:Lorg/concentus/OpusMode;

    move/from16 v29, v6

    const/4 v12, 0x0

    goto/16 :goto_d

    .line 514
    :cond_19
    iget-object v7, v15, Lorg/concentus/OpusEncoder;->user_forced_mode:Lorg/concentus/OpusMode;

    sget-object v11, Lorg/concentus/OpusMode;->MODE_AUTO:Lorg/concentus/OpusMode;

    if-ne v7, v11, :cond_1f

    rsub-int v7, v3, 0x7fff

    .line 519
    sget-object v11, Lorg/concentus/OpusTables;->mode_thresholds:[[I

    const/4 v12, 0x0

    aget-object v11, v11, v12

    aget v11, v11, v12

    invoke-static {v7, v11}, Lorg/concentus/Inlines;->MULT16_32_Q15(II)I

    move-result v11

    sget-object v20, Lorg/concentus/OpusTables;->mode_thresholds:[[I

    const/16 v27, 0x1

    aget-object v20, v20, v27

    move/from16 v29, v6

    aget v6, v20, v12

    .line 520
    invoke-static {v3, v6}, Lorg/concentus/Inlines;->MULT16_32_Q15(II)I

    move-result v6

    add-int/2addr v11, v6

    .line 521
    sget-object v6, Lorg/concentus/OpusTables;->mode_thresholds:[[I

    aget-object v6, v6, v27

    aget v6, v6, v27

    invoke-static {v7, v6}, Lorg/concentus/Inlines;->MULT16_32_Q15(II)I

    move-result v6

    sget-object v7, Lorg/concentus/OpusTables;->mode_thresholds:[[I

    aget-object v7, v7, v27

    aget v7, v7, v27

    .line 522
    invoke-static {v3, v7}, Lorg/concentus/Inlines;->MULT16_32_Q15(II)I

    move-result v3

    add-int/2addr v6, v3

    mul-int v3, v9, v9

    sub-int/2addr v11, v6

    mul-int/2addr v3, v11

    const/16 v7, 0xe

    shr-int/2addr v3, v7

    add-int/2addr v6, v3

    .line 526
    iget-object v3, v15, Lorg/concentus/OpusEncoder;->application:Lorg/concentus/OpusApplication;

    sget-object v7, Lorg/concentus/OpusApplication;->OPUS_APPLICATION_VOIP:Lorg/concentus/OpusApplication;

    if-ne v3, v7, :cond_1a

    add-int/lit16 v6, v6, 0x1f40

    .line 532
    :cond_1a
    iget-object v3, v15, Lorg/concentus/OpusEncoder;->prev_mode:Lorg/concentus/OpusMode;

    sget-object v7, Lorg/concentus/OpusMode;->MODE_CELT_ONLY:Lorg/concentus/OpusMode;

    if-ne v3, v7, :cond_1b

    add-int/lit16 v6, v6, -0xfa0

    goto :goto_b

    .line 534
    :cond_1b
    iget-object v3, v15, Lorg/concentus/OpusEncoder;->prev_mode:Lorg/concentus/OpusMode;

    sget-object v7, Lorg/concentus/OpusMode;->MODE_AUTO:Lorg/concentus/OpusMode;

    if-eq v3, v7, :cond_1c

    iget-object v3, v15, Lorg/concentus/OpusEncoder;->prev_mode:Lorg/concentus/OpusMode;

    sget-object v7, Lorg/concentus/OpusMode;->MODE_UNKNOWN:Lorg/concentus/OpusMode;

    if-eq v3, v7, :cond_1c

    add-int/lit16 v6, v6, 0xfa0

    :cond_1c
    :goto_b
    if-lt v1, v6, :cond_1d

    .line 538
    sget-object v3, Lorg/concentus/OpusMode;->MODE_CELT_ONLY:Lorg/concentus/OpusMode;

    goto :goto_c

    :cond_1d
    sget-object v3, Lorg/concentus/OpusMode;->MODE_SILK_ONLY:Lorg/concentus/OpusMode;

    :goto_c
    iput-object v3, v15, Lorg/concentus/OpusEncoder;->mode:Lorg/concentus/OpusMode;

    .line 541
    iget-object v3, v15, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    iget v3, v3, Lorg/concentus/EncControlState;->useInBandFEC:I

    if-eqz v3, :cond_1e

    iget-object v3, v15, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    iget v3, v3, Lorg/concentus/EncControlState;->packetLossPercentage:I

    rsub-int v6, v9, 0x80

    shr-int/lit8 v6, v6, 0x4

    if-le v3, v6, :cond_1e

    .line 542
    sget-object v3, Lorg/concentus/OpusMode;->MODE_SILK_ONLY:Lorg/concentus/OpusMode;

    iput-object v3, v15, Lorg/concentus/OpusEncoder;->mode:Lorg/concentus/OpusMode;

    .line 545
    :cond_1e
    iget-object v3, v15, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    iget v3, v3, Lorg/concentus/EncControlState;->useDTX:I

    if-eqz v3, :cond_20

    const/16 v3, 0x64

    if-le v9, v3, :cond_20

    .line 546
    sget-object v3, Lorg/concentus/OpusMode;->MODE_SILK_ONLY:Lorg/concentus/OpusMode;

    iput-object v3, v15, Lorg/concentus/OpusEncoder;->mode:Lorg/concentus/OpusMode;

    goto :goto_d

    :cond_1f
    move/from16 v29, v6

    const/4 v12, 0x0

    .line 549
    iget-object v3, v15, Lorg/concentus/OpusEncoder;->user_forced_mode:Lorg/concentus/OpusMode;

    iput-object v3, v15, Lorg/concentus/OpusEncoder;->mode:Lorg/concentus/OpusMode;

    .line 553
    :cond_20
    :goto_d
    iget-object v3, v15, Lorg/concentus/OpusEncoder;->mode:Lorg/concentus/OpusMode;

    sget-object v6, Lorg/concentus/OpusMode;->MODE_CELT_ONLY:Lorg/concentus/OpusMode;

    if-eq v3, v6, :cond_21

    iget v3, v15, Lorg/concentus/OpusEncoder;->Fs:I

    const/16 v6, 0x64

    div-int/2addr v3, v6

    if-ge v5, v3, :cond_21

    .line 554
    sget-object v3, Lorg/concentus/OpusMode;->MODE_CELT_ONLY:Lorg/concentus/OpusMode;

    iput-object v3, v15, Lorg/concentus/OpusEncoder;->mode:Lorg/concentus/OpusMode;

    .line 556
    :cond_21
    iget v3, v15, Lorg/concentus/OpusEncoder;->lfe:I

    if-eqz v3, :cond_22

    .line 557
    sget-object v3, Lorg/concentus/OpusMode;->MODE_CELT_ONLY:Lorg/concentus/OpusMode;

    iput-object v3, v15, Lorg/concentus/OpusEncoder;->mode:Lorg/concentus/OpusMode;

    :cond_22
    const/16 v7, 0x32

    if-le v10, v7, :cond_23

    const/16 v7, 0x2ee0

    goto :goto_e

    :cond_23
    const/16 v7, 0x1f40

    :goto_e
    mul-int/2addr v7, v5

    .line 560
    iget v11, v15, Lorg/concentus/OpusEncoder;->Fs:I

    const/16 v18, 0x8

    mul-int/lit8 v11, v11, 0x8

    div-int/2addr v7, v11

    if-ge v4, v7, :cond_24

    .line 561
    sget-object v7, Lorg/concentus/OpusMode;->MODE_CELT_ONLY:Lorg/concentus/OpusMode;

    iput-object v7, v15, Lorg/concentus/OpusEncoder;->mode:Lorg/concentus/OpusMode;

    .line 564
    :cond_24
    iget v7, v15, Lorg/concentus/OpusEncoder;->stream_channels:I

    const/4 v11, 0x1

    if-ne v7, v11, :cond_25

    iget v7, v15, Lorg/concentus/OpusEncoder;->prev_channels:I

    const/4 v11, 0x2

    if-ne v7, v11, :cond_25

    iget-object v7, v15, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    iget v7, v7, Lorg/concentus/EncControlState;->toMono:I

    if-nez v7, :cond_25

    iget-object v7, v15, Lorg/concentus/OpusEncoder;->mode:Lorg/concentus/OpusMode;

    sget-object v11, Lorg/concentus/OpusMode;->MODE_CELT_ONLY:Lorg/concentus/OpusMode;

    if-eq v7, v11, :cond_25

    iget-object v7, v15, Lorg/concentus/OpusEncoder;->prev_mode:Lorg/concentus/OpusMode;

    sget-object v11, Lorg/concentus/OpusMode;->MODE_CELT_ONLY:Lorg/concentus/OpusMode;

    if-eq v7, v11, :cond_25

    .line 567
    iget-object v7, v15, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    const/4 v11, 0x1

    iput v11, v7, Lorg/concentus/EncControlState;->toMono:I

    const/4 v7, 0x2

    .line 568
    iput v7, v15, Lorg/concentus/OpusEncoder;->stream_channels:I

    goto :goto_f

    .line 570
    :cond_25
    iget-object v7, v15, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    iput v12, v7, Lorg/concentus/EncControlState;->toMono:I

    .line 573
    :goto_f
    iget-object v7, v15, Lorg/concentus/OpusEncoder;->prev_mode:Lorg/concentus/OpusMode;

    sget-object v11, Lorg/concentus/OpusMode;->MODE_AUTO:Lorg/concentus/OpusMode;

    if-eq v7, v11, :cond_2b

    iget-object v7, v15, Lorg/concentus/OpusEncoder;->prev_mode:Lorg/concentus/OpusMode;

    sget-object v11, Lorg/concentus/OpusMode;->MODE_UNKNOWN:Lorg/concentus/OpusMode;

    if-eq v7, v11, :cond_2b

    iget-object v7, v15, Lorg/concentus/OpusEncoder;->mode:Lorg/concentus/OpusMode;

    sget-object v11, Lorg/concentus/OpusMode;->MODE_CELT_ONLY:Lorg/concentus/OpusMode;

    if-eq v7, v11, :cond_26

    iget-object v7, v15, Lorg/concentus/OpusEncoder;->prev_mode:Lorg/concentus/OpusMode;

    sget-object v11, Lorg/concentus/OpusMode;->MODE_CELT_ONLY:Lorg/concentus/OpusMode;

    if-eq v7, v11, :cond_27

    :cond_26
    iget-object v7, v15, Lorg/concentus/OpusEncoder;->mode:Lorg/concentus/OpusMode;

    sget-object v11, Lorg/concentus/OpusMode;->MODE_CELT_ONLY:Lorg/concentus/OpusMode;

    if-ne v7, v11, :cond_2b

    iget-object v7, v15, Lorg/concentus/OpusEncoder;->prev_mode:Lorg/concentus/OpusMode;

    sget-object v11, Lorg/concentus/OpusMode;->MODE_CELT_ONLY:Lorg/concentus/OpusMode;

    if-eq v7, v11, :cond_2b

    .line 577
    :cond_27
    iget-object v7, v15, Lorg/concentus/OpusEncoder;->mode:Lorg/concentus/OpusMode;

    sget-object v11, Lorg/concentus/OpusMode;->MODE_CELT_ONLY:Lorg/concentus/OpusMode;

    if-eq v7, v11, :cond_28

    const/4 v7, 0x1

    goto :goto_10

    :cond_28
    move v7, v12

    :goto_10
    if-nez v7, :cond_2a

    .line 580
    iget v11, v15, Lorg/concentus/OpusEncoder;->Fs:I

    const/16 v20, 0x64

    div-int/lit8 v11, v11, 0x64

    if-lt v5, v11, :cond_29

    .line 581
    iget-object v11, v15, Lorg/concentus/OpusEncoder;->prev_mode:Lorg/concentus/OpusMode;

    iput-object v11, v15, Lorg/concentus/OpusEncoder;->mode:Lorg/concentus/OpusMode;

    move v11, v7

    const/4 v7, 0x1

    const/16 v20, 0x1

    goto :goto_11

    :cond_29
    move v11, v7

    move v7, v12

    move/from16 v20, v7

    goto :goto_11

    :cond_2a
    move v11, v7

    move/from16 v20, v12

    const/4 v7, 0x1

    goto :goto_11

    :cond_2b
    move v7, v12

    move v11, v7

    move/from16 v20, v11

    .line 589
    :goto_11
    iget v6, v15, Lorg/concentus/OpusEncoder;->silk_bw_switch:I

    if-eqz v6, :cond_2c

    .line 592
    iput v12, v15, Lorg/concentus/OpusEncoder;->silk_bw_switch:I

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v11, 0x1

    goto :goto_12

    :cond_2c
    move v6, v12

    :goto_12
    if-eqz v7, :cond_2d

    .line 598
    iget v12, v15, Lorg/concentus/OpusEncoder;->Fs:I

    div-int/lit16 v3, v12, 0xc8

    mul-int/2addr v3, v4

    div-int/lit16 v12, v12, 0xc8

    add-int/2addr v12, v5

    div-int/2addr v3, v12

    const/16 v12, 0x101

    invoke-static {v12, v3}, Lorg/concentus/Inlines;->IMIN(II)I

    move-result v3

    .line 600
    iget v12, v15, Lorg/concentus/OpusEncoder;->use_vbr:I

    if-eqz v12, :cond_2e

    .line 601
    iget v12, v15, Lorg/concentus/OpusEncoder;->bitrate_bps:I

    div-int/lit16 v12, v12, 0x640

    invoke-static {v3, v12}, Lorg/concentus/Inlines;->IMIN(II)I

    move-result v3

    goto :goto_13

    :cond_2d
    const/4 v3, 0x0

    .line 605
    :cond_2e
    :goto_13
    iget-object v12, v15, Lorg/concentus/OpusEncoder;->mode:Lorg/concentus/OpusMode;

    move/from16 v31, v6

    sget-object v6, Lorg/concentus/OpusMode;->MODE_CELT_ONLY:Lorg/concentus/OpusMode;

    if-eq v12, v6, :cond_2f

    iget-object v6, v15, Lorg/concentus/OpusEncoder;->prev_mode:Lorg/concentus/OpusMode;

    sget-object v12, Lorg/concentus/OpusMode;->MODE_CELT_ONLY:Lorg/concentus/OpusMode;

    if-ne v6, v12, :cond_2f

    .line 606
    new-instance v6, Lorg/concentus/EncControlState;

    invoke-direct {v6}, Lorg/concentus/EncControlState;-><init>()V

    move-object/from16 v12, v25

    .line 607
    invoke-static {v12, v6}, Lorg/concentus/EncodeAPI;->silk_InitEncoder(Lorg/concentus/SilkEncoder;Lorg/concentus/EncControlState;)I

    const/16 v31, 0x1

    goto :goto_14

    :cond_2f
    move-object/from16 v12, v25

    .line 612
    :goto_14
    iget-object v6, v15, Lorg/concentus/OpusEncoder;->mode:Lorg/concentus/OpusMode;

    move/from16 v25, v7

    sget-object v7, Lorg/concentus/OpusMode;->MODE_CELT_ONLY:Lorg/concentus/OpusMode;

    if-eq v6, v7, :cond_31

    iget v6, v15, Lorg/concentus/OpusEncoder;->first:I

    if-nez v6, :cond_31

    iget-object v6, v15, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    iget v6, v6, Lorg/concentus/EncControlState;->allowBandwidthSwitch:I

    if-eqz v6, :cond_30

    goto :goto_15

    :cond_30
    move/from16 v36, v3

    move/from16 v34, v10

    move/from16 v33, v11

    move-object/from16 v35, v12

    goto/16 :goto_1c

    :cond_31
    :goto_15
    const/16 v6, 0x8

    .line 615
    new-array v7, v6, [I

    .line 616
    sget-object v6, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_FULLBAND:Lorg/concentus/OpusBandwidth;

    move-object/from16 v32, v6

    .line 620
    iget-object v6, v15, Lorg/concentus/OpusEncoder;->mode:Lorg/concentus/OpusMode;

    move/from16 v33, v11

    sget-object v11, Lorg/concentus/OpusMode;->MODE_CELT_ONLY:Lorg/concentus/OpusMode;

    if-eq v6, v11, :cond_32

    .line 622
    iget-object v6, v15, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    iget v6, v6, Lorg/concentus/EncControlState;->complexity:I

    add-int/lit8 v6, v6, 0x2d

    mul-int/2addr v6, v1

    const/16 v11, 0x32

    div-int/2addr v6, v11

    .line 624
    iget v11, v15, Lorg/concentus/OpusEncoder;->use_vbr:I

    if-nez v11, :cond_33

    add-int/lit16 v6, v6, -0x3e8

    goto :goto_16

    :cond_32
    move v6, v1

    .line 628
    :cond_33
    :goto_16
    iget v11, v15, Lorg/concentus/OpusEncoder;->channels:I

    move/from16 v34, v10

    const/4 v10, 0x2

    if-ne v11, v10, :cond_34

    iget v10, v15, Lorg/concentus/OpusEncoder;->force_channels:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_34

    .line 629
    sget-object v10, Lorg/concentus/OpusTables;->stereo_voice_bandwidth_thresholds:[I

    .line 630
    sget-object v11, Lorg/concentus/OpusTables;->stereo_music_bandwidth_thresholds:[I

    goto :goto_17

    .line 632
    :cond_34
    sget-object v10, Lorg/concentus/OpusTables;->mono_voice_bandwidth_thresholds:[I

    .line 633
    sget-object v11, Lorg/concentus/OpusTables;->mono_music_bandwidth_thresholds:[I

    :goto_17
    move/from16 v36, v3

    move-object/from16 v35, v12

    const/16 v3, 0x8

    const/4 v12, 0x0

    :goto_18
    if-ge v12, v3, :cond_35

    .line 637
    aget v3, v11, v12

    mul-int v37, v9, v9

    aget v38, v10, v12

    sub-int v38, v38, v3

    mul-int v37, v37, v38

    const/16 v19, 0xe

    shr-int/lit8 v37, v37, 0xe

    add-int v3, v3, v37

    aput v3, v7, v12

    add-int/lit8 v12, v12, 0x1

    const/16 v3, 0x8

    goto :goto_18

    :cond_35
    move-object/from16 v3, v32

    .line 642
    :goto_19
    invoke-static {v3}, Lorg/concentus/OpusBandwidthHelpers;->GetOrdinal(Lorg/concentus/OpusBandwidth;)I

    move-result v9

    sget-object v10, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_MEDIUMBAND:Lorg/concentus/OpusBandwidth;

    invoke-static {v10}, Lorg/concentus/OpusBandwidthHelpers;->GetOrdinal(Lorg/concentus/OpusBandwidth;)I

    move-result v10

    sub-int/2addr v9, v10

    const/4 v10, 0x2

    mul-int/2addr v9, v10

    aget v9, v7, v9

    .line 643
    invoke-static {v3}, Lorg/concentus/OpusBandwidthHelpers;->GetOrdinal(Lorg/concentus/OpusBandwidth;)I

    move-result v11

    sget-object v12, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_MEDIUMBAND:Lorg/concentus/OpusBandwidth;

    invoke-static {v12}, Lorg/concentus/OpusBandwidthHelpers;->GetOrdinal(Lorg/concentus/OpusBandwidth;)I

    move-result v12

    sub-int/2addr v11, v12

    mul-int/2addr v11, v10

    const/4 v10, 0x1

    add-int/2addr v11, v10

    aget v10, v7, v11

    .line 644
    iget v11, v15, Lorg/concentus/OpusEncoder;->first:I

    if-nez v11, :cond_37

    .line 645
    iget-object v11, v15, Lorg/concentus/OpusEncoder;->bandwidth:Lorg/concentus/OpusBandwidth;

    invoke-static {v11}, Lorg/concentus/OpusBandwidthHelpers;->GetOrdinal(Lorg/concentus/OpusBandwidth;)I

    move-result v11

    invoke-static {v3}, Lorg/concentus/OpusBandwidthHelpers;->GetOrdinal(Lorg/concentus/OpusBandwidth;)I

    move-result v12

    if-lt v11, v12, :cond_36

    sub-int/2addr v9, v10

    goto :goto_1a

    :cond_36
    add-int/2addr v9, v10

    :cond_37
    :goto_1a
    if-lt v6, v9, :cond_38

    goto :goto_1b

    :cond_38
    const/4 v9, 0x1

    .line 655
    invoke-static {v3, v9}, Lorg/concentus/OpusBandwidthHelpers;->SUBTRACT(Lorg/concentus/OpusBandwidth;I)Lorg/concentus/OpusBandwidth;

    move-result-object v3

    .line 656
    invoke-static {v3}, Lorg/concentus/OpusBandwidthHelpers;->GetOrdinal(Lorg/concentus/OpusBandwidth;)I

    move-result v9

    sget-object v10, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_NARROWBAND:Lorg/concentus/OpusBandwidth;

    invoke-static {v10}, Lorg/concentus/OpusBandwidthHelpers;->GetOrdinal(Lorg/concentus/OpusBandwidth;)I

    move-result v10

    if-gt v9, v10, :cond_af

    .line 657
    :goto_1b
    iput-object v3, v15, Lorg/concentus/OpusEncoder;->bandwidth:Lorg/concentus/OpusBandwidth;

    .line 660
    iget v3, v15, Lorg/concentus/OpusEncoder;->first:I

    if-nez v3, :cond_39

    iget-object v3, v15, Lorg/concentus/OpusEncoder;->mode:Lorg/concentus/OpusMode;

    sget-object v6, Lorg/concentus/OpusMode;->MODE_CELT_ONLY:Lorg/concentus/OpusMode;

    if-eq v3, v6, :cond_39

    iget-object v3, v15, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    iget v3, v3, Lorg/concentus/EncControlState;->inWBmodeWithoutVariableLP:I

    if-nez v3, :cond_39

    iget-object v3, v15, Lorg/concentus/OpusEncoder;->bandwidth:Lorg/concentus/OpusBandwidth;

    .line 662
    invoke-static {v3}, Lorg/concentus/OpusBandwidthHelpers;->GetOrdinal(Lorg/concentus/OpusBandwidth;)I

    move-result v3

    sget-object v6, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_WIDEBAND:Lorg/concentus/OpusBandwidth;

    invoke-static {v6}, Lorg/concentus/OpusBandwidthHelpers;->GetOrdinal(Lorg/concentus/OpusBandwidth;)I

    move-result v6

    if-le v3, v6, :cond_39

    .line 663
    sget-object v3, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_WIDEBAND:Lorg/concentus/OpusBandwidth;

    iput-object v3, v15, Lorg/concentus/OpusEncoder;->bandwidth:Lorg/concentus/OpusBandwidth;

    .line 667
    :cond_39
    :goto_1c
    iget-object v3, v15, Lorg/concentus/OpusEncoder;->bandwidth:Lorg/concentus/OpusBandwidth;

    invoke-static {v3}, Lorg/concentus/OpusBandwidthHelpers;->GetOrdinal(Lorg/concentus/OpusBandwidth;)I

    move-result v3

    iget-object v6, v15, Lorg/concentus/OpusEncoder;->max_bandwidth:Lorg/concentus/OpusBandwidth;

    invoke-static {v6}, Lorg/concentus/OpusBandwidthHelpers;->GetOrdinal(Lorg/concentus/OpusBandwidth;)I

    move-result v6

    if-le v3, v6, :cond_3a

    .line 668
    iget-object v3, v15, Lorg/concentus/OpusEncoder;->max_bandwidth:Lorg/concentus/OpusBandwidth;

    iput-object v3, v15, Lorg/concentus/OpusEncoder;->bandwidth:Lorg/concentus/OpusBandwidth;

    .line 671
    :cond_3a
    iget-object v3, v15, Lorg/concentus/OpusEncoder;->user_bandwidth:Lorg/concentus/OpusBandwidth;

    sget-object v6, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_AUTO:Lorg/concentus/OpusBandwidth;

    if-eq v3, v6, :cond_3b

    .line 672
    iget-object v3, v15, Lorg/concentus/OpusEncoder;->user_bandwidth:Lorg/concentus/OpusBandwidth;

    iput-object v3, v15, Lorg/concentus/OpusEncoder;->bandwidth:Lorg/concentus/OpusBandwidth;

    .line 676
    :cond_3b
    iget-object v3, v15, Lorg/concentus/OpusEncoder;->mode:Lorg/concentus/OpusMode;

    sget-object v6, Lorg/concentus/OpusMode;->MODE_CELT_ONLY:Lorg/concentus/OpusMode;

    if-eq v3, v6, :cond_3c

    const/16 v3, 0x3a98

    if-ge v8, v3, :cond_3c

    .line 677
    iget-object v3, v15, Lorg/concentus/OpusEncoder;->bandwidth:Lorg/concentus/OpusBandwidth;

    sget-object v6, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_WIDEBAND:Lorg/concentus/OpusBandwidth;

    invoke-static {v3, v6}, Lorg/concentus/OpusBandwidthHelpers;->MIN(Lorg/concentus/OpusBandwidth;Lorg/concentus/OpusBandwidth;)Lorg/concentus/OpusBandwidth;

    move-result-object v3

    iput-object v3, v15, Lorg/concentus/OpusEncoder;->bandwidth:Lorg/concentus/OpusBandwidth;

    .line 682
    :cond_3c
    iget v3, v15, Lorg/concentus/OpusEncoder;->Fs:I

    const/16 v6, 0x5dc0

    if-gt v3, v6, :cond_3d

    iget-object v3, v15, Lorg/concentus/OpusEncoder;->bandwidth:Lorg/concentus/OpusBandwidth;

    invoke-static {v3}, Lorg/concentus/OpusBandwidthHelpers;->GetOrdinal(Lorg/concentus/OpusBandwidth;)I

    move-result v3

    sget-object v6, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_SUPERWIDEBAND:Lorg/concentus/OpusBandwidth;

    invoke-static {v6}, Lorg/concentus/OpusBandwidthHelpers;->GetOrdinal(Lorg/concentus/OpusBandwidth;)I

    move-result v6

    if-le v3, v6, :cond_3d

    .line 683
    sget-object v3, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_SUPERWIDEBAND:Lorg/concentus/OpusBandwidth;

    iput-object v3, v15, Lorg/concentus/OpusEncoder;->bandwidth:Lorg/concentus/OpusBandwidth;

    .line 685
    :cond_3d
    iget v3, v15, Lorg/concentus/OpusEncoder;->Fs:I

    const/16 v6, 0x3e80

    if-gt v3, v6, :cond_3e

    iget-object v3, v15, Lorg/concentus/OpusEncoder;->bandwidth:Lorg/concentus/OpusBandwidth;

    invoke-static {v3}, Lorg/concentus/OpusBandwidthHelpers;->GetOrdinal(Lorg/concentus/OpusBandwidth;)I

    move-result v3

    sget-object v7, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_WIDEBAND:Lorg/concentus/OpusBandwidth;

    invoke-static {v7}, Lorg/concentus/OpusBandwidthHelpers;->GetOrdinal(Lorg/concentus/OpusBandwidth;)I

    move-result v7

    if-le v3, v7, :cond_3e

    .line 686
    sget-object v3, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_WIDEBAND:Lorg/concentus/OpusBandwidth;

    iput-object v3, v15, Lorg/concentus/OpusEncoder;->bandwidth:Lorg/concentus/OpusBandwidth;

    .line 688
    :cond_3e
    iget v3, v15, Lorg/concentus/OpusEncoder;->Fs:I

    const/16 v7, 0x2ee0

    if-gt v3, v7, :cond_3f

    iget-object v3, v15, Lorg/concentus/OpusEncoder;->bandwidth:Lorg/concentus/OpusBandwidth;

    invoke-static {v3}, Lorg/concentus/OpusBandwidthHelpers;->GetOrdinal(Lorg/concentus/OpusBandwidth;)I

    move-result v3

    sget-object v7, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_MEDIUMBAND:Lorg/concentus/OpusBandwidth;

    invoke-static {v7}, Lorg/concentus/OpusBandwidthHelpers;->GetOrdinal(Lorg/concentus/OpusBandwidth;)I

    move-result v7

    if-le v3, v7, :cond_3f

    .line 689
    sget-object v3, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_MEDIUMBAND:Lorg/concentus/OpusBandwidth;

    iput-object v3, v15, Lorg/concentus/OpusEncoder;->bandwidth:Lorg/concentus/OpusBandwidth;

    .line 691
    :cond_3f
    iget v3, v15, Lorg/concentus/OpusEncoder;->Fs:I

    const/16 v7, 0x1f40

    if-gt v3, v7, :cond_40

    iget-object v3, v15, Lorg/concentus/OpusEncoder;->bandwidth:Lorg/concentus/OpusBandwidth;

    invoke-static {v3}, Lorg/concentus/OpusBandwidthHelpers;->GetOrdinal(Lorg/concentus/OpusBandwidth;)I

    move-result v3

    sget-object v7, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_NARROWBAND:Lorg/concentus/OpusBandwidth;

    invoke-static {v7}, Lorg/concentus/OpusBandwidthHelpers;->GetOrdinal(Lorg/concentus/OpusBandwidth;)I

    move-result v7

    if-le v3, v7, :cond_40

    .line 692
    sget-object v3, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_NARROWBAND:Lorg/concentus/OpusBandwidth;

    iput-object v3, v15, Lorg/concentus/OpusEncoder;->bandwidth:Lorg/concentus/OpusBandwidth;

    .line 695
    :cond_40
    iget-object v3, v15, Lorg/concentus/OpusEncoder;->detected_bandwidth:Lorg/concentus/OpusBandwidth;

    sget-object v7, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_UNKNOWN:Lorg/concentus/OpusBandwidth;

    if-eq v3, v7, :cond_45

    iget-object v3, v15, Lorg/concentus/OpusEncoder;->user_bandwidth:Lorg/concentus/OpusBandwidth;

    sget-object v7, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_AUTO:Lorg/concentus/OpusBandwidth;

    if-ne v3, v7, :cond_45

    .line 701
    iget v3, v15, Lorg/concentus/OpusEncoder;->stream_channels:I

    mul-int/lit16 v3, v3, 0x4650

    if-gt v1, v3, :cond_41

    iget-object v3, v15, Lorg/concentus/OpusEncoder;->mode:Lorg/concentus/OpusMode;

    sget-object v7, Lorg/concentus/OpusMode;->MODE_CELT_ONLY:Lorg/concentus/OpusMode;

    if-ne v3, v7, :cond_41

    .line 702
    sget-object v3, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_NARROWBAND:Lorg/concentus/OpusBandwidth;

    goto :goto_1d

    .line 703
    :cond_41
    iget v3, v15, Lorg/concentus/OpusEncoder;->stream_channels:I

    mul-int/lit16 v3, v3, 0x5dc0

    if-gt v1, v3, :cond_42

    iget-object v3, v15, Lorg/concentus/OpusEncoder;->mode:Lorg/concentus/OpusMode;

    sget-object v7, Lorg/concentus/OpusMode;->MODE_CELT_ONLY:Lorg/concentus/OpusMode;

    if-ne v3, v7, :cond_42

    .line 704
    sget-object v3, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_MEDIUMBAND:Lorg/concentus/OpusBandwidth;

    goto :goto_1d

    .line 705
    :cond_42
    iget v3, v15, Lorg/concentus/OpusEncoder;->stream_channels:I

    mul-int/lit16 v7, v3, 0x7530

    if-gt v1, v7, :cond_43

    .line 706
    sget-object v3, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_WIDEBAND:Lorg/concentus/OpusBandwidth;

    goto :goto_1d

    :cond_43
    const v7, 0xabe0

    mul-int/2addr v3, v7

    if-gt v1, v3, :cond_44

    .line 708
    sget-object v3, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_SUPERWIDEBAND:Lorg/concentus/OpusBandwidth;

    goto :goto_1d

    .line 710
    :cond_44
    sget-object v3, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_FULLBAND:Lorg/concentus/OpusBandwidth;

    .line 713
    :goto_1d
    iget-object v7, v15, Lorg/concentus/OpusEncoder;->detected_bandwidth:Lorg/concentus/OpusBandwidth;

    invoke-static {v7, v3}, Lorg/concentus/OpusBandwidthHelpers;->MAX(Lorg/concentus/OpusBandwidth;Lorg/concentus/OpusBandwidth;)Lorg/concentus/OpusBandwidth;

    move-result-object v3

    iput-object v3, v15, Lorg/concentus/OpusEncoder;->detected_bandwidth:Lorg/concentus/OpusBandwidth;

    .line 714
    iget-object v7, v15, Lorg/concentus/OpusEncoder;->bandwidth:Lorg/concentus/OpusBandwidth;

    invoke-static {v7, v3}, Lorg/concentus/OpusBandwidthHelpers;->MIN(Lorg/concentus/OpusBandwidth;Lorg/concentus/OpusBandwidth;)Lorg/concentus/OpusBandwidth;

    move-result-object v3

    iput-object v3, v15, Lorg/concentus/OpusEncoder;->bandwidth:Lorg/concentus/OpusBandwidth;

    :cond_45
    move/from16 v12, p7

    move-object/from16 v9, v24

    .line 716
    invoke-virtual {v9, v12}, Lorg/concentus/CeltEncoder;->SetLSBDepth(I)V

    .line 719
    iget-object v3, v15, Lorg/concentus/OpusEncoder;->mode:Lorg/concentus/OpusMode;

    sget-object v7, Lorg/concentus/OpusMode;->MODE_CELT_ONLY:Lorg/concentus/OpusMode;

    if-ne v3, v7, :cond_46

    iget-object v3, v15, Lorg/concentus/OpusEncoder;->bandwidth:Lorg/concentus/OpusBandwidth;

    sget-object v7, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_MEDIUMBAND:Lorg/concentus/OpusBandwidth;

    if-ne v3, v7, :cond_46

    .line 720
    sget-object v3, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_WIDEBAND:Lorg/concentus/OpusBandwidth;

    iput-object v3, v15, Lorg/concentus/OpusEncoder;->bandwidth:Lorg/concentus/OpusBandwidth;

    .line 722
    :cond_46
    iget v3, v15, Lorg/concentus/OpusEncoder;->lfe:I

    if-eqz v3, :cond_47

    .line 723
    sget-object v3, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_NARROWBAND:Lorg/concentus/OpusBandwidth;

    iput-object v3, v15, Lorg/concentus/OpusEncoder;->bandwidth:Lorg/concentus/OpusBandwidth;

    .line 727
    :cond_47
    iget v3, v15, Lorg/concentus/OpusEncoder;->Fs:I

    const/16 v7, 0x32

    div-int/2addr v3, v7

    if-le v5, v3, :cond_53

    iget-object v3, v15, Lorg/concentus/OpusEncoder;->mode:Lorg/concentus/OpusMode;

    sget-object v7, Lorg/concentus/OpusMode;->MODE_CELT_ONLY:Lorg/concentus/OpusMode;

    if-eq v3, v7, :cond_48

    iget-object v3, v15, Lorg/concentus/OpusEncoder;->bandwidth:Lorg/concentus/OpusBandwidth;

    invoke-static {v3}, Lorg/concentus/OpusBandwidthHelpers;->GetOrdinal(Lorg/concentus/OpusBandwidth;)I

    move-result v3

    sget-object v7, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_WIDEBAND:Lorg/concentus/OpusBandwidth;

    invoke-static {v7}, Lorg/concentus/OpusBandwidthHelpers;->GetOrdinal(Lorg/concentus/OpusBandwidth;)I

    move-result v7

    if-le v3, v7, :cond_53

    .line 737
    :cond_48
    iget-object v1, v15, Lorg/concentus/OpusEncoder;->analysis:Lorg/concentus/TonalityAnalysisState;

    iget-boolean v1, v1, Lorg/concentus/TonalityAnalysisState;->enabled:Z

    if-eqz v1, :cond_49

    const/4 v10, -0x1

    if-eq v0, v10, :cond_49

    .line 738
    iget-object v1, v15, Lorg/concentus/OpusEncoder;->analysis:Lorg/concentus/TonalityAnalysisState;

    iput v0, v1, Lorg/concentus/TonalityAnalysisState;->read_pos:I

    .line 739
    iget-object v0, v15, Lorg/concentus/OpusEncoder;->analysis:Lorg/concentus/TonalityAnalysisState;

    iput v2, v0, Lorg/concentus/TonalityAnalysisState;->read_subframe:I

    .line 742
    :cond_49
    iget v0, v15, Lorg/concentus/OpusEncoder;->Fs:I

    div-int/lit8 v0, v0, 0x19

    if-le v5, v0, :cond_4a

    const/4 v11, 0x3

    goto :goto_1e

    :cond_4a
    const/4 v11, 0x2

    :goto_1e
    add-int/lit8 v0, v13, -0x3

    .line 743
    div-int/2addr v0, v11

    const/16 v1, 0x4fc

    invoke-static {v1, v0}, Lorg/concentus/Inlines;->IMIN(II)I

    move-result v16

    mul-int v0, v11, v16

    .line 745
    new-array v10, v0, [B

    .line 747
    new-instance v9, Lorg/concentus/OpusRepacketizer;

    invoke-direct {v9}, Lorg/concentus/OpusRepacketizer;-><init>()V

    .line 749
    iget-object v8, v15, Lorg/concentus/OpusEncoder;->user_forced_mode:Lorg/concentus/OpusMode;

    .line 750
    iget-object v7, v15, Lorg/concentus/OpusEncoder;->user_bandwidth:Lorg/concentus/OpusBandwidth;

    .line 751
    iget v6, v15, Lorg/concentus/OpusEncoder;->force_channels:I

    .line 753
    iget-object v0, v15, Lorg/concentus/OpusEncoder;->mode:Lorg/concentus/OpusMode;

    iput-object v0, v15, Lorg/concentus/OpusEncoder;->user_forced_mode:Lorg/concentus/OpusMode;

    .line 754
    iget-object v0, v15, Lorg/concentus/OpusEncoder;->bandwidth:Lorg/concentus/OpusBandwidth;

    iput-object v0, v15, Lorg/concentus/OpusEncoder;->user_bandwidth:Lorg/concentus/OpusBandwidth;

    .line 755
    iget v0, v15, Lorg/concentus/OpusEncoder;->stream_channels:I

    iput v0, v15, Lorg/concentus/OpusEncoder;->force_channels:I

    .line 756
    iget-object v0, v15, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    iget v5, v0, Lorg/concentus/EncControlState;->toMono:I

    if-eqz v5, :cond_4b

    const/4 v4, 0x1

    .line 759
    iput v4, v15, Lorg/concentus/OpusEncoder;->force_channels:I

    goto :goto_1f

    :cond_4b
    const/4 v4, 0x1

    .line 761
    iget v0, v15, Lorg/concentus/OpusEncoder;->stream_channels:I

    iput v0, v15, Lorg/concentus/OpusEncoder;->prev_channels:I

    :goto_1f
    const/4 v3, 0x0

    :goto_20
    if-ge v3, v11, :cond_4f

    .line 765
    iget-object v0, v15, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    const/4 v2, 0x0

    iput v2, v0, Lorg/concentus/EncControlState;->toMono:I

    if-eqz v20, :cond_4c

    add-int/lit8 v0, v11, -0x1

    if-ne v3, v0, :cond_4c

    .line 768
    sget-object v0, Lorg/concentus/OpusMode;->MODE_CELT_ONLY:Lorg/concentus/OpusMode;

    iput-object v0, v15, Lorg/concentus/OpusEncoder;->user_forced_mode:Lorg/concentus/OpusMode;

    .line 770
    :cond_4c
    iget v0, v15, Lorg/concentus/OpusEncoder;->channels:I

    iget v1, v15, Lorg/concentus/OpusEncoder;->Fs:I

    mul-int/2addr v0, v1

    const/16 v17, 0x32

    div-int/lit8 v0, v0, 0x32

    mul-int/2addr v0, v3

    add-int v18, v14, v0

    div-int/lit8 v19, v1, 0x32

    mul-int v1, v3, v16

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 p3, v1

    move-object/from16 v1, p1

    move/from16 v24, v2

    move/from16 v2, v18

    move/from16 v18, v3

    move/from16 v3, v19

    move/from16 v19, v4

    move-object v4, v10

    move/from16 v39, v5

    move/from16 v5, p3

    move/from16 v40, v6

    move/from16 v6, v16

    move-object/from16 v41, v7

    move v7, v12

    move-object/from16 v42, v8

    move-object/from16 v8, v23

    move-object/from16 v43, v9

    move/from16 v9, v21

    move-object/from16 v44, v10

    move/from16 v10, v22

    move/from16 v17, v11

    move/from16 v11, p11

    move/from16 v19, v12

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    invoke-virtual/range {v0 .. v14}, Lorg/concentus/OpusEncoder;->opus_encode_native([SII[BIII[SIIIIII)I

    move-result v0

    if-gez v0, :cond_4d

    .line 775
    sget v0, Lorg/concentus/OpusError;->OPUS_INTERNAL_ERROR:I

    return v0

    :cond_4d
    move/from16 v3, p3

    move-object/from16 v2, v43

    move-object/from16 v1, v44

    .line 777
    invoke-virtual {v2, v1, v3, v0}, Lorg/concentus/OpusRepacketizer;->addPacket([BII)I

    move-result v0

    if-gez v0, :cond_4e

    .line 780
    sget v0, Lorg/concentus/OpusError;->OPUS_INTERNAL_ERROR:I

    return v0

    :cond_4e
    add-int/lit8 v3, v18, 0x1

    move/from16 v14, p2

    move/from16 v13, p6

    move-object v10, v1

    move-object v9, v2

    move/from16 v11, v17

    move/from16 v12, v19

    move/from16 v5, v39

    move/from16 v6, v40

    move-object/from16 v7, v41

    move-object/from16 v8, v42

    const/4 v4, 0x1

    goto/16 :goto_20

    :cond_4f
    move/from16 v39, v5

    move/from16 v40, v6

    move-object/from16 v41, v7

    move-object/from16 v42, v8

    move-object v2, v9

    move/from16 v17, v11

    .line 783
    iget v0, v15, Lorg/concentus/OpusEncoder;->use_vbr:I

    if-eqz v0, :cond_50

    move/from16 v0, p6

    goto :goto_21

    .line 786
    :cond_50
    iget v0, v15, Lorg/concentus/OpusEncoder;->bitrate_bps:I

    const/4 v11, 0x3

    mul-int/2addr v0, v11

    const/16 v1, 0x4b0

    div-int v1, v1, v17

    div-int/2addr v0, v1

    move/from16 v12, p6

    invoke-static {v0, v12}, Lorg/concentus/Inlines;->IMIN(II)I

    move-result v0

    .line 788
    :goto_21
    iget v1, v15, Lorg/concentus/OpusEncoder;->use_vbr:I

    if-nez v1, :cond_51

    const/16 v45, 0x1

    goto :goto_22

    :cond_51
    const/16 v45, 0x0

    :goto_22
    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object/from16 p6, v2

    move/from16 p7, v1

    move/from16 p8, v17

    move-object/from16 p9, p4

    move/from16 p10, p5

    move/from16 p11, v0

    move/from16 p12, v3

    move/from16 p13, v45

    invoke-virtual/range {p6 .. p13}, Lorg/concentus/OpusRepacketizer;->opus_repacketizer_out_range_impl(II[BIIII)I

    move-result v0

    if-gez v0, :cond_52

    .line 790
    sget v0, Lorg/concentus/OpusError;->OPUS_INTERNAL_ERROR:I

    return v0

    :cond_52
    move-object/from16 v1, v42

    .line 792
    iput-object v1, v15, Lorg/concentus/OpusEncoder;->user_forced_mode:Lorg/concentus/OpusMode;

    move-object/from16 v1, v41

    .line 793
    iput-object v1, v15, Lorg/concentus/OpusEncoder;->user_bandwidth:Lorg/concentus/OpusBandwidth;

    move/from16 v1, v40

    .line 794
    iput v1, v15, Lorg/concentus/OpusEncoder;->force_channels:I

    .line 795
    iget-object v1, v15, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    move/from16 v2, v39

    iput v2, v1, Lorg/concentus/EncControlState;->toMono:I

    return v0

    :cond_53
    const/4 v10, -0x1

    const/4 v11, 0x3

    .line 799
    iget-object v0, v15, Lorg/concentus/OpusEncoder;->bandwidth:Lorg/concentus/OpusBandwidth;

    .line 803
    iget-object v2, v15, Lorg/concentus/OpusEncoder;->mode:Lorg/concentus/OpusMode;

    sget-object v3, Lorg/concentus/OpusMode;->MODE_SILK_ONLY:Lorg/concentus/OpusMode;

    if-ne v2, v3, :cond_54

    invoke-static {v0}, Lorg/concentus/OpusBandwidthHelpers;->GetOrdinal(Lorg/concentus/OpusBandwidth;)I

    move-result v2

    sget-object v3, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_WIDEBAND:Lorg/concentus/OpusBandwidth;

    invoke-static {v3}, Lorg/concentus/OpusBandwidthHelpers;->GetOrdinal(Lorg/concentus/OpusBandwidth;)I

    move-result v3

    if-le v2, v3, :cond_54

    .line 804
    sget-object v2, Lorg/concentus/OpusMode;->MODE_HYBRID:Lorg/concentus/OpusMode;

    iput-object v2, v15, Lorg/concentus/OpusEncoder;->mode:Lorg/concentus/OpusMode;

    .line 806
    :cond_54
    iget-object v2, v15, Lorg/concentus/OpusEncoder;->mode:Lorg/concentus/OpusMode;

    sget-object v3, Lorg/concentus/OpusMode;->MODE_HYBRID:Lorg/concentus/OpusMode;

    if-ne v2, v3, :cond_55

    invoke-static {v0}, Lorg/concentus/OpusBandwidthHelpers;->GetOrdinal(Lorg/concentus/OpusBandwidth;)I

    move-result v2

    sget-object v3, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_WIDEBAND:Lorg/concentus/OpusBandwidth;

    invoke-static {v3}, Lorg/concentus/OpusBandwidthHelpers;->GetOrdinal(Lorg/concentus/OpusBandwidth;)I

    move-result v3

    if-gt v2, v3, :cond_55

    .line 807
    sget-object v2, Lorg/concentus/OpusMode;->MODE_SILK_ONLY:Lorg/concentus/OpusMode;

    iput-object v2, v15, Lorg/concentus/OpusEncoder;->mode:Lorg/concentus/OpusMode;

    :cond_55
    sub-int v2, v4, v36

    .line 811
    iget v3, v15, Lorg/concentus/OpusEncoder;->bitrate_bps:I

    mul-int/2addr v3, v5

    iget v7, v15, Lorg/concentus/OpusEncoder;->Fs:I

    const/16 v12, 0x8

    mul-int/2addr v7, v12

    div-int/2addr v3, v7

    invoke-static {v2, v3}, Lorg/concentus/Inlines;->IMIN(II)I

    move-result v2

    const/4 v13, 0x1

    sub-int/2addr v2, v13

    move/from16 v14, p5

    add-int/lit8 v3, v14, 0x1

    add-int/lit8 v7, v4, -0x1

    move-object/from16 v12, p4

    move-object/from16 v10, v30

    .line 815
    invoke-virtual {v10, v12, v3, v7}, Lorg/concentus/EntropyCoder;->enc_init([BII)V

    add-int v19, v16, v5

    .line 817
    iget v13, v15, Lorg/concentus/OpusEncoder;->channels:I

    mul-int v6, v19, v13

    new-array v6, v6, [S

    .line 818
    iget-object v11, v15, Lorg/concentus/OpusEncoder;->delay_buffer:[S

    move/from16 v30, v8

    iget v8, v15, Lorg/concentus/OpusEncoder;->encoder_buffer:I

    sub-int v8, v8, v16

    mul-int/2addr v8, v13

    mul-int v13, v13, v16

    move/from16 v32, v4

    const/4 v4, 0x0

    invoke-static {v11, v8, v6, v4, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 820
    iget-object v8, v15, Lorg/concentus/OpusEncoder;->mode:Lorg/concentus/OpusMode;

    sget-object v11, Lorg/concentus/OpusMode;->MODE_CELT_ONLY:Lorg/concentus/OpusMode;

    if-ne v8, v11, :cond_56

    const/16 v8, 0x3c

    .line 821
    invoke-static {v8}, Lorg/concentus/Inlines;->silk_lin2log(I)I

    move-result v8

    const/16 v11, 0x8

    invoke-static {v8, v11}, Lorg/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v8

    move v13, v8

    move-object/from16 v8, v35

    goto :goto_23

    :cond_56
    move-object/from16 v8, v35

    const/16 v11, 0x8

    .line 823
    iget-object v13, v8, Lorg/concentus/SilkEncoder;->state_Fxx:[Lorg/concentus/SilkChannelEncoder;

    aget-object v13, v13, v4

    iget v13, v13, Lorg/concentus/SilkChannelEncoder;->variable_HP_smth1_Q15:I

    .line 826
    :goto_23
    iget v4, v15, Lorg/concentus/OpusEncoder;->variable_HP_smth2_Q15:I

    sub-int/2addr v13, v4

    const/16 v11, 0x3d7

    invoke-static {v4, v13, v11}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v4

    iput v4, v15, Lorg/concentus/OpusEncoder;->variable_HP_smth2_Q15:I

    const/16 v11, 0x8

    .line 830
    invoke-static {v4, v11}, Lorg/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v4

    invoke-static {v4}, Lorg/concentus/Inlines;->silk_log2lin(I)I

    move-result v4

    .line 832
    iget-object v11, v15, Lorg/concentus/OpusEncoder;->application:Lorg/concentus/OpusApplication;

    sget-object v13, Lorg/concentus/OpusApplication;->OPUS_APPLICATION_VOIP:Lorg/concentus/OpusApplication;

    if-ne v11, v13, :cond_57

    .line 833
    iget v11, v15, Lorg/concentus/OpusEncoder;->channels:I

    mul-int v13, v16, v11

    move/from16 v35, v3

    iget-object v3, v15, Lorg/concentus/OpusEncoder;->hp_mem:[I

    move/from16 v37, v1

    iget v1, v15, Lorg/concentus/OpusEncoder;->Fs:I

    move-object/from16 p6, p1

    move/from16 p7, p2

    move/from16 p8, v4

    move-object/from16 p9, v6

    move/from16 p10, v13

    move-object/from16 p11, v3

    move/from16 p12, p3

    move/from16 p13, v11

    move/from16 p14, v1

    invoke-static/range {p6 .. p14}, Lorg/concentus/CodecHelpers;->hp_cutoff([SII[SI[IIII)V

    goto :goto_24

    :cond_57
    move/from16 v37, v1

    move/from16 v35, v3

    .line 835
    iget v1, v15, Lorg/concentus/OpusEncoder;->channels:I

    mul-int v3, v16, v1

    iget-object v4, v15, Lorg/concentus/OpusEncoder;->hp_mem:[I

    iget v11, v15, Lorg/concentus/OpusEncoder;->Fs:I

    const/4 v13, 0x3

    move-object/from16 p6, p1

    move/from16 p7, p2

    move/from16 p8, v13

    move-object/from16 p9, v6

    move/from16 p10, v3

    move-object/from16 p11, v4

    move/from16 p12, p3

    move/from16 p13, v1

    move/from16 p14, v11

    invoke-static/range {p6 .. p14}, Lorg/concentus/CodecHelpers;->dc_reject([SII[SI[IIII)V

    .line 840
    :goto_24
    iget-object v1, v15, Lorg/concentus/OpusEncoder;->mode:Lorg/concentus/OpusMode;

    sget-object v3, Lorg/concentus/OpusMode;->MODE_CELT_ONLY:Lorg/concentus/OpusMode;

    if-eq v1, v3, :cond_7b

    .line 842
    iget v1, v15, Lorg/concentus/OpusEncoder;->channels:I

    mul-int/2addr v1, v5

    new-array v1, v1, [S

    mul-int/lit8 v3, v2, 0x8

    mul-int v3, v3, v34

    .line 846
    iget-object v4, v15, Lorg/concentus/OpusEncoder;->mode:Lorg/concentus/OpusMode;

    sget-object v13, Lorg/concentus/OpusMode;->MODE_HYBRID:Lorg/concentus/OpusMode;

    if-ne v4, v13, :cond_5c

    .line 849
    iget-object v4, v15, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    iget v13, v15, Lorg/concentus/OpusEncoder;->stream_channels:I

    iget v11, v15, Lorg/concentus/OpusEncoder;->Fs:I

    move-object/from16 v38, v9

    mul-int/lit8 v9, v5, 0x64

    if-ne v11, v9, :cond_58

    const/16 v9, 0x3e8

    goto :goto_25

    :cond_58
    const/4 v9, 0x0

    :goto_25
    add-int/lit16 v9, v9, 0x1388

    mul-int/2addr v13, v9

    iput v13, v4, Lorg/concentus/EncControlState;->bitRate:I

    .line 850
    sget-object v4, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_SUPERWIDEBAND:Lorg/concentus/OpusBandwidth;

    if-ne v0, v4, :cond_59

    .line 852
    iget-object v4, v15, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    iget v9, v4, Lorg/concentus/EncControlState;->bitRate:I

    iget-object v11, v15, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    iget v11, v11, Lorg/concentus/EncControlState;->bitRate:I

    sub-int v11, v3, v11

    const/4 v13, 0x2

    mul-int/2addr v11, v13

    const/4 v13, 0x3

    div-int/2addr v11, v13

    add-int/2addr v9, v11

    iput v9, v4, Lorg/concentus/EncControlState;->bitRate:I

    const/4 v13, 0x5

    goto :goto_26

    :cond_59
    const/4 v13, 0x3

    .line 856
    iget-object v4, v15, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    iget v9, v4, Lorg/concentus/EncControlState;->bitRate:I

    iget-object v11, v15, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    iget v11, v11, Lorg/concentus/EncControlState;->bitRate:I

    sub-int v11, v3, v11

    mul-int/2addr v11, v13

    const/4 v13, 0x5

    div-int/2addr v11, v13

    add-int/2addr v9, v11

    iput v9, v4, Lorg/concentus/EncControlState;->bitRate:I

    .line 859
    :goto_26
    iget-object v4, v15, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    iget v4, v4, Lorg/concentus/EncControlState;->bitRate:I

    mul-int/lit8 v9, v3, 0x4

    div-int/2addr v9, v13

    if-le v4, v9, :cond_5a

    .line 860
    iget-object v4, v15, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    iput v9, v4, Lorg/concentus/EncControlState;->bitRate:I

    .line 862
    :cond_5a
    iget-object v4, v15, Lorg/concentus/OpusEncoder;->energy_masking:[I

    if-nez v4, :cond_5d

    .line 864
    iget-object v4, v15, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    iget v4, v4, Lorg/concentus/EncControlState;->bitRate:I

    sub-int/2addr v3, v4

    .line 865
    sget-object v4, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_SUPERWIDEBAND:Lorg/concentus/OpusBandwidth;

    if-ne v0, v4, :cond_5b

    const/16 v4, 0xbb8

    goto :goto_27

    :cond_5b
    const/16 v4, 0xe10

    :goto_27
    const/16 v9, 0x9

    .line 866
    invoke-static {v3, v9}, Lorg/concentus/Inlines;->SHL32(II)I

    move-result v9

    iget v11, v15, Lorg/concentus/OpusEncoder;->stream_channels:I

    mul-int/2addr v11, v4

    add-int/2addr v3, v11

    const/4 v4, 0x6

    invoke-static {v3, v4}, Lorg/concentus/Inlines;->SHR32(II)I

    move-result v3

    div-int/2addr v9, v3

    const/16 v3, 0x6db6

    if-ge v9, v3, :cond_5d

    add-int/lit16 v9, v9, 0x1249

    goto :goto_28

    :cond_5c
    move-object/from16 v38, v9

    .line 871
    iget-object v4, v15, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    iput v3, v4, Lorg/concentus/EncControlState;->bitRate:I

    :cond_5d
    const/16 v9, 0x7fff

    .line 875
    :goto_28
    iget-object v3, v15, Lorg/concentus/OpusEncoder;->energy_masking:[I

    if-eqz v3, :cond_65

    iget v3, v15, Lorg/concentus/OpusEncoder;->use_vbr:I

    if-eqz v3, :cond_65

    iget v3, v15, Lorg/concentus/OpusEncoder;->lfe:I

    if-nez v3, :cond_65

    .line 882
    iget-object v3, v15, Lorg/concentus/OpusEncoder;->bandwidth:Lorg/concentus/OpusBandwidth;

    sget-object v4, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_NARROWBAND:Lorg/concentus/OpusBandwidth;

    if-ne v3, v4, :cond_5e

    const/16 v3, 0xd

    const/16 v4, 0x1f40

    goto :goto_29

    .line 885
    :cond_5e
    iget-object v3, v15, Lorg/concentus/OpusEncoder;->bandwidth:Lorg/concentus/OpusBandwidth;

    sget-object v4, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_MEDIUMBAND:Lorg/concentus/OpusBandwidth;

    if-ne v3, v4, :cond_5f

    const/16 v3, 0xf

    const/16 v4, 0x2ee0

    goto :goto_29

    :cond_5f
    const/16 v3, 0x11

    const/16 v4, 0x3e80

    :goto_29
    move/from16 p14, v9

    const/4 v11, 0x0

    const/4 v13, 0x0

    .line 889
    :goto_2a
    iget v9, v15, Lorg/concentus/OpusEncoder;->channels:I

    if-ge v11, v9, :cond_62

    const/4 v9, 0x0

    :goto_2b
    if-ge v9, v3, :cond_61

    .line 892
    iget-object v12, v15, Lorg/concentus/OpusEncoder;->energy_masking:[I

    mul-int/lit8 v39, v11, 0x15

    add-int v39, v39, v9

    aget v12, v12, v39

    const/16 v14, 0x200

    invoke-static {v12, v14}, Lorg/concentus/Inlines;->MIN16(II)I

    move-result v12

    const/16 v14, -0x800

    invoke-static {v12, v14}, Lorg/concentus/Inlines;->MAX16(II)I

    move-result v12

    if-lez v12, :cond_60

    .line 895
    invoke-static {v12}, Lorg/concentus/Inlines;->HALF16(I)I

    move-result v12

    :cond_60
    add-int/2addr v13, v12

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v12, p4

    move/from16 v14, p5

    goto :goto_2b

    :cond_61
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v12, p4

    move/from16 v14, p5

    goto :goto_2a

    .line 901
    :cond_62
    div-int/2addr v13, v3

    mul-int/2addr v13, v9

    add-int/lit16 v13, v13, 0xcd

    .line 903
    invoke-static {v4, v13}, Lorg/concentus/Inlines;->MULT16_16(II)I

    move-result v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Lorg/concentus/Inlines;->PSHR32(II)I

    move-result v3

    .line 904
    iget-object v4, v15, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    iget v4, v4, Lorg/concentus/EncControlState;->bitRate:I

    mul-int/lit8 v4, v4, -0x2

    const/4 v9, 0x3

    div-int/2addr v4, v9

    invoke-static {v3, v4}, Lorg/concentus/Inlines;->MAX32(II)I

    move-result v3

    .line 906
    iget-object v4, v15, Lorg/concentus/OpusEncoder;->bandwidth:Lorg/concentus/OpusBandwidth;

    sget-object v9, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_SUPERWIDEBAND:Lorg/concentus/OpusBandwidth;

    if-eq v4, v9, :cond_64

    iget-object v4, v15, Lorg/concentus/OpusEncoder;->bandwidth:Lorg/concentus/OpusBandwidth;

    sget-object v9, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_FULLBAND:Lorg/concentus/OpusBandwidth;

    if-ne v4, v9, :cond_63

    goto :goto_2c

    .line 909
    :cond_63
    iget-object v4, v15, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    iget v9, v4, Lorg/concentus/EncControlState;->bitRate:I

    add-int/2addr v9, v3

    iput v9, v4, Lorg/concentus/EncControlState;->bitRate:I

    goto :goto_2d

    .line 907
    :cond_64
    :goto_2c
    iget-object v4, v15, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    iget v9, v4, Lorg/concentus/EncControlState;->bitRate:I

    mul-int/lit8 v11, v3, 0x3

    const/4 v12, 0x5

    div-int/2addr v11, v12

    add-int/2addr v9, v11

    iput v9, v4, Lorg/concentus/EncControlState;->bitRate:I

    :goto_2d
    mul-int/2addr v3, v5

    .line 911
    iget v4, v15, Lorg/concentus/OpusEncoder;->Fs:I

    const/16 v9, 0x8

    mul-int/2addr v4, v9

    div-int/2addr v3, v4

    add-int/2addr v2, v3

    goto :goto_2e

    :cond_65
    move/from16 p14, v9

    .line 914
    :goto_2e
    iget-object v3, v15, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    mul-int/lit16 v4, v5, 0x3e8

    iget v9, v15, Lorg/concentus/OpusEncoder;->Fs:I

    div-int/2addr v4, v9

    iput v4, v3, Lorg/concentus/EncControlState;->payloadSize_ms:I

    .line 915
    iget-object v3, v15, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    iget v4, v15, Lorg/concentus/OpusEncoder;->channels:I

    iput v4, v3, Lorg/concentus/EncControlState;->nChannelsAPI:I

    .line 916
    iget-object v3, v15, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    iget v4, v15, Lorg/concentus/OpusEncoder;->stream_channels:I

    iput v4, v3, Lorg/concentus/EncControlState;->nChannelsInternal:I

    .line 917
    sget-object v3, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_NARROWBAND:Lorg/concentus/OpusBandwidth;

    if-ne v0, v3, :cond_66

    .line 918
    iget-object v3, v15, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    const/16 v4, 0x1f40

    iput v4, v3, Lorg/concentus/EncControlState;->desiredInternalSampleRate:I

    :goto_2f
    const/16 v4, 0x3e80

    goto :goto_32

    .line 919
    :cond_66
    sget-object v3, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_MEDIUMBAND:Lorg/concentus/OpusBandwidth;

    if-ne v0, v3, :cond_67

    .line 920
    iget-object v3, v15, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    const/16 v4, 0x2ee0

    iput v4, v3, Lorg/concentus/EncControlState;->desiredInternalSampleRate:I

    goto :goto_2f

    .line 922
    :cond_67
    iget-object v3, v15, Lorg/concentus/OpusEncoder;->mode:Lorg/concentus/OpusMode;

    sget-object v4, Lorg/concentus/OpusMode;->MODE_HYBRID:Lorg/concentus/OpusMode;

    if-eq v3, v4, :cond_69

    sget-object v3, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_WIDEBAND:Lorg/concentus/OpusBandwidth;

    if-ne v0, v3, :cond_68

    goto :goto_30

    :cond_68
    const/4 v3, 0x0

    goto :goto_31

    :cond_69
    :goto_30
    const/4 v3, 0x1

    :goto_31
    invoke-static {v3}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    .line 923
    iget-object v3, v15, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    const/16 v4, 0x3e80

    iput v4, v3, Lorg/concentus/EncControlState;->desiredInternalSampleRate:I

    .line 925
    :goto_32
    iget-object v3, v15, Lorg/concentus/OpusEncoder;->mode:Lorg/concentus/OpusMode;

    sget-object v9, Lorg/concentus/OpusMode;->MODE_HYBRID:Lorg/concentus/OpusMode;

    if-ne v3, v9, :cond_6a

    .line 927
    iget-object v3, v15, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    iput v4, v3, Lorg/concentus/EncControlState;->minInternalSampleRate:I

    goto :goto_33

    .line 929
    :cond_6a
    iget-object v3, v15, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    const/16 v9, 0x1f40

    iput v9, v3, Lorg/concentus/EncControlState;->minInternalSampleRate:I

    .line 932
    :goto_33
    iget-object v3, v15, Lorg/concentus/OpusEncoder;->mode:Lorg/concentus/OpusMode;

    sget-object v9, Lorg/concentus/OpusMode;->MODE_SILK_ONLY:Lorg/concentus/OpusMode;

    if-ne v3, v9, :cond_6d

    .line 934
    iget-object v3, v15, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    iput v4, v3, Lorg/concentus/EncControlState;->maxInternalSampleRate:I

    move/from16 v9, v34

    const/16 v4, 0x32

    if-le v9, v4, :cond_6b

    mul-int/lit8 v3, v29, 0x10

    const/4 v9, 0x3

    .line 936
    div-int/2addr v3, v9

    goto :goto_34

    :cond_6b
    move/from16 v3, v30

    :goto_34
    const/16 v9, 0x32c8

    if-ge v3, v9, :cond_6c

    .line 939
    iget-object v9, v15, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    const/16 v11, 0x2ee0

    iput v11, v9, Lorg/concentus/EncControlState;->maxInternalSampleRate:I

    .line 940
    iget-object v9, v15, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    iget v12, v9, Lorg/concentus/EncControlState;->desiredInternalSampleRate:I

    invoke-static {v11, v12}, Lorg/concentus/Inlines;->IMIN(II)I

    move-result v12

    iput v12, v9, Lorg/concentus/EncControlState;->desiredInternalSampleRate:I

    :cond_6c
    const/16 v9, 0x2580

    if-ge v3, v9, :cond_6e

    .line 943
    iget-object v3, v15, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    const/16 v9, 0x1f40

    iput v9, v3, Lorg/concentus/EncControlState;->maxInternalSampleRate:I

    .line 944
    iget-object v3, v15, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    iget v11, v3, Lorg/concentus/EncControlState;->desiredInternalSampleRate:I

    invoke-static {v9, v11}, Lorg/concentus/Inlines;->IMIN(II)I

    move-result v11

    iput v11, v3, Lorg/concentus/EncControlState;->desiredInternalSampleRate:I

    goto :goto_35

    :cond_6d
    const/16 v4, 0x32

    .line 947
    iget-object v3, v15, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    const/16 v9, 0x3e80

    iput v9, v3, Lorg/concentus/EncControlState;->maxInternalSampleRate:I

    .line 950
    :cond_6e
    :goto_35
    iget-object v3, v15, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    iget v9, v15, Lorg/concentus/OpusEncoder;->use_vbr:I

    if-nez v9, :cond_6f

    const/4 v9, 0x1

    goto :goto_36

    :cond_6f
    const/4 v9, 0x0

    :goto_36
    iput v9, v3, Lorg/concentus/EncControlState;->useCBR:I

    const/16 v3, 0x4fb

    sub-int v9, v7, v36

    .line 953
    invoke-static {v3, v9}, Lorg/concentus/Inlines;->IMIN(II)I

    move-result v3

    .line 955
    iget-object v9, v15, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    mul-int/lit8 v11, v3, 0x8

    iput v11, v9, Lorg/concentus/EncControlState;->maxBits:I

    .line 957
    iget-object v9, v15, Lorg/concentus/OpusEncoder;->mode:Lorg/concentus/OpusMode;

    sget-object v11, Lorg/concentus/OpusMode;->MODE_HYBRID:Lorg/concentus/OpusMode;

    if-ne v9, v11, :cond_70

    .line 958
    iget-object v9, v15, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    iget v11, v9, Lorg/concentus/EncControlState;->maxBits:I

    mul-int/lit8 v11, v11, 0x9

    div-int/lit8 v11, v11, 0xa

    iput v11, v9, Lorg/concentus/EncControlState;->maxBits:I

    .line 960
    :cond_70
    iget-object v9, v15, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    iget v9, v9, Lorg/concentus/EncControlState;->useCBR:I

    if-eqz v9, :cond_71

    .line 961
    iget-object v9, v15, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    iget v11, v9, Lorg/concentus/EncControlState;->bitRate:I

    mul-int/2addr v11, v5

    iget v12, v15, Lorg/concentus/OpusEncoder;->Fs:I

    const/16 v13, 0x8

    mul-int/2addr v12, v13

    div-int/2addr v11, v12

    mul-int/2addr v11, v13

    iput v11, v9, Lorg/concentus/EncControlState;->maxBits:I

    .line 963
    iget-object v9, v15, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    iget v11, v9, Lorg/concentus/EncControlState;->bitRate:I

    add-int/lit16 v11, v11, -0x7d0

    const/4 v12, 0x1

    invoke-static {v12, v11}, Lorg/concentus/Inlines;->IMAX(II)I

    move-result v11

    iput v11, v9, Lorg/concentus/EncControlState;->bitRate:I

    :cond_71
    if-eqz v31, :cond_72

    .line 967
    new-instance v9, Lorg/concentus/BoxedValueInt;

    const/4 v11, 0x0

    invoke-direct {v9, v11}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    .line 976
    iget v11, v15, Lorg/concentus/OpusEncoder;->channels:I

    iget v12, v15, Lorg/concentus/OpusEncoder;->encoder_buffer:I

    iget v13, v15, Lorg/concentus/OpusEncoder;->delay_compensation:I

    sub-int/2addr v12, v13

    iget v13, v15, Lorg/concentus/OpusEncoder;->Fs:I

    div-int/lit16 v13, v13, 0x190

    sub-int/2addr v12, v13

    mul-int/2addr v11, v12

    .line 977
    iget-object v12, v15, Lorg/concentus/OpusEncoder;->delay_buffer:[S

    move-object/from16 v13, v28

    iget v14, v13, Lorg/concentus/CeltMode;->overlap:I

    iget v4, v15, Lorg/concentus/OpusEncoder;->Fs:I

    div-int/lit16 v4, v4, 0x190

    move/from16 v28, v2

    iget v2, v15, Lorg/concentus/OpusEncoder;->channels:I

    move/from16 v34, v7

    iget-object v7, v13, Lorg/concentus/CeltMode;->window:[I

    move-object/from16 v39, v13

    iget v13, v15, Lorg/concentus/OpusEncoder;->Fs:I

    const/16 v48, 0x0

    const/16 v49, 0x7fff

    move-object/from16 v46, v12

    move/from16 v47, v11

    move/from16 v50, v14

    move/from16 v51, v4

    move/from16 v52, v2

    move-object/from16 v53, v7

    move/from16 v54, v13

    invoke-static/range {v46 .. v54}, Lorg/concentus/CodecHelpers;->gain_fade([SIIIIII[II)V

    .line 979
    iget-object v2, v15, Lorg/concentus/OpusEncoder;->delay_buffer:[S

    const/4 v4, 0x0

    invoke-static {v2, v4, v11}, Lorg/concentus/Arrays;->MemSet([SSI)V

    .line 980
    iget-object v2, v15, Lorg/concentus/OpusEncoder;->delay_buffer:[S

    iget v7, v15, Lorg/concentus/OpusEncoder;->encoder_buffer:I

    iget v11, v15, Lorg/concentus/OpusEncoder;->channels:I

    mul-int/2addr v7, v11

    invoke-static {v2, v4, v1, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 982
    iget-object v2, v15, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    iget v4, v15, Lorg/concentus/OpusEncoder;->encoder_buffer:I

    const/4 v7, 0x0

    const/4 v11, 0x1

    move-object/from16 p6, v8

    move-object/from16 p7, v2

    move-object/from16 p8, v1

    move/from16 p9, v4

    move-object/from16 p10, v7

    move-object/from16 p11, v9

    move/from16 p12, v11

    invoke-static/range {p6 .. p12}, Lorg/concentus/EncodeAPI;->silk_Encode(Lorg/concentus/SilkEncoder;Lorg/concentus/EncControlState;[SILorg/concentus/EntropyCoder;Lorg/concentus/BoxedValueInt;I)I

    goto :goto_37

    :cond_72
    move/from16 v34, v7

    move-object/from16 v39, v28

    move/from16 v28, v2

    .line 985
    :goto_37
    iget v2, v15, Lorg/concentus/OpusEncoder;->channels:I

    mul-int v4, v16, v2

    mul-int/2addr v2, v5

    const/4 v7, 0x0

    invoke-static {v6, v4, v1, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 987
    new-instance v2, Lorg/concentus/BoxedValueInt;

    invoke-direct {v2, v3}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    .line 988
    iget-object v3, v15, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    const/4 v4, 0x0

    move-object/from16 p6, v8

    move-object/from16 p7, v3

    move-object/from16 p8, v1

    move/from16 p9, p3

    move-object/from16 p10, v10

    move-object/from16 p11, v2

    move/from16 p12, v4

    invoke-static/range {p6 .. p12}, Lorg/concentus/EncodeAPI;->silk_Encode(Lorg/concentus/SilkEncoder;Lorg/concentus/EncControlState;[SILorg/concentus/EntropyCoder;Lorg/concentus/BoxedValueInt;I)I

    move-result v1

    .line 989
    iget v2, v2, Lorg/concentus/BoxedValueInt;->Val:I

    if-eqz v1, :cond_73

    .line 995
    sget v0, Lorg/concentus/OpusError;->OPUS_INTERNAL_ERROR:I

    return v0

    :cond_73
    if-nez v2, :cond_74

    const/4 v2, 0x0

    .line 998
    iput v2, v15, Lorg/concentus/OpusEncoder;->rangeFinal:I

    .line 999
    iget-object v1, v15, Lorg/concentus/OpusEncoder;->mode:Lorg/concentus/OpusMode;

    iget v2, v15, Lorg/concentus/OpusEncoder;->Fs:I

    div-int/2addr v2, v5

    iget v3, v15, Lorg/concentus/OpusEncoder;->stream_channels:I

    invoke-static {v1, v2, v0, v3}, Lorg/concentus/CodecHelpers;->gen_toc(Lorg/concentus/OpusMode;ILorg/concentus/OpusBandwidth;I)B

    move-result v0

    move-object/from16 v3, p4

    move/from16 v4, p5

    aput-byte v0, v3, v4

    const/4 v0, 0x1

    return v0

    :cond_74
    move-object/from16 v3, p4

    move/from16 v4, p5

    .line 1004
    iget-object v2, v15, Lorg/concentus/OpusEncoder;->mode:Lorg/concentus/OpusMode;

    sget-object v7, Lorg/concentus/OpusMode;->MODE_SILK_ONLY:Lorg/concentus/OpusMode;

    if-ne v2, v7, :cond_77

    .line 1005
    iget-object v2, v15, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    iget v2, v2, Lorg/concentus/EncControlState;->internalSampleRate:I

    const/16 v11, 0x1f40

    if-ne v2, v11, :cond_75

    .line 1006
    sget-object v0, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_NARROWBAND:Lorg/concentus/OpusBandwidth;

    goto :goto_39

    .line 1007
    :cond_75
    iget-object v2, v15, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    iget v2, v2, Lorg/concentus/EncControlState;->internalSampleRate:I

    const/16 v13, 0x2ee0

    if-ne v2, v13, :cond_76

    .line 1008
    sget-object v0, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_MEDIUMBAND:Lorg/concentus/OpusBandwidth;

    goto :goto_39

    .line 1009
    :cond_76
    iget-object v2, v15, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    iget v2, v2, Lorg/concentus/EncControlState;->internalSampleRate:I

    const/16 v7, 0x3e80

    if-ne v2, v7, :cond_79

    .line 1010
    sget-object v0, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_WIDEBAND:Lorg/concentus/OpusBandwidth;

    goto :goto_39

    :cond_77
    const/16 v7, 0x3e80

    .line 1013
    iget-object v2, v15, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    iget v2, v2, Lorg/concentus/EncControlState;->internalSampleRate:I

    if-ne v2, v7, :cond_78

    const/4 v2, 0x1

    goto :goto_38

    :cond_78
    const/4 v2, 0x0

    :goto_38
    invoke-static {v2}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    .line 1016
    :cond_79
    :goto_39
    iget-object v2, v15, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    iget v7, v2, Lorg/concentus/EncControlState;->switchReady:I

    iput v7, v2, Lorg/concentus/EncControlState;->opusCanSwitch:I

    .line 1017
    iget-object v2, v15, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    iget v2, v2, Lorg/concentus/EncControlState;->opusCanSwitch:I

    const/4 v7, 0x1

    if-eqz v2, :cond_7a

    .line 1020
    iput v7, v15, Lorg/concentus/OpusEncoder;->silk_bw_switch:I

    move/from16 v11, p14

    move v9, v1

    move v1, v7

    move/from16 v2, v28

    const/4 v8, 0x0

    goto :goto_3a

    :cond_7a
    move/from16 v11, p14

    move v9, v1

    move/from16 v1, v25

    move/from16 v2, v28

    move/from16 v8, v33

    goto :goto_3a

    :cond_7b
    move/from16 v34, v7

    move-object/from16 v38, v9

    move-object v3, v12

    move v4, v14

    move-object/from16 v39, v28

    const/4 v7, 0x1

    move/from16 v1, v25

    move/from16 v8, v33

    const/4 v9, 0x0

    const/16 v11, 0x7fff

    .line 1028
    :goto_3a
    sget-object v12, Lorg/concentus/OpusEncoder$1;->$SwitchMap$org$concentus$OpusBandwidth:[I

    invoke-virtual {v0}, Lorg/concentus/OpusBandwidth;->ordinal()I

    move-result v13

    aget v12, v12, v13

    if-eq v12, v7, :cond_7e

    const/4 v7, 0x2

    if-eq v12, v7, :cond_7d

    const/4 v7, 0x3

    if-eq v12, v7, :cond_7d

    const/4 v7, 0x4

    if-eq v12, v7, :cond_7c

    const/4 v7, 0x5

    const/16 v7, 0x15

    :goto_3b
    move-object/from16 v14, v38

    goto :goto_3c

    :cond_7c
    const/16 v7, 0x13

    goto :goto_3b

    :cond_7d
    move-object/from16 v14, v38

    const/16 v7, 0x11

    goto :goto_3c

    :cond_7e
    const/16 v7, 0xd

    goto :goto_3b

    .line 1043
    :goto_3c
    invoke-virtual {v14, v7}, Lorg/concentus/CeltEncoder;->SetEndBand(I)V

    .line 1044
    iget v7, v15, Lorg/concentus/OpusEncoder;->stream_channels:I

    invoke-virtual {v14, v7}, Lorg/concentus/CeltEncoder;->SetChannels(I)V

    const/4 v7, -0x1

    .line 1046
    invoke-virtual {v14, v7}, Lorg/concentus/CeltEncoder;->SetBitrate(I)V

    .line 1047
    iget-object v7, v15, Lorg/concentus/OpusEncoder;->mode:Lorg/concentus/OpusMode;

    sget-object v12, Lorg/concentus/OpusMode;->MODE_SILK_ONLY:Lorg/concentus/OpusMode;

    if-eq v7, v12, :cond_89

    const/4 v7, 0x0

    .line 1049
    invoke-virtual {v14, v7}, Lorg/concentus/CeltEncoder;->SetVBR(Z)V

    .line 1051
    iget-object v7, v15, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    iget v7, v7, Lorg/concentus/EncControlState;->reducedDependency:I

    if-eqz v7, :cond_7f

    const/4 v7, 0x0

    goto :goto_3d

    :cond_7f
    const/4 v7, 0x2

    .line 1054
    :goto_3d
    invoke-virtual {v14, v7}, Lorg/concentus/CeltEncoder;->SetPrediction(I)V

    .line 1056
    iget-object v7, v15, Lorg/concentus/OpusEncoder;->mode:Lorg/concentus/OpusMode;

    sget-object v12, Lorg/concentus/OpusMode;->MODE_HYBRID:Lorg/concentus/OpusMode;

    if-ne v7, v12, :cond_84

    .line 1059
    invoke-virtual {v10}, Lorg/concentus/EntropyCoder;->tell()I

    move-result v7

    const/4 v12, 0x7

    add-int/2addr v7, v12

    const/4 v12, 0x3

    shr-int/2addr v7, v12

    if-eqz v1, :cond_81

    .line 1061
    iget-object v12, v15, Lorg/concentus/OpusEncoder;->mode:Lorg/concentus/OpusMode;

    sget-object v13, Lorg/concentus/OpusMode;->MODE_HYBRID:Lorg/concentus/OpusMode;

    if-ne v12, v13, :cond_80

    const/4 v12, 0x3

    goto :goto_3e

    :cond_80
    const/4 v12, 0x1

    :goto_3e
    add-int/2addr v7, v12

    .line 1063
    :cond_81
    iget v12, v15, Lorg/concentus/OpusEncoder;->use_vbr:I

    if-eqz v12, :cond_82

    add-int/2addr v7, v2

    .line 1064
    iget-object v2, v15, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    iget v2, v2, Lorg/concentus/EncControlState;->bitRate:I

    mul-int/2addr v2, v5

    iget v12, v15, Lorg/concentus/OpusEncoder;->Fs:I

    const/16 v13, 0x8

    mul-int/2addr v12, v13

    div-int/2addr v2, v12

    sub-int/2addr v7, v2

    goto :goto_3f

    :cond_82
    if-le v7, v2, :cond_83

    move v2, v7

    :cond_83
    move v7, v2

    :goto_3f
    move v2, v7

    goto :goto_42

    .line 1069
    :cond_84
    iget v7, v15, Lorg/concentus/OpusEncoder;->use_vbr:I

    if-eqz v7, :cond_88

    .line 1071
    iget-object v2, v15, Lorg/concentus/OpusEncoder;->analysis:Lorg/concentus/TonalityAnalysisState;

    iget-boolean v2, v2, Lorg/concentus/TonalityAnalysisState;->enabled:Z

    if-eqz v2, :cond_85

    iget-object v2, v15, Lorg/concentus/OpusEncoder;->variable_duration:Lorg/concentus/OpusFramesize;

    sget-object v7, Lorg/concentus/OpusFramesize;->OPUS_FRAMESIZE_VARIABLE:Lorg/concentus/OpusFramesize;

    if-ne v2, v7, :cond_85

    iget v2, v15, Lorg/concentus/OpusEncoder;->Fs:I

    div-int/lit8 v7, v2, 0x32

    if-eq v5, v7, :cond_85

    .line 1072
    iget v7, v15, Lorg/concentus/OpusEncoder;->stream_channels:I

    mul-int/lit8 v7, v7, 0x3c

    add-int/lit8 v7, v7, 0x28

    div-int/2addr v2, v5

    const/16 v12, 0x32

    sub-int/2addr v2, v12

    mul-int/2addr v2, v7

    move-object/from16 v7, v23

    .line 1073
    iget v12, v7, Lorg/concentus/AnalysisInfo;->valid:I

    if-eqz v12, :cond_86

    int-to-float v2, v2

    const/high16 v12, 0x3f000000    # 0.5f

    .line 1074
    iget v13, v7, Lorg/concentus/AnalysisInfo;->tonality:F

    mul-float/2addr v13, v12

    const/high16 v12, 0x3f800000    # 1.0f

    add-float/2addr v13, v12

    mul-float/2addr v2, v13

    float-to-int v2, v2

    goto :goto_40

    :cond_85
    move-object/from16 v7, v23

    const/4 v2, 0x0

    :cond_86
    :goto_40
    const/4 v12, 0x1

    .line 1077
    invoke-virtual {v14, v12}, Lorg/concentus/CeltEncoder;->SetVBR(Z)V

    .line 1078
    iget v12, v15, Lorg/concentus/OpusEncoder;->vbr_constraint:I

    if-eqz v12, :cond_87

    const/4 v12, 0x1

    goto :goto_41

    :cond_87
    const/4 v12, 0x0

    :goto_41
    invoke-virtual {v14, v12}, Lorg/concentus/CeltEncoder;->SetVBRConstraint(Z)V

    .line 1079
    iget v12, v15, Lorg/concentus/OpusEncoder;->bitrate_bps:I

    add-int/2addr v12, v2

    invoke-virtual {v14, v12}, Lorg/concentus/CeltEncoder;->SetBitrate(I)V

    sub-int v2, v34, v36

    goto :goto_43

    :cond_88
    :goto_42
    move-object/from16 v7, v23

    goto :goto_43

    :cond_89
    move-object/from16 v7, v23

    const/4 v2, 0x0

    .line 1089
    :goto_43
    iget v12, v15, Lorg/concentus/OpusEncoder;->channels:I

    iget v13, v15, Lorg/concentus/OpusEncoder;->Fs:I

    mul-int/2addr v12, v13

    div-int/lit16 v12, v12, 0x190

    new-array v12, v12, [S

    .line 1090
    iget-object v13, v15, Lorg/concentus/OpusEncoder;->mode:Lorg/concentus/OpusMode;

    move/from16 v22, v9

    sget-object v9, Lorg/concentus/OpusMode;->MODE_SILK_ONLY:Lorg/concentus/OpusMode;

    if-eq v13, v9, :cond_8a

    iget-object v9, v15, Lorg/concentus/OpusEncoder;->mode:Lorg/concentus/OpusMode;

    iget-object v13, v15, Lorg/concentus/OpusEncoder;->prev_mode:Lorg/concentus/OpusMode;

    if-eq v9, v13, :cond_8a

    sget-object v9, Lorg/concentus/OpusMode;->MODE_AUTO:Lorg/concentus/OpusMode;

    if-eq v13, v9, :cond_8a

    iget-object v9, v15, Lorg/concentus/OpusEncoder;->prev_mode:Lorg/concentus/OpusMode;

    sget-object v13, Lorg/concentus/OpusMode;->MODE_UNKNOWN:Lorg/concentus/OpusMode;

    if-eq v9, v13, :cond_8a

    .line 1091
    iget-object v9, v15, Lorg/concentus/OpusEncoder;->delay_buffer:[S

    iget v13, v15, Lorg/concentus/OpusEncoder;->encoder_buffer:I

    sub-int v13, v13, v16

    iget v3, v15, Lorg/concentus/OpusEncoder;->Fs:I

    div-int/lit16 v4, v3, 0x190

    sub-int/2addr v13, v4

    iget v4, v15, Lorg/concentus/OpusEncoder;->channels:I

    mul-int/2addr v13, v4

    mul-int/2addr v4, v3

    div-int/lit16 v4, v4, 0x190

    const/4 v3, 0x0

    invoke-static {v9, v13, v12, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1094
    :cond_8a
    iget v3, v15, Lorg/concentus/OpusEncoder;->channels:I

    iget v4, v15, Lorg/concentus/OpusEncoder;->encoder_buffer:I

    sub-int v9, v4, v19

    mul-int/2addr v9, v3

    if-lez v9, :cond_8b

    .line 1095
    iget-object v9, v15, Lorg/concentus/OpusEncoder;->delay_buffer:[S

    mul-int v13, v3, v5

    sub-int/2addr v4, v5

    sub-int v4, v4, v16

    mul-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v9, v13, v4, v3}, Lorg/concentus/Arrays;->MemMove([SIII)V

    .line 1096
    iget-object v3, v15, Lorg/concentus/OpusEncoder;->delay_buffer:[S

    iget v9, v15, Lorg/concentus/OpusEncoder;->channels:I

    iget v13, v15, Lorg/concentus/OpusEncoder;->encoder_buffer:I

    sub-int/2addr v13, v5

    sub-int v13, v13, v16

    mul-int/2addr v13, v9

    mul-int v9, v9, v19

    invoke-static {v6, v4, v3, v13, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v19, v0

    goto :goto_44

    :cond_8b
    const/4 v9, 0x0

    sub-int v19, v19, v4

    mul-int v13, v19, v3

    move-object/from16 v19, v0

    .line 1098
    iget-object v0, v15, Lorg/concentus/OpusEncoder;->delay_buffer:[S

    mul-int/2addr v4, v3

    invoke-static {v6, v13, v0, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1103
    :goto_44
    iget v0, v15, Lorg/concentus/OpusEncoder;->prev_HB_gain:I

    const/16 v3, 0x7fff

    if-lt v0, v3, :cond_8d

    if-ge v11, v3, :cond_8c

    goto :goto_45

    :cond_8c
    move-object/from16 v4, v39

    goto :goto_46

    :cond_8d
    :goto_45
    move-object/from16 v4, v39

    .line 1104
    iget v9, v4, Lorg/concentus/CeltMode;->overlap:I

    iget v13, v15, Lorg/concentus/OpusEncoder;->channels:I

    iget-object v3, v4, Lorg/concentus/CeltMode;->window:[I

    iget v5, v15, Lorg/concentus/OpusEncoder;->Fs:I

    const/16 v16, 0x0

    move-object/from16 p6, v6

    move/from16 p7, v16

    move/from16 p8, v0

    move/from16 p9, v11

    move/from16 p10, v9

    move/from16 p11, p3

    move/from16 p12, v13

    move-object/from16 p13, v3

    move/from16 p14, v5

    invoke-static/range {p6 .. p14}, Lorg/concentus/CodecHelpers;->gain_fade([SIIIIII[II)V

    .line 1108
    :goto_46
    iput v11, v15, Lorg/concentus/OpusEncoder;->prev_HB_gain:I

    .line 1109
    iget-object v0, v15, Lorg/concentus/OpusEncoder;->mode:Lorg/concentus/OpusMode;

    sget-object v3, Lorg/concentus/OpusMode;->MODE_HYBRID:Lorg/concentus/OpusMode;

    const/16 v5, 0x4000

    if-ne v0, v3, :cond_8f

    iget v0, v15, Lorg/concentus/OpusEncoder;->stream_channels:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_8e

    goto :goto_47

    :cond_8e
    const/4 v9, 0x2

    goto :goto_48

    .line 1110
    :cond_8f
    :goto_47
    iget-object v0, v15, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    move/from16 v3, v37

    add-int/lit16 v3, v3, -0x7530

    const/4 v9, 0x0

    invoke-static {v9, v3}, Lorg/concentus/Inlines;->IMAX(II)I

    move-result v3

    const/4 v9, 0x2

    mul-int/2addr v3, v9

    invoke-static {v5, v3}, Lorg/concentus/Inlines;->IMIN(II)I

    move-result v3

    iput v3, v0, Lorg/concentus/EncControlState;->stereoWidth_Q14:I

    .line 1112
    :goto_48
    iget-object v0, v15, Lorg/concentus/OpusEncoder;->energy_masking:[I

    if-nez v0, :cond_93

    iget v0, v15, Lorg/concentus/OpusEncoder;->channels:I

    if-ne v0, v9, :cond_93

    .line 1114
    iget-short v0, v15, Lorg/concentus/OpusEncoder;->hybrid_stereo_width_Q14:S

    if-lt v0, v5, :cond_90

    iget-object v0, v15, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    iget v0, v0, Lorg/concentus/EncControlState;->stereoWidth_Q14:I

    if-ge v0, v5, :cond_93

    .line 1116
    :cond_90
    iget-short v0, v15, Lorg/concentus/OpusEncoder;->hybrid_stereo_width_Q14:S

    .line 1117
    iget-object v3, v15, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    iget v3, v3, Lorg/concentus/EncControlState;->stereoWidth_Q14:I

    if-ne v0, v5, :cond_91

    const/16 v0, 0x7fff

    const/4 v9, 0x1

    goto :goto_49

    :cond_91
    const/4 v9, 0x1

    .line 1118
    invoke-static {v0, v9}, Lorg/concentus/Inlines;->SHL16(II)I

    move-result v0

    :goto_49
    if-ne v3, v5, :cond_92

    const/16 v3, 0x7fff

    goto :goto_4a

    .line 1119
    :cond_92
    invoke-static {v3, v9}, Lorg/concentus/Inlines;->SHL16(II)I

    move-result v3

    .line 1120
    :goto_4a
    iget v5, v4, Lorg/concentus/CeltMode;->overlap:I

    iget v9, v15, Lorg/concentus/OpusEncoder;->channels:I

    iget-object v4, v4, Lorg/concentus/CeltMode;->window:[I

    iget v11, v15, Lorg/concentus/OpusEncoder;->Fs:I

    move-object/from16 p6, v6

    move/from16 p7, v0

    move/from16 p8, v3

    move/from16 p9, v5

    move/from16 p10, p3

    move/from16 p11, v9

    move-object/from16 p12, v4

    move/from16 p13, v11

    invoke-static/range {p6 .. p13}, Lorg/concentus/CodecHelpers;->stereo_fade([SIIIII[II)V

    .line 1122
    iget-object v0, v15, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    iget v0, v0, Lorg/concentus/EncControlState;->stereoWidth_Q14:I

    int-to-short v0, v0

    iput-short v0, v15, Lorg/concentus/OpusEncoder;->hybrid_stereo_width_Q14:S

    .line 1126
    :cond_93
    iget-object v0, v15, Lorg/concentus/OpusEncoder;->mode:Lorg/concentus/OpusMode;

    sget-object v3, Lorg/concentus/OpusMode;->MODE_CELT_ONLY:Lorg/concentus/OpusMode;

    if-eq v0, v3, :cond_9a

    invoke-virtual {v10}, Lorg/concentus/EntropyCoder;->tell()I

    move-result v0

    const/16 v3, 0x11

    add-int/2addr v0, v3

    iget-object v4, v15, Lorg/concentus/OpusEncoder;->mode:Lorg/concentus/OpusMode;

    sget-object v5, Lorg/concentus/OpusMode;->MODE_HYBRID:Lorg/concentus/OpusMode;

    if-ne v4, v5, :cond_94

    const/4 v4, 0x1

    goto :goto_4b

    :cond_94
    const/4 v4, 0x0

    :goto_4b
    mul-int/lit8 v4, v4, 0x14

    add-int/2addr v0, v4

    mul-int/lit8 v4, v34, 0x8

    if-gt v0, v4, :cond_9b

    .line 1128
    iget-object v0, v15, Lorg/concentus/OpusEncoder;->mode:Lorg/concentus/OpusMode;

    sget-object v4, Lorg/concentus/OpusMode;->MODE_HYBRID:Lorg/concentus/OpusMode;

    if-ne v0, v4, :cond_96

    if-nez v1, :cond_95

    invoke-virtual {v10}, Lorg/concentus/EntropyCoder;->tell()I

    move-result v0

    add-int/lit8 v0, v0, 0x25

    mul-int/lit8 v4, v2, 0x8

    if-gt v0, v4, :cond_96

    :cond_95
    const/16 v0, 0xc

    .line 1129
    invoke-virtual {v10, v1, v0}, Lorg/concentus/EntropyCoder;->enc_bit_logp(II)V

    :cond_96
    if-eqz v1, :cond_99

    const/4 v0, 0x1

    .line 1133
    invoke-virtual {v10, v8, v0}, Lorg/concentus/EntropyCoder;->enc_bit_logp(II)V

    .line 1134
    iget-object v0, v15, Lorg/concentus/OpusEncoder;->mode:Lorg/concentus/OpusMode;

    sget-object v4, Lorg/concentus/OpusMode;->MODE_HYBRID:Lorg/concentus/OpusMode;

    if-ne v0, v4, :cond_97

    sub-int v0, v34, v2

    goto :goto_4c

    .line 1137
    :cond_97
    invoke-virtual {v10}, Lorg/concentus/EntropyCoder;->tell()I

    move-result v0

    const/4 v4, 0x7

    add-int/2addr v0, v4

    const/4 v4, 0x3

    shr-int/2addr v0, v4

    sub-int v0, v34, v0

    .line 1141
    :goto_4c
    iget v4, v15, Lorg/concentus/OpusEncoder;->bitrate_bps:I

    div-int/lit16 v4, v4, 0x640

    invoke-static {v0, v4}, Lorg/concentus/Inlines;->IMIN(II)I

    move-result v0

    const/16 v4, 0x101

    const/4 v5, 0x2

    .line 1142
    invoke-static {v5, v0}, Lorg/concentus/Inlines;->IMAX(II)I

    move-result v0

    invoke-static {v4, v0}, Lorg/concentus/Inlines;->IMIN(II)I

    move-result v0

    .line 1143
    iget-object v4, v15, Lorg/concentus/OpusEncoder;->mode:Lorg/concentus/OpusMode;

    sget-object v5, Lorg/concentus/OpusMode;->MODE_HYBRID:Lorg/concentus/OpusMode;

    if-ne v4, v5, :cond_98

    add-int/lit8 v4, v0, -0x2

    int-to-long v4, v4

    move/from16 p2, v0

    move/from16 p1, v1

    const-wide/16 v0, 0x100

    .line 1144
    invoke-virtual {v10, v4, v5, v0, v1}, Lorg/concentus/EntropyCoder;->enc_uint(JJ)V

    goto :goto_4d

    :cond_98
    move/from16 p2, v0

    move/from16 p1, v1

    :goto_4d
    move/from16 v0, p1

    move/from16 v36, p2

    goto :goto_4e

    :cond_99
    move/from16 p1, v1

    move/from16 v0, p1

    goto :goto_4e

    :cond_9a
    const/16 v3, 0x11

    :cond_9b
    const/4 v0, 0x0

    :goto_4e
    if-nez v0, :cond_9c

    const/4 v1, 0x0

    .line 1152
    iput v1, v15, Lorg/concentus/OpusEncoder;->silk_bw_switch:I

    const/16 v36, 0x0

    .line 1155
    :cond_9c
    iget-object v1, v15, Lorg/concentus/OpusEncoder;->mode:Lorg/concentus/OpusMode;

    sget-object v4, Lorg/concentus/OpusMode;->MODE_CELT_ONLY:Lorg/concentus/OpusMode;

    if-eq v1, v4, :cond_9d

    goto :goto_4f

    :cond_9d
    const/4 v3, 0x0

    .line 1159
    :goto_4f
    iget-object v1, v15, Lorg/concentus/OpusEncoder;->mode:Lorg/concentus/OpusMode;

    sget-object v4, Lorg/concentus/OpusMode;->MODE_SILK_ONLY:Lorg/concentus/OpusMode;

    if-ne v1, v4, :cond_9e

    .line 1160
    invoke-virtual {v10}, Lorg/concentus/EntropyCoder;->tell()I

    move-result v1

    const/4 v5, 0x7

    add-int/2addr v1, v5

    const/16 v21, 0x3

    shr-int/lit8 v9, v1, 0x3

    .line 1161
    invoke-virtual {v10}, Lorg/concentus/EntropyCoder;->enc_done()V

    move/from16 v22, v9

    goto :goto_50

    :cond_9e
    sub-int v1, v34, v36

    .line 1164
    invoke-static {v1, v2}, Lorg/concentus/Inlines;->IMIN(II)I

    move-result v9

    .line 1165
    invoke-virtual {v10, v9}, Lorg/concentus/EntropyCoder;->enc_shrink(I)V

    .line 1168
    :goto_50
    iget-object v1, v15, Lorg/concentus/OpusEncoder;->analysis:Lorg/concentus/TonalityAnalysisState;

    iget-boolean v1, v1, Lorg/concentus/TonalityAnalysisState;->enabled:Z

    if-eqz v1, :cond_9f

    if-nez v0, :cond_a0

    :cond_9f
    iget-object v1, v15, Lorg/concentus/OpusEncoder;->mode:Lorg/concentus/OpusMode;

    sget-object v2, Lorg/concentus/OpusMode;->MODE_SILK_ONLY:Lorg/concentus/OpusMode;

    if-eq v1, v2, :cond_a1

    .line 1169
    :cond_a0
    iget-object v1, v15, Lorg/concentus/OpusEncoder;->analysis:Lorg/concentus/TonalityAnalysisState;

    iget-boolean v1, v1, Lorg/concentus/TonalityAnalysisState;->enabled:Z

    iput-boolean v1, v7, Lorg/concentus/AnalysisInfo;->enabled:Z

    .line 1170
    invoke-virtual {v14, v7}, Lorg/concentus/CeltEncoder;->SetAnalysis(Lorg/concentus/AnalysisInfo;)V

    :cond_a1
    if-eqz v0, :cond_a3

    if-eqz v8, :cond_a3

    const/4 v1, 0x0

    .line 1175
    invoke-virtual {v14, v1}, Lorg/concentus/CeltEncoder;->SetStartBand(I)V

    .line 1176
    invoke-virtual {v14, v1}, Lorg/concentus/CeltEncoder;->SetVBR(Z)V

    .line 1177
    iget v1, v15, Lorg/concentus/OpusEncoder;->Fs:I

    div-int/lit16 v1, v1, 0xc8

    add-int v2, v35, v9

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 p6, v14

    move-object/from16 p7, v6

    move/from16 p8, v5

    move/from16 p9, v1

    move-object/from16 p10, p4

    move/from16 p11, v2

    move/from16 p12, v36

    move-object/from16 p13, v4

    invoke-virtual/range {p6 .. p13}, Lorg/concentus/CeltEncoder;->celt_encode_with_ec([SII[BIILorg/concentus/EntropyCoder;)I

    move-result v1

    if-gez v1, :cond_a2

    .line 1179
    sget v0, Lorg/concentus/OpusError;->OPUS_INTERNAL_ERROR:I

    return v0

    .line 1181
    :cond_a2
    invoke-virtual {v14}, Lorg/concentus/CeltEncoder;->GetFinalRange()I

    move-result v1

    .line 1182
    invoke-virtual {v14}, Lorg/concentus/CeltEncoder;->ResetState()V

    goto :goto_51

    :cond_a3
    const/4 v1, 0x0

    .line 1185
    :goto_51
    invoke-virtual {v14, v3}, Lorg/concentus/CeltEncoder;->SetStartBand(I)V

    .line 1187
    iget-object v2, v15, Lorg/concentus/OpusEncoder;->mode:Lorg/concentus/OpusMode;

    sget-object v3, Lorg/concentus/OpusMode;->MODE_SILK_ONLY:Lorg/concentus/OpusMode;

    if-eq v2, v3, :cond_a6

    .line 1188
    iget-object v2, v15, Lorg/concentus/OpusEncoder;->mode:Lorg/concentus/OpusMode;

    iget-object v3, v15, Lorg/concentus/OpusEncoder;->prev_mode:Lorg/concentus/OpusMode;

    if-eq v2, v3, :cond_a4

    sget-object v2, Lorg/concentus/OpusMode;->MODE_AUTO:Lorg/concentus/OpusMode;

    if-eq v3, v2, :cond_a4

    iget-object v2, v15, Lorg/concentus/OpusEncoder;->prev_mode:Lorg/concentus/OpusMode;

    sget-object v3, Lorg/concentus/OpusMode;->MODE_UNKNOWN:Lorg/concentus/OpusMode;

    if-eq v2, v3, :cond_a4

    const/4 v2, 0x2

    .line 1189
    new-array v3, v2, [B

    .line 1190
    invoke-virtual {v14}, Lorg/concentus/CeltEncoder;->ResetState()V

    .line 1193
    iget v2, v15, Lorg/concentus/OpusEncoder;->Fs:I

    div-int/lit16 v2, v2, 0x190

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    move-object/from16 p6, v14

    move-object/from16 p7, v12

    move/from16 p8, v7

    move/from16 p9, v2

    move-object/from16 p10, v3

    move/from16 p11, v11

    move/from16 p12, v4

    move-object/from16 p13, v5

    invoke-virtual/range {p6 .. p13}, Lorg/concentus/CeltEncoder;->celt_encode_with_ec([SII[BIILorg/concentus/EntropyCoder;)I

    const/4 v2, 0x0

    .line 1194
    invoke-virtual {v14, v2}, Lorg/concentus/CeltEncoder;->SetPrediction(I)V

    .line 1197
    :cond_a4
    invoke-virtual {v10}, Lorg/concentus/EntropyCoder;->tell()I

    move-result v2

    mul-int/lit8 v3, v9, 0x8

    if-gt v2, v3, :cond_a6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 p6, v14

    move-object/from16 p7, v6

    move/from16 p8, v4

    move/from16 p9, p3

    move-object/from16 p10, v2

    move/from16 p11, v3

    move/from16 p12, v9

    move-object/from16 p13, v10

    .line 1198
    invoke-virtual/range {p6 .. p13}, Lorg/concentus/CeltEncoder;->celt_encode_with_ec([SII[BIILorg/concentus/EntropyCoder;)I

    move-result v2

    if-gez v2, :cond_a5

    .line 1200
    sget v0, Lorg/concentus/OpusError;->OPUS_INTERNAL_ERROR:I

    return v0

    :cond_a5
    move v11, v2

    goto :goto_52

    :cond_a6
    move/from16 v11, v22

    :goto_52
    if-eqz v0, :cond_a8

    if-nez v8, :cond_a8

    const/4 v2, 0x2

    .line 1208
    new-array v1, v2, [B

    .line 1210
    iget v2, v15, Lorg/concentus/OpusEncoder;->Fs:I

    div-int/lit16 v3, v2, 0xc8

    .line 1211
    div-int/lit16 v2, v2, 0x190

    .line 1213
    invoke-virtual {v14}, Lorg/concentus/CeltEncoder;->ResetState()V

    const/4 v4, 0x0

    .line 1214
    invoke-virtual {v14, v4}, Lorg/concentus/CeltEncoder;->SetStartBand(I)V

    .line 1215
    invoke-virtual {v14, v4}, Lorg/concentus/CeltEncoder;->SetPrediction(I)V

    .line 1218
    iget v4, v15, Lorg/concentus/OpusEncoder;->channels:I

    move/from16 v5, p3

    sub-int v7, v5, v3

    sub-int v8, v7, v2

    mul-int/2addr v4, v8

    const/4 v8, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 p6, v14

    move-object/from16 p7, v6

    move/from16 p8, v4

    move/from16 p9, v2

    move-object/from16 p10, v1

    move/from16 p11, v13

    move/from16 p12, v8

    move-object/from16 p13, v12

    invoke-virtual/range {p6 .. p13}, Lorg/concentus/CeltEncoder;->celt_encode_with_ec([SII[BIILorg/concentus/EntropyCoder;)I

    .line 1220
    iget v1, v15, Lorg/concentus/OpusEncoder;->channels:I

    mul-int/2addr v1, v7

    add-int v2, v35, v9

    const/4 v4, 0x0

    move/from16 p8, v1

    move/from16 p9, v3

    move-object/from16 p10, p4

    move/from16 p11, v2

    move/from16 p12, v36

    move-object/from16 p13, v4

    invoke-virtual/range {p6 .. p13}, Lorg/concentus/CeltEncoder;->celt_encode_with_ec([SII[BIILorg/concentus/EntropyCoder;)I

    move-result v1

    if-gez v1, :cond_a7

    .line 1222
    sget v0, Lorg/concentus/OpusError;->OPUS_INTERNAL_ERROR:I

    return v0

    .line 1224
    :cond_a7
    invoke-virtual {v14}, Lorg/concentus/CeltEncoder;->GetFinalRange()I

    move-result v1

    goto :goto_53

    :cond_a8
    move/from16 v5, p3

    .line 1229
    :goto_53
    iget-object v2, v15, Lorg/concentus/OpusEncoder;->mode:Lorg/concentus/OpusMode;

    iget v3, v15, Lorg/concentus/OpusEncoder;->Fs:I

    div-int/2addr v3, v5

    iget v4, v15, Lorg/concentus/OpusEncoder;->stream_channels:I

    move-object/from16 v6, v19

    invoke-static {v2, v3, v6, v4}, Lorg/concentus/CodecHelpers;->gen_toc(Lorg/concentus/OpusMode;ILorg/concentus/OpusBandwidth;I)B

    move-result v2

    move-object/from16 v3, p4

    move/from16 v4, p5

    aput-byte v2, v3, v4

    .line 1231
    iget-wide v6, v10, Lorg/concentus/EntropyCoder;->rng:J

    long-to-int v2, v6

    xor-int/2addr v1, v2

    iput v1, v15, Lorg/concentus/OpusEncoder;->rangeFinal:I

    if-eqz v20, :cond_a9

    .line 1234
    sget-object v1, Lorg/concentus/OpusMode;->MODE_CELT_ONLY:Lorg/concentus/OpusMode;

    iput-object v1, v15, Lorg/concentus/OpusEncoder;->prev_mode:Lorg/concentus/OpusMode;

    goto :goto_54

    .line 1236
    :cond_a9
    iget-object v1, v15, Lorg/concentus/OpusEncoder;->mode:Lorg/concentus/OpusMode;

    iput-object v1, v15, Lorg/concentus/OpusEncoder;->prev_mode:Lorg/concentus/OpusMode;

    .line 1238
    :goto_54
    iget v1, v15, Lorg/concentus/OpusEncoder;->stream_channels:I

    iput v1, v15, Lorg/concentus/OpusEncoder;->prev_channels:I

    .line 1239
    iput v5, v15, Lorg/concentus/OpusEncoder;->prev_framesize:I

    const/4 v1, 0x0

    .line 1241
    iput v1, v15, Lorg/concentus/OpusEncoder;->first:I

    .line 1245
    invoke-virtual {v10}, Lorg/concentus/EntropyCoder;->tell()I

    move-result v2

    const/16 v18, 0x8

    mul-int/lit8 v7, v34, 0x8

    if-le v2, v7, :cond_ab

    move/from16 v2, v32

    const/4 v5, 0x2

    if-ge v2, v5, :cond_aa

    .line 1247
    sget v0, Lorg/concentus/OpusError;->OPUS_BUFFER_TOO_SMALL:I

    return v0

    :cond_aa
    add-int/lit8 v0, v4, 0x1

    .line 1249
    aput-byte v1, v3, v0

    .line 1251
    iput v1, v15, Lorg/concentus/OpusEncoder;->rangeFinal:I

    const/4 v0, 0x1

    const/4 v11, 0x1

    goto :goto_56

    :cond_ab
    move/from16 v2, v32

    .line 1252
    iget-object v1, v15, Lorg/concentus/OpusEncoder;->mode:Lorg/concentus/OpusMode;

    sget-object v5, Lorg/concentus/OpusMode;->MODE_SILK_ONLY:Lorg/concentus/OpusMode;

    if-ne v1, v5, :cond_ac

    if-nez v0, :cond_ac

    const/4 v0, 0x2

    :goto_55
    if-le v11, v0, :cond_ac

    add-int v1, v4, v11

    .line 1259
    aget-byte v1, v3, v1

    if-nez v1, :cond_ac

    add-int/lit8 v11, v11, -0x1

    goto :goto_55

    :cond_ac
    const/4 v0, 0x1

    :goto_56
    add-int/lit8 v36, v36, 0x1

    add-int v11, v11, v36

    .line 1265
    iget v0, v15, Lorg/concentus/OpusEncoder;->use_vbr:I

    if-nez v0, :cond_ae

    .line 1266
    invoke-static {v3, v4, v11, v2}, Lorg/concentus/OpusRepacketizer;->padPacket([BIII)I

    move-result v0

    sget v1, Lorg/concentus/OpusError;->OPUS_OK:I

    if-eq v0, v1, :cond_ad

    .line 1267
    sget v0, Lorg/concentus/OpusError;->OPUS_INTERNAL_ERROR:I

    return v0

    :cond_ad
    move v4, v2

    goto :goto_57

    :cond_ae
    move v4, v11

    :goto_57
    return v4

    :cond_af
    move/from16 v5, p5

    move/from16 v19, p7

    move v11, v4

    move-object/from16 v17, v23

    move-object/from16 v14, v24

    move-object/from16 v10, v30

    const/16 v18, 0x8

    const/16 v21, 0x3

    const/16 v24, 0x2

    const/16 v26, -0x1

    move/from16 v23, v1

    move-object/from16 v1, p4

    move/from16 v5, p3

    move-object/from16 v24, v14

    move/from16 v1, v23

    move/from16 v14, p2

    move-object/from16 v23, v17

    goto/16 :goto_19

    :cond_b0
    :goto_58
    move-object/from16 v1, p4

    move/from16 v5, p5

    move v11, v4

    move v9, v10

    .line 446
    iget-object v0, v15, Lorg/concentus/OpusEncoder;->mode:Lorg/concentus/OpusMode;

    .line 447
    iget-object v2, v15, Lorg/concentus/OpusEncoder;->bandwidth:Lorg/concentus/OpusBandwidth;

    sget-object v3, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_UNKNOWN:Lorg/concentus/OpusBandwidth;

    if-ne v2, v3, :cond_b1

    sget-object v2, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_NARROWBAND:Lorg/concentus/OpusBandwidth;

    goto :goto_59

    :cond_b1
    iget-object v2, v15, Lorg/concentus/OpusEncoder;->bandwidth:Lorg/concentus/OpusBandwidth;

    .line 448
    :goto_59
    sget-object v3, Lorg/concentus/OpusMode;->MODE_UNKNOWN:Lorg/concentus/OpusMode;

    if-ne v0, v3, :cond_b2

    .line 449
    sget-object v0, Lorg/concentus/OpusMode;->MODE_SILK_ONLY:Lorg/concentus/OpusMode;

    :cond_b2
    const/16 v3, 0x64

    if-le v9, v3, :cond_b3

    .line 452
    sget-object v0, Lorg/concentus/OpusMode;->MODE_CELT_ONLY:Lorg/concentus/OpusMode;

    :cond_b3
    const/16 v3, 0x32

    if-ge v9, v3, :cond_b4

    .line 455
    sget-object v0, Lorg/concentus/OpusMode;->MODE_SILK_ONLY:Lorg/concentus/OpusMode;

    .line 457
    :cond_b4
    sget-object v3, Lorg/concentus/OpusMode;->MODE_SILK_ONLY:Lorg/concentus/OpusMode;

    if-ne v0, v3, :cond_b5

    invoke-static {v2}, Lorg/concentus/OpusBandwidthHelpers;->GetOrdinal(Lorg/concentus/OpusBandwidth;)I

    move-result v3

    sget-object v4, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_WIDEBAND:Lorg/concentus/OpusBandwidth;

    invoke-static {v4}, Lorg/concentus/OpusBandwidthHelpers;->GetOrdinal(Lorg/concentus/OpusBandwidth;)I

    move-result v4

    if-le v3, v4, :cond_b5

    .line 458
    sget-object v2, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_WIDEBAND:Lorg/concentus/OpusBandwidth;

    goto :goto_5a

    .line 459
    :cond_b5
    sget-object v3, Lorg/concentus/OpusMode;->MODE_CELT_ONLY:Lorg/concentus/OpusMode;

    if-ne v0, v3, :cond_b6

    invoke-static {v2}, Lorg/concentus/OpusBandwidthHelpers;->GetOrdinal(Lorg/concentus/OpusBandwidth;)I

    move-result v3

    sget-object v4, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_MEDIUMBAND:Lorg/concentus/OpusBandwidth;

    invoke-static {v4}, Lorg/concentus/OpusBandwidthHelpers;->GetOrdinal(Lorg/concentus/OpusBandwidth;)I

    move-result v4

    if-ne v3, v4, :cond_b6

    .line 460
    sget-object v2, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_NARROWBAND:Lorg/concentus/OpusBandwidth;

    goto :goto_5a

    .line 461
    :cond_b6
    sget-object v3, Lorg/concentus/OpusMode;->MODE_HYBRID:Lorg/concentus/OpusMode;

    if-ne v0, v3, :cond_b7

    invoke-static {v2}, Lorg/concentus/OpusBandwidthHelpers;->GetOrdinal(Lorg/concentus/OpusBandwidth;)I

    move-result v3

    sget-object v4, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_SUPERWIDEBAND:Lorg/concentus/OpusBandwidth;

    invoke-static {v4}, Lorg/concentus/OpusBandwidthHelpers;->GetOrdinal(Lorg/concentus/OpusBandwidth;)I

    move-result v4

    if-gt v3, v4, :cond_b7

    .line 462
    sget-object v2, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_SUPERWIDEBAND:Lorg/concentus/OpusBandwidth;

    .line 464
    :cond_b7
    :goto_5a
    iget v3, v15, Lorg/concentus/OpusEncoder;->stream_channels:I

    invoke-static {v0, v9, v2, v3}, Lorg/concentus/CodecHelpers;->gen_toc(Lorg/concentus/OpusMode;ILorg/concentus/OpusBandwidth;I)B

    move-result v0

    aput-byte v0, v1, v5

    .line 466
    iget v0, v15, Lorg/concentus/OpusEncoder;->use_vbr:I

    if-nez v0, :cond_b8

    const/4 v0, 0x1

    .line 467
    invoke-static {v1, v5, v0, v11}, Lorg/concentus/OpusRepacketizer;->padPacket([BIII)I

    move-result v0

    .line 468
    sget v1, Lorg/concentus/OpusError;->OPUS_OK:I

    if-ne v0, v1, :cond_b9

    goto :goto_5b

    :cond_b8
    const/4 v0, 0x1

    :cond_b9
    move v11, v0

    :goto_5b
    return v11

    .line 369
    :cond_ba
    :goto_5c
    sget v0, Lorg/concentus/OpusError;->OPUS_BAD_ARG:I

    return v0
.end method

.method opus_init_encoder(IILorg/concentus/OpusApplication;)I
    .locals 6

    const v0, 0xbb80

    const/16 v1, 0x1f40

    const/16 v2, 0x3e80

    if-eq p1, v0, :cond_0

    const/16 v0, 0x5dc0

    if-eq p1, v0, :cond_0

    if-eq p1, v2, :cond_0

    const/16 v0, 0x2ee0

    if-eq p1, v0, :cond_0

    if-ne p1, v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v3, 0x2

    if-ne p2, v3, :cond_2

    .line 213
    :cond_1
    sget-object v3, Lorg/concentus/OpusApplication;->OPUS_APPLICATION_UNIMPLEMENTED:Lorg/concentus/OpusApplication;

    if-ne p3, v3, :cond_3

    .line 215
    :cond_2
    sget p1, Lorg/concentus/OpusError;->OPUS_BAD_ARG:I

    return p1

    .line 218
    :cond_3
    invoke-virtual {p0}, Lorg/concentus/OpusEncoder;->reset()V

    .line 220
    iget-object v3, p0, Lorg/concentus/OpusEncoder;->SilkEncoder:Lorg/concentus/SilkEncoder;

    .line 221
    iget-object v4, p0, Lorg/concentus/OpusEncoder;->Celt_Encoder:Lorg/concentus/CeltEncoder;

    .line 223
    iput p2, p0, Lorg/concentus/OpusEncoder;->channels:I

    iput p2, p0, Lorg/concentus/OpusEncoder;->stream_channels:I

    .line 225
    iput p1, p0, Lorg/concentus/OpusEncoder;->Fs:I

    .line 227
    iget-object v5, p0, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    invoke-static {v3, v5}, Lorg/concentus/EncodeAPI;->silk_InitEncoder(Lorg/concentus/SilkEncoder;Lorg/concentus/EncControlState;)I

    move-result v3

    if-eqz v3, :cond_4

    .line 229
    sget p1, Lorg/concentus/OpusError;->OPUS_INTERNAL_ERROR:I

    return p1

    .line 233
    :cond_4
    iget-object v3, p0, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    iput p2, v3, Lorg/concentus/EncControlState;->nChannelsAPI:I

    .line 234
    iget-object v3, p0, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    iput p2, v3, Lorg/concentus/EncControlState;->nChannelsInternal:I

    .line 235
    iget-object v3, p0, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    iget v5, p0, Lorg/concentus/OpusEncoder;->Fs:I

    iput v5, v3, Lorg/concentus/EncControlState;->API_sampleRate:I

    .line 236
    iget-object v3, p0, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    iput v2, v3, Lorg/concentus/EncControlState;->maxInternalSampleRate:I

    .line 237
    iget-object v3, p0, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    iput v1, v3, Lorg/concentus/EncControlState;->minInternalSampleRate:I

    .line 238
    iget-object v1, p0, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    iput v2, v1, Lorg/concentus/EncControlState;->desiredInternalSampleRate:I

    .line 239
    iget-object v1, p0, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    const/16 v2, 0x14

    iput v2, v1, Lorg/concentus/EncControlState;->payloadSize_ms:I

    .line 240
    iget-object v1, p0, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    const/16 v2, 0x61a8

    iput v2, v1, Lorg/concentus/EncControlState;->bitRate:I

    .line 241
    iget-object v1, p0, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    const/4 v2, 0x0

    iput v2, v1, Lorg/concentus/EncControlState;->packetLossPercentage:I

    .line 242
    iget-object v1, p0, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    const/16 v3, 0x9

    iput v3, v1, Lorg/concentus/EncControlState;->complexity:I

    .line 243
    iget-object v1, p0, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    iput v2, v1, Lorg/concentus/EncControlState;->useInBandFEC:I

    .line 244
    iget-object v1, p0, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    iput v2, v1, Lorg/concentus/EncControlState;->useDTX:I

    .line 245
    iget-object v1, p0, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    iput v2, v1, Lorg/concentus/EncControlState;->useCBR:I

    .line 246
    iget-object v1, p0, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    iput v2, v1, Lorg/concentus/EncControlState;->reducedDependency:I

    .line 250
    invoke-virtual {v4, p1, p2}, Lorg/concentus/CeltEncoder;->celt_encoder_init(II)I

    move-result v1

    .line 251
    sget v3, Lorg/concentus/OpusError;->OPUS_OK:I

    if-eq v1, v3, :cond_5

    .line 252
    sget p1, Lorg/concentus/OpusError;->OPUS_INTERNAL_ERROR:I

    return p1

    .line 255
    :cond_5
    invoke-virtual {v4, v2}, Lorg/concentus/CeltEncoder;->SetSignalling(I)V

    .line 256
    iget-object v1, p0, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    iget v1, v1, Lorg/concentus/EncControlState;->complexity:I

    invoke-virtual {v4, v1}, Lorg/concentus/CeltEncoder;->SetComplexity(I)V

    .line 258
    iput v0, p0, Lorg/concentus/OpusEncoder;->use_vbr:I

    .line 260
    iput v0, p0, Lorg/concentus/OpusEncoder;->vbr_constraint:I

    const/16 v1, -0x3e8

    .line 261
    iput v1, p0, Lorg/concentus/OpusEncoder;->user_bitrate_bps:I

    mul-int/2addr p1, p2

    add-int/lit16 p1, p1, 0xbb8

    .line 262
    iput p1, p0, Lorg/concentus/OpusEncoder;->bitrate_bps:I

    .line 263
    iput-object p3, p0, Lorg/concentus/OpusEncoder;->application:Lorg/concentus/OpusApplication;

    .line 264
    sget-object p1, Lorg/concentus/OpusSignal;->OPUS_SIGNAL_AUTO:Lorg/concentus/OpusSignal;

    iput-object p1, p0, Lorg/concentus/OpusEncoder;->signal_type:Lorg/concentus/OpusSignal;

    .line 265
    sget-object p1, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_AUTO:Lorg/concentus/OpusBandwidth;

    iput-object p1, p0, Lorg/concentus/OpusEncoder;->user_bandwidth:Lorg/concentus/OpusBandwidth;

    .line 266
    sget-object p1, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_FULLBAND:Lorg/concentus/OpusBandwidth;

    iput-object p1, p0, Lorg/concentus/OpusEncoder;->max_bandwidth:Lorg/concentus/OpusBandwidth;

    .line 267
    iput v1, p0, Lorg/concentus/OpusEncoder;->force_channels:I

    .line 268
    sget-object p1, Lorg/concentus/OpusMode;->MODE_AUTO:Lorg/concentus/OpusMode;

    iput-object p1, p0, Lorg/concentus/OpusEncoder;->user_forced_mode:Lorg/concentus/OpusMode;

    const/4 p1, -0x1

    .line 269
    iput p1, p0, Lorg/concentus/OpusEncoder;->voice_ratio:I

    .line 270
    iget p1, p0, Lorg/concentus/OpusEncoder;->Fs:I

    div-int/lit8 p1, p1, 0x64

    iput p1, p0, Lorg/concentus/OpusEncoder;->encoder_buffer:I

    const/16 p1, 0x18

    .line 271
    iput p1, p0, Lorg/concentus/OpusEncoder;->lsb_depth:I

    .line 272
    sget-object p1, Lorg/concentus/OpusFramesize;->OPUS_FRAMESIZE_ARG:Lorg/concentus/OpusFramesize;

    iput-object p1, p0, Lorg/concentus/OpusEncoder;->variable_duration:Lorg/concentus/OpusFramesize;

    .line 276
    iget p1, p0, Lorg/concentus/OpusEncoder;->Fs:I

    div-int/lit16 p1, p1, 0xfa

    iput p1, p0, Lorg/concentus/OpusEncoder;->delay_compensation:I

    const/16 p1, 0x4000

    .line 278
    iput-short p1, p0, Lorg/concentus/OpusEncoder;->hybrid_stereo_width_Q14:S

    const/16 p1, 0x7fff

    .line 279
    iput p1, p0, Lorg/concentus/OpusEncoder;->prev_HB_gain:I

    const/16 p1, 0x3c

    .line 280
    invoke-static {p1}, Lorg/concentus/Inlines;->silk_lin2log(I)I

    move-result p1

    const/16 p2, 0x8

    invoke-static {p1, p2}, Lorg/concentus/Inlines;->silk_LSHIFT(II)I

    move-result p1

    iput p1, p0, Lorg/concentus/OpusEncoder;->variable_HP_smth2_Q15:I

    .line 281
    iput v0, p0, Lorg/concentus/OpusEncoder;->first:I

    .line 282
    sget-object p1, Lorg/concentus/OpusMode;->MODE_HYBRID:Lorg/concentus/OpusMode;

    iput-object p1, p0, Lorg/concentus/OpusEncoder;->mode:Lorg/concentus/OpusMode;

    .line 283
    sget-object p1, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_FULLBAND:Lorg/concentus/OpusBandwidth;

    iput-object p1, p0, Lorg/concentus/OpusEncoder;->bandwidth:Lorg/concentus/OpusBandwidth;

    .line 285
    iget-object p1, p0, Lorg/concentus/OpusEncoder;->analysis:Lorg/concentus/TonalityAnalysisState;

    invoke-static {p1}, Lorg/concentus/Analysis;->tonality_analysis_init(Lorg/concentus/TonalityAnalysisState;)V

    .line 287
    sget p1, Lorg/concentus/OpusError;->OPUS_OK:I

    return p1
.end method

.method reset()V
    .locals 2

    .line 93
    iget-object v0, p0, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    invoke-virtual {v0}, Lorg/concentus/EncControlState;->Reset()V

    .line 94
    sget-object v0, Lorg/concentus/OpusApplication;->OPUS_APPLICATION_UNIMPLEMENTED:Lorg/concentus/OpusApplication;

    iput-object v0, p0, Lorg/concentus/OpusEncoder;->application:Lorg/concentus/OpusApplication;

    const/4 v0, 0x0

    .line 95
    iput v0, p0, Lorg/concentus/OpusEncoder;->channels:I

    .line 96
    iput v0, p0, Lorg/concentus/OpusEncoder;->delay_compensation:I

    .line 97
    iput v0, p0, Lorg/concentus/OpusEncoder;->force_channels:I

    .line 98
    sget-object v1, Lorg/concentus/OpusSignal;->OPUS_SIGNAL_UNKNOWN:Lorg/concentus/OpusSignal;

    iput-object v1, p0, Lorg/concentus/OpusEncoder;->signal_type:Lorg/concentus/OpusSignal;

    .line 99
    sget-object v1, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_UNKNOWN:Lorg/concentus/OpusBandwidth;

    iput-object v1, p0, Lorg/concentus/OpusEncoder;->user_bandwidth:Lorg/concentus/OpusBandwidth;

    .line 100
    sget-object v1, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_UNKNOWN:Lorg/concentus/OpusBandwidth;

    iput-object v1, p0, Lorg/concentus/OpusEncoder;->max_bandwidth:Lorg/concentus/OpusBandwidth;

    .line 101
    sget-object v1, Lorg/concentus/OpusMode;->MODE_UNKNOWN:Lorg/concentus/OpusMode;

    iput-object v1, p0, Lorg/concentus/OpusEncoder;->user_forced_mode:Lorg/concentus/OpusMode;

    .line 102
    iput v0, p0, Lorg/concentus/OpusEncoder;->voice_ratio:I

    .line 103
    iput v0, p0, Lorg/concentus/OpusEncoder;->Fs:I

    .line 104
    iput v0, p0, Lorg/concentus/OpusEncoder;->use_vbr:I

    .line 105
    iput v0, p0, Lorg/concentus/OpusEncoder;->vbr_constraint:I

    .line 106
    sget-object v1, Lorg/concentus/OpusFramesize;->OPUS_FRAMESIZE_UNKNOWN:Lorg/concentus/OpusFramesize;

    iput-object v1, p0, Lorg/concentus/OpusEncoder;->variable_duration:Lorg/concentus/OpusFramesize;

    .line 107
    iput v0, p0, Lorg/concentus/OpusEncoder;->bitrate_bps:I

    .line 108
    iput v0, p0, Lorg/concentus/OpusEncoder;->user_bitrate_bps:I

    .line 109
    iput v0, p0, Lorg/concentus/OpusEncoder;->lsb_depth:I

    .line 110
    iput v0, p0, Lorg/concentus/OpusEncoder;->encoder_buffer:I

    .line 111
    iput v0, p0, Lorg/concentus/OpusEncoder;->lfe:I

    .line 112
    iget-object v0, p0, Lorg/concentus/OpusEncoder;->analysis:Lorg/concentus/TonalityAnalysisState;

    invoke-virtual {v0}, Lorg/concentus/TonalityAnalysisState;->Reset()V

    .line 113
    invoke-virtual {p0}, Lorg/concentus/OpusEncoder;->PartialReset()V

    return-void
.end method

.method public resetState()V
    .locals 2

    .line 142
    new-instance v0, Lorg/concentus/EncControlState;

    invoke-direct {v0}, Lorg/concentus/EncControlState;-><init>()V

    .line 143
    iget-object v1, p0, Lorg/concentus/OpusEncoder;->analysis:Lorg/concentus/TonalityAnalysisState;

    invoke-virtual {v1}, Lorg/concentus/TonalityAnalysisState;->Reset()V

    .line 144
    invoke-virtual {p0}, Lorg/concentus/OpusEncoder;->PartialReset()V

    .line 146
    iget-object v1, p0, Lorg/concentus/OpusEncoder;->Celt_Encoder:Lorg/concentus/CeltEncoder;

    invoke-virtual {v1}, Lorg/concentus/CeltEncoder;->ResetState()V

    .line 147
    iget-object v1, p0, Lorg/concentus/OpusEncoder;->SilkEncoder:Lorg/concentus/SilkEncoder;

    invoke-static {v1, v0}, Lorg/concentus/EncodeAPI;->silk_InitEncoder(Lorg/concentus/SilkEncoder;Lorg/concentus/EncControlState;)I

    .line 148
    iget v0, p0, Lorg/concentus/OpusEncoder;->channels:I

    iput v0, p0, Lorg/concentus/OpusEncoder;->stream_channels:I

    const/16 v0, 0x4000

    .line 149
    iput-short v0, p0, Lorg/concentus/OpusEncoder;->hybrid_stereo_width_Q14:S

    const/16 v0, 0x7fff

    .line 150
    iput v0, p0, Lorg/concentus/OpusEncoder;->prev_HB_gain:I

    const/4 v0, 0x1

    .line 151
    iput v0, p0, Lorg/concentus/OpusEncoder;->first:I

    .line 152
    sget-object v0, Lorg/concentus/OpusMode;->MODE_HYBRID:Lorg/concentus/OpusMode;

    iput-object v0, p0, Lorg/concentus/OpusEncoder;->mode:Lorg/concentus/OpusMode;

    .line 153
    sget-object v0, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_FULLBAND:Lorg/concentus/OpusBandwidth;

    iput-object v0, p0, Lorg/concentus/OpusEncoder;->bandwidth:Lorg/concentus/OpusBandwidth;

    const/16 v0, 0x3c

    .line 154
    invoke-static {v0}, Lorg/concentus/Inlines;->silk_lin2log(I)I

    move-result v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lorg/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v0

    iput v0, p0, Lorg/concentus/OpusEncoder;->variable_HP_smth2_Q15:I

    return-void
.end method

.method public setApplication(Lorg/concentus/OpusApplication;)V
    .locals 1

    .line 1340
    iget v0, p0, Lorg/concentus/OpusEncoder;->first:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/concentus/OpusEncoder;->application:Lorg/concentus/OpusApplication;

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 1341
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Application cannot be changed after encoding has started"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1344
    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/concentus/OpusEncoder;->application:Lorg/concentus/OpusApplication;

    return-void
.end method

.method public setBandwidth(Lorg/concentus/OpusBandwidth;)V
    .locals 1

    .line 1410
    iput-object p1, p0, Lorg/concentus/OpusEncoder;->user_bandwidth:Lorg/concentus/OpusBandwidth;

    .line 1411
    sget-object v0, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_NARROWBAND:Lorg/concentus/OpusBandwidth;

    if-ne p1, v0, :cond_0

    .line 1412
    iget-object p1, p0, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    const/16 v0, 0x1f40

    iput v0, p1, Lorg/concentus/EncControlState;->maxInternalSampleRate:I

    goto :goto_0

    .line 1413
    :cond_0
    iget-object p1, p0, Lorg/concentus/OpusEncoder;->user_bandwidth:Lorg/concentus/OpusBandwidth;

    sget-object v0, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_MEDIUMBAND:Lorg/concentus/OpusBandwidth;

    if-ne p1, v0, :cond_1

    .line 1414
    iget-object p1, p0, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    const/16 v0, 0x2ee0

    iput v0, p1, Lorg/concentus/EncControlState;->maxInternalSampleRate:I

    goto :goto_0

    .line 1416
    :cond_1
    iget-object p1, p0, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    const/16 v0, 0x3e80

    iput v0, p1, Lorg/concentus/EncControlState;->maxInternalSampleRate:I

    :goto_0
    return-void
.end method

.method public setBitrate(I)V
    .locals 3

    const/16 v0, -0x3e8

    if-eq p1, v0, :cond_2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    if-lez p1, :cond_1

    const/16 v0, 0x1f4

    if-gt p1, v0, :cond_0

    move p1, v0

    goto :goto_0

    .line 1360
    :cond_0
    iget v0, p0, Lorg/concentus/OpusEncoder;->channels:I

    const v1, 0x493e0

    mul-int v2, v0, v1

    if-le p1, v2, :cond_2

    mul-int p1, v0, v1

    goto :goto_0

    .line 1357
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bitrate must be positive"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1365
    :cond_2
    :goto_0
    iput p1, p0, Lorg/concentus/OpusEncoder;->user_bitrate_bps:I

    return-void
.end method

.method public setComplexity(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0xa

    if-gt p1, v0, :cond_0

    .line 1444
    iget-object v0, p0, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    iput p1, v0, Lorg/concentus/EncControlState;->complexity:I

    .line 1445
    iget-object v0, p0, Lorg/concentus/OpusEncoder;->Celt_Encoder:Lorg/concentus/CeltEncoder;

    invoke-virtual {v0, p1}, Lorg/concentus/CeltEncoder;->SetComplexity(I)V

    return-void

    .line 1442
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Complexity must be between 0 and 10"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setEnableAnalysis(Z)V
    .locals 1

    .line 1610
    iget-object v0, p0, Lorg/concentus/OpusEncoder;->analysis:Lorg/concentus/TonalityAnalysisState;

    iput-boolean p1, v0, Lorg/concentus/TonalityAnalysisState;->enabled:Z

    return-void
.end method

.method public setExpertFrameDuration(Lorg/concentus/OpusFramesize;)V
    .locals 1

    .line 1560
    iput-object p1, p0, Lorg/concentus/OpusEncoder;->variable_duration:Lorg/concentus/OpusFramesize;

    .line 1561
    iget-object v0, p0, Lorg/concentus/OpusEncoder;->Celt_Encoder:Lorg/concentus/CeltEncoder;

    invoke-virtual {v0, p1}, Lorg/concentus/CeltEncoder;->SetExpertFrameDuration(Lorg/concentus/OpusFramesize;)V

    return-void
.end method

.method public setForceChannels(I)V
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 1377
    iget v0, p0, Lorg/concentus/OpusEncoder;->channels:I

    if-le p1, v0, :cond_1

    :cond_0
    const/16 v0, -0x3e8

    if-ne p1, v0, :cond_2

    .line 1381
    :cond_1
    iput p1, p0, Lorg/concentus/OpusEncoder;->force_channels:I

    return-void

    .line 1378
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Force channels must be <= num. of channels"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setForceMode(Lorg/concentus/OpusMode;)V
    .locals 0

    .line 1575
    iput-object p1, p0, Lorg/concentus/OpusEncoder;->user_forced_mode:Lorg/concentus/OpusMode;

    return-void
.end method

.method public setIsLFE(Z)V
    .locals 1

    .line 1586
    iput p1, p0, Lorg/concentus/OpusEncoder;->lfe:I

    .line 1587
    iget-object v0, p0, Lorg/concentus/OpusEncoder;->Celt_Encoder:Lorg/concentus/CeltEncoder;

    invoke-virtual {v0, p1}, Lorg/concentus/CeltEncoder;->SetLFE(I)V

    return-void
.end method

.method public setLSBDepth(I)V
    .locals 1

    const/16 v0, 0x8

    if-lt p1, v0, :cond_0

    const/16 v0, 0x18

    if-gt p1, v0, :cond_0

    .line 1548
    iput p1, p0, Lorg/concentus/OpusEncoder;->lsb_depth:I

    return-void

    .line 1545
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "LSB depth must be between 8 and 24"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMaxBandwidth(Lorg/concentus/OpusBandwidth;)V
    .locals 1

    .line 1392
    iput-object p1, p0, Lorg/concentus/OpusEncoder;->max_bandwidth:Lorg/concentus/OpusBandwidth;

    .line 1393
    sget-object v0, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_NARROWBAND:Lorg/concentus/OpusBandwidth;

    if-ne p1, v0, :cond_0

    .line 1394
    iget-object p1, p0, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    const/16 v0, 0x1f40

    iput v0, p1, Lorg/concentus/EncControlState;->maxInternalSampleRate:I

    goto :goto_0

    .line 1395
    :cond_0
    iget-object p1, p0, Lorg/concentus/OpusEncoder;->max_bandwidth:Lorg/concentus/OpusBandwidth;

    sget-object v0, Lorg/concentus/OpusBandwidth;->OPUS_BANDWIDTH_MEDIUMBAND:Lorg/concentus/OpusBandwidth;

    if-ne p1, v0, :cond_1

    .line 1396
    iget-object p1, p0, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    const/16 v0, 0x2ee0

    iput v0, p1, Lorg/concentus/EncControlState;->maxInternalSampleRate:I

    goto :goto_0

    .line 1398
    :cond_1
    iget-object p1, p0, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    const/16 v0, 0x3e80

    iput v0, p1, Lorg/concentus/EncControlState;->maxInternalSampleRate:I

    :goto_0
    return-void
.end method

.method public setPacketLossPercent(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    .line 1473
    iget-object v0, p0, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    iput p1, v0, Lorg/concentus/EncControlState;->packetLossPercentage:I

    .line 1474
    iget-object v0, p0, Lorg/concentus/OpusEncoder;->Celt_Encoder:Lorg/concentus/CeltEncoder;

    invoke-virtual {v0, p1}, Lorg/concentus/CeltEncoder;->SetPacketLossPercent(I)V

    return-void

    .line 1471
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Packet loss must be between 0 and 100"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPredictionDisabled(Z)V
    .locals 1

    .line 1598
    iget-object v0, p0, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    iput p1, v0, Lorg/concentus/EncControlState;->reducedDependency:I

    return-void
.end method

.method public setSignalType(Lorg/concentus/OpusSignal;)V
    .locals 0

    .line 1509
    iput-object p1, p0, Lorg/concentus/OpusEncoder;->signal_type:Lorg/concentus/OpusSignal;

    return-void
.end method

.method public setUseConstrainedVBR(Z)V
    .locals 0

    .line 1498
    iput p1, p0, Lorg/concentus/OpusEncoder;->vbr_constraint:I

    return-void
.end method

.method public setUseDTX(Z)V
    .locals 1

    .line 1430
    iget-object v0, p0, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    iput p1, v0, Lorg/concentus/EncControlState;->useDTX:I

    return-void
.end method

.method public setUseInbandFEC(Z)V
    .locals 1

    .line 1458
    iget-object v0, p0, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    iput p1, v0, Lorg/concentus/EncControlState;->useInBandFEC:I

    return-void
.end method

.method public setUseVBR(Z)V
    .locals 1

    .line 1486
    iput p1, p0, Lorg/concentus/OpusEncoder;->use_vbr:I

    .line 1487
    iget-object v0, p0, Lorg/concentus/OpusEncoder;->silk_mode:Lorg/concentus/EncControlState;

    xor-int/lit8 p1, p1, 0x1

    iput p1, v0, Lorg/concentus/EncControlState;->useCBR:I

    return-void
.end method

.method user_bitrate_to_bitrate(II)I
    .locals 2

    if-nez p1, :cond_0

    .line 292
    iget p1, p0, Lorg/concentus/OpusEncoder;->Fs:I

    div-int/lit16 p1, p1, 0x190

    .line 294
    :cond_0
    iget v0, p0, Lorg/concentus/OpusEncoder;->user_bitrate_bps:I

    const/16 v1, -0x3e8

    if-ne v0, v1, :cond_1

    .line 295
    iget p2, p0, Lorg/concentus/OpusEncoder;->Fs:I

    mul-int/lit8 v0, p2, 0x3c

    div-int/2addr v0, p1

    iget p1, p0, Lorg/concentus/OpusEncoder;->channels:I

    mul-int/2addr p2, p1

    add-int/2addr v0, p2

    return v0

    :cond_1
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    mul-int/lit8 p2, p2, 0x8

    .line 297
    iget v0, p0, Lorg/concentus/OpusEncoder;->Fs:I

    mul-int/2addr p2, v0

    div-int/2addr p2, p1

    return p2

    :cond_2
    return v0
.end method
