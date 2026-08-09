.class public final Landroidx/compose/material3/DynamicTonalPaletteKt;
.super Ljava/lang/Object;
.source "DynamicTonalPalette.android.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDynamicTonalPalette.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DynamicTonalPalette.android.kt\nandroidx/compose/material3/DynamicTonalPaletteKt\n+ 2 Color.kt\nandroidx/compose/ui/graphics/Color\n*L\n1#1,530:1\n235#2:531\n239#2:532\n*S KotlinDebug\n*F\n+ 1 DynamicTonalPalette.android.kt\nandroidx/compose/material3/DynamicTonalPaletteKt\n*L\n266#1:531\n267#1:532\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0002\u001a\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007\u001a\u0010\u0010\u0008\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nH\u0001\u001a\u0010\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0001\u001a\u0010\u0010\u000c\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007\u001a\u0010\u0010\r\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nH\u0001\u001a\u0010\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0001\u001a\u0010\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0006\u001a\u00020\u0007H\u0001\u001a\u0010\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u0003H\u0002\u001a \u0010\u0012\u001a\u00020\u0013*\u00020\u00132\u0008\u0008\u0001\u0010\u0014\u001a\u00020\u0003H\u0000\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0015\u0010\u0016\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\u0017"
    }
    d2 = {
        "delinearized",
        "",
        "rgbComponent",
        "",
        "dynamicDarkColorScheme",
        "Landroidx/compose/material3/ColorScheme;",
        "context",
        "Landroid/content/Context;",
        "dynamicDarkColorScheme31",
        "tonalPalette",
        "Landroidx/compose/material3/TonalPalette;",
        "dynamicDarkColorScheme34",
        "dynamicLightColorScheme",
        "dynamicLightColorScheme31",
        "dynamicLightColorScheme34",
        "dynamicTonalPalette",
        "labInvf",
        "ft",
        "setLuminance",
        "Landroidx/compose/ui/graphics/Color;",
        "newLuminance",
        "setLuminance-DxMtmZc",
        "(JF)J",
        "material3_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private static final delinearized(F)I
    .locals 4

    const/16 v0, 0x64

    int-to-float v0, v0

    div-float/2addr p0, v0

    float-to-double v0, p0

    const-wide v2, 0x3f69a5c37387b719L    # 0.0031308

    cmpg-double p0, v0, v2

    if-gtz p0, :cond_0

    const-wide v2, 0x4029d70a3d70a3d7L    # 12.92

    mul-double/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide v2, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    .line 299
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide v2, 0x3ff0e147ae147ae1L    # 1.055

    mul-double/2addr v0, v2

    const-wide v2, 0x3fac28f5c28f5c29L    # 0.055

    sub-double/2addr v0, v2

    :goto_0
    const-wide v2, 0x406fe00000000000L    # 255.0

    mul-double/2addr v0, v2

    .line 301
    invoke-static {v0, v1}, Lkotlin/math/MathKt;->roundToInt(D)I

    move-result p0

    const/4 v0, 0x0

    const/16 v1, 0xff

    invoke-static {p0, v0, v1}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result p0

    return p0
.end method

.method public static final dynamicDarkColorScheme(Landroid/content/Context;)Landroidx/compose/material3/ColorScheme;
    .locals 2

    .line 226
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    .line 228
    invoke-static {p0}, Landroidx/compose/material3/DynamicTonalPaletteKt;->dynamicDarkColorScheme34(Landroid/content/Context;)Landroidx/compose/material3/ColorScheme;

    move-result-object p0

    goto :goto_0

    .line 232
    :cond_0
    invoke-static {p0}, Landroidx/compose/material3/DynamicTonalPaletteKt;->dynamicTonalPalette(Landroid/content/Context;)Landroidx/compose/material3/TonalPalette;

    move-result-object p0

    .line 233
    invoke-static {p0}, Landroidx/compose/material3/DynamicTonalPaletteKt;->dynamicDarkColorScheme31(Landroidx/compose/material3/TonalPalette;)Landroidx/compose/material3/ColorScheme;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final dynamicDarkColorScheme31(Landroidx/compose/material3/TonalPalette;)Landroidx/compose/material3/ColorScheme;
    .locals 75

    .line 422
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/TonalPalette;->getPrimary80-0d7_KjU()J

    move-result-wide v0

    .line 423
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/TonalPalette;->getPrimary20-0d7_KjU()J

    move-result-wide v2

    .line 424
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/TonalPalette;->getPrimary30-0d7_KjU()J

    move-result-wide v4

    .line 425
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/TonalPalette;->getPrimary90-0d7_KjU()J

    move-result-wide v6

    .line 426
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/TonalPalette;->getPrimary40-0d7_KjU()J

    move-result-wide v8

    .line 427
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/TonalPalette;->getSecondary80-0d7_KjU()J

    move-result-wide v10

    .line 428
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/TonalPalette;->getSecondary20-0d7_KjU()J

    move-result-wide v12

    .line 429
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/TonalPalette;->getSecondary30-0d7_KjU()J

    move-result-wide v14

    .line 430
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/TonalPalette;->getSecondary90-0d7_KjU()J

    move-result-wide v16

    .line 431
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/TonalPalette;->getTertiary80-0d7_KjU()J

    move-result-wide v18

    .line 432
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/TonalPalette;->getTertiary20-0d7_KjU()J

    move-result-wide v20

    .line 433
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/TonalPalette;->getTertiary30-0d7_KjU()J

    move-result-wide v22

    .line 434
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/TonalPalette;->getTertiary90-0d7_KjU()J

    move-result-wide v24

    .line 435
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/TonalPalette;->getNeutralVariant6-0d7_KjU()J

    move-result-wide v26

    .line 436
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/TonalPalette;->getNeutralVariant90-0d7_KjU()J

    move-result-wide v28

    .line 437
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/TonalPalette;->getNeutralVariant6-0d7_KjU()J

    move-result-wide v30

    .line 438
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/TonalPalette;->getNeutralVariant90-0d7_KjU()J

    move-result-wide v32

    .line 439
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/TonalPalette;->getNeutralVariant30-0d7_KjU()J

    move-result-wide v34

    .line 440
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/TonalPalette;->getNeutralVariant80-0d7_KjU()J

    move-result-wide v36

    .line 441
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/TonalPalette;->getNeutralVariant90-0d7_KjU()J

    move-result-wide v40

    .line 442
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/TonalPalette;->getNeutralVariant20-0d7_KjU()J

    move-result-wide v42

    .line 443
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/TonalPalette;->getNeutralVariant60-0d7_KjU()J

    move-result-wide v52

    .line 444
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/TonalPalette;->getNeutralVariant30-0d7_KjU()J

    move-result-wide v54

    .line 445
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/TonalPalette;->getNeutralVariant0-0d7_KjU()J

    move-result-wide v56

    .line 446
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/TonalPalette;->getNeutralVariant24-0d7_KjU()J

    move-result-wide v58

    .line 447
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/TonalPalette;->getNeutralVariant6-0d7_KjU()J

    move-result-wide v70

    .line 448
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/TonalPalette;->getNeutralVariant12-0d7_KjU()J

    move-result-wide v60

    .line 449
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/TonalPalette;->getNeutralVariant17-0d7_KjU()J

    move-result-wide v62

    .line 450
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/TonalPalette;->getNeutralVariant22-0d7_KjU()J

    move-result-wide v64

    .line 451
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/TonalPalette;->getNeutralVariant10-0d7_KjU()J

    move-result-wide v66

    .line 452
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/TonalPalette;->getNeutralVariant4-0d7_KjU()J

    move-result-wide v68

    .line 453
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/TonalPalette;->getPrimary80-0d7_KjU()J

    move-result-wide v38

    const/16 v73, 0x0

    const/16 v74, 0x0

    const-wide/16 v44, 0x0

    const-wide/16 v46, 0x0

    const-wide/16 v48, 0x0

    const-wide/16 v50, 0x0

    const/high16 v72, 0x3c00000

    .line 421
    invoke-static/range {v0 .. v74}, Landroidx/compose/material3/ColorSchemeKt;->darkColorScheme-C-Xl9yA$default(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJIILjava/lang/Object;)Landroidx/compose/material3/ColorScheme;

    move-result-object v0

    return-object v0
.end method

.method public static final dynamicDarkColorScheme34(Landroid/content/Context;)Landroidx/compose/material3/ColorScheme;
    .locals 78

    move-object/from16 v0, p0

    .line 459
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x106008b

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v3

    .line 460
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v5, 0x106008c

    invoke-virtual {v1, v0, v5}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v5

    .line 462
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v7, 0x1060089

    invoke-virtual {v1, v0, v7}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v7

    .line 464
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v9, 0x106008a

    invoke-virtual {v1, v0, v9}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v9

    .line 466
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v11, 0x1060060

    invoke-virtual {v1, v0, v11}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v11

    .line 467
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v13, 0x106008f

    invoke-virtual {v1, v0, v13}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v13

    .line 469
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v15, 0x1060090

    invoke-virtual {v1, v0, v15}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v15

    .line 471
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x106008d

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v17

    .line 473
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x106008e

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v19

    .line 477
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x1060093

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v21

    .line 478
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x1060094

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v23

    .line 480
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x1060091

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v25

    .line 482
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x1060092

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v27

    .line 486
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x1060095

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v29

    .line 488
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x1060096

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v31

    .line 489
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x1060097

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v33

    .line 490
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x1060098

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v35

    .line 492
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x10600a0

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v37

    .line 494
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x10600a1

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v39

    .line 496
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x106006c

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v43

    .line 498
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x106006d

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v45

    .line 499
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x10600a2

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v55

    .line 501
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x10600c1

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v57

    .line 504
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x106009e

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v61

    .line 505
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x106009f

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v73

    .line 507
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x106009b

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v63

    .line 509
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x106009c

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v65

    .line 514
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x106009d

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v67

    .line 519
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x1060099

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v69

    .line 524
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x106009a

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v71

    .line 528
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x106008b

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v41

    const/16 v76, 0x0

    const/16 v77, 0x0

    const-wide/16 v47, 0x0

    const-wide/16 v49, 0x0

    const-wide/16 v51, 0x0

    const-wide/16 v53, 0x0

    const-wide/16 v59, 0x0

    const/high16 v75, 0x13c00000

    .line 458
    invoke-static/range {v3 .. v77}, Landroidx/compose/material3/ColorSchemeKt;->darkColorScheme-C-Xl9yA$default(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJIILjava/lang/Object;)Landroidx/compose/material3/ColorScheme;

    move-result-object v0

    return-object v0
.end method

.method public static final dynamicLightColorScheme(Landroid/content/Context;)Landroidx/compose/material3/ColorScheme;
    .locals 2

    .line 204
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    .line 206
    invoke-static {p0}, Landroidx/compose/material3/DynamicTonalPaletteKt;->dynamicLightColorScheme34(Landroid/content/Context;)Landroidx/compose/material3/ColorScheme;

    move-result-object p0

    goto :goto_0

    .line 210
    :cond_0
    invoke-static {p0}, Landroidx/compose/material3/DynamicTonalPaletteKt;->dynamicTonalPalette(Landroid/content/Context;)Landroidx/compose/material3/TonalPalette;

    move-result-object p0

    .line 211
    invoke-static {p0}, Landroidx/compose/material3/DynamicTonalPaletteKt;->dynamicLightColorScheme31(Landroidx/compose/material3/TonalPalette;)Landroidx/compose/material3/ColorScheme;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final dynamicLightColorScheme31(Landroidx/compose/material3/TonalPalette;)Landroidx/compose/material3/ColorScheme;
    .locals 75

    .line 307
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/TonalPalette;->getPrimary40-0d7_KjU()J

    move-result-wide v0

    .line 308
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/TonalPalette;->getPrimary100-0d7_KjU()J

    move-result-wide v2

    .line 309
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/TonalPalette;->getPrimary90-0d7_KjU()J

    move-result-wide v4

    .line 310
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/TonalPalette;->getPrimary10-0d7_KjU()J

    move-result-wide v6

    .line 311
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/TonalPalette;->getPrimary80-0d7_KjU()J

    move-result-wide v8

    .line 312
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/TonalPalette;->getSecondary40-0d7_KjU()J

    move-result-wide v10

    .line 313
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/TonalPalette;->getSecondary100-0d7_KjU()J

    move-result-wide v12

    .line 314
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/TonalPalette;->getSecondary90-0d7_KjU()J

    move-result-wide v14

    .line 315
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/TonalPalette;->getSecondary10-0d7_KjU()J

    move-result-wide v16

    .line 316
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/TonalPalette;->getTertiary40-0d7_KjU()J

    move-result-wide v18

    .line 317
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/TonalPalette;->getTertiary100-0d7_KjU()J

    move-result-wide v20

    .line 318
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/TonalPalette;->getTertiary90-0d7_KjU()J

    move-result-wide v22

    .line 319
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/TonalPalette;->getTertiary10-0d7_KjU()J

    move-result-wide v24

    .line 320
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/TonalPalette;->getNeutralVariant98-0d7_KjU()J

    move-result-wide v26

    .line 321
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/TonalPalette;->getNeutralVariant10-0d7_KjU()J

    move-result-wide v28

    .line 322
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/TonalPalette;->getNeutralVariant98-0d7_KjU()J

    move-result-wide v30

    .line 323
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/TonalPalette;->getNeutralVariant10-0d7_KjU()J

    move-result-wide v32

    .line 324
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/TonalPalette;->getNeutralVariant90-0d7_KjU()J

    move-result-wide v34

    .line 325
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/TonalPalette;->getNeutralVariant30-0d7_KjU()J

    move-result-wide v36

    .line 326
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/TonalPalette;->getNeutralVariant20-0d7_KjU()J

    move-result-wide v40

    .line 327
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/TonalPalette;->getNeutralVariant95-0d7_KjU()J

    move-result-wide v42

    .line 328
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/TonalPalette;->getNeutralVariant50-0d7_KjU()J

    move-result-wide v52

    .line 329
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/TonalPalette;->getNeutralVariant80-0d7_KjU()J

    move-result-wide v54

    .line 330
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/TonalPalette;->getNeutralVariant0-0d7_KjU()J

    move-result-wide v56

    .line 331
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/TonalPalette;->getNeutralVariant98-0d7_KjU()J

    move-result-wide v58

    .line 332
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/TonalPalette;->getNeutralVariant87-0d7_KjU()J

    move-result-wide v70

    .line 333
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/TonalPalette;->getNeutralVariant94-0d7_KjU()J

    move-result-wide v60

    .line 334
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/TonalPalette;->getNeutralVariant92-0d7_KjU()J

    move-result-wide v62

    .line 335
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/TonalPalette;->getNeutralVariant90-0d7_KjU()J

    move-result-wide v64

    .line 336
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/TonalPalette;->getNeutralVariant96-0d7_KjU()J

    move-result-wide v66

    .line 337
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/TonalPalette;->getNeutralVariant100-0d7_KjU()J

    move-result-wide v68

    .line 338
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/TonalPalette;->getPrimary40-0d7_KjU()J

    move-result-wide v38

    const/16 v73, 0x0

    const/16 v74, 0x0

    const-wide/16 v44, 0x0

    const-wide/16 v46, 0x0

    const-wide/16 v48, 0x0

    const-wide/16 v50, 0x0

    const/high16 v72, 0x3c00000

    .line 306
    invoke-static/range {v0 .. v74}, Landroidx/compose/material3/ColorSchemeKt;->lightColorScheme-C-Xl9yA$default(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJIILjava/lang/Object;)Landroidx/compose/material3/ColorScheme;

    move-result-object v0

    return-object v0
.end method

.method public static final dynamicLightColorScheme34(Landroid/content/Context;)Landroidx/compose/material3/ColorScheme;
    .locals 78

    move-object/from16 v0, p0

    .line 344
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x1060060

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v3

    .line 345
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v5, 0x1060061

    invoke-virtual {v1, v0, v5}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v5

    .line 347
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v7, 0x106005e

    invoke-virtual {v1, v0, v7}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v7

    .line 349
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v9, 0x106005f

    invoke-virtual {v1, v0, v9}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v9

    .line 353
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v11, 0x106008b

    invoke-virtual {v1, v0, v11}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v11

    .line 354
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v13, 0x1060064

    invoke-virtual {v1, v0, v13}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v13

    .line 356
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v15, 0x1060065

    invoke-virtual {v1, v0, v15}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v15

    .line 358
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x1060062

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v17

    .line 360
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x1060063

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v19

    .line 364
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x1060068

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v21

    .line 366
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x1060069

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v23

    .line 368
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x1060066

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v25

    .line 370
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x1060067

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v27

    .line 374
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x106006a

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v29

    .line 376
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x106006b

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v31

    .line 377
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x106006c

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v33

    .line 378
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x106006d

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v35

    .line 380
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x1060075

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v37

    .line 382
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x1060076

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v39

    .line 383
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x1060097

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v43

    .line 385
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x1060098

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v45

    .line 386
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x1060077

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v55

    .line 388
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x10600c0

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v57

    .line 391
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x1060073

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v61

    .line 393
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x1060074

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v73

    .line 395
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x1060070

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v63

    .line 397
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x1060071

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v65

    .line 402
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x1060072

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v67

    .line 407
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x106006e

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v69

    .line 412
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x106006f

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v71

    .line 416
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x1060060

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v41

    const/16 v76, 0x0

    const/16 v77, 0x0

    const-wide/16 v47, 0x0

    const-wide/16 v49, 0x0

    const-wide/16 v51, 0x0

    const-wide/16 v53, 0x0

    const-wide/16 v59, 0x0

    const/high16 v75, 0x13c00000

    .line 343
    invoke-static/range {v3 .. v77}, Landroidx/compose/material3/ColorSchemeKt;->lightColorScheme-C-Xl9yA$default(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJIILjava/lang/Object;)Landroidx/compose/material3/ColorScheme;

    move-result-object v0

    return-object v0
.end method

.method public static final dynamicTonalPalette(Landroid/content/Context;)Landroidx/compose/material3/TonalPalette;
    .locals 183

    move-object/from16 v0, p0

    .line 36
    new-instance v177, Landroidx/compose/material3/TonalPalette;

    move-object/from16 v1, v177

    .line 38
    sget-object v2, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v3, 0x106001d

    invoke-virtual {v2, v0, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v2

    .line 39
    sget-object v4, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v5, 0x106001e

    invoke-virtual {v4, v0, v5}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v4

    .line 41
    sget-object v6, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v14, 0x1060025

    invoke-virtual {v6, v0, v14}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v6

    const/high16 v15, 0x42c40000    # 98.0f

    .line 42
    invoke-static {v6, v7, v15}, Landroidx/compose/material3/DynamicTonalPaletteKt;->setLuminance-DxMtmZc(JF)J

    move-result-wide v6

    .line 44
    sget-object v8, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    invoke-virtual {v8, v0, v14}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v8

    const/high16 v12, 0x42c00000    # 96.0f

    .line 45
    invoke-static {v8, v9, v12}, Landroidx/compose/material3/DynamicTonalPaletteKt;->setLuminance-DxMtmZc(JF)J

    move-result-wide v8

    .line 46
    sget-object v10, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v11, 0x106001f

    invoke-virtual {v10, v0, v11}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v10

    .line 48
    sget-object v13, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    invoke-virtual {v13, v0, v14}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v12

    const/high16 v14, 0x42bc0000    # 94.0f

    .line 49
    invoke-static {v12, v13, v14}, Landroidx/compose/material3/DynamicTonalPaletteKt;->setLuminance-DxMtmZc(JF)J

    move-result-wide v12

    move-object/from16 v178, v1

    const/high16 v1, 0x42c00000    # 96.0f

    .line 51
    sget-object v14, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    move-wide/from16 v179, v2

    const v15, 0x1060025

    invoke-virtual {v14, v0, v15}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v1

    const/high16 v14, 0x42b80000    # 92.0f

    .line 52
    invoke-static {v1, v2, v14}, Landroidx/compose/material3/DynamicTonalPaletteKt;->setLuminance-DxMtmZc(JF)J

    move-result-wide v1

    move v3, v15

    move-wide v14, v1

    .line 53
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x1060020

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v16

    .line 55
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    invoke-virtual {v1, v0, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v1

    const/high16 v3, 0x42ae0000    # 87.0f

    .line 56
    invoke-static {v1, v2, v3}, Landroidx/compose/material3/DynamicTonalPaletteKt;->setLuminance-DxMtmZc(JF)J

    move-result-wide v18

    .line 57
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x1060021

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v20

    .line 58
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x1060022

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v22

    .line 59
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x1060023

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v24

    .line 60
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x1060024

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v26

    .line 61
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x1060025

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v28

    .line 62
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v3, 0x1060026

    invoke-virtual {v1, v0, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v30

    .line 64
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    move-wide/from16 v181, v4

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v3

    const/high16 v1, 0x41c00000    # 24.0f

    .line 65
    invoke-static {v3, v4, v1}, Landroidx/compose/material3/DynamicTonalPaletteKt;->setLuminance-DxMtmZc(JF)J

    move-result-wide v32

    .line 67
    sget-object v3, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    invoke-virtual {v3, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v3

    const/high16 v5, 0x41b00000    # 22.0f

    .line 68
    invoke-static {v3, v4, v5}, Landroidx/compose/material3/DynamicTonalPaletteKt;->setLuminance-DxMtmZc(JF)J

    move-result-wide v34

    .line 69
    sget-object v3, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v4, 0x1060027

    invoke-virtual {v3, v0, v4}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v36

    .line 71
    sget-object v3, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    invoke-virtual {v3, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v3

    const/high16 v5, 0x41880000    # 17.0f

    .line 72
    invoke-static {v3, v4, v5}, Landroidx/compose/material3/DynamicTonalPaletteKt;->setLuminance-DxMtmZc(JF)J

    move-result-wide v38

    .line 74
    sget-object v3, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    invoke-virtual {v3, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v3

    const/high16 v5, 0x41400000    # 12.0f

    .line 75
    invoke-static {v3, v4, v5}, Landroidx/compose/material3/DynamicTonalPaletteKt;->setLuminance-DxMtmZc(JF)J

    move-result-wide v40

    .line 76
    sget-object v3, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v4, 0x1060028

    invoke-virtual {v3, v0, v4}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v42

    .line 78
    sget-object v3, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    invoke-virtual {v3, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v3

    const/high16 v5, 0x40c00000    # 6.0f

    .line 79
    invoke-static {v3, v4, v5}, Landroidx/compose/material3/DynamicTonalPaletteKt;->setLuminance-DxMtmZc(JF)J

    move-result-wide v44

    .line 81
    sget-object v3, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    invoke-virtual {v3, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v2

    const/high16 v4, 0x40800000    # 4.0f

    .line 82
    invoke-static {v2, v3, v4}, Landroidx/compose/material3/DynamicTonalPaletteKt;->setLuminance-DxMtmZc(JF)J

    move-result-wide v46

    .line 83
    sget-object v2, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v3, 0x1060029

    invoke-virtual {v2, v0, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v48

    .line 88
    sget-object v2, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v3, 0x106002a

    invoke-virtual {v2, v0, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v50

    .line 90
    sget-object v2, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v3, 0x106002b

    invoke-virtual {v2, v0, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v52

    .line 92
    sget-object v2, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v3, 0x1060032

    invoke-virtual {v2, v0, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v4

    const/high16 v2, 0x42c40000    # 98.0f

    .line 93
    invoke-static {v4, v5, v2}, Landroidx/compose/material3/DynamicTonalPaletteKt;->setLuminance-DxMtmZc(JF)J

    move-result-wide v54

    .line 95
    sget-object v2, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    invoke-virtual {v2, v0, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v4

    const/high16 v2, 0x42c00000    # 96.0f

    .line 96
    invoke-static {v4, v5, v2}, Landroidx/compose/material3/DynamicTonalPaletteKt;->setLuminance-DxMtmZc(JF)J

    move-result-wide v56

    .line 98
    sget-object v2, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v4, 0x106002c

    invoke-virtual {v2, v0, v4}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v58

    .line 100
    sget-object v2, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    invoke-virtual {v2, v0, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v4

    const/high16 v2, 0x42bc0000    # 94.0f

    .line 101
    invoke-static {v4, v5, v2}, Landroidx/compose/material3/DynamicTonalPaletteKt;->setLuminance-DxMtmZc(JF)J

    move-result-wide v60

    .line 103
    sget-object v2, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    invoke-virtual {v2, v0, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v4

    const/high16 v2, 0x42b80000    # 92.0f

    .line 104
    invoke-static {v4, v5, v2}, Landroidx/compose/material3/DynamicTonalPaletteKt;->setLuminance-DxMtmZc(JF)J

    move-result-wide v62

    .line 106
    sget-object v2, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v4, 0x106002d

    invoke-virtual {v2, v0, v4}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v64

    .line 108
    sget-object v2, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    invoke-virtual {v2, v0, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v4

    const/high16 v2, 0x42ae0000    # 87.0f

    .line 109
    invoke-static {v4, v5, v2}, Landroidx/compose/material3/DynamicTonalPaletteKt;->setLuminance-DxMtmZc(JF)J

    move-result-wide v66

    .line 111
    sget-object v2, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v4, 0x106002e

    invoke-virtual {v2, v0, v4}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v68

    .line 113
    sget-object v2, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v4, 0x106002f

    invoke-virtual {v2, v0, v4}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v70

    .line 115
    sget-object v2, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v4, 0x1060030

    invoke-virtual {v2, v0, v4}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v72

    .line 117
    sget-object v2, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v4, 0x1060031

    invoke-virtual {v2, v0, v4}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v74

    .line 119
    sget-object v2, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    invoke-virtual {v2, v0, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v76

    .line 121
    sget-object v2, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v4, 0x1060033

    invoke-virtual {v2, v0, v4}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v78

    .line 123
    sget-object v2, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    invoke-virtual {v2, v0, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v4

    .line 124
    invoke-static {v4, v5, v1}, Landroidx/compose/material3/DynamicTonalPaletteKt;->setLuminance-DxMtmZc(JF)J

    move-result-wide v80

    .line 126
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    invoke-virtual {v1, v0, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v1

    const/high16 v4, 0x41b00000    # 22.0f

    .line 127
    invoke-static {v1, v2, v4}, Landroidx/compose/material3/DynamicTonalPaletteKt;->setLuminance-DxMtmZc(JF)J

    move-result-wide v82

    .line 129
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x1060034

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v84

    .line 131
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    invoke-virtual {v1, v0, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v1

    const/high16 v4, 0x41880000    # 17.0f

    .line 132
    invoke-static {v1, v2, v4}, Landroidx/compose/material3/DynamicTonalPaletteKt;->setLuminance-DxMtmZc(JF)J

    move-result-wide v86

    .line 134
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    invoke-virtual {v1, v0, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v1

    const/high16 v4, 0x41400000    # 12.0f

    .line 135
    invoke-static {v1, v2, v4}, Landroidx/compose/material3/DynamicTonalPaletteKt;->setLuminance-DxMtmZc(JF)J

    move-result-wide v88

    .line 137
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x1060035

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v90

    .line 139
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    invoke-virtual {v1, v0, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v1

    const/high16 v4, 0x40c00000    # 6.0f

    .line 140
    invoke-static {v1, v2, v4}, Landroidx/compose/material3/DynamicTonalPaletteKt;->setLuminance-DxMtmZc(JF)J

    move-result-wide v92

    .line 142
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    invoke-virtual {v1, v0, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v1

    const/high16 v3, 0x40800000    # 4.0f

    .line 143
    invoke-static {v1, v2, v3}, Landroidx/compose/material3/DynamicTonalPaletteKt;->setLuminance-DxMtmZc(JF)J

    move-result-wide v94

    .line 145
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x1060036

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v96

    .line 148
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x1060037

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v98

    .line 149
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x1060038

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v100

    .line 150
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x1060039

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v102

    .line 151
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x106003a

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v104

    .line 152
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x106003b

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v106

    .line 153
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x106003c

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v108

    .line 154
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x106003d

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v110

    .line 155
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x106003e

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v112

    .line 156
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x106003f

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v114

    .line 157
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x1060040

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v116

    .line 158
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x1060041

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v118

    .line 159
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x1060042

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v120

    .line 160
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x1060043

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v122

    .line 163
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x1060044

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v124

    .line 164
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x1060045

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v126

    .line 165
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x1060046

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v128

    .line 166
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x1060047

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v130

    .line 167
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x1060048

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v132

    .line 168
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x1060049

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v134

    .line 169
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x106004a

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v136

    .line 170
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x106004b

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v138

    .line 171
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x106004c

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v140

    .line 172
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x106004d

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v142

    .line 173
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x106004e

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v144

    .line 174
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x106004f

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v146

    .line 175
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x1060050

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v148

    .line 178
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x1060051

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v150

    .line 179
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x1060052

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v152

    .line 180
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x1060053

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v154

    .line 181
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x1060054

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v156

    .line 182
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x1060055

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v158

    .line 183
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x1060056

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v160

    .line 184
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x1060057

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v162

    .line 185
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x1060058

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v164

    .line 186
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x1060059

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v166

    .line 187
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x106005a

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v168

    .line 188
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x106005b

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v170

    .line 189
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x106005c

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v172

    .line 190
    sget-object v1, Landroidx/compose/material3/ColorResourceHelper;->INSTANCE:Landroidx/compose/material3/ColorResourceHelper;

    const v2, 0x106005d

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v174

    const/16 v176, 0x0

    move-object/from16 v1, v178

    move-wide/from16 v2, v179

    move-wide/from16 v4, v181

    .line 36
    invoke-direct/range {v1 .. v176}, Landroidx/compose/material3/TonalPalette;-><init>(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v177
.end method

.method private static final labInvf(F)F
    .locals 2

    mul-float v0, p0, p0

    mul-float/2addr v0, p0

    const v1, 0x3c111aa7

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x74

    int-to-float v0, v0

    mul-float/2addr v0, p0

    const/16 p0, 0x10

    int-to-float p0, p0

    sub-float/2addr v0, p0

    const p0, 0x4461d2f7

    div-float/2addr v0, p0

    :goto_0
    return v0
.end method

.method public static final setLuminance-DxMtmZc(JF)J
    .locals 7

    float-to-double v0, p2

    const-wide v2, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v2, v0, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-gez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    const-wide v5, 0x4058fffe5c91d14eL    # 99.9999

    cmpl-double v0, v0, v5

    if-lez v0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    or-int v0, v2, v3

    if-eqz v0, :cond_2

    const/16 p0, 0x64

    int-to-float p0, p0

    const/16 p1, 0x10

    int-to-float p1, p1

    add-float/2addr p2, p1

    const/16 p1, 0x74

    int-to-float p1, p1

    div-float/2addr p2, p1

    .line 254
    invoke-static {p2}, Landroidx/compose/material3/DynamicTonalPaletteKt;->labInvf(F)F

    move-result p1

    mul-float/2addr p0, p1

    .line 255
    invoke-static {p0}, Landroidx/compose/material3/DynamicTonalPaletteKt;->delinearized(F)I

    move-result v2

    const/16 v4, 0x8

    const/4 v5, 0x0

    const/4 v3, 0x0

    move v0, v2

    move v1, v2

    .line 256
    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/graphics/ColorKt;->Color$default(IIIIILjava/lang/Object;)J

    move-result-wide p0

    return-wide p0

    .line 263
    :cond_2
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getCieLab()Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroidx/compose/ui/graphics/Color;->convert-vNxB06k(JLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J

    move-result-wide p0

    .line 531
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->getGreen-impl(J)F

    move-result v1

    .line 532
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->getBlue-impl(J)F

    move-result v2

    .line 268
    sget-object p0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getCieLab()Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    move-result-object v4

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v3, 0x0

    move v0, p2

    .line 264
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/graphics/ColorKt;->Color$default(FFFFLandroidx/compose/ui/graphics/colorspace/ColorSpace;ILjava/lang/Object;)J

    move-result-wide p0

    .line 270
    sget-object p2, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    invoke-virtual {p2}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getSrgb()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object p2

    check-cast p2, Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    invoke-static {p0, p1, p2}, Landroidx/compose/ui/graphics/Color;->convert-vNxB06k(JLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J

    move-result-wide p0

    return-wide p0
.end method
