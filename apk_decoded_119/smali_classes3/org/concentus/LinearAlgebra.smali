.class Lorg/concentus/LinearAlgebra;
.super Ljava/lang/Object;
.source "LinearAlgebra.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static silk_LDL_factorize([III[I[I)V
    .locals 21

    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p2

    move-object/from16 v9, p3

    .line 102
    new-array v10, v8, [I

    .line 104
    new-array v11, v8, [I

    const/16 v0, 0x10

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-gt v8, v0, :cond_0

    move v0, v13

    goto :goto_0

    :cond_0
    move v0, v12

    .line 108
    :goto_0
    invoke-static {v0}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    .line 111
    aget v0, v6, v7

    invoke-static {v8, v8}, Lorg/concentus/Inlines;->silk_SMULBB(II)I

    move-result v1

    add-int/2addr v1, v7

    sub-int/2addr v1, v13

    aget v1, v6, v1

    invoke-static {v0, v1}, Lorg/concentus/Inlines;->silk_ADD_SAT32(II)I

    move-result v0

    const/16 v1, 0x53e3

    invoke-static {v0, v1}, Lorg/concentus/Inlines;->silk_SMMUL(II)I

    move-result v0

    const/16 v1, 0x200

    invoke-static {v0, v1}, Lorg/concentus/Inlines;->silk_max_32(II)I

    move-result v14

    move v15, v12

    move v0, v13

    :goto_1
    if-ge v15, v8, :cond_7

    if-ne v0, v13, :cond_7

    move v0, v12

    :goto_2
    if-ge v0, v8, :cond_6

    .line 116
    invoke-static {v0, v12, v8}, Lorg/concentus/Inlines;->MatrixGetPointer(III)I

    move-result v1

    move v2, v12

    move v3, v2

    :goto_3
    if-ge v2, v0, :cond_1

    .line 119
    aget v4, v11, v2

    add-int v5, v1, v2

    aget v12, v9, v5

    invoke-static {v4, v12}, Lorg/concentus/Inlines;->silk_SMULWW(II)I

    move-result v4

    aput v4, v10, v2

    .line 121
    aget v5, v9, v5

    invoke-static {v3, v4, v5}, Lorg/concentus/Inlines;->silk_SMLAWW(III)I

    move-result v3

    add-int/lit8 v2, v2, 0x1

    const/4 v12, 0x0

    goto :goto_3

    .line 124
    :cond_1
    invoke-static {v6, v7, v0, v0, v8}, Lorg/concentus/Inlines;->MatrixGet([IIIII)I

    move-result v1

    invoke-static {v1, v3}, Lorg/concentus/Inlines;->silk_SUB32(II)I

    move-result v1

    if-ge v1, v14, :cond_3

    add-int/lit8 v0, v15, 0x1

    .line 127
    invoke-static {v0, v14}, Lorg/concentus/Inlines;->silk_SMULBB(II)I

    move-result v0

    invoke-static {v0, v1}, Lorg/concentus/Inlines;->silk_SUB32(II)I

    move-result v12

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v8, :cond_2

    .line 130
    invoke-static {v6, v7, v5, v5, v8}, Lorg/concentus/Inlines;->MatrixGet([IIIII)I

    move-result v0

    invoke-static {v0, v12}, Lorg/concentus/Inlines;->silk_ADD32(II)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move v2, v5

    move v3, v5

    move/from16 v4, p2

    move/from16 v18, v5

    move/from16 v5, v17

    invoke-static/range {v0 .. v5}, Lorg/concentus/Inlines;->MatrixSet([IIIIII)V

    add-int/lit8 v5, v18, 0x1

    goto :goto_4

    :cond_2
    move-object/from16 v20, v10

    move v0, v13

    goto/16 :goto_7

    .line 135
    :cond_3
    aput v1, v11, v0

    const/16 v2, 0x24

    .line 139
    invoke-static {v1, v2}, Lorg/concentus/Inlines;->silk_INVERSE32_varQ(II)I

    move-result v2

    const/4 v3, 0x4

    .line 141
    invoke-static {v2, v3}, Lorg/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v4

    const/high16 v5, 0x1000000

    .line 143
    invoke-static {v1, v4}, Lorg/concentus/Inlines;->silk_SMULWW(II)I

    move-result v1

    invoke-static {v5, v1}, Lorg/concentus/Inlines;->silk_SUB32(II)I

    move-result v1

    .line 145
    invoke-static {v1, v4}, Lorg/concentus/Inlines;->silk_SMULWW(II)I

    move-result v1

    mul-int/lit8 v4, v0, 0x2

    .line 149
    aput v2, p4, v4

    add-int/2addr v4, v13

    .line 150
    aput v1, p4, v4

    const/high16 v4, 0x10000

    .line 152
    invoke-static {v9, v0, v0, v8, v4}, Lorg/concentus/Inlines;->MatrixSet([IIIII)V

    const/4 v4, 0x0

    .line 155
    invoke-static {v0, v4, v8}, Lorg/concentus/Inlines;->MatrixGetPointer(III)I

    move-result v5

    add-int/2addr v5, v7

    add-int/lit8 v12, v0, 0x1

    .line 157
    invoke-static {v12, v4, v8}, Lorg/concentus/Inlines;->MatrixGetPointer(III)I

    move-result v16

    move v4, v12

    :goto_5
    if-ge v4, v8, :cond_5

    const/4 v3, 0x0

    const/4 v13, 0x0

    :goto_6
    if-ge v13, v0, :cond_4

    .line 161
    aget v7, v10, v13

    add-int v19, v16, v13

    move-object/from16 v20, v10

    aget v10, v9, v19

    invoke-static {v3, v7, v10}, Lorg/concentus/Inlines;->silk_SMLAWW(III)I

    move-result v3

    add-int/lit8 v13, v13, 0x1

    move/from16 v7, p1

    move-object/from16 v10, v20

    goto :goto_6

    :cond_4
    move-object/from16 v20, v10

    add-int v7, v5, v4

    .line 164
    aget v7, v6, v7

    invoke-static {v7, v3}, Lorg/concentus/Inlines;->silk_SUB32(II)I

    move-result v3

    .line 168
    invoke-static {v3, v1}, Lorg/concentus/Inlines;->silk_SMMUL(II)I

    move-result v7

    .line 169
    invoke-static {v3, v2}, Lorg/concentus/Inlines;->silk_SMULWW(II)I

    move-result v3

    const/4 v10, 0x4

    invoke-static {v3, v10}, Lorg/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v3

    .line 168
    invoke-static {v7, v3}, Lorg/concentus/Inlines;->silk_ADD32(II)I

    move-result v3

    invoke-static {v9, v4, v0, v8, v3}, Lorg/concentus/Inlines;->MatrixSet([IIIII)V

    add-int v16, v16, v8

    add-int/lit8 v4, v4, 0x1

    move/from16 v7, p1

    move v3, v10

    move-object/from16 v10, v20

    const/4 v13, 0x1

    goto :goto_5

    :cond_5
    move/from16 v7, p1

    move v0, v12

    const/4 v12, 0x0

    goto/16 :goto_2

    :cond_6
    move-object/from16 v20, v10

    const/4 v0, 0x0

    :goto_7
    add-int/lit8 v15, v15, 0x1

    move/from16 v7, p1

    move-object/from16 v10, v20

    const/4 v12, 0x0

    const/4 v13, 0x1

    goto/16 :goto_1

    :cond_7
    move v1, v13

    xor-int/2addr v0, v1

    .line 177
    invoke-static {v0}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    return-void
.end method

.method private static silk_LS_SolveFirst([II[I[I)V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 210
    invoke-static {v1, v0, p1}, Lorg/concentus/Inlines;->MatrixGetPointer(III)I

    move-result v2

    move v3, v0

    move v4, v3

    :goto_1
    if-ge v3, v1, :cond_0

    add-int v5, v2, v3

    .line 213
    aget v5, p0, v5

    aget v6, p3, v3

    invoke-static {v4, v5, v6}, Lorg/concentus/Inlines;->silk_SMLAWW(III)I

    move-result v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 215
    :cond_0
    aget v2, p2, v1

    invoke-static {v2, v4}, Lorg/concentus/Inlines;->silk_SUB32(II)I

    move-result v2

    aput v2, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static silk_LS_SolveLast([II[I[I)V
    .locals 7

    add-int/lit8 v0, p1, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    const/4 v2, 0x0

    .line 231
    invoke-static {v2, v1, p1}, Lorg/concentus/Inlines;->MatrixGetPointer(III)I

    move-result v3

    move v4, v0

    :goto_1
    if-le v4, v1, :cond_0

    .line 234
    invoke-static {v4, p1}, Lorg/concentus/Inlines;->silk_SMULBB(II)I

    move-result v5

    add-int/2addr v5, v3

    aget v5, p0, v5

    aget v6, p3, v4

    invoke-static {v2, v5, v6}, Lorg/concentus/Inlines;->silk_SMLAWW(III)I

    move-result v2

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 236
    :cond_0
    aget v3, p2, v1

    invoke-static {v3, v2}, Lorg/concentus/Inlines;->silk_SUB32(II)I

    move-result v2

    aput v2, p3, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static silk_LS_divide_Q16([I[II)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    mul-int/lit8 v1, v0, 0x2

    .line 190
    aget v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    .line 191
    aget v1, p1, v1

    .line 193
    aget v3, p0, v0

    .line 194
    invoke-static {v3, v1}, Lorg/concentus/Inlines;->silk_SMMUL(II)I

    move-result v1

    invoke-static {v3, v2}, Lorg/concentus/Inlines;->silk_SMULWW(II)I

    move-result v2

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lorg/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v2

    invoke-static {v1, v2}, Lorg/concentus/Inlines;->silk_ADD32(II)I

    move-result v1

    aput v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static silk_solve_LDL([III[I[I)V
    .locals 3

    const/16 v0, 0x10

    if-gt p2, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 44
    :goto_0
    invoke-static {v1}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    mul-int v1, p2, p2

    .line 45
    new-array v1, v1, [I

    .line 46
    new-array v0, v0, [I

    const/16 v2, 0x20

    .line 54
    new-array v2, v2, [I

    .line 62
    invoke-static {p0, p1, p2, v1, v2}, Lorg/concentus/LinearAlgebra;->silk_LDL_factorize([III[I[I)V

    .line 69
    invoke-static {v1, p2, p3, v0}, Lorg/concentus/LinearAlgebra;->silk_LS_SolveFirst([II[I[I)V

    .line 77
    invoke-static {v0, v2, p2}, Lorg/concentus/LinearAlgebra;->silk_LS_divide_Q16([I[II)V

    .line 84
    invoke-static {v1, p2, v0, p4}, Lorg/concentus/LinearAlgebra;->silk_LS_SolveLast([II[I[I)V

    return-void
.end method
