.class public abstract Landroidx/compose/ui/node/LookaheadCapablePlaceable;
.super Landroidx/compose/ui/layout/Placeable;
.source "LookaheadDelegate.kt"

# interfaces
.implements Landroidx/compose/ui/node/MeasureScopeWithLayoutNode;
.implements Landroidx/compose/ui/node/MotionReferencePlacementDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/node/LookaheadCapablePlaceable$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLookaheadDelegate.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LookaheadDelegate.kt\nandroidx/compose/ui/node/LookaheadCapablePlaceable\n+ 2 ScatterMap.kt\nandroidx/collection/ScatterMap\n+ 3 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n+ 4 ScatterSet.kt\nandroidx/collection/MutableScatterSet\n+ 5 ScatterSet.kt\nandroidx/collection/ScatterSet\n+ 6 ScatterMap.kt\nandroidx/collection/MutableScatterMap\n+ 7 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 8 LookaheadDelegate.kt\nandroidx/compose/ui/node/LookaheadDelegateKt\n+ 9 InlineClassHelper.kt\nandroidx/compose/ui/internal/InlineClassHelperKt\n+ 10 ObjectFloatMap.kt\nandroidx/collection/ObjectFloatMap\n*L\n1#1,491:1\n418#2,3:492\n363#2,6:495\n373#2,3:502\n376#2,2:506\n422#2:508\n423#2:536\n379#2,6:537\n424#2:543\n363#2,6:545\n373#2,3:552\n376#2,2:556\n379#2,6:562\n418#2,3:580\n363#2,6:583\n373#2,3:590\n376#2,2:594\n422#2,2:596\n379#2,6:598\n424#2:604\n418#2,3:605\n363#2,6:608\n373#2,3:615\n376#2,2:619\n422#2,2:621\n379#2,6:623\n424#2:629\n1810#3:501\n1672#3:505\n1810#3:518\n1672#3:522\n1810#3:551\n1672#3:555\n1810#3:589\n1672#3:593\n1810#3:614\n1672#3:618\n1810#3:641\n1672#3:645\n1810#3:666\n1672#3:670\n1810#3:693\n1672#3:697\n842#4,2:509\n845#4,4:525\n849#4:535\n237#5,7:511\n248#5,3:519\n251#5,2:523\n254#5,6:529\n267#5,4:682\n237#5,7:686\n248#5,3:694\n251#5,2:698\n272#5,2:700\n254#5,6:702\n274#5:708\n1047#6:544\n1049#6,4:558\n1053#6:568\n863#6:569\n1#7:570\n1#7:630\n341#8:571\n342#8:577\n345#8:579\n42#9,5:572\n48#9:578\n401#10,4:631\n373#10,6:635\n383#10,3:642\n386#10,2:646\n406#10,2:648\n389#10,6:650\n408#10:656\n415#10,3:657\n373#10,6:660\n383#10,3:667\n386#10,2:671\n419#10,2:673\n389#10,6:675\n421#10:681\n*S KotlinDebug\n*F\n+ 1 LookaheadDelegate.kt\nandroidx/compose/ui/node/LookaheadCapablePlaceable\n*L\n163#1:492,3\n163#1:495,6\n163#1:502,3\n163#1:506,2\n163#1:508\n163#1:536\n163#1:537,6\n163#1:543\n166#1:545,6\n166#1:552,3\n166#1:556,2\n166#1:562,6\n232#1:580,3\n232#1:583,6\n232#1:590,3\n232#1:594,2\n232#1:596,2\n232#1:598,6\n232#1:604\n247#1:605,3\n247#1:608,6\n247#1:615,3\n247#1:619,2\n247#1:621,2\n247#1:623,6\n247#1:629\n163#1:501\n163#1:505\n164#1:518\n164#1:522\n166#1:551\n166#1:555\n232#1:589\n232#1:593\n247#1:614\n247#1:618\n268#1:641\n268#1:645\n281#1:666\n281#1:670\n291#1:693\n291#1:697\n164#1:509,2\n164#1:525,4\n164#1:535\n164#1:511,7\n164#1:519,3\n164#1:523,2\n164#1:529,6\n291#1:682,4\n291#1:686,7\n291#1:694,3\n291#1:698,2\n291#1:700,2\n291#1:702,6\n291#1:708\n166#1:544\n166#1:558,4\n166#1:568\n171#1:569\n171#1:570\n211#1:571\n211#1:577\n211#1:579\n211#1:572,5\n211#1:578\n268#1:631,4\n268#1:635,6\n268#1:642,3\n268#1:646,2\n268#1:648,2\n268#1:650,6\n268#1:656\n281#1:657,3\n281#1:660,6\n281#1:667,3\n281#1:671,2\n281#1:673,2\n281#1:675,6\n281#1:681\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b2\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0007\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008 \u0018\u0000 e2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001eB\u0005\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010?\u001a\u00020@2\u0006\u0010!\u001a\u00020\"2\u0006\u0010A\u001a\u000205H\u0002J\u0010\u0010B\u001a\u00020C2\u0006\u0010D\u001a\u00020EH&J\u0017\u0010F\u001a\u00020@2\u0008\u0010G\u001a\u0004\u0018\u00010&H\u0000\u00a2\u0006\u0002\u0008HJ\u0010\u0010F\u001a\u00020@2\u0006\u0010I\u001a\u00020JH\u0002J\u0010\u0010K\u001a\u00020\u00002\u0006\u0010A\u001a\u000205H\u0002J\u0016\u0010L\u001a\u00020M2\u0006\u0010A\u001a\u0002052\u0006\u0010N\u001a\u00020MJ\u0011\u0010O\u001a\u00020C2\u0006\u0010D\u001a\u00020EH\u0086\u0002J\u0010\u0010P\u001a\u00020@2\u0006\u0010A\u001a\u000205H\u0002J`\u0010Q\u001a\u00020&2\u0006\u0010R\u001a\u00020C2\u0006\u0010S\u001a\u00020C2\u0012\u0010T\u001a\u000e\u0012\u0004\u0012\u00020E\u0012\u0004\u0012\u00020C0U2\u0019\u0010V\u001a\u0015\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020@\u0018\u00010W\u00a2\u0006\u0002\u0008X2\u0017\u0010Y\u001a\u0013\u0012\u0004\u0012\u00020,\u0012\u0004\u0012\u00020@0W\u00a2\u0006\u0002\u0008XH\u0016J&\u0010Z\u001a\u00020@2\u001c\u0010[\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\"07j\u0008\u0012\u0004\u0012\u00020\"`806H\u0002J\u0016\u0010\\\u001a\u00020@2\u0006\u0010A\u001a\u0002052\u0006\u0010]\u001a\u00020MJ\u0016\u0010^\u001a\u00020@2\u0006\u0010A\u001a\u0002052\u0006\u0010]\u001a\u00020MJ\r\u0010_\u001a\u00020@H \u00a2\u0006\u0002\u0008`J\u000c\u0010a\u001a\u00020@*\u00020bH\u0004J\u0014\u0010c\u001a\u00020\u0013*\u00020\"2\u0006\u0010d\u001a\u00020\"H\u0002R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u0008X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u0014\u0010\u000b\u001a\u0004\u0018\u00010\u0000X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u0012\u0010\u000e\u001a\u00020\u000fX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u0012\u0010\u0012\u001a\u00020\u0013X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015R\u001a\u0010\u0016\u001a\u00020\u00138VX\u0096\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0017\u0010\u0004\u001a\u0004\u0008\u0016\u0010\u0015R\u001a\u0010\u0018\u001a\u00020\u0013X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0015\"\u0004\u0008\u0019\u0010\u001aR\u001a\u0010\u001b\u001a\u00020\u0013X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u0015\"\u0004\u0008\u001d\u0010\u001aR\u001a\u0010\u001e\u001a\u00020\u0013X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u0015\"\u0004\u0008 \u0010\u001aR\u0012\u0010!\u001a\u00020\"X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008#\u0010$R\u0012\u0010%\u001a\u00020&X\u00a0\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\'\u0010(R\u0014\u0010)\u001a\u0004\u0018\u00010\u0000X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008*\u0010\rR\u0011\u0010+\u001a\u00020,\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008-\u0010.R\u0018\u0010/\u001a\u000200X\u00a6\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0006\u001a\u0004\u00081\u00102R2\u00103\u001a&\u0012\u0004\u0012\u000205\u0012\u001a\u0012\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\"07j\u0008\u0012\u0004\u0012\u00020\"`806\u0018\u000104X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u00109\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008:\u0010;R\u0016\u0010<\u001a\n\u0012\u0004\u0012\u000205\u0018\u00010=X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010>\u001a\n\u0012\u0004\u0012\u000205\u0018\u00010=X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006f"
    }
    d2 = {
        "Landroidx/compose/ui/node/LookaheadCapablePlaceable;",
        "Landroidx/compose/ui/layout/Placeable;",
        "Landroidx/compose/ui/node/MeasureScopeWithLayoutNode;",
        "Landroidx/compose/ui/node/MotionReferencePlacementDelegate;",
        "()V",
        "_rulerScope",
        "Landroidx/compose/ui/layout/RulerScope;",
        "alignmentLinesOwner",
        "Landroidx/compose/ui/node/AlignmentLinesOwner;",
        "getAlignmentLinesOwner",
        "()Landroidx/compose/ui/node/AlignmentLinesOwner;",
        "child",
        "getChild",
        "()Landroidx/compose/ui/node/LookaheadCapablePlaceable;",
        "coordinates",
        "Landroidx/compose/ui/layout/LayoutCoordinates;",
        "getCoordinates",
        "()Landroidx/compose/ui/layout/LayoutCoordinates;",
        "hasMeasureResult",
        "",
        "getHasMeasureResult",
        "()Z",
        "isLookingAhead",
        "isLookingAhead$annotations",
        "isPlacedUnderMotionFrameOfReference",
        "setPlacedUnderMotionFrameOfReference",
        "(Z)V",
        "isPlacingForAlignment",
        "isPlacingForAlignment$ui_release",
        "setPlacingForAlignment$ui_release",
        "isShallowPlacing",
        "isShallowPlacing$ui_release",
        "setShallowPlacing$ui_release",
        "layoutNode",
        "Landroidx/compose/ui/node/LayoutNode;",
        "getLayoutNode",
        "()Landroidx/compose/ui/node/LayoutNode;",
        "measureResult",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "getMeasureResult$ui_release",
        "()Landroidx/compose/ui/layout/MeasureResult;",
        "parent",
        "getParent",
        "placementScope",
        "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
        "getPlacementScope",
        "()Landroidx/compose/ui/layout/Placeable$PlacementScope;",
        "position",
        "Landroidx/compose/ui/unit/IntOffset;",
        "getPosition-nOcc-ac",
        "()J",
        "rulerReaders",
        "Landroidx/collection/MutableScatterMap;",
        "Landroidx/compose/ui/layout/Ruler;",
        "Landroidx/collection/MutableScatterSet;",
        "Ljava/lang/ref/WeakReference;",
        "Landroidx/compose/ui/node/WeakReference;",
        "rulerScope",
        "getRulerScope",
        "()Landroidx/compose/ui/layout/RulerScope;",
        "rulerValues",
        "Landroidx/collection/MutableObjectFloatMap;",
        "rulerValuesCache",
        "addRulerReader",
        "",
        "ruler",
        "calculateAlignmentLine",
        "",
        "alignmentLine",
        "Landroidx/compose/ui/layout/AlignmentLine;",
        "captureRulers",
        "result",
        "captureRulers$ui_release",
        "placeableResult",
        "Landroidx/compose/ui/node/PlaceableResult;",
        "findAncestorRulerDefiner",
        "findRulerValue",
        "",
        "defaultValue",
        "get",
        "invalidateChildrenOfDefiningRuler",
        "layout",
        "width",
        "height",
        "alignmentLines",
        "",
        "rulers",
        "Lkotlin/Function1;",
        "Lkotlin/ExtensionFunctionType;",
        "placementBlock",
        "notifyRulerValueChange",
        "layoutNodes",
        "provideRelativeRulerValue",
        "value",
        "provideRulerValue",
        "replace",
        "replace$ui_release",
        "invalidateAlignmentLinesFromPositionChange",
        "Landroidx/compose/ui/node/NodeCoordinator;",
        "isLayoutNodeAncestor",
        "ancestor",
        "Companion",
        "ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I

.field public static final Companion:Landroidx/compose/ui/node/LookaheadCapablePlaceable$Companion;

.field private static final onCommitAffectingRuler:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/node/PlaceableResult;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private _rulerScope:Landroidx/compose/ui/layout/RulerScope;

.field private isPlacedUnderMotionFrameOfReference:Z

.field private isPlacingForAlignment:Z

.field private isShallowPlacing:Z

.field private final placementScope:Landroidx/compose/ui/layout/Placeable$PlacementScope;

.field private rulerReaders:Landroidx/collection/MutableScatterMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableScatterMap<",
            "Landroidx/compose/ui/layout/Ruler;",
            "Landroidx/collection/MutableScatterSet<",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/compose/ui/node/LayoutNode;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private rulerValues:Landroidx/collection/MutableObjectFloatMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableObjectFloatMap<",
            "Landroidx/compose/ui/layout/Ruler;",
            ">;"
        }
    .end annotation
.end field

.field private rulerValuesCache:Landroidx/collection/MutableObjectFloatMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableObjectFloatMap<",
            "Landroidx/compose/ui/layout/Ruler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/node/LookaheadCapablePlaceable$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->Companion:Landroidx/compose/ui/node/LookaheadCapablePlaceable$Companion;

    .line 318
    sget-object v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable$Companion$onCommitAffectingRuler$1;->INSTANCE:Landroidx/compose/ui/node/LookaheadCapablePlaceable$Companion$onCommitAffectingRuler$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    sput-object v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->onCommitAffectingRuler:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Landroidx/compose/ui/layout/Placeable;-><init>()V

    .line 121
    invoke-static {p0}, Landroidx/compose/ui/layout/PlaceableKt;->PlacementScope(Landroidx/compose/ui/node/LookaheadCapablePlaceable;)Landroidx/compose/ui/layout/Placeable$PlacementScope;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->placementScope:Landroidx/compose/ui/layout/Placeable$PlacementScope;

    return-void
.end method

.method public static final synthetic access$captureRulers(Landroidx/compose/ui/node/LookaheadCapablePlaceable;Landroidx/compose/ui/node/PlaceableResult;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->captureRulers(Landroidx/compose/ui/node/PlaceableResult;)V

    return-void
.end method

.method private final addRulerReader(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/layout/Ruler;)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 163
    iget-object v2, v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->rulerReaders:Landroidx/collection/MutableScatterMap;

    const-wide/16 v5, 0xff

    const/4 v7, 0x7

    const-wide v8, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/16 v10, 0x8

    if-eqz v2, :cond_b

    check-cast v2, Landroidx/collection/ScatterMap;

    .line 492
    iget-object v13, v2, Landroidx/collection/ScatterMap;->values:[Ljava/lang/Object;

    .line 495
    iget-object v2, v2, Landroidx/collection/ScatterMap;->metadata:[J

    .line 496
    array-length v14, v2

    add-int/lit8 v14, v14, -0x2

    if-ltz v14, :cond_b

    const/4 v15, 0x0

    .line 499
    :goto_0
    aget-wide v11, v2, v15

    not-long v3, v11

    shl-long/2addr v3, v7

    and-long/2addr v3, v11

    and-long/2addr v3, v8

    cmp-long v3, v3, v8

    if-eqz v3, :cond_a

    sub-int v3, v15, v14

    not-int v3, v3

    ushr-int/lit8 v3, v3, 0x1f

    rsub-int/lit8 v3, v3, 0x8

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_9

    and-long v19, v11, v5

    const-wide/16 v17, 0x80

    cmp-long v19, v19, v17

    if-gez v19, :cond_8

    shl-int/lit8 v19, v15, 0x3

    add-int v19, v19, v4

    .line 508
    aget-object v19, v13, v19

    move-object/from16 v5, v19

    check-cast v5, Landroidx/collection/MutableScatterSet;

    .line 509
    iget-object v6, v5, Landroidx/collection/MutableScatterSet;->elements:[Ljava/lang/Object;

    .line 510
    move-object v10, v5

    check-cast v10, Landroidx/collection/ScatterSet;

    .line 512
    iget-object v10, v10, Landroidx/collection/ScatterSet;->metadata:[J

    .line 513
    array-length v8, v10

    add-int/lit8 v8, v8, -0x2

    move-object/from16 v24, v2

    if-ltz v8, :cond_6

    const/4 v9, 0x0

    .line 516
    :goto_2
    aget-wide v1, v10, v9

    move-object/from16 v25, v13

    move/from16 v26, v14

    not-long v13, v1

    shl-long/2addr v13, v7

    and-long/2addr v13, v1

    const-wide v22, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v13, v13, v22

    cmp-long v13, v13, v22

    if-eqz v13, :cond_5

    sub-int v13, v9, v8

    not-int v13, v13

    ushr-int/lit8 v13, v13, 0x1f

    const/16 v14, 0x8

    rsub-int/lit8 v13, v13, 0x8

    const/4 v14, 0x0

    :goto_3
    if-ge v14, v13, :cond_4

    const-wide/16 v20, 0xff

    and-long v27, v1, v20

    const-wide/16 v17, 0x80

    cmp-long v27, v27, v17

    if-gez v27, :cond_2

    shl-int/lit8 v27, v9, 0x3

    add-int v7, v27, v14

    .line 525
    aget-object v27, v6, v7

    check-cast v27, Ljava/lang/ref/WeakReference;

    .line 164
    invoke-virtual/range {v27 .. v27}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroidx/compose/ui/node/LayoutNode;

    move-object/from16 v29, v6

    if-eqz v27, :cond_0

    invoke-virtual/range {v27 .. v27}, Landroidx/compose/ui/node/LayoutNode;->isAttached()Z

    move-result v6

    move-object/from16 v27, v10

    const/4 v10, 0x1

    if-ne v6, v10, :cond_1

    move/from16 v16, v10

    goto :goto_4

    :cond_0
    move-object/from16 v27, v10

    const/4 v10, 0x1

    :cond_1
    const/16 v16, 0x0

    :goto_4
    xor-int/lit8 v6, v16, 0x1

    if-eqz v6, :cond_3

    .line 526
    invoke-virtual {v5, v7}, Landroidx/collection/MutableScatterSet;->removeElementAt(I)V

    goto :goto_5

    :cond_2
    move-object/from16 v29, v6

    move-object/from16 v27, v10

    :cond_3
    :goto_5
    const/16 v6, 0x8

    shr-long/2addr v1, v6

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v10, v27

    move-object/from16 v6, v29

    const/4 v7, 0x7

    goto :goto_3

    :cond_4
    move-object/from16 v29, v6

    move-object/from16 v27, v10

    const/16 v6, 0x8

    if-ne v13, v6, :cond_7

    goto :goto_6

    :cond_5
    move-object/from16 v29, v6

    move-object/from16 v27, v10

    :goto_6
    if-eq v9, v8, :cond_7

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v13, v25

    move/from16 v14, v26

    move-object/from16 v10, v27

    move-object/from16 v6, v29

    const/4 v7, 0x7

    goto :goto_2

    :cond_6
    move-object/from16 v25, v13

    move/from16 v26, v14

    :cond_7
    const/16 v1, 0x8

    goto :goto_7

    :cond_8
    move-object/from16 v24, v2

    move-object/from16 v25, v13

    move/from16 v26, v14

    move v1, v10

    :goto_7
    shr-long/2addr v11, v1

    add-int/lit8 v4, v4, 0x1

    move v10, v1

    move-object/from16 v2, v24

    move-object/from16 v13, v25

    move/from16 v14, v26

    const-wide/16 v5, 0xff

    const/4 v7, 0x7

    const-wide v8, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    move-object/from16 v1, p2

    goto/16 :goto_1

    :cond_9
    move-object/from16 v24, v2

    move v1, v10

    move-object/from16 v25, v13

    move/from16 v26, v14

    if-ne v3, v1, :cond_b

    move/from16 v14, v26

    goto :goto_8

    :cond_a
    move-object/from16 v24, v2

    move-object/from16 v25, v13

    :goto_8
    if-eq v15, v14, :cond_b

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p2

    move-object/from16 v2, v24

    move-object/from16 v13, v25

    const-wide/16 v5, 0xff

    const/4 v7, 0x7

    const-wide v8, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/16 v10, 0x8

    goto/16 :goto_0

    .line 166
    :cond_b
    iget-object v1, v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->rulerReaders:Landroidx/collection/MutableScatterMap;

    if-eqz v1, :cond_f

    .line 544
    move-object v2, v1

    check-cast v2, Landroidx/collection/ScatterMap;

    .line 545
    iget-object v2, v2, Landroidx/collection/ScatterMap;->metadata:[J

    .line 546
    array-length v3, v2

    add-int/lit8 v3, v3, -0x2

    if-ltz v3, :cond_f

    const/4 v4, 0x0

    .line 549
    :goto_9
    aget-wide v5, v2, v4

    not-long v7, v5

    const/4 v9, 0x7

    shl-long/2addr v7, v9

    and-long/2addr v7, v5

    const-wide v10, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v7, v10

    cmp-long v7, v7, v10

    if-eqz v7, :cond_e

    sub-int v7, v4, v3

    not-int v7, v7

    ushr-int/lit8 v7, v7, 0x1f

    const/16 v8, 0x8

    rsub-int/lit8 v7, v7, 0x8

    const/4 v8, 0x0

    :goto_a
    if-ge v8, v7, :cond_d

    const-wide/16 v12, 0xff

    and-long v14, v5, v12

    const-wide/16 v17, 0x80

    cmp-long v14, v14, v17

    if-gez v14, :cond_c

    shl-int/lit8 v14, v4, 0x3

    add-int/2addr v14, v8

    .line 558
    iget-object v15, v1, Landroidx/collection/MutableScatterMap;->keys:[Ljava/lang/Object;

    aget-object v15, v15, v14

    iget-object v9, v1, Landroidx/collection/MutableScatterMap;->values:[Ljava/lang/Object;

    aget-object v9, v9, v14

    check-cast v9, Landroidx/collection/MutableScatterSet;

    check-cast v15, Landroidx/compose/ui/layout/Ruler;

    .line 166
    invoke-virtual {v9}, Landroidx/collection/MutableScatterSet;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 559
    invoke-virtual {v1, v14}, Landroidx/collection/MutableScatterMap;->removeValueAt(I)Ljava/lang/Object;

    :cond_c
    const/16 v9, 0x8

    shr-long/2addr v5, v9

    add-int/lit8 v8, v8, 0x1

    const/4 v9, 0x7

    goto :goto_a

    :cond_d
    const/16 v9, 0x8

    const-wide/16 v12, 0xff

    const-wide/16 v17, 0x80

    if-ne v7, v9, :cond_f

    goto :goto_b

    :cond_e
    const/16 v9, 0x8

    const-wide/16 v12, 0xff

    const-wide/16 v17, 0x80

    :goto_b
    if-eq v4, v3, :cond_f

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 167
    :cond_f
    iget-object v1, v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->rulerReaders:Landroidx/collection/MutableScatterMap;

    const/4 v2, 0x0

    if-nez v1, :cond_10

    .line 168
    new-instance v1, Landroidx/collection/MutableScatterMap;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Landroidx/collection/MutableScatterMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 169
    iput-object v1, v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->rulerReaders:Landroidx/collection/MutableScatterMap;

    goto :goto_c

    :cond_10
    const/4 v3, 0x0

    const/4 v4, 0x1

    :goto_c
    move-object/from16 v5, p2

    .line 569
    invoke-virtual {v1, v5}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_11

    .line 172
    new-instance v6, Landroidx/collection/MutableScatterSet;

    invoke-direct {v6, v3, v4, v2}, Landroidx/collection/MutableScatterSet;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 569
    invoke-virtual {v1, v5, v6}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 171
    :cond_11
    check-cast v6, Landroidx/collection/MutableScatterSet;

    .line 174
    new-instance v1, Ljava/lang/ref/WeakReference;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v6, v1}, Landroidx/collection/MutableScatterSet;->plusAssign(Ljava/lang/Object;)V

    return-void
.end method

.method private final captureRulers(Landroidx/compose/ui/node/PlaceableResult;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 239
    iget-boolean v2, v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->isPlacingForAlignment:Z

    if-eqz v2, :cond_0

    return-void

    .line 242
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/node/PlaceableResult;->getResult()Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v2

    invoke-interface {v2}, Landroidx/compose/ui/layout/MeasureResult;->getRulers()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    .line 243
    iget-object v3, v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->rulerReaders:Landroidx/collection/MutableScatterMap;

    const/4 v8, 0x7

    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/4 v11, 0x0

    const/16 v12, 0x8

    if-nez v2, :cond_5

    if-eqz v3, :cond_12

    .line 247
    move-object v1, v3

    check-cast v1, Landroidx/collection/ScatterMap;

    .line 605
    iget-object v2, v1, Landroidx/collection/ScatterMap;->values:[Ljava/lang/Object;

    .line 608
    iget-object v1, v1, Landroidx/collection/ScatterMap;->metadata:[J

    .line 609
    array-length v13, v1

    add-int/lit8 v13, v13, -0x2

    if-ltz v13, :cond_4

    move v14, v11

    .line 612
    :goto_0
    aget-wide v4, v1, v14

    not-long v6, v4

    shl-long/2addr v6, v8

    and-long/2addr v6, v4

    and-long/2addr v6, v9

    cmp-long v6, v6, v9

    if-eqz v6, :cond_3

    sub-int v6, v14, v13

    not-int v6, v6

    ushr-int/lit8 v6, v6, 0x1f

    rsub-int/lit8 v6, v6, 0x8

    move v7, v11

    :goto_1
    if-ge v7, v6, :cond_2

    const-wide/16 v17, 0xff

    and-long v19, v4, v17

    const-wide/16 v15, 0x80

    cmp-long v19, v19, v15

    if-gez v19, :cond_1

    shl-int/lit8 v19, v14, 0x3

    add-int v19, v19, v7

    .line 621
    aget-object v19, v2, v19

    move-object/from16 v15, v19

    check-cast v15, Landroidx/collection/MutableScatterSet;

    .line 247
    invoke-direct {v0, v15}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->notifyRulerValueChange(Landroidx/collection/MutableScatterSet;)V

    :cond_1
    shr-long/2addr v4, v12

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    if-ne v6, v12, :cond_4

    :cond_3
    if-eq v14, v13, :cond_4

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 248
    :cond_4
    invoke-virtual {v3}, Landroidx/collection/MutableScatterMap;->clear()V

    goto/16 :goto_8

    .line 251
    :cond_5
    iget-object v2, v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->rulerValuesCache:Landroidx/collection/MutableObjectFloatMap;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v2, :cond_6

    new-instance v2, Landroidx/collection/MutableObjectFloatMap;

    invoke-direct {v2, v11, v5, v4}, Landroidx/collection/MutableObjectFloatMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 252
    iput-object v2, v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->rulerValuesCache:Landroidx/collection/MutableObjectFloatMap;

    .line 255
    :cond_6
    iget-object v6, v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->rulerValues:Landroidx/collection/MutableObjectFloatMap;

    if-nez v6, :cond_7

    new-instance v6, Landroidx/collection/MutableObjectFloatMap;

    invoke-direct {v6, v11, v5, v4}, Landroidx/collection/MutableObjectFloatMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v6, v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->rulerValues:Landroidx/collection/MutableObjectFloatMap;

    .line 256
    :cond_7
    move-object v4, v6

    check-cast v4, Landroidx/collection/ObjectFloatMap;

    invoke-virtual {v2, v4}, Landroidx/collection/MutableObjectFloatMap;->putAll(Landroidx/collection/ObjectFloatMap;)V

    .line 257
    invoke-virtual {v6}, Landroidx/collection/MutableObjectFloatMap;->clear()V

    .line 259
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/ui/node/LayoutNode;->getOwner$ui_release()Landroidx/compose/ui/node/Owner;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-interface {v5}, Landroidx/compose/ui/node/Owner;->getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 260
    move-object v7, v1

    check-cast v7, Landroidx/compose/ui/node/OwnerScope;

    .line 261
    sget-object v13, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->onCommitAffectingRuler:Lkotlin/jvm/functions/Function1;

    .line 259
    new-instance v14, Landroidx/compose/ui/node/LookaheadCapablePlaceable$captureRulers$3;

    invoke-direct {v14, v1, v0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable$captureRulers$3;-><init>(Landroidx/compose/ui/node/PlaceableResult;Landroidx/compose/ui/node/LookaheadCapablePlaceable;)V

    check-cast v14, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v5, v7, v13, v14}, Landroidx/compose/ui/node/OwnerSnapshotObserver;->observeReads$ui_release(Landroidx/compose/ui/node/OwnerScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    :cond_8
    if-eqz v3, :cond_d

    .line 268
    move-object v1, v2

    check-cast v1, Landroidx/collection/ObjectFloatMap;

    .line 631
    iget-object v5, v1, Landroidx/collection/ObjectFloatMap;->keys:[Ljava/lang/Object;

    .line 632
    iget-object v7, v1, Landroidx/collection/ObjectFloatMap;->values:[F

    .line 635
    iget-object v1, v1, Landroidx/collection/ObjectFloatMap;->metadata:[J

    .line 636
    array-length v13, v1

    add-int/lit8 v13, v13, -0x2

    if-ltz v13, :cond_d

    move v14, v11

    .line 639
    :goto_2
    aget-wide v11, v1, v14

    not-long v9, v11

    shl-long/2addr v9, v8

    and-long/2addr v9, v11

    const-wide v15, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v9, v15

    cmp-long v9, v9, v15

    if-eqz v9, :cond_c

    sub-int v9, v14, v13

    not-int v9, v9

    ushr-int/lit8 v9, v9, 0x1f

    const/16 v10, 0x8

    rsub-int/lit8 v9, v9, 0x8

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v9, :cond_b

    const-wide/16 v15, 0xff

    and-long v22, v11, v15

    const-wide/16 v15, 0x80

    cmp-long v20, v22, v15

    if-gez v20, :cond_a

    shl-int/lit8 v20, v14, 0x3

    add-int v20, v20, v10

    .line 648
    aget-object v21, v5, v20

    aget v20, v7, v20

    move-object/from16 v15, v21

    check-cast v15, Landroidx/compose/ui/layout/Ruler;

    const/high16 v8, 0x7fc00000    # Float.NaN

    .line 269
    invoke-virtual {v6, v15, v8}, Landroidx/collection/MutableObjectFloatMap;->getOrDefault(Ljava/lang/Object;F)F

    move-result v8

    cmpg-float v8, v8, v20

    if-nez v8, :cond_9

    goto :goto_4

    .line 273
    :cond_9
    invoke-virtual {v3, v15}, Landroidx/collection/MutableScatterMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/collection/MutableScatterSet;

    if-eqz v8, :cond_a

    .line 275
    invoke-direct {v0, v8}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->notifyRulerValueChange(Landroidx/collection/MutableScatterSet;)V

    :cond_a
    :goto_4
    const/16 v8, 0x8

    shr-long/2addr v11, v8

    add-int/lit8 v10, v10, 0x1

    const/4 v8, 0x7

    goto :goto_3

    :cond_b
    const/16 v8, 0x8

    if-ne v9, v8, :cond_d

    :cond_c
    if-eq v14, v13, :cond_d

    add-int/lit8 v14, v14, 0x1

    const/4 v8, 0x7

    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    goto :goto_2

    .line 657
    :cond_d
    iget-object v1, v4, Landroidx/collection/ObjectFloatMap;->keys:[Ljava/lang/Object;

    .line 660
    iget-object v3, v4, Landroidx/collection/ObjectFloatMap;->metadata:[J

    .line 661
    array-length v4, v3

    add-int/lit8 v4, v4, -0x2

    if-ltz v4, :cond_11

    const/4 v5, 0x0

    .line 664
    :goto_5
    aget-wide v6, v3, v5

    not-long v8, v6

    const/4 v10, 0x7

    shl-long/2addr v8, v10

    and-long/2addr v8, v6

    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v8, v11

    cmp-long v8, v8, v11

    if-eqz v8, :cond_10

    sub-int v8, v5, v4

    not-int v8, v8

    ushr-int/lit8 v8, v8, 0x1f

    const/16 v9, 0x8

    rsub-int/lit8 v8, v8, 0x8

    const/4 v9, 0x0

    :goto_6
    if-ge v9, v8, :cond_f

    const-wide/16 v13, 0xff

    and-long v15, v6, v13

    const-wide/16 v17, 0x80

    cmp-long v15, v15, v17

    if-gez v15, :cond_e

    shl-int/lit8 v15, v5, 0x3

    add-int/2addr v15, v9

    .line 673
    aget-object v15, v1, v15

    check-cast v15, Landroidx/compose/ui/layout/Ruler;

    .line 282
    invoke-virtual {v2, v15}, Landroidx/collection/MutableObjectFloatMap;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_e

    .line 283
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->getParent()Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    move-result-object v10

    if-eqz v10, :cond_e

    invoke-direct {v10, v15}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->invalidateChildrenOfDefiningRuler(Landroidx/compose/ui/layout/Ruler;)V

    :cond_e
    const/16 v10, 0x8

    shr-long/2addr v6, v10

    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x7

    goto :goto_6

    :cond_f
    const/16 v10, 0x8

    const-wide/16 v13, 0xff

    const-wide/16 v17, 0x80

    if-ne v8, v10, :cond_11

    goto :goto_7

    :cond_10
    const/16 v10, 0x8

    const-wide/16 v13, 0xff

    const-wide/16 v17, 0x80

    :goto_7
    if-eq v5, v4, :cond_11

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 286
    :cond_11
    invoke-virtual {v2}, Landroidx/collection/MutableObjectFloatMap;->clear()V

    :cond_12
    :goto_8
    return-void
.end method

.method private final findAncestorRulerDefiner(Landroidx/compose/ui/layout/Ruler;)Landroidx/compose/ui/node/LookaheadCapablePlaceable;
    .locals 3

    move-object v0, p0

    .line 180
    :goto_0
    iget-object v1, v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->rulerValues:Landroidx/collection/MutableObjectFloatMap;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroidx/collection/MutableObjectFloatMap;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    return-object v0

    .line 183
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->getParent()Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private final invalidateChildrenOfDefiningRuler(Landroidx/compose/ui/layout/Ruler;)V
    .locals 1

    .line 196
    invoke-direct {p0, p1}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->findAncestorRulerDefiner(Landroidx/compose/ui/layout/Ruler;)Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    move-result-object v0

    .line 197
    iget-object v0, v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->rulerReaders:Landroidx/collection/MutableScatterMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/collection/MutableScatterMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/collection/MutableScatterSet;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 199
    invoke-direct {p0, p1}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->notifyRulerValueChange(Landroidx/collection/MutableScatterSet;)V

    :cond_1
    return-void
.end method

.method private final isLayoutNodeAncestor(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/node/LayoutNode;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    .line 192
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->isLayoutNodeAncestor(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/node/LayoutNode;)Z

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static synthetic isLookingAhead$annotations()V
    .locals 0

    return-void
.end method

.method private final notifyRulerValueChange(Landroidx/collection/MutableScatterSet;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/MutableScatterSet<",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/compose/ui/node/LayoutNode;",
            ">;>;)V"
        }
    .end annotation

    .line 291
    check-cast p1, Landroidx/collection/ScatterSet;

    .line 683
    iget-object v0, p1, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 687
    iget-object p1, p1, Landroidx/collection/ScatterSet;->metadata:[J

    .line 688
    array-length v1, p1

    add-int/lit8 v1, v1, -0x2

    if-ltz v1, :cond_4

    const/4 v2, 0x0

    move v3, v2

    .line 691
    :goto_0
    aget-wide v4, p1, v3

    not-long v6, v4

    const/4 v8, 0x7

    shl-long/2addr v6, v8

    and-long/2addr v6, v4

    const-wide v8, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v6, v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_3

    sub-int v6, v3, v1

    not-int v6, v6

    ushr-int/lit8 v6, v6, 0x1f

    const/16 v7, 0x8

    rsub-int/lit8 v6, v6, 0x8

    move v8, v2

    :goto_1
    if-ge v8, v6, :cond_2

    const-wide/16 v9, 0xff

    and-long/2addr v9, v4

    const-wide/16 v11, 0x80

    cmp-long v9, v9, v11

    if-gez v9, :cond_1

    shl-int/lit8 v9, v3, 0x3

    add-int/2addr v9, v8

    .line 700
    aget-object v9, v0, v9

    check-cast v9, Ljava/lang/ref/WeakReference;

    .line 292
    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/node/LayoutNode;

    if-eqz v9, :cond_1

    .line 293
    invoke-virtual {p0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->isLookingAhead()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 294
    invoke-virtual {v9, v2}, Landroidx/compose/ui/node/LayoutNode;->requestLookaheadRelayout$ui_release(Z)V

    goto :goto_2

    .line 296
    :cond_0
    invoke-virtual {v9, v2}, Landroidx/compose/ui/node/LayoutNode;->requestRelayout$ui_release(Z)V

    :cond_1
    :goto_2
    shr-long/2addr v4, v7

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    if-ne v6, v7, :cond_4

    :cond_3
    if-eq v3, v1, :cond_4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public abstract calculateAlignmentLine(Landroidx/compose/ui/layout/AlignmentLine;)I
.end method

.method public final captureRulers$ui_release(Landroidx/compose/ui/layout/MeasureResult;)V
    .locals 13

    if-eqz p1, :cond_0

    .line 230
    new-instance v0, Landroidx/compose/ui/node/PlaceableResult;

    invoke-direct {v0, p1, p0}, Landroidx/compose/ui/node/PlaceableResult;-><init>(Landroidx/compose/ui/layout/MeasureResult;Landroidx/compose/ui/node/LookaheadCapablePlaceable;)V

    invoke-direct {p0, v0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->captureRulers(Landroidx/compose/ui/node/PlaceableResult;)V

    goto :goto_2

    .line 232
    :cond_0
    iget-object p1, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->rulerReaders:Landroidx/collection/MutableScatterMap;

    if-eqz p1, :cond_4

    check-cast p1, Landroidx/collection/ScatterMap;

    .line 580
    iget-object v0, p1, Landroidx/collection/ScatterMap;->values:[Ljava/lang/Object;

    .line 583
    iget-object p1, p1, Landroidx/collection/ScatterMap;->metadata:[J

    .line 584
    array-length v1, p1

    add-int/lit8 v1, v1, -0x2

    if-ltz v1, :cond_4

    const/4 v2, 0x0

    move v3, v2

    .line 587
    :goto_0
    aget-wide v4, p1, v3

    not-long v6, v4

    const/4 v8, 0x7

    shl-long/2addr v6, v8

    and-long/2addr v6, v4

    const-wide v8, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v6, v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_3

    sub-int v6, v3, v1

    not-int v6, v6

    ushr-int/lit8 v6, v6, 0x1f

    const/16 v7, 0x8

    rsub-int/lit8 v6, v6, 0x8

    move v8, v2

    :goto_1
    if-ge v8, v6, :cond_2

    const-wide/16 v9, 0xff

    and-long/2addr v9, v4

    const-wide/16 v11, 0x80

    cmp-long v9, v9, v11

    if-gez v9, :cond_1

    shl-int/lit8 v9, v3, 0x3

    add-int/2addr v9, v8

    .line 596
    aget-object v9, v0, v9

    check-cast v9, Landroidx/collection/MutableScatterSet;

    .line 232
    invoke-direct {p0, v9}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->notifyRulerValueChange(Landroidx/collection/MutableScatterSet;)V

    :cond_1
    shr-long/2addr v4, v7

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    if-ne v6, v7, :cond_4

    :cond_3
    if-eq v3, v1, :cond_4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 233
    :cond_4
    iget-object p1, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->rulerReaders:Landroidx/collection/MutableScatterMap;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroidx/collection/MutableScatterMap;->clear()V

    .line 234
    :cond_5
    iget-object p1, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->rulerValues:Landroidx/collection/MutableObjectFloatMap;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroidx/collection/MutableObjectFloatMap;->clear()V

    :cond_6
    :goto_2
    return-void
.end method

.method public final findRulerValue(Landroidx/compose/ui/layout/Ruler;F)F
    .locals 3

    .line 143
    iget-boolean v0, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->isPlacingForAlignment:Z

    if-eqz v0, :cond_0

    return p2

    :cond_0
    move-object v0, p0

    .line 148
    :goto_0
    iget-object v1, v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->rulerValues:Landroidx/collection/MutableObjectFloatMap;

    const/high16 v2, 0x7fc00000    # Float.NaN

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1, v2}, Landroidx/collection/MutableObjectFloatMap;->getOrDefault(Ljava/lang/Object;F)F

    move-result v2

    .line 149
    :cond_1
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_2

    .line 150
    invoke-virtual {p0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->addRulerReader(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/layout/Ruler;)V

    .line 151
    invoke-virtual {v0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->getCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->getCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v0

    invoke-virtual {p1, v2, p2, v0}, Landroidx/compose/ui/layout/Ruler;->calculateCoordinate$ui_release(FLandroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/layout/LayoutCoordinates;)F

    move-result p1

    return p1

    .line 153
    :cond_2
    invoke-virtual {v0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->getParent()Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    move-result-object v1

    if-nez v1, :cond_3

    .line 155
    invoke-virtual {p0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->addRulerReader(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/layout/Ruler;)V

    return p2

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public final get(Landroidx/compose/ui/layout/AlignmentLine;)I
    .locals 3

    .line 88
    invoke-virtual {p0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->getHasMeasureResult()Z

    move-result v0

    const/high16 v1, -0x80000000

    if-nez v0, :cond_0

    return v1

    .line 89
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->calculateAlignmentLine(Landroidx/compose/ui/layout/AlignmentLine;)I

    move-result v0

    if-ne v0, v1, :cond_1

    return v1

    .line 91
    :cond_1
    instance-of p1, p1, Landroidx/compose/ui/layout/VerticalAlignmentLine;

    if-eqz p1, :cond_2

    .line 92
    invoke-virtual {p0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->getApparentToRealOffset-nOcc-ac()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result p1

    goto :goto_0

    .line 94
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->getApparentToRealOffset-nOcc-ac()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result p1

    :goto_0
    add-int/2addr v0, p1

    return v0
.end method

.method public abstract getAlignmentLinesOwner()Landroidx/compose/ui/node/AlignmentLinesOwner;
.end method

.method public abstract getChild()Landroidx/compose/ui/node/LookaheadCapablePlaceable;
.end method

.method public abstract getCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;
.end method

.method public abstract getHasMeasureResult()Z
.end method

.method public abstract getLayoutNode()Landroidx/compose/ui/node/LayoutNode;
.end method

.method public abstract getMeasureResult$ui_release()Landroidx/compose/ui/layout/MeasureResult;
.end method

.method public abstract getParent()Landroidx/compose/ui/node/LookaheadCapablePlaceable;
.end method

.method public final getPlacementScope()Landroidx/compose/ui/layout/Placeable$PlacementScope;
    .locals 1

    .line 121
    iget-object v0, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->placementScope:Landroidx/compose/ui/layout/Placeable$PlacementScope;

    return-object v0
.end method

.method public abstract getPosition-nOcc-ac()J
.end method

.method public final getRulerScope()Landroidx/compose/ui/layout/RulerScope;
    .locals 1

    .line 65
    iget-object v0, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->_rulerScope:Landroidx/compose/ui/layout/RulerScope;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable$rulerScope$1;

    invoke-direct {v0, p0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable$rulerScope$1;-><init>(Landroidx/compose/ui/node/LookaheadCapablePlaceable;)V

    check-cast v0, Landroidx/compose/ui/layout/RulerScope;

    :cond_0
    return-object v0
.end method

.method protected final invalidateAlignmentLinesFromPositionChange(Landroidx/compose/ui/node/NodeCoordinator;)V
    .locals 2

    .line 124
    invoke-virtual {p1}, Landroidx/compose/ui/node/NodeCoordinator;->getWrapped$ui_release()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 125
    invoke-virtual {p1}, Landroidx/compose/ui/node/NodeCoordinator;->getAlignmentLinesOwner()Landroidx/compose/ui/node/AlignmentLinesOwner;

    move-result-object p1

    invoke-interface {p1}, Landroidx/compose/ui/node/AlignmentLinesOwner;->getAlignmentLines()Landroidx/compose/ui/node/AlignmentLines;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/ui/node/AlignmentLines;->onAlignmentsChanged()V

    goto :goto_1

    .line 127
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/ui/node/NodeCoordinator;->getAlignmentLinesOwner()Landroidx/compose/ui/node/AlignmentLinesOwner;

    move-result-object p1

    invoke-interface {p1}, Landroidx/compose/ui/node/AlignmentLinesOwner;->getParentAlignmentLinesOwner()Landroidx/compose/ui/node/AlignmentLinesOwner;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroidx/compose/ui/node/AlignmentLinesOwner;->getAlignmentLines()Landroidx/compose/ui/node/AlignmentLines;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroidx/compose/ui/node/AlignmentLines;->onAlignmentsChanged()V

    :cond_2
    :goto_1
    return-void
.end method

.method public isLookingAhead()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPlacedUnderMotionFrameOfReference()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->isPlacedUnderMotionFrameOfReference:Z

    return v0
.end method

.method public final isPlacingForAlignment$ui_release()Z
    .locals 1

    .line 116
    iget-boolean v0, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->isPlacingForAlignment:Z

    return v0
.end method

.method public final isShallowPlacing$ui_release()Z
    .locals 1

    .line 104
    iget-boolean v0, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->isShallowPlacing:Z

    return v0
.end method

.method public layout(IILjava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map<",
            "Landroidx/compose/ui/layout/AlignmentLine;",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/layout/RulerScope;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/ui/layout/MeasureResult;"
        }
    .end annotation

    const/high16 v0, -0x1000000

    and-int v1, p1, v0

    if-nez v1, :cond_0

    and-int/2addr v0, p2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 577
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Size("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") is out of range. Each dimension must be between 0 and 16777215."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 576
    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 212
    :cond_1
    new-instance v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable$layout$1;

    move-object v1, v0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p0

    invoke-direct/range {v1 .. v7}, Landroidx/compose/ui/node/LookaheadCapablePlaceable$layout$1;-><init>(IILjava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/node/LookaheadCapablePlaceable;)V

    check-cast v0, Landroidx/compose/ui/layout/MeasureResult;

    return-object v0
.end method

.method public final provideRelativeRulerValue(Landroidx/compose/ui/layout/Ruler;F)V
    .locals 4

    .line 308
    iget-object v0, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->rulerValues:Landroidx/collection/MutableObjectFloatMap;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/collection/MutableObjectFloatMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableObjectFloatMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->rulerValues:Landroidx/collection/MutableObjectFloatMap;

    .line 309
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v1

    sget-object v2, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 312
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float p2, v1, p2

    .line 309
    :goto_0
    invoke-virtual {v0, p1, p2}, Landroidx/collection/MutableObjectFloatMap;->set(Ljava/lang/Object;F)V

    return-void
.end method

.method public final provideRulerValue(Landroidx/compose/ui/layout/Ruler;F)V
    .locals 4

    .line 303
    iget-object v0, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->rulerValues:Landroidx/collection/MutableObjectFloatMap;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/collection/MutableObjectFloatMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableObjectFloatMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->rulerValues:Landroidx/collection/MutableObjectFloatMap;

    .line 304
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroidx/collection/MutableObjectFloatMap;->set(Ljava/lang/Object;F)V

    return-void
.end method

.method public abstract replace$ui_release()V
.end method

.method public setPlacedUnderMotionFrameOfReference(Z)V
    .locals 0

    .line 61
    iput-boolean p1, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->isPlacedUnderMotionFrameOfReference:Z

    return-void
.end method

.method public final setPlacingForAlignment$ui_release(Z)V
    .locals 0

    .line 116
    iput-boolean p1, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->isPlacingForAlignment:Z

    return-void
.end method

.method public final setShallowPlacing$ui_release(Z)V
    .locals 0

    .line 104
    iput-boolean p1, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->isShallowPlacing:Z

    return-void
.end method
