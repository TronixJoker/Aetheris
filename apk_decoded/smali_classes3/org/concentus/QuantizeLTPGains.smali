.class Lorg/concentus/QuantizeLTPGains;
.super Ljava/lang/Object;
.source "QuantizeLTPGains.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static silk_quant_LTP_gains([S[BLorg/concentus/BoxedValueByte;Lorg/concentus/BoxedValueInt;[IIII)V
    .locals 34

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p7

    const/4 v4, 0x4

    .line 47
    new-array v4, v4, [B

    const v5, 0x7fffffff

    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    :goto_0
    const/4 v9, 0x3

    if-ge v7, v9, :cond_3

    .line 71
    sget-object v9, Lorg/concentus/SilkTables;->silk_LTP_gain_BITS_Q5_ptrs:[[S

    aget-object v9, v9, v7

    .line 72
    sget-object v11, Lorg/concentus/SilkTables;->silk_LTP_vq_ptrs_Q7:[[[B

    aget-object v24, v11, v7

    .line 73
    sget-object v11, Lorg/concentus/SilkTables;->silk_LTP_vq_gain_ptrs_Q7:[[S

    aget-object v25, v11, v7

    .line 74
    sget-object v11, Lorg/concentus/SilkTables;->silk_LTP_vq_sizes:[B

    aget-byte v26, v11, v7

    .line 81
    iget v11, v2, Lorg/concentus/BoxedValueInt;->Val:I

    move v13, v6

    move v14, v13

    move/from16 v27, v14

    move/from16 v28, v27

    move v15, v11

    :goto_1
    if-ge v14, v3, :cond_0

    rsub-int v11, v15, 0x1855

    .line 83
    invoke-static {v11}, Lorg/concentus/Inlines;->silk_log2lin(I)I

    move-result v11

    const/16 v29, 0x33

    add-int/lit8 v22, v11, -0x33

    .line 86
    new-instance v12, Lorg/concentus/BoxedValueByte;

    aget-byte v11, v4, v14

    invoke-direct {v12, v11}, Lorg/concentus/BoxedValueByte;-><init>(B)V

    .line 87
    new-instance v11, Lorg/concentus/BoxedValueInt;

    invoke-direct {v11, v6}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    .line 88
    new-instance v10, Lorg/concentus/BoxedValueInt;

    invoke-direct {v10, v6}, Lorg/concentus/BoxedValueInt;-><init>(I)V

    move-object/from16 v30, v11

    move-object v11, v12

    move-object v6, v12

    move-object/from16 v12, v30

    move/from16 v31, v8

    move v8, v13

    move-object v13, v10

    move/from16 v32, v14

    move-object/from16 v14, p0

    move/from16 v33, v15

    move/from16 v15, v27

    move-object/from16 v16, p4

    move/from16 v17, v28

    move-object/from16 v18, v24

    move-object/from16 v19, v25

    move-object/from16 v20, v9

    move/from16 v21, p5

    move/from16 v23, v26

    .line 89
    invoke-static/range {v11 .. v23}, Lorg/concentus/VQ_WMat_EC;->silk_VQ_WMat_EC(Lorg/concentus/BoxedValueByte;Lorg/concentus/BoxedValueInt;Lorg/concentus/BoxedValueInt;[SI[II[[B[S[SIII)V

    move-object/from16 v11, v30

    .line 104
    iget v11, v11, Lorg/concentus/BoxedValueInt;->Val:I

    .line 105
    iget v10, v10, Lorg/concentus/BoxedValueInt;->Val:I

    .line 106
    iget-byte v6, v6, Lorg/concentus/BoxedValueByte;->Val:B

    aput-byte v6, v4, v32

    .line 108
    invoke-static {v8, v11}, Lorg/concentus/Inlines;->silk_ADD_POS_SAT32(II)I

    move-result v13

    add-int v29, v29, v10

    .line 110
    invoke-static/range {v29 .. v29}, Lorg/concentus/Inlines;->silk_lin2log(I)I

    move-result v6

    add-int v15, v33, v6

    add-int/lit16 v15, v15, -0x380

    const/4 v6, 0x0

    .line 109
    invoke-static {v6, v15}, Lorg/concentus/Inlines;->silk_max(II)I

    move-result v15

    const/4 v6, 0x5

    add-int/lit8 v27, v27, 0x5

    add-int/lit8 v28, v28, 0x19

    add-int/lit8 v14, v32, 0x1

    move/from16 v8, v31

    const/4 v6, 0x0

    goto :goto_1

    :cond_0
    move/from16 v31, v8

    move v8, v13

    move/from16 v33, v15

    const v6, 0x7ffffffe

    .line 117
    invoke-static {v6, v8}, Lorg/concentus/Inlines;->silk_min(II)I

    move-result v6

    if-ge v6, v5, :cond_1

    int-to-byte v5, v7

    .line 121
    iput-byte v5, v1, Lorg/concentus/BoxedValueByte;->Val:B

    const/4 v8, 0x0

    .line 122
    invoke-static {v4, v8, v0, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v5, v6

    move/from16 v31, v33

    goto :goto_2

    :cond_1
    const/4 v8, 0x0

    :goto_2
    if-eqz p6, :cond_2

    const/16 v9, 0x3010

    if-ge v6, v9, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v7, v7, 0x1

    move v6, v8

    move/from16 v8, v31

    goto/16 :goto_0

    :cond_3
    move/from16 v31, v8

    move v8, v6

    :goto_3
    move/from16 v4, v31

    .line 132
    sget-object v5, Lorg/concentus/SilkTables;->silk_LTP_vq_ptrs_Q7:[[[B

    iget-byte v1, v1, Lorg/concentus/BoxedValueByte;->Val:B

    aget-object v1, v5, v1

    move v6, v8

    :goto_4
    if-ge v6, v3, :cond_5

    move v5, v8

    const/4 v7, 0x5

    :goto_5
    if-ge v5, v7, :cond_4

    mul-int/lit8 v9, v6, 0x5

    add-int/2addr v9, v5

    .line 135
    aget-byte v10, v0, v6

    aget-object v10, v1, v10

    aget-byte v10, v10, v5

    const/4 v11, 0x7

    invoke-static {v10, v11}, Lorg/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v10

    int-to-short v10, v10

    aput-short v10, p0, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 139
    :cond_5
    iput v4, v2, Lorg/concentus/BoxedValueInt;->Val:I

    return-void
.end method
