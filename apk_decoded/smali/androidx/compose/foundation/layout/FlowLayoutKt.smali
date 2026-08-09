.class public final Landroidx/compose/foundation/layout/FlowLayoutKt;
.super Ljava/lang/Object;
.source "FlowLayout.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFlowLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FlowLayout.kt\nandroidx/compose/foundation/layout/FlowLayoutKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 4 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 5 Composer.kt\nandroidx/compose/runtime/Updater\n+ 6 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 7 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 8 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n+ 9 RowColumnImpl.kt\nandroidx/compose/foundation/layout/OrientationIndependentConstraints\n+ 10 IntList.kt\nandroidx/collection/IntListKt\n+ 11 IntList.kt\nandroidx/collection/IntList\n*L\n1#1,1544:1\n1225#2,6:1545\n1225#2,6:1551\n1225#2,6:1562\n1225#2,6:1600\n1225#2,6:1606\n1225#2,6:1617\n1225#2,6:1655\n1225#2,6:1661\n1225#2,6:1667\n1225#2,6:1673\n171#3,5:1557\n79#3,6:1568\n86#3,4:1583\n90#3,2:1593\n94#3:1598\n177#3:1599\n171#3,5:1612\n79#3,6:1623\n86#3,4:1638\n90#3,2:1648\n94#3:1653\n177#3:1654\n368#4,9:1574\n377#4,3:1595\n368#4,9:1629\n377#4,3:1650\n4034#5,6:1587\n4034#5,6:1642\n69#6,6:1679\n1#7:1685\n1208#8:1686\n1187#8,2:1687\n230#9:1689\n229#9:1690\n232#9:1691\n231#9:1699\n230#9:1700\n231#9:1702\n232#9:1703\n231#9:1704\n232#9:1705\n229#9:1706\n230#9:1707\n931#10:1692\n931#10:1693\n70#11:1694\n266#11,4:1695\n271#11:1701\n*S KotlinDebug\n*F\n+ 1 FlowLayout.kt\nandroidx/compose/foundation/layout/FlowLayoutKt\n*L\n94#1:1545,6\n104#1:1551,6\n111#1:1562,6\n158#1:1600,6\n168#1:1606,6\n174#1:1617,6\n381#1:1655,6\n415#1:1661,6\n444#1:1667,6\n476#1:1673,6\n111#1:1557,5\n111#1:1568,6\n111#1:1583,4\n111#1:1593,2\n111#1:1598\n111#1:1599\n174#1:1612,5\n174#1:1623,6\n174#1:1638,4\n174#1:1648,2\n174#1:1653\n174#1:1654\n111#1:1574,9\n111#1:1595,3\n174#1:1629,9\n174#1:1650,3\n111#1:1587,6\n174#1:1642,6\n905#1:1679,6\n1175#1:1686\n1175#1:1687,2\n1176#1:1689\n1177#1:1690\n1178#1:1691\n1375#1:1699\n1376#1:1700\n1497#1:1702\n1498#1:1703\n1511#1:1704\n1512#1:1705\n1524#1:1706\n1525#1:1707\n1227#1:1692\n1228#1:1693\n1351#1:1694\n1371#1:1695,4\n1371#1:1701\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00d4\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0015\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\u001ag\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00122\u001c\u0010\u0013\u001a\u0018\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00070\u0014\u00a2\u0006\u0002\u0008\u0016\u00a2\u0006\u0002\u0008\u0017H\u0007\u00a2\u0006\u0002\u0010\u0018\u001ag\u0010\u0019\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u001b2\u001c\u0010\u0013\u001a\u0018\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u00070\u0014\u00a2\u0006\u0002\u0008\u0016\u00a2\u0006\u0002\u0008\u0017H\u0007\u00a2\u0006\u0002\u0010\u001d\u001a%\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010 \u001a\u00020\u000fH\u0001\u00a2\u0006\u0002\u0010!\u001a5\u0010\"\u001a\u00020#2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010 \u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010$\u001a\u00020%H\u0001\u00a2\u0006\u0002\u0010&\u001a\u0095\u0001\u0010\'\u001a\u00020(2\u000c\u0010)\u001a\u0008\u0012\u0004\u0012\u00020+0*2#\u0010,\u001a\u001f\u0012\u0004\u0012\u00020+\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f0-\u00a2\u0006\u0002\u0008\u00172#\u0010.\u001a\u001f\u0012\u0004\u0012\u00020+\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f0-\u00a2\u0006\u0002\u0008\u00172\u0006\u0010/\u001a\u00020\u000f2\u0006\u00100\u001a\u00020\u000f2\u0006\u00101\u001a\u00020\u000f2\u0006\u0010 \u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020%H\u0002\u00a2\u0006\u0002\u00102\u001a[\u0010\'\u001a\u00020(2\u000c\u0010)\u001a\u0008\u0012\u0004\u0012\u00020+0*2\u0006\u00103\u001a\u0002042\u0006\u00105\u001a\u0002042\u0006\u0010/\u001a\u00020\u000f2\u0006\u00100\u001a\u00020\u000f2\u0006\u00101\u001a\u00020\u000f2\u0006\u0010 \u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020%H\u0002\u00a2\u0006\u0002\u00106\u001aS\u00107\u001a\u00020\u000f2\u000c\u0010)\u001a\u0008\u0012\u0004\u0012\u00020+0*2#\u0010,\u001a\u001f\u0012\u0004\u0012\u00020+\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f0-\u00a2\u0006\u0002\u0008\u00172\u0006\u00108\u001a\u00020\u000f2\u0006\u00100\u001a\u00020\u000f2\u0006\u0010 \u001a\u00020\u000fH\u0002\u001a\u0090\u0001\u00109\u001a\u00020\u000f2\u000c\u0010)\u001a\u0008\u0012\u0004\u0012\u00020+0*2#\u0010,\u001a\u001f\u0012\u0004\u0012\u00020+\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f0-\u00a2\u0006\u0002\u0008\u00172#\u0010.\u001a\u001f\u0012\u0004\u0012\u00020+\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f0-\u00a2\u0006\u0002\u0008\u00172\u0006\u00108\u001a\u00020\u000f2\u0006\u00100\u001a\u00020\u000f2\u0006\u00101\u001a\u00020\u000f2\u0006\u0010 \u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020%H\u0002\u001a%\u0010:\u001a\u00020\u001f2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010 \u001a\u00020\u000fH\u0001\u00a2\u0006\u0002\u0010;\u001a5\u0010<\u001a\u00020#2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010 \u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010$\u001a\u00020%H\u0001\u00a2\u0006\u0002\u0010=\u001a\\\u0010>\u001a\u00020?*\u00020@2\u0006\u0010A\u001a\u00020B2\u000c\u0010C\u001a\u0008\u0012\u0004\u0012\u00020E0D2\u0006\u0010F\u001a\u00020G2\u0006\u0010H\u001a\u00020G2\u0006\u0010I\u001a\u00020J2\u0006\u0010 \u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020%H\u0000\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008K\u0010L\u001a\u001c\u0010M\u001a\u00020\u000f*\u00020+2\u0006\u0010N\u001a\u00020O2\u0006\u0010,\u001a\u00020\u000fH\u0000\u001a\u001c\u0010P\u001a\u00020\u000f*\u00020+2\u0006\u0010N\u001a\u00020O2\u0006\u0010.\u001a\u00020\u000fH\u0000\u001a<\u0010Q\u001a\u00020(*\u00020E2\u0006\u0010A\u001a\u00020B2\u0006\u0010I\u001a\u00020R2\u0014\u0010S\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010T\u0012\u0004\u0012\u00020\u00070\u0014H\u0000\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008U\u0010V\u001aT\u0010W\u001a\u00020?*\u00020@2\u0006\u0010I\u001a\u00020J2\u0006\u0010X\u001a\u00020\u000f2\u0006\u0010Y\u001a\u00020\u000f2\u0006\u00105\u001a\u0002042\u000c\u0010Z\u001a\u0008\u0012\u0004\u0012\u00020?0[2\u0006\u0010\\\u001a\u00020B2\u0006\u0010]\u001a\u000204H\u0000\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008^\u0010_\u001a\u001e\u0010`\u001a\u0004\u0018\u00010E*\u0008\u0012\u0004\u0012\u00020E0D2\u0008\u0010a\u001a\u0004\u0018\u00010bH\u0002\"\u0014\u0010\u0000\u001a\u00020\u0001X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0003\"\u0014\u0010\u0004\u001a\u00020\u0001X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0003\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006c"
    }
    d2 = {
        "CROSS_AXIS_ALIGNMENT_START",
        "Landroidx/compose/foundation/layout/CrossAxisAlignment;",
        "getCROSS_AXIS_ALIGNMENT_START",
        "()Landroidx/compose/foundation/layout/CrossAxisAlignment;",
        "CROSS_AXIS_ALIGNMENT_TOP",
        "getCROSS_AXIS_ALIGNMENT_TOP",
        "FlowColumn",
        "",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "verticalArrangement",
        "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
        "horizontalArrangement",
        "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
        "maxItemsInEachColumn",
        "",
        "maxLines",
        "overflow",
        "Landroidx/compose/foundation/layout/FlowColumnOverflow;",
        "content",
        "Lkotlin/Function1;",
        "Landroidx/compose/foundation/layout/FlowColumnScope;",
        "Landroidx/compose/runtime/Composable;",
        "Lkotlin/ExtensionFunctionType;",
        "(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;IILandroidx/compose/foundation/layout/FlowColumnOverflow;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V",
        "FlowRow",
        "maxItemsInEachRow",
        "Landroidx/compose/foundation/layout/FlowRowOverflow;",
        "Landroidx/compose/foundation/layout/FlowRowScope;",
        "(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;IILandroidx/compose/foundation/layout/FlowRowOverflow;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V",
        "columnMeasurementHelper",
        "Landroidx/compose/ui/layout/MeasurePolicy;",
        "maxItemsInMainAxis",
        "(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;",
        "columnMeasurementMultiContentHelper",
        "Landroidx/compose/ui/layout/MultiContentMeasurePolicy;",
        "overflowState",
        "Landroidx/compose/foundation/layout/FlowLayoutOverflowState;",
        "(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;IILandroidx/compose/foundation/layout/FlowLayoutOverflowState;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MultiContentMeasurePolicy;",
        "intrinsicCrossAxisSize",
        "Landroidx/collection/IntIntPair;",
        "children",
        "",
        "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
        "mainAxisSize",
        "Lkotlin/Function3;",
        "crossAxisSize",
        "mainAxisAvailable",
        "mainAxisSpacing",
        "crossAxisSpacing",
        "(Ljava/util/List;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;IIIIILandroidx/compose/foundation/layout/FlowLayoutOverflowState;)J",
        "mainAxisSizes",
        "",
        "crossAxisSizes",
        "(Ljava/util/List;[I[IIIIIILandroidx/compose/foundation/layout/FlowLayoutOverflowState;)J",
        "maxIntrinsicMainAxisSize",
        "crossAxisAvailable",
        "minIntrinsicMainAxisSize",
        "rowMeasurementHelper",
        "(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;",
        "rowMeasurementMultiContentHelper",
        "(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;IILandroidx/compose/foundation/layout/FlowLayoutOverflowState;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MultiContentMeasurePolicy;",
        "breakDownItems",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "Landroidx/compose/ui/layout/MeasureScope;",
        "measurePolicy",
        "Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;",
        "measurablesIterator",
        "",
        "Landroidx/compose/ui/layout/Measurable;",
        "mainAxisSpacingDp",
        "Landroidx/compose/ui/unit/Dp;",
        "crossAxisSpacingDp",
        "constraints",
        "Landroidx/compose/foundation/layout/OrientationIndependentConstraints;",
        "breakDownItems-di9J0FM",
        "(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;Ljava/util/Iterator;FFJIILandroidx/compose/foundation/layout/FlowLayoutOverflowState;)Landroidx/compose/ui/layout/MeasureResult;",
        "crossAxisMin",
        "isHorizontal",
        "",
        "mainAxisMin",
        "measureAndCache",
        "Landroidx/compose/ui/unit/Constraints;",
        "storePlaceable",
        "Landroidx/compose/ui/layout/Placeable;",
        "measureAndCache-rqJ1uqs",
        "(Landroidx/compose/ui/layout/Measurable;Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;JLkotlin/jvm/functions/Function1;)J",
        "placeHelper",
        "mainAxisTotalSize",
        "crossAxisTotalSize",
        "items",
        "Landroidx/compose/runtime/collection/MutableVector;",
        "measureHelper",
        "outPosition",
        "placeHelper-BmaY500",
        "(Landroidx/compose/ui/layout/MeasureScope;JII[ILandroidx/compose/runtime/collection/MutableVector;Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;[I)Landroidx/compose/ui/layout/MeasureResult;",
        "safeNext",
        "info",
        "Landroidx/compose/foundation/layout/FlowLineInfo;",
        "foundation-layout_release"
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
.field private static final CROSS_AXIS_ALIGNMENT_START:Landroidx/compose/foundation/layout/CrossAxisAlignment;

.field private static final CROSS_AXIS_ALIGNMENT_TOP:Landroidx/compose/foundation/layout/CrossAxisAlignment;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1446
    sget-object v0, Landroidx/compose/foundation/layout/CrossAxisAlignment;->Companion:Landroidx/compose/foundation/layout/CrossAxisAlignment$Companion;

    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->getTop()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/layout/CrossAxisAlignment$Companion;->vertical$foundation_layout_release(Landroidx/compose/ui/Alignment$Vertical;)Landroidx/compose/foundation/layout/CrossAxisAlignment;

    move-result-object v0

    sput-object v0, Landroidx/compose/foundation/layout/FlowLayoutKt;->CROSS_AXIS_ALIGNMENT_TOP:Landroidx/compose/foundation/layout/CrossAxisAlignment;

    .line 1447
    sget-object v0, Landroidx/compose/foundation/layout/CrossAxisAlignment;->Companion:Landroidx/compose/foundation/layout/CrossAxisAlignment$Companion;

    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->getStart()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/layout/CrossAxisAlignment$Companion;->horizontal$foundation_layout_release(Landroidx/compose/ui/Alignment$Horizontal;)Landroidx/compose/foundation/layout/CrossAxisAlignment;

    move-result-object v0

    sput-object v0, Landroidx/compose/foundation/layout/FlowLayoutKt;->CROSS_AXIS_ALIGNMENT_START:Landroidx/compose/foundation/layout/CrossAxisAlignment;

    return-void
.end method

.method public static final FlowColumn(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;IILandroidx/compose/foundation/layout/FlowColumnOverflow;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "II",
            "Landroidx/compose/foundation/layout/FlowColumnOverflow;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/foundation/layout/FlowColumnScope;",
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

    move-object/from16 v7, p6

    move/from16 v8, p8

    const v0, -0x659df008

    move-object/from16 v1, p7

    .line 157
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v1

    const-string v2, "C(FlowColumn)P(4,6,1,2,3,5)157@6483L65,160@6573L172,167@6791L264,173@7060L105:FlowLayout.kt#2w3rfo"

    invoke-static {v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, p9, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v3, v8, 0x6

    move v4, v3

    move-object/from16 v3, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v8, 0x6

    if-nez v3, :cond_2

    move-object/from16 v3, p0

    invoke-interface {v1, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v4, v8

    goto :goto_1

    :cond_2
    move-object/from16 v3, p0

    move v4, v8

    :goto_1
    and-int/lit8 v5, p9, 0x2

    if-eqz v5, :cond_3

    or-int/lit8 v4, v4, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v6, v8, 0x30

    if-nez v6, :cond_5

    move-object/from16 v6, p1

    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/16 v9, 0x20

    goto :goto_2

    :cond_4
    const/16 v9, 0x10

    :goto_2
    or-int/2addr v4, v9

    goto :goto_4

    :cond_5
    :goto_3
    move-object/from16 v6, p1

    :goto_4
    and-int/lit8 v9, p9, 0x4

    if-eqz v9, :cond_6

    or-int/lit16 v4, v4, 0x180

    goto :goto_6

    :cond_6
    and-int/lit16 v10, v8, 0x180

    if-nez v10, :cond_8

    move-object/from16 v10, p2

    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    const/16 v11, 0x100

    goto :goto_5

    :cond_7
    const/16 v11, 0x80

    :goto_5
    or-int/2addr v4, v11

    goto :goto_7

    :cond_8
    :goto_6
    move-object/from16 v10, p2

    :goto_7
    and-int/lit8 v11, p9, 0x8

    if-eqz v11, :cond_9

    or-int/lit16 v4, v4, 0xc00

    goto :goto_9

    :cond_9
    and-int/lit16 v12, v8, 0xc00

    if-nez v12, :cond_b

    move/from16 v12, p3

    invoke-interface {v1, v12}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v13

    if-eqz v13, :cond_a

    const/16 v13, 0x800

    goto :goto_8

    :cond_a
    const/16 v13, 0x400

    :goto_8
    or-int/2addr v4, v13

    goto :goto_a

    :cond_b
    :goto_9
    move/from16 v12, p3

    :goto_a
    and-int/lit8 v13, p9, 0x10

    if-eqz v13, :cond_c

    or-int/lit16 v4, v4, 0x6000

    goto :goto_c

    :cond_c
    and-int/lit16 v14, v8, 0x6000

    if-nez v14, :cond_e

    move/from16 v14, p4

    invoke-interface {v1, v14}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v15

    if-eqz v15, :cond_d

    const/16 v15, 0x4000

    goto :goto_b

    :cond_d
    const/16 v15, 0x2000

    :goto_b
    or-int/2addr v4, v15

    goto :goto_d

    :cond_e
    :goto_c
    move/from16 v14, p4

    :goto_d
    and-int/lit8 v15, p9, 0x20

    const/high16 v16, 0x30000

    if-eqz v15, :cond_f

    or-int v4, v4, v16

    move-object/from16 v0, p5

    goto :goto_f

    :cond_f
    and-int v16, v8, v16

    move-object/from16 v0, p5

    if-nez v16, :cond_11

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_10

    const/high16 v16, 0x20000

    goto :goto_e

    :cond_10
    const/high16 v16, 0x10000

    :goto_e
    or-int v4, v4, v16

    :cond_11
    :goto_f
    and-int/lit8 v16, p9, 0x40

    const/high16 v17, 0x180000

    if-eqz v16, :cond_12

    or-int v4, v4, v17

    goto :goto_11

    :cond_12
    and-int v16, v8, v17

    if-nez v16, :cond_14

    invoke-interface {v1, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_13

    const/high16 v16, 0x100000

    goto :goto_10

    :cond_13
    const/high16 v16, 0x80000

    :goto_10
    or-int v4, v4, v16

    :cond_14
    :goto_11
    const v16, 0x92493

    and-int v0, v4, v16

    const v3, 0x92492

    if-ne v0, v3, :cond_16

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_12

    .line 179
    :cond_15
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v2, p0

    move-object/from16 v9, p5

    move-object v3, v10

    move v4, v12

    move v5, v14

    goto/16 :goto_1c

    :cond_16
    :goto_12
    if-eqz v2, :cond_17

    .line 150
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    goto :goto_13

    :cond_17
    move-object/from16 v0, p0

    :goto_13
    if-eqz v5, :cond_18

    .line 151
    sget-object v2, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v2}, Landroidx/compose/foundation/layout/Arrangement;->getTop()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    move-result-object v2

    move-object v6, v2

    :cond_18
    if-eqz v9, :cond_19

    .line 152
    sget-object v2, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v2}, Landroidx/compose/foundation/layout/Arrangement;->getStart()Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    move-result-object v2

    goto :goto_14

    :cond_19
    move-object v2, v10

    :goto_14
    const v3, 0x7fffffff

    if-eqz v11, :cond_1a

    move v5, v3

    goto :goto_15

    :cond_1a
    move v5, v12

    :goto_15
    if-eqz v13, :cond_1b

    goto :goto_16

    :cond_1b
    move v3, v14

    :goto_16
    if-eqz v15, :cond_1c

    .line 155
    sget-object v9, Landroidx/compose/foundation/layout/FlowColumnOverflow;->Companion:Landroidx/compose/foundation/layout/FlowColumnOverflow$Companion;

    invoke-virtual {v9}, Landroidx/compose/foundation/layout/FlowColumnOverflow$Companion;->getClip()Landroidx/compose/foundation/layout/FlowColumnOverflow;

    move-result-object v9

    move-object v15, v9

    goto :goto_17

    :cond_1c
    move-object/from16 v15, p5

    :goto_17
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v9

    if-eqz v9, :cond_1d

    const/4 v9, -0x1

    const-string/jumbo v10, "androidx.compose.foundation.layout.FlowColumn (FlowLayout.kt:156)"

    const v11, -0x659df008

    .line 157
    invoke-static {v11, v4, v9, v10}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_1d
    const v9, -0x5a567411

    .line 158
    const-string v14, "CC(remember):FlowLayout.kt#9igjgp"

    invoke-static {v1, v9, v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/high16 v9, 0x70000

    and-int v13, v4, v9

    const/4 v12, 0x0

    const/4 v11, 0x1

    const/high16 v9, 0x20000

    if-ne v13, v9, :cond_1e

    move v9, v11

    goto :goto_18

    :cond_1e
    move v9, v12

    .line 1600
    :goto_18
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    if-nez v9, :cond_1f

    .line 1601
    sget-object v9, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v9}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v9

    if-ne v10, v9, :cond_20

    .line 159
    :cond_1f
    invoke-virtual {v15}, Landroidx/compose/foundation/layout/FlowColumnOverflow;->createOverflowState$foundation_layout_release()Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    move-result-object v10

    .line 1603
    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 158
    :cond_20
    check-cast v10, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    shr-int/lit8 v9, v4, 0x3

    and-int/lit16 v9, v9, 0x1ffe

    move/from16 v16, v9

    move-object v9, v6

    move-object/from16 p0, v10

    move-object v10, v2

    move-object/from16 p1, v2

    move v2, v11

    move v11, v5

    move v12, v3

    move v2, v13

    move-object/from16 v13, p0

    move/from16 p2, v3

    move-object v3, v14

    move-object v14, v1

    move/from16 p3, v5

    move-object v5, v15

    move/from16 v15, v16

    .line 161
    invoke-static/range {v9 .. v15}, Landroidx/compose/foundation/layout/FlowLayoutKt;->columnMeasurementMultiContentHelper(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;IILandroidx/compose/foundation/layout/FlowLayoutOverflowState;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MultiContentMeasurePolicy;

    move-result-object v9

    const v10, -0x5a564cca

    .line 168
    invoke-static {v1, v10, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/high16 v3, 0x20000

    if-ne v2, v3, :cond_21

    const/4 v12, 0x1

    goto :goto_19

    :cond_21
    const/4 v12, 0x0

    :goto_19
    const/high16 v2, 0x380000

    and-int/2addr v2, v4

    const/high16 v3, 0x100000

    if-ne v2, v3, :cond_22

    const/4 v2, 0x1

    goto :goto_1a

    :cond_22
    const/4 v2, 0x0

    :goto_1a
    or-int/2addr v2, v12

    .line 1606
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_23

    .line 1607
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v3, v2, :cond_24

    .line 169
    :cond_23
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v2

    check-cast v3, Ljava/util/List;

    .line 170
    new-instance v2, Landroidx/compose/foundation/layout/FlowLayoutKt$FlowColumn$list$1$1;

    invoke-direct {v2, v7}, Landroidx/compose/foundation/layout/FlowLayoutKt$FlowColumn$list$1$1;-><init>(Lkotlin/jvm/functions/Function3;)V

    const v4, 0x3ac36fc9

    const/4 v10, 0x1

    invoke-static {v4, v10, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v10, p0

    .line 171
    invoke-virtual {v5, v10, v3}, Landroidx/compose/foundation/layout/FlowColumnOverflow;->addOverflowComposables$foundation_layout_release(Landroidx/compose/foundation/layout/FlowLayoutOverflowState;Ljava/util/List;)V

    .line 1609
    invoke-interface {v1, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 168
    :cond_24
    check-cast v3, Ljava/util/List;

    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const v2, 0x5365e06c

    .line 174
    const-string v4, "CC(Layout)P(!1,2)174@7002L62,171@6888L182:Layout.kt#80mrfh"

    .line 1612
    invoke-static {v1, v2, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 1614
    invoke-static {v3}, Landroidx/compose/ui/layout/LayoutKt;->combineAsVirtualLayouts(Ljava/util/List;)Lkotlin/jvm/functions/Function2;

    move-result-object v2

    const v3, -0x1154a9cd

    const-string v4, "CC(remember):Layout.kt#9igjgp"

    .line 1616
    invoke-static {v1, v3, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v1, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    .line 1617
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_25

    .line 1618
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v4, v3, :cond_26

    .line 1616
    :cond_25
    invoke-static {v9}, Landroidx/compose/ui/layout/MultiContentMeasurePolicyKt;->createMeasurePolicy(Landroidx/compose/ui/layout/MultiContentMeasurePolicy;)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v4

    .line 1620
    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1616
    :cond_26
    check-cast v4, Landroidx/compose/ui/layout/MeasurePolicy;

    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const v3, -0x4ee9b9da

    .line 1613
    const-string v9, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh"

    .line 1623
    invoke-static {v1, v3, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v3, 0x0

    .line 1624
    invoke-static {v1, v3}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v9

    .line 1625
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v10

    .line 1626
    invoke-static {v1, v0}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v11

    .line 1628
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v12

    const v13, -0x2942ffcf

    .line 1627
    const-string v14, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp"

    .line 1629
    invoke-static {v1, v13, v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 1630
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v13

    instance-of v13, v13, Landroidx/compose/runtime/Applier;

    if-nez v13, :cond_27

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 1631
    :cond_27
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 1632
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v13

    if-eqz v13, :cond_28

    .line 1633
    invoke-interface {v1, v12}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1b

    .line 1635
    :cond_28
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 1637
    :goto_1b
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v12

    .line 1638
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v13

    invoke-static {v12, v4, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1639
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v12, v10, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1641
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    .line 1643
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v10

    if-nez v10, :cond_29

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v10, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2a

    .line 1644
    :cond_29
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v12, v10}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1645
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v12, v9, v4}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1648
    :cond_2a
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v12, v11, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1650
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1651
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 1629
    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 1623
    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 1612
    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 1654
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_2b
    move-object/from16 v3, p1

    move/from16 v4, p3

    move-object v2, v0

    move-object v9, v5

    move/from16 v5, p2

    .line 179
    :goto_1c
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v10

    if-eqz v10, :cond_2c

    new-instance v11, Landroidx/compose/foundation/layout/FlowLayoutKt$FlowColumn$1;

    move-object v0, v11

    move-object v1, v2

    move-object v2, v6

    move-object v6, v9

    move-object/from16 v7, p6

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Landroidx/compose/foundation/layout/FlowLayoutKt$FlowColumn$1;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;IILandroidx/compose/foundation/layout/FlowColumnOverflow;Lkotlin/jvm/functions/Function3;II)V

    check-cast v11, Lkotlin/jvm/functions/Function2;

    invoke-interface {v10, v11}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_2c
    return-void
.end method

.method public static final FlowRow(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;IILandroidx/compose/foundation/layout/FlowRowOverflow;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "II",
            "Landroidx/compose/foundation/layout/FlowRowOverflow;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/foundation/layout/FlowRowScope;",
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

    move-object/from16 v7, p6

    move/from16 v8, p8

    const v0, 0x1a191c2e

    move-object/from16 v1, p7

    .line 93
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v1

    const-string v2, "C(FlowRow)P(4,1,6,2,3,5)93@4089L65,96@4179L166,103@4391L261,110@4658L105:FlowLayout.kt#2w3rfo"

    invoke-static {v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, p9, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v3, v8, 0x6

    move v4, v3

    move-object/from16 v3, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v8, 0x6

    if-nez v3, :cond_2

    move-object/from16 v3, p0

    invoke-interface {v1, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v4, v8

    goto :goto_1

    :cond_2
    move-object/from16 v3, p0

    move v4, v8

    :goto_1
    and-int/lit8 v5, p9, 0x2

    if-eqz v5, :cond_3

    or-int/lit8 v4, v4, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v6, v8, 0x30

    if-nez v6, :cond_5

    move-object/from16 v6, p1

    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/16 v9, 0x20

    goto :goto_2

    :cond_4
    const/16 v9, 0x10

    :goto_2
    or-int/2addr v4, v9

    goto :goto_4

    :cond_5
    :goto_3
    move-object/from16 v6, p1

    :goto_4
    and-int/lit8 v9, p9, 0x4

    if-eqz v9, :cond_6

    or-int/lit16 v4, v4, 0x180

    goto :goto_6

    :cond_6
    and-int/lit16 v10, v8, 0x180

    if-nez v10, :cond_8

    move-object/from16 v10, p2

    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    const/16 v11, 0x100

    goto :goto_5

    :cond_7
    const/16 v11, 0x80

    :goto_5
    or-int/2addr v4, v11

    goto :goto_7

    :cond_8
    :goto_6
    move-object/from16 v10, p2

    :goto_7
    and-int/lit8 v11, p9, 0x8

    if-eqz v11, :cond_9

    or-int/lit16 v4, v4, 0xc00

    goto :goto_9

    :cond_9
    and-int/lit16 v12, v8, 0xc00

    if-nez v12, :cond_b

    move/from16 v12, p3

    invoke-interface {v1, v12}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v13

    if-eqz v13, :cond_a

    const/16 v13, 0x800

    goto :goto_8

    :cond_a
    const/16 v13, 0x400

    :goto_8
    or-int/2addr v4, v13

    goto :goto_a

    :cond_b
    :goto_9
    move/from16 v12, p3

    :goto_a
    and-int/lit8 v13, p9, 0x10

    if-eqz v13, :cond_c

    or-int/lit16 v4, v4, 0x6000

    goto :goto_c

    :cond_c
    and-int/lit16 v14, v8, 0x6000

    if-nez v14, :cond_e

    move/from16 v14, p4

    invoke-interface {v1, v14}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v15

    if-eqz v15, :cond_d

    const/16 v15, 0x4000

    goto :goto_b

    :cond_d
    const/16 v15, 0x2000

    :goto_b
    or-int/2addr v4, v15

    goto :goto_d

    :cond_e
    :goto_c
    move/from16 v14, p4

    :goto_d
    and-int/lit8 v15, p9, 0x20

    const/high16 v16, 0x30000

    if-eqz v15, :cond_f

    or-int v4, v4, v16

    move-object/from16 v0, p5

    goto :goto_f

    :cond_f
    and-int v16, v8, v16

    move-object/from16 v0, p5

    if-nez v16, :cond_11

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_10

    const/high16 v16, 0x20000

    goto :goto_e

    :cond_10
    const/high16 v16, 0x10000

    :goto_e
    or-int v4, v4, v16

    :cond_11
    :goto_f
    and-int/lit8 v16, p9, 0x40

    const/high16 v17, 0x180000

    if-eqz v16, :cond_12

    or-int v4, v4, v17

    goto :goto_11

    :cond_12
    and-int v16, v8, v17

    if-nez v16, :cond_14

    invoke-interface {v1, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_13

    const/high16 v16, 0x100000

    goto :goto_10

    :cond_13
    const/high16 v16, 0x80000

    :goto_10
    or-int v4, v4, v16

    :cond_14
    :goto_11
    const v16, 0x92493

    and-int v0, v4, v16

    const v3, 0x92492

    if-ne v0, v3, :cond_16

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_12

    .line 116
    :cond_15
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v2, p0

    move-object/from16 v9, p5

    move-object v3, v10

    move v4, v12

    move v5, v14

    goto/16 :goto_1c

    :cond_16
    :goto_12
    if-eqz v2, :cond_17

    .line 86
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    goto :goto_13

    :cond_17
    move-object/from16 v0, p0

    :goto_13
    if-eqz v5, :cond_18

    .line 87
    sget-object v2, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v2}, Landroidx/compose/foundation/layout/Arrangement;->getStart()Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    move-result-object v2

    move-object v6, v2

    :cond_18
    if-eqz v9, :cond_19

    .line 88
    sget-object v2, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v2}, Landroidx/compose/foundation/layout/Arrangement;->getTop()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    move-result-object v2

    goto :goto_14

    :cond_19
    move-object v2, v10

    :goto_14
    const v3, 0x7fffffff

    if-eqz v11, :cond_1a

    move v5, v3

    goto :goto_15

    :cond_1a
    move v5, v12

    :goto_15
    if-eqz v13, :cond_1b

    goto :goto_16

    :cond_1b
    move v3, v14

    :goto_16
    if-eqz v15, :cond_1c

    .line 91
    sget-object v9, Landroidx/compose/foundation/layout/FlowRowOverflow;->Companion:Landroidx/compose/foundation/layout/FlowRowOverflow$Companion;

    invoke-virtual {v9}, Landroidx/compose/foundation/layout/FlowRowOverflow$Companion;->getClip()Landroidx/compose/foundation/layout/FlowRowOverflow;

    move-result-object v9

    move-object v15, v9

    goto :goto_17

    :cond_1c
    move-object/from16 v15, p5

    :goto_17
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v9

    if-eqz v9, :cond_1d

    const/4 v9, -0x1

    const-string/jumbo v10, "androidx.compose.foundation.layout.FlowRow (FlowLayout.kt:92)"

    const v11, 0x1a191c2e

    .line 93
    invoke-static {v11, v4, v9, v10}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_1d
    const v9, 0x1b1e1243

    .line 94
    const-string v14, "CC(remember):FlowLayout.kt#9igjgp"

    invoke-static {v1, v9, v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/high16 v9, 0x70000

    and-int v13, v4, v9

    const/4 v12, 0x0

    const/4 v11, 0x1

    const/high16 v9, 0x20000

    if-ne v13, v9, :cond_1e

    move v9, v11

    goto :goto_18

    :cond_1e
    move v9, v12

    .line 1545
    :goto_18
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    if-nez v9, :cond_1f

    .line 1546
    sget-object v9, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v9}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v9

    if-ne v10, v9, :cond_20

    .line 95
    :cond_1f
    invoke-virtual {v15}, Landroidx/compose/foundation/layout/FlowRowOverflow;->createOverflowState$foundation_layout_release()Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    move-result-object v10

    .line 1548
    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 94
    :cond_20
    check-cast v10, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    shr-int/lit8 v9, v4, 0x3

    and-int/lit16 v9, v9, 0x1ffe

    move/from16 v16, v9

    move-object v9, v6

    move-object/from16 p0, v10

    move-object v10, v2

    move-object/from16 p1, v2

    move v2, v11

    move v11, v5

    move v12, v3

    move v2, v13

    move-object/from16 v13, p0

    move/from16 p2, v3

    move-object v3, v14

    move-object v14, v1

    move/from16 p3, v5

    move-object v5, v15

    move/from16 v15, v16

    .line 97
    invoke-static/range {v9 .. v15}, Landroidx/compose/foundation/layout/FlowLayoutKt;->rowMeasurementMultiContentHelper(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;IILandroidx/compose/foundation/layout/FlowLayoutOverflowState;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MultiContentMeasurePolicy;

    move-result-object v9

    const v10, 0x1b1e38c7

    .line 104
    invoke-static {v1, v10, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/high16 v3, 0x20000

    if-ne v2, v3, :cond_21

    const/4 v12, 0x1

    goto :goto_19

    :cond_21
    const/4 v12, 0x0

    :goto_19
    const/high16 v2, 0x380000

    and-int/2addr v2, v4

    const/high16 v3, 0x100000

    if-ne v2, v3, :cond_22

    const/4 v2, 0x1

    goto :goto_1a

    :cond_22
    const/4 v2, 0x0

    :goto_1a
    or-int/2addr v2, v12

    .line 1551
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_23

    .line 1552
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v3, v2, :cond_24

    .line 105
    :cond_23
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v2

    check-cast v3, Ljava/util/List;

    .line 106
    new-instance v2, Landroidx/compose/foundation/layout/FlowLayoutKt$FlowRow$list$1$1;

    invoke-direct {v2, v7}, Landroidx/compose/foundation/layout/FlowLayoutKt$FlowRow$list$1$1;-><init>(Lkotlin/jvm/functions/Function3;)V

    const v4, -0x8511341

    const/4 v10, 0x1

    invoke-static {v4, v10, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v10, p0

    .line 107
    invoke-virtual {v5, v10, v3}, Landroidx/compose/foundation/layout/FlowRowOverflow;->addOverflowComposables$foundation_layout_release(Landroidx/compose/foundation/layout/FlowLayoutOverflowState;Ljava/util/List;)V

    .line 1554
    invoke-interface {v1, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 104
    :cond_24
    check-cast v3, Ljava/util/List;

    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const v2, 0x5365e06c

    .line 111
    const-string v4, "CC(Layout)P(!1,2)174@7002L62,171@6888L182:Layout.kt#80mrfh"

    .line 1557
    invoke-static {v1, v2, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 1559
    invoke-static {v3}, Landroidx/compose/ui/layout/LayoutKt;->combineAsVirtualLayouts(Ljava/util/List;)Lkotlin/jvm/functions/Function2;

    move-result-object v2

    const v3, -0x1154a9cd

    const-string v4, "CC(remember):Layout.kt#9igjgp"

    .line 1561
    invoke-static {v1, v3, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v1, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    .line 1562
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_25

    .line 1563
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v4, v3, :cond_26

    .line 1561
    :cond_25
    invoke-static {v9}, Landroidx/compose/ui/layout/MultiContentMeasurePolicyKt;->createMeasurePolicy(Landroidx/compose/ui/layout/MultiContentMeasurePolicy;)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v4

    .line 1565
    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1561
    :cond_26
    check-cast v4, Landroidx/compose/ui/layout/MeasurePolicy;

    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const v3, -0x4ee9b9da

    .line 1558
    const-string v9, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh"

    .line 1568
    invoke-static {v1, v3, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v3, 0x0

    .line 1569
    invoke-static {v1, v3}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v9

    .line 1570
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v10

    .line 1571
    invoke-static {v1, v0}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v11

    .line 1573
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v12

    const v13, -0x2942ffcf

    .line 1572
    const-string v14, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp"

    .line 1574
    invoke-static {v1, v13, v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 1575
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v13

    instance-of v13, v13, Landroidx/compose/runtime/Applier;

    if-nez v13, :cond_27

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 1576
    :cond_27
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 1577
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v13

    if-eqz v13, :cond_28

    .line 1578
    invoke-interface {v1, v12}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1b

    .line 1580
    :cond_28
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 1582
    :goto_1b
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v12

    .line 1583
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v13

    invoke-static {v12, v4, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1584
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v12, v10, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1586
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    .line 1588
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v10

    if-nez v10, :cond_29

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v10, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2a

    .line 1589
    :cond_29
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v12, v10}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1590
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v12, v9, v4}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1593
    :cond_2a
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v12, v11, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1595
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1596
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 1574
    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 1568
    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 1557
    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 1599
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_2b
    move-object/from16 v3, p1

    move/from16 v4, p3

    move-object v2, v0

    move-object v9, v5

    move/from16 v5, p2

    .line 116
    :goto_1c
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v10

    if-eqz v10, :cond_2c

    new-instance v11, Landroidx/compose/foundation/layout/FlowLayoutKt$FlowRow$1;

    move-object v0, v11

    move-object v1, v2

    move-object v2, v6

    move-object v6, v9

    move-object/from16 v7, p6

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Landroidx/compose/foundation/layout/FlowLayoutKt$FlowRow$1;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;IILandroidx/compose/foundation/layout/FlowRowOverflow;Lkotlin/jvm/functions/Function3;II)V

    check-cast v11, Lkotlin/jvm/functions/Function2;

    invoke-interface {v10, v11}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_2c
    return-void
.end method

.method public static final synthetic access$intrinsicCrossAxisSize(Ljava/util/List;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;IIIIILandroidx/compose/foundation/layout/FlowLayoutOverflowState;)J
    .locals 0

    .line 1
    invoke-static/range {p0 .. p8}, Landroidx/compose/foundation/layout/FlowLayoutKt;->intrinsicCrossAxisSize(Ljava/util/List;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;IIIIILandroidx/compose/foundation/layout/FlowLayoutOverflowState;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$maxIntrinsicMainAxisSize(Ljava/util/List;Lkotlin/jvm/functions/Function3;III)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/layout/FlowLayoutKt;->maxIntrinsicMainAxisSize(Ljava/util/List;Lkotlin/jvm/functions/Function3;III)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$minIntrinsicMainAxisSize(Ljava/util/List;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;IIIIILandroidx/compose/foundation/layout/FlowLayoutOverflowState;)I
    .locals 0

    .line 1
    invoke-static/range {p0 .. p8}, Landroidx/compose/foundation/layout/FlowLayoutKt;->minIntrinsicMainAxisSize(Ljava/util/List;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;IIIIILandroidx/compose/foundation/layout/FlowLayoutOverflowState;)I

    move-result p0

    return p0
.end method

.method public static final breakDownItems-di9J0FM(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;Ljava/util/Iterator;FFJIILandroidx/compose/foundation/layout/FlowLayoutOverflowState;)Landroidx/compose/ui/layout/MeasureResult;
    .locals 53
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/MeasureScope;",
            "Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;",
            "Ljava/util/Iterator<",
            "+",
            "Landroidx/compose/ui/layout/Measurable;",
            ">;FFJII",
            "Landroidx/compose/foundation/layout/FlowLayoutOverflowState;",
            ")",
            "Landroidx/compose/ui/layout/MeasureResult;"
        }
    .end annotation

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v0, p2

    .line 1688
    new-instance v15, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v1, 0x10

    new-array v1, v1, [Landroidx/compose/ui/layout/MeasureResult;

    const/4 v12, 0x0

    invoke-direct {v15, v1, v12}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 1689
    invoke-static/range {p5 .. p6}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v1

    .line 1690
    invoke-static/range {p5 .. p6}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v9

    .line 1691
    invoke-static/range {p5 .. p6}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v10

    .line 1179
    invoke-static {}, Landroidx/collection/IntObjectMapKt;->mutableIntObjectMapOf()Landroidx/collection/MutableIntObjectMap;

    move-result-object v11

    .line 1180
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v2

    check-cast v8, Ljava/util/List;

    move/from16 v2, p3

    .line 1182
    invoke-interface {v13, v2}, Landroidx/compose/ui/layout/MeasureScope;->toPx-0680j_4(F)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v2, v2

    float-to-int v7, v2

    move/from16 v2, p4

    .line 1183
    invoke-interface {v13, v2}, Landroidx/compose/ui/layout/MeasureScope;->toPx-0680j_4(F)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v2, v2

    float-to-int v6, v2

    .line 1184
    invoke-static {v12, v1, v12, v10}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->constructor-impl(IIII)J

    move-result-wide v25

    const/16 v22, 0xe

    const/16 v23, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-wide/from16 v16, v25

    .line 1190
    invoke-static/range {v16 .. v23}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->copy-yUG9Ft0$default(JIIIIILjava/lang/Object;)J

    move-result-wide v2

    .line 1193
    invoke-interface/range {p1 .. p1}, Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;->isHorizontal()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Landroidx/compose/foundation/layout/LayoutOrientation;->Horizontal:Landroidx/compose/foundation/layout/LayoutOrientation;

    goto :goto_0

    :cond_0
    sget-object v4, Landroidx/compose/foundation/layout/LayoutOrientation;->Vertical:Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 1192
    :goto_0
    invoke-static {v2, v3, v4}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->toBoxConstraints-OenEA2s(JLandroidx/compose/foundation/layout/LayoutOrientation;)J

    move-result-wide v4

    .line 1198
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 1203
    instance-of v2, v0, Landroidx/compose/foundation/layout/ContextualFlowItemIterator;

    move-object/from16 v27, v8

    const/16 v28, 0x0

    if-eqz v2, :cond_1

    .line 1204
    new-instance v2, Landroidx/compose/foundation/layout/FlowLineInfo;

    .line 1207
    invoke-interface {v13, v1}, Landroidx/compose/ui/layout/MeasureScope;->toDp-u2uoSUM(I)F

    move-result v19

    .line 1208
    invoke-interface {v13, v10}, Landroidx/compose/ui/layout/MeasureScope;->toDp-u2uoSUM(I)F

    move-result v20

    const/16 v21, 0x0

    const/16 v18, 0x0

    move-object/from16 v16, v2

    move/from16 v17, v28

    .line 1204
    invoke-direct/range {v16 .. v21}, Landroidx/compose/foundation/layout/FlowLineInfo;-><init>(IIFFLkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 1214
    :goto_1
    invoke-interface/range {p2 .. p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-nez v16, :cond_2

    const/4 v8, 0x0

    goto :goto_2

    .line 1215
    :cond_2
    invoke-static {v0, v2}, Landroidx/compose/foundation/layout/FlowLayoutKt;->safeNext(Ljava/util/Iterator;Landroidx/compose/foundation/layout/FlowLineInfo;)Landroidx/compose/ui/layout/Measurable;

    move-result-object v16

    move-object/from16 v8, v16

    :goto_2
    if-eqz v8, :cond_3

    .line 1216
    new-instance v12, Landroidx/compose/foundation/layout/FlowLayoutKt$breakDownItems$nextSize$1$1;

    invoke-direct {v12, v3}, Landroidx/compose/foundation/layout/FlowLayoutKt$breakDownItems$nextSize$1$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    check-cast v12, Lkotlin/jvm/functions/Function1;

    invoke-static {v8, v14, v4, v5, v12}, Landroidx/compose/foundation/layout/FlowLayoutKt;->measureAndCache-rqJ1uqs(Landroidx/compose/ui/layout/Measurable;Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;JLkotlin/jvm/functions/Function1;)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Landroidx/collection/IntIntPair;->box-impl(J)Landroidx/collection/IntIntPair;

    move-result-object v12

    goto :goto_3

    :cond_3
    const/4 v12, 0x0

    :goto_3
    if-eqz v12, :cond_4

    .line 1223
    invoke-virtual {v12}, Landroidx/collection/IntIntPair;->unbox-impl()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Landroidx/collection/IntIntPair;->getFirst-impl(J)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v40, v16

    goto :goto_4

    :cond_4
    const/16 v40, 0x0

    :goto_4
    if-eqz v12, :cond_5

    .line 1224
    invoke-virtual {v12}, Landroidx/collection/IntIntPair;->unbox-impl()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Landroidx/collection/IntIntPair;->getSecond-impl(J)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 p4, v8

    move-object/from16 v41, v16

    goto :goto_5

    :cond_5
    move-object/from16 p4, v8

    const/16 v41, 0x0

    .line 1692
    :goto_5
    new-instance v8, Landroidx/collection/MutableIntList;

    move-wide/from16 v42, v4

    const/4 v5, 0x1

    move-object/from16 p3, v2

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {v8, v2, v5, v4}, Landroidx/collection/MutableIntList;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v44, v8

    .line 1693
    new-instance v8, Landroidx/collection/MutableIntList;

    invoke-direct {v8, v2, v5, v4}, Landroidx/collection/MutableIntList;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1230
    new-instance v45, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;

    const/16 v24, 0x0

    move-object/from16 v16, v45

    move/from16 v17, p7

    move-object/from16 v18, p9

    move-wide/from16 v19, p5

    move/from16 v21, p8

    move/from16 v22, v7

    move/from16 v23, v6

    invoke-direct/range {v16 .. v24}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;-><init>(ILandroidx/compose/foundation/layout/FlowLayoutOverflowState;JIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1240
    invoke-interface/range {p2 .. p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    .line 1241
    invoke-static {v1, v10}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    move-result-wide v32

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v31, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    move-object/from16 v29, v45

    move-object/from16 v34, v12

    .line 1239
    invoke-virtual/range {v29 .. v39}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;->getWrapInfo-OpUlnko(ZIJLandroidx/collection/IntIntPair;IIIZZ)Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;

    move-result-object v16

    .line 1250
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;->isLastItemInContainer()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v12, :cond_6

    move v12, v5

    goto :goto_6

    :cond_6
    const/4 v12, 0x0

    :goto_6
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, -0x1

    move-object/from16 v46, p3

    move-object/from16 v2, v45

    move-object/from16 v47, v3

    move-object/from16 v3, v16

    move-object/from16 v20, v4

    move-wide/from16 v48, v42

    move v4, v12

    move v12, v5

    move/from16 v5, v19

    move/from16 v23, v6

    move/from16 v6, v17

    move/from16 v24, v7

    move v7, v1

    move-object/from16 v17, p4

    move/from16 v19, v9

    move-object/from16 v42, v15

    move-object/from16 v12, v27

    move-object/from16 v9, v44

    move-object v15, v8

    move/from16 v8, v18

    .line 1251
    invoke-virtual/range {v2 .. v8}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;->getWrapEllipsisInfo(Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;ZIIII)Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapEllipsisInfo;

    move-result-object v8

    goto :goto_7

    :cond_7
    move-object/from16 v46, p3

    move-object/from16 v17, p4

    move-object/from16 v47, v3

    move/from16 v23, v6

    move/from16 v24, v7

    move/from16 v19, v9

    move-object/from16 v12, v27

    move-wide/from16 v48, v42

    move-object/from16 v9, v44

    move-object/from16 v42, v15

    move-object v15, v8

    const/4 v8, 0x0

    :goto_7
    move-object/from16 p4, v8

    move-object/from16 v44, v9

    move v9, v10

    move-object/from16 v8, v17

    move/from16 v5, v19

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v17, v1

    .line 1267
    :goto_8
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;->isLastItemInContainer()Z

    move-result v16

    if-nez v16, :cond_16

    if-eqz v8, :cond_16

    .line 1268
    invoke-static/range {v40 .. v40}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 1269
    invoke-static/range {v41 .. v41}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move/from16 v40, v10

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Integer;->intValue()I

    move-result v10

    add-int v6, v6, v16

    .line 1271
    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    sub-int v10, v17, v16

    move-object/from16 v41, v15

    add-int/lit8 v15, v4, 0x1

    move/from16 v43, v1

    move-object/from16 v1, p9

    .line 1273
    invoke-virtual {v1, v15}, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->setItemShown$foundation_layout_release(I)V

    .line 1274
    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v8, v47

    .line 1275
    iget-object v1, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {v11, v4, v1}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    sub-int v1, v15, v2

    move/from16 v4, p7

    move/from16 p8, v2

    move-object/from16 v2, v46

    if-ge v1, v4, :cond_8

    const/16 v16, 0x1

    goto :goto_9

    :cond_8
    const/16 v16, 0x0

    :goto_9
    if-eqz v2, :cond_d

    if-eqz v16, :cond_9

    move/from16 v4, v28

    goto :goto_a

    :cond_9
    add-int/lit8 v17, v28, 0x1

    move/from16 v4, v17

    :goto_a
    move-object/from16 v46, v11

    if-eqz v16, :cond_a

    move v11, v1

    goto :goto_b

    :cond_a
    const/4 v11, 0x0

    :goto_b
    if-eqz v16, :cond_b

    move-object/from16 v47, v12

    sub-int v12, v10, v24

    move/from16 v50, v15

    const/4 v15, 0x0

    .line 1284
    invoke-static {v12, v15}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v12

    goto :goto_c

    :cond_b
    move-object/from16 v47, v12

    move/from16 v50, v15

    const/4 v15, 0x0

    move/from16 v12, v43

    .line 1287
    :goto_c
    invoke-interface {v13, v12}, Landroidx/compose/ui/layout/MeasureScope;->toDp-u2uoSUM(I)F

    move-result v12

    if-eqz v16, :cond_c

    move/from16 v17, v5

    move v5, v9

    goto :goto_d

    :cond_c
    sub-int v16, v9, v7

    move/from16 v17, v5

    sub-int v5, v16, v23

    .line 1292
    invoke-static {v5, v15}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v5

    .line 1293
    :goto_d
    invoke-interface {v13, v5}, Landroidx/compose/ui/layout/MeasureScope;->toDp-u2uoSUM(I)F

    move-result v5

    .line 1280
    invoke-virtual {v2, v4, v11, v12, v5}, Landroidx/compose/foundation/layout/FlowLineInfo;->update-4j6BHR0$foundation_layout_release(IIFF)V

    goto :goto_e

    :cond_d
    move/from16 v17, v5

    move-object/from16 v46, v11

    move-object/from16 v47, v12

    move/from16 v50, v15

    .line 1296
    :goto_e
    invoke-interface/range {p2 .. p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_e

    const/4 v4, 0x0

    goto :goto_f

    .line 1297
    :cond_e
    invoke-static {v0, v2}, Landroidx/compose/foundation/layout/FlowLayoutKt;->safeNext(Ljava/util/Iterator;Landroidx/compose/foundation/layout/FlowLineInfo;)Landroidx/compose/ui/layout/Measurable;

    move-result-object v4

    :goto_f
    const/4 v5, 0x0

    .line 1298
    iput-object v5, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v4, :cond_f

    .line 1299
    new-instance v11, Landroidx/compose/foundation/layout/FlowLayoutKt$breakDownItems$1$1;

    invoke-direct {v11, v8}, Landroidx/compose/foundation/layout/FlowLayoutKt$breakDownItems$1$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    check-cast v11, Lkotlin/jvm/functions/Function1;

    move v12, v6

    move-wide/from16 v5, v48

    invoke-static {v4, v14, v5, v6, v11}, Landroidx/compose/foundation/layout/FlowLayoutKt;->measureAndCache-rqJ1uqs(Landroidx/compose/ui/layout/Measurable;Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;JLkotlin/jvm/functions/Function1;)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Landroidx/collection/IntIntPair;->box-impl(J)Landroidx/collection/IntIntPair;

    move-result-object v11

    goto :goto_10

    :cond_f
    move v12, v6

    move-wide/from16 v5, v48

    const/4 v11, 0x0

    :goto_10
    if-eqz v11, :cond_10

    .line 1306
    invoke-virtual {v11}, Landroidx/collection/IntIntPair;->unbox-impl()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Landroidx/collection/IntIntPair;->getFirst-impl(J)I

    move-result v15

    add-int v15, v15, v24

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    goto :goto_11

    :cond_10
    const/4 v15, 0x0

    :goto_11
    if-eqz v11, :cond_11

    .line 1307
    invoke-virtual {v11}, Landroidx/collection/IntIntPair;->unbox-impl()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Landroidx/collection/IntIntPair;->getSecond-impl(J)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v48, v16

    goto :goto_12

    :cond_11
    const/16 v48, 0x0

    .line 1310
    :goto_12
    invoke-interface/range {p2 .. p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    .line 1311
    invoke-static {v10, v9}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    move-result-wide v32

    if-nez v11, :cond_12

    move-object/from16 v49, v2

    const/16 v34, 0x0

    goto :goto_13

    .line 1314
    :cond_12
    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static/range {v48 .. v48}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v49, v2

    invoke-virtual/range {v48 .. v48}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v2}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Landroidx/collection/IntIntPair;->box-impl(J)Landroidx/collection/IntIntPair;

    move-result-object v0

    move-object/from16 v34, v0

    :goto_13
    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v29, v45

    move/from16 v31, v1

    move/from16 v35, v28

    move/from16 v36, v3

    move/from16 v37, v7

    .line 1309
    invoke-virtual/range {v29 .. v39}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;->getWrapInfo-OpUlnko(ZIJLandroidx/collection/IntIntPair;IIIZZ)Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;

    move-result-object v0

    .line 1321
    invoke-virtual {v0}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;->isLastItemInLine()Z

    move-result v2

    if-eqz v2, :cond_15

    move v2, v12

    move/from16 v12, v17

    .line 1322
    invoke-static {v12, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move/from16 v9, v43

    .line 1323
    invoke-static {v2, v9}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/2addr v3, v7

    if-eqz v11, :cond_13

    const/16 v18, 0x1

    goto :goto_14

    :cond_13
    const/16 v18, 0x0

    :goto_14
    move-object/from16 v16, v45

    move-object/from16 v17, v0

    move/from16 v19, v28

    move/from16 v20, v3

    move/from16 v21, v10

    move/from16 v22, v1

    .line 1325
    invoke-virtual/range {v16 .. v22}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;->getWrapEllipsisInfo(Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;ZIIII)Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapEllipsisInfo;

    move-result-object v1

    move-object/from16 v11, v41

    .line 1333
    invoke-virtual {v11, v7}, Landroidx/collection/MutableIntList;->add(I)Z

    sub-int v10, v40, v3

    sub-int v7, v10, v23

    move-object/from16 v10, v44

    move/from16 v12, v50

    .line 1337
    invoke-virtual {v10, v12}, Landroidx/collection/MutableIntList;->add(I)Z

    if-eqz v15, :cond_14

    .line 1341
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    sub-int v15, v15, v24

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    goto :goto_15

    :cond_14
    const/4 v15, 0x0

    :goto_15
    add-int/lit8 v28, v28, 0x1

    add-int v3, v3, v23

    move-object/from16 v16, v0

    move/from16 v18, v9

    move-object v0, v10

    move/from16 v17, v12

    move-object/from16 v19, v15

    const/4 v10, 0x0

    move v15, v7

    move v7, v2

    const/4 v9, 0x0

    move-object v2, v1

    move/from16 v1, v18

    goto :goto_16

    :cond_15
    move-object/from16 v16, v0

    move v2, v12

    move/from16 v12, v17

    move-object/from16 v11, v41

    move/from16 v1, v43

    move-object/from16 v0, v44

    move/from16 v17, v50

    move/from16 v18, v10

    move-object/from16 v19, v15

    move v10, v7

    move v15, v9

    move v7, v12

    move/from16 v12, p8

    move v9, v2

    move-object/from16 v2, p4

    :goto_16
    move-object/from16 v44, v0

    move-object/from16 p4, v2

    move v2, v12

    move-object/from16 v12, v47

    move-object/from16 v41, v48

    move-object/from16 v0, p2

    move-object/from16 v47, v8

    move-object v8, v4

    move/from16 v4, v17

    move/from16 v17, v18

    move-wide/from16 v51, v5

    move v5, v7

    move v6, v9

    move v7, v10

    move v9, v15

    move/from16 v10, v40

    move-object v15, v11

    move-object/from16 v40, v19

    move-object/from16 v11, v46

    move-object/from16 v46, v49

    move-wide/from16 v48, v51

    goto/16 :goto_8

    :cond_16
    move-object/from16 v46, v11

    move-object/from16 v47, v12

    move-object v11, v15

    move-object/from16 v0, v44

    move v12, v5

    if-eqz p4, :cond_18

    .line 1349
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapEllipsisInfo;->getEllipsis()Landroidx/compose/ui/layout/Measurable;

    move-result-object v1

    move-object/from16 v15, v47

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1350
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual/range {p4 .. p4}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapEllipsisInfo;->getPlaceable()Landroidx/compose/ui/layout/Placeable;

    move-result-object v3

    move-object/from16 v4, v46

    invoke-virtual {v4, v1, v3}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    .line 1351
    move-object v8, v0

    check-cast v8, Landroidx/collection/IntList;

    .line 1694
    iget v1, v8, Landroidx/collection/IntList;->_size:I

    sub-int/2addr v1, v2

    .line 1352
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapEllipsisInfo;->getPlaceEllipsisOnLastContentLine()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 1353
    invoke-virtual {v0}, Landroidx/collection/MutableIntList;->getSize()I

    move-result v3

    sub-int/2addr v3, v2

    .line 1354
    invoke-virtual {v11, v1}, Landroidx/collection/MutableIntList;->get(I)I

    move-result v5

    .line 1355
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapEllipsisInfo;->getEllipsisSize-OO21N7I()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroidx/collection/IntIntPair;->getSecond-impl(J)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v11, v1, v5}, Landroidx/collection/MutableIntList;->set(II)I

    .line 1356
    invoke-virtual {v0}, Landroidx/collection/MutableIntList;->last()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Landroidx/collection/MutableIntList;->set(II)I

    goto :goto_17

    .line 1358
    :cond_17
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapEllipsisInfo;->getEllipsisSize-OO21N7I()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/collection/IntIntPair;->getSecond-impl(J)I

    move-result v1

    invoke-virtual {v11, v1}, Landroidx/collection/MutableIntList;->add(I)Z

    .line 1359
    invoke-virtual {v0}, Landroidx/collection/MutableIntList;->last()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroidx/collection/MutableIntList;->add(I)Z

    goto :goto_17

    :cond_18
    move-object/from16 v4, v46

    move-object/from16 v15, v47

    .line 1363
    :goto_17
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    new-array v10, v1, [Landroidx/compose/ui/layout/Placeable;

    const/4 v2, 0x0

    :goto_18
    if-ge v2, v1, :cond_19

    .line 1364
    invoke-virtual {v4, v2}, Landroidx/collection/MutableIntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v10, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 1366
    :cond_19
    invoke-virtual {v0}, Landroidx/collection/MutableIntList;->getSize()I

    move-result v1

    new-array v9, v1, [I

    const/4 v2, 0x0

    :goto_19
    if-ge v2, v1, :cond_1a

    const/16 v16, 0x0

    aput v16, v9, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_1a
    const/16 v16, 0x0

    .line 1367
    invoke-virtual {v0}, Landroidx/collection/MutableIntList;->getSize()I

    move-result v1

    new-array v8, v1, [I

    move/from16 v2, v16

    :goto_1a
    if-ge v2, v1, :cond_1b

    aput v16, v8, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 1371
    :cond_1b
    check-cast v0, Landroidx/collection/IntList;

    .line 1696
    iget-object v7, v0, Landroidx/collection/IntList;->content:[I

    .line 1697
    iget v6, v0, Landroidx/collection/IntList;->_size:I

    move v5, v12

    move/from16 v12, v16

    move/from16 v17, v12

    move/from16 v18, v17

    :goto_1b
    if-ge v12, v6, :cond_1d

    .line 1698
    aget v19, v7, v12

    .line 1372
    invoke-virtual {v11, v12}, Landroidx/collection/MutableIntList;->get(I)I

    move-result v4

    .line 1373
    move-object v0, v14

    check-cast v0, Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;

    .line 1699
    invoke-static/range {v25 .. v26}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v2

    .line 1700
    invoke-static/range {v25 .. v26}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v3

    move v1, v5

    move v13, v5

    move/from16 v5, v24

    move/from16 v20, v6

    move-object/from16 v6, p0

    move-object/from16 v21, v7

    move-object v7, v15

    move-object/from16 v22, v8

    move-object v8, v10

    move-object/from16 v23, v9

    move/from16 v9, v18

    move-object/from16 v18, v10

    move/from16 v10, v19

    move-object/from16 v27, v11

    move-object/from16 v11, v23

    move/from16 v28, v16

    move/from16 v16, v12

    .line 1373
    invoke-static/range {v0 .. v12}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt;->measure(Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;IIIIILandroidx/compose/ui/layout/MeasureScope;Ljava/util/List;[Landroidx/compose/ui/layout/Placeable;II[II)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    .line 1388
    invoke-interface/range {p1 .. p1}, Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;->isHorizontal()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1389
    invoke-interface {v0}, Landroidx/compose/ui/layout/MeasureResult;->getWidth()I

    move-result v1

    .line 1390
    invoke-interface {v0}, Landroidx/compose/ui/layout/MeasureResult;->getHeight()I

    move-result v2

    goto :goto_1c

    .line 1392
    :cond_1c
    invoke-interface {v0}, Landroidx/compose/ui/layout/MeasureResult;->getHeight()I

    move-result v1

    .line 1393
    invoke-interface {v0}, Landroidx/compose/ui/layout/MeasureResult;->getWidth()I

    move-result v2

    .line 1395
    :goto_1c
    aput v2, v22, v16

    add-int v17, v17, v2

    .line 1397
    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    move-object/from16 v6, v42

    .line 1398
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v16, 0x1

    move-object/from16 v13, p0

    move-object/from16 v10, v18

    move/from16 v18, v19

    move/from16 v6, v20

    move-object/from16 v7, v21

    move-object/from16 v8, v22

    move-object/from16 v9, v23

    move-object/from16 v11, v27

    move/from16 v16, v28

    goto :goto_1b

    :cond_1d
    move v13, v5

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move/from16 v28, v16

    move-object/from16 v6, v42

    .line 1404
    invoke-virtual {v6}, Landroidx/compose/runtime/collection/MutableVector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    move/from16 v3, v28

    move v4, v3

    goto :goto_1d

    :cond_1e
    move v3, v13

    move/from16 v4, v17

    :goto_1d
    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    move-object/from16 v5, v22

    move-object/from16 v7, p1

    move-object/from16 v8, v23

    .line 1409
    invoke-static/range {v0 .. v8}, Landroidx/compose/foundation/layout/FlowLayoutKt;->placeHelper-BmaY500(Landroidx/compose/ui/layout/MeasureScope;JII[ILandroidx/compose/runtime/collection/MutableVector;Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;[I)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0
.end method

.method public static final columnMeasurementHelper(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;
    .locals 17

    move-object/from16 v0, p3

    move/from16 v1, p4

    const-string v2, "C(columnMeasurementHelper)P(2)443@15212L856:FlowLayout.kt#2w3rfo"

    const v3, -0x77fd7175

    .line 443
    invoke-static {v0, v3, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    const-string/jumbo v4, "androidx.compose.foundation.layout.columnMeasurementHelper (FlowLayout.kt:442)"

    invoke-static {v3, v1, v2, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    const v2, 0x6d8ba9e2

    const-string v3, "CC(remember):FlowLayout.kt#9igjgp"

    .line 444
    invoke-static {v0, v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v2, v1, 0xe

    xor-int/lit8 v2, v2, 0x6

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-le v2, v3, :cond_1

    move-object/from16 v2, p0

    .line 445
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_0

    :cond_1
    move-object/from16 v2, p0

    :goto_0
    and-int/lit8 v6, v1, 0x6

    if-ne v6, v3, :cond_3

    :cond_2
    move v3, v5

    goto :goto_1

    :cond_3
    move v3, v4

    :goto_1
    and-int/lit8 v6, v1, 0x70

    xor-int/lit8 v6, v6, 0x30

    const/16 v7, 0x20

    move-object/from16 v8, p1

    if-le v6, v7, :cond_4

    .line 446
    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    :cond_4
    and-int/lit8 v6, v1, 0x30

    if-ne v6, v7, :cond_6

    :cond_5
    move v6, v5

    goto :goto_2

    :cond_6
    move v6, v4

    :goto_2
    or-int/2addr v3, v6

    and-int/lit16 v6, v1, 0x380

    xor-int/lit16 v6, v6, 0x180

    const/16 v7, 0x100

    move/from16 v13, p2

    if-le v6, v7, :cond_7

    .line 447
    invoke-interface {v0, v13}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v6

    if-nez v6, :cond_8

    :cond_7
    and-int/lit16 v1, v1, 0x180

    if-ne v1, v7, :cond_9

    :cond_8
    move v4, v5

    :cond_9
    or-int v1, v3, v4

    .line 1667
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_a

    .line 1668
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v3, v1, :cond_b

    .line 452
    :cond_a
    invoke-interface/range {p0 .. p0}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->getSpacing-D9Ej5fM()F

    move-result v10

    .line 453
    sget-object v11, Landroidx/compose/foundation/layout/FlowLayoutKt;->CROSS_AXIS_ALIGNMENT_START:Landroidx/compose/foundation/layout/CrossAxisAlignment;

    .line 455
    invoke-interface/range {p1 .. p1}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->getSpacing-D9Ej5fM()F

    move-result v12

    .line 458
    sget-object v1, Landroidx/compose/foundation/layout/FlowRowOverflow;->Companion:Landroidx/compose/foundation/layout/FlowRowOverflow$Companion;

    invoke-virtual {v1}, Landroidx/compose/foundation/layout/FlowRowOverflow$Companion;->getVisible()Landroidx/compose/foundation/layout/FlowRowOverflow;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/foundation/layout/FlowRowOverflow;->createOverflowState$foundation_layout_release()Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    move-result-object v15

    .line 449
    new-instance v1, Landroidx/compose/foundation/layout/FlowMeasurePolicy;

    const v14, 0x7fffffff

    const/16 v16, 0x0

    const/4 v7, 0x0

    move-object v6, v1

    move-object/from16 v8, p1

    move-object/from16 v9, p0

    move/from16 v13, p2

    invoke-direct/range {v6 .. v16}, Landroidx/compose/foundation/layout/FlowMeasurePolicy;-><init>(ZLandroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;FLandroidx/compose/foundation/layout/CrossAxisAlignment;FIILandroidx/compose/foundation/layout/FlowLayoutOverflowState;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 460
    new-instance v2, Landroidx/compose/foundation/layout/FlowLayoutKt$columnMeasurementHelper$1$1;

    invoke-direct {v2, v1}, Landroidx/compose/foundation/layout/FlowLayoutKt$columnMeasurementHelper$1$1;-><init>(Landroidx/compose/foundation/layout/FlowMeasurePolicy;)V

    move-object v3, v2

    check-cast v3, Landroidx/compose/ui/layout/MeasurePolicy;

    .line 1670
    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 444
    :cond_b
    check-cast v3, Landroidx/compose/ui/layout/MeasurePolicy;

    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 443
    :cond_c
    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    return-object v3
.end method

.method public static final columnMeasurementMultiContentHelper(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;IILandroidx/compose/foundation/layout/FlowLayoutOverflowState;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MultiContentMeasurePolicy;
    .locals 17

    move-object/from16 v0, p5

    move/from16 v1, p6

    const-string v2, "C(columnMeasurementMultiContentHelper)P(4)475@16365L652:FlowLayout.kt#2w3rfo"

    const v3, 0x2ca16df9

    .line 475
    invoke-static {v0, v3, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    const-string/jumbo v4, "androidx.compose.foundation.layout.columnMeasurementMultiContentHelper (FlowLayout.kt:474)"

    invoke-static {v3, v1, v2, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    const v2, 0x11238856

    const-string v3, "CC(remember):FlowLayout.kt#9igjgp"

    .line 476
    invoke-static {v0, v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v2, v1, 0xe

    xor-int/lit8 v2, v2, 0x6

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-le v2, v3, :cond_1

    move-object/from16 v2, p0

    .line 477
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_0

    :cond_1
    move-object/from16 v2, p0

    :goto_0
    and-int/lit8 v6, v1, 0x6

    if-ne v6, v3, :cond_3

    :cond_2
    move v3, v5

    goto :goto_1

    :cond_3
    move v3, v4

    :goto_1
    and-int/lit8 v6, v1, 0x70

    xor-int/lit8 v6, v6, 0x30

    const/16 v7, 0x20

    move-object/from16 v8, p1

    if-le v6, v7, :cond_4

    .line 478
    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    :cond_4
    and-int/lit8 v6, v1, 0x30

    if-ne v6, v7, :cond_6

    :cond_5
    move v6, v5

    goto :goto_2

    :cond_6
    move v6, v4

    :goto_2
    or-int/2addr v3, v6

    and-int/lit16 v6, v1, 0x380

    xor-int/lit16 v6, v6, 0x180

    const/16 v7, 0x100

    move/from16 v13, p2

    if-le v6, v7, :cond_7

    .line 479
    invoke-interface {v0, v13}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v6

    if-nez v6, :cond_8

    :cond_7
    and-int/lit16 v6, v1, 0x180

    if-ne v6, v7, :cond_9

    :cond_8
    move v6, v5

    goto :goto_3

    :cond_9
    move v6, v4

    :goto_3
    or-int/2addr v3, v6

    and-int/lit16 v6, v1, 0x1c00

    xor-int/lit16 v6, v6, 0xc00

    const/16 v7, 0x800

    move/from16 v14, p3

    if-le v6, v7, :cond_a

    .line 480
    invoke-interface {v0, v14}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v6

    if-nez v6, :cond_b

    :cond_a
    and-int/lit16 v1, v1, 0xc00

    if-ne v1, v7, :cond_c

    :cond_b
    move v4, v5

    :cond_c
    or-int v1, v3, v4

    move-object/from16 v3, p4

    .line 481
    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v1, v4

    .line 1673
    invoke-interface/range {p5 .. p5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v1, :cond_d

    .line 1674
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v4, v1, :cond_e

    .line 486
    :cond_d
    invoke-interface/range {p0 .. p0}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->getSpacing-D9Ej5fM()F

    move-result v10

    .line 487
    sget-object v11, Landroidx/compose/foundation/layout/FlowLayoutKt;->CROSS_AXIS_ALIGNMENT_START:Landroidx/compose/foundation/layout/CrossAxisAlignment;

    .line 489
    invoke-interface/range {p1 .. p1}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->getSpacing-D9Ej5fM()F

    move-result v12

    .line 483
    new-instance v4, Landroidx/compose/foundation/layout/FlowMeasurePolicy;

    const/4 v7, 0x0

    const/16 v16, 0x0

    move-object v6, v4

    move-object/from16 v8, p1

    move-object/from16 v9, p0

    move/from16 v13, p2

    move/from16 v14, p3

    move-object/from16 v15, p4

    invoke-direct/range {v6 .. v16}, Landroidx/compose/foundation/layout/FlowMeasurePolicy;-><init>(ZLandroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;FLandroidx/compose/foundation/layout/CrossAxisAlignment;FIILandroidx/compose/foundation/layout/FlowLayoutOverflowState;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1676
    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 476
    :cond_e
    check-cast v4, Landroidx/compose/foundation/layout/FlowMeasurePolicy;

    invoke-static/range {p5 .. p5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 475
    :cond_f
    invoke-static/range {p5 .. p5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    check-cast v4, Landroidx/compose/ui/layout/MultiContentMeasurePolicy;

    return-object v4
.end method

.method public static final crossAxisMin(Landroidx/compose/ui/layout/IntrinsicMeasurable;ZI)I
    .locals 0

    if-eqz p1, :cond_0

    .line 1441
    invoke-interface {p0, p2}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->minIntrinsicHeight(I)I

    move-result p0

    goto :goto_0

    .line 1443
    :cond_0
    invoke-interface {p0, p2}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->minIntrinsicWidth(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static final getCROSS_AXIS_ALIGNMENT_START()Landroidx/compose/foundation/layout/CrossAxisAlignment;
    .locals 1

    .line 1447
    sget-object v0, Landroidx/compose/foundation/layout/FlowLayoutKt;->CROSS_AXIS_ALIGNMENT_START:Landroidx/compose/foundation/layout/CrossAxisAlignment;

    return-object v0
.end method

.method public static final getCROSS_AXIS_ALIGNMENT_TOP()Landroidx/compose/foundation/layout/CrossAxisAlignment;
    .locals 1

    .line 1446
    sget-object v0, Landroidx/compose/foundation/layout/FlowLayoutKt;->CROSS_AXIS_ALIGNMENT_TOP:Landroidx/compose/foundation/layout/CrossAxisAlignment;

    return-object v0
.end method

.method private static final intrinsicCrossAxisSize(Ljava/util/List;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;IIIIILandroidx/compose/foundation/layout/FlowLayoutOverflowState;)J
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;IIIII",
            "Landroidx/compose/foundation/layout/FlowLayoutOverflowState;",
            ")J"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    .line 1053
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const/4 v13, 0x0

    .line 1070
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    if-eqz v4, :cond_0

    .line 1054
    invoke-static {v13, v13}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const v15, 0x7fffffff

    .line 1060
    invoke-static {v13, v3, v13, v15}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->constructor-impl(IIII)J

    move-result-wide v7

    .line 1056
    new-instance v27, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;

    const/4 v12, 0x0

    move-object/from16 v4, v27

    move/from16 v5, p6

    move-object/from16 v6, p8

    move/from16 v9, p7

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-direct/range {v4 .. v12}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;-><init>(ILandroidx/compose/foundation/layout/FlowLayoutOverflowState;JIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1069
    invoke-static {v0, v13}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v4, :cond_1

    .line 1070
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v4, v14, v5}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    goto :goto_0

    :cond_1
    move v5, v13

    :goto_0
    if-eqz v4, :cond_2

    .line 1071
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v4, v14, v6}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    goto :goto_1

    :cond_2
    move v6, v13

    .line 1080
    :goto_1
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_3

    move/from16 v17, v8

    goto :goto_2

    :cond_3
    move/from16 v17, v13

    .line 1082
    :goto_2
    invoke-static {v3, v15}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    move-result-wide v19

    if-nez v4, :cond_4

    const/16 v21, 0x0

    goto :goto_3

    .line 1083
    :cond_4
    invoke-static {v6, v5}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    move-result-wide v9

    invoke-static {v9, v10}, Landroidx/collection/IntIntPair;->box-impl(J)Landroidx/collection/IntIntPair;

    move-result-object v9

    move-object/from16 v21, v9

    :goto_3
    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v18, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v16, v27

    move/from16 v22, v9

    move/from16 v23, v10

    move/from16 v24, v11

    .line 1079
    invoke-virtual/range {v16 .. v26}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;->getWrapInfo-OpUlnko(ZIJLandroidx/collection/IntIntPair;IIIZZ)Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;

    move-result-object v12

    .line 1091
    invoke-virtual {v12}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;->isLastItemInContainer()Z

    move-result v12

    if-eqz v12, :cond_7

    move-object/from16 v0, p8

    if-eqz v4, :cond_5

    goto :goto_4

    :cond_5
    move v8, v13

    .line 1092
    :goto_4
    invoke-virtual {v0, v8, v13, v13}, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->ellipsisSize-F35zm-w$foundation_layout_release(ZII)Landroidx/collection/IntIntPair;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroidx/collection/IntIntPair;->unbox-impl()J

    move-result-wide v0

    .line 1096
    invoke-static {v0, v1}, Landroidx/collection/IntIntPair;->getSecond-impl(J)I

    move-result v0

    goto :goto_5

    :cond_6
    move v0, v13

    .line 1098
    :goto_5
    invoke-static {v0, v13}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    move-result-wide v0

    return-wide v0

    .line 1102
    :cond_7
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v4

    move v14, v3

    move v12, v13

    move/from16 v16, v12

    move/from16 v28, v16

    :goto_6
    if-ge v12, v4, :cond_f

    sub-int v6, v14, v6

    add-int/lit8 v14, v12, 0x1

    .line 1107
    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1110
    invoke-static {v0, v14}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v11, :cond_8

    .line 1111
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v11, v7, v8}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    goto :goto_7

    :cond_8
    move v7, v13

    :goto_7
    if-eqz v11, :cond_9

    .line 1112
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v1, v11, v8, v13}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    add-int v8, v8, p4

    goto :goto_8

    :cond_9
    const/4 v8, 0x0

    :goto_8
    add-int/lit8 v12, v12, 0x2

    .line 1116
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_a

    const/16 v17, 0x1

    goto :goto_9

    :cond_a
    const/16 v17, 0x0

    :goto_9
    sub-int v12, v14, v28

    .line 1118
    invoke-static {v6, v15}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    move-result-wide v19

    if-nez v11, :cond_b

    const/16 v21, 0x0

    goto :goto_a

    .line 1122
    :cond_b
    invoke-static {v8, v7}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Landroidx/collection/IntIntPair;->box-impl(J)Landroidx/collection/IntIntPair;

    move-result-object v13

    move-object/from16 v21, v13

    :goto_a
    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v16, v27

    move/from16 v18, v12

    move/from16 v22, v9

    move/from16 v23, v10

    move/from16 v24, v5

    .line 1115
    invoke-virtual/range {v16 .. v26}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;->getWrapInfo-OpUlnko(ZIJLandroidx/collection/IntIntPair;IIIZZ)Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;

    move-result-object v13

    .line 1130
    invoke-virtual {v13}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;->isLastItemInLine()Z

    move-result v16

    if-eqz v16, :cond_e

    add-int v5, v5, p5

    add-int/2addr v10, v5

    if-eqz v11, :cond_c

    const/16 v18, 0x1

    goto :goto_b

    :cond_c
    const/16 v18, 0x0

    :goto_b
    move-object/from16 v16, v27

    move-object/from16 v17, v13

    move/from16 v19, v9

    move/from16 v20, v10

    move/from16 v21, v6

    move/from16 v22, v12

    .line 1132
    invoke-virtual/range {v16 .. v22}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;->getWrapEllipsisInfo(Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;ZIIII)Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapEllipsisInfo;

    move-result-object v5

    sub-int v8, v8, p4

    add-int/lit8 v9, v9, 0x1

    .line 1145
    invoke-virtual {v13}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;->isLastItemInContainer()Z

    move-result v6

    if-eqz v6, :cond_d

    if-eqz v5, :cond_10

    .line 1146
    invoke-virtual {v5}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapEllipsisInfo;->getEllipsisSize-OO21N7I()J

    move-result-wide v0

    .line 1147
    invoke-virtual {v5}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapEllipsisInfo;->getPlaceEllipsisOnLastContentLine()Z

    move-result v2

    if-nez v2, :cond_10

    .line 1148
    invoke-static {v0, v1}, Landroidx/collection/IntIntPair;->getSecond-impl(J)I

    move-result v0

    add-int v0, v0, p5

    add-int/2addr v10, v0

    goto :goto_d

    :cond_d
    move v5, v3

    move v6, v8

    move/from16 v28, v14

    const/4 v11, 0x0

    goto :goto_c

    :cond_e
    move v11, v5

    move v5, v6

    move v6, v8

    :goto_c
    move v12, v14

    move/from16 v16, v12

    const/4 v8, 0x1

    const/4 v13, 0x0

    move v14, v5

    move v5, v7

    goto/16 :goto_6

    :cond_f
    move/from16 v14, v16

    :cond_10
    :goto_d
    sub-int v10, v10, p5

    .line 1157
    invoke-static {v10, v14}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    move-result-wide v0

    return-wide v0
.end method

.method private static final intrinsicCrossAxisSize(Ljava/util/List;[I[IIIIIILandroidx/compose/foundation/layout/FlowLayoutOverflowState;)J
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;[I[IIIIII",
            "Landroidx/compose/foundation/layout/FlowLayoutOverflowState;",
            ")J"
        }
    .end annotation

    .line 1026
    new-instance v0, Landroidx/compose/foundation/layout/FlowLayoutKt$intrinsicCrossAxisSize$1;

    move-object v1, p1

    invoke-direct {v0, p1}, Landroidx/compose/foundation/layout/FlowLayoutKt$intrinsicCrossAxisSize$1;-><init>([I)V

    move-object v2, v0

    check-cast v2, Lkotlin/jvm/functions/Function3;

    new-instance v0, Landroidx/compose/foundation/layout/FlowLayoutKt$intrinsicCrossAxisSize$2;

    move-object v1, p2

    invoke-direct {v0, p2}, Landroidx/compose/foundation/layout/FlowLayoutKt$intrinsicCrossAxisSize$2;-><init>([I)V

    move-object v3, v0

    check-cast v3, Lkotlin/jvm/functions/Function3;

    move-object v1, p0

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-static/range {v1 .. v9}, Landroidx/compose/foundation/layout/FlowLayoutKt;->intrinsicCrossAxisSize(Ljava/util/List;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;IIIIILandroidx/compose/foundation/layout/FlowLayoutOverflowState;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final mainAxisMin(Landroidx/compose/ui/layout/IntrinsicMeasurable;ZI)I
    .locals 0

    if-eqz p1, :cond_0

    .line 1434
    invoke-interface {p0, p2}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->minIntrinsicWidth(I)I

    move-result p0

    goto :goto_0

    .line 1436
    :cond_0
    invoke-interface {p0, p2}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->minIntrinsicHeight(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method private static final maxIntrinsicMainAxisSize(Ljava/util/List;Lkotlin/jvm/functions/Function3;III)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;III)I"
        }
    .end annotation

    .line 1680
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v2, v0, :cond_2

    .line 1681
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 1682
    check-cast v6, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 906
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {p1, v6, v7, v8}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    add-int/2addr v6, p3

    add-int/lit8 v7, v2, 0x1

    sub-int v8, v7, v4

    if-eq v8, p4, :cond_1

    .line 907
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v8

    if-ne v7, v8, :cond_0

    goto :goto_1

    :cond_0
    add-int/2addr v5, v6

    goto :goto_2

    :cond_1
    :goto_1
    add-int/2addr v5, v6

    sub-int/2addr v5, p3

    .line 911
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v5, v1

    move v4, v2

    :goto_2
    move v2, v7

    goto :goto_0

    :cond_2
    return v3
.end method

.method public static final measureAndCache-rqJ1uqs(Landroidx/compose/ui/layout/Measurable;Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;JLkotlin/jvm/functions/Function1;)J
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/Measurable;",
            "Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;",
            "J",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/layout/Placeable;",
            "Lkotlin/Unit;",
            ">;)J"
        }
    .end annotation

    .line 1460
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    invoke-static {v0}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getRowColumnParentData(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getWeight(Landroidx/compose/foundation/layout/RowColumnParentData;)F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-nez v1, :cond_1

    .line 1461
    invoke-static {v0}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getRowColumnParentData(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/compose/foundation/layout/RowColumnParentData;->getFlowLayoutData()Landroidx/compose/foundation/layout/FlowLayoutData;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/compose/foundation/layout/FlowLayoutData;->getFillCrossAxisFraction()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 1464
    invoke-interface {p0, p2, p3}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object p0

    invoke-interface {p4, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1466
    invoke-interface {p1, p0}, Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;->mainAxisSize(Landroidx/compose/ui/layout/Placeable;)I

    move-result p2

    .line 1467
    invoke-interface {p1, p0}, Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;->crossAxisSize(Landroidx/compose/ui/layout/Placeable;)I

    move-result p0

    .line 1468
    invoke-static {p2, p0}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    move-result-wide p0

    goto :goto_1

    .line 1471
    :cond_1
    invoke-interface {p1}, Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;->isHorizontal()Z

    move-result p0

    const p2, 0x7fffffff

    invoke-static {v0, p0, p2}, Landroidx/compose/foundation/layout/FlowLayoutKt;->mainAxisMin(Landroidx/compose/ui/layout/IntrinsicMeasurable;ZI)I

    move-result p0

    .line 1472
    invoke-interface {p1}, Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;->isHorizontal()Z

    move-result p1

    invoke-static {v0, p1, p0}, Landroidx/compose/foundation/layout/FlowLayoutKt;->crossAxisMin(Landroidx/compose/ui/layout/IntrinsicMeasurable;ZI)I

    move-result p1

    .line 1473
    invoke-static {p0, p1}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    move-result-wide p0

    :goto_1
    return-wide p0
.end method

.method private static final minIntrinsicMainAxisSize(Ljava/util/List;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;IIIIILandroidx/compose/foundation/layout/FlowLayoutOverflowState;)I
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;IIIII",
            "Landroidx/compose/foundation/layout/FlowLayoutOverflowState;",
            ")I"
        }
    .end annotation

    move/from16 v0, p3

    move/from16 v10, p6

    move/from16 v11, p7

    .line 936
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 939
    :cond_0
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v1

    new-array v12, v1, [I

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aput v2, v12, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 940
    :cond_1
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v3

    new-array v13, v3, [I

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_2

    aput v2, v13, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 942
    :cond_2
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v4

    move v5, v2

    :goto_2
    if-ge v5, v4, :cond_3

    move-object/from16 v14, p0

    .line 943
    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 944
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v9, p1

    invoke-interface {v9, v6, v7, v8}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    .line 945
    aput v7, v12, v5

    .line 946
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v15, p2

    invoke-interface {v15, v6, v8, v7}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    aput v6, v13, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    move-object/from16 v14, p0

    const v4, 0x7fffffff

    if-eq v11, v4, :cond_4

    if-eq v10, v4, :cond_4

    mul-int v4, v10, v11

    .line 957
    :cond_4
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ge v4, v5, :cond_6

    .line 958
    invoke-virtual/range {p8 .. p8}, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->getType$foundation_layout_release()Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;

    move-result-object v5

    sget-object v7, Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;->ExpandIndicator:Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;

    if-eq v5, v7, :cond_5

    .line 959
    invoke-virtual/range {p8 .. p8}, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->getType$foundation_layout_release()Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;

    move-result-object v5

    sget-object v7, Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;->ExpandOrCollapseIndicator:Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;

    if-ne v5, v7, :cond_6

    :cond_5
    :goto_3
    move v5, v6

    goto :goto_4

    .line 961
    :cond_6
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v5

    if-lt v4, v5, :cond_7

    .line 962
    invoke-virtual/range {p8 .. p8}, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->getMinLinesToShowCollapse$foundation_layout_release()I

    move-result v5

    if-lt v11, v5, :cond_7

    .line 963
    invoke-virtual/range {p8 .. p8}, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->getType$foundation_layout_release()Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;

    move-result-object v5

    sget-object v7, Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;->ExpandOrCollapseIndicator:Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;

    if-ne v5, v7, :cond_7

    goto :goto_3

    :cond_7
    move v5, v2

    :goto_4
    sub-int/2addr v4, v5

    .line 968
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 969
    invoke-static {v12}, Lkotlin/collections/ArraysKt;->sum([I)I

    move-result v4

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v6

    mul-int v5, v5, p4

    add-int/2addr v4, v5

    if-eqz v3, :cond_13

    .line 971
    aget v3, v13, v2

    new-instance v5, Lkotlin/ranges/IntRange;

    invoke-static {v13}, Lkotlin/collections/ArraysKt;->getLastIndex([I)I

    move-result v7

    invoke-direct {v5, v6, v7}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-virtual {v5}, Lkotlin/ranges/IntRange;->iterator()Lkotlin/collections/IntIterator;

    move-result-object v5

    :cond_8
    :goto_5
    invoke-virtual {v5}, Lkotlin/collections/IntIterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {v5}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v7

    aget v7, v13, v7

    if-ge v3, v7, :cond_8

    move v3, v7

    goto :goto_5

    :cond_9
    if-eqz v1, :cond_12

    .line 973
    aget v1, v12, v2

    new-instance v2, Lkotlin/ranges/IntRange;

    invoke-static {v12}, Lkotlin/collections/ArraysKt;->getLastIndex([I)I

    move-result v5

    invoke-direct {v2, v6, v5}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-virtual {v2}, Lkotlin/ranges/IntRange;->iterator()Lkotlin/collections/IntIterator;

    move-result-object v2

    :cond_a
    :goto_6
    invoke-virtual {v2}, Lkotlin/collections/IntIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {v2}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v5

    aget v5, v12, v5

    if-ge v1, v5, :cond_a

    move v1, v5

    goto :goto_6

    :cond_b
    move v9, v1

    move v8, v4

    :goto_7
    if-gt v9, v8, :cond_11

    if-ne v3, v0, :cond_c

    return v4

    :cond_c
    add-int v1, v9, v8

    .line 980
    div-int/lit8 v16, v1, 0x2

    move-object/from16 v1, p0

    move-object v2, v12

    move-object v3, v13

    move/from16 v4, v16

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move v10, v8

    move/from16 v8, p7

    move/from16 v17, v9

    move-object/from16 v9, p8

    .line 982
    invoke-static/range {v1 .. v9}, Landroidx/compose/foundation/layout/FlowLayoutKt;->intrinsicCrossAxisSize(Ljava/util/List;[I[IIIIIILandroidx/compose/foundation/layout/FlowLayoutOverflowState;)J

    move-result-wide v1

    .line 993
    invoke-static {v1, v2}, Landroidx/collection/IntIntPair;->getFirst-impl(J)I

    move-result v3

    .line 994
    invoke-static {v1, v2}, Landroidx/collection/IntIntPair;->getSecond-impl(J)I

    move-result v1

    if-gt v3, v0, :cond_f

    if-ge v1, v15, :cond_d

    goto :goto_8

    :cond_d
    if-ge v3, v0, :cond_e

    add-int/lit8 v8, v16, -0x1

    move/from16 v10, p6

    move/from16 v4, v16

    move/from16 v9, v17

    goto :goto_7

    :cond_e
    return v16

    :cond_f
    :goto_8
    add-int/lit8 v9, v16, 0x1

    if-le v9, v10, :cond_10

    return v9

    :cond_10
    move v8, v10

    move/from16 v4, v16

    move/from16 v10, p6

    goto :goto_7

    :cond_11
    return v4

    .line 973
    :cond_12
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 971
    :cond_13
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public static final placeHelper-BmaY500(Landroidx/compose/ui/layout/MeasureScope;JII[ILandroidx/compose/runtime/collection/MutableVector;Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;[I)Landroidx/compose/ui/layout/MeasureResult;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/MeasureScope;",
            "JII[I",
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/layout/MeasureResult;",
            ">;",
            "Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;",
            "[I)",
            "Landroidx/compose/ui/layout/MeasureResult;"
        }
    .end annotation

    move-object v0, p0

    .line 1486
    invoke-interface/range {p7 .. p7}, Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;->isHorizontal()Z

    move-result v1

    .line 1487
    invoke-interface/range {p7 .. p7}, Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;->getVerticalArrangement()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    move-result-object v2

    .line 1488
    invoke-interface/range {p7 .. p7}, Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;->getHorizontalArrangement()Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    move-result-object v3

    if-eqz v1, :cond_1

    if-eqz v2, :cond_0

    .line 1494
    invoke-interface {v2}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->getSpacing-D9Ej5fM()F

    move-result v3

    invoke-interface {p0, v3}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v3

    invoke-virtual/range {p6 .. p6}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    mul-int/2addr v3, v4

    add-int/2addr v3, p4

    .line 1702
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v4

    .line 1703
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v5

    .line 1496
    invoke-static {v3, v4, v5}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v3

    .line 1500
    move-object v4, v0

    check-cast v4, Landroidx/compose/ui/unit/Density;

    move-object v6, p5

    move-object/from16 v8, p8

    invoke-interface {v2, v4, v3, p5, v8}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->arrange(Landroidx/compose/ui/unit/Density;I[I[I)V

    goto :goto_0

    .line 1493
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "null verticalArrangement"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-object v6, p5

    move-object/from16 v8, p8

    if-eqz v3, :cond_3

    .line 1508
    invoke-interface {v3}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->getSpacing-D9Ej5fM()F

    move-result v2

    invoke-interface {p0, v2}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v2

    invoke-virtual/range {p6 .. p6}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    mul-int/2addr v2, v4

    add-int/2addr v2, p4

    .line 1704
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v4

    .line 1705
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v5

    .line 1510
    invoke-static {v2, v4, v5}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v2

    .line 1514
    move-object v4, v0

    check-cast v4, Landroidx/compose/ui/unit/Density;

    .line 1517
    invoke-interface {p0}, Landroidx/compose/ui/layout/MeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v7

    move v5, v2

    move-object v6, p5

    move-object/from16 v8, p8

    .line 1514
    invoke-interface/range {v3 .. v8}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->arrange(Landroidx/compose/ui/unit/Density;I[ILandroidx/compose/ui/unit/LayoutDirection;[I)V

    move v3, v2

    .line 1706
    :goto_0
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v2

    .line 1707
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v4

    move v5, p3

    .line 1523
    invoke-static {p3, v2, v4}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v2

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move v9, v3

    move v3, v2

    move v2, v9

    .line 1538
    :goto_1
    new-instance v1, Landroidx/compose/foundation/layout/FlowLayoutKt$placeHelper$5;

    move-object/from16 v4, p6

    invoke-direct {v1, v4}, Landroidx/compose/foundation/layout/FlowLayoutKt$placeHelper$5;-><init>(Landroidx/compose/runtime/collection/MutableVector;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move p1, v2

    move p2, v3

    move-object p3, v6

    move-object p4, v1

    move p5, v4

    move-object/from16 p6, v5

    invoke-static/range {p0 .. p6}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0

    .line 1507
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "null horizontalArrangement"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final rowMeasurementHelper(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;
    .locals 17

    move-object/from16 v0, p3

    move/from16 v1, p4

    const-string v2, "C(rowMeasurementHelper)P(!1,2)380@13086L883:FlowLayout.kt#2w3rfo"

    const v3, 0x582ba447

    .line 380
    invoke-static {v0, v3, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    const-string/jumbo v4, "androidx.compose.foundation.layout.rowMeasurementHelper (FlowLayout.kt:379)"

    invoke-static {v3, v1, v2, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    const v2, -0x47da173

    const-string v3, "CC(remember):FlowLayout.kt#9igjgp"

    .line 381
    invoke-static {v0, v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v2, v1, 0xe

    xor-int/lit8 v2, v2, 0x6

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-le v2, v3, :cond_1

    move-object/from16 v2, p0

    .line 382
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_0

    :cond_1
    move-object/from16 v2, p0

    :goto_0
    and-int/lit8 v6, v1, 0x6

    if-ne v6, v3, :cond_3

    :cond_2
    move v3, v5

    goto :goto_1

    :cond_3
    move v3, v4

    :goto_1
    and-int/lit8 v6, v1, 0x70

    xor-int/lit8 v6, v6, 0x30

    const/16 v7, 0x20

    move-object/from16 v9, p1

    if-le v6, v7, :cond_4

    .line 383
    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    :cond_4
    and-int/lit8 v6, v1, 0x30

    if-ne v6, v7, :cond_6

    :cond_5
    move v6, v5

    goto :goto_2

    :cond_6
    move v6, v4

    :goto_2
    or-int/2addr v3, v6

    and-int/lit16 v6, v1, 0x380

    xor-int/lit16 v6, v6, 0x180

    const/16 v7, 0x100

    move/from16 v13, p2

    if-le v6, v7, :cond_7

    .line 384
    invoke-interface {v0, v13}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v6

    if-nez v6, :cond_8

    :cond_7
    and-int/lit16 v1, v1, 0x180

    if-ne v1, v7, :cond_9

    :cond_8
    move v4, v5

    :cond_9
    or-int v1, v3, v4

    .line 1655
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_a

    .line 1656
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v3, v1, :cond_b

    .line 389
    :cond_a
    invoke-interface/range {p0 .. p0}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->getSpacing-D9Ej5fM()F

    move-result v10

    .line 390
    sget-object v11, Landroidx/compose/foundation/layout/FlowLayoutKt;->CROSS_AXIS_ALIGNMENT_TOP:Landroidx/compose/foundation/layout/CrossAxisAlignment;

    .line 392
    invoke-interface/range {p1 .. p1}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->getSpacing-D9Ej5fM()F

    move-result v12

    .line 395
    sget-object v1, Landroidx/compose/foundation/layout/FlowRowOverflow;->Companion:Landroidx/compose/foundation/layout/FlowRowOverflow$Companion;

    invoke-virtual {v1}, Landroidx/compose/foundation/layout/FlowRowOverflow$Companion;->getVisible()Landroidx/compose/foundation/layout/FlowRowOverflow;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/foundation/layout/FlowRowOverflow;->createOverflowState$foundation_layout_release()Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    move-result-object v15

    .line 386
    new-instance v1, Landroidx/compose/foundation/layout/FlowMeasurePolicy;

    const v14, 0x7fffffff

    const/16 v16, 0x0

    const/4 v7, 0x1

    move-object v6, v1

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v13, p2

    invoke-direct/range {v6 .. v16}, Landroidx/compose/foundation/layout/FlowMeasurePolicy;-><init>(ZLandroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;FLandroidx/compose/foundation/layout/CrossAxisAlignment;FIILandroidx/compose/foundation/layout/FlowLayoutOverflowState;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Landroidx/compose/ui/layout/MultiContentMeasurePolicy;

    .line 398
    new-instance v2, Landroidx/compose/foundation/layout/FlowLayoutKt$rowMeasurementHelper$1$1;

    invoke-direct {v2, v1}, Landroidx/compose/foundation/layout/FlowLayoutKt$rowMeasurementHelper$1$1;-><init>(Landroidx/compose/ui/layout/MultiContentMeasurePolicy;)V

    move-object v3, v2

    check-cast v3, Landroidx/compose/ui/layout/MeasurePolicy;

    .line 1658
    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 381
    :cond_b
    check-cast v3, Landroidx/compose/ui/layout/MeasurePolicy;

    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 380
    :cond_c
    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    return-object v3
.end method

.method public static final rowMeasurementMultiContentHelper(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;IILandroidx/compose/foundation/layout/FlowLayoutOverflowState;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MultiContentMeasurePolicy;
    .locals 17

    move-object/from16 v0, p5

    move/from16 v1, p6

    const-string v2, "C(rowMeasurementMultiContentHelper)P(!1,4)414@14301L649:FlowLayout.kt#2w3rfo"

    const v3, -0x7f39ec4b

    .line 414
    invoke-static {v0, v3, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    const-string/jumbo v4, "androidx.compose.foundation.layout.rowMeasurementMultiContentHelper (FlowLayout.kt:413)"

    invoke-static {v3, v1, v2, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    const v2, 0x2c5f4ca3

    const-string v3, "CC(remember):FlowLayout.kt#9igjgp"

    .line 415
    invoke-static {v0, v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v2, v1, 0xe

    xor-int/lit8 v2, v2, 0x6

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-le v2, v3, :cond_1

    move-object/from16 v2, p0

    .line 416
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_0

    :cond_1
    move-object/from16 v2, p0

    :goto_0
    and-int/lit8 v6, v1, 0x6

    if-ne v6, v3, :cond_3

    :cond_2
    move v3, v5

    goto :goto_1

    :cond_3
    move v3, v4

    :goto_1
    and-int/lit8 v6, v1, 0x70

    xor-int/lit8 v6, v6, 0x30

    const/16 v7, 0x20

    move-object/from16 v9, p1

    if-le v6, v7, :cond_4

    .line 417
    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    :cond_4
    and-int/lit8 v6, v1, 0x30

    if-ne v6, v7, :cond_6

    :cond_5
    move v6, v5

    goto :goto_2

    :cond_6
    move v6, v4

    :goto_2
    or-int/2addr v3, v6

    and-int/lit16 v6, v1, 0x380

    xor-int/lit16 v6, v6, 0x180

    const/16 v7, 0x100

    move/from16 v13, p2

    if-le v6, v7, :cond_7

    .line 418
    invoke-interface {v0, v13}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v6

    if-nez v6, :cond_8

    :cond_7
    and-int/lit16 v6, v1, 0x180

    if-ne v6, v7, :cond_9

    :cond_8
    move v6, v5

    goto :goto_3

    :cond_9
    move v6, v4

    :goto_3
    or-int/2addr v3, v6

    and-int/lit16 v6, v1, 0x1c00

    xor-int/lit16 v6, v6, 0xc00

    const/16 v7, 0x800

    move/from16 v14, p3

    if-le v6, v7, :cond_a

    .line 419
    invoke-interface {v0, v14}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v6

    if-nez v6, :cond_b

    :cond_a
    and-int/lit16 v1, v1, 0xc00

    if-ne v1, v7, :cond_c

    :cond_b
    move v4, v5

    :cond_c
    or-int v1, v3, v4

    move-object/from16 v3, p4

    .line 420
    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v1, v4

    .line 1661
    invoke-interface/range {p5 .. p5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v1, :cond_d

    .line 1662
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v4, v1, :cond_e

    .line 425
    :cond_d
    invoke-interface/range {p0 .. p0}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->getSpacing-D9Ej5fM()F

    move-result v10

    .line 426
    sget-object v11, Landroidx/compose/foundation/layout/FlowLayoutKt;->CROSS_AXIS_ALIGNMENT_TOP:Landroidx/compose/foundation/layout/CrossAxisAlignment;

    .line 428
    invoke-interface/range {p1 .. p1}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->getSpacing-D9Ej5fM()F

    move-result v12

    .line 422
    new-instance v4, Landroidx/compose/foundation/layout/FlowMeasurePolicy;

    const/4 v7, 0x1

    const/16 v16, 0x0

    move-object v6, v4

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v13, p2

    move/from16 v14, p3

    move-object/from16 v15, p4

    invoke-direct/range {v6 .. v16}, Landroidx/compose/foundation/layout/FlowMeasurePolicy;-><init>(ZLandroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;FLandroidx/compose/foundation/layout/CrossAxisAlignment;FIILandroidx/compose/foundation/layout/FlowLayoutOverflowState;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1664
    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 415
    :cond_e
    check-cast v4, Landroidx/compose/foundation/layout/FlowMeasurePolicy;

    invoke-static/range {p5 .. p5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 414
    :cond_f
    invoke-static/range {p5 .. p5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    check-cast v4, Landroidx/compose/ui/layout/MultiContentMeasurePolicy;

    return-object v4
.end method

.method private static final safeNext(Ljava/util/Iterator;Landroidx/compose/foundation/layout/FlowLineInfo;)Landroidx/compose/ui/layout/Measurable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+",
            "Landroidx/compose/ui/layout/Measurable;",
            ">;",
            "Landroidx/compose/foundation/layout/FlowLineInfo;",
            ")",
            "Landroidx/compose/ui/layout/Measurable;"
        }
    .end annotation

    .line 1422
    :try_start_0
    instance-of v0, p0, Landroidx/compose/foundation/layout/ContextualFlowItemIterator;

    if-eqz v0, :cond_0

    .line 1423
    check-cast p0, Landroidx/compose/foundation/layout/ContextualFlowItemIterator;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/layout/ContextualFlowItemIterator;->getNext$foundation_layout_release(Landroidx/compose/foundation/layout/FlowLineInfo;)Landroidx/compose/ui/layout/Measurable;

    move-result-object p0

    goto :goto_0

    .line 1425
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/layout/Measurable;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
