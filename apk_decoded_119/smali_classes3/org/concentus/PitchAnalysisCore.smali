.class Lorg/concentus/PitchAnalysisCore;
.super Ljava/lang/Object;
.source "PitchAnalysisCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/concentus/PitchAnalysisCore$silk_pe_stage3_vals;
    }
.end annotation


# static fields
.field private static final CSTRIDE_4KHZ:I = 0x41

.field private static final CSTRIDE_8KHZ:I = 0x84

.field private static final D_COMP_MAX:I = 0x93

.field private static final D_COMP_MIN:I = 0xd

.field private static final D_COMP_STRIDE:I = 0x86

.field private static final MAX_LAG_4KHZ:I = 0x48

.field private static final MAX_LAG_8KHZ:I = 0x8f

.field private static final MIN_LAG_4KHZ:I = 0x8

.field private static final MIN_LAG_8KHZ:I = 0x10

.field private static final SCRATCH_SIZE:I = 0x16

.field private static final SF_LENGTH_4KHZ:I = 0x14

.field private static final SF_LENGTH_8KHZ:I = 0x28


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static silk_P_Ana_calc_corr_st3([Lorg/concentus/PitchAnalysisCore$silk_pe_stage3_vals;[SIIII)V
    .locals 21

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v0, p5

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ltz v0, :cond_0

    move v1, v10

    goto :goto_0

    :cond_0
    move v1, v9

    .line 630
    :goto_0
    invoke-static {v1}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    move v2, v10

    goto :goto_1

    :cond_1
    move v2, v9

    .line 631
    :goto_1
    invoke-static {v2}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    const/4 v2, 0x4

    if-ne v8, v2, :cond_2

    .line 634
    sget-object v2, Lorg/concentus/SilkTables;->silk_Lag_range_stage3:[[[B

    aget-object v2, v2, v0

    .line 635
    sget-object v3, Lorg/concentus/SilkTables;->silk_CB_lags_stage3:[[B

    .line 636
    sget-object v4, Lorg/concentus/SilkTables;->silk_nb_cbk_searchs_stage3:[B

    aget-byte v0, v4, v0

    :goto_2
    move v11, v0

    move-object v12, v2

    move-object v13, v3

    goto :goto_4

    :cond_2
    if-ne v8, v1, :cond_3

    move v0, v10

    goto :goto_3

    :cond_3
    move v0, v9

    .line 638
    :goto_3
    invoke-static {v0}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    .line 639
    sget-object v2, Lorg/concentus/SilkTables;->silk_Lag_range_stage3_10_ms:[[B

    .line 640
    sget-object v3, Lorg/concentus/SilkTables;->silk_CB_lags_stage3_10_ms:[[B

    const/16 v0, 0xc

    goto :goto_2

    :goto_4
    const/16 v14, 0x16

    .line 643
    new-array v15, v14, [I

    .line 644
    new-array v6, v14, [I

    .line 646
    invoke-static {v7, v1}, Lorg/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v0

    move/from16 v16, v0

    move v5, v9

    :goto_5
    if-ge v5, v8, :cond_b

    .line 652
    aget-object v0, v12, v5

    aget-byte v17, v0, v9

    .line 653
    aget-byte v4, v0, v10

    sub-int v0, v4, v17

    add-int/lit8 v3, v0, 0x1

    if-gt v3, v14, :cond_4

    move v0, v10

    goto :goto_6

    :cond_4
    move v0, v9

    .line 654
    :goto_6
    invoke-static {v0}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    sub-int v0, v16, p2

    sub-int v18, v0, v4

    move-object/from16 v0, p1

    move/from16 v1, v16

    move-object/from16 v2, p1

    move/from16 v19, v3

    move/from16 v3, v18

    move v10, v4

    move-object v4, v6

    move v9, v5

    move/from16 v5, p3

    move-object/from16 v20, v6

    move/from16 v6, v19

    .line 655
    invoke-static/range {v0 .. v6}, Lorg/concentus/CeltPitchXCorr;->pitch_xcorr([SI[SI[III)I

    move/from16 v0, v17

    const/4 v1, 0x0

    :goto_7
    if-gt v0, v10, :cond_6

    if-ge v1, v14, :cond_5

    const/4 v2, 0x1

    goto :goto_8

    :cond_5
    const/4 v2, 0x0

    .line 657
    :goto_8
    invoke-static {v2}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    sub-int v4, v10, v0

    .line 658
    aget v2, v20, v4

    aput v2, v15, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 662
    :cond_6
    aget-object v0, v12, v9

    const/4 v2, 0x0

    aget-byte v0, v0, v2

    move v3, v2

    :goto_9
    if-ge v3, v11, :cond_a

    .line 666
    aget-object v4, v13, v9

    aget-byte v4, v4, v3

    sub-int/2addr v4, v0

    move v5, v2

    :goto_a
    const/4 v6, 0x5

    if-ge v5, v6, :cond_9

    add-int v6, v4, v5

    if-ge v6, v14, :cond_7

    const/4 v10, 0x1

    goto :goto_b

    :cond_7
    move v10, v2

    .line 668
    :goto_b
    invoke-static {v10}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    if-ge v6, v1, :cond_8

    const/4 v10, 0x1

    goto :goto_c

    :cond_8
    move v10, v2

    .line 669
    :goto_c
    invoke-static {v10}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    move-object/from16 v10, p0

    .line 670
    invoke-static {v10, v9, v3, v11}, Lorg/concentus/Inlines;->MatrixGet([Lorg/concentus/PitchAnalysisCore$silk_pe_stage3_vals;III)Lorg/concentus/PitchAnalysisCore$silk_pe_stage3_vals;

    move-result-object v2

    iget-object v2, v2, Lorg/concentus/PitchAnalysisCore$silk_pe_stage3_vals;->Values:[I

    aget v6, v15, v6

    aput v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    const/4 v2, 0x0

    goto :goto_a

    :cond_9
    move-object/from16 v10, p0

    add-int/lit8 v3, v3, 0x1

    const/4 v2, 0x0

    goto :goto_9

    :cond_a
    move-object/from16 v10, p0

    add-int v16, v16, v7

    add-int/lit8 v5, v9, 0x1

    move-object/from16 v6, v20

    const/4 v9, 0x0

    const/4 v10, 0x1

    goto/16 :goto_5

    :cond_b
    return-void
.end method

.method static silk_P_Ana_calc_energy_st3([Lorg/concentus/PitchAnalysisCore$silk_pe_stage3_vals;[SIIII)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ltz v4, :cond_0

    move v7, v6

    goto :goto_0

    :cond_0
    move v7, v5

    .line 703
    :goto_0
    invoke-static {v7}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    const/4 v7, 0x2

    if-gt v4, v7, :cond_1

    move v8, v6

    goto :goto_1

    :cond_1
    move v8, v5

    .line 704
    :goto_1
    invoke-static {v8}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    const/4 v8, 0x4

    if-ne v3, v8, :cond_2

    .line 707
    sget-object v8, Lorg/concentus/SilkTables;->silk_Lag_range_stage3:[[[B

    aget-object v8, v8, v4

    .line 708
    sget-object v9, Lorg/concentus/SilkTables;->silk_CB_lags_stage3:[[B

    .line 709
    sget-object v10, Lorg/concentus/SilkTables;->silk_nb_cbk_searchs_stage3:[B

    aget-byte v4, v10, v4

    goto :goto_3

    :cond_2
    if-ne v3, v7, :cond_3

    move v4, v6

    goto :goto_2

    :cond_3
    move v4, v5

    .line 711
    :goto_2
    invoke-static {v4}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    .line 712
    sget-object v8, Lorg/concentus/SilkTables;->silk_Lag_range_stage3_10_ms:[[B

    .line 713
    sget-object v9, Lorg/concentus/SilkTables;->silk_CB_lags_stage3_10_ms:[[B

    const/16 v4, 0xc

    :goto_3
    const/16 v10, 0x16

    .line 716
    new-array v11, v10, [I

    .line 718
    invoke-static {v2, v7}, Lorg/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v7

    move v12, v5

    :goto_4
    if-ge v12, v3, :cond_e

    .line 723
    aget-object v13, v8, v12

    aget-byte v13, v13, v5

    add-int v13, p2, v13

    sub-int v13, v7, v13

    .line 724
    invoke-static {v1, v13, v2}, Lorg/concentus/Inlines;->silk_inner_prod_self([SII)I

    move-result v14

    if-ltz v14, :cond_4

    move v15, v6

    goto :goto_5

    :cond_4
    move v15, v5

    .line 725
    :goto_5
    invoke-static {v15}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    .line 726
    aput v14, v11, v5

    .line 729
    aget-object v15, v8, v12

    aget-byte v16, v15, v6

    aget-byte v15, v15, v5

    sub-int v16, v16, v15

    add-int/lit8 v15, v16, 0x1

    move v5, v6

    :goto_6
    if-ge v6, v15, :cond_8

    add-int v17, v13, v2

    sub-int v17, v17, v6

    .line 732
    aget-short v10, v1, v17

    invoke-static {v10, v10}, Lorg/concentus/Inlines;->silk_SMULBB(II)I

    move-result v10

    sub-int/2addr v14, v10

    if-ltz v14, :cond_5

    const/4 v10, 0x1

    goto :goto_7

    :cond_5
    const/4 v10, 0x0

    .line 733
    :goto_7
    invoke-static {v10}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    sub-int v10, v13, v6

    .line 736
    aget-short v10, v1, v10

    invoke-static {v10, v10}, Lorg/concentus/Inlines;->silk_SMULBB(II)I

    move-result v10

    invoke-static {v14, v10}, Lorg/concentus/Inlines;->silk_ADD_SAT32(II)I

    move-result v14

    if-ltz v14, :cond_6

    const/4 v10, 0x1

    goto :goto_8

    :cond_6
    const/4 v10, 0x0

    .line 737
    :goto_8
    invoke-static {v10}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    const/16 v10, 0x16

    if-ge v5, v10, :cond_7

    const/4 v10, 0x1

    goto :goto_9

    :cond_7
    const/4 v10, 0x0

    .line 738
    :goto_9
    invoke-static {v10}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    .line 739
    aput v14, v11, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v6, 0x1

    const/16 v10, 0x16

    goto :goto_6

    .line 743
    :cond_8
    aget-object v6, v8, v12

    const/4 v10, 0x0

    aget-byte v6, v6, v10

    move v13, v10

    :goto_a
    if-ge v13, v4, :cond_d

    .line 747
    aget-object v14, v9, v12

    aget-byte v14, v14, v13

    sub-int/2addr v14, v6

    move v15, v10

    :goto_b
    const/4 v10, 0x5

    if-ge v15, v10, :cond_c

    add-int v10, v14, v15

    const/16 v1, 0x16

    if-ge v10, v1, :cond_9

    const/16 v17, 0x1

    goto :goto_c

    :cond_9
    const/16 v17, 0x0

    .line 749
    :goto_c
    invoke-static/range {v17 .. v17}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    if-ge v10, v5, :cond_a

    const/16 v17, 0x1

    goto :goto_d

    :cond_a
    const/16 v17, 0x0

    .line 750
    :goto_d
    invoke-static/range {v17 .. v17}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    .line 751
    invoke-static {v0, v12, v13, v4}, Lorg/concentus/Inlines;->MatrixGet([Lorg/concentus/PitchAnalysisCore$silk_pe_stage3_vals;III)Lorg/concentus/PitchAnalysisCore$silk_pe_stage3_vals;

    move-result-object v1

    iget-object v1, v1, Lorg/concentus/PitchAnalysisCore$silk_pe_stage3_vals;->Values:[I

    aget v10, v11, v10

    aput v10, v1, v15

    .line 752
    invoke-static {v0, v12, v13, v4}, Lorg/concentus/Inlines;->MatrixGet([Lorg/concentus/PitchAnalysisCore$silk_pe_stage3_vals;III)Lorg/concentus/PitchAnalysisCore$silk_pe_stage3_vals;

    move-result-object v1

    iget-object v1, v1, Lorg/concentus/PitchAnalysisCore$silk_pe_stage3_vals;->Values:[I

    aget v1, v1, v15

    if-ltz v1, :cond_b

    const/4 v1, 0x1

    goto :goto_e

    :cond_b
    const/4 v1, 0x0

    :goto_e
    invoke-static {v1}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p1

    goto :goto_b

    :cond_c
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p1

    const/4 v10, 0x0

    goto :goto_a

    :cond_d
    add-int/2addr v7, v2

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v10, 0x16

    goto/16 :goto_4

    :cond_e
    return-void
.end method

.method static silk_pitch_analysis_core([S[ILorg/concentus/BoxedValueShort;Lorg/concentus/BoxedValueByte;Lorg/concentus/BoxedValueInt;IIIIII)I
    .locals 44

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v15, p9

    move/from16 v14, p10

    const/4 v9, 0x6

    .line 78
    new-array v10, v9, [I

    const/16 v11, 0x18

    .line 89
    new-array v12, v11, [I

    const/16 v13, 0xb

    .line 94
    new-array v11, v13, [I

    const/16 v13, 0xc

    const/16 v9, 0x8

    if-eq v8, v9, :cond_1

    if-eq v8, v13, :cond_1

    const/16 v13, 0x10

    if-ne v8, v13, :cond_0

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v13, 0x1

    .line 107
    :goto_1
    invoke-static {v13}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    if-ltz v15, :cond_2

    const/4 v13, 0x1

    goto :goto_2

    :cond_2
    const/4 v13, 0x0

    .line 110
    :goto_2
    invoke-static {v13}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    const/4 v13, 0x2

    if-gt v15, v13, :cond_3

    const/16 v21, 0x1

    goto :goto_3

    :cond_3
    const/16 v21, 0x0

    .line 111
    :goto_3
    invoke-static/range {v21 .. v21}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    if-ltz v6, :cond_4

    const/high16 v13, 0x10000

    if-gt v6, v13, :cond_4

    const/4 v13, 0x1

    goto :goto_4

    :cond_4
    const/4 v13, 0x0

    .line 113
    :goto_4
    invoke-static {v13}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    if-ltz v7, :cond_5

    const/16 v13, 0x2000

    if-gt v7, v13, :cond_5

    const/4 v13, 0x1

    goto :goto_5

    :cond_5
    const/4 v13, 0x0

    .line 114
    :goto_5
    invoke-static {v13}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    mul-int/lit8 v13, v14, 0x5

    const/16 v9, 0x14

    add-int/2addr v13, v9

    mul-int v9, v13, v8

    move-object/from16 v24, v11

    mul-int/lit8 v11, v13, 0x4

    const/16 v22, 0x8

    mul-int/lit8 v13, v13, 0x8

    mul-int/lit8 v25, v8, 0x5

    mul-int/lit8 v7, v8, 0x2

    move/from16 v26, v7

    mul-int/lit8 v7, v8, 0x12

    add-int/lit8 v5, v7, -0x1

    move/from16 v27, v5

    .line 125
    new-array v5, v13, [S

    move/from16 v28, v7

    const/16 v7, 0x10

    if-ne v8, v7, :cond_6

    const/4 v6, 0x0

    const/4 v7, 0x2

    .line 127
    invoke-static {v10, v6, v7}, Lorg/concentus/Arrays;->MemSet([III)V

    .line 128
    invoke-static {v10, v5, v0, v9}, Lorg/concentus/Resampler;->silk_resampler_down2([I[S[SI)V

    :goto_6
    const/4 v7, 0x2

    goto :goto_8

    :cond_6
    const/4 v6, 0x0

    const/16 v7, 0xc

    if-ne v8, v7, :cond_7

    const/4 v7, 0x6

    .line 130
    invoke-static {v10, v6, v7}, Lorg/concentus/Arrays;->MemSet([III)V

    .line 131
    invoke-static {v10, v5, v0, v9}, Lorg/concentus/Resampler;->silk_resampler_down2_3([I[S[SI)V

    goto :goto_6

    :cond_7
    const/16 v7, 0x8

    if-ne v8, v7, :cond_8

    const/4 v7, 0x1

    goto :goto_7

    :cond_8
    move v7, v6

    .line 133
    :goto_7
    invoke-static {v7}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    .line 134
    invoke-static {v0, v6, v5, v6, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_6

    .line 138
    :goto_8
    invoke-static {v10, v6, v7}, Lorg/concentus/Arrays;->MemSet([III)V

    .line 140
    new-array v6, v11, [S

    .line 141
    invoke-static {v10, v6, v5, v13}, Lorg/concentus/Resampler;->silk_resampler_down2([I[S[SI)V

    add-int/lit8 v7, v11, -0x1

    :goto_9
    if-lez v7, :cond_9

    .line 145
    aget-short v10, v6, v7

    add-int/lit8 v18, v7, -0x1

    aget-short v0, v6, v18

    invoke-static {v10, v0}, Lorg/concentus/Inlines;->silk_ADD_SAT16(SS)S

    move-result v0

    aput-short v0, v6, v7

    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, p0

    goto :goto_9

    .line 156
    :cond_9
    new-instance v0, Lorg/concentus/BoxedValueInt;

    const/4 v7, 0x0

    invoke-direct {v0, v7}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    .line 157
    new-instance v10, Lorg/concentus/BoxedValueInt;

    invoke-direct {v10, v7}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    .line 158
    invoke-static {v0, v10, v6, v11}, Lorg/concentus/SumSqrShift;->silk_sum_sqr_shift(Lorg/concentus/BoxedValueInt;Lorg/concentus/BoxedValueInt;[SI)V

    .line 159
    iget v7, v0, Lorg/concentus/BoxedValueInt;->Val:I

    .line 160
    iget v7, v10, Lorg/concentus/BoxedValueInt;->Val:I

    move/from16 v18, v9

    if-lez v7, :cond_a

    const/4 v9, 0x1

    .line 163
    invoke-static {v7, v9}, Lorg/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v7

    const/4 v9, 0x0

    :goto_a
    if-ge v9, v11, :cond_a

    move/from16 v29, v11

    .line 165
    aget-short v11, v6, v9

    invoke-static {v11, v7}, Lorg/concentus/Inlines;->silk_RSHIFT16(SI)S

    move-result v11

    aput-short v11, v6, v9

    add-int/lit8 v9, v9, 0x1

    move/from16 v11, v29

    goto :goto_a

    :cond_a
    mul-int/lit16 v7, v14, 0x84

    .line 174
    new-array v9, v7, [S

    const/16 v11, 0x41

    .line 175
    new-array v8, v11, [I

    shr-int/lit8 v11, v14, 0x1

    move/from16 v37, v7

    mul-int/lit8 v7, v11, 0x41

    move-object/from16 v38, v5

    const/4 v5, 0x0

    .line 176
    invoke-static {v9, v5, v7}, Lorg/concentus/Arrays;->MemSet([SSI)V

    const/16 v5, 0x14

    const/4 v7, 0x2

    .line 178
    invoke-static {v5, v7}, Lorg/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v23

    move/from16 v39, v13

    move/from16 v5, v23

    const/4 v7, 0x0

    :goto_b
    if-ge v7, v11, :cond_c

    add-int/lit8 v13, v5, -0x8

    add-int/lit8 v32, v5, -0x48

    const/16 v34, 0x28

    const/16 v35, 0x41

    move-object/from16 v29, v6

    move/from16 v30, v5

    move-object/from16 v31, v6

    move-object/from16 v33, v8

    .line 183
    invoke-static/range {v29 .. v35}, Lorg/concentus/CeltPitchXCorr;->pitch_xcorr([SI[SI[III)I

    const/16 v29, 0x40

    move/from16 v30, v11

    .line 186
    aget v11, v8, v29

    move-object/from16 v31, v0

    move-object/from16 v29, v10

    const/16 v10, 0x28

    .line 187
    invoke-static {v6, v5, v10}, Lorg/concentus/Inlines;->silk_inner_prod_self([SII)I

    move-result v0

    .line 188
    invoke-static {v6, v13, v10}, Lorg/concentus/Inlines;->silk_inner_prod_self([SII)I

    move-result v3

    invoke-static {v0, v3}, Lorg/concentus/Inlines;->silk_ADD32(II)I

    move-result v0

    const/16 v3, 0xfa0

    .line 189
    invoke-static {v10, v3}, Lorg/concentus/Inlines;->silk_SMULBB(II)I

    move-result v3

    invoke-static {v0, v3}, Lorg/concentus/Inlines;->silk_ADD32(II)I

    move-result v0

    const/16 v3, 0xe

    .line 192
    invoke-static {v11, v0, v3}, Lorg/concentus/Inlines;->silk_DIV32_varQ(III)I

    move-result v10

    int-to-short v3, v10

    const/16 v10, 0x41

    const/4 v11, 0x0

    .line 191
    invoke-static {v9, v7, v11, v10, v3}, Lorg/concentus/Inlines;->MatrixSet([SIIIS)V

    const/16 v3, 0x9

    :goto_c
    const/16 v10, 0x48

    if-gt v3, v10, :cond_b

    add-int/lit8 v11, v13, -0x1

    rsub-int/lit8 v32, v3, 0x48

    .line 199
    aget v10, v8, v32

    move-object/from16 v32, v8

    .line 202
    aget-short v8, v6, v11

    .line 203
    invoke-static {v8, v8}, Lorg/concentus/Inlines;->silk_SMULBB(II)I

    move-result v8

    add-int/lit8 v13, v13, 0x27

    aget-short v13, v6, v13

    .line 204
    invoke-static {v13, v13}, Lorg/concentus/Inlines;->silk_SMULBB(II)I

    move-result v13

    sub-int/2addr v8, v13

    .line 202
    invoke-static {v0, v8}, Lorg/concentus/Inlines;->silk_ADD32(II)I

    move-result v0

    add-int/lit8 v8, v3, -0x8

    const/16 v13, 0xe

    .line 207
    invoke-static {v10, v0, v13}, Lorg/concentus/Inlines;->silk_DIV32_varQ(III)I

    move-result v10

    int-to-short v10, v10

    const/16 v13, 0x41

    .line 206
    invoke-static {v9, v7, v8, v13, v10}, Lorg/concentus/Inlines;->MatrixSet([SIIIS)V

    add-int/lit8 v3, v3, 0x1

    move v13, v11

    move-object/from16 v8, v32

    goto :goto_c

    :cond_b
    move-object/from16 v32, v8

    add-int/lit8 v5, v5, 0x28

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v3, p3

    move-object/from16 v10, v29

    move/from16 v11, v30

    move-object/from16 v0, v31

    goto/16 :goto_b

    :cond_c
    move-object/from16 v31, v0

    move-object/from16 v29, v10

    const/4 v0, 0x4

    if-ne v14, v0, :cond_d

    const/16 v3, 0x8

    const/16 v13, 0x48

    :goto_d
    if-lt v13, v3, :cond_e

    add-int/lit8 v3, v13, -0x8

    const/16 v5, 0x41

    const/4 v6, 0x0

    .line 217
    invoke-static {v9, v6, v3, v5}, Lorg/concentus/Inlines;->MatrixGet([SIII)S

    move-result v7

    const/4 v6, 0x1

    .line 218
    invoke-static {v9, v6, v3, v5}, Lorg/concentus/Inlines;->MatrixGet([SIII)S

    move-result v8

    add-int/2addr v7, v8

    neg-int v5, v13

    .line 220
    invoke-static {v5, v0}, Lorg/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v5

    invoke-static {v7, v7, v5}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v5

    int-to-short v5, v5

    .line 222
    aput-short v5, v9, v3

    add-int/lit8 v13, v13, -0x1

    const/16 v3, 0x8

    goto :goto_d

    :cond_d
    const/16 v3, 0x8

    const/16 v13, 0x48

    :goto_e
    if-lt v13, v3, :cond_e

    add-int/lit8 v3, v13, -0x8

    .line 228
    aget-short v5, v9, v3

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lorg/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v5

    neg-int v7, v13

    .line 230
    invoke-static {v7, v0}, Lorg/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v7

    invoke-static {v5, v5, v7}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v5

    int-to-short v5, v5

    .line 232
    aput-short v5, v9, v3

    add-int/lit8 v13, v13, -0x1

    const/16 v3, 0x8

    goto :goto_e

    :cond_e
    const/4 v6, 0x1

    .line 238
    invoke-static {v0, v15, v6}, Lorg/concentus/Inlines;->silk_ADD_LSHIFT32(III)I

    move-result v3

    mul-int/lit8 v5, v3, 0x3

    const/16 v6, 0x18

    if-gt v5, v6, :cond_f

    const/4 v5, 0x1

    goto :goto_f

    :cond_f
    const/4 v5, 0x0

    .line 239
    :goto_f
    invoke-static {v5}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    const/16 v5, 0x41

    .line 240
    invoke-static {v9, v12, v5, v3}, Lorg/concentus/Sort;->silk_insertion_sort_decreasing_int16([S[III)V

    const/4 v5, 0x0

    .line 243
    aget-short v6, v9, v5

    const/16 v7, 0xccd

    if-ge v6, v7, :cond_10

    .line 246
    invoke-static {v1, v5, v14}, Lorg/concentus/Arrays;->MemSet([III)V

    .line 247
    iput v5, v4, Lorg/concentus/BoxedValueInt;->Val:I

    .line 248
    iput-short v5, v2, Lorg/concentus/BoxedValueShort;->Val:S

    move-object/from16 v7, p3

    .line 249
    iput-byte v5, v7, Lorg/concentus/BoxedValueByte;->Val:B

    const/4 v5, 0x1

    return v5

    :cond_10
    move-object/from16 v7, p3

    move/from16 v8, p6

    const/4 v5, 0x1

    .line 254
    invoke-static {v8, v6}, Lorg/concentus/Inlines;->silk_SMULWB(II)I

    move-result v6

    const/4 v8, 0x0

    :goto_10
    if-ge v8, v3, :cond_12

    .line 257
    aget-short v10, v9, v8

    if-le v10, v6, :cond_11

    .line 258
    aget v10, v12, v8

    const/16 v11, 0x8

    add-int/2addr v10, v11

    invoke-static {v10, v5}, Lorg/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v10

    aput v10, v12, v8

    add-int/lit8 v8, v8, 0x1

    const/4 v5, 0x1

    goto :goto_10

    :cond_11
    move v3, v8

    :cond_12
    if-lez v3, :cond_13

    const/4 v5, 0x1

    goto :goto_11

    :cond_13
    const/4 v5, 0x0

    .line 264
    :goto_11
    invoke-static {v5}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    const/16 v5, 0x86

    .line 266
    new-array v5, v5, [S

    const/16 v6, 0xd

    move v8, v6

    :goto_12
    const/16 v10, 0x93

    if-ge v8, v10, :cond_14

    add-int/lit8 v10, v8, -0xd

    const/4 v11, 0x0

    .line 268
    aput-short v11, v5, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_12

    :cond_14
    const/4 v8, 0x0

    :goto_13
    if-ge v8, v3, :cond_15

    .line 271
    aget v10, v12, v8

    sub-int/2addr v10, v6

    const/4 v11, 0x1

    aput-short v11, v5, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_13

    :cond_15
    const/16 v3, 0x92

    :goto_14
    const/16 v6, 0x10

    if-lt v3, v6, :cond_16

    add-int/lit8 v6, v3, -0xd

    .line 276
    aget-short v8, v5, v6

    add-int/lit8 v10, v3, -0xe

    aget-short v10, v5, v10

    add-int/lit8 v11, v3, -0xf

    aget-short v11, v5, v11

    add-int/2addr v10, v11

    int-to-short v10, v10

    add-int/2addr v8, v10

    int-to-short v8, v8

    aput-short v8, v5, v6

    add-int/lit8 v3, v3, -0x1

    goto :goto_14

    :cond_16
    const/16 v3, 0x10

    const/4 v6, 0x0

    :goto_15
    const/16 v8, 0x90

    if-ge v3, v8, :cond_18

    add-int/lit8 v8, v3, 0x1

    add-int/lit8 v10, v3, -0xc

    .line 281
    aget-short v10, v5, v10

    if-lez v10, :cond_17

    .line 282
    aput v3, v12, v6

    add-int/lit8 v6, v6, 0x1

    :cond_17
    move v3, v8

    goto :goto_15

    :cond_18
    const/16 v3, 0x92

    :goto_16
    const/16 v8, 0x10

    if-lt v3, v8, :cond_19

    add-int/lit8 v8, v3, -0xd

    .line 289
    aget-short v10, v5, v8

    add-int/lit8 v11, v3, -0xe

    aget-short v11, v5, v11

    add-int/lit8 v13, v3, -0xf

    aget-short v13, v5, v13

    add-int/2addr v11, v13

    add-int/lit8 v13, v3, -0x10

    aget-short v13, v5, v13

    add-int/2addr v11, v13

    int-to-short v11, v11

    add-int/2addr v10, v11

    int-to-short v10, v10

    aput-short v10, v5, v8

    add-int/lit8 v3, v3, -0x1

    goto :goto_16

    :cond_19
    const/16 v3, 0x10

    const/4 v8, 0x0

    :goto_17
    const/16 v10, 0x93

    if-ge v3, v10, :cond_1b

    add-int/lit8 v10, v3, -0xd

    .line 294
    aget-short v10, v5, v10

    if-lez v10, :cond_1a

    add-int/lit8 v10, v3, -0x2

    int-to-short v10, v10

    .line 295
    aput-short v10, v5, v8

    add-int/lit8 v8, v8, 0x1

    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_1b
    move-object/from16 v3, v31

    const/4 v10, 0x0

    .line 312
    iput v10, v3, Lorg/concentus/BoxedValueInt;->Val:I

    move-object/from16 v11, v29

    .line 313
    iput v10, v11, Lorg/concentus/BoxedValueInt;->Val:I

    move-object/from16 v10, v38

    move/from16 v13, v39

    .line 314
    invoke-static {v3, v11, v10, v13}, Lorg/concentus/SumSqrShift;->silk_sum_sqr_shift(Lorg/concentus/BoxedValueInt;Lorg/concentus/BoxedValueInt;[SI)V

    .line 315
    iget v0, v3, Lorg/concentus/BoxedValueInt;->Val:I

    .line 316
    iget v0, v11, Lorg/concentus/BoxedValueInt;->Val:I

    if-lez v0, :cond_1c

    const/4 v11, 0x1

    .line 319
    invoke-static {v0, v11}, Lorg/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v0

    const/4 v11, 0x0

    :goto_18
    if-ge v11, v13, :cond_1c

    move/from16 v39, v13

    .line 321
    aget-short v13, v10, v11

    invoke-static {v13, v0}, Lorg/concentus/Inlines;->silk_RSHIFT16(SI)S

    move-result v13

    aput-short v13, v10, v11

    add-int/lit8 v11, v11, 0x1

    move/from16 v13, v39

    goto :goto_18

    :cond_1c
    move/from16 v0, v37

    const/4 v11, 0x0

    .line 331
    invoke-static {v9, v11, v0}, Lorg/concentus/Arrays;->MemSet([SSI)V

    const/16 v0, 0xa0

    const/4 v11, 0x0

    :goto_19
    if-ge v11, v14, :cond_1f

    move-object/from16 v31, v3

    const/16 v13, 0x28

    .line 337
    invoke-static {v10, v0, v10, v0, v13}, Lorg/concentus/Inlines;->silk_inner_prod([SI[SII)I

    move-result v3

    const/4 v13, 0x1

    invoke-static {v3, v13}, Lorg/concentus/Inlines;->silk_ADD32(II)I

    move-result v3

    const/4 v13, 0x0

    :goto_1a
    if-ge v13, v8, :cond_1e

    .line 339
    aget-short v30, v5, v13

    move-object/from16 v32, v5

    sub-int v5, v0, v30

    move/from16 v33, v8

    const/16 v8, 0x28

    .line 343
    invoke-static {v10, v0, v10, v5, v8}, Lorg/concentus/Inlines;->silk_inner_prod([SI[SII)I

    move-result v7

    if-lez v7, :cond_1d

    .line 345
    invoke-static {v10, v5, v8}, Lorg/concentus/Inlines;->silk_inner_prod_self([SII)I

    move-result v5

    add-int/lit8 v8, v30, -0xe

    .line 348
    invoke-static {v3, v5}, Lorg/concentus/Inlines;->silk_ADD32(II)I

    move-result v5

    move/from16 v34, v3

    const/16 v3, 0xe

    .line 347
    invoke-static {v7, v5, v3}, Lorg/concentus/Inlines;->silk_DIV32_varQ(III)I

    move-result v5

    int-to-short v3, v5

    const/16 v5, 0x84

    .line 346
    invoke-static {v9, v11, v8, v5, v3}, Lorg/concentus/Inlines;->MatrixSet([SIIIS)V

    goto :goto_1b

    :cond_1d
    move/from16 v34, v3

    const/16 v5, 0x84

    add-int/lit8 v3, v30, -0xe

    const/4 v7, 0x0

    .line 353
    invoke-static {v9, v11, v3, v5, v7}, Lorg/concentus/Inlines;->MatrixSet([SIIIS)V

    :goto_1b
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v7, p3

    move-object/from16 v5, v32

    move/from16 v8, v33

    move/from16 v3, v34

    goto :goto_1a

    :cond_1e
    move-object/from16 v32, v5

    move/from16 v33, v8

    add-int/lit8 v0, v0, 0x28

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v7, p3

    move-object/from16 v3, v31

    goto :goto_19

    :cond_1f
    move-object/from16 v31, v3

    const/4 v0, 0x3

    move/from16 v3, p5

    move/from16 v7, v27

    if-lez v3, :cond_22

    move/from16 v5, p8

    const/16 v8, 0xc

    if-ne v5, v8, :cond_20

    const/4 v8, 0x1

    .line 371
    invoke-static {v3, v8}, Lorg/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v3

    invoke-static {v3, v0}, Lorg/concentus/Inlines;->silk_DIV32_16(II)I

    move-result v3

    goto :goto_1c

    :cond_20
    const/4 v8, 0x1

    const/16 v10, 0x10

    if-ne v5, v10, :cond_21

    .line 373
    invoke-static {v3, v8}, Lorg/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v3

    .line 375
    :cond_21
    :goto_1c
    invoke-static {v3}, Lorg/concentus/Inlines;->silk_lin2log(I)I

    move-result v8

    goto :goto_1d

    :cond_22
    move/from16 v5, p8

    const/4 v8, 0x0

    .line 379
    :goto_1d
    invoke-static/range {p7 .. p7}, Lorg/concentus/Inlines;->silk_SAT16(I)I

    move-result v10

    move/from16 v11, p7

    move/from16 v13, v26

    if-ne v11, v10, :cond_23

    const/4 v10, 0x1

    goto :goto_1e

    :cond_23
    const/4 v10, 0x0

    :goto_1e
    invoke-static {v10}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    const/4 v10, 0x4

    if-ne v14, v10, :cond_24

    .line 382
    sget-object v10, Lorg/concentus/SilkTables;->silk_CB_lags_stage2:[[B

    const/16 v0, 0x8

    if-ne v5, v0, :cond_25

    if-lez v15, :cond_25

    const/16 v0, 0xb

    goto :goto_1f

    .line 390
    :cond_24
    sget-object v10, Lorg/concentus/SilkTables;->silk_CB_lags_stage2_10_ms:[[B

    :cond_25
    const/4 v0, 0x3

    :goto_1f
    const/high16 v17, -0x80000000

    move/from16 v27, v7

    move/from16 v30, v13

    move/from16 v5, v17

    move v13, v5

    const/4 v7, -0x1

    const/4 v15, 0x0

    const/16 v40, 0x0

    :goto_20
    if-ge v15, v6, :cond_30

    .line 395
    aget v32, v12, v15

    move/from16 v33, v6

    const/4 v6, 0x0

    :goto_21
    if-ge v6, v0, :cond_27

    const/16 v20, 0x0

    .line 397
    aput v20, v24, v6

    move-object/from16 v34, v12

    const/4 v12, 0x0

    :goto_22
    if-ge v12, v14, :cond_26

    .line 401
    aget-object v35, v10, v12

    aget-byte v35, v35, v6

    add-int v35, v32, v35

    .line 402
    aget v36, v24, v6

    move-object/from16 v38, v10

    const/16 v37, 0xe

    add-int/lit8 v10, v35, -0xe

    move/from16 v35, v13

    const/16 v13, 0x84

    .line 403
    invoke-static {v9, v12, v10, v13}, Lorg/concentus/Inlines;->MatrixGet([SIII)S

    move-result v10

    add-int v36, v36, v10

    aput v36, v24, v6

    add-int/lit8 v12, v12, 0x1

    move/from16 v13, v35

    move-object/from16 v10, v38

    goto :goto_22

    :cond_26
    move-object/from16 v38, v10

    move/from16 v35, v13

    const/16 v13, 0x84

    const/16 v37, 0xe

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v12, v34

    move/from16 v13, v35

    goto :goto_21

    :cond_27
    move-object/from16 v38, v10

    move-object/from16 v34, v12

    move/from16 v35, v13

    const/16 v13, 0x84

    const/16 v37, 0xe

    move/from16 v12, v17

    const/4 v6, 0x0

    const/4 v10, 0x0

    :goto_23
    if-ge v10, v0, :cond_29

    .line 412
    aget v13, v24, v10

    if-le v13, v12, :cond_28

    move v6, v10

    move v12, v13

    :cond_28
    add-int/lit8 v10, v10, 0x1

    const/16 v13, 0x84

    goto :goto_23

    .line 419
    :cond_29
    invoke-static/range {v32 .. v32}, Lorg/concentus/Inlines;->silk_lin2log(I)I

    move-result v10

    .line 421
    invoke-static {v10}, Lorg/concentus/Inlines;->silk_SAT16(I)I

    move-result v13

    if-ne v10, v13, :cond_2a

    const/4 v13, 0x1

    goto :goto_24

    :cond_2a
    const/4 v13, 0x0

    :goto_24
    invoke-static {v13}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    mul-int/lit16 v13, v14, 0x666

    move/from16 v36, v0

    .line 422
    invoke-static {v13}, Lorg/concentus/Inlines;->silk_SAT16(I)I

    move-result v0

    if-ne v13, v0, :cond_2b

    const/4 v0, 0x1

    goto :goto_25

    :cond_2b
    const/4 v0, 0x0

    :goto_25
    invoke-static {v0}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    .line 423
    invoke-static {v13, v10}, Lorg/concentus/Inlines;->silk_SMULBB(II)I

    move-result v0

    move-object/from16 v39, v9

    const/4 v9, 0x7

    invoke-static {v0, v9}, Lorg/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v0

    sub-int v0, v12, v0

    .line 427
    invoke-static {v13}, Lorg/concentus/Inlines;->silk_SAT16(I)I

    move-result v9

    if-ne v13, v9, :cond_2c

    const/4 v9, 0x1

    goto :goto_26

    :cond_2c
    const/4 v9, 0x0

    :goto_26
    invoke-static {v9}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    if-lez v3, :cond_2e

    sub-int/2addr v10, v8

    .line 430
    invoke-static {v10}, Lorg/concentus/Inlines;->silk_SAT16(I)I

    move-result v9

    if-ne v10, v9, :cond_2d

    const/4 v9, 0x1

    goto :goto_27

    :cond_2d
    const/4 v9, 0x0

    :goto_27
    invoke-static {v9}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    .line 431
    invoke-static {v10, v10}, Lorg/concentus/Inlines;->silk_SMULBB(II)I

    move-result v9

    const/4 v10, 0x7

    invoke-static {v9, v10}, Lorg/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v9

    .line 432
    iget v10, v4, Lorg/concentus/BoxedValueInt;->Val:I

    invoke-static {v13, v10}, Lorg/concentus/Inlines;->silk_SMULBB(II)I

    move-result v10

    const/16 v13, 0xf

    invoke-static {v10, v13}, Lorg/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v10

    .line 434
    invoke-static {v10, v9}, Lorg/concentus/Inlines;->silk_MUL(II)I

    move-result v10

    add-int/lit8 v9, v9, 0x40

    invoke-static {v10, v9}, Lorg/concentus/Inlines;->silk_DIV32(II)I

    move-result v9

    sub-int/2addr v0, v9

    :cond_2e
    if-le v0, v5, :cond_2f

    .line 440
    invoke-static {v14, v11}, Lorg/concentus/Inlines;->silk_SMULBB(II)I

    move-result v9

    if-le v12, v9, :cond_2f

    sget-object v9, Lorg/concentus/SilkTables;->silk_CB_lags_stage2:[[B

    const/4 v10, 0x0

    aget-object v9, v9, v10

    aget-byte v9, v9, v6

    const/16 v10, 0x10

    if-gt v9, v10, :cond_2f

    move v5, v0

    move/from16 v40, v6

    move v13, v12

    move/from16 v7, v32

    goto :goto_28

    :cond_2f
    move/from16 v13, v35

    :goto_28
    add-int/lit8 v15, v15, 0x1

    move/from16 v6, v33

    move-object/from16 v12, v34

    move/from16 v0, v36

    move-object/from16 v10, v38

    move-object/from16 v9, v39

    goto/16 :goto_20

    :cond_30
    move-object/from16 v38, v10

    move/from16 v35, v13

    const/4 v0, -0x1

    const/16 v37, 0xe

    if-ne v7, v0, :cond_31

    const/4 v6, 0x0

    .line 451
    invoke-static {v1, v6, v14}, Lorg/concentus/Arrays;->MemSet([III)V

    .line 452
    iput v6, v4, Lorg/concentus/BoxedValueInt;->Val:I

    .line 453
    iput-short v6, v2, Lorg/concentus/BoxedValueShort;->Val:S

    move-object/from16 v0, p3

    .line 454
    iput-byte v6, v0, Lorg/concentus/BoxedValueByte;->Val:B

    const/4 v0, 0x1

    return v0

    :cond_31
    move-object/from16 v0, p3

    move/from16 v13, v35

    const/4 v6, 0x0

    .line 460
    invoke-static {v13, v14}, Lorg/concentus/Inlines;->silk_DIV32_16(II)I

    move-result v3

    const/4 v5, 0x2

    invoke-static {v3, v5}, Lorg/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v3

    iput v3, v4, Lorg/concentus/BoxedValueInt;->Val:I

    .line 461
    iget v3, v4, Lorg/concentus/BoxedValueInt;->Val:I

    if-ltz v3, :cond_32

    const/4 v3, 0x1

    goto :goto_29

    :cond_32
    move v3, v6

    :goto_29
    invoke-static {v3}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    move/from16 v3, p8

    const/16 v4, 0x8

    if-le v3, v4, :cond_44

    move-object/from16 v4, v31

    .line 473
    iput v6, v4, Lorg/concentus/BoxedValueInt;->Val:I

    move-object/from16 v5, v29

    .line 474
    iput v6, v5, Lorg/concentus/BoxedValueInt;->Val:I

    move-object/from16 v8, p0

    move/from16 v13, v18

    .line 475
    invoke-static {v4, v5, v8, v13}, Lorg/concentus/SumSqrShift;->silk_sum_sqr_shift(Lorg/concentus/BoxedValueInt;Lorg/concentus/BoxedValueInt;[SI)V

    .line 476
    iget v4, v4, Lorg/concentus/BoxedValueInt;->Val:I

    .line 477
    iget v4, v5, Lorg/concentus/BoxedValueInt;->Val:I

    if-lez v4, :cond_33

    .line 480
    new-array v5, v13, [S

    const/4 v9, 0x1

    .line 482
    invoke-static {v4, v9}, Lorg/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v4

    move v9, v6

    :goto_2a
    if-ge v9, v13, :cond_34

    .line 484
    aget-short v10, v8, v9

    invoke-static {v10, v4}, Lorg/concentus/Inlines;->silk_RSHIFT16(SI)S

    move-result v10

    aput-short v10, v5, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_2a

    :cond_33
    move-object v5, v8

    .line 494
    :cond_34
    invoke-static {v7}, Lorg/concentus/Inlines;->silk_SAT16(I)I

    move-result v4

    if-ne v7, v4, :cond_35

    const/4 v4, 0x1

    goto :goto_2b

    :cond_35
    move v4, v6

    :goto_2b
    invoke-static {v4}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    const/16 v4, 0xc

    if-ne v3, v4, :cond_36

    const/4 v8, 0x3

    .line 496
    invoke-static {v7, v8}, Lorg/concentus/Inlines;->silk_SMULBB(II)I

    move-result v7

    const/4 v9, 0x1

    invoke-static {v7, v9}, Lorg/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v7

    :goto_2c
    move/from16 v15, v27

    move/from16 v8, v30

    goto :goto_2d

    :cond_36
    const/4 v8, 0x3

    const/4 v9, 0x1

    const/16 v10, 0x10

    if-ne v3, v10, :cond_37

    .line 498
    invoke-static {v7, v9}, Lorg/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v7

    goto :goto_2c

    .line 500
    :cond_37
    invoke-static {v7, v8}, Lorg/concentus/Inlines;->silk_SMULBB(II)I

    move-result v7

    goto :goto_2c

    .line 503
    :goto_2d
    invoke-static {v7, v8, v15}, Lorg/concentus/Inlines;->silk_LIMIT_int(III)I

    move-result v7

    add-int/lit8 v10, v7, -0x2

    .line 504
    invoke-static {v10, v8}, Lorg/concentus/Inlines;->silk_max_int(II)I

    move-result v18

    add-int/lit8 v10, v7, 0x2

    .line 505
    invoke-static {v10, v15}, Lorg/concentus/Inlines;->silk_min_int(II)I

    move-result v13

    move v10, v6

    :goto_2e
    if-ge v10, v14, :cond_38

    .line 514
    sget-object v11, Lorg/concentus/SilkTables;->silk_CB_lags_stage2:[[B

    aget-object v11, v11, v10

    move/from16 v12, v40

    aget-byte v11, v11, v12

    const/16 v19, 0x2

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v11, v7

    aput v11, v1, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_2e

    :cond_38
    const/4 v10, 0x4

    if-ne v14, v10, :cond_39

    .line 519
    sget-object v4, Lorg/concentus/SilkTables;->silk_nb_cbk_searchs_stage3:[B

    aget-byte v4, v4, p9

    .line 520
    sget-object v10, Lorg/concentus/SilkTables;->silk_CB_lags_stage3:[[B

    goto :goto_2f

    .line 523
    :cond_39
    sget-object v10, Lorg/concentus/SilkTables;->silk_CB_lags_stage3_10_ms:[[B

    :goto_2f
    move v12, v4

    move-object v4, v10

    mul-int v10, v14, v12

    .line 527
    new-array v11, v10, [Lorg/concentus/PitchAnalysisCore$silk_pe_stage3_vals;

    .line 528
    new-array v6, v10, [Lorg/concentus/PitchAnalysisCore$silk_pe_stage3_vals;

    const/4 v9, 0x0

    :goto_30
    if-ge v9, v10, :cond_3a

    .line 530
    new-instance v16, Lorg/concentus/PitchAnalysisCore$silk_pe_stage3_vals;

    invoke-direct/range {v16 .. v16}, Lorg/concentus/PitchAnalysisCore$silk_pe_stage3_vals;-><init>()V

    aput-object v16, v11, v9

    .line 531
    new-instance v16, Lorg/concentus/PitchAnalysisCore$silk_pe_stage3_vals;

    invoke-direct/range {v16 .. v16}, Lorg/concentus/PitchAnalysisCore$silk_pe_stage3_vals;-><init>()V

    aput-object v16, v6, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_30

    :cond_3a
    move/from16 v26, v8

    const/4 v8, 0x1

    const/16 v16, 0x0

    const/16 v19, 0x14

    move-object v9, v6

    move-object v10, v5

    move-object/from16 p0, v11

    move/from16 v11, v18

    move/from16 v41, v12

    move/from16 v12, v25

    move/from16 v43, v13

    move/from16 v42, v26

    move/from16 v13, p10

    move v8, v14

    move/from16 v14, p9

    .line 533
    invoke-static/range {v9 .. v14}, Lorg/concentus/PitchAnalysisCore;->silk_P_Ana_calc_corr_st3([Lorg/concentus/PitchAnalysisCore$silk_pe_stage3_vals;[SIIII)V

    move-object/from16 v9, p0

    .line 534
    invoke-static/range {v9 .. v14}, Lorg/concentus/PitchAnalysisCore;->silk_P_Ana_calc_energy_st3([Lorg/concentus/PitchAnalysisCore$silk_pe_stage3_vals;[SIIII)V

    .line 537
    invoke-static {v7}, Lorg/concentus/Inlines;->silk_SAT16(I)I

    move-result v9

    if-ne v7, v9, :cond_3b

    const/4 v9, 0x1

    goto :goto_31

    :cond_3b
    move/from16 v9, v16

    :goto_31
    invoke-static {v9}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    const/16 v9, 0x666

    .line 538
    invoke-static {v9, v7}, Lorg/concentus/Inlines;->silk_DIV32_16(II)I

    move-result v9

    mul-int/lit8 v3, v3, 0x14

    mul-int v10, v8, v25

    .line 542
    invoke-static {v5, v3, v10}, Lorg/concentus/Inlines;->silk_inner_prod_self([SII)I

    move-result v3

    const/4 v5, 0x1

    invoke-static {v3, v5}, Lorg/concentus/Inlines;->silk_ADD32(II)I

    move-result v3

    move/from16 v10, v16

    move v11, v10

    move/from16 v12, v18

    move/from16 v13, v43

    :goto_32
    if-gt v12, v13, :cond_42

    move/from16 p4, v3

    move v14, v10

    move/from16 v10, v16

    move/from16 v5, v17

    move/from16 v3, v41

    :goto_33
    if-ge v10, v3, :cond_41

    move/from16 p5, v7

    move/from16 v43, v13

    move/from16 p6, v14

    move/from16 v7, v16

    move v13, v7

    move/from16 v14, p4

    :goto_34
    if-ge v7, v8, :cond_3d

    .line 549
    invoke-static {v6, v7, v10, v3}, Lorg/concentus/Inlines;->MatrixGet([Lorg/concentus/PitchAnalysisCore$silk_pe_stage3_vals;III)Lorg/concentus/PitchAnalysisCore$silk_pe_stage3_vals;

    move-result-object v0

    iget-object v0, v0, Lorg/concentus/PitchAnalysisCore$silk_pe_stage3_vals;->Values:[I

    aget v0, v0, v11

    .line 548
    invoke-static {v13, v0}, Lorg/concentus/Inlines;->silk_ADD32(II)I

    move-result v13

    move-object/from16 v0, p0

    move-object/from16 v17, v6

    .line 552
    invoke-static {v0, v7, v10, v3}, Lorg/concentus/Inlines;->MatrixGet([Lorg/concentus/PitchAnalysisCore$silk_pe_stage3_vals;III)Lorg/concentus/PitchAnalysisCore$silk_pe_stage3_vals;

    move-result-object v6

    iget-object v6, v6, Lorg/concentus/PitchAnalysisCore$silk_pe_stage3_vals;->Values:[I

    aget v6, v6, v11

    .line 551
    invoke-static {v14, v6}, Lorg/concentus/Inlines;->silk_ADD32(II)I

    move-result v14

    if-ltz v14, :cond_3c

    const/4 v6, 0x1

    goto :goto_35

    :cond_3c
    move/from16 v6, v16

    .line 554
    :goto_35
    invoke-static {v6}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    add-int/lit8 v7, v7, 0x1

    move-object/from16 p0, v0

    move-object/from16 v6, v17

    move-object/from16 v0, p3

    goto :goto_34

    :cond_3d
    move-object/from16 v0, p0

    move-object/from16 v17, v6

    if-lez v13, :cond_3f

    const/16 v6, 0xe

    .line 557
    invoke-static {v13, v14, v6}, Lorg/concentus/Inlines;->silk_DIV32_varQ(III)I

    move-result v7

    .line 560
    invoke-static {v9, v10}, Lorg/concentus/Inlines;->silk_MUL(II)I

    move-result v13

    rsub-int v13, v13, 0x7fff

    .line 562
    invoke-static {v13}, Lorg/concentus/Inlines;->silk_SAT16(I)I

    move-result v14

    if-ne v13, v14, :cond_3e

    const/4 v14, 0x1

    goto :goto_36

    :cond_3e
    move/from16 v14, v16

    :goto_36
    invoke-static {v14}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    .line 563
    invoke-static {v7, v13}, Lorg/concentus/Inlines;->silk_SMULWB(II)I

    move-result v7

    goto :goto_37

    :cond_3f
    const/16 v6, 0xe

    move/from16 v7, v16

    :goto_37
    if-le v7, v5, :cond_40

    .line 569
    sget-object v13, Lorg/concentus/SilkTables;->silk_CB_lags_stage3:[[B

    aget-object v13, v13, v16

    aget-byte v13, v13, v10

    add-int/2addr v13, v12

    if-gt v13, v15, :cond_40

    move v5, v7

    move v14, v10

    move v7, v12

    goto :goto_38

    :cond_40
    move/from16 v7, p5

    move/from16 v14, p6

    :goto_38
    add-int/lit8 v10, v10, 0x1

    move-object/from16 p0, v0

    move-object/from16 v6, v17

    move/from16 v13, v43

    move-object/from16 v0, p3

    goto/16 :goto_33

    :cond_41
    move-object/from16 v0, p0

    move-object/from16 v17, v6

    move/from16 p5, v7

    move/from16 v43, v13

    move/from16 p6, v14

    const/16 v6, 0xe

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v12, v12, 0x1

    move/from16 v10, p6

    move/from16 v41, v3

    move-object/from16 v6, v17

    move-object/from16 v0, p3

    move/from16 v3, p4

    move/from16 v17, v5

    const/4 v5, 0x1

    goto/16 :goto_32

    :cond_42
    move/from16 v9, v16

    :goto_39
    if-ge v9, v8, :cond_43

    .line 579
    aget-object v0, v4, v9

    aget-byte v0, v0, v10

    add-int/2addr v0, v7

    aput v0, v1, v9

    move/from16 v5, v28

    move/from16 v3, v42

    .line 580
    invoke-static {v0, v3, v5}, Lorg/concentus/Inlines;->silk_LIMIT(III)I

    move-result v0

    aput v0, v1, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_39

    :cond_43
    move/from16 v3, v42

    sub-int/2addr v7, v3

    int-to-short v0, v7

    .line 582
    iput-short v0, v2, Lorg/concentus/BoxedValueShort;->Val:S

    int-to-byte v0, v10

    move-object/from16 v3, p3

    .line 583
    iput-byte v0, v3, Lorg/concentus/BoxedValueByte;->Val:B

    goto :goto_3b

    :cond_44
    move-object v3, v0

    move/from16 v16, v6

    move v8, v14

    move/from16 v12, v40

    move/from16 v9, v16

    :goto_3a
    if-ge v9, v8, :cond_45

    .line 588
    aget-object v0, v38, v9

    aget-byte v0, v0, v12

    add-int/2addr v0, v7

    aput v0, v1, v9

    const/16 v4, 0x90

    const/16 v5, 0x10

    .line 589
    invoke-static {v0, v5, v4}, Lorg/concentus/Inlines;->silk_LIMIT(III)I

    move-result v0

    aput v0, v1, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_3a

    :cond_45
    const/16 v5, 0x10

    sub-int/2addr v7, v5

    int-to-short v0, v7

    .line 591
    iput-short v0, v2, Lorg/concentus/BoxedValueShort;->Val:S

    int-to-byte v0, v12

    .line 592
    iput-byte v0, v3, Lorg/concentus/BoxedValueByte;->Val:B

    .line 594
    :goto_3b
    iget-short v0, v2, Lorg/concentus/BoxedValueShort;->Val:S

    if-ltz v0, :cond_46

    const/4 v9, 0x1

    goto :goto_3c

    :cond_46
    move/from16 v9, v16

    :goto_3c
    invoke-static {v9}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    return v16
.end method
