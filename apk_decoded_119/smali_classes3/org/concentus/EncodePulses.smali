.class Lorg/concentus/EncodePulses;
.super Ljava/lang/Object;
.source "EncodePulses.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static combine_and_check([II[IIII)I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p5, :cond_1

    mul-int/lit8 v2, v1, 0x2

    add-int/2addr v2, p3

    .line 53
    aget v3, p2, v2

    const/4 v4, 0x1

    add-int/2addr v2, v4

    aget v2, p2, v2

    add-int/2addr v3, v2

    if-le v3, p4, :cond_0

    return v4

    :cond_0
    add-int v2, p1, v1

    .line 57
    aput v3, p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method static combine_and_check([I[III)I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_1

    mul-int/lit8 v2, v1, 0x2

    .line 76
    aget v3, p1, v2

    const/4 v4, 0x1

    add-int/2addr v2, v4

    aget v2, p1, v2

    add-int/2addr v3, v2

    if-le v3, p2, :cond_0

    return v4

    .line 80
    :cond_0
    aput v3, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method static silk_encode_pulses(Lorg/concentus/EntropyCoder;II[BI)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    const/16 v3, 0x8

    .line 104
    new-array v10, v3, [I

    const/4 v11, 0x0

    .line 109
    invoke-static {v10, v11, v3}, Lorg/concentus/Arrays;->MemSet([III)V

    const/4 v12, 0x1

    .line 119
    invoke-static {v12}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    const/4 v13, 0x4

    .line 120
    invoke-static {v2, v13}, Lorg/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v4

    mul-int/lit8 v5, v4, 0x10

    const/16 v14, 0x10

    if-ge v5, v2, :cond_1

    const/16 v5, 0x78

    if-ne v2, v5, :cond_0

    move v5, v12

    goto :goto_0

    :cond_0
    move v5, v11

    .line 122
    :goto_0
    invoke-static {v5}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    add-int/lit8 v4, v4, 0x1

    .line 125
    invoke-static {v1, v11, v2, v14}, Lorg/concentus/Arrays;->MemSetWithOffset([BBII)V

    :cond_1
    move v15, v4

    mul-int/lit8 v4, v15, 0x10

    .line 129
    new-array v9, v4, [I

    .line 130
    invoke-static {v12}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    move v5, v11

    :goto_1
    if-ge v5, v4, :cond_2

    .line 134
    aget-byte v6, v1, v5

    invoke-static {v6}, Lorg/concentus/Inlines;->silk_abs(I)I

    move-result v6

    aput v6, v9, v5

    add-int/lit8 v6, v5, 0x1

    .line 135
    aget-byte v7, v1, v6

    invoke-static {v7}, Lorg/concentus/Inlines;->silk_abs(I)I

    move-result v7

    aput v7, v9, v6

    add-int/lit8 v6, v5, 0x2

    .line 136
    aget-byte v7, v1, v6

    invoke-static {v7}, Lorg/concentus/Inlines;->silk_abs(I)I

    move-result v7

    aput v7, v9, v6

    add-int/lit8 v6, v5, 0x3

    .line 137
    aget-byte v7, v1, v6

    invoke-static {v7}, Lorg/concentus/Inlines;->silk_abs(I)I

    move-result v7

    aput v7, v9, v6

    add-int/lit8 v5, v5, 0x4

    goto :goto_1

    .line 141
    :cond_2
    new-array v8, v15, [I

    .line 142
    new-array v7, v15, [I

    move v6, v11

    move/from16 v16, v6

    :goto_2
    if-ge v6, v15, :cond_5

    .line 145
    aput v11, v7, v6

    .line 149
    :goto_3
    sget-object v4, Lorg/concentus/SilkTables;->silk_max_pulses_table:[B

    aget-byte v17, v4, v11

    const/16 v18, 0x8

    const/4 v5, 0x0

    move-object v4, v10

    move/from16 v19, v6

    move-object v6, v9

    move-object/from16 v20, v7

    move/from16 v7, v16

    move-object/from16 v21, v8

    move/from16 v8, v17

    move-object v11, v9

    move/from16 v9, v18

    invoke-static/range {v4 .. v9}, Lorg/concentus/EncodePulses;->combine_and_check([II[IIII)I

    move-result v4

    .line 151
    sget-object v5, Lorg/concentus/SilkTables;->silk_max_pulses_table:[B

    aget-byte v5, v5, v12

    invoke-static {v10, v10, v5, v13}, Lorg/concentus/EncodePulses;->combine_and_check([I[III)I

    move-result v5

    add-int/2addr v4, v5

    .line 153
    sget-object v5, Lorg/concentus/SilkTables;->silk_max_pulses_table:[B

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    invoke-static {v10, v10, v5, v6}, Lorg/concentus/EncodePulses;->combine_and_check([I[III)I

    move-result v5

    add-int v18, v4, v5

    .line 155
    sget-object v4, Lorg/concentus/SilkTables;->silk_max_pulses_table:[B

    const/4 v5, 0x3

    aget-byte v8, v4, v5

    const/4 v9, 0x1

    const/4 v7, 0x0

    move-object/from16 v4, v21

    move/from16 v5, v19

    move-object v6, v10

    invoke-static/range {v4 .. v9}, Lorg/concentus/EncodePulses;->combine_and_check([II[IIII)I

    move-result v4

    add-int v18, v18, v4

    if-eqz v18, :cond_4

    .line 159
    aget v4, v20, v19

    add-int/2addr v4, v12

    aput v4, v20, v19

    move/from16 v4, v16

    :goto_4
    add-int/lit8 v5, v16, 0x10

    if-ge v4, v5, :cond_3

    .line 161
    aget v5, v11, v4

    invoke-static {v5, v12}, Lorg/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v5

    aput v5, v11, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_3
    move-object v9, v11

    move/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    const/4 v11, 0x0

    goto :goto_3

    :cond_4
    add-int/lit8 v16, v16, 0x10

    add-int/lit8 v6, v19, 0x1

    move-object v9, v11

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    const/4 v11, 0x0

    goto :goto_2

    :cond_5
    move-object/from16 v20, v7

    move-object/from16 v21, v8

    move-object v11, v9

    const v4, 0x7fffffff

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_5
    const/16 v7, 0x11

    const/16 v8, 0x9

    if-ge v5, v8, :cond_9

    .line 182
    sget-object v8, Lorg/concentus/SilkTables;->silk_pulses_per_block_BITS_Q5:[[S

    aget-object v8, v8, v5

    .line 183
    sget-object v9, Lorg/concentus/SilkTables;->silk_rate_levels_BITS_Q5:[[S

    shr-int/lit8 v10, p1, 0x1

    aget-object v9, v9, v10

    aget-short v9, v9, v5

    const/4 v10, 0x0

    :goto_6
    if-ge v10, v15, :cond_7

    .line 185
    aget v13, v20, v10

    if-lez v13, :cond_6

    .line 186
    aget-short v13, v8, v7

    goto :goto_7

    .line 188
    :cond_6
    aget v13, v21, v10

    aget-short v13, v8, v13

    :goto_7
    add-int/2addr v9, v13

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_7
    if-ge v9, v4, :cond_8

    move v6, v5

    move v4, v9

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 197
    :cond_9
    sget-object v4, Lorg/concentus/SilkTables;->silk_rate_levels_iCDF:[[S

    shr-int/lit8 v5, p1, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v0, v6, v4, v3}, Lorg/concentus/EntropyCoder;->enc_icdf(I[SI)V

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v15, :cond_c

    .line 207
    aget v5, v20, v4

    if-nez v5, :cond_a

    .line 208
    aget v5, v21, v4

    sget-object v9, Lorg/concentus/SilkTables;->silk_pulses_per_block_iCDF:[[S

    aget-object v9, v9, v6

    invoke-virtual {v0, v5, v9, v3}, Lorg/concentus/EntropyCoder;->enc_icdf(I[SI)V

    goto :goto_a

    .line 210
    :cond_a
    sget-object v5, Lorg/concentus/SilkTables;->silk_pulses_per_block_iCDF:[[S

    aget-object v5, v5, v6

    invoke-virtual {v0, v7, v5, v3}, Lorg/concentus/EntropyCoder;->enc_icdf(I[SI)V

    const/4 v5, 0x0

    .line 211
    :goto_9
    aget v9, v20, v4

    sub-int/2addr v9, v12

    if-ge v5, v9, :cond_b

    .line 212
    sget-object v9, Lorg/concentus/SilkTables;->silk_pulses_per_block_iCDF:[[S

    aget-object v9, v9, v8

    invoke-virtual {v0, v7, v9, v3}, Lorg/concentus/EntropyCoder;->enc_icdf(I[SI)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 215
    :cond_b
    aget v5, v21, v4

    sget-object v9, Lorg/concentus/SilkTables;->silk_pulses_per_block_iCDF:[[S

    aget-object v9, v9, v8

    invoke-virtual {v0, v5, v9, v3}, Lorg/concentus/EntropyCoder;->enc_icdf(I[SI)V

    :goto_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_c
    const/4 v4, 0x0

    :goto_b
    if-ge v4, v15, :cond_e

    .line 227
    aget v5, v21, v4

    if-lez v5, :cond_d

    mul-int/lit8 v5, v4, 0x10

    .line 228
    invoke-static {v0, v11, v5}, Lorg/concentus/ShellCoder;->silk_shell_encoder(Lorg/concentus/EntropyCoder;[II)V

    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_e
    const/4 v4, 0x0

    :goto_c
    if-ge v4, v15, :cond_11

    .line 240
    aget v5, v20, v4

    if-lez v5, :cond_10

    mul-int/lit8 v6, v4, 0x10

    add-int/lit8 v5, v5, -0x1

    const/4 v7, 0x0

    :goto_d
    if-ge v7, v14, :cond_10

    add-int v8, v6, v7

    .line 244
    aget-byte v8, v1, v8

    invoke-static {v8}, Lorg/concentus/Inlines;->silk_abs(I)I

    move-result v8

    int-to-byte v8, v8

    move v9, v5

    :goto_e
    if-lez v9, :cond_f

    .line 246
    invoke-static {v8, v9}, Lorg/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v10

    and-int/2addr v10, v12

    .line 247
    sget-object v11, Lorg/concentus/SilkTables;->silk_lsb_iCDF:[S

    invoke-virtual {v0, v10, v11, v3}, Lorg/concentus/EntropyCoder;->enc_icdf(I[SI)V

    add-int/lit8 v9, v9, -0x1

    goto :goto_e

    :cond_f
    and-int/lit8 v8, v8, 0x1

    .line 250
    sget-object v9, Lorg/concentus/SilkTables;->silk_lsb_iCDF:[S

    invoke-virtual {v0, v8, v9, v3}, Lorg/concentus/EntropyCoder;->enc_icdf(I[SI)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    :cond_10
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_11
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, v21

    .line 262
    invoke-static/range {v0 .. v5}, Lorg/concentus/CodeSigns;->silk_encode_signs(Lorg/concentus/EntropyCoder;[BIII[I)V

    return-void
.end method
