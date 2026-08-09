.class Lorg/concentus/Filters;
.super Ljava/lang/Object;
.source "Filters.java"


# static fields
.field private static final A_LIMIT:I = 0xffef9e

.field private static final A_fb1_20:S = 0x2a24s

.field private static final A_fb1_21:S = -0x5ee2s

.field private static final QA:I = 0x18


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static LPC_inverse_pred_gain_QA([[II)I
    .locals 12

    and-int/lit8 v0, p1, 0x1

    .line 496
    aget-object v0, p0, v0

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    const/high16 v2, 0x40000000    # 2.0f

    move v3, v2

    :goto_0
    const/4 v4, 0x2

    const/4 v5, 0x7

    const v6, -0xffef9e

    const v7, 0xffef9e

    const/4 v8, 0x0

    if-lez p1, :cond_7

    .line 501
    aget v9, v0, p1

    if-gt v9, v7, :cond_6

    if-ge v9, v6, :cond_0

    goto/16 :goto_6

    .line 506
    :cond_0
    invoke-static {v9, v5}, Lorg/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v5

    rsub-int/lit8 v5, v5, 0x0

    .line 509
    invoke-static {v5, v5}, Lorg/concentus/Inlines;->silk_SMMUL(II)I

    move-result v6

    sub-int v6, v2, v6

    const v7, 0x8000

    if-le v6, v7, :cond_1

    move v7, v1

    goto :goto_1

    :cond_1
    move v7, v8

    .line 510
    :goto_1
    invoke-static {v7}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    if-gt v6, v2, :cond_2

    move v7, v1

    goto :goto_2

    :cond_2
    move v7, v8

    .line 512
    :goto_2
    invoke-static {v7}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    .line 515
    invoke-static {v6}, Lorg/concentus/Inlines;->silk_abs(I)I

    move-result v7

    invoke-static {v7}, Lorg/concentus/Inlines;->silk_CLZ32(I)I

    move-result v7

    rsub-int/lit8 v9, v7, 0x20

    rsub-int/lit8 v7, v7, 0x3e

    .line 516
    invoke-static {v6, v7}, Lorg/concentus/Inlines;->silk_INVERSE32_varQ(II)I

    move-result v7

    .line 520
    invoke-static {v3, v6}, Lorg/concentus/Inlines;->silk_SMMUL(II)I

    move-result v3

    invoke-static {v3, v4}, Lorg/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v3

    if-ltz v3, :cond_3

    move v4, v1

    goto :goto_3

    :cond_3
    move v4, v8

    .line 521
    :goto_3
    invoke-static {v4}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    if-gt v3, v2, :cond_4

    move v4, v1

    goto :goto_4

    :cond_4
    move v4, v8

    .line 522
    :goto_4
    invoke-static {v4}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    and-int/lit8 v4, p1, 0x1

    .line 526
    aget-object v4, p0, v4

    :goto_5
    if-ge v8, p1, :cond_5

    .line 530
    aget v6, v0, v8

    sub-int v10, p1, v8

    sub-int/2addr v10, v1

    aget v10, v0, v10

    const/16 v11, 0x1f

    invoke-static {v10, v5, v11}, Lorg/concentus/Inlines;->MUL32_FRAC_Q(III)I

    move-result v10

    sub-int/2addr v6, v10

    .line 531
    invoke-static {v6, v7, v9}, Lorg/concentus/Inlines;->MUL32_FRAC_Q(III)I

    move-result v6

    aput v6, v4, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_5
    add-int/lit8 p1, p1, -0x1

    move-object v0, v4

    goto :goto_0

    :cond_6
    :goto_6
    return v8

    .line 536
    :cond_7
    aget p0, v0, v8

    if-gt p0, v7, :cond_b

    if-ge p0, v6, :cond_8

    goto :goto_9

    .line 541
    :cond_8
    invoke-static {p0, v5}, Lorg/concentus/Inlines;->silk_LSHIFT(II)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x0

    .line 544
    invoke-static {p0, p0}, Lorg/concentus/Inlines;->silk_SMMUL(II)I

    move-result p0

    sub-int p0, v2, p0

    .line 548
    invoke-static {v3, p0}, Lorg/concentus/Inlines;->silk_SMMUL(II)I

    move-result p0

    invoke-static {p0, v4}, Lorg/concentus/Inlines;->silk_LSHIFT(II)I

    move-result p0

    if-ltz p0, :cond_9

    move p1, v1

    goto :goto_7

    :cond_9
    move p1, v8

    .line 549
    :goto_7
    invoke-static {p1}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    if-gt p0, v2, :cond_a

    goto :goto_8

    :cond_a
    move v1, v8

    .line 550
    :goto_8
    invoke-static {v1}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    return p0

    :cond_b
    :goto_9
    return v8
.end method

.method static silk_LPC_analysis_filter([SI[SI[SIII)V
    .locals 10

    move/from16 v0, p6

    move/from16 v6, p7

    const/16 v1, 0x10

    .line 459
    new-array v7, v1, [S

    .line 460
    new-array v2, v1, [S

    const/4 v3, 0x6

    const/4 v8, 0x0

    const/4 v4, 0x1

    if-lt v6, v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v8

    .line 462
    :goto_0
    invoke-static {v3}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    and-int/lit8 v3, v6, 0x1

    if-nez v3, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    move v3, v8

    .line 463
    :goto_1
    invoke-static {v3}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    if-gt v6, v0, :cond_2

    move v3, v4

    goto :goto_2

    :cond_2
    move v3, v8

    .line 464
    :goto_2
    invoke-static {v3}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    if-gt v6, v1, :cond_3

    move v1, v4

    goto :goto_3

    :cond_3
    move v1, v8

    .line 466
    :goto_3
    invoke-static {v1}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    move v1, v8

    :goto_4
    if-ge v1, v6, :cond_4

    add-int v3, p5, v1

    .line 468
    aget-short v3, p4, v3

    rsub-int/lit8 v3, v3, 0x0

    int-to-short v3, v3

    aput-short v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    move v1, v8

    :goto_5
    if-ge v1, v6, :cond_5

    add-int v3, p3, v6

    sub-int/2addr v3, v1

    sub-int/2addr v3, v4

    .line 471
    aget-short v3, p2, v3

    aput-short v3, v7, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_5
    add-int v1, p3, v6

    add-int v9, p1, v6

    sub-int v5, v0, v6

    move-object v0, p2

    move-object v3, p0

    move v4, v9

    move/from16 v6, p7

    .line 473
    invoke-static/range {v0 .. v7}, Lorg/concentus/Kernels;->celt_fir([SI[S[SIII[S)V

    move v0, p1

    :goto_6
    if-ge v0, v9, :cond_6

    .line 475
    aput-short v8, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_6
    return-void
.end method

.method static silk_LPC_inverse_pred_gain([SI)I
    .locals 7

    .line 564
    new-array v0, p1, [I

    .line 565
    new-array v1, p1, [I

    filled-new-array {v0, v1}, [[I

    move-result-object v0

    and-int/lit8 v1, p1, 0x1

    .line 569
    aget-object v1, v0, v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, p1, :cond_0

    .line 573
    aget-short v5, p0, v3

    add-int/2addr v4, v5

    const/16 v6, 0xc

    .line 574
    invoke-static {v5, v6}, Lorg/concentus/Inlines;->silk_LSHIFT32(II)I

    move-result v5

    aput v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/16 p0, 0x1000

    if-lt v4, p0, :cond_1

    return v2

    .line 582
    :cond_1
    invoke-static {v0, p1}, Lorg/concentus/Filters;->LPC_inverse_pred_gain_QA([[II)I

    move-result p0

    return p0
.end method

.method static silk_LP_interpolate_filter_taps([I[III)V
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-ge p2, v3, :cond_5

    if-lez p3, :cond_4

    const v3, 0x8000

    if-ge p3, v3, :cond_1

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    .line 391
    sget-object v4, Lorg/concentus/SilkTables;->silk_Transition_LP_B_Q28:[[I

    aget-object v4, v4, p2

    aget v4, v4, v3

    sget-object v5, Lorg/concentus/SilkTables;->silk_Transition_LP_B_Q28:[[I

    add-int/lit8 v6, p2, 0x1

    aget-object v5, v5, v6

    aget v5, v5, v3

    sget-object v6, Lorg/concentus/SilkTables;->silk_Transition_LP_B_Q28:[[I

    aget-object v6, v6, p2

    aget v6, v6, v3

    sub-int/2addr v5, v6

    invoke-static {v4, v5, p3}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v4

    aput v4, p0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v2, v0, :cond_6

    .line 399
    sget-object p0, Lorg/concentus/SilkTables;->silk_Transition_LP_A_Q28:[[I

    aget-object p0, p0, p2

    aget p0, p0, v2

    sget-object v1, Lorg/concentus/SilkTables;->silk_Transition_LP_A_Q28:[[I

    add-int/lit8 v3, p2, 0x1

    aget-object v1, v1, v3

    aget v1, v1, v2

    sget-object v3, Lorg/concentus/SilkTables;->silk_Transition_LP_A_Q28:[[I

    aget-object v3, v3, p2

    aget v3, v3, v2

    sub-int/2addr v1, v3

    invoke-static {p0, v1, p3}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result p0

    aput p0, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/high16 v3, 0x10000

    sub-int/2addr p3, v3

    .line 407
    invoke-static {p3}, Lorg/concentus/Inlines;->silk_SAT16(I)I

    move-result v3

    if-ne p3, v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    move v3, v2

    :goto_2
    invoke-static {v3}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    move v3, v2

    :goto_3
    if-ge v3, v1, :cond_3

    .line 411
    sget-object v4, Lorg/concentus/SilkTables;->silk_Transition_LP_B_Q28:[[I

    add-int/lit8 v5, p2, 0x1

    aget-object v4, v4, v5

    aget v4, v4, v3

    sget-object v6, Lorg/concentus/SilkTables;->silk_Transition_LP_B_Q28:[[I

    aget-object v5, v6, v5

    aget v5, v5, v3

    sget-object v6, Lorg/concentus/SilkTables;->silk_Transition_LP_B_Q28:[[I

    aget-object v6, v6, p2

    aget v6, v6, v3

    sub-int/2addr v5, v6

    invoke-static {v4, v5, p3}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v4

    aput v4, p0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    :goto_4
    if-ge v2, v0, :cond_6

    .line 419
    sget-object p0, Lorg/concentus/SilkTables;->silk_Transition_LP_A_Q28:[[I

    add-int/lit8 v1, p2, 0x1

    aget-object p0, p0, v1

    aget p0, p0, v2

    sget-object v3, Lorg/concentus/SilkTables;->silk_Transition_LP_A_Q28:[[I

    aget-object v1, v3, v1

    aget v1, v1, v2

    sget-object v3, Lorg/concentus/SilkTables;->silk_Transition_LP_A_Q28:[[I

    aget-object v3, v3, p2

    aget v3, v3, v2

    sub-int/2addr v1, v3

    invoke-static {p0, v1, p3}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result p0

    aput p0, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 427
    :cond_4
    sget-object p3, Lorg/concentus/SilkTables;->silk_Transition_LP_B_Q28:[[I

    aget-object p3, p3, p2

    invoke-static {p3, v2, p0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 428
    sget-object p0, Lorg/concentus/SilkTables;->silk_Transition_LP_A_Q28:[[I

    aget-object p0, p0, p2

    invoke-static {p0, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5

    .line 431
    :cond_5
    sget-object p2, Lorg/concentus/SilkTables;->silk_Transition_LP_B_Q28:[[I

    aget-object p2, p2, v3

    invoke-static {p2, v2, p0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 432
    sget-object p0, Lorg/concentus/SilkTables;->silk_Transition_LP_A_Q28:[[I

    aget-object p0, p0, v3

    invoke-static {p0, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    :goto_5
    return-void
.end method

.method static silk_ana_filt_bank_1([SI[I[S[SII)V
    .locals 8

    const/4 v0, 0x1

    .line 321
    invoke-static {p6, v0}, Lorg/concentus/Inlines;->silk_RSHIFT(II)I

    move-result p6

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p6, :cond_0

    mul-int/lit8 v3, v2, 0x2

    add-int/2addr v3, p1

    .line 327
    aget-short v4, p0, v3

    const/16 v5, 0xa

    invoke-static {v4, v5}, Lorg/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v4

    .line 330
    aget v6, p2, v1

    invoke-static {v4, v6}, Lorg/concentus/Inlines;->silk_SUB32(II)I

    move-result v6

    const/16 v7, -0x5ee2

    .line 331
    invoke-static {v6, v6, v7}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v6

    .line 332
    aget v7, p2, v1

    invoke-static {v7, v6}, Lorg/concentus/Inlines;->silk_ADD32(II)I

    move-result v7

    .line 333
    invoke-static {v4, v6}, Lorg/concentus/Inlines;->silk_ADD32(II)I

    move-result v4

    aput v4, p2, v1

    add-int/2addr v3, v0

    .line 336
    aget-short v3, p0, v3

    invoke-static {v3, v5}, Lorg/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v3

    .line 339
    aget v4, p2, v0

    invoke-static {v3, v4}, Lorg/concentus/Inlines;->silk_SUB32(II)I

    move-result v4

    const/16 v5, 0x2a24

    .line 340
    invoke-static {v4, v5}, Lorg/concentus/Inlines;->silk_SMULWB(II)I

    move-result v4

    .line 341
    aget v5, p2, v0

    invoke-static {v5, v4}, Lorg/concentus/Inlines;->silk_ADD32(II)I

    move-result v5

    .line 342
    invoke-static {v3, v4}, Lorg/concentus/Inlines;->silk_ADD32(II)I

    move-result v3

    aput v3, p2, v0

    .line 345
    invoke-static {v5, v7}, Lorg/concentus/Inlines;->silk_ADD32(II)I

    move-result v3

    const/16 v4, 0xb

    invoke-static {v3, v4}, Lorg/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v3

    invoke-static {v3}, Lorg/concentus/Inlines;->silk_SAT16(I)I

    move-result v3

    int-to-short v3, v3

    aput-short v3, p3, v2

    add-int v3, p5, v2

    .line 346
    invoke-static {v5, v7}, Lorg/concentus/Inlines;->silk_SUB32(II)I

    move-result v5

    invoke-static {v5, v4}, Lorg/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v4

    invoke-static {v4}, Lorg/concentus/Inlines;->silk_SAT16(I)I

    move-result v4

    int-to-short v4, v4

    aput-short v4, p4, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static silk_biquad_alt([SI[I[I[II[SIII)V
    .locals 16

    const/4 v0, 0x0

    .line 271
    aget v1, p3, v0

    neg-int v2, v1

    and-int/lit16 v2, v2, 0x3fff

    neg-int v1, v1

    const/16 v3, 0xe

    .line 273
    invoke-static {v1, v3}, Lorg/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v1

    const/4 v4, 0x1

    .line 275
    aget v5, p3, v4

    neg-int v6, v5

    and-int/lit16 v6, v6, 0x3fff

    neg-int v5, v5

    .line 277
    invoke-static {v5, v3}, Lorg/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v5

    move/from16 v7, p8

    move v8, v0

    :goto_0
    if-ge v8, v7, :cond_0

    add-int/lit8 v9, p5, 0x1

    mul-int v10, v8, p9

    add-int v11, p1, v10

    .line 283
    aget-short v11, p0, v11

    .line 284
    aget v12, p4, p5

    aget v13, p2, v0

    invoke-static {v12, v13, v11}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v12

    const/4 v13, 0x2

    invoke-static {v12, v13}, Lorg/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v12

    .line 286
    aget v14, p4, v9

    invoke-static {v12, v2}, Lorg/concentus/Inlines;->silk_SMULWB(II)I

    move-result v15

    invoke-static {v15, v3}, Lorg/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v15

    add-int/2addr v14, v15

    aput v14, p4, p5

    .line 287
    invoke-static {v14, v12, v1}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v14

    aput v14, p4, p5

    .line 288
    aget v15, p2, v4

    invoke-static {v14, v15, v11}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v14

    aput v14, p4, p5

    .line 290
    invoke-static {v12, v6}, Lorg/concentus/Inlines;->silk_SMULWB(II)I

    move-result v14

    invoke-static {v14, v3}, Lorg/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v14

    aput v14, p4, v9

    .line 291
    invoke-static {v14, v12, v5}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v14

    aput v14, p4, v9

    .line 292
    aget v13, p2, v13

    invoke-static {v14, v13, v11}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v11

    aput v11, p4, v9

    add-int v9, p7, v10

    add-int/lit16 v12, v12, 0x3fff

    .line 295
    invoke-static {v12, v3}, Lorg/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v10

    invoke-static {v10}, Lorg/concentus/Inlines;->silk_SAT16(I)I

    move-result v10

    int-to-short v10, v10

    aput-short v10, p6, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static silk_biquad_alt([SI[I[I[I[SIII)V
    .locals 15

    const/4 v0, 0x0

    .line 228
    aget v1, p3, v0

    neg-int v2, v1

    and-int/lit16 v2, v2, 0x3fff

    neg-int v1, v1

    const/16 v3, 0xe

    .line 230
    invoke-static {v1, v3}, Lorg/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v1

    const/4 v4, 0x1

    .line 232
    aget v5, p3, v4

    neg-int v6, v5

    and-int/lit16 v6, v6, 0x3fff

    neg-int v5, v5

    .line 234
    invoke-static {v5, v3}, Lorg/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v5

    move/from16 v7, p7

    move v8, v0

    :goto_0
    if-ge v8, v7, :cond_0

    mul-int v9, v8, p8

    add-int v10, p1, v9

    .line 239
    aget-short v10, p0, v10

    .line 240
    aget v11, p4, v0

    aget v12, p2, v0

    invoke-static {v11, v12, v10}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v11

    const/4 v12, 0x2

    invoke-static {v11, v12}, Lorg/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v11

    .line 242
    aget v13, p4, v4

    invoke-static {v11, v2}, Lorg/concentus/Inlines;->silk_SMULWB(II)I

    move-result v14

    invoke-static {v14, v3}, Lorg/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v14

    add-int/2addr v13, v14

    aput v13, p4, v0

    .line 243
    invoke-static {v13, v11, v1}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v13

    aput v13, p4, v0

    .line 244
    aget v14, p2, v4

    invoke-static {v13, v14, v10}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v13

    aput v13, p4, v0

    .line 246
    invoke-static {v11, v6}, Lorg/concentus/Inlines;->silk_SMULWB(II)I

    move-result v13

    invoke-static {v13, v3}, Lorg/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v13

    aput v13, p4, v4

    .line 247
    invoke-static {v13, v11, v5}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v13

    aput v13, p4, v4

    .line 248
    aget v12, p2, v12

    invoke-static {v13, v12, v10}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v10

    aput v10, p4, v4

    add-int v9, p6, v9

    add-int/lit16 v11, v11, 0x3fff

    .line 251
    invoke-static {v11, v3}, Lorg/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v10

    invoke-static {v10}, Lorg/concentus/Inlines;->silk_SAT16(I)I

    move-result v10

    int-to-short v10, v10

    aput-short v10, p5, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static silk_bwexpander_32([III)V
    .locals 4

    const/high16 v0, 0x10000

    sub-int v0, p2, v0

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, p1, -0x1

    if-ge v1, v2, :cond_0

    .line 361
    aget v2, p0, v1

    invoke-static {p2, v2}, Lorg/concentus/Inlines;->silk_SMULWW(II)I

    move-result v2

    aput v2, p0, v1

    .line 362
    invoke-static {p2, v0}, Lorg/concentus/Inlines;->silk_MUL(II)I

    move-result v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Lorg/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v2

    add-int/2addr p2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 365
    :cond_0
    aget p1, p0, v2

    invoke-static {p2, p1}, Lorg/concentus/Inlines;->silk_SMULWW(II)I

    move-result p1

    aput p1, p0, v2

    return-void
.end method

.method static silk_prefilt(Lorg/concentus/SilkPrefilterState;[I[IIIIIII)V
    .locals 15

    move-object v0, p0

    move/from16 v1, p4

    move/from16 v2, p6

    .line 168
    iget-object v3, v0, Lorg/concentus/SilkPrefilterState;->sLTP_shp:[S

    .line 169
    iget v4, v0, Lorg/concentus/SilkPrefilterState;->sLTP_shp_buf_idx:I

    .line 170
    iget v5, v0, Lorg/concentus/SilkPrefilterState;->sLF_AR_shp_Q12:I

    .line 171
    iget v6, v0, Lorg/concentus/SilkPrefilterState;->sLF_MA_shp_Q12:I

    const/4 v7, 0x0

    move/from16 v8, p8

    move v9, v7

    :goto_0
    if-ge v9, v8, :cond_1

    if-lez p7, :cond_0

    const/4 v10, 0x1

    .line 176
    invoke-static {v10}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    add-int v10, p7, v4

    add-int/lit8 v11, v10, -0x1

    add-int/lit8 v12, v10, -0x2

    and-int/lit16 v12, v12, 0x1ff

    .line 178
    aget-short v12, v3, v12

    invoke-static {v12, v1}, Lorg/concentus/Inlines;->silk_SMULBB(II)I

    move-result v12

    and-int/lit16 v11, v11, 0x1ff

    .line 179
    aget-short v11, v3, v11

    invoke-static {v12, v11, v1}, Lorg/concentus/Inlines;->silk_SMLABT(III)I

    move-result v11

    and-int/lit16 v10, v10, 0x1ff

    .line 180
    aget-short v10, v3, v10

    invoke-static {v11, v10, v1}, Lorg/concentus/Inlines;->silk_SMLABB(III)I

    move-result v10

    move/from16 v11, p5

    goto :goto_1

    :cond_0
    move/from16 v11, p5

    move v10, v7

    .line 185
    :goto_1
    invoke-static {v5, v11}, Lorg/concentus/Inlines;->silk_SMULWB(II)I

    move-result v12

    .line 186
    invoke-static {v5, v2}, Lorg/concentus/Inlines;->silk_SMULWT(II)I

    move-result v5

    invoke-static {v5, v6, v2}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v5

    .line 188
    aget v6, p1, v9

    const/4 v13, 0x2

    invoke-static {v12, v13}, Lorg/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v12

    invoke-static {v6, v12}, Lorg/concentus/Inlines;->silk_SUB32(II)I

    move-result v6

    .line 189
    invoke-static {v5, v13}, Lorg/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v5

    invoke-static {v6, v5}, Lorg/concentus/Inlines;->silk_SUB32(II)I

    move-result v5

    add-int/lit8 v4, v4, -0x1

    and-int/lit16 v4, v4, 0x1ff

    const/16 v12, 0xc

    .line 192
    invoke-static {v5, v12}, Lorg/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v12

    invoke-static {v12}, Lorg/concentus/Inlines;->silk_SAT16(I)I

    move-result v12

    int-to-short v12, v12

    aput-short v12, v3, v4

    add-int v12, p3, v9

    .line 194
    invoke-static {v5, v10}, Lorg/concentus/Inlines;->silk_SUB32(II)I

    move-result v10

    const/16 v13, 0x9

    invoke-static {v10, v13}, Lorg/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v10

    aput v10, p2, v12

    add-int/lit8 v9, v9, 0x1

    move v14, v6

    move v6, v5

    move v5, v14

    goto :goto_0

    .line 198
    :cond_1
    iput v5, v0, Lorg/concentus/SilkPrefilterState;->sLF_AR_shp_Q12:I

    .line 199
    iput v6, v0, Lorg/concentus/SilkPrefilterState;->sLF_MA_shp_Q12:I

    .line 200
    iput v4, v0, Lorg/concentus/SilkPrefilterState;->sLTP_shp_buf_idx:I

    return-void
.end method

.method static silk_prefilter(Lorg/concentus/SilkChannelEncoder;Lorg/concentus/SilkEncoderControl;[I[SI)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 86
    iget-object v11, v0, Lorg/concentus/SilkChannelEncoder;->sPrefilt:Lorg/concentus/SilkPrefilterState;

    .line 101
    iget v2, v11, Lorg/concentus/SilkPrefilterState;->lagPrev:I

    .line 102
    iget v3, v0, Lorg/concentus/SilkChannelEncoder;->subfr_length:I

    new-array v12, v3, [I

    .line 103
    iget v3, v0, Lorg/concentus/SilkChannelEncoder;->subfr_length:I

    new-array v10, v3, [I

    const/16 v22, 0x0

    move/from16 v23, p4

    move/from16 v9, v22

    move/from16 v24, v9

    .line 104
    :goto_0
    iget v3, v0, Lorg/concentus/SilkChannelEncoder;->nb_subfr:I

    const/4 v4, 0x1

    if-ge v9, v3, :cond_3

    .line 106
    iget-object v3, v0, Lorg/concentus/SilkChannelEncoder;->indices:Lorg/concentus/SideInfoIndices;

    iget-byte v3, v3, Lorg/concentus/SideInfoIndices;->signalType:B

    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    .line 107
    iget-object v2, v1, Lorg/concentus/SilkEncoderControl;->pitchL:[I

    aget v2, v2, v9

    :cond_0
    move/from16 v25, v2

    .line 111
    iget-object v2, v1, Lorg/concentus/SilkEncoderControl;->HarmShapeGain_Q14:[I

    aget v2, v2, v9

    iget-object v3, v1, Lorg/concentus/SilkEncoderControl;->HarmBoost_Q14:[I

    aget v3, v3, v9

    rsub-int v3, v3, 0x4000

    invoke-static {v2, v3}, Lorg/concentus/Inlines;->silk_SMULWB(II)I

    move-result v2

    if-ltz v2, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    move/from16 v3, v22

    .line 112
    :goto_1
    invoke-static {v3}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    .line 113
    invoke-static {v2, v5}, Lorg/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v3

    .line 114
    invoke-static {v2, v4}, Lorg/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Lorg/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v6

    or-int/2addr v6, v3

    .line 115
    iget-object v3, v1, Lorg/concentus/SilkEncoderControl;->Tilt_Q14:[I

    aget v7, v3, v9

    .line 116
    iget-object v3, v1, Lorg/concentus/SilkEncoderControl;->LF_shp_Q14:[I

    aget v8, v3, v9

    mul-int/lit8 v16, v9, 0x10

    .line 120
    iget-object v13, v11, Lorg/concentus/SilkPrefilterState;->sAR_shp:[I

    iget-object v15, v1, Lorg/concentus/SilkEncoderControl;->AR1_Q13:[S

    iget v3, v0, Lorg/concentus/SilkChannelEncoder;->warping_Q16:I

    int-to-short v3, v3

    iget v14, v0, Lorg/concentus/SilkChannelEncoder;->subfr_length:I

    iget v4, v0, Lorg/concentus/SilkChannelEncoder;->shapingLPCOrder:I

    move/from16 v20, v14

    move-object v14, v10

    move-object/from16 v17, p3

    move/from16 v18, v23

    move/from16 v19, v3

    move/from16 v21, v4

    invoke-static/range {v13 .. v21}, Lorg/concentus/Filters;->silk_warped_LPC_analysis_filter([I[I[SI[SISII)V

    .line 124
    iget-object v3, v1, Lorg/concentus/SilkEncoderControl;->GainsPre_Q14:[I

    aget v3, v3, v9

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lorg/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v3

    int-to-short v3, v3

    .line 125
    iget-object v4, v1, Lorg/concentus/SilkEncoderControl;->HarmBoost_Q14:[I

    aget v4, v4, v9

    const v13, 0x333333

    invoke-static {v13, v4, v2}, Lorg/concentus/Inlines;->silk_SMLABB(III)I

    move-result v2

    .line 127
    iget v4, v1, Lorg/concentus/SilkEncoderControl;->coding_quality_Q14:I

    const/16 v13, 0x19a

    invoke-static {v2, v4, v13}, Lorg/concentus/Inlines;->silk_SMLABB(III)I

    move-result v2

    .line 129
    iget-object v4, v1, Lorg/concentus/SilkEncoderControl;->GainsPre_Q14:[I

    aget v4, v4, v9

    neg-int v4, v4

    invoke-static {v2, v4}, Lorg/concentus/Inlines;->silk_SMULWB(II)I

    move-result v2

    const/16 v4, 0xe

    .line 131
    invoke-static {v2, v4}, Lorg/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v2

    .line 133
    invoke-static {v2}, Lorg/concentus/Inlines;->silk_SAT16(I)I

    move-result v2

    int-to-short v2, v2

    new-array v4, v5, [S

    aput-short v3, v4, v22

    const/4 v3, 0x1

    aput-short v2, v4, v3

    .line 134
    aget v2, v10, v22

    aget-short v5, v4, v22

    invoke-static {v2, v5}, Lorg/concentus/Inlines;->silk_MUL(II)I

    move-result v2

    iget v5, v11, Lorg/concentus/SilkPrefilterState;->sHarmHP_Q2:I

    aget-short v13, v4, v3

    invoke-static {v2, v5, v13}, Lorg/concentus/Inlines;->silk_MLA(III)I

    move-result v2

    aput v2, v12, v22

    const/4 v2, 0x1

    .line 135
    :goto_2
    iget v3, v0, Lorg/concentus/SilkChannelEncoder;->subfr_length:I

    if-ge v2, v3, :cond_2

    .line 136
    aget v3, v10, v2

    aget-short v5, v4, v22

    invoke-static {v3, v5}, Lorg/concentus/Inlines;->silk_MUL(II)I

    move-result v3

    add-int/lit8 v5, v2, -0x1

    aget v5, v10, v5

    const/4 v13, 0x1

    aget-short v14, v4, v13

    invoke-static {v3, v5, v14}, Lorg/concentus/Inlines;->silk_MLA(III)I

    move-result v3

    aput v3, v12, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v13, 0x1

    .line 138
    iget v2, v0, Lorg/concentus/SilkChannelEncoder;->subfr_length:I

    sub-int/2addr v2, v13

    aget v2, v10, v2

    iput v2, v11, Lorg/concentus/SilkPrefilterState;->sHarmHP_Q2:I

    .line 140
    iget v13, v0, Lorg/concentus/SilkChannelEncoder;->subfr_length:I

    move-object v2, v11

    move-object v3, v12

    move-object/from16 v4, p2

    move/from16 v5, v24

    move v14, v9

    move/from16 v9, v25

    move-object v15, v10

    move v10, v13

    invoke-static/range {v2 .. v10}, Lorg/concentus/Filters;->silk_prefilt(Lorg/concentus/SilkPrefilterState;[I[IIIIIII)V

    .line 142
    iget v2, v0, Lorg/concentus/SilkChannelEncoder;->subfr_length:I

    add-int v23, v23, v2

    .line 143
    iget v2, v0, Lorg/concentus/SilkChannelEncoder;->subfr_length:I

    add-int v24, v24, v2

    add-int/lit8 v9, v14, 0x1

    move-object v10, v15

    move/from16 v2, v25

    goto/16 :goto_0

    .line 146
    :cond_3
    iget-object v1, v1, Lorg/concentus/SilkEncoderControl;->pitchL:[I

    iget v0, v0, Lorg/concentus/SilkChannelEncoder;->nb_subfr:I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    aget v0, v1, v0

    iput v0, v11, Lorg/concentus/SilkPrefilterState;->lagPrev:I

    return-void
.end method

.method static silk_warped_LPC_analysis_filter([I[I[SI[SISII)V
    .locals 15

    move/from16 v0, p6

    move/from16 v1, p8

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    .line 51
    :goto_0
    invoke-static {v2}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    move/from16 v2, p7

    move v5, v3

    :goto_1
    if-ge v5, v2, :cond_2

    .line 55
    aget v6, p0, v3

    aget v7, p0, v4

    invoke-static {v6, v7, v0}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v6

    add-int v7, p5, v5

    .line 56
    aget-short v8, p4, v7

    const/16 v9, 0xe

    invoke-static {v8, v9}, Lorg/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v8

    aput v8, p0, v3

    .line 58
    aget v8, p0, v4

    const/4 v9, 0x2

    aget v10, p0, v9

    sub-int/2addr v10, v6

    invoke-static {v8, v10, v0}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v8

    .line 59
    aput v6, p0, v4

    .line 60
    invoke-static {v1, v4}, Lorg/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v10

    .line 61
    aget-short v11, p2, p3

    invoke-static {v10, v6, v11}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v6

    move v10, v9

    :goto_2
    if-ge v10, v1, :cond_1

    .line 65
    aget v11, p0, v10

    add-int/lit8 v12, v10, 0x1

    aget v13, p0, v12

    sub-int/2addr v13, v8

    invoke-static {v11, v13, v0}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v11

    .line 66
    aput v8, p0, v10

    add-int v13, p3, v10

    add-int/lit8 v14, v13, -0x1

    .line 67
    aget-short v14, p2, v14

    invoke-static {v6, v8, v14}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v6

    .line 69
    aget v8, p0, v12

    add-int/lit8 v10, v10, 0x2

    aget v14, p0, v10

    sub-int/2addr v14, v11

    invoke-static {v8, v14, v0}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v8

    .line 70
    aput v11, p0, v12

    .line 71
    aget-short v12, p2, v13

    invoke-static {v6, v11, v12}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v6

    goto :goto_2

    .line 73
    :cond_1
    aput v8, p0, v1

    add-int v10, p3, v1

    sub-int/2addr v10, v4

    .line 74
    aget-short v10, p2, v10

    invoke-static {v6, v8, v10}, Lorg/concentus/Inlines;->silk_SMLAWB(III)I

    move-result v6

    .line 75
    aget-short v7, p4, v7

    invoke-static {v7, v9}, Lorg/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v7

    const/16 v8, 0x9

    invoke-static {v6, v8}, Lorg/concentus/Inlines;->silk_RSHIFT_ROUND(II)I

    move-result v6

    sub-int/2addr v7, v6

    aput v7, p1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method
