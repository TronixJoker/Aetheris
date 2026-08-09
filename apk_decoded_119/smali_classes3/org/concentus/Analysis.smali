.class Lorg/concentus/Analysis;
.super Ljava/lang/Object;
.source "Analysis.java"


# static fields
.field private static final M_PI:D = 3.141592653

.field private static final NB_TONAL_SKIP_BANDS:I = 0x9

.field private static final cA:F = 0.43157974f

.field private static final cB:F = 0.678484f

.field private static final cC:F = 0.08595542f

.field private static final cE:F = 1.5707964f


# direct methods
.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fast_atan2f(FF)F
    .locals 9

    .line 50
    invoke-static {p1}, Lorg/concentus/Inlines;->ABS16(F)F

    move-result v0

    invoke-static {p0}, Lorg/concentus/Inlines;->ABS16(F)F

    move-result v1

    add-float/2addr v0, v1

    const v1, 0x3089705f    # 1.0E-9f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const v0, 0x5368d4a5    # 1.0E12f

    mul-float/2addr p1, v0

    mul-float/2addr p0, v0

    :cond_0
    mul-float v0, p1, p1

    mul-float v1, p0, p0

    cmpg-float v2, v0, v1

    const v3, 0x3edcf805

    const v4, 0x3db00965

    const v5, 0x3f2db121

    const v6, -0x4036f025

    const v7, 0x3fc90fdb

    const/4 v8, 0x0

    if-gez v2, :cond_4

    mul-float/2addr v5, v0

    add-float/2addr v5, v1

    mul-float/2addr v4, v0

    add-float/2addr v4, v1

    mul-float/2addr v5, v4

    cmpl-float v2, v5, v8

    if-eqz v2, :cond_2

    neg-float p1, p1

    mul-float/2addr p1, p0

    mul-float/2addr v0, v3

    add-float/2addr v1, v0

    mul-float/2addr p1, v1

    div-float/2addr p1, v5

    cmpg-float p0, p0, v8

    if-gez p0, :cond_1

    goto :goto_0

    :cond_1
    move v6, v7

    :goto_0
    add-float/2addr p1, v6

    return p1

    :cond_2
    cmpg-float p0, p0, v8

    if-gez p0, :cond_3

    goto :goto_1

    :cond_3
    move v6, v7

    :goto_1
    return v6

    :cond_4
    mul-float/2addr v5, v1

    add-float/2addr v5, v0

    mul-float/2addr v4, v1

    add-float/2addr v4, v0

    mul-float/2addr v5, v4

    cmpl-float v2, v5, v8

    if-eqz v2, :cond_7

    mul-float/2addr p1, p0

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    mul-float/2addr v0, p1

    div-float/2addr v0, v5

    cmpg-float p0, p0, v8

    if-gez p0, :cond_5

    move p0, v6

    goto :goto_2

    :cond_5
    move p0, v7

    :goto_2
    add-float/2addr v0, p0

    cmpg-float p0, p1, v8

    if-gez p0, :cond_6

    goto :goto_3

    :cond_6
    move v6, v7

    :goto_3
    sub-float/2addr v0, v6

    return v0

    :cond_7
    cmpg-float v0, p0, v8

    if-gez v0, :cond_8

    move v0, v6

    goto :goto_4

    :cond_8
    move v0, v7

    :goto_4
    mul-float/2addr p1, p0

    cmpg-float p0, p1, v8

    if-gez p0, :cond_9

    goto :goto_5

    :cond_9
    move v6, v7

    :goto_5
    sub-float/2addr v0, v6

    return v0
.end method

.method static run_analysis(Lorg/concentus/TonalityAnalysisState;Lorg/concentus/CeltMode;[SIIIIIIIILorg/concentus/AnalysisInfo;)V
    .locals 16

    move-object/from16 v10, p0

    move/from16 v11, p5

    move-object/from16 v12, p11

    if-eqz p2, :cond_1

    move/from16 v0, p9

    mul-int/lit16 v0, v0, 0xc3

    .line 558
    div-int/lit8 v0, v0, 0x64

    move/from16 v1, p4

    invoke-static {v0, v1}, Lorg/concentus/Inlines;->IMIN(II)I

    move-result v13

    .line 560
    iget v0, v10, Lorg/concentus/TonalityAnalysisState;->analysis_offset:I

    sub-int v0, v13, v0

    .line 561
    iget v1, v10, Lorg/concentus/TonalityAnalysisState;->analysis_offset:I

    move v14, v0

    move v15, v1

    :goto_0
    const/16 v9, 0x1e0

    .line 563
    invoke-static {v9, v14}, Lorg/concentus/Inlines;->IMIN(II)I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move v5, v15

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move v12, v9

    move/from16 v9, p10

    invoke-static/range {v0 .. v9}, Lorg/concentus/Analysis;->tonality_analysis(Lorg/concentus/TonalityAnalysisState;Lorg/concentus/CeltMode;[SIIIIIII)V

    add-int/2addr v15, v12

    add-int/lit16 v14, v14, -0x1e0

    if-gtz v14, :cond_0

    .line 567
    iput v13, v10, Lorg/concentus/TonalityAnalysisState;->analysis_offset:I

    .line 569
    iget v0, v10, Lorg/concentus/TonalityAnalysisState;->analysis_offset:I

    sub-int/2addr v0, v11

    iput v0, v10, Lorg/concentus/TonalityAnalysisState;->analysis_offset:I

    goto :goto_1

    :cond_0
    move-object/from16 v12, p11

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v0, 0x0

    move-object/from16 v1, p11

    .line 572
    iput v0, v1, Lorg/concentus/AnalysisInfo;->valid:I

    .line 573
    invoke-static {v10, v1, v11}, Lorg/concentus/Analysis;->tonality_get_info(Lorg/concentus/TonalityAnalysisState;Lorg/concentus/AnalysisInfo;I)V

    return-void
.end method

.method static tonality_analysis(Lorg/concentus/TonalityAnalysisState;Lorg/concentus/CeltMode;[SIIIIIII)V
    .locals 40

    move-object/from16 v0, p0

    move/from16 v1, p4

    .line 149
    iget-object v2, v0, Lorg/concentus/TonalityAnalysisState;->angle:[F

    .line 150
    iget-object v3, v0, Lorg/concentus/TonalityAnalysisState;->d_angle:[F

    .line 151
    iget-object v4, v0, Lorg/concentus/TonalityAnalysisState;->d2_angle:[F

    const/16 v5, 0x12

    .line 154
    new-array v6, v5, [F

    .line 155
    new-array v7, v5, [F

    const/16 v8, 0x8

    .line 156
    new-array v9, v8, [F

    const/16 v10, 0x19

    .line 157
    new-array v10, v10, [F

    const/4 v11, 0x2

    .line 166
    new-array v12, v11, [F

    .line 176
    iget v13, v0, Lorg/concentus/TonalityAnalysisState;->last_transition:I

    const/4 v14, 0x1

    add-int/2addr v13, v14

    iput v13, v0, Lorg/concentus/TonalityAnalysisState;->last_transition:I

    .line 177
    iget v13, v0, Lorg/concentus/TonalityAnalysisState;->count:I

    add-int/2addr v13, v14

    const/16 v15, 0x14

    invoke-static {v15, v13}, Lorg/concentus/Inlines;->IMIN(II)I

    move-result v13

    int-to-float v13, v13

    const/high16 v16, 0x3f800000    # 1.0f

    div-float v13, v16, v13

    .line 178
    iget v15, v0, Lorg/concentus/TonalityAnalysisState;->count:I

    add-int/2addr v15, v14

    const/16 v8, 0x32

    invoke-static {v8, v15}, Lorg/concentus/Inlines;->IMIN(II)I

    move-result v8

    int-to-float v8, v8

    div-float v8, v16, v8

    .line 179
    iget v15, v0, Lorg/concentus/TonalityAnalysisState;->count:I

    add-int/2addr v15, v14

    const/16 v5, 0x3e8

    invoke-static {v5, v15}, Lorg/concentus/Inlines;->IMIN(II)I

    move-result v5

    int-to-float v5, v5

    div-float v5, v16, v5

    .line 181
    iget v15, v0, Lorg/concentus/TonalityAnalysisState;->count:I

    const/high16 v11, 0x3f000000    # 0.5f

    const/4 v14, 0x4

    if-ge v15, v14, :cond_0

    .line 182
    iput v11, v0, Lorg/concentus/TonalityAnalysisState;->music_prob:F

    :cond_0
    move-object/from16 v15, p1

    .line 184
    iget-object v15, v15, Lorg/concentus/CeltMode;->mdct:Lorg/concentus/MDCTLookup;

    iget-object v15, v15, Lorg/concentus/MDCTLookup;->kfft:[Lorg/concentus/FFTState;

    const/4 v14, 0x0

    aget-object v15, v15, v14

    .line 185
    iget v11, v0, Lorg/concentus/TonalityAnalysisState;->count:I

    const/16 v14, 0xf0

    if-nez v11, :cond_1

    .line 186
    iput v14, v0, Lorg/concentus/TonalityAnalysisState;->mem_fill:I

    .line 189
    :cond_1
    iget-object v11, v0, Lorg/concentus/TonalityAnalysisState;->inmem:[I

    iget v14, v0, Lorg/concentus/TonalityAnalysisState;->mem_fill:I

    move-object/from16 v29, v12

    iget v12, v0, Lorg/concentus/TonalityAnalysisState;->mem_fill:I

    move/from16 v30, v13

    const/16 v13, 0x2d0

    rsub-int v12, v12, 0x2d0

    invoke-static {v1, v12}, Lorg/concentus/Inlines;->IMIN(II)I

    move-result v23

    move-object/from16 v19, p2

    move/from16 v20, p3

    move-object/from16 v21, v11

    move/from16 v22, v14

    move/from16 v24, p5

    move/from16 v25, p6

    move/from16 v26, p7

    move/from16 v27, p8

    invoke-static/range {v19 .. v27}, Lorg/concentus/Downmix;->downmix_int([SI[IIIIIII)V

    .line 191
    iget v11, v0, Lorg/concentus/TonalityAnalysisState;->mem_fill:I

    add-int/2addr v11, v1

    if-ge v11, v13, :cond_2

    .line 192
    iget v2, v0, Lorg/concentus/TonalityAnalysisState;->mem_fill:I

    add-int/2addr v2, v1

    iput v2, v0, Lorg/concentus/TonalityAnalysisState;->mem_fill:I

    return-void

    .line 197
    :cond_2
    iget-object v11, v0, Lorg/concentus/TonalityAnalysisState;->info:[Lorg/concentus/AnalysisInfo;

    iget v12, v0, Lorg/concentus/TonalityAnalysisState;->write_pos:I

    add-int/lit8 v14, v12, 0x1

    iput v14, v0, Lorg/concentus/TonalityAnalysisState;->write_pos:I

    aget-object v11, v11, v12

    .line 198
    iget v12, v0, Lorg/concentus/TonalityAnalysisState;->write_pos:I

    const/16 v14, 0xc8

    if-lt v12, v14, :cond_3

    .line 199
    iget v12, v0, Lorg/concentus/TonalityAnalysisState;->write_pos:I

    sub-int/2addr v12, v14

    iput v12, v0, Lorg/concentus/TonalityAnalysisState;->write_pos:I

    :cond_3
    const/16 v12, 0x3c0

    .line 202
    new-array v14, v12, [I

    .line 203
    new-array v12, v12, [I

    move-object/from16 v21, v10

    const/16 v13, 0xf0

    .line 204
    new-array v10, v13, [F

    move-object/from16 v22, v9

    .line 205
    new-array v9, v13, [F

    move/from16 v23, v8

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v13, :cond_4

    .line 207
    sget-object v13, Lorg/concentus/OpusTables;->analysis_window:[F

    aget v13, v13, v8

    mul-int/lit8 v24, v8, 0x2

    move/from16 v25, v5

    .line 208
    iget-object v5, v0, Lorg/concentus/TonalityAnalysisState;->inmem:[I

    aget v5, v5, v8

    int-to-float v5, v5

    mul-float/2addr v5, v13

    float-to-int v5, v5

    aput v5, v14, v24

    const/4 v5, 0x1

    add-int/lit8 v24, v24, 0x1

    .line 209
    iget-object v5, v0, Lorg/concentus/TonalityAnalysisState;->inmem:[I

    const/16 v26, 0xf0

    add-int v27, v26, v8

    aget v5, v5, v27

    int-to-float v5, v5

    mul-float/2addr v5, v13

    float-to-int v5, v5

    aput v5, v14, v24

    rsub-int v5, v8, 0x1df

    mul-int/lit8 v24, v5, 0x2

    move-object/from16 v26, v6

    .line 210
    iget-object v6, v0, Lorg/concentus/TonalityAnalysisState;->inmem:[I

    aget v5, v6, v5

    int-to-float v5, v5

    mul-float/2addr v5, v13

    float-to-int v5, v5

    aput v5, v14, v24

    const/4 v5, 0x1

    add-int/lit8 v24, v24, 0x1

    .line 211
    iget-object v5, v0, Lorg/concentus/TonalityAnalysisState;->inmem:[I

    rsub-int v6, v8, 0x2cf

    aget v5, v5, v6

    int-to-float v5, v5

    mul-float/2addr v13, v5

    float-to-int v5, v13

    aput v5, v14, v24

    add-int/lit8 v8, v8, 0x1

    move/from16 v5, v25

    move-object/from16 v6, v26

    const/16 v13, 0xf0

    goto :goto_0

    :cond_4
    move/from16 v25, v5

    move-object/from16 v26, v6

    .line 213
    iget-object v5, v0, Lorg/concentus/TonalityAnalysisState;->inmem:[I

    const/16 v6, 0x1e0

    const/4 v8, 0x0

    const/16 v13, 0xf0

    invoke-static {v5, v6, v8, v13}, Lorg/concentus/Arrays;->MemMove([IIII)V

    .line 215
    iget v5, v0, Lorg/concentus/TonalityAnalysisState;->mem_fill:I

    const/16 v6, 0x2d0

    rsub-int v13, v5, 0x2d0

    sub-int/2addr v1, v13

    .line 216
    iget-object v5, v0, Lorg/concentus/TonalityAnalysisState;->inmem:[I

    move/from16 v8, p5

    add-int/2addr v6, v8

    iget v8, v0, Lorg/concentus/TonalityAnalysisState;->mem_fill:I

    sub-int v36, v6, v8

    const/16 v34, 0xf0

    move-object/from16 v31, p2

    move/from16 v32, p3

    move-object/from16 v33, v5

    move/from16 v35, v1

    move/from16 v37, p6

    move/from16 v38, p7

    move/from16 v39, p8

    invoke-static/range {v31 .. v39}, Lorg/concentus/Downmix;->downmix_int([SI[IIIIIII)V

    const/16 v5, 0xf0

    add-int/2addr v1, v5

    .line 217
    iput v1, v0, Lorg/concentus/TonalityAnalysisState;->mem_fill:I

    .line 219
    invoke-static {v15, v14, v12}, Lorg/concentus/KissFFT;->opus_fft(Lorg/concentus/FFTState;[I[I)V

    const/4 v1, 0x1

    :goto_1
    if-ge v1, v5, :cond_5

    mul-int/lit8 v6, v1, 0x2

    .line 226
    aget v8, v12, v6

    int-to-float v13, v8

    rsub-int v14, v1, 0x1e0

    const/4 v15, 0x2

    mul-int/2addr v14, v15

    aget v15, v12, v14

    int-to-float v5, v15

    add-float/2addr v13, v5

    const/4 v5, 0x1

    add-int/2addr v6, v5

    .line 227
    aget v6, v12, v6

    move-object/from16 v20, v7

    int-to-float v7, v6

    add-int/2addr v14, v5

    aget v5, v12, v14

    int-to-float v14, v5

    sub-float/2addr v7, v14

    int-to-float v6, v6

    int-to-float v5, v5

    add-float/2addr v6, v5

    int-to-float v5, v15

    int-to-float v8, v8

    sub-float/2addr v5, v8

    const v8, 0x3e22f983

    .line 231
    invoke-static {v7, v13}, Lorg/concentus/Analysis;->fast_atan2f(FF)F

    move-result v7

    mul-float/2addr v7, v8

    .line 232
    aget v8, v2, v1

    sub-float v8, v7, v8

    .line 233
    aget v13, v3, v1

    sub-float v13, v8, v13

    const v14, 0x3e22f983

    .line 235
    invoke-static {v5, v6}, Lorg/concentus/Analysis;->fast_atan2f(FF)F

    move-result v5

    mul-float/2addr v5, v14

    sub-float v6, v5, v7

    sub-float v7, v6, v8

    const/high16 v8, 0x3f000000    # 0.5f

    add-float v14, v13, v8

    float-to-double v14, v14

    .line 239
    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    move-result-wide v14

    double-to-float v14, v14

    sub-float/2addr v13, v14

    .line 240
    invoke-static {v13}, Lorg/concentus/Inlines;->ABS16(F)F

    move-result v14

    aput v14, v9, v1

    mul-float/2addr v13, v13

    mul-float/2addr v13, v13

    add-float v14, v7, v8

    float-to-double v14, v14

    .line 244
    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    move-result-wide v14

    double-to-float v8, v14

    sub-float/2addr v7, v8

    .line 245
    aget v8, v9, v1

    invoke-static {v7}, Lorg/concentus/Inlines;->ABS16(F)F

    move-result v14

    add-float/2addr v8, v14

    aput v8, v9, v1

    mul-float/2addr v7, v7

    mul-float/2addr v7, v7

    .line 249
    aget v8, v4, v1

    const/high16 v14, 0x40000000    # 2.0f

    mul-float/2addr v13, v14

    add-float/2addr v8, v13

    add-float/2addr v8, v7

    const/high16 v13, 0x3e800000    # 0.25f

    mul-float/2addr v8, v13

    const v13, 0x477385d1

    mul-float/2addr v13, v8

    add-float v13, v13, v16

    div-float v8, v16, v13

    const v13, 0x3c75c28f    # 0.015f

    sub-float/2addr v8, v13

    .line 250
    aput v8, v10, v1

    .line 252
    aput v5, v2, v1

    .line 253
    aput v6, v3, v1

    .line 254
    aput v7, v4, v1

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v7, v20

    const/16 v5, 0xf0

    goto/16 :goto_1

    :cond_5
    move-object/from16 v20, v7

    const/4 v1, 0x0

    .line 260
    iput v1, v11, Lorg/concentus/AnalysisInfo;->activity:F

    .line 263
    iget v2, v0, Lorg/concentus/TonalityAnalysisState;->count:I

    if-nez v2, :cond_6

    const/4 v2, 0x0

    :goto_2
    const/16 v3, 0x12

    if-ge v2, v3, :cond_6

    .line 265
    iget-object v3, v0, Lorg/concentus/TonalityAnalysisState;->lowE:[F

    const v4, 0x501502f9    # 1.0E10f

    aput v4, v3, v2

    .line 266
    iget-object v3, v0, Lorg/concentus/TonalityAnalysisState;->highE:[F

    const v4, -0x2feafd07    # -1.0E10f

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    move v3, v1

    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v6

    move v8, v7

    move v13, v8

    const/4 v2, 0x0

    :goto_3
    const/16 v1, 0x12

    if-ge v2, v1, :cond_b

    .line 275
    sget-object v17, Lorg/concentus/OpusTables;->tbands:[I

    aget v17, v17, v2

    move/from16 v1, v17

    const/16 v17, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    :goto_4
    sget-object v31, Lorg/concentus/OpusTables;->tbands:[I

    add-int/lit8 v32, v2, 0x1

    aget v15, v31, v32

    if-ge v1, v15, :cond_7

    mul-int/lit8 v15, v1, 0x2

    .line 276
    aget v14, v12, v15

    move-object/from16 v31, v11

    int-to-float v11, v14

    int-to-float v14, v14

    mul-float/2addr v11, v14

    rsub-int v14, v1, 0x1e0

    const/16 v18, 0x2

    mul-int/lit8 v14, v14, 0x2

    move/from16 p5, v13

    aget v13, v12, v14

    move/from16 v33, v8

    int-to-float v8, v13

    int-to-float v13, v13

    mul-float/2addr v8, v13

    add-float/2addr v11, v8

    const/4 v8, 0x1

    add-int/2addr v15, v8

    aget v13, v12, v15

    int-to-float v15, v13

    int-to-float v13, v13

    mul-float/2addr v15, v13

    add-float/2addr v11, v15

    add-int/2addr v14, v8

    aget v8, v12, v14

    int-to-float v13, v8

    int-to-float v8, v8

    mul-float/2addr v13, v8

    add-float/2addr v11, v13

    const v8, 0x247ff2d6    # 5.55E-17f

    mul-float/2addr v11, v8

    add-float v17, v17, v11

    .line 281
    aget v8, v10, v1

    mul-float/2addr v8, v11

    add-float v28, v28, v8

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v11, v8

    .line 282
    aget v8, v9, v1

    const/high16 v13, 0x3f000000    # 0.5f

    sub-float v8, v13, v8

    mul-float/2addr v11, v8

    add-float v27, v27, v11

    add-int/lit8 v1, v1, 0x1

    move/from16 v13, p5

    move-object/from16 v11, v31

    move/from16 v8, v33

    goto :goto_4

    :cond_7
    move/from16 v33, v8

    move-object/from16 v31, v11

    move/from16 p5, v13

    .line 285
    iget-object v1, v0, Lorg/concentus/TonalityAnalysisState;->E:[[F

    iget v8, v0, Lorg/concentus/TonalityAnalysisState;->E_count:I

    aget-object v1, v1, v8

    aput v17, v1, v2

    const v1, 0x26901d7d    # 1.0E-15f

    add-float v1, v17, v1

    div-float v27, v27, v1

    add-float v4, v4, v27

    const v8, 0x2edbe6ff    # 1.0E-10f

    add-float v8, v17, v8

    float-to-double v13, v8

    move-object v11, v9

    .line 288
    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v8, v8

    add-float/2addr v3, v8

    .line 289
    invoke-static {v13, v14}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    double-to-float v8, v8

    aput v8, v20, v2

    .line 290
    iget-object v8, v0, Lorg/concentus/TonalityAnalysisState;->lowE:[F

    aget v9, v20, v2

    iget-object v13, v0, Lorg/concentus/TonalityAnalysisState;->lowE:[F

    aget v13, v13, v2

    const v14, 0x3c23d70a    # 0.01f

    add-float/2addr v13, v14

    invoke-static {v9, v13}, Lorg/concentus/Inlines;->MIN32(FF)F

    move-result v9

    aput v9, v8, v2

    .line 291
    iget-object v8, v0, Lorg/concentus/TonalityAnalysisState;->highE:[F

    aget v9, v20, v2

    iget-object v13, v0, Lorg/concentus/TonalityAnalysisState;->highE:[F

    aget v13, v13, v2

    const v14, 0x3dcccccd    # 0.1f

    sub-float/2addr v13, v14

    invoke-static {v9, v13}, Lorg/concentus/Inlines;->MAX32(FF)F

    move-result v9

    aput v9, v8, v2

    .line 292
    iget-object v8, v0, Lorg/concentus/TonalityAnalysisState;->highE:[F

    aget v8, v8, v2

    iget-object v9, v0, Lorg/concentus/TonalityAnalysisState;->lowE:[F

    aget v9, v9, v2

    add-float v9, v9, v16

    cmpg-float v8, v8, v9

    if-gez v8, :cond_8

    .line 293
    iget-object v8, v0, Lorg/concentus/TonalityAnalysisState;->highE:[F

    aget v9, v8, v2

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v9, v13

    aput v9, v8, v2

    .line 294
    iget-object v8, v0, Lorg/concentus/TonalityAnalysisState;->lowE:[F

    aget v9, v8, v2

    sub-float/2addr v9, v13

    aput v9, v8, v2

    .line 296
    :cond_8
    aget v8, v20, v2

    iget-object v9, v0, Lorg/concentus/TonalityAnalysisState;->lowE:[F

    aget v9, v9, v2

    sub-float/2addr v8, v9

    iget-object v9, v0, Lorg/concentus/TonalityAnalysisState;->highE:[F

    aget v9, v9, v2

    const v13, 0x26901d7d    # 1.0E-15f

    add-float/2addr v9, v13

    iget-object v13, v0, Lorg/concentus/TonalityAnalysisState;->lowE:[F

    aget v13, v13, v2

    sub-float/2addr v9, v13

    div-float/2addr v8, v9

    add-float/2addr v5, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v13, 0x0

    :goto_5
    const/16 v14, 0x8

    if-ge v8, v14, :cond_9

    .line 300
    iget-object v14, v0, Lorg/concentus/TonalityAnalysisState;->E:[[F

    aget-object v14, v14, v8

    aget v14, v14, v2

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    double-to-float v14, v14

    add-float/2addr v9, v14

    .line 301
    iget-object v14, v0, Lorg/concentus/TonalityAnalysisState;->E:[[F

    aget-object v14, v14, v8

    aget v14, v14, v2

    add-float/2addr v13, v14

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_9
    const/high16 v8, 0x41000000    # 8.0f

    mul-float/2addr v13, v8

    float-to-double v13, v13

    const-wide v34, 0x3cd203af9ee75616L    # 1.0E-15

    add-double v13, v13, v34

    .line 304
    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    double-to-float v8, v13

    div-float/2addr v9, v8

    const v8, 0x3f7d70a4    # 0.99f

    invoke-static {v8, v9}, Lorg/concentus/Inlines;->MIN16(FF)F

    move-result v8

    mul-float/2addr v8, v8

    mul-float/2addr v8, v8

    add-float/2addr v7, v8

    div-float v1, v28, v1

    .line 309
    iget-object v9, v0, Lorg/concentus/TonalityAnalysisState;->prev_band_tonality:[F

    aget v9, v9, v2

    mul-float/2addr v8, v9

    invoke-static {v1, v8}, Lorg/concentus/Inlines;->MAX16(FF)F

    move-result v1

    aput v1, v26, v2

    add-float/2addr v6, v1

    const/16 v1, 0x9

    if-lt v2, v1, :cond_a

    add-int/lit8 v1, v2, -0x9

    .line 312
    aget v1, v26, v1

    sub-float/2addr v6, v1

    :cond_a
    add-int/lit8 v1, v2, -0x12

    int-to-float v1, v1

    const v8, 0x3cf5c28f    # 0.03f

    mul-float/2addr v1, v8

    add-float v1, v1, v16

    mul-float/2addr v1, v6

    move/from16 v8, v33

    .line 314
    invoke-static {v8, v1}, Lorg/concentus/Inlines;->MAX16(FF)F

    move-result v8

    .line 315
    aget v1, v26, v2

    add-int/lit8 v9, v2, -0x8

    int-to-float v9, v9

    mul-float/2addr v1, v9

    add-float v13, p5, v1

    .line 316
    iget-object v1, v0, Lorg/concentus/TonalityAnalysisState;->prev_band_tonality:[F

    aget v9, v26, v2

    aput v9, v1, v2

    move-object v9, v11

    move-object/from16 v11, v31

    move/from16 v2, v32

    const/4 v1, 0x0

    goto/16 :goto_3

    :cond_b
    move-object/from16 v31, v11

    move/from16 p5, v13

    const/16 v1, 0x8

    add-int/lit8 v2, p9, -0x8

    const/4 v1, 0x0

    .line 322
    invoke-static {v1, v2}, Lorg/concentus/Inlines;->IMAX(II)I

    move-result v2

    const/4 v1, 0x1

    shl-int v2, v1, v2

    int-to-float v1, v2

    const v2, 0x3a156c0d    # 5.7E-4f

    div-float/2addr v2, v1

    const/high16 v1, 0x4d000000    # 1.3421773E8f

    mul-float/2addr v2, v1

    mul-float/2addr v2, v2

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_6
    const/16 v11, 0x15

    if-ge v1, v11, :cond_e

    .line 329
    sget-object v11, Lorg/concentus/OpusTables;->extra_bands:[I

    aget v11, v11, v1

    .line 330
    sget-object v14, Lorg/concentus/OpusTables;->extra_bands:[I

    add-int/lit8 v15, v1, 0x1

    aget v14, v14, v15

    move/from16 p7, v6

    move v13, v11

    const/4 v6, 0x0

    :goto_7
    if-ge v13, v14, :cond_c

    mul-int/lit8 v17, v13, 0x2

    move/from16 p8, v15

    .line 332
    aget v15, v12, v17

    move/from16 v33, v8

    int-to-float v8, v15

    int-to-float v15, v15

    mul-float/2addr v8, v15

    rsub-int v15, v13, 0x1e0

    const/16 v18, 0x2

    mul-int/lit8 v15, v15, 0x2

    move/from16 v24, v4

    aget v4, v12, v15

    move/from16 v26, v5

    int-to-float v5, v4

    int-to-float v4, v4

    mul-float/2addr v5, v4

    add-float/2addr v8, v5

    const/4 v4, 0x1

    add-int/lit8 v17, v17, 0x1

    aget v5, v12, v17

    int-to-float v4, v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v8, v4

    const/4 v4, 0x1

    add-int/2addr v15, v4

    aget v4, v12, v15

    int-to-float v5, v4

    int-to-float v4, v4

    mul-float/2addr v5, v4

    add-float/2addr v8, v5

    add-float/2addr v6, v8

    add-int/lit8 v13, v13, 0x1

    move/from16 v15, p8

    move/from16 v4, v24

    move/from16 v5, v26

    move/from16 v8, v33

    goto :goto_7

    :cond_c
    move/from16 v24, v4

    move/from16 v26, v5

    move/from16 v33, v8

    move/from16 p8, v15

    .line 336
    invoke-static {v10, v6}, Lorg/concentus/Inlines;->MAX32(FF)F

    move-result v10

    .line 337
    iget-object v4, v0, Lorg/concentus/TonalityAnalysisState;->meanE:[F

    sub-float v5, v16, v25

    iget-object v8, v0, Lorg/concentus/TonalityAnalysisState;->meanE:[F

    aget v8, v8, v1

    mul-float/2addr v5, v8

    invoke-static {v5, v6}, Lorg/concentus/Inlines;->MAX32(FF)F

    move-result v5

    aput v5, v4, v1

    .line 338
    iget-object v4, v0, Lorg/concentus/TonalityAnalysisState;->meanE:[F

    aget v4, v4, v1

    invoke-static {v6, v4}, Lorg/concentus/Inlines;->MAX32(FF)F

    move-result v4

    const v5, 0x3d4ccccd    # 0.05f

    mul-float/2addr v9, v5

    .line 340
    invoke-static {v9, v4}, Lorg/concentus/Inlines;->MAX32(FF)F

    move-result v9

    float-to-double v5, v4

    const-wide v27, 0x3fb999999999999aL    # 0.1

    move-object v8, v12

    float-to-double v12, v9

    mul-double v12, v12, v27

    cmpl-double v5, v5, v12

    if-lez v5, :cond_d

    const v5, 0x4e6e6b28    # 1.0E9f

    mul-float/2addr v5, v4

    cmpl-float v5, v5, v10

    if-lez v5, :cond_d

    sub-int/2addr v14, v11

    int-to-float v5, v14

    mul-float/2addr v5, v2

    cmpl-float v4, v4, v5

    if-lez v4, :cond_d

    move v6, v1

    goto :goto_8

    :cond_d
    move/from16 v6, p7

    :goto_8
    move/from16 v1, p8

    move-object v12, v8

    move/from16 v4, v24

    move/from16 v5, v26

    move/from16 v8, v33

    goto/16 :goto_6

    :cond_e
    move/from16 v24, v4

    move/from16 v26, v5

    move/from16 p7, v6

    move/from16 v33, v8

    .line 351
    iget v1, v0, Lorg/concentus/TonalityAnalysisState;->count:I

    const/4 v2, 0x2

    if-gt v1, v2, :cond_f

    const/16 v6, 0x14

    goto :goto_9

    :cond_f
    move/from16 v6, p7

    :goto_9
    float-to-double v1, v3

    .line 354
    invoke-static {v1, v2}, Ljava/lang/Math;->log10(D)D

    move-result-wide v1

    double-to-float v1, v1

    const/high16 v2, 0x41a00000    # 20.0f

    mul-float/2addr v1, v2

    .line 355
    iget v2, v0, Lorg/concentus/TonalityAnalysisState;->Etracker:F

    const v3, 0x3cf5c28f    # 0.03f

    sub-float/2addr v2, v3

    invoke-static {v2, v1}, Lorg/concentus/Inlines;->MAX32(FF)F

    move-result v2

    iput v2, v0, Lorg/concentus/TonalityAnalysisState;->Etracker:F

    .line 356
    iget v2, v0, Lorg/concentus/TonalityAnalysisState;->lowECount:F

    sub-float v3, v16, v23

    mul-float/2addr v2, v3

    iput v2, v0, Lorg/concentus/TonalityAnalysisState;->lowECount:F

    .line 357
    iget v2, v0, Lorg/concentus/TonalityAnalysisState;->Etracker:F

    const/high16 v3, 0x41f00000    # 30.0f

    sub-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_10

    .line 358
    iget v1, v0, Lorg/concentus/TonalityAnalysisState;->lowECount:F

    add-float v1, v1, v23

    iput v1, v0, Lorg/concentus/TonalityAnalysisState;->lowECount:F

    :cond_10
    const/4 v1, 0x0

    :goto_a
    const/16 v2, 0x8

    if-ge v1, v2, :cond_12

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_b
    const/16 v4, 0x10

    if-ge v2, v4, :cond_11

    .line 364
    sget-object v4, Lorg/concentus/OpusTables;->dct_table:[F

    mul-int/lit8 v5, v1, 0x10

    add-int/2addr v5, v2

    aget v4, v4, v5

    aget v5, v20, v2

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 366
    :cond_11
    aput v3, v22, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_12
    const/high16 v1, 0x41900000    # 18.0f

    div-float/2addr v7, v1

    div-float v2, v26, v1

    .line 371
    iget v3, v0, Lorg/concentus/TonalityAnalysisState;->count:I

    const/16 v4, 0xa

    if-ge v3, v4, :cond_13

    const/high16 v2, 0x3f000000    # 0.5f

    :cond_13
    div-float v4, v24, v1

    sub-float v1, v16, v4

    mul-float/2addr v1, v2

    add-float/2addr v1, v4

    move-object/from16 v2, v31

    .line 375
    iput v1, v2, Lorg/concentus/AnalysisInfo;->activity:F

    const/high16 v1, 0x41100000    # 9.0f

    div-float v8, v33, v1

    .line 377
    iget v1, v0, Lorg/concentus/TonalityAnalysisState;->prev_tonality:F

    const v3, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v3

    invoke-static {v8, v1}, Lorg/concentus/Inlines;->MAX16(FF)F

    move-result v1

    .line 378
    iput v1, v0, Lorg/concentus/TonalityAnalysisState;->prev_tonality:F

    const/high16 v3, 0x42800000    # 64.0f

    div-float v13, p5, v3

    .line 381
    iput v13, v2, Lorg/concentus/AnalysisInfo;->tonality_slope:F

    .line 383
    iget v3, v0, Lorg/concentus/TonalityAnalysisState;->E_count:I

    const/4 v5, 0x1

    add-int/2addr v3, v5

    const/16 v8, 0x8

    rem-int/2addr v3, v8

    iput v3, v0, Lorg/concentus/TonalityAnalysisState;->E_count:I

    .line 384
    iget v3, v0, Lorg/concentus/TonalityAnalysisState;->count:I

    add-int/2addr v3, v5

    iput v3, v0, Lorg/concentus/TonalityAnalysisState;->count:I

    .line 385
    iput v1, v2, Lorg/concentus/AnalysisInfo;->tonality:F

    const/4 v1, 0x0

    :goto_c
    const/4 v3, 0x4

    if-ge v1, v3, :cond_14

    .line 388
    aget v3, v22, v1

    iget-object v5, v0, Lorg/concentus/TonalityAnalysisState;->mem:[F

    add-int/lit8 v8, v1, 0x18

    aget v5, v5, v8

    add-float/2addr v3, v5

    const v5, -0x42041dd2    # -0.12299f

    mul-float/2addr v3, v5

    iget-object v5, v0, Lorg/concentus/TonalityAnalysisState;->mem:[F

    aget v5, v5, v1

    iget-object v8, v0, Lorg/concentus/TonalityAnalysisState;->mem:[F

    add-int/lit8 v9, v1, 0x10

    aget v8, v8, v9

    add-float/2addr v5, v8

    const v8, 0x3efbe0df    # 0.49195f

    mul-float/2addr v5, v8

    add-float/2addr v3, v5

    iget-object v5, v0, Lorg/concentus/TonalityAnalysisState;->mem:[F

    add-int/lit8 v8, v1, 0x8

    aget v5, v5, v8

    const v8, 0x3f326a01    # 0.69693f

    mul-float/2addr v5, v8

    add-float/2addr v3, v5

    iget-object v5, v0, Lorg/concentus/TonalityAnalysisState;->cmean:[F

    aget v5, v5, v1

    const v8, 0x3fb7aace    # 1.4349f

    mul-float/2addr v5, v8

    sub-float/2addr v3, v5

    aput v3, v21, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_14
    const/4 v1, 0x0

    :goto_d
    if-ge v1, v3, :cond_15

    .line 392
    iget-object v3, v0, Lorg/concentus/TonalityAnalysisState;->cmean:[F

    sub-float v5, v16, v30

    iget-object v8, v0, Lorg/concentus/TonalityAnalysisState;->cmean:[F

    aget v8, v8, v1

    mul-float/2addr v5, v8

    aget v8, v22, v1

    mul-float v13, v30, v8

    add-float/2addr v5, v13

    aput v5, v3, v1

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x4

    goto :goto_d

    :cond_15
    const/4 v1, 0x0

    :goto_e
    if-ge v1, v3, :cond_16

    add-int/lit8 v5, v1, 0x4

    .line 396
    aget v8, v22, v1

    iget-object v9, v0, Lorg/concentus/TonalityAnalysisState;->mem:[F

    add-int/lit8 v10, v1, 0x18

    aget v9, v9, v10

    sub-float/2addr v8, v9

    const v9, 0x3f21e8e6    # 0.63246f

    mul-float/2addr v8, v9

    iget-object v9, v0, Lorg/concentus/TonalityAnalysisState;->mem:[F

    aget v9, v9, v1

    iget-object v10, v0, Lorg/concentus/TonalityAnalysisState;->mem:[F

    add-int/lit8 v11, v1, 0x10

    aget v10, v10, v11

    sub-float/2addr v9, v10

    const v10, 0x3ea1e8e6    # 0.31623f

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    aput v8, v21, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_16
    const/4 v1, 0x0

    :goto_f
    const/4 v3, 0x3

    if-ge v1, v3, :cond_17

    add-int/lit8 v3, v1, 0x8

    .line 399
    aget v5, v22, v1

    iget-object v8, v0, Lorg/concentus/TonalityAnalysisState;->mem:[F

    add-int/lit8 v9, v1, 0x18

    aget v8, v8, v9

    add-float/2addr v5, v8

    const v8, 0x3f08d64d

    mul-float/2addr v5, v8

    iget-object v8, v0, Lorg/concentus/TonalityAnalysisState;->mem:[F

    aget v8, v8, v1

    iget-object v9, v0, Lorg/concentus/TonalityAnalysisState;->mem:[F

    add-int/lit8 v10, v1, 0x10

    aget v9, v9, v10

    add-float/2addr v8, v9

    const v9, 0x3e88d64d

    mul-float/2addr v8, v9

    sub-float/2addr v5, v8

    iget-object v8, v0, Lorg/concentus/TonalityAnalysisState;->mem:[F

    aget v8, v8, v3

    const v9, 0x3f08d64d

    mul-float/2addr v8, v9

    sub-float/2addr v5, v8

    aput v5, v21, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 402
    :cond_17
    iget v1, v0, Lorg/concentus/TonalityAnalysisState;->count:I

    const/4 v3, 0x5

    if-le v1, v3, :cond_18

    const/4 v1, 0x0

    :goto_10
    const/16 v3, 0x9

    if-ge v1, v3, :cond_18

    .line 404
    iget-object v3, v0, Lorg/concentus/TonalityAnalysisState;->std:[F

    sub-float v5, v16, v30

    iget-object v8, v0, Lorg/concentus/TonalityAnalysisState;->std:[F

    aget v8, v8, v1

    mul-float/2addr v5, v8

    aget v8, v21, v1

    mul-float v13, v30, v8

    mul-float/2addr v13, v8

    add-float/2addr v5, v13

    aput v5, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_18
    const/4 v1, 0x0

    const/16 v3, 0x8

    :goto_11
    if-ge v1, v3, :cond_19

    .line 409
    iget-object v5, v0, Lorg/concentus/TonalityAnalysisState;->mem:[F

    add-int/lit8 v8, v1, 0x18

    iget-object v9, v0, Lorg/concentus/TonalityAnalysisState;->mem:[F

    add-int/lit8 v10, v1, 0x10

    aget v9, v9, v10

    aput v9, v5, v8

    .line 410
    iget-object v5, v0, Lorg/concentus/TonalityAnalysisState;->mem:[F

    iget-object v8, v0, Lorg/concentus/TonalityAnalysisState;->mem:[F

    add-int/lit8 v9, v1, 0x8

    aget v8, v8, v9

    aput v8, v5, v10

    .line 411
    iget-object v5, v0, Lorg/concentus/TonalityAnalysisState;->mem:[F

    iget-object v8, v0, Lorg/concentus/TonalityAnalysisState;->mem:[F

    aget v8, v8, v1

    aput v8, v5, v9

    .line 412
    iget-object v5, v0, Lorg/concentus/TonalityAnalysisState;->mem:[F

    aget v8, v22, v1

    aput v8, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_19
    const/4 v1, 0x0

    const/16 v3, 0x9

    :goto_12
    if-ge v1, v3, :cond_1a

    add-int/lit8 v5, v1, 0xb

    .line 415
    iget-object v8, v0, Lorg/concentus/TonalityAnalysisState;->std:[F

    aget v8, v8, v1

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v8, v8

    aput v8, v21, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 417
    :cond_1a
    iget v1, v2, Lorg/concentus/AnalysisInfo;->tonality:F

    const/16 v3, 0x14

    aput v1, v21, v3

    const/16 v1, 0x15

    .line 418
    iget v3, v2, Lorg/concentus/AnalysisInfo;->activity:F

    aput v3, v21, v1

    const/16 v1, 0x16

    .line 419
    aput v7, v21, v1

    const/16 v1, 0x17

    .line 420
    iget v3, v2, Lorg/concentus/AnalysisInfo;->tonality_slope:F

    aput v3, v21, v1

    .line 421
    iget v1, v0, Lorg/concentus/TonalityAnalysisState;->lowECount:F

    const/16 v3, 0x18

    aput v1, v21, v3

    .line 423
    iget-boolean v1, v2, Lorg/concentus/AnalysisInfo;->enabled:Z

    if-eqz v1, :cond_27

    .line 424
    sget-object v1, Lorg/concentus/OpusTables;->net:Lorg/concentus/MLPState;

    move-object/from16 v3, v21

    move-object/from16 v5, v29

    invoke-static {v1, v3, v5}, Lorg/concentus/MultiLayerPerceptron;->mlp_process(Lorg/concentus/MLPState;[F[F)V

    const/4 v1, 0x0

    .line 425
    aget v3, v5, v1

    add-float v3, v3, v16

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v3, v7

    aput v3, v5, v1

    const v1, 0x3f9ae148    # 1.21f

    mul-float/2addr v1, v3

    mul-float/2addr v1, v3

    const v7, 0x3c23d70a    # 0.01f

    add-float/2addr v1, v7

    float-to-double v7, v3

    const-wide/high16 v9, 0x4024000000000000L    # 10.0

    .line 427
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-float v3, v7

    const v7, 0x3e6b851f    # 0.23f

    mul-float/2addr v3, v7

    sub-float/2addr v1, v3

    const/4 v3, 0x0

    aput v1, v5, v3

    const/4 v7, 0x1

    .line 429
    aget v8, v5, v7

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float/2addr v8, v9

    add-float/2addr v8, v9

    aput v8, v5, v7

    mul-float/2addr v1, v8

    sub-float v7, v16, v8

    mul-float/2addr v7, v9

    add-float/2addr v1, v7

    .line 431
    aput v1, v5, v3

    const v3, 0x3851b717    # 5.0E-5f

    mul-float/2addr v8, v3

    const v3, 0x3f733333    # 0.95f

    .line 457
    invoke-static {v3, v1}, Lorg/concentus/Inlines;->MIN16(FF)F

    move-result v1

    const v3, 0x3d4ccccd    # 0.05f

    invoke-static {v3, v1}, Lorg/concentus/Inlines;->MAX16(FF)F

    move-result v1

    const v7, 0x3f733333    # 0.95f

    .line 458
    iget v9, v0, Lorg/concentus/TonalityAnalysisState;->music_prob:F

    invoke-static {v7, v9}, Lorg/concentus/Inlines;->MIN16(FF)F

    move-result v7

    invoke-static {v3, v7}, Lorg/concentus/Inlines;->MAX16(FF)F

    move-result v7

    sub-float v9, v1, v7

    .line 459
    invoke-static {v9}, Lorg/concentus/Inlines;->ABS16(F)F

    move-result v9

    mul-float/2addr v9, v3

    sub-float v3, v16, v7

    mul-float/2addr v3, v1

    sub-float v1, v16, v1

    mul-float/2addr v7, v1

    add-float/2addr v3, v7

    div-float/2addr v9, v3

    const v1, 0x3c23d70a    # 0.01f

    add-float/2addr v9, v1

    .line 464
    iget v1, v0, Lorg/concentus/TonalityAnalysisState;->music_prob:F

    sub-float v1, v16, v1

    sub-float v3, v16, v8

    mul-float/2addr v1, v3

    iget v7, v0, Lorg/concentus/TonalityAnalysisState;->music_prob:F

    mul-float/2addr v7, v8

    add-float/2addr v1, v7

    .line 465
    iget v7, v0, Lorg/concentus/TonalityAnalysisState;->music_prob:F

    mul-float/2addr v7, v3

    iget v10, v0, Lorg/concentus/TonalityAnalysisState;->music_prob:F

    sub-float v10, v16, v10

    mul-float/2addr v10, v8

    add-float/2addr v7, v10

    const/4 v10, 0x0

    .line 468
    aget v11, v5, v10

    sub-float v11, v16, v11

    float-to-double v11, v11

    float-to-double v13, v9

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    double-to-float v9, v11

    mul-float/2addr v1, v9

    .line 469
    aget v9, v5, v10

    float-to-double v11, v9

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    double-to-float v9, v11

    mul-float/2addr v7, v9

    add-float/2addr v1, v7

    div-float/2addr v7, v1

    .line 471
    iput v7, v0, Lorg/concentus/TonalityAnalysisState;->music_prob:F

    .line 472
    iget v1, v0, Lorg/concentus/TonalityAnalysisState;->music_prob:F

    iput v1, v2, Lorg/concentus/AnalysisInfo;->music_prob:F

    .line 477
    aget v1, v5, v10

    sub-float v1, v16, v1

    float-to-double v11, v1

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    double-to-float v1, v11

    .line 478
    aget v7, v5, v10

    float-to-double v11, v7

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    double-to-float v7, v11

    .line 479
    iget v9, v0, Lorg/concentus/TonalityAnalysisState;->count:I

    const/4 v11, 0x1

    if-ne v9, v11, :cond_1b

    .line 480
    iget-object v9, v0, Lorg/concentus/TonalityAnalysisState;->pspeech:[F

    const/high16 v12, 0x3f000000    # 0.5f

    aput v12, v9, v10

    .line 481
    iget-object v9, v0, Lorg/concentus/TonalityAnalysisState;->pmusic:[F

    aput v12, v9, v10

    .line 485
    :cond_1b
    iget-object v9, v0, Lorg/concentus/TonalityAnalysisState;->pspeech:[F

    aget v9, v9, v10

    iget-object v12, v0, Lorg/concentus/TonalityAnalysisState;->pspeech:[F

    aget v12, v12, v11

    add-float/2addr v9, v12

    .line 486
    iget-object v12, v0, Lorg/concentus/TonalityAnalysisState;->pmusic:[F

    aget v12, v12, v10

    iget-object v13, v0, Lorg/concentus/TonalityAnalysisState;->pmusic:[F

    aget v13, v13, v11

    add-float/2addr v12, v13

    .line 488
    iget-object v11, v0, Lorg/concentus/TonalityAnalysisState;->pspeech:[F

    mul-float v13, v9, v3

    mul-float/2addr v13, v1

    aput v13, v11, v10

    .line 489
    iget-object v11, v0, Lorg/concentus/TonalityAnalysisState;->pmusic:[F

    mul-float/2addr v3, v12

    mul-float/2addr v3, v7

    aput v3, v11, v10

    const/4 v3, 0x1

    :goto_13
    const/16 v10, 0xc7

    if-ge v3, v10, :cond_1c

    .line 492
    iget-object v10, v0, Lorg/concentus/TonalityAnalysisState;->pspeech:[F

    iget-object v11, v0, Lorg/concentus/TonalityAnalysisState;->pspeech:[F

    add-int/lit8 v13, v3, 0x1

    aget v11, v11, v13

    mul-float/2addr v11, v1

    aput v11, v10, v3

    .line 493
    iget-object v10, v0, Lorg/concentus/TonalityAnalysisState;->pmusic:[F

    iget-object v11, v0, Lorg/concentus/TonalityAnalysisState;->pmusic:[F

    aget v11, v11, v13

    mul-float/2addr v11, v7

    aput v11, v10, v3

    move v3, v13

    goto :goto_13

    .line 496
    :cond_1c
    iget-object v3, v0, Lorg/concentus/TonalityAnalysisState;->pspeech:[F

    mul-float/2addr v12, v8

    mul-float/2addr v12, v1

    aput v12, v3, v10

    .line 498
    iget-object v1, v0, Lorg/concentus/TonalityAnalysisState;->pmusic:[F

    mul-float/2addr v9, v8

    mul-float/2addr v9, v7

    aput v9, v1, v10

    const v1, 0x1e3ce508    # 1.0E-20f

    move v3, v1

    const/4 v1, 0x0

    :goto_14
    const/16 v7, 0xc8

    if-ge v1, v7, :cond_1d

    .line 502
    iget-object v7, v0, Lorg/concentus/TonalityAnalysisState;->pspeech:[F

    aget v7, v7, v1

    iget-object v8, v0, Lorg/concentus/TonalityAnalysisState;->pmusic:[F

    aget v8, v8, v1

    add-float/2addr v7, v8

    add-float/2addr v3, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_1d
    div-float v1, v16, v3

    const/4 v3, 0x0

    :goto_15
    const/16 v7, 0xc8

    if-ge v3, v7, :cond_1e

    .line 506
    iget-object v7, v0, Lorg/concentus/TonalityAnalysisState;->pspeech:[F

    aget v8, v7, v3

    mul-float/2addr v8, v1

    aput v8, v7, v3

    .line 507
    iget-object v7, v0, Lorg/concentus/TonalityAnalysisState;->pmusic:[F

    aget v8, v7, v3

    mul-float/2addr v8, v1

    aput v8, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 509
    :cond_1e
    iget-object v1, v0, Lorg/concentus/TonalityAnalysisState;->pmusic:[F

    const/4 v3, 0x0

    aget v1, v1, v3

    const/4 v1, 0x1

    const/16 v3, 0xc8

    :goto_16
    if-ge v1, v3, :cond_1f

    .line 511
    iget-object v7, v0, Lorg/concentus/TonalityAnalysisState;->pspeech:[F

    aget v7, v7, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_1f
    const/4 v1, 0x1

    .line 515
    aget v3, v5, v1

    float-to-double v7, v3

    const-wide/high16 v9, 0x3fe8000000000000L    # 0.75

    cmpl-double v3, v7, v9

    if-lez v3, :cond_21

    .line 516
    iget v3, v0, Lorg/concentus/TonalityAnalysisState;->music_prob:F

    float-to-double v7, v3

    const-wide v9, 0x3feccccccccccccdL    # 0.9

    cmpl-double v3, v7, v9

    if-lez v3, :cond_20

    .line 518
    iget v3, v0, Lorg/concentus/TonalityAnalysisState;->music_confidence_count:I

    add-int/2addr v3, v1

    iput v3, v0, Lorg/concentus/TonalityAnalysisState;->music_confidence_count:I

    int-to-float v1, v3

    div-float v1, v16, v1

    .line 519
    iget v3, v0, Lorg/concentus/TonalityAnalysisState;->music_confidence_count:I

    const/16 v7, 0x1f4

    invoke-static {v3, v7}, Lorg/concentus/Inlines;->IMIN(II)I

    move-result v3

    iput v3, v0, Lorg/concentus/TonalityAnalysisState;->music_confidence_count:I

    .line 520
    iget v3, v0, Lorg/concentus/TonalityAnalysisState;->music_confidence:F

    const/4 v7, 0x0

    aget v8, v5, v7

    iget v7, v0, Lorg/concentus/TonalityAnalysisState;->music_confidence:F

    sub-float/2addr v8, v7

    const v7, -0x41b33333    # -0.2f

    invoke-static {v7, v8}, Lorg/concentus/Inlines;->MAX16(FF)F

    move-result v7

    mul-float/2addr v1, v7

    add-float/2addr v3, v1

    iput v3, v0, Lorg/concentus/TonalityAnalysisState;->music_confidence:F

    .line 522
    :cond_20
    iget v1, v0, Lorg/concentus/TonalityAnalysisState;->music_prob:F

    float-to-double v7, v1

    const-wide v9, 0x3fb999999999999aL    # 0.1

    cmpg-double v1, v7, v9

    if-gez v1, :cond_23

    .line 524
    iget v1, v0, Lorg/concentus/TonalityAnalysisState;->speech_confidence_count:I

    const/4 v3, 0x1

    add-int/2addr v1, v3

    iput v1, v0, Lorg/concentus/TonalityAnalysisState;->speech_confidence_count:I

    int-to-float v1, v1

    div-float v16, v16, v1

    .line 525
    iget v1, v0, Lorg/concentus/TonalityAnalysisState;->speech_confidence_count:I

    const/16 v3, 0x1f4

    invoke-static {v1, v3}, Lorg/concentus/Inlines;->IMIN(II)I

    move-result v1

    iput v1, v0, Lorg/concentus/TonalityAnalysisState;->speech_confidence_count:I

    .line 526
    iget v1, v0, Lorg/concentus/TonalityAnalysisState;->speech_confidence:F

    const/4 v3, 0x0

    aget v5, v5, v3

    iget v3, v0, Lorg/concentus/TonalityAnalysisState;->speech_confidence:F

    sub-float/2addr v5, v3

    const v3, 0x3e4ccccd    # 0.2f

    invoke-static {v3, v5}, Lorg/concentus/Inlines;->MIN16(FF)F

    move-result v3

    mul-float v16, v16, v3

    add-float v1, v1, v16

    iput v1, v0, Lorg/concentus/TonalityAnalysisState;->speech_confidence:F

    goto :goto_17

    .line 529
    :cond_21
    iget v1, v0, Lorg/concentus/TonalityAnalysisState;->music_confidence_count:I

    if-nez v1, :cond_22

    const v1, 0x3f666666    # 0.9f

    .line 530
    iput v1, v0, Lorg/concentus/TonalityAnalysisState;->music_confidence:F

    .line 532
    :cond_22
    iget v1, v0, Lorg/concentus/TonalityAnalysisState;->speech_confidence_count:I

    if-nez v1, :cond_23

    const v1, 0x3dcccccd    # 0.1f

    .line 533
    iput v1, v0, Lorg/concentus/TonalityAnalysisState;->speech_confidence:F

    .line 537
    :cond_23
    :goto_17
    iget v1, v0, Lorg/concentus/TonalityAnalysisState;->last_music:I

    iget v3, v0, Lorg/concentus/TonalityAnalysisState;->music_prob:F

    const/high16 v5, 0x3f000000    # 0.5f

    cmpl-float v3, v3, v5

    if-lez v3, :cond_24

    const/4 v3, 0x1

    goto :goto_18

    :cond_24
    const/4 v3, 0x0

    :goto_18
    if-eq v1, v3, :cond_25

    const/4 v1, 0x0

    .line 538
    iput v1, v0, Lorg/concentus/TonalityAnalysisState;->last_transition:I

    goto :goto_19

    :cond_25
    const/4 v1, 0x0

    .line 540
    :goto_19
    iget v3, v0, Lorg/concentus/TonalityAnalysisState;->music_prob:F

    cmpl-float v3, v3, v5

    if-lez v3, :cond_26

    const/4 v14, 0x1

    goto :goto_1a

    :cond_26
    move v14, v1

    :goto_1a
    iput v14, v0, Lorg/concentus/TonalityAnalysisState;->last_music:I

    goto :goto_1b

    :cond_27
    const/4 v0, 0x0

    .line 542
    iput v0, v2, Lorg/concentus/AnalysisInfo;->music_prob:F

    .line 545
    :goto_1b
    iput v6, v2, Lorg/concentus/AnalysisInfo;->bandwidth:I

    .line 546
    iput v4, v2, Lorg/concentus/AnalysisInfo;->noisiness:F

    const/4 v0, 0x1

    .line 547
    iput v0, v2, Lorg/concentus/AnalysisInfo;->valid:I

    return-void
.end method

.method static tonality_analysis_init(Lorg/concentus/TonalityAnalysisState;)V
    .locals 0

    .line 74
    invoke-virtual {p0}, Lorg/concentus/TonalityAnalysisState;->Reset()V

    return-void
.end method

.method static tonality_get_info(Lorg/concentus/TonalityAnalysisState;Lorg/concentus/AnalysisInfo;I)V
    .locals 5

    .line 83
    iget v0, p0, Lorg/concentus/TonalityAnalysisState;->read_pos:I

    .line 84
    iget v1, p0, Lorg/concentus/TonalityAnalysisState;->write_pos:I

    iget v2, p0, Lorg/concentus/TonalityAnalysisState;->read_pos:I

    sub-int/2addr v1, v2

    if-gez v1, :cond_0

    add-int/lit16 v1, v1, 0xc8

    :cond_0
    const/16 v2, 0x1e0

    const/4 v3, 0x0

    const/16 v4, 0xc8

    if-le p2, v2, :cond_1

    .line 89
    iget v2, p0, Lorg/concentus/TonalityAnalysisState;->write_pos:I

    if-eq v0, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    if-ne v0, v4, :cond_1

    move v0, v3

    .line 95
    :cond_1
    iget v2, p0, Lorg/concentus/TonalityAnalysisState;->write_pos:I

    if-ne v0, v2, :cond_2

    add-int/lit8 v0, v0, -0x1

    :cond_2
    if-gez v0, :cond_3

    const/16 v0, 0xc7

    .line 102
    :cond_3
    iget-object v2, p0, Lorg/concentus/TonalityAnalysisState;->info:[Lorg/concentus/AnalysisInfo;

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lorg/concentus/AnalysisInfo;->Assign(Lorg/concentus/AnalysisInfo;)V

    .line 103
    iget v0, p0, Lorg/concentus/TonalityAnalysisState;->read_subframe:I

    div-int/lit8 p2, p2, 0x78

    add-int/2addr v0, p2

    iput v0, p0, Lorg/concentus/TonalityAnalysisState;->read_subframe:I

    .line 104
    :goto_0
    iget p2, p0, Lorg/concentus/TonalityAnalysisState;->read_subframe:I

    const/4 v0, 0x4

    if-lt p2, v0, :cond_4

    .line 105
    iget p2, p0, Lorg/concentus/TonalityAnalysisState;->read_subframe:I

    sub-int/2addr p2, v0

    iput p2, p0, Lorg/concentus/TonalityAnalysisState;->read_subframe:I

    .line 106
    iget p2, p0, Lorg/concentus/TonalityAnalysisState;->read_pos:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lorg/concentus/TonalityAnalysisState;->read_pos:I

    goto :goto_0

    .line 108
    :cond_4
    iget p2, p0, Lorg/concentus/TonalityAnalysisState;->read_pos:I

    if-lt p2, v4, :cond_5

    .line 109
    iget p2, p0, Lorg/concentus/TonalityAnalysisState;->read_pos:I

    sub-int/2addr p2, v4

    iput p2, p0, Lorg/concentus/TonalityAnalysisState;->read_pos:I

    :cond_5
    add-int/lit8 v1, v1, -0xa

    .line 114
    invoke-static {v1, v3}, Lorg/concentus/Inlines;->IMAX(II)I

    move-result p2

    const/4 v0, 0x0

    :goto_1
    rsub-int v1, p2, 0xc8

    if-ge v3, v1, :cond_6

    .line 120
    iget-object v1, p0, Lorg/concentus/TonalityAnalysisState;->pmusic:[F

    aget v1, v1, v3

    add-float/2addr v0, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    if-ge v3, v4, :cond_7

    .line 123
    iget-object p2, p0, Lorg/concentus/TonalityAnalysisState;->pspeech:[F

    aget p2, p2, v3

    add-float/2addr v0, p2

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 125
    :cond_7
    iget p2, p0, Lorg/concentus/TonalityAnalysisState;->music_confidence:F

    mul-float/2addr p2, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    iget p0, p0, Lorg/concentus/TonalityAnalysisState;->speech_confidence:F

    mul-float/2addr v1, p0

    add-float/2addr p2, v1

    .line 128
    iput p2, p1, Lorg/concentus/AnalysisInfo;->music_prob:F

    return-void
.end method
