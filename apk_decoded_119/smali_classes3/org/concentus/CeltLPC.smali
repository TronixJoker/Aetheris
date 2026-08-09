.class Lorg/concentus/CeltLPC;
.super Ljava/lang/Object;
.source "CeltLPC.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static celt_iir([II[I[IIII[I)V
    .locals 20

    move/from16 v0, p5

    move/from16 v9, p6

    .line 93
    new-array v10, v9, [I

    add-int v1, v0, v9

    .line 94
    new-array v11, v1, [I

    and-int/lit8 v2, v9, 0x3

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-nez v2, :cond_0

    move v2, v12

    goto :goto_0

    :cond_0
    move v2, v13

    .line 95
    :goto_0
    invoke-static {v2}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    .line 97
    new-instance v14, Lorg/concentus/BoxedValueInt;

    invoke-direct {v14, v13}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    .line 98
    new-instance v15, Lorg/concentus/BoxedValueInt;

    invoke-direct {v15, v13}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    .line 99
    new-instance v8, Lorg/concentus/BoxedValueInt;

    invoke-direct {v8, v13}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    .line 100
    new-instance v7, Lorg/concentus/BoxedValueInt;

    invoke-direct {v7, v13}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    move v2, v13

    :goto_1
    if-ge v2, v9, :cond_1

    sub-int v3, v9, v2

    sub-int/2addr v3, v12

    .line 104
    aget v3, p2, v3

    aput v3, v10, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move v2, v13

    :goto_2
    if-ge v2, v9, :cond_2

    sub-int v3, v9, v2

    sub-int/2addr v3, v12

    .line 107
    aget v3, p7, v3

    rsub-int/lit8 v3, v3, 0x0

    aput v3, v11, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    if-ge v2, v1, :cond_3

    .line 110
    aput v13, v11, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    move v6, v13

    :goto_4
    add-int/lit8 v1, v0, -0x3

    const/16 v5, 0xc

    if-ge v6, v1, :cond_4

    add-int v1, p1, v6

    .line 114
    aget v2, p0, v1

    iput v2, v14, Lorg/concentus/BoxedValueInt;->Val:I

    add-int/lit8 v2, v1, 0x1

    .line 115
    aget v2, p0, v2

    iput v2, v15, Lorg/concentus/BoxedValueInt;->Val:I

    add-int/lit8 v2, v1, 0x2

    .line 116
    aget v2, p0, v2

    iput v2, v8, Lorg/concentus/BoxedValueInt;->Val:I

    add-int/lit8 v1, v1, 0x3

    .line 117
    aget v1, p0, v1

    iput v1, v7, Lorg/concentus/BoxedValueInt;->Val:I

    move-object v1, v10

    move-object v2, v11

    move v3, v6

    move-object v4, v14

    move v12, v5

    move-object v5, v15

    move/from16 v16, v6

    move-object v6, v8

    move-object/from16 v17, v7

    move-object v13, v8

    move/from16 v8, p6

    .line 118
    invoke-static/range {v1 .. v8}, Lorg/concentus/Kernels;->xcorr_kernel([I[IILorg/concentus/BoxedValueInt;Lorg/concentus/BoxedValueInt;Lorg/concentus/BoxedValueInt;Lorg/concentus/BoxedValueInt;I)V

    .line 119
    iget v1, v14, Lorg/concentus/BoxedValueInt;->Val:I

    .line 120
    iget v2, v15, Lorg/concentus/BoxedValueInt;->Val:I

    .line 121
    iget v3, v13, Lorg/concentus/BoxedValueInt;->Val:I

    move-object/from16 v4, v17

    .line 122
    iget v5, v4, Lorg/concentus/BoxedValueInt;->Val:I

    add-int v6, v16, v9

    .line 125
    invoke-static {v1, v12}, Lorg/concentus/Inlines;->ROUND16(II)I

    move-result v7

    const/4 v8, 0x0

    rsub-int/lit8 v7, v7, 0x0

    aput v7, v11, v6

    add-int v7, p4, v16

    .line 126
    aput v1, p3, v7

    .line 127
    aget v1, v11, v6

    aget v12, p2, v8

    invoke-static {v2, v1, v12}, Lorg/concentus/Inlines;->MAC16_16(III)I

    move-result v1

    add-int/lit8 v2, v6, 0x1

    const/16 v12, 0xc

    .line 128
    invoke-static {v1, v12}, Lorg/concentus/Inlines;->ROUND16(II)I

    move-result v18

    rsub-int/lit8 v12, v18, 0x0

    aput v12, v11, v2

    add-int/lit8 v12, v7, 0x1

    .line 129
    aput v1, p3, v12

    .line 130
    aget v1, v11, v2

    aget v12, p2, v8

    invoke-static {v3, v1, v12}, Lorg/concentus/Inlines;->MAC16_16(III)I

    move-result v1

    .line 131
    aget v3, v11, v6

    const/4 v12, 0x1

    aget v8, p2, v12

    invoke-static {v1, v3, v8}, Lorg/concentus/Inlines;->MAC16_16(III)I

    move-result v1

    add-int/lit8 v3, v6, 0x2

    const/16 v8, 0xc

    .line 132
    invoke-static {v1, v8}, Lorg/concentus/Inlines;->ROUND16(II)I

    move-result v12

    const/4 v8, 0x0

    rsub-int/lit8 v12, v12, 0x0

    aput v12, v11, v3

    add-int/lit8 v12, v7, 0x2

    .line 133
    aput v1, p3, v12

    .line 135
    aget v1, v11, v3

    aget v3, p2, v8

    invoke-static {v5, v1, v3}, Lorg/concentus/Inlines;->MAC16_16(III)I

    move-result v1

    .line 136
    aget v2, v11, v2

    const/4 v3, 0x1

    aget v5, p2, v3

    invoke-static {v1, v2, v5}, Lorg/concentus/Inlines;->MAC16_16(III)I

    move-result v1

    .line 137
    aget v2, v11, v6

    const/4 v3, 0x2

    aget v3, p2, v3

    invoke-static {v1, v2, v3}, Lorg/concentus/Inlines;->MAC16_16(III)I

    move-result v1

    add-int/lit8 v6, v6, 0x3

    const/16 v2, 0xc

    .line 138
    invoke-static {v1, v2}, Lorg/concentus/Inlines;->ROUND16(II)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x0

    aput v2, v11, v6

    add-int/lit8 v7, v7, 0x3

    .line 139
    aput v1, p3, v7

    add-int/lit8 v6, v16, 0x4

    move-object v7, v4

    const/4 v12, 0x1

    move-object/from16 v19, v13

    move v13, v8

    move-object/from16 v8, v19

    goto/16 :goto_4

    :cond_4
    move/from16 v16, v6

    move v8, v13

    :goto_5
    if-ge v6, v0, :cond_6

    add-int v1, p1, v6

    .line 142
    aget v1, p0, v1

    move v2, v8

    :goto_6
    if-ge v2, v9, :cond_5

    .line 144
    aget v3, v10, v2

    add-int v4, v6, v2

    aget v4, v11, v4

    invoke-static {v3, v4}, Lorg/concentus/Inlines;->MULT16_16(II)I

    move-result v3

    sub-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_5
    add-int v2, v6, v9

    const/16 v3, 0xc

    .line 146
    invoke-static {v1, v3}, Lorg/concentus/Inlines;->ROUND16(II)I

    move-result v4

    aput v4, v11, v2

    add-int v2, p4, v6

    .line 147
    aput v1, p3, v2

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_6
    move v13, v8

    :goto_7
    if-ge v13, v9, :cond_7

    add-int v1, p4, v0

    sub-int/2addr v1, v13

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 150
    aget v1, p3, v1

    aput v1, p7, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    :cond_7
    return-void
.end method

.method static celt_lpc([I[II)V
    .locals 11

    const/4 v0, 0x0

    .line 45
    aget v1, p1, v0

    .line 46
    new-array v2, p2, [I

    if-eqz v1, :cond_3

    move v3, v0

    :goto_0
    if-ge v3, p2, :cond_3

    move v4, v0

    move v5, v4

    :goto_1
    if-ge v4, v3, :cond_0

    .line 54
    aget v6, v2, v4

    sub-int v7, v3, v4

    aget v7, p1, v7

    invoke-static {v6, v7}, Lorg/concentus/Inlines;->MULT32_32_Q31(II)I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v3, 0x1

    .line 56
    aget v6, p1, v4

    const/4 v7, 0x3

    invoke-static {v6, v7}, Lorg/concentus/Inlines;->SHR32(II)I

    move-result v6

    add-int/2addr v5, v6

    .line 57
    invoke-static {v5, v7}, Lorg/concentus/Inlines;->SHL32(II)I

    move-result v5

    invoke-static {v5, v1}, Lorg/concentus/Inlines;->frac_div32(II)I

    move-result v5

    rsub-int/lit8 v5, v5, 0x0

    .line 59
    invoke-static {v5, v7}, Lorg/concentus/Inlines;->SHR32(II)I

    move-result v6

    aput v6, v2, v3

    move v6, v0

    :goto_2
    shr-int/lit8 v7, v4, 0x1

    if-ge v6, v7, :cond_1

    .line 63
    aget v7, v2, v6

    add-int/lit8 v8, v3, -0x1

    sub-int/2addr v8, v6

    .line 64
    aget v9, v2, v8

    .line 65
    invoke-static {v5, v9}, Lorg/concentus/Inlines;->MULT32_32_Q31(II)I

    move-result v10

    add-int/2addr v10, v7

    aput v10, v2, v6

    .line 66
    invoke-static {v5, v7}, Lorg/concentus/Inlines;->MULT32_32_Q31(II)I

    move-result v7

    add-int/2addr v9, v7

    aput v9, v2, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 69
    :cond_1
    invoke-static {v5, v5}, Lorg/concentus/Inlines;->MULT32_32_Q31(II)I

    move-result v3

    invoke-static {v3, v1}, Lorg/concentus/Inlines;->MULT32_32_Q31(II)I

    move-result v3

    sub-int/2addr v1, v3

    .line 72
    aget v3, p1, v0

    const/16 v5, 0xa

    invoke-static {v3, v5}, Lorg/concentus/Inlines;->SHR32(II)I

    move-result v3

    if-ge v1, v3, :cond_2

    goto :goto_3

    :cond_2
    move v3, v4

    goto :goto_0

    :cond_3
    :goto_3
    if-ge v0, p2, :cond_4

    .line 79
    aget p1, v2, v0

    const/16 v1, 0x10

    invoke-static {p1, v1}, Lorg/concentus/Inlines;->ROUND16(II)I

    move-result p1

    aput p1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method
