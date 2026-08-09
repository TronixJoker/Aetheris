.class Lorg/concentus/MDCT;
.super Ljava/lang/Object;
.source "MDCT.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static clt_mdct_backward(Lorg/concentus/MDCTLookup;[II[II[IIII)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p7

    .line 151
    iget v3, v0, Lorg/concentus/MDCTLookup;->n:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v2, :cond_0

    shr-int/lit8 v3, v3, 0x1

    add-int/2addr v6, v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    shr-int/lit8 v5, v3, 0x1

    shr-int/lit8 v3, v3, 0x2

    add-int/lit8 v7, v5, -0x1

    mul-int v7, v7, p8

    add-int v7, p2, v7

    shr-int/lit8 v8, p6, 0x1

    add-int v8, p4, v8

    .line 163
    iget-object v9, v0, Lorg/concentus/MDCTLookup;->kfft:[Lorg/concentus/FFTState;

    aget-object v9, v9, v2

    iget-object v9, v9, Lorg/concentus/FFTState;->bitrev:[S

    move v10, v7

    const/4 v11, 0x0

    const/4 v12, 0x0

    move/from16 v7, p2

    :goto_1
    if-ge v11, v3, :cond_1

    add-int/lit8 v13, v12, 0x1

    .line 166
    aget-short v12, v9, v12

    mul-int/lit8 v12, v12, 0x2

    add-int/2addr v12, v8

    add-int/lit8 v14, v12, 0x1

    .line 169
    aget v15, p1, v10

    iget-object v4, v0, Lorg/concentus/MDCTLookup;->trig:[S

    add-int v17, v6, v11

    aget-short v4, v4, v17

    invoke-static {v15, v4}, Lorg/concentus/KissFFT;->S_MUL(IS)I

    move-result v4

    aget v15, p1, v7

    move-object/from16 v18, v9

    iget-object v9, v0, Lorg/concentus/MDCTLookup;->trig:[S

    add-int v19, v6, v3

    add-int v19, v19, v11

    aget-short v9, v9, v19

    invoke-static {v15, v9}, Lorg/concentus/KissFFT;->S_MUL(IS)I

    move-result v9

    add-int/2addr v4, v9

    aput v4, v1, v14

    .line 170
    aget v4, p1, v7

    iget-object v9, v0, Lorg/concentus/MDCTLookup;->trig:[S

    aget-short v9, v9, v17

    invoke-static {v4, v9}, Lorg/concentus/KissFFT;->S_MUL(IS)I

    move-result v4

    aget v9, p1, v10

    iget-object v14, v0, Lorg/concentus/MDCTLookup;->trig:[S

    aget-short v14, v14, v19

    invoke-static {v9, v14}, Lorg/concentus/KissFFT;->S_MUL(IS)I

    move-result v9

    sub-int/2addr v4, v9

    aput v4, v1, v12

    mul-int/lit8 v4, p8, 0x2

    add-int/2addr v7, v4

    sub-int/2addr v10, v4

    add-int/lit8 v11, v11, 0x1

    move v12, v13

    move-object/from16 v9, v18

    goto :goto_1

    .line 176
    :cond_1
    iget-object v4, v0, Lorg/concentus/MDCTLookup;->kfft:[Lorg/concentus/FFTState;

    aget-object v2, v4, v2

    invoke-static {v2, v1, v8}, Lorg/concentus/KissFFT;->opus_fft_impl(Lorg/concentus/FFTState;[II)V

    add-int v2, v8, v5

    add-int/lit8 v2, v2, -0x2

    add-int v4, v6, v3

    add-int/lit8 v7, v4, -0x1

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    const/4 v9, 0x0

    :goto_2
    add-int/lit8 v10, v3, 0x1

    shr-int/lit8 v10, v10, 0x1

    if-ge v9, v10, :cond_2

    add-int/lit8 v10, v8, 0x1

    .line 192
    aget v11, v1, v10

    .line 193
    aget v12, v1, v8

    .line 194
    iget-object v13, v0, Lorg/concentus/MDCTLookup;->trig:[S

    add-int v14, v6, v9

    aget-short v13, v13, v14

    .line 195
    iget-object v14, v0, Lorg/concentus/MDCTLookup;->trig:[S

    add-int v15, v4, v9

    aget-short v14, v14, v15

    .line 197
    invoke-static {v11, v13}, Lorg/concentus/KissFFT;->S_MUL(IS)I

    move-result v15

    invoke-static {v12, v14}, Lorg/concentus/KissFFT;->S_MUL(IS)I

    move-result v17

    add-int v15, v15, v17

    .line 198
    invoke-static {v11, v14}, Lorg/concentus/KissFFT;->S_MUL(IS)I

    move-result v11

    invoke-static {v12, v13}, Lorg/concentus/KissFFT;->S_MUL(IS)I

    move-result v12

    sub-int/2addr v11, v12

    add-int/lit8 v12, v2, 0x1

    .line 200
    aget v13, v1, v12

    .line 201
    aget v14, v1, v2

    .line 202
    aput v15, v1, v8

    .line 203
    aput v11, v1, v12

    .line 204
    iget-object v11, v0, Lorg/concentus/MDCTLookup;->trig:[S

    sub-int v12, v7, v9

    aget-short v11, v11, v12

    .line 205
    iget-object v12, v0, Lorg/concentus/MDCTLookup;->trig:[S

    sub-int v15, v5, v9

    aget-short v12, v12, v15

    .line 207
    invoke-static {v13, v11}, Lorg/concentus/KissFFT;->S_MUL(IS)I

    move-result v15

    invoke-static {v14, v12}, Lorg/concentus/KissFFT;->S_MUL(IS)I

    move-result v17

    add-int v15, v15, v17

    .line 208
    invoke-static {v13, v12}, Lorg/concentus/KissFFT;->S_MUL(IS)I

    move-result v12

    invoke-static {v14, v11}, Lorg/concentus/KissFFT;->S_MUL(IS)I

    move-result v11

    sub-int/2addr v12, v11

    .line 209
    aput v15, v1, v2

    .line 210
    aput v12, v1, v10

    add-int/lit8 v8, v8, 0x2

    add-int/lit8 v2, v2, -0x2

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_2
    add-int v0, p4, p6

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v2, p6, -0x1

    move v3, v2

    const/4 v4, 0x0

    const/16 v16, 0x0

    move v2, v0

    move/from16 v0, p4

    .line 221
    :goto_3
    div-int/lit8 v5, p6, 0x2

    if-ge v4, v5, :cond_3

    .line 222
    aget v5, v1, v2

    .line 223
    aget v6, v1, v0

    add-int/lit8 v7, v0, 0x1

    .line 224
    aget v8, p5, v3

    invoke-static {v8, v6}, Lorg/concentus/Inlines;->MULT16_32_Q15(II)I

    move-result v8

    aget v9, p5, v16

    invoke-static {v9, v5}, Lorg/concentus/Inlines;->MULT16_32_Q15(II)I

    move-result v9

    sub-int/2addr v8, v9

    aput v8, v1, v0

    add-int/lit8 v0, v2, -0x1

    .line 225
    aget v8, p5, v16

    invoke-static {v8, v6}, Lorg/concentus/Inlines;->MULT16_32_Q15(II)I

    move-result v6

    aget v8, p5, v3

    invoke-static {v8, v5}, Lorg/concentus/Inlines;->MULT16_32_Q15(II)I

    move-result v5

    add-int/2addr v6, v5

    aput v6, v1, v2

    add-int/lit8 v16, v16, 0x1

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v4, v4, 0x1

    move v2, v0

    move v0, v7

    goto :goto_3

    :cond_3
    return-void
.end method

.method static clt_mdct_forward(Lorg/concentus/MDCTLookup;[II[II[IIII)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p7

    .line 46
    iget-object v2, v0, Lorg/concentus/MDCTLookup;->kfft:[Lorg/concentus/FFTState;

    aget-object v2, v2, v1

    .line 51
    iget v3, v2, Lorg/concentus/FFTState;->scale_shift:I

    add-int/lit8 v3, v3, -0x1

    .line 52
    iget-short v4, v2, Lorg/concentus/FFTState;->scale:S

    .line 54
    iget v5, v0, Lorg/concentus/MDCTLookup;->n:I

    .line 55
    iget-object v0, v0, Lorg/concentus/MDCTLookup;->trig:[S

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v7, v1, :cond_0

    shr-int/lit8 v5, v5, 0x1

    add-int/2addr v8, v5

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    shr-int/lit8 v1, v5, 0x1

    shr-int/lit8 v5, v5, 0x2

    .line 63
    new-array v7, v1, [I

    mul-int/lit8 v9, v5, 0x2

    .line 64
    new-array v9, v9, [I

    shr-int/lit8 v10, p6, 0x1

    add-int v11, p2, v10

    add-int v12, p2, v1

    add-int/lit8 v12, v12, -0x1

    add-int/2addr v12, v10

    add-int/lit8 v13, v10, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_1
    add-int/lit8 v16, p6, 0x3

    shr-int/lit8 v6, v16, 0x2

    if-ge v14, v6, :cond_1

    add-int/lit8 v6, v15, 0x1

    move-object/from16 v16, v9

    .line 77
    aget v9, p5, v13

    add-int v17, v11, v1

    move/from16 v18, v3

    aget v3, p1, v17

    invoke-static {v9, v3}, Lorg/concentus/Inlines;->MULT16_32_Q15(II)I

    move-result v3

    aget v9, p5, v10

    move/from16 v17, v4

    aget v4, p1, v12

    invoke-static {v9, v4}, Lorg/concentus/Inlines;->MULT16_32_Q15(II)I

    move-result v4

    add-int/2addr v3, v4

    aput v3, v7, v15

    add-int/lit8 v15, v15, 0x2

    .line 78
    aget v3, p5, v10

    aget v4, p1, v11

    invoke-static {v3, v4}, Lorg/concentus/Inlines;->MULT16_32_Q15(II)I

    move-result v3

    aget v4, p5, v13

    sub-int v9, v12, v1

    aget v9, p1, v9

    invoke-static {v4, v9}, Lorg/concentus/Inlines;->MULT16_32_Q15(II)I

    move-result v4

    sub-int/2addr v3, v4

    aput v3, v7, v6

    add-int/lit8 v11, v11, 0x2

    add-int/lit8 v12, v12, -0x2

    add-int/lit8 v10, v10, 0x2

    add-int/lit8 v13, v13, -0x2

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v9, v16

    move/from16 v4, v17

    move/from16 v3, v18

    goto :goto_1

    :cond_1
    move/from16 v18, v3

    move/from16 v17, v4

    move-object/from16 v16, v9

    add-int/lit8 v3, p6, -0x1

    :goto_2
    sub-int v4, v5, v6

    if-ge v14, v4, :cond_2

    add-int/lit8 v4, v15, 0x1

    .line 88
    aget v9, p1, v12

    aput v9, v7, v15

    add-int/lit8 v15, v15, 0x2

    .line 89
    aget v9, p1, v11

    aput v9, v7, v4

    add-int/lit8 v11, v11, 0x2

    add-int/lit8 v12, v12, -0x2

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_3
    if-ge v14, v5, :cond_3

    add-int/lit8 v6, v15, 0x1

    .line 95
    aget v9, p5, v3

    aget v10, p1, v12

    invoke-static {v9, v10}, Lorg/concentus/Inlines;->MULT16_32_Q15(II)I

    move-result v9

    aget v10, p5, v4

    sub-int v13, v11, v1

    aget v13, p1, v13

    invoke-static {v10, v13}, Lorg/concentus/Inlines;->MULT16_32_Q15(II)I

    move-result v10

    sub-int/2addr v9, v10

    aput v9, v7, v15

    add-int/lit8 v15, v15, 0x2

    .line 96
    aget v9, p5, v3

    aget v10, p1, v11

    invoke-static {v9, v10}, Lorg/concentus/Inlines;->MULT16_32_Q15(II)I

    move-result v9

    aget v10, p5, v4

    add-int v13, v12, v1

    aget v13, p1, v13

    invoke-static {v10, v13}, Lorg/concentus/Inlines;->MULT16_32_Q15(II)I

    move-result v10

    add-int/2addr v9, v10

    aput v9, v7, v6

    add-int/lit8 v11, v11, 0x2

    add-int/lit8 v12, v12, -0x2

    add-int/lit8 v4, v4, 0x2

    add-int/lit8 v3, v3, -0x2

    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_4
    if-ge v3, v5, :cond_4

    add-int v6, v8, v3

    .line 110
    aget-short v6, v0, v6

    add-int v9, v8, v5

    add-int/2addr v9, v3

    .line 111
    aget-short v9, v0, v9

    add-int/lit8 v10, v4, 0x1

    .line 112
    aget v11, v7, v4

    add-int/lit8 v4, v4, 0x2

    .line 113
    aget v10, v7, v10

    .line 114
    invoke-static {v11, v6}, Lorg/concentus/KissFFT;->S_MUL(IS)I

    move-result v12

    invoke-static {v10, v9}, Lorg/concentus/KissFFT;->S_MUL(IS)I

    move-result v13

    sub-int/2addr v12, v13

    .line 115
    invoke-static {v10, v6}, Lorg/concentus/KissFFT;->S_MUL(IS)I

    move-result v6

    invoke-static {v11, v9}, Lorg/concentus/KissFFT;->S_MUL(IS)I

    move-result v9

    add-int/2addr v6, v9

    .line 116
    iget-object v9, v2, Lorg/concentus/FFTState;->bitrev:[S

    aget-short v9, v9, v3

    mul-int/lit8 v9, v9, 0x2

    move/from16 v10, v17

    invoke-static {v10, v12}, Lorg/concentus/Inlines;->MULT16_32_Q16(II)I

    move-result v11

    move/from16 v12, v18

    invoke-static {v11, v12}, Lorg/concentus/Inlines;->PSHR32(II)I

    move-result v11

    aput v11, v16, v9

    .line 117
    iget-object v9, v2, Lorg/concentus/FFTState;->bitrev:[S

    aget-short v9, v9, v3

    mul-int/lit8 v9, v9, 0x2

    add-int/lit8 v9, v9, 0x1

    invoke-static {v10, v6}, Lorg/concentus/Inlines;->MULT16_32_Q16(II)I

    move-result v6

    invoke-static {v6, v12}, Lorg/concentus/Inlines;->PSHR32(II)I

    move-result v6

    aput v6, v16, v9

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_4
    move-object/from16 v3, v16

    const/4 v4, 0x0

    .line 122
    invoke-static {v2, v3, v4}, Lorg/concentus/KissFFT;->opus_fft_impl(Lorg/concentus/FFTState;[II)V

    add-int/lit8 v1, v1, -0x1

    mul-int v1, v1, p8

    add-int v1, p4, v1

    move v2, v1

    move v6, v4

    move/from16 v1, p4

    :goto_5
    if-ge v6, v5, :cond_5

    add-int/lit8 v7, v4, 0x1

    .line 133
    aget v9, v3, v7

    add-int v10, v8, v5

    add-int/2addr v10, v6

    aget-short v11, v0, v10

    invoke-static {v9, v11}, Lorg/concentus/KissFFT;->S_MUL(IS)I

    move-result v9

    aget v11, v3, v4

    add-int v12, v8, v6

    aget-short v13, v0, v12

    invoke-static {v11, v13}, Lorg/concentus/KissFFT;->S_MUL(IS)I

    move-result v11

    sub-int/2addr v9, v11

    .line 134
    aget v11, v3, v4

    aget-short v10, v0, v10

    invoke-static {v11, v10}, Lorg/concentus/KissFFT;->S_MUL(IS)I

    move-result v10

    aget v7, v3, v7

    aget-short v11, v0, v12

    invoke-static {v7, v11}, Lorg/concentus/KissFFT;->S_MUL(IS)I

    move-result v7

    add-int/2addr v10, v7

    .line 135
    aput v9, p3, v1

    .line 136
    aput v10, p3, v2

    add-int/lit8 v4, v4, 0x2

    mul-int/lit8 v7, p8, 0x2

    add-int/2addr v1, v7

    sub-int/2addr v2, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method
