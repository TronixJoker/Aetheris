.class public final Landroidx/compose/material3/NavigationItemKt;
.super Ljava/lang/Object;
.source "NavigationItem.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNavigationItem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavigationItem.kt\nandroidx/compose/material3/NavigationItemKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 4 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 6 Composer.kt\nandroidx/compose/runtime/Updater\n+ 7 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 8 Dp.kt\nandroidx/compose/ui/unit/Dp\n+ 9 SnapshotIntState.kt\nandroidx/compose/runtime/SnapshotIntStateKt__SnapshotIntStateKt\n+ 10 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,731:1\n1223#2,6:732\n1223#2,6:738\n1223#2,6:777\n1223#2,6:783\n1223#2,6:824\n71#3,3:744\n74#3:775\n78#3:792\n71#3:830\n68#3,6:831\n74#3:865\n78#3:869\n71#3:870\n68#3,6:871\n74#3:905\n78#3:909\n78#4,6:747\n85#4,4:762\n89#4,2:772\n93#4:791\n78#4:793\n76#4,8:794\n85#4,4:811\n89#4,2:821\n78#4,6:837\n85#4,4:852\n89#4,2:862\n93#4:868\n78#4,6:877\n85#4,4:892\n89#4,2:902\n93#4:908\n93#4:912\n368#5,9:753\n377#5:774\n378#5,2:789\n368#5,9:802\n377#5:823\n368#5,9:843\n377#5:864\n378#5,2:866\n368#5,9:883\n377#5:904\n378#5,2:906\n378#5,2:910\n4032#6,6:766\n4032#6,6:815\n4032#6,6:856\n4032#6,6:896\n77#7:776\n50#8:913\n50#8:914\n75#9:915\n108#9,2:916\n148#10:918\n*S KotlinDebug\n*F\n+ 1 NavigationItem.kt\nandroidx/compose/material3/NavigationItemKt\n*L\n282#1:732,6\n295#1:738,6\n319#1:777,6\n331#1:783,6\n370#1:824,6\n284#1:744,3\n284#1:775\n284#1:792\n376#1:830\n376#1:831,6\n376#1:865\n376#1:869\n378#1:870\n378#1:871,6\n378#1:905\n378#1:909\n284#1:747,6\n284#1:762,4\n284#1:772,2\n284#1:791\n357#1:793\n357#1:794,8\n357#1:811,4\n357#1:821,2\n376#1:837,6\n376#1:852,4\n376#1:862,2\n376#1:868\n378#1:877,6\n378#1:892,4\n378#1:902,2\n378#1:908\n357#1:912\n284#1:753,9\n284#1:774\n284#1:789,2\n357#1:802,9\n357#1:823\n376#1:843,9\n376#1:864\n376#1:866,2\n378#1:883,9\n378#1:904\n378#1:906,2\n357#1:910,2\n284#1:766,6\n357#1:815,6\n376#1:856,6\n378#1:896,6\n311#1:776\n657#1:913\n666#1:914\n282#1:915\n282#1:916,2\n730#1:918\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008a\u0001\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u001a\u00cd\u0001\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u00142\u0011\u0010\u0015\u001a\r\u0012\u0004\u0012\u00020\u00100\u0014\u00a2\u0006\u0002\u0008\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u001e\u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\u00052\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u00122\u0013\u0010&\u001a\u000f\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u0014\u00a2\u0006\u0002\u0008\u00162\u0013\u0010\'\u001a\u000f\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u0014\u00a2\u0006\u0002\u0008\u00162\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+H\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008,\u0010-\u001a\u0090\u0001\u0010.\u001a\u00020\u00102\u0006\u0010*\u001a\u00020/2\u0006\u00100\u001a\u0002012\u0006\u0010\u0019\u001a\u00020\u001a2\u0011\u0010\u0015\u001a\r\u0012\u0004\u0012\u00020\u00100\u0014\u00a2\u0006\u0002\u0008\u00162\u0006\u0010(\u001a\u00020)2\u0013\u0010&\u001a\u000f\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u0014\u00a2\u0006\u0002\u0008\u00162\u000c\u00102\u001a\u0008\u0012\u0004\u0012\u0002030\u00142\u0006\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u001e\u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\u0005H\u0003\u00f8\u0001\u0000\u00a2\u0006\u0004\u00084\u00105\u001a6\u00106\u001a\u000207*\u0002082\u0006\u00109\u001a\u00020:2\u0006\u0010;\u001a\u00020:2\u0006\u0010<\u001a\u00020:2\u0006\u0010=\u001a\u00020>H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008?\u0010@\u001aF\u0010A\u001a\u000207*\u0002082\u0006\u0010B\u001a\u00020:2\u0006\u00109\u001a\u00020:2\u0006\u0010;\u001a\u00020:2\u0006\u0010<\u001a\u00020:2\u0006\u0010=\u001a\u00020>2\u0006\u0010\u001f\u001a\u00020\u0005H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008C\u0010D\u001aV\u0010E\u001a\u000207*\u0002082\u0006\u0010B\u001a\u00020:2\u0006\u00109\u001a\u00020:2\u0006\u0010;\u001a\u00020:2\u0006\u0010<\u001a\u00020:2\u0006\u0010=\u001a\u00020>2\u0006\u0010\u001e\u001a\u00020\u00052\u0006\u0010\u001d\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\u0005H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008F\u0010G\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u0010\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0006\"\u000e\u0010\u0007\u001a\u00020\u0008X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\t\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u0016\u0010\n\u001a\u00020\u0005X\u0080\u0004\u00a2\u0006\n\n\u0002\u0010\u0006\u001a\u0004\u0008\u000b\u0010\u000c\"\u0016\u0010\r\u001a\u00020\u0005X\u0080\u0004\u00a2\u0006\n\n\u0002\u0010\u0006\u001a\u0004\u0008\u000e\u0010\u000c\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006H\u00b2\u0006\n\u0010I\u001a\u00020\u0008X\u008a\u008e\u0002"
    }
    d2 = {
        "IconLayoutIdTag",
        "",
        "IndicatorLayoutIdTag",
        "IndicatorRippleLayoutIdTag",
        "IndicatorVerticalOffset",
        "Landroidx/compose/ui/unit/Dp;",
        "F",
        "ItemAnimationDurationMillis",
        "",
        "LabelLayoutIdTag",
        "NavigationItemMinHeight",
        "getNavigationItemMinHeight",
        "()F",
        "NavigationItemMinWidth",
        "getNavigationItemMinWidth",
        "NavigationItem",
        "",
        "selected",
        "",
        "onClick",
        "Lkotlin/Function0;",
        "icon",
        "Landroidx/compose/runtime/Composable;",
        "labelTextStyle",
        "Landroidx/compose/ui/text/TextStyle;",
        "indicatorShape",
        "Landroidx/compose/ui/graphics/Shape;",
        "indicatorWidth",
        "indicatorHorizontalPadding",
        "indicatorVerticalPadding",
        "indicatorToLabelVerticalPadding",
        "startIconToLabelHorizontalPadding",
        "topIconItemVerticalPadding",
        "colors",
        "Landroidx/compose/material3/NavigationItemColors;",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "enabled",
        "label",
        "badge",
        "iconPosition",
        "Landroidx/compose/material3/NavigationItemIconPosition;",
        "interactionSource",
        "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
        "NavigationItem-SHbi2eg",
        "(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/graphics/Shape;FFFFFFLandroidx/compose/material3/NavigationItemColors;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ILandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V",
        "NavigationItemLayout",
        "Landroidx/compose/foundation/interaction/InteractionSource;",
        "indicatorColor",
        "Landroidx/compose/ui/graphics/Color;",
        "animationProgress",
        "",
        "NavigationItemLayout-KmRX-Dg",
        "(Landroidx/compose/foundation/interaction/InteractionSource;JLandroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;FFFFFLandroidx/compose/runtime/Composer;II)V",
        "placeIcon",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "Landroidx/compose/ui/layout/MeasureScope;",
        "iconPlaceable",
        "Landroidx/compose/ui/layout/Placeable;",
        "indicatorRipplePlaceable",
        "indicatorPlaceable",
        "constraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "placeIcon-X9ElhV4",
        "(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;J)Landroidx/compose/ui/layout/MeasureResult;",
        "placeLabelAndStartIcon",
        "labelPlaceable",
        "placeLabelAndStartIcon-nru01g4",
        "(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;JF)Landroidx/compose/ui/layout/MeasureResult;",
        "placeLabelAndTopIcon",
        "placeLabelAndTopIcon-qoqLrGI",
        "(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;JFFF)Landroidx/compose/ui/layout/MeasureResult;",
        "material3_release",
        "itemWidth"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final IconLayoutIdTag:Ljava/lang/String; = "icon"

.field private static final IndicatorLayoutIdTag:Ljava/lang/String; = "indicator"

.field private static final IndicatorRippleLayoutIdTag:Ljava/lang/String; = "indicatorRipple"

.field private static final IndicatorVerticalOffset:F

.field private static final ItemAnimationDurationMillis:I = 0x64

.field private static final LabelLayoutIdTag:Ljava/lang/String; = "label"

.field private static final NavigationItemMinHeight:F

.field private static final NavigationItemMinWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 720
    invoke-static {}, Landroidx/compose/material3/NavigationRailKt;->getNavigationRailItemWidth()F

    move-result v0

    sput v0, Landroidx/compose/material3/NavigationItemKt;->NavigationItemMinWidth:F

    .line 722
    invoke-static {}, Landroidx/compose/material3/NavigationRailKt;->getNavigationRailItemHeight()F

    move-result v0

    sput v0, Landroidx/compose/material3/NavigationItemKt;->NavigationItemMinHeight:F

    const/16 v0, 0xc

    int-to-float v0, v0

    .line 918
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 730
    sput v0, Landroidx/compose/material3/NavigationItemKt;->IndicatorVerticalOffset:F

    return-void
.end method

.method public static final NavigationItem-SHbi2eg(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/graphics/Shape;FFFFFFLandroidx/compose/material3/NavigationItemColors;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ILandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/text/TextStyle;",
            "Landroidx/compose/ui/graphics/Shape;",
            "FFFFFF",
            "Landroidx/compose/material3/NavigationItemColors;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
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
            ">;I",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    move/from16 v7, p0

    move/from16 v8, p5

    move-object/from16 v15, p14

    move-object/from16 v14, p15

    move/from16 v13, p16

    move-object/from16 v12, p17

    move/from16 v11, p19

    move/from16 v10, p20

    const v0, 0x20a982b4

    move-object/from16 v1, p18

    .line 253
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v9

    const-string v1, "C(NavigationItem)P(15,14,3,12,6,9:c#ui.unit.Dp,5:c#ui.unit.Dp,8:c#ui.unit.Dp,7:c#ui.unit.Dp,16:c#ui.unit.Dp,17:c#ui.unit.Dp,1,13,2,11!1,4:c#material3.NavigationItemIconPosition)254@10949L438,281@11981L33,294@12438L24,283@12020L2390:NavigationItem.kt#uh7d8r"

    invoke-static {v9, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, v11, 0x6

    if-nez v1, :cond_1

    invoke-interface {v9, v7}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v11

    goto :goto_1

    :cond_1
    move v1, v11

    :goto_1
    and-int/lit8 v3, v11, 0x30

    if-nez v3, :cond_3

    move-object/from16 v3, p1

    invoke-interface {v9, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    const/16 v16, 0x20

    goto :goto_2

    :cond_2
    const/16 v16, 0x10

    :goto_2
    or-int v1, v1, v16

    goto :goto_3

    :cond_3
    move-object/from16 v3, p1

    :goto_3
    and-int/lit16 v2, v11, 0x180

    const/16 v16, 0x100

    const/16 v17, 0x80

    if-nez v2, :cond_5

    move-object/from16 v2, p2

    invoke-interface {v9, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    move/from16 v18, v16

    goto :goto_4

    :cond_4
    move/from16 v18, v17

    :goto_4
    or-int v1, v1, v18

    goto :goto_5

    :cond_5
    move-object/from16 v2, p2

    :goto_5
    and-int/lit16 v4, v11, 0xc00

    const/16 v19, 0x800

    const/16 v20, 0x400

    if-nez v4, :cond_7

    move-object/from16 v4, p3

    invoke-interface {v9, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    move/from16 v21, v19

    goto :goto_6

    :cond_6
    move/from16 v21, v20

    :goto_6
    or-int v1, v1, v21

    goto :goto_7

    :cond_7
    move-object/from16 v4, p3

    :goto_7
    and-int/lit16 v5, v11, 0x6000

    if-nez v5, :cond_9

    move-object/from16 v5, p4

    invoke-interface {v9, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_8

    const/16 v22, 0x4000

    goto :goto_8

    :cond_8
    const/16 v22, 0x2000

    :goto_8
    or-int v1, v1, v22

    goto :goto_9

    :cond_9
    move-object/from16 v5, p4

    :goto_9
    const/high16 v22, 0x30000

    and-int v23, v11, v22

    if-nez v23, :cond_b

    invoke-interface {v9, v8}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v23

    if-eqz v23, :cond_a

    const/high16 v23, 0x20000

    goto :goto_a

    :cond_a
    const/high16 v23, 0x10000

    :goto_a
    or-int v1, v1, v23

    :cond_b
    const/high16 v23, 0x180000

    and-int v24, v11, v23

    move/from16 v0, p6

    if-nez v24, :cond_d

    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v25

    if-eqz v25, :cond_c

    const/high16 v25, 0x100000

    goto :goto_b

    :cond_c
    const/high16 v25, 0x80000

    :goto_b
    or-int v1, v1, v25

    :cond_d
    const/high16 v25, 0xc00000

    and-int v25, v11, v25

    move/from16 v8, p7

    if-nez v25, :cond_f

    invoke-interface {v9, v8}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v26

    if-eqz v26, :cond_e

    const/high16 v26, 0x800000

    goto :goto_c

    :cond_e
    const/high16 v26, 0x400000

    :goto_c
    or-int v1, v1, v26

    :cond_f
    const/high16 v26, 0x6000000

    and-int v26, v11, v26

    move/from16 v8, p8

    if-nez v26, :cond_11

    invoke-interface {v9, v8}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v26

    if-eqz v26, :cond_10

    const/high16 v26, 0x4000000

    goto :goto_d

    :cond_10
    const/high16 v26, 0x2000000

    :goto_d
    or-int v1, v1, v26

    :cond_11
    const/high16 v26, 0x30000000

    and-int v26, v11, v26

    move/from16 v11, p9

    if-nez v26, :cond_13

    invoke-interface {v9, v11}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v26

    if-eqz v26, :cond_12

    const/high16 v26, 0x20000000

    goto :goto_e

    :cond_12
    const/high16 v26, 0x10000000

    :goto_e
    or-int v1, v1, v26

    :cond_13
    and-int/lit8 v26, v10, 0x6

    move/from16 v11, p10

    if-nez v26, :cond_15

    invoke-interface {v9, v11}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v26

    if-eqz v26, :cond_14

    const/16 v26, 0x4

    goto :goto_f

    :cond_14
    const/16 v26, 0x2

    :goto_f
    or-int v26, v10, v26

    goto :goto_10

    :cond_15
    move/from16 v26, v10

    :goto_10
    and-int/lit8 v27, v10, 0x30

    move-object/from16 v11, p11

    if-nez v27, :cond_17

    invoke-interface {v9, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_16

    const/16 v18, 0x20

    goto :goto_11

    :cond_16
    const/16 v18, 0x10

    :goto_11
    or-int v26, v26, v18

    :cond_17
    and-int/lit16 v6, v10, 0x180

    if-nez v6, :cond_19

    move-object/from16 v6, p12

    invoke-interface {v9, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_18

    goto :goto_12

    :cond_18
    move/from16 v16, v17

    :goto_12
    or-int v26, v26, v16

    goto :goto_13

    :cond_19
    move-object/from16 v6, p12

    :goto_13
    and-int/lit16 v0, v10, 0xc00

    if-nez v0, :cond_1b

    move/from16 v0, p13

    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v16

    if-eqz v16, :cond_1a

    goto :goto_14

    :cond_1a
    move/from16 v19, v20

    :goto_14
    or-int v26, v26, v19

    goto :goto_15

    :cond_1b
    move/from16 v0, p13

    :goto_15
    and-int/lit16 v0, v10, 0x6000

    if-nez v0, :cond_1d

    invoke-interface {v9, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/16 v0, 0x4000

    goto :goto_16

    :cond_1c
    const/16 v0, 0x2000

    :goto_16
    or-int v26, v26, v0

    :cond_1d
    and-int v0, v10, v22

    if-nez v0, :cond_1f

    invoke-interface {v9, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/high16 v0, 0x20000

    goto :goto_17

    :cond_1e
    const/high16 v0, 0x10000

    :goto_17
    or-int v26, v26, v0

    :cond_1f
    and-int v0, v10, v23

    if-nez v0, :cond_21

    invoke-interface {v9, v13}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v0

    if-eqz v0, :cond_20

    const/high16 v0, 0x100000

    goto :goto_18

    :cond_20
    const/high16 v0, 0x80000

    :goto_18
    or-int v26, v26, v0

    :cond_21
    const/high16 v0, 0xc00000

    and-int/2addr v0, v10

    if-nez v0, :cond_23

    invoke-interface {v9, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/high16 v0, 0x800000

    goto :goto_19

    :cond_22
    const/high16 v0, 0x400000

    :goto_19
    or-int v26, v26, v0

    :cond_23
    move/from16 v0, v26

    const v16, 0x12492493

    and-int v2, v1, v16

    const v3, 0x12492492

    if-ne v2, v3, :cond_25

    const v2, 0x492493

    and-int/2addr v2, v0

    const v3, 0x492492

    if-ne v2, v3, :cond_25

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_24

    goto :goto_1a

    .line 339
    :cond_24
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v6, p5

    goto/16 :goto_21

    .line 253
    :cond_25
    :goto_1a
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_26

    const-string/jumbo v2, "androidx.compose.material3.NavigationItem (NavigationItem.kt:252)"

    const v3, 0x20a982b4

    invoke-static {v3, v1, v0, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 255
    :cond_26
    new-instance v3, Landroidx/compose/material3/NavigationItemKt$NavigationItem$styledIcon$1;

    move/from16 v26, v0

    move-object v0, v3

    move/from16 v24, v1

    move-object/from16 v1, p11

    move/from16 v2, p0

    move-object v6, v3

    move/from16 v3, p13

    move-object/from16 v4, p14

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Landroidx/compose/material3/NavigationItemKt$NavigationItem$styledIcon$1;-><init>(Landroidx/compose/material3/NavigationItemColors;ZZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    const v0, -0x2a46aa6

    const/4 v5, 0x1

    const/16 v4, 0x36

    invoke-static {v0, v5, v6, v9, v4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const v1, -0x67702290

    .line 254
    invoke-interface {v9, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v1, "264@11453L51"

    invoke-static {v9, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    if-eqz v14, :cond_27

    .line 265
    new-instance v1, Landroidx/compose/material3/NavigationItemKt$NavigationItem$iconWithBadge$1;

    invoke-direct {v1, v14, v0}, Landroidx/compose/material3/NavigationItemKt$NavigationItem$iconWithBadge$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    const v0, 0x6d71f51b

    invoke-static {v0, v5, v1, v9, v4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function2;

    :cond_27
    move-object/from16 v27, v0

    .line 264
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const v0, -0x677008c4

    .line 263
    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v0, "*271@11650L298"

    invoke-static {v9, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    if-nez v15, :cond_28

    move v10, v5

    const/4 v8, 0x0

    goto :goto_1b

    .line 272
    :cond_28
    new-instance v3, Landroidx/compose/material3/NavigationItemKt$NavigationItem$styledLabel$1$1;

    move-object v0, v3

    move-object/from16 v1, p11

    move/from16 v2, p0

    move-object v6, v3

    move/from16 v3, p13

    move v8, v4

    move-object/from16 v4, p3

    move v10, v5

    move-object/from16 v5, p14

    invoke-direct/range {v0 .. v5}, Landroidx/compose/material3/NavigationItemKt$NavigationItem$styledLabel$1$1;-><init>(Landroidx/compose/material3/NavigationItemColors;ZZLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;)V

    const v0, -0xf2ded12

    invoke-static {v0, v10, v6, v9, v8}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function2;

    move-object v8, v0

    .line 271
    :goto_1b
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const v0, -0x676fdcd5

    .line 282
    const-string v6, "CC(remember):NavigationItem.kt#9igjgp"

    invoke-static {v9, v0, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 732
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .line 733
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    const/4 v5, 0x0

    if-ne v0, v1, :cond_29

    .line 282
    invoke-static {v5}, Landroidx/compose/runtime/SnapshotIntStateKt;->mutableIntStateOf(I)Landroidx/compose/runtime/MutableIntState;

    move-result-object v0

    .line 735
    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 282
    :cond_29
    move-object v4, v0

    check-cast v4, Landroidx/compose/runtime/MutableIntState;

    invoke-static {v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 290
    sget-object v0, Landroidx/compose/ui/semantics/Role;->Companion:Landroidx/compose/ui/semantics/Role$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/Role$Companion;->getTab-o7Vup1c()I

    move-result v0

    const/4 v3, 0x0

    invoke-static {v0}, Landroidx/compose/ui/semantics/Role;->box-impl(I)Landroidx/compose/ui/semantics/Role;

    move-result-object v17

    move-object/from16 v0, p12

    move/from16 v1, p0

    move-object/from16 v2, p17

    move-object v10, v4

    move/from16 v4, p13

    move-object/from16 v5, v17

    move-object v11, v6

    move-object/from16 v6, p1

    .line 286
    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/selection/SelectableKt;->selectable-O2vRcR0(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 294
    sget v1, Landroidx/compose/material3/NavigationItemKt;->NavigationItemMinWidth:F

    sget v2, Landroidx/compose/material3/NavigationItemKt;->NavigationItemMinHeight:F

    invoke-static {v0, v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->defaultMinSize-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const v1, -0x676fa3be

    .line 295
    invoke-static {v9, v1, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 738
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .line 739
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_2a

    .line 295
    new-instance v1, Landroidx/compose/material3/NavigationItemKt$NavigationItem$1$1;

    invoke-direct {v1, v10}, Landroidx/compose/material3/NavigationItemKt$NavigationItem$1$1;-><init>(Landroidx/compose/runtime/MutableIntState;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 741
    invoke-interface {v9, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 295
    :cond_2a
    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    invoke-static {v0, v1}, Landroidx/compose/ui/layout/OnRemeasuredModifierKt;->onSizeChanged(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 296
    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->getCenter()Landroidx/compose/ui/Alignment;

    move-result-object v1

    const v2, 0x2bb5b5d7

    .line 284
    const-string v3, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo"

    .line 744
    invoke-static {v9, v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v2, 0x1

    .line 745
    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v1

    const v3, -0x4ee9b9da

    .line 746
    const-string v4, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh"

    .line 747
    invoke-static {v9, v3, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v3, 0x0

    .line 748
    invoke-static {v9, v3}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v4

    .line 749
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v5

    .line 750
    invoke-static {v9, v0}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 752
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v6

    const v2, -0x2942ffcf

    .line 751
    const-string v3, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp"

    .line 753
    invoke-static {v9, v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 754
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v2

    instance-of v2, v2, Landroidx/compose/runtime/Applier;

    if-nez v2, :cond_2b

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 755
    :cond_2b
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 756
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 757
    invoke-interface {v9, v6}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1c

    .line 759
    :cond_2c
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 761
    :goto_1c
    invoke-static {v9}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v2

    .line 762
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v2, v1, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 763
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v2, v5, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 765
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    .line 767
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v3

    if-nez v3, :cond_2d

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    .line 768
    :cond_2d
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 769
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 772
    :cond_2e
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const v0, -0x7ff519f7    # -1.000876E-39f

    .line 774
    const-string v1, "C73@3429L9:Box.kt#2w3rfo"

    .line 775
    invoke-static {v9, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    check-cast v0, Landroidx/compose/foundation/layout/BoxScope;

    const v0, 0x3407e0cb

    const-string v1, "C299@12615L157,330@14002L27,323@13657L747:NavigationItem.kt#uh7d8r"

    .line 299
    invoke-static {v9, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    if-eqz v7, :cond_2f

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1d

    :cond_2f
    const/4 v0, 0x0

    :goto_1d
    move/from16 v16, v0

    const/16 v0, 0x64

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 302
    invoke-static {v0, v2, v3, v1, v3}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;ILjava/lang/Object;)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroidx/compose/animation/core/AnimationSpec;

    const/16 v22, 0x30

    const/16 v23, 0x1c

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v21, v9

    .line 300
    invoke-static/range {v16 .. v23}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateFloatAsState(FLandroidx/compose/animation/core/AnimationSpec;FLjava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v0

    const v1, -0x616afa1b

    .line 305
    invoke-interface {v9, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v1, "*310@13207L7,318@13501L136"

    invoke-static {v9, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 306
    sget-object v1, Landroidx/compose/material3/NavigationItemIconPosition;->Companion:Landroidx/compose/material3/NavigationItemIconPosition$Companion;

    invoke-virtual {v1}, Landroidx/compose/material3/NavigationItemIconPosition$Companion;->getTop--xw1Ddg()I

    move-result v1

    invoke-static {v13, v1}, Landroidx/compose/material3/NavigationItemIconPosition;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 311
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/CompositionLocal;

    const v3, 0x789c5f52

    const-string v4, "CC:CompositionLocal.kt#9igjgp"

    .line 776
    invoke-static {v9, v3, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v9, v1}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 311
    check-cast v1, Landroidx/compose/ui/unit/Density;

    .line 314
    invoke-static {v10}, Landroidx/compose/material3/NavigationItemKt;->NavigationItem_SHbi2eg$lambda$2(Landroidx/compose/runtime/MutableIntState;)I

    move-result v3

    move/from16 v6, p5

    const/high16 v4, 0x800000

    invoke-interface {v1, v6}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v5

    sub-int/2addr v3, v5

    int-to-float v3, v3

    const/4 v5, 0x2

    int-to-float v5, v5

    div-float/2addr v3, v5

    .line 315
    sget v5, Landroidx/compose/material3/NavigationItemKt;->IndicatorVerticalOffset:F

    invoke-interface {v1, v5}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v1

    .line 313
    invoke-static {v3, v1}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v2

    .line 317
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const v1, -0x616aab6f

    .line 319
    invoke-static {v9, v1, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/high16 v1, 0x1c00000

    and-int v1, v26, v1

    if-ne v1, v4, :cond_30

    const/4 v5, 0x1

    goto :goto_1e

    :cond_30
    const/4 v5, 0x0

    :goto_1e
    invoke-interface {v9, v2, v3}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v1

    or-int/2addr v1, v5

    .line 777
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v1, :cond_31

    .line 778
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v4, v1, :cond_32

    .line 320
    :cond_31
    new-instance v4, Landroidx/compose/material3/internal/MappedInteractionSource;

    move-object v1, v12

    check-cast v1, Landroidx/compose/foundation/interaction/InteractionSource;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v2, v3, v5}, Landroidx/compose/material3/internal/MappedInteractionSource;-><init>(Landroidx/compose/foundation/interaction/InteractionSource;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 780
    invoke-interface {v9, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 319
    :cond_32
    move-object v1, v4

    check-cast v1, Landroidx/compose/material3/internal/MappedInteractionSource;

    invoke-static {v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    goto :goto_1f

    :cond_33
    move/from16 v6, p5

    const/4 v5, 0x0

    move-object v1, v5

    .line 318
    :goto_1f
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    if-eqz v1, :cond_34

    .line 325
    check-cast v1, Landroidx/compose/foundation/interaction/InteractionSource;

    goto :goto_20

    :cond_34
    move-object v1, v12

    check-cast v1, Landroidx/compose/foundation/interaction/InteractionSource;

    :goto_20
    move-object/from16 v16, v1

    .line 326
    invoke-virtual/range {p11 .. p11}, Landroidx/compose/material3/NavigationItemColors;->getSelectedIndicatorColor-0d7_KjU()J

    move-result-wide v17

    const v1, -0x616a6d3c

    .line 331
    invoke-static {v9, v1, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    .line 783
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_35

    .line 784
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v2, v1, :cond_36

    .line 331
    :cond_35
    new-instance v1, Landroidx/compose/material3/NavigationItemKt$NavigationItem$2$3$1;

    invoke-direct {v1, v0}, Landroidx/compose/material3/NavigationItemKt$NavigationItem$2$3$1;-><init>(Landroidx/compose/runtime/State;)V

    move-object v2, v1

    check-cast v2, Lkotlin/jvm/functions/Function0;

    .line 786
    invoke-interface {v9, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 331
    :cond_36
    move-object/from16 v23, v2

    check-cast v23, Lkotlin/jvm/functions/Function0;

    invoke-static {v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    shr-int/lit8 v0, v24, 0x6

    and-int/lit16 v0, v0, 0x380

    shr-int/lit8 v1, v26, 0x6

    const v2, 0xe000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    shl-int/lit8 v1, v24, 0x3

    const/high16 v2, 0x1c00000

    and-int/2addr v2, v1

    or-int/2addr v0, v2

    const/high16 v2, 0xe000000

    and-int/2addr v2, v1

    or-int/2addr v0, v2

    const/high16 v2, 0x70000000

    and-int/2addr v1, v2

    or-int v30, v0, v1

    shr-int/lit8 v0, v24, 0x1b

    and-int/lit8 v0, v0, 0xe

    shl-int/lit8 v1, v26, 0x3

    and-int/lit8 v1, v1, 0x70

    or-int v31, v0, v1

    move-object/from16 v19, p4

    move-object/from16 v20, v27

    move/from16 v21, p16

    move-object/from16 v22, v8

    move/from16 v24, p6

    move/from16 v25, p7

    move/from16 v26, p8

    move/from16 v27, p9

    move/from16 v28, p10

    move-object/from16 v29, v9

    .line 324
    invoke-static/range {v16 .. v31}, Landroidx/compose/material3/NavigationItemKt;->NavigationItemLayout-KmRX-Dg(Landroidx/compose/foundation/interaction/InteractionSource;JLandroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;FFFFFLandroidx/compose/runtime/Composer;II)V

    .line 299
    invoke-static {v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 775
    invoke-static {v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 789
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 753
    invoke-static {v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 747
    invoke-static {v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 744
    invoke-static {v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 792
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 339
    :cond_37
    :goto_21
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v11

    if-eqz v11, :cond_38

    new-instance v21, Landroidx/compose/material3/NavigationItemKt$NavigationItem$3;

    move-object/from16 v0, v21

    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v32, v11

    move/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move/from16 v17, p16

    move-object/from16 v18, p17

    move/from16 v19, p19

    move/from16 v20, p20

    invoke-direct/range {v0 .. v20}, Landroidx/compose/material3/NavigationItemKt$NavigationItem$3;-><init>(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/graphics/Shape;FFFFFFLandroidx/compose/material3/NavigationItemColors;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ILandroidx/compose/foundation/interaction/MutableInteractionSource;II)V

    move-object/from16 v0, v21

    check-cast v0, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, v32

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_38
    return-void
.end method

.method private static final NavigationItemLayout-KmRX-Dg(Landroidx/compose/foundation/interaction/InteractionSource;JLandroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;FFFFFLandroidx/compose/runtime/Composer;II)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/interaction/InteractionSource;",
            "J",
            "Landroidx/compose/ui/graphics/Shape;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;I",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Float;",
            ">;FFFFF",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v0, p7

    move/from16 v15, p14

    const v8, 0x68c42e79

    move-object/from16 v9, p13

    .line 356
    invoke-interface {v9, v8}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v14

    const-string v9, "C(NavigationItemLayout)P(8,3:c#ui.graphics.Color,5,1,2:c#material3.NavigationItemIconPosition,9!1,4:c#ui.unit.Dp,7:c#ui.unit.Dp,6:c#ui.unit.Dp,10:c#ui.unit.Dp,11:c#ui.unit.Dp)356@14947L1719:NavigationItem.kt#uh7d8r"

    invoke-static {v14, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v9, v15, 0x6

    const/4 v10, 0x4

    const/4 v11, 0x2

    if-nez v9, :cond_1

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v9, v10

    goto :goto_0

    :cond_0
    move v9, v11

    :goto_0
    or-int/2addr v9, v15

    goto :goto_1

    :cond_1
    move v9, v15

    :goto_1
    and-int/lit8 v12, v15, 0x30

    const/16 v16, 0x10

    if-nez v12, :cond_3

    invoke-interface {v14, v2, v3}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v12

    if-eqz v12, :cond_2

    const/16 v12, 0x20

    goto :goto_2

    :cond_2
    move/from16 v12, v16

    :goto_2
    or-int/2addr v9, v12

    :cond_3
    and-int/lit16 v12, v15, 0x180

    if-nez v12, :cond_5

    invoke-interface {v14, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    const/16 v12, 0x100

    goto :goto_3

    :cond_4
    const/16 v12, 0x80

    :goto_3
    or-int/2addr v9, v12

    :cond_5
    and-int/lit16 v12, v15, 0xc00

    if-nez v12, :cond_7

    invoke-interface {v14, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    const/16 v12, 0x800

    goto :goto_4

    :cond_6
    const/16 v12, 0x400

    :goto_4
    or-int/2addr v9, v12

    :cond_7
    and-int/lit16 v12, v15, 0x6000

    if-nez v12, :cond_9

    invoke-interface {v14, v6}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v12, 0x4000

    goto :goto_5

    :cond_8
    const/16 v12, 0x2000

    :goto_5
    or-int/2addr v9, v12

    :cond_9
    const/high16 v12, 0x30000

    and-int/2addr v12, v15

    if-nez v12, :cond_b

    invoke-interface {v14, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    const/high16 v12, 0x20000

    goto :goto_6

    :cond_a
    const/high16 v12, 0x10000

    :goto_6
    or-int/2addr v9, v12

    :cond_b
    const/high16 v12, 0x180000

    and-int/2addr v12, v15

    if-nez v12, :cond_d

    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    const/high16 v12, 0x100000

    goto :goto_7

    :cond_c
    const/high16 v12, 0x80000

    :goto_7
    or-int/2addr v9, v12

    :cond_d
    const/high16 v12, 0xc00000

    and-int/2addr v12, v15

    if-nez v12, :cond_f

    move/from16 v12, p8

    invoke-interface {v14, v12}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v17

    if-eqz v17, :cond_e

    const/high16 v17, 0x800000

    goto :goto_8

    :cond_e
    const/high16 v17, 0x400000

    :goto_8
    or-int v9, v9, v17

    goto :goto_9

    :cond_f
    move/from16 v12, p8

    :goto_9
    const/high16 v17, 0x6000000

    and-int v17, v15, v17

    move/from16 v13, p9

    if-nez v17, :cond_11

    invoke-interface {v14, v13}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v18

    if-eqz v18, :cond_10

    const/high16 v18, 0x4000000

    goto :goto_a

    :cond_10
    const/high16 v18, 0x2000000

    :goto_a
    or-int v9, v9, v18

    :cond_11
    const/high16 v18, 0x30000000

    and-int v18, v15, v18

    move/from16 v15, p10

    if-nez v18, :cond_13

    invoke-interface {v14, v15}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v18

    if-eqz v18, :cond_12

    const/high16 v18, 0x20000000

    goto :goto_b

    :cond_12
    const/high16 v18, 0x10000000

    :goto_b
    or-int v9, v9, v18

    :cond_13
    and-int/lit8 v18, p15, 0x6

    move/from16 v15, p11

    if-nez v18, :cond_15

    invoke-interface {v14, v15}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v18

    if-eqz v18, :cond_14

    goto :goto_c

    :cond_14
    move v10, v11

    :goto_c
    or-int v10, p15, v10

    goto :goto_d

    :cond_15
    move/from16 v10, p15

    :goto_d
    and-int/lit8 v11, p15, 0x30

    if-nez v11, :cond_17

    move/from16 v11, p12

    invoke-interface {v14, v11}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v18

    if-eqz v18, :cond_16

    const/16 v16, 0x20

    :cond_16
    or-int v10, v10, v16

    goto :goto_e

    :cond_17
    move/from16 v11, p12

    :goto_e
    const v16, 0x12492493

    and-int v8, v9, v16

    const v11, 0x12492492

    if-ne v8, v11, :cond_19

    and-int/lit8 v8, v10, 0x13

    const/16 v11, 0x12

    if-ne v8, v11, :cond_19

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v8

    if-nez v8, :cond_18

    goto :goto_f

    .line 400
    :cond_18
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object v10, v7

    move-object v6, v14

    goto/16 :goto_18

    .line 356
    :cond_19
    :goto_f
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v8

    if-eqz v8, :cond_1a

    const-string/jumbo v8, "androidx.compose.material3.NavigationItemLayout (NavigationItem.kt:355)"

    const v11, 0x68c42e79

    invoke-static {v11, v9, v10, v8}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_1a
    const/16 v16, 0x1

    const/4 v11, 0x0

    if-eqz v7, :cond_1c

    .line 382
    sget-object v8, Landroidx/compose/material3/NavigationItemIconPosition;->Companion:Landroidx/compose/material3/NavigationItemIconPosition$Companion;

    invoke-virtual {v8}, Landroidx/compose/material3/NavigationItemIconPosition$Companion;->getTop--xw1Ddg()I

    move-result v8

    invoke-static {v6, v8}, Landroidx/compose/material3/NavigationItemIconPosition;->equals-impl0(II)Z

    move-result v8

    if-eqz v8, :cond_1b

    goto :goto_11

    .line 392
    :cond_1b
    new-instance v18, Landroidx/compose/material3/StartIconMeasurePolicy;

    const/16 v19, 0x0

    move-object/from16 v8, v18

    move/from16 v20, v9

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p11

    move-object/from16 v13, v19

    invoke-direct/range {v8 .. v13}, Landroidx/compose/material3/StartIconMeasurePolicy;-><init>(Lkotlin/jvm/functions/Function0;FFFLkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v18, Landroidx/compose/ui/layout/MeasurePolicy;

    move-object v6, v14

    :goto_10
    move-object/from16 v8, v18

    goto :goto_13

    :cond_1c
    :goto_11
    move/from16 v20, v9

    .line 383
    new-instance v17, Landroidx/compose/material3/TopIconOrIconOnlyMeasurePolicy;

    if-eqz v7, :cond_1d

    move/from16 v9, v16

    goto :goto_12

    :cond_1d
    const/4 v9, 0x0

    :goto_12
    const/16 v18, 0x0

    move-object/from16 v8, v17

    move-object/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move-object v6, v14

    move/from16 v14, p12

    move-object/from16 v15, v18

    invoke-direct/range {v8 .. v15}, Landroidx/compose/material3/TopIconOrIconOnlyMeasurePolicy;-><init>(ZLkotlin/jvm/functions/Function0;FFFFLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v18, v17

    check-cast v18, Landroidx/compose/ui/layout/MeasurePolicy;

    goto :goto_10

    :goto_13
    const v15, -0x4ee9b9da

    .line 793
    const-string v14, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh"

    invoke-static {v6, v15, v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 794
    sget-object v9, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v9, Landroidx/compose/ui/Modifier;

    const/4 v13, 0x0

    .line 797
    invoke-static {v6, v13}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v10

    .line 798
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v11

    .line 799
    invoke-static {v6, v9}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    .line 801
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v12

    const v15, -0x2942ffcf

    move-object/from16 v17, v14

    .line 802
    const-string v14, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp"

    invoke-static {v6, v15, v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 803
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v13

    instance-of v13, v13, Landroidx/compose/runtime/Applier;

    if-nez v13, :cond_1e

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 804
    :cond_1e
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 805
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v13

    if-eqz v13, :cond_1f

    .line 806
    invoke-interface {v6, v12}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_14

    .line 808
    :cond_1f
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 810
    :goto_14
    invoke-static {v6}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v12

    .line 811
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v13

    invoke-static {v12, v8, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 812
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v8

    invoke-static {v12, v11, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 814
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v8

    .line 816
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v11

    if-nez v11, :cond_20

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_21

    .line 817
    :cond_20
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v12, v11}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 818
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v12, v10, v8}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 821
    :cond_21
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v8

    invoke-static {v12, v9, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const v8, 0x64bc2550

    .line 823
    const-string v9, "C362@15191L32,359@15031L207,369@15552L31,367@15456L292,375@15761L50:NavigationItem.kt#uh7d8r"

    .line 360
    invoke-static {v6, v8, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 361
    sget-object v8, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v8, Landroidx/compose/ui/Modifier;

    const-string/jumbo v9, "indicatorRipple"

    invoke-static {v8, v9}, Landroidx/compose/ui/layout/LayoutIdKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    .line 362
    invoke-static {v8, v4}, Landroidx/compose/ui/draw/ClipKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    const/16 v18, 0x0

    const/16 v19, 0x7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    move-object v13, v6

    move-object/from16 v21, v14

    move-object/from16 v22, v17

    move/from16 v14, v18

    const v7, -0x4ee9b9da

    move/from16 v15, v19

    .line 363
    invoke-static/range {v9 .. v15}, Landroidx/compose/material3/RippleKt;->rippleOrFallbackImplementation-9IZ8Weo(ZFJLandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/Indication;

    move-result-object v9

    invoke-static {v8, v1, v9}, Landroidx/compose/foundation/IndicationKt;->indication(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/foundation/Indication;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    const/4 v9, 0x0

    .line 360
    invoke-static {v8, v6, v9}, Landroidx/compose/foundation/layout/BoxKt;->Box(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 369
    sget-object v8, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v8, Landroidx/compose/ui/Modifier;

    const-string/jumbo v10, "indicator"

    invoke-static {v8, v10}, Landroidx/compose/ui/layout/LayoutIdKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    const v10, -0x2e4c452e

    const-string v11, "CC(remember):NavigationItem.kt#9igjgp"

    .line 370
    invoke-static {v6, v10, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/high16 v10, 0x380000

    and-int v10, v20, v10

    const/high16 v11, 0x100000

    if-ne v10, v11, :cond_22

    goto :goto_15

    :cond_22
    move/from16 v16, v9

    .line 824
    :goto_15
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    if-nez v16, :cond_23

    .line 825
    sget-object v11, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v11}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v11

    if-ne v10, v11, :cond_24

    .line 370
    :cond_23
    new-instance v10, Landroidx/compose/material3/NavigationItemKt$NavigationItemLayout$1$1$1;

    invoke-direct {v10, v0}, Landroidx/compose/material3/NavigationItemKt$NavigationItemLayout$1$1$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v10, Lkotlin/jvm/functions/Function1;

    .line 827
    invoke-interface {v6, v10}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 370
    :cond_24
    check-cast v10, Lkotlin/jvm/functions/Function1;

    invoke-static {v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    invoke-static {v8, v10}, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt;->graphicsLayer(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    .line 371
    invoke-static {v8, v2, v3, v4}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    .line 368
    invoke-static {v8, v6, v9}, Landroidx/compose/foundation/layout/BoxKt;->Box(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 376
    sget-object v8, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v8, Landroidx/compose/ui/Modifier;

    const-string/jumbo v10, "icon"

    invoke-static {v8, v10}, Landroidx/compose/ui/layout/LayoutIdKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    const v10, 0x2bb5b5d7

    .line 830
    const-string v11, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo"

    invoke-static {v6, v10, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 831
    sget-object v12, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v12}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v12

    .line 835
    invoke-static {v12, v9}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v12

    move-object/from16 v13, v22

    .line 837
    invoke-static {v6, v7, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 838
    invoke-static {v6, v9}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v14

    .line 839
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v15

    .line 840
    invoke-static {v6, v8}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    .line 842
    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v7

    move-object/from16 v9, v21

    const v10, -0x2942ffcf

    .line 843
    invoke-static {v6, v10, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 844
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v10

    instance-of v10, v10, Landroidx/compose/runtime/Applier;

    if-nez v10, :cond_25

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 845
    :cond_25
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 846
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v10

    if-eqz v10, :cond_26

    .line 847
    invoke-interface {v6, v7}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_16

    .line 849
    :cond_26
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 851
    :goto_16
    invoke-static {v6}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v7

    .line 852
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v10}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v10

    invoke-static {v7, v12, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 853
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v10}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v10

    invoke-static {v7, v15, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 855
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v10}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v10

    .line 857
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v12

    if-nez v12, :cond_27

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v12, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_28

    .line 858
    :cond_27
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v7, v12}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 859
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v7, v12, v10}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 862
    :cond_28
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v10}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v10

    invoke-static {v7, v8, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const v7, -0x7ff519f7    # -1.000876E-39f

    .line 865
    const-string v8, "C73@3429L9:Box.kt#2w3rfo"

    invoke-static {v6, v7, v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v10, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    check-cast v10, Landroidx/compose/foundation/layout/BoxScope;

    const v10, 0xdd4b6b

    const-string v12, "C375@15803L6:NavigationItem.kt#uh7d8r"

    .line 376
    invoke-static {v6, v10, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    shr-int/lit8 v10, v20, 0x9

    and-int/lit8 v10, v10, 0xe

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v5, v6, v10}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 865
    invoke-static {v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 866
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 843
    invoke-static {v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 837
    invoke-static {v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 830
    invoke-static {v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const v10, -0x2e4c22e6

    .line 869
    invoke-interface {v6, v10}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v10, "377@15861L52"

    invoke-static {v6, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move-object/from16 v10, p6

    const v12, -0x2942ffcf

    if-eqz v10, :cond_2d

    .line 378
    sget-object v14, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v14, Landroidx/compose/ui/Modifier;

    const-string/jumbo v15, "label"

    invoke-static {v14, v15}, Landroidx/compose/ui/layout/LayoutIdKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v14

    const v15, 0x2bb5b5d7

    .line 870
    invoke-static {v6, v15, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 871
    sget-object v11, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v11}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v11

    const/4 v15, 0x0

    .line 875
    invoke-static {v11, v15}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v11

    const v7, -0x4ee9b9da

    .line 877
    invoke-static {v6, v7, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 878
    invoke-static {v6, v15}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v7

    .line 879
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v13

    .line 880
    invoke-static {v6, v14}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v14

    .line 882
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v15}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v15

    .line 883
    invoke-static {v6, v12, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 884
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v9

    instance-of v9, v9, Landroidx/compose/runtime/Applier;

    if-nez v9, :cond_29

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 885
    :cond_29
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 886
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v9

    if-eqz v9, :cond_2a

    .line 887
    invoke-interface {v6, v15}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_17

    .line 889
    :cond_2a
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 891
    :goto_17
    invoke-static {v6}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v9

    .line 892
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v12

    invoke-static {v9, v11, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 893
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v11}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v11

    invoke-static {v9, v13, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 895
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v11}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v11

    .line 897
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v12

    if-nez v12, :cond_2b

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2c

    .line 898
    :cond_2b
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v9, v12}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 899
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v9, v7, v11}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 902
    :cond_2c
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v7

    invoke-static {v9, v14, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const v7, -0x7ff519f7    # -1.000876E-39f

    .line 905
    invoke-static {v6, v7, v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v7, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    check-cast v7, Landroidx/compose/foundation/layout/BoxScope;

    const v7, 0xded2ea

    const-string v8, "C377@15904L7:NavigationItem.kt#uh7d8r"

    .line 378
    invoke-static {v6, v7, v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    shr-int/lit8 v7, v20, 0xf

    and-int/lit8 v7, v7, 0xe

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v10, v6, v7}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 905
    invoke-static {v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 906
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 883
    invoke-static {v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 877
    invoke-static {v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 870
    invoke-static {v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 909
    :cond_2d
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 360
    invoke-static {v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 910
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 802
    invoke-static {v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 793
    invoke-static {v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 912
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v7

    if-eqz v7, :cond_2e

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 400
    :cond_2e
    :goto_18
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v15

    if-eqz v15, :cond_2f

    new-instance v16, Landroidx/compose/material3/NavigationItemKt$NavigationItemLayout$2;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p14

    move-object/from16 v23, v15

    move/from16 v15, p15

    invoke-direct/range {v0 .. v15}, Landroidx/compose/material3/NavigationItemKt$NavigationItemLayout$2;-><init>(Landroidx/compose/foundation/interaction/InteractionSource;JLandroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;FFFFFII)V

    move-object/from16 v0, v16

    check-cast v0, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, v23

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_2f
    return-void
.end method

.method private static final NavigationItem_SHbi2eg$lambda$2(Landroidx/compose/runtime/MutableIntState;)I
    .locals 0

    .line 282
    check-cast p0, Landroidx/compose/runtime/IntState;

    .line 915
    invoke-interface {p0}, Landroidx/compose/runtime/IntState;->getIntValue()I

    move-result p0

    return p0
.end method

.method private static final NavigationItem_SHbi2eg$lambda$3(Landroidx/compose/runtime/MutableIntState;I)V
    .locals 0

    .line 916
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableIntState;->setIntValue(I)V

    return-void
.end method

.method public static final synthetic access$NavigationItemLayout-KmRX-Dg(Landroidx/compose/foundation/interaction/InteractionSource;JLandroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;FFFFFLandroidx/compose/runtime/Composer;II)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p15}, Landroidx/compose/material3/NavigationItemKt;->NavigationItemLayout-KmRX-Dg(Landroidx/compose/foundation/interaction/InteractionSource;JLandroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;FFFFFLandroidx/compose/runtime/Composer;II)V

    return-void
.end method

.method public static final synthetic access$NavigationItem_SHbi2eg$lambda$3(Landroidx/compose/runtime/MutableIntState;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/material3/NavigationItemKt;->NavigationItem_SHbi2eg$lambda$3(Landroidx/compose/runtime/MutableIntState;I)V

    return-void
.end method

.method public static final synthetic access$placeIcon-X9ElhV4(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Landroidx/compose/material3/NavigationItemKt;->placeIcon-X9ElhV4(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;J)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$placeLabelAndStartIcon-nru01g4(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;JF)Landroidx/compose/ui/layout/MeasureResult;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p7}, Landroidx/compose/material3/NavigationItemKt;->placeLabelAndStartIcon-nru01g4(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;JF)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$placeLabelAndTopIcon-qoqLrGI(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;JFFF)Landroidx/compose/ui/layout/MeasureResult;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p9}, Landroidx/compose/material3/NavigationItemKt;->placeLabelAndTopIcon-qoqLrGI(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;JFFF)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method

.method public static final getNavigationItemMinHeight()F
    .locals 1

    .line 722
    sget v0, Landroidx/compose/material3/NavigationItemKt;->NavigationItemMinHeight:F

    return v0
.end method

.method public static final getNavigationItemMinWidth()F
    .locals 1

    .line 720
    sget v0, Landroidx/compose/material3/NavigationItemKt;->NavigationItemMinWidth:F

    return v0
.end method

.method private static final placeIcon-X9ElhV4(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 16

    move-wide/from16 v0, p4

    .line 606
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(JI)I

    move-result v4

    .line 607
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(JI)I

    move-result v5

    .line 609
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v0

    sub-int v0, v4, v0

    div-int/lit8 v8, v0, 0x2

    .line 610
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v0

    sub-int v0, v5, v0

    div-int/lit8 v9, v0, 0x2

    .line 611
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v0

    sub-int v0, v4, v0

    div-int/lit8 v11, v0, 0x2

    .line 612
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v0

    sub-int v0, v5, v0

    div-int/lit8 v12, v0, 0x2

    .line 613
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v0

    sub-int v0, v4, v0

    div-int/lit8 v14, v0, 0x2

    .line 614
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v0

    sub-int v0, v5, v0

    div-int/lit8 v15, v0, 0x2

    .line 616
    new-instance v0, Landroidx/compose/material3/NavigationItemKt$placeIcon$1;

    move-object v6, v0

    move-object/from16 v7, p3

    move-object/from16 v10, p1

    move-object/from16 v13, p2

    invoke-direct/range {v6 .. v15}, Landroidx/compose/material3/NavigationItemKt$placeIcon$1;-><init>(Landroidx/compose/ui/layout/Placeable;IILandroidx/compose/ui/layout/Placeable;IILandroidx/compose/ui/layout/Placeable;II)V

    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function1;

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v6, 0x0

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v9}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0
.end method

.method private static final placeLabelAndStartIcon-nru01g4(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;JF)Landroidx/compose/ui/layout/MeasureResult;
    .locals 18

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    move/from16 v3, p7

    .line 697
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v4

    invoke-static {v1, v2, v4}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(JI)I

    move-result v4

    .line 698
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v5

    invoke-static {v1, v2, v5}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(JI)I

    move-result v1

    .line 700
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v2

    sub-int v2, v4, v2

    div-int/lit8 v7, v2, 0x2

    .line 701
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v2

    sub-int v2, v1, v2

    div-int/lit8 v8, v2, 0x2

    .line 702
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v2

    sub-int v2, v1, v2

    div-int/lit8 v14, v2, 0x2

    .line 703
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v2

    sub-int v2, v1, v2

    div-int/lit8 v11, v2, 0x2

    .line 705
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v2

    invoke-interface {v0, v3}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v5

    add-int/2addr v2, v5

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v5

    add-int/2addr v2, v5

    sub-int v2, v4, v2

    .line 706
    div-int/lit8 v13, v2, 0x2

    .line 707
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v2

    add-int/2addr v2, v13

    invoke-interface {v0, v3}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v3

    add-int v10, v2, v3

    .line 708
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v2

    sub-int v2, v4, v2

    div-int/lit8 v16, v2, 0x2

    .line 709
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v2

    sub-int v2, v1, v2

    div-int/lit8 v17, v2, 0x2

    .line 711
    new-instance v2, Landroidx/compose/material3/NavigationItemKt$placeLabelAndStartIcon$1;

    move-object v5, v2

    move-object/from16 v6, p4

    move-object/from16 v9, p1

    move-object/from16 v12, p2

    move-object/from16 v15, p3

    invoke-direct/range {v5 .. v17}, Landroidx/compose/material3/NavigationItemKt$placeLabelAndStartIcon$1;-><init>(Landroidx/compose/ui/layout/Placeable;IILandroidx/compose/ui/layout/Placeable;IILandroidx/compose/ui/layout/Placeable;IILandroidx/compose/ui/layout/Placeable;II)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    const/4 v3, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 p1, v4

    move/from16 p2, v1

    move-object/from16 p3, v6

    move-object/from16 p4, v2

    move/from16 p5, v3

    move-object/from16 p6, v5

    invoke-static/range {p0 .. p6}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0
.end method

.method private static final placeLabelAndTopIcon-qoqLrGI(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;JFFF)Landroidx/compose/ui/layout/MeasureResult;
    .locals 23

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    move/from16 v3, p7

    move/from16 v4, p8

    move/from16 v5, p9

    .line 647
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v6

    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v1, v2, v6}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(JI)I

    move-result v6

    .line 649
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v7

    int-to-float v7, v7

    .line 650
    invoke-interface {v0, v3}, Landroidx/compose/ui/layout/MeasureScope;->toPx-0680j_4(F)F

    move-result v8

    add-float/2addr v7, v8

    .line 651
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    .line 654
    invoke-interface {v0, v5}, Landroidx/compose/ui/layout/MeasureScope;->toPx-0680j_4(F)F

    move-result v8

    const/4 v9, 0x2

    int-to-float v10, v9

    mul-float/2addr v8, v10

    add-float/2addr v7, v8

    invoke-static {v7}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v7

    .line 653
    invoke-static {v1, v2, v7}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(JI)I

    move-result v1

    add-float v2, v5, v4

    .line 913
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    .line 657
    invoke-interface {v0, v2}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v19

    .line 658
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v2

    sub-int v2, v6, v2

    div-int/lit8 v18, v2, 0x2

    .line 659
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v2

    sub-int v2, v6, v2

    div-int/lit8 v12, v2, 0x2

    .line 660
    invoke-interface {v0, v4}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v2

    sub-int v22, v19, v2

    .line 661
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v2

    sub-int v2, v6, v2

    div-int/lit8 v15, v2, 0x2

    .line 665
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v2

    add-int v2, v19, v2

    add-float/2addr v3, v4

    .line 914
    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 666
    invoke-interface {v0, v3}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v3

    add-int v16, v2, v3

    .line 667
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v2

    sub-int v2, v6, v2

    div-int/lit8 v21, v2, 0x2

    .line 670
    new-instance v2, Landroidx/compose/material3/NavigationItemKt$placeLabelAndTopIcon$1;

    move-object v10, v2

    move-object/from16 v11, p4

    move/from16 v13, v22

    move-object/from16 v14, p1

    move-object/from16 v17, p2

    move-object/from16 v20, p3

    invoke-direct/range {v10 .. v22}, Landroidx/compose/material3/NavigationItemKt$placeLabelAndTopIcon$1;-><init>(Landroidx/compose/ui/layout/Placeable;IILandroidx/compose/ui/layout/Placeable;IILandroidx/compose/ui/layout/Placeable;IILandroidx/compose/ui/layout/Placeable;II)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 p1, v6

    move/from16 p2, v1

    move-object/from16 p3, v5

    move-object/from16 p4, v2

    move/from16 p5, v3

    move-object/from16 p6, v4

    invoke-static/range {p0 .. p6}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0
.end method
