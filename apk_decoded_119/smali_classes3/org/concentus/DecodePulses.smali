.class Lorg/concentus/DecodePulses;
.super Ljava/lang/Object;
.source "DecodePulses.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static silk_decode_pulses(Lorg/concentus/EntropyCoder;[SIII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    const/16 v3, 0x14

    .line 51
    new-array v5, v3, [I

    .line 52
    new-array v3, v3, [I

    .line 62
    sget-object v4, Lorg/concentus/SilkTables;->silk_rate_levels_iCDF:[[S

    shr-int/lit8 v6, p2, 0x1

    aget-object v4, v4, v6

    const/16 v6, 0x8

    invoke-virtual {v0, v4, v6}, Lorg/concentus/EntropyCoder;->dec_icdf([SI)I

    move-result v4

    const/4 v7, 0x1

    .line 65
    invoke-static {v7}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    const/4 v8, 0x4

    .line 66
    invoke-static {v2, v8}, Lorg/concentus/Inlines;->silk_RSHIFT(II)I

    move-result v8

    mul-int/lit8 v9, v8, 0x10

    const/4 v10, 0x0

    if-ge v9, v2, :cond_1

    const/16 v9, 0x78

    if-ne v2, v9, :cond_0

    move v9, v7

    goto :goto_0

    :cond_0
    move v9, v10

    .line 68
    :goto_0
    invoke-static {v9}, Lorg/concentus/Inlines;->OpusAssert(Z)V

    add-int/lit8 v8, v8, 0x1

    :cond_1
    move v9, v10

    :goto_1
    if-ge v9, v8, :cond_4

    .line 81
    aput v10, v3, v9

    .line 82
    sget-object v11, Lorg/concentus/SilkTables;->silk_pulses_per_block_iCDF:[[S

    aget-object v11, v11, v4

    invoke-virtual {v0, v11, v6}, Lorg/concentus/EntropyCoder;->dec_icdf([SI)I

    move-result v11

    aput v11, v5, v9

    .line 85
    :goto_2
    aget v11, v5, v9

    const/16 v12, 0x11

    if-ne v11, v12, :cond_3

    .line 86
    aget v11, v3, v9

    add-int/2addr v11, v7

    aput v11, v3, v9

    .line 88
    sget-object v11, Lorg/concentus/SilkTables;->silk_pulses_per_block_iCDF:[[S

    const/16 v12, 0x9

    aget-object v11, v11, v12

    .line 89
    aget v12, v3, v9

    const/16 v13, 0xa

    if-ne v12, v13, :cond_2

    move v12, v7

    goto :goto_3

    :cond_2
    move v12, v10

    .line 88
    :goto_3
    invoke-virtual {v0, v11, v12, v6}, Lorg/concentus/EntropyCoder;->dec_icdf([SII)I

    move-result v11

    aput v11, v5, v9

    goto :goto_2

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    move v4, v10

    :goto_4
    const/16 v9, 0x10

    if-ge v4, v8, :cond_6

    .line 101
    aget v11, v5, v4

    if-lez v11, :cond_5

    .line 102
    invoke-static {v4, v9}, Lorg/concentus/Inlines;->silk_SMULBB(II)I

    move-result v9

    aget v11, v5, v4

    invoke-static {v1, v9, v0, v11}, Lorg/concentus/ShellCoder;->silk_shell_decoder([SILorg/concentus/EntropyCoder;I)V

    goto :goto_5

    .line 104
    :cond_5
    invoke-static {v4, v9}, Lorg/concentus/Inlines;->silk_SMULBB(II)I

    move-result v11

    invoke-static {v1, v10, v11, v9}, Lorg/concentus/Arrays;->MemSetWithOffset([SSII)V

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_6
    move v4, v10

    :goto_6
    if-ge v4, v8, :cond_a

    .line 116
    aget v11, v3, v4

    if-lez v11, :cond_9

    .line 118
    invoke-static {v4, v9}, Lorg/concentus/Inlines;->silk_SMULBB(II)I

    move-result v12

    move v13, v10

    :goto_7
    if-ge v13, v9, :cond_8

    add-int v14, v12, v13

    .line 120
    aget-short v15, v1, v14

    move v9, v10

    :goto_8
    if-ge v9, v11, :cond_7

    .line 122
    invoke-static {v15, v7}, Lorg/concentus/Inlines;->silk_LSHIFT(II)I

    move-result v15

    .line 123
    sget-object v7, Lorg/concentus/SilkTables;->silk_lsb_iCDF:[S

    invoke-virtual {v0, v7, v6}, Lorg/concentus/EntropyCoder;->dec_icdf([SI)I

    move-result v7

    add-int/2addr v15, v7

    add-int/lit8 v9, v9, 0x1

    const/4 v7, 0x1

    goto :goto_8

    :cond_7
    int-to-short v7, v15

    .line 125
    aput-short v7, v1, v14

    add-int/lit8 v13, v13, 0x1

    const/4 v7, 0x1

    const/16 v9, 0x10

    goto :goto_7

    .line 128
    :cond_8
    aget v7, v5, v4

    shl-int/lit8 v9, v11, 0x5

    or-int/2addr v7, v9

    aput v7, v5, v4

    :cond_9
    add-int/lit8 v4, v4, 0x1

    const/4 v7, 0x1

    const/16 v9, 0x10

    goto :goto_6

    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, p2

    move/from16 v4, p3

    .line 139
    invoke-static/range {v0 .. v5}, Lorg/concentus/CodeSigns;->silk_decode_signs(Lorg/concentus/EntropyCoder;[SIII[I)V

    return-void
.end method
