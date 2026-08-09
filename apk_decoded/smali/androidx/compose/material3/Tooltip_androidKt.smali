.class public final Landroidx/compose/material3/Tooltip_androidKt;
.super Ljava/lang/Object;
.source "Tooltip.android.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTooltip.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Tooltip.android.kt\nandroidx/compose/material3/Tooltip_androidKt\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 5 Dp.kt\nandroidx/compose/ui/unit/Dp\n*L\n1#1,326:1\n148#2:327\n148#2:328\n482#2:329\n482#2:340\n148#2:349\n77#3:330\n77#3:331\n77#3:338\n77#3:341\n77#3:342\n1223#4,6:332\n1223#4,6:343\n50#5:339\n*S KotlinDebug\n*F\n+ 1 Tooltip.android.kt\nandroidx/compose/material3/Tooltip_androidKt\n*L\n218#1:327\n219#1:328\n76#1:329\n153#1:340\n237#1:349\n77#1:330\n78#1:331\n149#1:338\n154#1:341\n155#1:342\n79#1:332,6\n156#1:343,6\n149#1:339\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001ao\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\r2\u0011\u0010\u000f\u001a\r\u0012\u0004\u0012\u00020\u00010\u0010\u00a2\u0006\u0002\u0008\u0011H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0012\u0010\u0013\u001a\u0093\u0001\u0010\u0014\u001a\u00020\u0001*\u00020\u00022\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0015\u0008\u0002\u0010\u0015\u001a\u000f\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0010\u00a2\u0006\u0002\u0008\u00112\u0015\u0008\u0002\u0010\u0016\u001a\u000f\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0010\u00a2\u0006\u0002\u0008\u00112\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u00182\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\r2\u0011\u0010\u0019\u001a\r\u0012\u0004\u0012\u00020\u00010\u0010\u00a2\u0006\u0002\u0008\u0011H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001a\u0010\u001b\u001aH\u0010\u001c\u001a\u00020\u001d*\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010%\u001a\u0004\u0018\u00010&H\u0003\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\'\u0010(\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006)"
    }
    d2 = {
        "PlainTooltip",
        "",
        "Landroidx/compose/material3/TooltipScope;",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "caretSize",
        "Landroidx/compose/ui/unit/DpSize;",
        "shape",
        "Landroidx/compose/ui/graphics/Shape;",
        "contentColor",
        "Landroidx/compose/ui/graphics/Color;",
        "containerColor",
        "tonalElevation",
        "Landroidx/compose/ui/unit/Dp;",
        "shadowElevation",
        "content",
        "Lkotlin/Function0;",
        "Landroidx/compose/runtime/Composable;",
        "PlainTooltip-7QI4Sbk",
        "(Landroidx/compose/material3/TooltipScope;Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;JJFFLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V",
        "RichTooltip",
        "title",
        "action",
        "colors",
        "Landroidx/compose/material3/RichTooltipColors;",
        "text",
        "RichTooltip-yDvdmqw",
        "(Landroidx/compose/material3/TooltipScope;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;JLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/RichTooltipColors;FFLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V",
        "drawCaretWithPath",
        "Landroidx/compose/ui/draw/DrawResult;",
        "Landroidx/compose/ui/draw/CacheDrawScope;",
        "caretType",
        "Landroidx/compose/material3/CaretType;",
        "density",
        "Landroidx/compose/ui/unit/Density;",
        "configuration",
        "Landroid/content/res/Configuration;",
        "anchorLayoutCoordinates",
        "Landroidx/compose/ui/layout/LayoutCoordinates;",
        "drawCaretWithPath-JKu-mZY",
        "(Landroidx/compose/ui/draw/CacheDrawScope;Landroidx/compose/material3/CaretType;Landroidx/compose/ui/unit/Density;Landroid/content/res/Configuration;JJLandroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/draw/DrawResult;",
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
.method public static final PlainTooltip-7QI4Sbk(Landroidx/compose/material3/TooltipScope;Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;JJFFLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/TooltipScope;",
            "Landroidx/compose/ui/Modifier;",
            "J",
            "Landroidx/compose/ui/graphics/Shape;",
            "JJFF",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v12, p11

    move/from16 v13, p13

    move/from16 v14, p14

    const v0, 0x53de2e14

    move-object/from16 v2, p12

    .line 74
    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v2

    const-string v3, "C(PlainTooltip)P(4,0:c#ui.unit.DpSize,6,3:c#ui.graphics.Color,1:c#ui.graphics.Color,7:c#ui.unit.Dp,5:c#ui.unit.Dp)208@8412L26,209@8482L24,211@8552L26,96@3876L606,90@3685L797:Tooltip.android.kt#uh7d8r"

    invoke-static {v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const/high16 v3, -0x80000000

    and-int/2addr v3, v14

    if-eqz v3, :cond_0

    or-int/lit8 v3, v13, 0x6

    goto :goto_2

    :cond_0
    and-int/lit8 v3, v13, 0x6

    if-nez v3, :cond_3

    and-int/lit8 v3, v13, 0x8

    if-nez v3, :cond_1

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0

    :cond_1
    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    :goto_0
    if-eqz v3, :cond_2

    const/4 v3, 0x4

    goto :goto_1

    :cond_2
    const/4 v3, 0x2

    :goto_1
    or-int/2addr v3, v13

    goto :goto_2

    :cond_3
    move v3, v13

    :goto_2
    and-int/lit8 v4, v14, 0x1

    if-eqz v4, :cond_4

    or-int/lit8 v3, v3, 0x30

    goto :goto_4

    :cond_4
    and-int/lit8 v5, v13, 0x30

    if-nez v5, :cond_6

    move-object/from16 v5, p1

    invoke-interface {v2, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x20

    goto :goto_3

    :cond_5
    const/16 v6, 0x10

    :goto_3
    or-int/2addr v3, v6

    goto :goto_5

    :cond_6
    :goto_4
    move-object/from16 v5, p1

    :goto_5
    and-int/lit16 v6, v13, 0x180

    if-nez v6, :cond_8

    and-int/lit8 v6, v14, 0x2

    move-wide/from16 v8, p2

    if-nez v6, :cond_7

    invoke-interface {v2, v8, v9}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v6, 0x100

    goto :goto_6

    :cond_7
    const/16 v6, 0x80

    :goto_6
    or-int/2addr v3, v6

    goto :goto_7

    :cond_8
    move-wide/from16 v8, p2

    :goto_7
    and-int/lit16 v6, v13, 0xc00

    if-nez v6, :cond_b

    and-int/lit8 v6, v14, 0x4

    if-nez v6, :cond_9

    move-object/from16 v6, p4

    invoke-interface {v2, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    const/16 v10, 0x800

    goto :goto_8

    :cond_9
    move-object/from16 v6, p4

    :cond_a
    const/16 v10, 0x400

    :goto_8
    or-int/2addr v3, v10

    goto :goto_9

    :cond_b
    move-object/from16 v6, p4

    :goto_9
    and-int/lit16 v10, v13, 0x6000

    if-nez v10, :cond_e

    and-int/lit8 v10, v14, 0x8

    if-nez v10, :cond_c

    move-wide/from16 v10, p5

    invoke-interface {v2, v10, v11}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v15

    if-eqz v15, :cond_d

    const/16 v15, 0x4000

    goto :goto_a

    :cond_c
    move-wide/from16 v10, p5

    :cond_d
    const/16 v15, 0x2000

    :goto_a
    or-int/2addr v3, v15

    goto :goto_b

    :cond_e
    move-wide/from16 v10, p5

    :goto_b
    const/high16 v15, 0x30000

    and-int v16, v13, v15

    if-nez v16, :cond_10

    and-int/lit8 v16, v14, 0x10

    move-wide/from16 v7, p7

    if-nez v16, :cond_f

    invoke-interface {v2, v7, v8}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v16

    if-eqz v16, :cond_f

    const/high16 v16, 0x20000

    goto :goto_c

    :cond_f
    const/high16 v16, 0x10000

    :goto_c
    or-int v3, v3, v16

    goto :goto_d

    :cond_10
    move-wide/from16 v7, p7

    :goto_d
    and-int/lit8 v16, v14, 0x20

    const/high16 v17, 0x180000

    if-eqz v16, :cond_11

    or-int v3, v3, v17

    move/from16 v9, p9

    goto :goto_f

    :cond_11
    and-int v17, v13, v17

    move/from16 v9, p9

    if-nez v17, :cond_13

    invoke-interface {v2, v9}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v18

    if-eqz v18, :cond_12

    const/high16 v18, 0x100000

    goto :goto_e

    :cond_12
    const/high16 v18, 0x80000

    :goto_e
    or-int v3, v3, v18

    :cond_13
    :goto_f
    and-int/lit8 v18, v14, 0x40

    const/high16 v19, 0xc00000

    if-eqz v18, :cond_14

    or-int v3, v3, v19

    move/from16 v15, p10

    goto :goto_11

    :cond_14
    and-int v20, v13, v19

    move/from16 v15, p10

    if-nez v20, :cond_16

    invoke-interface {v2, v15}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v21

    if-eqz v21, :cond_15

    const/high16 v21, 0x800000

    goto :goto_10

    :cond_15
    const/high16 v21, 0x400000

    :goto_10
    or-int v3, v3, v21

    :cond_16
    :goto_11
    and-int/lit16 v0, v14, 0x80

    const/high16 v22, 0x6000000

    if-eqz v0, :cond_17

    or-int v3, v3, v22

    goto :goto_13

    :cond_17
    and-int v0, v13, v22

    if-nez v0, :cond_19

    invoke-interface {v2, v12}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/high16 v0, 0x4000000

    goto :goto_12

    :cond_18
    const/high16 v0, 0x2000000

    :goto_12
    or-int/2addr v3, v0

    :cond_19
    :goto_13
    const v0, 0x2492493

    and-int/2addr v0, v3

    const v5, 0x2492492

    if-ne v0, v5, :cond_1b

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_14

    .line 116
    :cond_1a
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move v13, v9

    move/from16 v28, v15

    move-wide v8, v7

    goto/16 :goto_21

    .line 74
    :cond_1b
    :goto_14
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, v13, 0x1

    const v22, -0xe001

    if-eqz v0, :cond_21

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_15

    .line 328
    :cond_1c
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v14, 0x2

    if-eqz v0, :cond_1d

    and-int/lit16 v3, v3, -0x381

    :cond_1d
    and-int/lit8 v0, v14, 0x4

    if-eqz v0, :cond_1e

    and-int/lit16 v3, v3, -0x1c01

    :cond_1e
    and-int/lit8 v0, v14, 0x8

    if-eqz v0, :cond_1f

    and-int v3, v3, v22

    :cond_1f
    and-int/lit8 v0, v14, 0x10

    if-eqz v0, :cond_20

    const v0, -0x70001

    and-int/2addr v3, v0

    :cond_20
    move-object/from16 v0, p1

    move v5, v9

    move/from16 v28, v15

    move v15, v3

    move-wide v8, v7

    const/4 v7, 0x0

    move-wide/from16 v3, p2

    goto/16 :goto_1c

    :cond_21
    :goto_15
    if-eqz v4, :cond_22

    .line 207
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    goto :goto_16

    :cond_22
    move-object/from16 v0, p1

    :goto_16
    and-int/lit8 v4, v14, 0x2

    if-eqz v4, :cond_23

    .line 208
    sget-object v4, Landroidx/compose/ui/unit/DpSize;->Companion:Landroidx/compose/ui/unit/DpSize$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/unit/DpSize$Companion;->getUnspecified-MYxV2XQ()J

    move-result-wide v24

    and-int/lit16 v3, v3, -0x381

    goto :goto_17

    :cond_23
    move-wide/from16 v24, p2

    :goto_17
    and-int/lit8 v4, v14, 0x4

    const/4 v5, 0x6

    if-eqz v4, :cond_24

    sget-object v4, Landroidx/compose/material3/TooltipDefaults;->INSTANCE:Landroidx/compose/material3/TooltipDefaults;

    .line 209
    invoke-virtual {v4, v2, v5}, Landroidx/compose/material3/TooltipDefaults;->getPlainTooltipContainerShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v4

    and-int/lit16 v3, v3, -0x1c01

    goto :goto_18

    :cond_24
    move-object v4, v6

    :goto_18
    and-int/lit8 v6, v14, 0x8

    if-eqz v6, :cond_25

    sget-object v6, Landroidx/compose/material3/TooltipDefaults;->INSTANCE:Landroidx/compose/material3/TooltipDefaults;

    .line 210
    invoke-virtual {v6, v2, v5}, Landroidx/compose/material3/TooltipDefaults;->getPlainTooltipContentColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v10

    and-int v3, v3, v22

    :cond_25
    and-int/lit8 v6, v14, 0x10

    if-eqz v6, :cond_26

    .line 211
    sget-object v6, Landroidx/compose/material3/TooltipDefaults;->INSTANCE:Landroidx/compose/material3/TooltipDefaults;

    .line 212
    invoke-virtual {v6, v2, v5}, Landroidx/compose/material3/TooltipDefaults;->getPlainTooltipContainerColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v5

    const v7, -0x70001

    and-int/2addr v3, v7

    goto :goto_19

    :cond_26
    move-wide v5, v7

    :goto_19
    const/4 v7, 0x0

    if-eqz v16, :cond_27

    int-to-float v8, v7

    .line 327
    invoke-static {v8}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v8

    goto :goto_1a

    :cond_27
    move v8, v9

    :goto_1a
    if-eqz v18, :cond_28

    int-to-float v9, v7

    .line 328
    invoke-static {v9}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v9

    move v15, v3

    move/from16 v28, v9

    goto :goto_1b

    :cond_28
    move/from16 v28, v15

    move v15, v3

    :goto_1b
    move-wide/from16 v31, v5

    move-object v6, v4

    move v5, v8

    move-wide/from16 v3, v24

    move-wide/from16 v8, v31

    :goto_1c
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v16

    if-eqz v16, :cond_29

    const/4 v7, -0x1

    const-string/jumbo v13, "androidx.compose.material3.PlainTooltip (Tooltip.android.kt:73)"

    const v14, 0x53de2e14

    .line 74
    invoke-static {v14, v15, v7, v13}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_29
    const v7, -0x13e6272f

    invoke-interface {v2, v7}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v7, "76@3183L7,77@3242L7,78@3281L343"

    invoke-static {v2, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const-wide v13, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long v7, v3, v13

    if-eqz v7, :cond_2a

    const/4 v7, 0x1

    goto :goto_1d

    :cond_2a
    const/4 v7, 0x0

    :goto_1d
    if-eqz v7, :cond_33

    .line 77
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v7

    check-cast v7, Landroidx/compose/runtime/CompositionLocal;

    const v14, 0x789c5f52

    const-string v13, "CC:CompositionLocal.kt#9igjgp"

    .line 330
    invoke-static {v2, v14, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v2, v7}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 77
    check-cast v7, Landroidx/compose/ui/unit/Density;

    .line 78
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v13

    check-cast v13, Landroidx/compose/runtime/CompositionLocal;

    move/from16 p9, v5

    const-string v5, "CC:CompositionLocal.kt#9igjgp"

    .line 331
    invoke-static {v2, v14, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v2, v13}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 78
    check-cast v5, Landroid/content/res/Configuration;

    .line 79
    sget-object v13, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v13, Landroidx/compose/ui/Modifier;

    const v14, -0x13e6134d

    move-object/from16 p10, v6

    const-string v6, "CC(remember):Tooltip.android.kt#9igjgp"

    invoke-static {v2, v14, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v2, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    invoke-interface {v2, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v14

    or-int/2addr v6, v14

    const/high16 v14, 0x70000

    and-int/2addr v14, v15

    const/high16 v16, 0x30000

    xor-int v14, v14, v16

    move-wide/from16 v29, v10

    const/high16 v10, 0x20000

    if-le v14, v10, :cond_2b

    invoke-interface {v2, v8, v9}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v11

    if-nez v11, :cond_2c

    :cond_2b
    and-int v11, v15, v16

    if-ne v11, v10, :cond_2d

    :cond_2c
    const/4 v10, 0x1

    goto :goto_1e

    :cond_2d
    const/4 v10, 0x0

    :goto_1e
    or-int/2addr v6, v10

    and-int/lit16 v10, v15, 0x380

    xor-int/lit16 v10, v10, 0x180

    const/16 v11, 0x100

    if-le v10, v11, :cond_2e

    invoke-interface {v2, v3, v4}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v10

    if-nez v10, :cond_2f

    :cond_2e
    and-int/lit16 v10, v15, 0x180

    if-ne v10, v11, :cond_30

    :cond_2f
    const/16 v26, 0x1

    goto :goto_1f

    :cond_30
    const/16 v26, 0x0

    :goto_1f
    or-int v6, v6, v26

    .line 332
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    if-nez v6, :cond_31

    .line 333
    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v10, v6, :cond_32

    .line 79
    :cond_31
    new-instance v6, Landroidx/compose/material3/Tooltip_androidKt$PlainTooltip$drawCaretModifier$1$1;

    move-object/from16 p1, v6

    move-object/from16 p2, v7

    move-object/from16 p3, v5

    move-wide/from16 p4, v8

    move-wide/from16 p6, v3

    invoke-direct/range {p1 .. p7}, Landroidx/compose/material3/Tooltip_androidKt$PlainTooltip$drawCaretModifier$1$1;-><init>(Landroidx/compose/ui/unit/Density;Landroid/content/res/Configuration;JJ)V

    move-object v10, v6

    check-cast v10, Lkotlin/jvm/functions/Function2;

    .line 335
    invoke-interface {v2, v10}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 79
    :cond_32
    check-cast v10, Lkotlin/jvm/functions/Function2;

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    invoke-interface {v1, v13, v10}, Landroidx/compose/material3/TooltipScope;->drawCaret(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    .line 89
    invoke-interface {v5, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    goto :goto_20

    :cond_33
    move/from16 p9, v5

    move-object/from16 p10, v6

    move-wide/from16 v29, v10

    move-object v5, v0

    .line 76
    :goto_20
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 97
    new-instance v6, Landroidx/compose/material3/Tooltip_androidKt$PlainTooltip$1;

    move-wide/from16 v10, v29

    invoke-direct {v6, v10, v11, v12}, Landroidx/compose/material3/Tooltip_androidKt$PlainTooltip$1;-><init>(JLkotlin/jvm/functions/Function2;)V

    const/16 v7, 0x36

    const v13, 0x553dda6f

    const/4 v14, 0x1

    invoke-static {v13, v14, v6, v2, v7}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v6

    move-object/from16 v24, v6

    check-cast v24, Lkotlin/jvm/functions/Function2;

    shr-int/lit8 v6, v15, 0x6

    and-int/lit8 v7, v6, 0x70

    or-int v7, v7, v19

    shr-int/lit8 v13, v15, 0x9

    and-int/lit16 v13, v13, 0x380

    or-int/2addr v7, v13

    const v13, 0xe000

    and-int/2addr v13, v6

    or-int/2addr v7, v13

    const/high16 v13, 0x70000

    and-int/2addr v6, v13

    or-int v26, v7, v6

    const/16 v27, 0x48

    const-wide/16 v19, 0x0

    const/16 v23, 0x0

    move-object v15, v5

    move-object/from16 v16, p10

    move-wide/from16 v17, v8

    move/from16 v21, p9

    move/from16 v22, v28

    move-object/from16 v25, v2

    .line 91
    invoke-static/range {v15 .. v27}, Landroidx/compose/material3/SurfaceKt;->Surface-T9BRK9s(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_34

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_34
    move/from16 v13, p9

    move-object/from16 v6, p10

    move-wide v4, v3

    move-object v3, v0

    .line 116
    :goto_21
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v15

    if-eqz v15, :cond_35

    new-instance v16, Landroidx/compose/material3/Tooltip_androidKt$PlainTooltip$2;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v2, v3

    move-wide v3, v4

    move-object v5, v6

    move-wide v6, v10

    move v10, v13

    move/from16 v11, v28

    move-object/from16 v12, p11

    move/from16 v13, p13

    move/from16 v14, p14

    invoke-direct/range {v0 .. v14}, Landroidx/compose/material3/Tooltip_androidKt$PlainTooltip$2;-><init>(Landroidx/compose/material3/TooltipScope;Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;JJFFLkotlin/jvm/functions/Function2;II)V

    move-object/from16 v0, v16

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v15, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_35
    return-void
.end method

.method public static final RichTooltip-yDvdmqw(Landroidx/compose/material3/TooltipScope;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;JLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/RichTooltipColors;FFLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/TooltipScope;",
            "Landroidx/compose/ui/Modifier;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;J",
            "Landroidx/compose/ui/graphics/Shape;",
            "Landroidx/compose/material3/RichTooltipColors;",
            "FF",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v11, p10

    move/from16 v12, p12

    move/from16 v13, p13

    const v0, 0x6f4f19c9

    move-object/from16 v2, p11

    .line 148
    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v2

    const-string v3, "C(RichTooltip)P(3,7!1,1:c#ui.unit.DpSize,5!1,8:c#ui.unit.Dp,4:c#ui.unit.Dp)255@9959L25,257@10034L19,*148@5873L7,150@5944L11,150@5956L61,178@6991L1595,167@6622L1964:Tooltip.android.kt#uh7d8r"

    invoke-static {v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const/high16 v3, -0x80000000

    and-int/2addr v3, v13

    if-eqz v3, :cond_0

    or-int/lit8 v3, v12, 0x6

    goto :goto_2

    :cond_0
    and-int/lit8 v3, v12, 0x6

    if-nez v3, :cond_3

    and-int/lit8 v3, v12, 0x8

    if-nez v3, :cond_1

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0

    :cond_1
    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    :goto_0
    if-eqz v3, :cond_2

    const/4 v3, 0x4

    goto :goto_1

    :cond_2
    const/4 v3, 0x2

    :goto_1
    or-int/2addr v3, v12

    goto :goto_2

    :cond_3
    move v3, v12

    :goto_2
    and-int/lit8 v4, v13, 0x1

    if-eqz v4, :cond_4

    or-int/lit8 v3, v3, 0x30

    goto :goto_4

    :cond_4
    and-int/lit8 v5, v12, 0x30

    if-nez v5, :cond_6

    move-object/from16 v5, p1

    invoke-interface {v2, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x20

    goto :goto_3

    :cond_5
    const/16 v6, 0x10

    :goto_3
    or-int/2addr v3, v6

    goto :goto_5

    :cond_6
    :goto_4
    move-object/from16 v5, p1

    :goto_5
    and-int/lit8 v6, v13, 0x2

    if-eqz v6, :cond_7

    or-int/lit16 v3, v3, 0x180

    goto :goto_7

    :cond_7
    and-int/lit16 v7, v12, 0x180

    if-nez v7, :cond_9

    move-object/from16 v7, p2

    invoke-interface {v2, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    const/16 v8, 0x100

    goto :goto_6

    :cond_8
    const/16 v8, 0x80

    :goto_6
    or-int/2addr v3, v8

    goto :goto_8

    :cond_9
    :goto_7
    move-object/from16 v7, p2

    :goto_8
    and-int/lit8 v8, v13, 0x4

    if-eqz v8, :cond_a

    or-int/lit16 v3, v3, 0xc00

    goto :goto_a

    :cond_a
    and-int/lit16 v9, v12, 0xc00

    if-nez v9, :cond_c

    move-object/from16 v9, p3

    invoke-interface {v2, v9}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    const/16 v10, 0x800

    goto :goto_9

    :cond_b
    const/16 v10, 0x400

    :goto_9
    or-int/2addr v3, v10

    goto :goto_b

    :cond_c
    :goto_a
    move-object/from16 v9, p3

    :goto_b
    and-int/lit16 v10, v12, 0x6000

    if-nez v10, :cond_e

    and-int/lit8 v10, v13, 0x8

    move-wide/from16 v14, p4

    if-nez v10, :cond_d

    invoke-interface {v2, v14, v15}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v10

    if-eqz v10, :cond_d

    const/16 v10, 0x4000

    goto :goto_c

    :cond_d
    const/16 v10, 0x2000

    :goto_c
    or-int/2addr v3, v10

    goto :goto_d

    :cond_e
    move-wide/from16 v14, p4

    :goto_d
    const/high16 v10, 0x30000

    and-int/2addr v10, v12

    if-nez v10, :cond_11

    and-int/lit8 v10, v13, 0x10

    if-nez v10, :cond_f

    move-object/from16 v10, p6

    invoke-interface {v2, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_10

    const/high16 v16, 0x20000

    goto :goto_e

    :cond_f
    move-object/from16 v10, p6

    :cond_10
    const/high16 v16, 0x10000

    :goto_e
    or-int v3, v3, v16

    goto :goto_f

    :cond_11
    move-object/from16 v10, p6

    :goto_f
    const/high16 v16, 0x180000

    and-int v16, v12, v16

    if-nez v16, :cond_13

    and-int/lit8 v16, v13, 0x20

    move-object/from16 v0, p7

    if-nez v16, :cond_12

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_12

    const/high16 v17, 0x100000

    goto :goto_10

    :cond_12
    const/high16 v17, 0x80000

    :goto_10
    or-int v3, v3, v17

    goto :goto_11

    :cond_13
    move-object/from16 v0, p7

    :goto_11
    and-int/lit8 v17, v13, 0x40

    const/high16 v18, 0xc00000

    if-eqz v17, :cond_14

    or-int v3, v3, v18

    move/from16 v0, p8

    goto :goto_13

    :cond_14
    and-int v19, v12, v18

    move/from16 v0, p8

    if-nez v19, :cond_16

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v19

    if-eqz v19, :cond_15

    const/high16 v19, 0x800000

    goto :goto_12

    :cond_15
    const/high16 v19, 0x400000

    :goto_12
    or-int v3, v3, v19

    :cond_16
    :goto_13
    and-int/lit16 v0, v13, 0x80

    const/high16 v19, 0x6000000

    if-eqz v0, :cond_17

    or-int v3, v3, v19

    move/from16 v5, p9

    goto :goto_15

    :cond_17
    and-int v19, v12, v19

    move/from16 v5, p9

    if-nez v19, :cond_19

    invoke-interface {v2, v5}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v19

    if-eqz v19, :cond_18

    const/high16 v19, 0x4000000

    goto :goto_14

    :cond_18
    const/high16 v19, 0x2000000

    :goto_14
    or-int v3, v3, v19

    :cond_19
    :goto_15
    and-int/lit16 v5, v13, 0x100

    const/high16 v19, 0x30000000

    if-eqz v5, :cond_1a

    or-int v3, v3, v19

    goto :goto_17

    :cond_1a
    and-int v5, v12, v19

    if-nez v5, :cond_1c

    invoke-interface {v2, v11}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    const/high16 v5, 0x20000000

    goto :goto_16

    :cond_1b
    const/high16 v5, 0x10000000

    :goto_16
    or-int/2addr v3, v5

    :cond_1c
    :goto_17
    const v5, 0x12492493

    and-int/2addr v5, v3

    const v7, 0x12492492

    if-ne v5, v7, :cond_1e

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v5

    if-nez v5, :cond_1d

    goto :goto_18

    .line 216
    :cond_1d
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v4, p1

    move-object/from16 v3, p2

    move-object/from16 v8, p7

    move/from16 v27, p9

    move-object v7, v9

    move-wide v5, v14

    move/from16 v9, p8

    goto/16 :goto_25

    .line 148
    :cond_1e
    :goto_18
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v5, v12, 0x1

    const/4 v7, 0x6

    if-eqz v5, :cond_23

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v5

    if-eqz v5, :cond_1f

    goto :goto_19

    .line 260
    :cond_1f
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v13, 0x8

    if-eqz v0, :cond_20

    const v0, -0xe001

    and-int/2addr v3, v0

    :cond_20
    and-int/lit8 v0, v13, 0x10

    if-eqz v0, :cond_21

    const v0, -0x70001

    and-int/2addr v3, v0

    :cond_21
    and-int/lit8 v0, v13, 0x20

    if-eqz v0, :cond_22

    const v0, -0x380001

    and-int/2addr v3, v0

    :cond_22
    move-object/from16 v4, p1

    move-object/from16 v6, p2

    move-object/from16 v0, p7

    move/from16 v27, p9

    move-object v5, v9

    move-wide v8, v14

    move v14, v3

    move/from16 v3, p8

    goto/16 :goto_21

    :cond_23
    :goto_19
    if-eqz v4, :cond_24

    .line 248
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v4, Landroidx/compose/ui/Modifier;

    goto :goto_1a

    :cond_24
    move-object/from16 v4, p1

    :goto_1a
    const/4 v5, 0x0

    if-eqz v6, :cond_25

    move-object v6, v5

    goto :goto_1b

    :cond_25
    move-object/from16 v6, p2

    :goto_1b
    if-eqz v8, :cond_26

    goto :goto_1c

    :cond_26
    move-object v5, v9

    :goto_1c
    and-int/lit8 v8, v13, 0x8

    if-eqz v8, :cond_27

    .line 252
    sget-object v8, Landroidx/compose/ui/unit/DpSize;->Companion:Landroidx/compose/ui/unit/DpSize$Companion;

    .line 253
    invoke-virtual {v8}, Landroidx/compose/ui/unit/DpSize$Companion;->getUnspecified-MYxV2XQ()J

    move-result-wide v8

    const v14, -0xe001

    and-int/2addr v3, v14

    goto :goto_1d

    :cond_27
    move-wide v8, v14

    :goto_1d
    and-int/lit8 v14, v13, 0x10

    if-eqz v14, :cond_28

    .line 254
    sget-object v10, Landroidx/compose/material3/TooltipDefaults;->INSTANCE:Landroidx/compose/material3/TooltipDefaults;

    .line 256
    invoke-virtual {v10, v2, v7}, Landroidx/compose/material3/TooltipDefaults;->getRichTooltipContainerShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v10

    const v14, -0x70001

    and-int/2addr v3, v14

    :cond_28
    and-int/lit8 v14, v13, 0x20

    if-eqz v14, :cond_29

    .line 257
    sget-object v14, Landroidx/compose/material3/TooltipDefaults;->INSTANCE:Landroidx/compose/material3/TooltipDefaults;

    .line 258
    invoke-virtual {v14, v2, v7}, Landroidx/compose/material3/TooltipDefaults;->richTooltipColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/RichTooltipColors;

    move-result-object v14

    const v15, -0x380001

    and-int/2addr v3, v15

    goto :goto_1e

    :cond_29
    move-object/from16 v14, p7

    :goto_1e
    if-eqz v17, :cond_2a

    .line 259
    sget-object v15, Landroidx/compose/material3/tokens/ElevationTokens;->INSTANCE:Landroidx/compose/material3/tokens/ElevationTokens;

    invoke-virtual {v15}, Landroidx/compose/material3/tokens/ElevationTokens;->getLevel0-D9Ej5fM()F

    move-result v15

    goto :goto_1f

    :cond_2a
    move/from16 v15, p8

    :goto_1f
    if-eqz v0, :cond_2b

    .line 260
    sget-object v0, Landroidx/compose/material3/tokens/RichTooltipTokens;->INSTANCE:Landroidx/compose/material3/tokens/RichTooltipTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/RichTooltipTokens;->getContainerElevation-D9Ej5fM()F

    move-result v0

    move/from16 v27, v0

    goto :goto_20

    :cond_2b
    move/from16 v27, p9

    :goto_20
    move-object v0, v14

    move v14, v3

    move v3, v15

    :goto_21
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v15

    if-eqz v15, :cond_2c

    const/4 v15, -0x1

    const-string/jumbo v7, "androidx.compose.material3.RichTooltip (Tooltip.android.kt:147)"

    const v12, 0x6f4f19c9

    .line 148
    invoke-static {v12, v14, v15, v7}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 149
    :cond_2c
    invoke-static {}, Landroidx/compose/material3/SurfaceKt;->getLocalAbsoluteTonalElevation()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v7

    check-cast v7, Landroidx/compose/runtime/CompositionLocal;

    const v12, 0x789c5f52

    .line 338
    const-string v15, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {v2, v12, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v2, v7}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    check-cast v7, Landroidx/compose/ui/unit/Dp;

    invoke-virtual {v7}, Landroidx/compose/ui/unit/Dp;->unbox-impl()F

    move-result v7

    add-float/2addr v7, v3

    .line 339
    invoke-static {v7}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v7

    .line 151
    sget-object v12, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    const/4 v13, 0x6

    invoke-virtual {v12, v2, v13}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v12

    invoke-virtual {v0}, Landroidx/compose/material3/RichTooltipColors;->getContainerColor-0d7_KjU()J

    move-result-wide v16

    const/4 v13, 0x0

    move-object/from16 p1, v12

    move-wide/from16 p2, v16

    move/from16 p4, v7

    move-object/from16 p5, v2

    move/from16 p6, v13

    invoke-static/range {p1 .. p6}, Landroidx/compose/material3/ColorSchemeKt;->applyTonalElevation-RFCenO8(Landroidx/compose/material3/ColorScheme;JFLandroidx/compose/runtime/Composer;I)J

    move-result-wide v12

    const v7, 0x57c853b7

    .line 150
    invoke-interface {v2, v7}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v7, "153@6122L7,154@6181L7,155@6220L341"

    invoke-static {v2, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const-wide v16, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long v7, v8, v16

    move/from16 p8, v3

    if-eqz v7, :cond_2d

    const/4 v7, 0x1

    goto :goto_22

    :cond_2d
    const/4 v7, 0x0

    :goto_22
    if-eqz v7, :cond_33

    .line 154
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v7

    check-cast v7, Landroidx/compose/runtime/CompositionLocal;

    const v3, 0x789c5f52

    .line 341
    invoke-static {v2, v3, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v2, v7}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 154
    check-cast v7, Landroidx/compose/ui/unit/Density;

    .line 155
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v16

    move-object/from16 v28, v10

    move-object/from16 v10, v16

    check-cast v10, Landroidx/compose/runtime/CompositionLocal;

    .line 342
    invoke-static {v2, v3, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v2, v10}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 155
    check-cast v3, Landroid/content/res/Configuration;

    .line 156
    sget-object v10, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v10, Landroidx/compose/ui/Modifier;

    const v15, 0x57c86799

    move-object/from16 v29, v5

    const-string v5, "CC(remember):Tooltip.android.kt#9igjgp"

    invoke-static {v2, v15, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v2, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v2, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v15

    or-int/2addr v5, v15

    invoke-interface {v2, v12, v13}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v15

    or-int/2addr v5, v15

    const v15, 0xe000

    and-int/2addr v15, v14

    xor-int/lit16 v15, v15, 0x6000

    move-object/from16 v30, v6

    const/16 v6, 0x4000

    if-le v15, v6, :cond_2e

    invoke-interface {v2, v8, v9}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v15

    if-nez v15, :cond_2f

    :cond_2e
    and-int/lit16 v15, v14, 0x6000

    if-ne v15, v6, :cond_30

    :cond_2f
    const/4 v6, 0x1

    goto :goto_23

    :cond_30
    const/4 v6, 0x0

    :goto_23
    or-int/2addr v5, v6

    .line 343
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_31

    .line 344
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v6, v5, :cond_32

    .line 156
    :cond_31
    new-instance v5, Landroidx/compose/material3/Tooltip_androidKt$RichTooltip$drawCaretModifier$1$1;

    move-object/from16 p1, v5

    move-object/from16 p2, v7

    move-object/from16 p3, v3

    move-wide/from16 p4, v12

    move-wide/from16 p6, v8

    invoke-direct/range {p1 .. p7}, Landroidx/compose/material3/Tooltip_androidKt$RichTooltip$drawCaretModifier$1$1;-><init>(Landroidx/compose/ui/unit/Density;Landroid/content/res/Configuration;JJ)V

    move-object v6, v5

    check-cast v6, Lkotlin/jvm/functions/Function2;

    .line 346
    invoke-interface {v2, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 156
    :cond_32
    check-cast v6, Lkotlin/jvm/functions/Function2;

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    invoke-interface {v1, v10, v6}, Landroidx/compose/material3/TooltipScope;->drawCaret(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 166
    invoke-interface {v3, v4}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    goto :goto_24

    :cond_33
    move-object/from16 v29, v5

    move-object/from16 v30, v6

    move-object/from16 v28, v10

    move-object v3, v4

    .line 153
    :goto_24
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 171
    invoke-static {}, Landroidx/compose/material3/TooltipKt;->getTooltipMinWidth()F

    move-result v5

    .line 172
    invoke-static {}, Landroidx/compose/material3/TooltipKt;->getRichTooltipMaxWidth()F

    move-result v6

    .line 173
    invoke-static {}, Landroidx/compose/material3/TooltipKt;->getTooltipMinHeight()F

    move-result v7

    const/16 v10, 0x8

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 p1, v3

    move/from16 p2, v5

    move/from16 p3, v7

    move/from16 p4, v6

    move/from16 p5, v13

    move/from16 p6, v10

    move-object/from16 p7, v12

    .line 170
    invoke-static/range {p1 .. p7}, Landroidx/compose/foundation/layout/SizeKt;->sizeIn-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 176
    invoke-virtual {v0}, Landroidx/compose/material3/RichTooltipColors;->getContainerColor-0d7_KjU()J

    move-result-wide v16

    .line 179
    new-instance v5, Landroidx/compose/material3/Tooltip_androidKt$RichTooltip$1;

    move-object/from16 v7, v29

    move-object/from16 v6, v30

    invoke-direct {v5, v6, v7, v0, v11}, Landroidx/compose/material3/Tooltip_androidKt$RichTooltip$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/RichTooltipColors;Lkotlin/jvm/functions/Function2;)V

    const/16 v10, 0x36

    const v12, 0x12e979ce

    const/4 v13, 0x1

    invoke-static {v12, v13, v5, v2, v10}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v5

    move-object/from16 v23, v5

    check-cast v23, Lkotlin/jvm/functions/Function2;

    shr-int/lit8 v5, v14, 0xc

    and-int/lit8 v5, v5, 0x70

    or-int v5, v5, v18

    shr-int/lit8 v10, v14, 0x9

    const v12, 0xe000

    and-int/2addr v12, v10

    or-int/2addr v5, v12

    const/high16 v12, 0x70000

    and-int/2addr v10, v12

    or-int v25, v5, v10

    const/16 v26, 0x48

    const-wide/16 v18, 0x0

    const/16 v22, 0x0

    move-object v14, v3

    move-object/from16 v15, v28

    move/from16 v20, p8

    move/from16 v21, v27

    move-object/from16 v24, v2

    .line 168
    invoke-static/range {v14 .. v26}, Landroidx/compose/material3/SurfaceKt;->Surface-T9BRK9s(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_34
    move-object v3, v6

    move-wide v5, v8

    move-object/from16 v10, v28

    move/from16 v9, p8

    move-object v8, v0

    .line 216
    :goto_25
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v14

    if-eqz v14, :cond_35

    new-instance v15, Landroidx/compose/material3/Tooltip_androidKt$RichTooltip$2;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v4

    move-object v4, v7

    move-object v7, v10

    move/from16 v10, v27

    move-object/from16 v11, p10

    move/from16 v12, p12

    move/from16 v13, p13

    invoke-direct/range {v0 .. v13}, Landroidx/compose/material3/Tooltip_androidKt$RichTooltip$2;-><init>(Landroidx/compose/material3/TooltipScope;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;JLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/RichTooltipColors;FFLkotlin/jvm/functions/Function2;II)V

    check-cast v15, Lkotlin/jvm/functions/Function2;

    invoke-interface {v14, v15}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_35
    return-void
.end method

.method public static final synthetic access$drawCaretWithPath-JKu-mZY(Landroidx/compose/ui/draw/CacheDrawScope;Landroidx/compose/material3/CaretType;Landroidx/compose/ui/unit/Density;Landroid/content/res/Configuration;JJLandroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/draw/DrawResult;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p8}, Landroidx/compose/material3/Tooltip_androidKt;->drawCaretWithPath-JKu-mZY(Landroidx/compose/ui/draw/CacheDrawScope;Landroidx/compose/material3/CaretType;Landroidx/compose/ui/unit/Density;Landroid/content/res/Configuration;JJLandroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/draw/DrawResult;

    move-result-object p0

    return-object p0
.end method

.method private static final drawCaretWithPath-JKu-mZY(Landroidx/compose/ui/draw/CacheDrawScope;Landroidx/compose/material3/CaretType;Landroidx/compose/ui/unit/Density;Landroid/content/res/Configuration;JJLandroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/draw/DrawResult;
    .locals 17

    move-object/from16 v0, p2

    move-object/from16 v1, p8

    .line 227
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/Path;

    move-result-object v2

    if-eqz v1, :cond_8

    .line 235
    invoke-static/range {p6 .. p7}, Landroidx/compose/ui/unit/DpSize;->getHeight-D9Ej5fM(J)F

    move-result v3

    invoke-interface {v0, v3}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v3

    .line 236
    invoke-static/range {p6 .. p7}, Landroidx/compose/ui/unit/DpSize;->getWidth-D9Ej5fM(J)F

    move-result v4

    invoke-interface {v0, v4}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v4

    move-object/from16 v5, p3

    .line 237
    iget v5, v5, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v5, v5

    .line 349
    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    .line 237
    invoke-interface {v0, v5}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v5

    .line 238
    invoke-static {}, Landroidx/compose/material3/TooltipKt;->getSpacingBetweenTooltipAndAnchor()F

    move-result v6

    invoke-interface {v0, v6}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v0

    .line 240
    invoke-static/range {p8 .. p8}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->boundsInWindow(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v6

    .line 241
    invoke-virtual {v6}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v7

    .line 242
    invoke-virtual {v6}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v8

    .line 243
    invoke-virtual {v6}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v6

    add-float v9, v8, v7

    const/4 v10, 0x2

    int-to-float v11, v10

    div-float/2addr v9, v11

    sub-float v12, v8, v7

    .line 246
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/draw/CacheDrawScope;->getSize-NH-jbRc()J

    move-result-wide v13

    invoke-static {v13, v14}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v13

    .line 247
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/draw/CacheDrawScope;->getSize-NH-jbRc()J

    move-result-wide v14

    invoke-static {v14, v15}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v14

    sub-float/2addr v6, v14

    int-to-float v0, v0

    sub-float/2addr v6, v0

    const/4 v0, 0x0

    cmpg-float v6, v6, v0

    if-gez v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_1

    move v14, v0

    .line 257
    :cond_1
    sget-object v15, Landroidx/compose/material3/CaretType;->Plain:Landroidx/compose/material3/CaretType;

    move-object/from16 v10, p1

    if-ne v10, v15, :cond_3

    div-float v8, v13, v11

    add-float/2addr v8, v9

    int-to-float v5, v5

    cmpl-float v8, v8, v5

    if-lez v8, :cond_2

    sub-float/2addr v5, v9

    sub-float/2addr v13, v5

    .line 263
    invoke-static {v13, v14}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v7

    goto :goto_1

    .line 266
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/draw/CacheDrawScope;->getSize-NH-jbRc()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v5

    div-float/2addr v5, v11

    div-float/2addr v12, v11

    sub-float/2addr v5, v12

    sub-float/2addr v7, v5

    .line 267
    invoke-static {v7, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sub-float/2addr v9, v0

    .line 268
    invoke-static {v9, v14}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v7

    goto :goto_1

    :cond_3
    sub-float v10, v9, v7

    .line 272
    invoke-static {v10, v14}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v15

    add-float v10, v7, v13

    int-to-float v5, v5

    cmpl-float v10, v10, v5

    if-lez v10, :cond_6

    sub-float v10, v8, v13

    sub-float v15, v9, v10

    .line 275
    invoke-static {v15, v14}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v15

    cmpg-float v10, v10, v0

    if-gez v10, :cond_6

    div-float v10, v13, v11

    sub-float/2addr v7, v10

    div-float/2addr v12, v11

    add-float/2addr v7, v12

    cmpg-float v0, v7, v0

    if-gtz v0, :cond_4

    .line 281
    invoke-static {v9, v14}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v7

    goto :goto_1

    :cond_4
    add-float/2addr v8, v10

    sub-float/2addr v8, v12

    cmpl-float v0, v8, v5

    if-ltz v0, :cond_5

    sub-float/2addr v5, v9

    sub-float/2addr v13, v5

    .line 285
    invoke-static {v13, v14}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v7

    goto :goto_1

    .line 287
    :cond_5
    invoke-static {v10, v14}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v7

    goto :goto_1

    :cond_6
    move-wide v7, v15

    :goto_1
    if-eqz v6, :cond_7

    .line 296
    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v0

    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v5

    invoke-interface {v2, v0, v5}, Landroidx/compose/ui/graphics/Path;->moveTo(FF)V

    .line 297
    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v0

    const/4 v5, 0x2

    div-int/2addr v4, v5

    int-to-float v4, v4

    add-float/2addr v0, v4

    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v5

    invoke-interface {v2, v0, v5}, Landroidx/compose/ui/graphics/Path;->lineTo(FF)V

    .line 298
    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v0

    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v5

    int-to-float v3, v3

    sub-float/2addr v5, v3

    invoke-interface {v2, v0, v5}, Landroidx/compose/ui/graphics/Path;->lineTo(FF)V

    .line 299
    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v0

    sub-float/2addr v0, v4

    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v3

    invoke-interface {v2, v0, v3}, Landroidx/compose/ui/graphics/Path;->lineTo(FF)V

    .line 300
    invoke-interface {v2}, Landroidx/compose/ui/graphics/Path;->close()V

    goto :goto_2

    .line 304
    :cond_7
    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v0

    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v5

    invoke-interface {v2, v0, v5}, Landroidx/compose/ui/graphics/Path;->moveTo(FF)V

    .line 305
    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v0

    const/4 v5, 0x2

    div-int/2addr v4, v5

    int-to-float v4, v4

    add-float/2addr v0, v4

    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v5

    invoke-interface {v2, v0, v5}, Landroidx/compose/ui/graphics/Path;->lineTo(FF)V

    .line 306
    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v0

    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v5

    int-to-float v3, v3

    add-float/2addr v5, v3

    invoke-interface {v2, v0, v5}, Landroidx/compose/ui/graphics/Path;->lineTo(FF)V

    .line 307
    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v0

    sub-float/2addr v0, v4

    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v3

    invoke-interface {v2, v0, v3}, Landroidx/compose/ui/graphics/Path;->lineTo(FF)V

    .line 308
    invoke-interface {v2}, Landroidx/compose/ui/graphics/Path;->close()V

    .line 313
    :cond_8
    :goto_2
    new-instance v0, Landroidx/compose/material3/Tooltip_androidKt$drawCaretWithPath$4;

    move-wide/from16 v3, p4

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/compose/material3/Tooltip_androidKt$drawCaretWithPath$4;-><init>(Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/graphics/Path;J)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Landroidx/compose/ui/draw/CacheDrawScope;->onDrawWithContent(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/draw/DrawResult;

    move-result-object v0

    return-object v0
.end method
