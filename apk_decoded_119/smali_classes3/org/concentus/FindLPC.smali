.class Lorg/concentus/FindLPC;
.super Ljava/lang/Object;
.source "FindLPC.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static silk_find_LPC(Lorg/concentus/SilkChannelEncoder;[S[SI)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0x10

    .line 44
    new-array v12, v2, [I

    .line 46
    new-instance v13, Lorg/concentus/BoxedValueInt;

    const/4 v14, 0x0

    invoke-direct {v13, v14}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    .line 47
    new-instance v15, Lorg/concentus/BoxedValueInt;

    invoke-direct {v15, v14}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    .line 48
    new-instance v11, Lorg/concentus/BoxedValueInt;

    invoke-direct {v11, v14}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    .line 49
    new-instance v10, Lorg/concentus/BoxedValueInt;

    invoke-direct {v10, v14}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    .line 50
    new-instance v9, Lorg/concentus/BoxedValueInt;

    invoke-direct {v9, v14}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    .line 51
    new-instance v8, Lorg/concentus/BoxedValueInt;

    invoke-direct {v8, v14}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    .line 54
    new-array v7, v2, [I

    .line 57
    new-array v6, v2, [S

    .line 58
    new-array v2, v2, [S

    .line 60
    iget v3, v0, Lorg/concentus/SilkChannelEncoder;->subfr_length:I

    iget v4, v0, Lorg/concentus/SilkChannelEncoder;->predictLPCOrder:I

    add-int v25, v3, v4

    .line 63
    iget-object v3, v0, Lorg/concentus/SilkChannelEncoder;->indices:Lorg/concentus/SideInfoIndices;

    const/4 v5, 0x4

    iput-byte v5, v3, Lorg/concentus/SideInfoIndices;->NLSFInterpCoef_Q2:B

    .line 66
    iget v4, v0, Lorg/concentus/SilkChannelEncoder;->nb_subfr:I

    iget v3, v0, Lorg/concentus/SilkChannelEncoder;->predictLPCOrder:I

    const/16 v16, 0x0

    move/from16 v17, v3

    move-object v3, v9

    move/from16 v18, v4

    move-object v4, v8

    move v14, v5

    move-object v5, v12

    move-object/from16 v26, v6

    move-object/from16 v6, p2

    move-object/from16 v27, v7

    move/from16 v7, v16

    move-object v14, v8

    move/from16 v8, p3

    move-object/from16 v28, v9

    move/from16 v9, v25

    move-object/from16 v29, v10

    move/from16 v10, v18

    move-object/from16 v30, v12

    move-object v12, v11

    move/from16 v11, v17

    invoke-static/range {v3 .. v11}, Lorg/concentus/BurgModified;->silk_burg_modified(Lorg/concentus/BoxedValueInt;Lorg/concentus/BoxedValueInt;[I[SIIIII)V

    move-object/from16 v3, v28

    .line 67
    iget v4, v3, Lorg/concentus/BoxedValueInt;->Val:I

    .line 68
    iget v5, v14, Lorg/concentus/BoxedValueInt;->Val:I

    .line 70
    iget v6, v0, Lorg/concentus/SilkChannelEncoder;->useInterpolatedNLSFs:I

    if-eqz v6, :cond_7

    iget v6, v0, Lorg/concentus/SilkChannelEncoder;->first_frame_after_reset:I

    if-nez v6, :cond_7

    iget v6, v0, Lorg/concentus/SilkChannelEncoder;->nb_subfr:I

    const/4 v8, 0x4

    if-ne v6, v8, :cond_7

    mul-int/lit8 v6, v25, 0x2

    const/16 v23, 0x2

    .line 74
    iget v8, v0, Lorg/concentus/SilkChannelEncoder;->predictLPCOrder:I

    move-object/from16 v16, v3

    move-object/from16 v17, v14

    move-object/from16 v18, v27

    move-object/from16 v19, p2

    move/from16 v20, v6

    move/from16 v21, p3

    move/from16 v22, v25

    move/from16 v24, v8

    invoke-static/range {v16 .. v24}, Lorg/concentus/BurgModified;->silk_burg_modified(Lorg/concentus/BoxedValueInt;Lorg/concentus/BoxedValueInt;[I[SIIIII)V

    .line 75
    iget v3, v3, Lorg/concentus/BoxedValueInt;->Val:I

    .line 76
    iget v8, v14, Lorg/concentus/BoxedValueInt;->Val:I

    sub-int v9, v8, v5

    const/16 v10, 0x20

    if-ltz v9, :cond_0

    if-ge v9, v10, :cond_2

    .line 83
    invoke-static {v3, v9}, Lorg/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v3

    sub-int/2addr v4, v3

    goto :goto_1

    :cond_0
    const/16 v5, -0x20

    if-le v9, v5, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 86
    :goto_0
    invoke-static {v5}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    neg-int v5, v9

    .line 87
    invoke-static {v4, v5}, Lorg/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v4

    sub-int/2addr v4, v3

    move v5, v8

    .line 92
    :cond_2
    :goto_1
    iget v3, v0, Lorg/concentus/SilkChannelEncoder;->predictLPCOrder:I

    move-object/from16 v8, v27

    invoke-static {v1, v8, v3}, Lorg/concentus/NLSF;->silk_A2NLSF([S[II)V

    .line 94
    new-array v3, v6, [S

    const/4 v8, 0x3

    :goto_2
    if-ltz v8, :cond_7

    .line 99
    iget-object v9, v0, Lorg/concentus/SilkChannelEncoder;->prev_NLSFq_Q15:[S

    iget v11, v0, Lorg/concentus/SilkChannelEncoder;->predictLPCOrder:I

    invoke-static {v2, v9, v1, v8, v11}, Lorg/concentus/Inlines;->silk_interpolate([S[S[SII)V

    .line 102
    iget v9, v0, Lorg/concentus/SilkChannelEncoder;->predictLPCOrder:I

    move-object/from16 v11, v26

    invoke-static {v11, v2, v9}, Lorg/concentus/NLSF;->silk_NLSF2A([S[SI)V

    const/16 v21, 0x0

    .line 105
    iget v9, v0, Lorg/concentus/SilkChannelEncoder;->predictLPCOrder:I

    const/16 v17, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, v3

    move-object/from16 v18, p2

    move-object/from16 v20, v11

    move/from16 v22, v6

    move/from16 v23, v9

    invoke-static/range {v16 .. v23}, Lorg/concentus/Filters;->silk_LPC_analysis_filter([SI[SI[SIII)V

    .line 107
    iget v9, v0, Lorg/concentus/SilkChannelEncoder;->predictLPCOrder:I

    iget v14, v0, Lorg/concentus/SilkChannelEncoder;->predictLPCOrder:I

    sub-int v14, v25, v14

    invoke-static {v13, v12, v3, v9, v14}, Lorg/concentus/SumSqrShift;->silk_sum_sqr_shift(Lorg/concentus/BoxedValueInt;Lorg/concentus/BoxedValueInt;[SII)V

    .line 109
    iget v9, v0, Lorg/concentus/SilkChannelEncoder;->predictLPCOrder:I

    add-int v9, v9, v25

    iget v14, v0, Lorg/concentus/SilkChannelEncoder;->predictLPCOrder:I

    sub-int v14, v25, v14

    move-object/from16 v7, v29

    invoke-static {v15, v7, v3, v9, v14}, Lorg/concentus/SumSqrShift;->silk_sum_sqr_shift(Lorg/concentus/BoxedValueInt;Lorg/concentus/BoxedValueInt;[SII)V

    .line 112
    iget v9, v12, Lorg/concentus/BoxedValueInt;->Val:I

    iget v14, v7, Lorg/concentus/BoxedValueInt;->Val:I

    sub-int/2addr v9, v14

    if-ltz v9, :cond_3

    .line 114
    iget v14, v15, Lorg/concentus/BoxedValueInt;->Val:I

    invoke-static {v14, v9}, Lorg/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v9

    iput v9, v15, Lorg/concentus/BoxedValueInt;->Val:I

    .line 115
    iget v9, v12, Lorg/concentus/BoxedValueInt;->Val:I

    const/4 v14, 0x0

    goto :goto_3

    :cond_3
    const/4 v14, 0x0

    .line 117
    iget v10, v13, Lorg/concentus/BoxedValueInt;->Val:I

    rsub-int/lit8 v9, v9, 0x0

    invoke-static {v10, v9}, Lorg/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v9

    iput v9, v13, Lorg/concentus/BoxedValueInt;->Val:I

    .line 118
    iget v9, v7, Lorg/concentus/BoxedValueInt;->Val:I

    :goto_3
    rsub-int/lit8 v9, v9, 0x0

    .line 120
    iget v10, v13, Lorg/concentus/BoxedValueInt;->Val:I

    iget v14, v15, Lorg/concentus/BoxedValueInt;->Val:I

    invoke-static {v10, v14}, Lorg/concentus/Inlines;->silk_ADD32(II)I

    move-result v10

    sub-int v14, v9, v5

    if-ltz v14, :cond_5

    .line 125
    invoke-static {v10, v14}, Lorg/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v14

    if-ge v14, v4, :cond_4

    move-object/from16 v17, v2

    const/16 v2, 0x20

    goto :goto_4

    :cond_4
    move-object/from16 v17, v2

    const/16 v2, 0x20

    goto :goto_5

    :cond_5
    neg-int v14, v14

    move-object/from16 v17, v2

    const/16 v2, 0x20

    if-ge v14, v2, :cond_6

    .line 131
    invoke-static {v4, v14}, Lorg/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v14

    if-ge v10, v14, :cond_6

    .line 145
    :goto_4
    iget-object v4, v0, Lorg/concentus/SilkChannelEncoder;->indices:Lorg/concentus/SideInfoIndices;

    int-to-byte v5, v8

    iput-byte v5, v4, Lorg/concentus/SideInfoIndices;->NLSFInterpCoef_Q2:B

    move v5, v9

    move v4, v10

    :cond_6
    :goto_5
    add-int/lit8 v8, v8, -0x1

    move v10, v2

    move-object/from16 v29, v7

    move-object/from16 v26, v11

    move-object/from16 v2, v17

    goto/16 :goto_2

    .line 150
    :cond_7
    iget-object v2, v0, Lorg/concentus/SilkChannelEncoder;->indices:Lorg/concentus/SideInfoIndices;

    iget-byte v2, v2, Lorg/concentus/SideInfoIndices;->NLSFInterpCoef_Q2:B

    const/4 v3, 0x4

    if-ne v2, v3, :cond_8

    .line 152
    iget v2, v0, Lorg/concentus/SilkChannelEncoder;->predictLPCOrder:I

    move-object/from16 v4, v30

    invoke-static {v1, v4, v2}, Lorg/concentus/NLSF;->silk_A2NLSF([S[II)V

    .line 155
    :cond_8
    iget-object v1, v0, Lorg/concentus/SilkChannelEncoder;->indices:Lorg/concentus/SideInfoIndices;

    iget-byte v1, v1, Lorg/concentus/SideInfoIndices;->NLSFInterpCoef_Q2:B

    if-eq v1, v3, :cond_a

    iget v1, v0, Lorg/concentus/SilkChannelEncoder;->useInterpolatedNLSFs:I

    if-eqz v1, :cond_9

    iget v1, v0, Lorg/concentus/SilkChannelEncoder;->first_frame_after_reset:I

    if-nez v1, :cond_9

    iget v0, v0, Lorg/concentus/SilkChannelEncoder;->nb_subfr:I

    if-ne v0, v3, :cond_9

    goto :goto_6

    :cond_9
    const/4 v14, 0x0

    goto :goto_7

    :cond_a
    :goto_6
    const/4 v14, 0x1

    :goto_7
    invoke-static {v14}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    return-void
.end method
