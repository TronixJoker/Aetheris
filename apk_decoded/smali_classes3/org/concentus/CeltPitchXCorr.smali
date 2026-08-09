.class Lorg/concentus/CeltPitchXCorr;
.super Ljava/lang/Object;
.source "CeltPitchXCorr.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static pitch_xcorr([I[I[III)I
    .locals 16

    move/from16 v0, p4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 47
    :goto_0
    invoke-static {v3}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    .line 48
    new-instance v3, Lorg/concentus/BoxedValueInt;

    invoke-direct {v3, v1}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    .line 49
    new-instance v12, Lorg/concentus/BoxedValueInt;

    invoke-direct {v12, v1}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    .line 50
    new-instance v13, Lorg/concentus/BoxedValueInt;

    invoke-direct {v13, v1}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    .line 51
    new-instance v14, Lorg/concentus/BoxedValueInt;

    invoke-direct {v14, v1}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    move v15, v1

    :goto_1
    add-int/lit8 v4, v0, -0x3

    if-ge v15, v4, :cond_1

    .line 53
    iput v1, v3, Lorg/concentus/BoxedValueInt;->Val:I

    .line 54
    iput v1, v12, Lorg/concentus/BoxedValueInt;->Val:I

    .line 55
    iput v1, v13, Lorg/concentus/BoxedValueInt;->Val:I

    .line 56
    iput v1, v14, Lorg/concentus/BoxedValueInt;->Val:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move v6, v15

    move-object v7, v3

    move-object v8, v12

    move-object v9, v13

    move-object v10, v14

    move/from16 v11, p3

    .line 57
    invoke-static/range {v4 .. v11}, Lorg/concentus/Kernels;->xcorr_kernel([I[IILorg/concentus/BoxedValueInt;Lorg/concentus/BoxedValueInt;Lorg/concentus/BoxedValueInt;Lorg/concentus/BoxedValueInt;I)V

    .line 58
    iget v4, v3, Lorg/concentus/BoxedValueInt;->Val:I

    aput v4, p2, v15

    add-int/lit8 v4, v15, 0x1

    .line 59
    iget v5, v12, Lorg/concentus/BoxedValueInt;->Val:I

    aput v5, p2, v4

    add-int/lit8 v4, v15, 0x2

    .line 60
    iget v5, v13, Lorg/concentus/BoxedValueInt;->Val:I

    aput v5, p2, v4

    add-int/lit8 v4, v15, 0x3

    .line 61
    iget v5, v14, Lorg/concentus/BoxedValueInt;->Val:I

    aput v5, p2, v4

    .line 62
    iget v4, v3, Lorg/concentus/BoxedValueInt;->Val:I

    iget v5, v12, Lorg/concentus/BoxedValueInt;->Val:I

    invoke-static {v4, v5}, Lorg/concentus/Inlines;->MAX32(II)I

    move-result v4

    iput v4, v3, Lorg/concentus/BoxedValueInt;->Val:I

    .line 63
    iget v4, v13, Lorg/concentus/BoxedValueInt;->Val:I

    iget v5, v14, Lorg/concentus/BoxedValueInt;->Val:I

    invoke-static {v4, v5}, Lorg/concentus/Inlines;->MAX32(II)I

    move-result v4

    iput v4, v13, Lorg/concentus/BoxedValueInt;->Val:I

    .line 64
    iget v4, v3, Lorg/concentus/BoxedValueInt;->Val:I

    iget v5, v13, Lorg/concentus/BoxedValueInt;->Val:I

    invoke-static {v4, v5}, Lorg/concentus/Inlines;->MAX32(II)I

    move-result v4

    iput v4, v3, Lorg/concentus/BoxedValueInt;->Val:I

    .line 65
    iget v4, v3, Lorg/concentus/BoxedValueInt;->Val:I

    invoke-static {v2, v4}, Lorg/concentus/Inlines;->MAX32(II)I

    move-result v2

    add-int/lit8 v15, v15, 0x4

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v15, v0, :cond_2

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p3

    .line 69
    invoke-static {v3, v1, v4, v15, v5}, Lorg/concentus/Kernels;->celt_inner_prod([II[III)I

    move-result v6

    .line 70
    aput v6, p2, v15

    .line 71
    invoke-static {v2, v6}, Lorg/concentus/Inlines;->MAX32(II)I

    move-result v2

    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_2
    return v2
.end method

.method static pitch_xcorr([SI[SI[III)I
    .locals 17

    move/from16 v0, p6

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 86
    :goto_0
    invoke-static {v3}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    .line 87
    new-instance v3, Lorg/concentus/BoxedValueInt;

    invoke-direct {v3, v1}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    .line 88
    new-instance v13, Lorg/concentus/BoxedValueInt;

    invoke-direct {v13, v1}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    .line 89
    new-instance v14, Lorg/concentus/BoxedValueInt;

    invoke-direct {v14, v1}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    .line 90
    new-instance v15, Lorg/concentus/BoxedValueInt;

    invoke-direct {v15, v1}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    move v12, v1

    :goto_1
    add-int/lit8 v4, v0, -0x3

    if-ge v12, v4, :cond_1

    .line 92
    iput v1, v3, Lorg/concentus/BoxedValueInt;->Val:I

    .line 93
    iput v1, v13, Lorg/concentus/BoxedValueInt;->Val:I

    .line 94
    iput v1, v14, Lorg/concentus/BoxedValueInt;->Val:I

    .line 95
    iput v1, v15, Lorg/concentus/BoxedValueInt;->Val:I

    add-int v7, p3, v12

    move-object/from16 v4, p0

    move/from16 v5, p1

    move-object/from16 v6, p2

    move-object v8, v3

    move-object v9, v13

    move-object v10, v14

    move-object v11, v15

    move/from16 v16, v12

    move/from16 v12, p5

    .line 96
    invoke-static/range {v4 .. v12}, Lorg/concentus/Kernels;->xcorr_kernel([SI[SILorg/concentus/BoxedValueInt;Lorg/concentus/BoxedValueInt;Lorg/concentus/BoxedValueInt;Lorg/concentus/BoxedValueInt;I)V

    .line 98
    iget v4, v3, Lorg/concentus/BoxedValueInt;->Val:I

    aput v4, p4, v16

    add-int/lit8 v12, v16, 0x1

    .line 99
    iget v4, v13, Lorg/concentus/BoxedValueInt;->Val:I

    aput v4, p4, v12

    add-int/lit8 v12, v16, 0x2

    .line 100
    iget v4, v14, Lorg/concentus/BoxedValueInt;->Val:I

    aput v4, p4, v12

    add-int/lit8 v12, v16, 0x3

    .line 101
    iget v4, v15, Lorg/concentus/BoxedValueInt;->Val:I

    aput v4, p4, v12

    .line 102
    iget v4, v3, Lorg/concentus/BoxedValueInt;->Val:I

    iget v5, v13, Lorg/concentus/BoxedValueInt;->Val:I

    invoke-static {v4, v5}, Lorg/concentus/Inlines;->MAX32(II)I

    move-result v4

    iput v4, v3, Lorg/concentus/BoxedValueInt;->Val:I

    .line 103
    iget v4, v14, Lorg/concentus/BoxedValueInt;->Val:I

    iget v5, v15, Lorg/concentus/BoxedValueInt;->Val:I

    invoke-static {v4, v5}, Lorg/concentus/Inlines;->MAX32(II)I

    move-result v4

    iput v4, v14, Lorg/concentus/BoxedValueInt;->Val:I

    .line 104
    iget v4, v3, Lorg/concentus/BoxedValueInt;->Val:I

    iget v5, v14, Lorg/concentus/BoxedValueInt;->Val:I

    invoke-static {v4, v5}, Lorg/concentus/Inlines;->MAX32(II)I

    move-result v4

    iput v4, v3, Lorg/concentus/BoxedValueInt;->Val:I

    .line 105
    iget v4, v3, Lorg/concentus/BoxedValueInt;->Val:I

    invoke-static {v2, v4}, Lorg/concentus/Inlines;->MAX32(II)I

    move-result v2

    add-int/lit8 v12, v16, 0x4

    goto :goto_1

    :cond_1
    move/from16 v16, v12

    :goto_2
    if-ge v12, v0, :cond_2

    add-int v1, p3, v12

    move-object/from16 v3, p0

    move/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p5

    .line 109
    invoke-static {v3, v4, v5, v1, v6}, Lorg/concentus/Kernels;->celt_inner_prod([SI[SII)I

    move-result v1

    .line 110
    aput v1, p4, v12

    .line 111
    invoke-static {v2, v1}, Lorg/concentus/Inlines;->MAX32(II)I

    move-result v2

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_2
    return v2
.end method

.method static pitch_xcorr([S[S[III)I
    .locals 17

    move/from16 v0, p4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 124
    :goto_0
    invoke-static {v3}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    .line 125
    new-instance v3, Lorg/concentus/BoxedValueInt;

    invoke-direct {v3, v1}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    .line 126
    new-instance v13, Lorg/concentus/BoxedValueInt;

    invoke-direct {v13, v1}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    .line 127
    new-instance v14, Lorg/concentus/BoxedValueInt;

    invoke-direct {v14, v1}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    .line 128
    new-instance v15, Lorg/concentus/BoxedValueInt;

    invoke-direct {v15, v1}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    move v12, v1

    :goto_1
    add-int/lit8 v4, v0, -0x3

    if-ge v12, v4, :cond_1

    .line 130
    iput v1, v3, Lorg/concentus/BoxedValueInt;->Val:I

    .line 131
    iput v1, v13, Lorg/concentus/BoxedValueInt;->Val:I

    .line 132
    iput v1, v14, Lorg/concentus/BoxedValueInt;->Val:I

    .line 133
    iput v1, v15, Lorg/concentus/BoxedValueInt;->Val:I

    const/4 v5, 0x0

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move v7, v12

    move-object v8, v3

    move-object v9, v13

    move-object v10, v14

    move-object v11, v15

    move/from16 v16, v12

    move/from16 v12, p3

    .line 134
    invoke-static/range {v4 .. v12}, Lorg/concentus/Kernels;->xcorr_kernel([SI[SILorg/concentus/BoxedValueInt;Lorg/concentus/BoxedValueInt;Lorg/concentus/BoxedValueInt;Lorg/concentus/BoxedValueInt;I)V

    .line 136
    iget v4, v3, Lorg/concentus/BoxedValueInt;->Val:I

    aput v4, p2, v16

    add-int/lit8 v12, v16, 0x1

    .line 137
    iget v4, v13, Lorg/concentus/BoxedValueInt;->Val:I

    aput v4, p2, v12

    add-int/lit8 v12, v16, 0x2

    .line 138
    iget v4, v14, Lorg/concentus/BoxedValueInt;->Val:I

    aput v4, p2, v12

    add-int/lit8 v12, v16, 0x3

    .line 139
    iget v4, v15, Lorg/concentus/BoxedValueInt;->Val:I

    aput v4, p2, v12

    .line 140
    iget v4, v3, Lorg/concentus/BoxedValueInt;->Val:I

    iget v5, v13, Lorg/concentus/BoxedValueInt;->Val:I

    invoke-static {v4, v5}, Lorg/concentus/Inlines;->MAX32(II)I

    move-result v4

    iput v4, v3, Lorg/concentus/BoxedValueInt;->Val:I

    .line 141
    iget v4, v14, Lorg/concentus/BoxedValueInt;->Val:I

    iget v5, v15, Lorg/concentus/BoxedValueInt;->Val:I

    invoke-static {v4, v5}, Lorg/concentus/Inlines;->MAX32(II)I

    move-result v4

    iput v4, v14, Lorg/concentus/BoxedValueInt;->Val:I

    .line 142
    iget v4, v3, Lorg/concentus/BoxedValueInt;->Val:I

    iget v5, v14, Lorg/concentus/BoxedValueInt;->Val:I

    invoke-static {v4, v5}, Lorg/concentus/Inlines;->MAX32(II)I

    move-result v4

    iput v4, v3, Lorg/concentus/BoxedValueInt;->Val:I

    .line 143
    iget v4, v3, Lorg/concentus/BoxedValueInt;->Val:I

    invoke-static {v2, v4}, Lorg/concentus/Inlines;->MAX32(II)I

    move-result v2

    add-int/lit8 v12, v16, 0x4

    goto :goto_1

    :cond_1
    move/from16 v16, v12

    :goto_2
    if-ge v12, v0, :cond_2

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move/from16 v4, p3

    .line 147
    invoke-static {v1, v3, v12, v4}, Lorg/concentus/Kernels;->celt_inner_prod([S[SII)I

    move-result v5

    .line 148
    aput v5, p2, v12

    .line 149
    invoke-static {v2, v5}, Lorg/concentus/Inlines;->MAX32(II)I

    move-result v2

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_2
    return v2
.end method
