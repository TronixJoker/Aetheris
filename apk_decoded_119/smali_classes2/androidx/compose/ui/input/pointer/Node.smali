.class public final Landroidx/compose/ui/input/pointer/Node;
.super Landroidx/compose/ui/input/pointer/NodeParent;
.source "HitPathTracker.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHitPathTracker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HitPathTracker.kt\nandroidx/compose/ui/input/pointer/Node\n+ 2 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n+ 3 NodeKind.kt\nandroidx/compose/ui/node/Nodes\n+ 4 DelegatableNode.kt\nandroidx/compose/ui/node/DelegatableNodeKt\n+ 5 Modifier.kt\nandroidx/compose/ui/Modifier$Node\n+ 6 DelegatingNode.kt\nandroidx/compose/ui/node/DelegatingNode\n+ 7 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n+ 8 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 9 PointerIdArray.kt\nandroidx/compose/ui/input/pointer/util/PointerIdArray\n*L\n1#1,647:1\n587#1,5:659\n594#1:763\n587#1,5:764\n594#1:824\n460#2,11:648\n460#2,11:708\n460#2,11:813\n460#2,11:885\n84#3:664\n84#3:719\n84#3:769\n84#3:825\n84#3:896\n432#4,6:665\n442#4,2:672\n444#4,8:677\n452#4,9:688\n461#4,8:700\n432#4,6:720\n442#4,2:727\n444#4,8:732\n452#4,9:743\n461#4,8:755\n432#4,6:770\n442#4,2:777\n444#4,8:782\n452#4,9:793\n461#4,8:805\n432#4,6:826\n442#4,2:833\n444#4,8:838\n452#4,9:849\n461#4,8:861\n432#4,6:897\n442#4,2:904\n444#4,8:909\n452#4,9:920\n461#4,8:932\n249#5:671\n249#5:726\n249#5:776\n249#5:832\n249#5:903\n245#6,3:674\n248#6,3:697\n245#6,3:729\n248#6,3:752\n245#6,3:779\n248#6,3:802\n245#6,3:835\n248#6,3:858\n245#6,3:906\n248#6,3:929\n1208#7:685\n1187#7,2:686\n1208#7:740\n1187#7,2:741\n1208#7:790\n1187#7,2:791\n1208#7:846\n1187#7,2:847\n1208#7:917\n1187#7,2:918\n33#8,6:869\n116#8,2:876\n33#8,6:878\n118#8:884\n33#8,6:940\n178#9:875\n*S KotlinDebug\n*F\n+ 1 HitPathTracker.kt\nandroidx/compose/ui/input/pointer/Node\n*L\n361#1:659,5\n361#1:763\n400#1:764,5\n400#1:824\n344#1:648,11\n372#1:708,11\n410#1:813,11\n605#1:885,11\n366#1:664\n386#1:719\n404#1:769\n443#1:825\n606#1:896\n366#1:665,6\n366#1:672,2\n366#1:677,8\n366#1:688,9\n366#1:700,8\n386#1:720,6\n386#1:727,2\n386#1:732,8\n386#1:743,9\n386#1:755,8\n404#1:770,6\n404#1:777,2\n404#1:782,8\n404#1:793,9\n404#1:805,8\n443#1:826,6\n443#1:833,2\n443#1:838,8\n443#1:849,9\n443#1:861,8\n606#1:897,6\n606#1:904,2\n606#1:909,8\n606#1:920,9\n606#1:932,8\n366#1:671\n386#1:726\n404#1:776\n443#1:832\n606#1:903\n366#1:674,3\n366#1:697,3\n386#1:729,3\n386#1:752,3\n404#1:779,3\n404#1:802,3\n443#1:835,3\n443#1:858,3\n606#1:906,3\n606#1:929,3\n366#1:685\n366#1:686,2\n386#1:740\n386#1:741,2\n404#1:790\n404#1:791,2\n443#1:846\n443#1:847,2\n606#1:917\n606#1:918,2\n461#1:869,6\n515#1:876,2\n515#1:878,6\n515#1:884\n622#1:940,6\n502#1:875\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J.\u0010\u0016\u001a\u00020\u00082\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u00132\u0006\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u0008H\u0016J\u0010\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u0008\u0010\u001e\u001a\u00020\u001dH\u0002J\u0008\u0010\u001f\u001a\u00020\u001dH\u0016J\u0010\u0010 \u001a\u00020\u00082\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u0017\u0010!\u001a\u00020\u00082\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u001d0#H\u0082\u0008J.\u0010$\u001a\u00020\u00082\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u00132\u0006\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u0008H\u0016J\u001a\u0010%\u001a\u00020\u00082\u0008\u0010&\u001a\u0004\u0018\u00010\r2\u0006\u0010\'\u001a\u00020\rH\u0002J\u0006\u0010(\u001a\u00020\u001dJ\u001e\u0010)\u001a\u00020\u001d2\u0006\u0010*\u001a\u00020+2\u000c\u0010,\u001a\u0008\u0012\u0004\u0012\u00020\u00000-H\u0016J\u0008\u0010.\u001a\u00020/H\u0016R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00060"
    }
    d2 = {
        "Landroidx/compose/ui/input/pointer/Node;",
        "Landroidx/compose/ui/input/pointer/NodeParent;",
        "modifierNode",
        "Landroidx/compose/ui/Modifier$Node;",
        "(Landroidx/compose/ui/Modifier$Node;)V",
        "coordinates",
        "Landroidx/compose/ui/layout/LayoutCoordinates;",
        "hasExited",
        "",
        "isIn",
        "getModifierNode",
        "()Landroidx/compose/ui/Modifier$Node;",
        "pointerEvent",
        "Landroidx/compose/ui/input/pointer/PointerEvent;",
        "pointerIds",
        "Landroidx/compose/ui/input/pointer/util/PointerIdArray;",
        "getPointerIds",
        "()Landroidx/compose/ui/input/pointer/util/PointerIdArray;",
        "relevantChanges",
        "Landroidx/collection/LongSparseArray;",
        "Landroidx/compose/ui/input/pointer/PointerInputChange;",
        "wasIn",
        "buildCache",
        "changes",
        "parentCoordinates",
        "internalPointerEvent",
        "Landroidx/compose/ui/input/pointer/InternalPointerEvent;",
        "isInBounds",
        "cleanUpHits",
        "",
        "clearCache",
        "dispatchCancel",
        "dispatchFinalEventPass",
        "dispatchIfNeeded",
        "block",
        "Lkotlin/Function0;",
        "dispatchMainEventPass",
        "hasPositionChanged",
        "oldEvent",
        "newEvent",
        "markIsIn",
        "removeInvalidPointerIdsAndChanges",
        "pointerIdValue",
        "",
        "hitNodes",
        "Landroidx/collection/MutableObjectList;",
        "toString",
        "",
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
.field public static final $stable:I = 0x8


# instance fields
.field private coordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

.field private hasExited:Z

.field private isIn:Z

.field private final modifierNode:Landroidx/compose/ui/Modifier$Node;

.field private pointerEvent:Landroidx/compose/ui/input/pointer/PointerEvent;

.field private final pointerIds:Landroidx/compose/ui/input/pointer/util/PointerIdArray;

.field private final relevantChanges:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            ">;"
        }
    .end annotation
.end field

.field private wasIn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/Modifier$Node;)V
    .locals 1

    .line 311
    invoke-direct {p0}, Landroidx/compose/ui/input/pointer/NodeParent;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/input/pointer/Node;->modifierNode:Landroidx/compose/ui/Modifier$Node;

    .line 316
    new-instance p1, Landroidx/compose/ui/input/pointer/util/PointerIdArray;

    invoke-direct {p1}, Landroidx/compose/ui/input/pointer/util/PointerIdArray;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/input/pointer/Node;->pointerIds:Landroidx/compose/ui/input/pointer/util/PointerIdArray;

    .line 326
    new-instance p1, Landroidx/collection/LongSparseArray;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Landroidx/collection/LongSparseArray;-><init>(I)V

    iput-object p1, p0, Landroidx/compose/ui/input/pointer/Node;->relevantChanges:Landroidx/collection/LongSparseArray;

    const/4 p1, 0x1

    .line 330
    iput-boolean p1, p0, Landroidx/compose/ui/input/pointer/Node;->isIn:Z

    .line 331
    iput-boolean p1, p0, Landroidx/compose/ui/input/pointer/Node;->hasExited:Z

    return-void
.end method

.method private final clearCache()V
    .locals 1

    .line 574
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/Node;->relevantChanges:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    const/4 v0, 0x0

    .line 575
    iput-object v0, p0, Landroidx/compose/ui/input/pointer/Node;->coordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    return-void
.end method

.method private final dispatchIfNeeded(Lkotlin/jvm/functions/Function0;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)Z"
        }
    .end annotation

    .line 587
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/Node;->relevantChanges:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 589
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/Node;->modifierNode:Landroidx/compose/ui/Modifier$Node;

    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 591
    :cond_1
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method

.method private final hasPositionChanged(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEvent;)Z
    .locals 8

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 554
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p2}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 557
    :cond_0
    invoke-virtual {p2}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    .line 558
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 559
    invoke-virtual {p2}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 560
    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide v6

    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide v4

    invoke-static {v6, v7, v4, v5}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    move-result v4

    if-nez v4, :cond_1

    return v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_1
    return v0
.end method


# virtual methods
.method public buildCache(Landroidx/collection/LongSparseArray;Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/input/pointer/InternalPointerEvent;Z)Z
    .locals 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/LongSparseArray<",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            ">;",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            "Landroidx/compose/ui/input/pointer/InternalPointerEvent;",
            "Z)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 433
    invoke-super/range {p0 .. p4}, Landroidx/compose/ui/input/pointer/NodeParent;->buildCache(Landroidx/collection/LongSparseArray;Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/input/pointer/InternalPointerEvent;Z)Z

    move-result v4

    .line 441
    iget-object v5, v0, Landroidx/compose/ui/input/pointer/Node;->modifierNode:Landroidx/compose/ui/Modifier$Node;

    invoke-virtual {v5}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_0

    return v6

    .line 443
    :cond_0
    iget-object v5, v0, Landroidx/compose/ui/input/pointer/Node;->modifierNode:Landroidx/compose/ui/Modifier$Node;

    const/16 v7, 0x10

    .line 825
    invoke-static {v7}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v8

    const/4 v10, 0x0

    :goto_0
    const/4 v11, 0x0

    if-eqz v5, :cond_9

    .line 829
    instance-of v12, v5, Landroidx/compose/ui/node/PointerInputModifierNode;

    if-eqz v12, :cond_1

    .line 830
    check-cast v5, Landroidx/compose/ui/node/PointerInputModifierNode;

    .line 444
    invoke-static {v5}, Landroidx/compose/ui/node/PointerInputModifierNodeKt;->getLayoutCoordinates(Landroidx/compose/ui/node/PointerInputModifierNode;)Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v5

    iput-object v5, v0, Landroidx/compose/ui/input/pointer/Node;->coordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    goto :goto_3

    .line 832
    :cond_1
    invoke-virtual {v5}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v12

    and-int/2addr v12, v8

    if-eqz v12, :cond_8

    .line 831
    instance-of v12, v5, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v12, :cond_8

    .line 834
    move-object v12, v5

    check-cast v12, Landroidx/compose/ui/node/DelegatingNode;

    .line 835
    invoke-virtual {v12}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v12

    move v13, v11

    :goto_1
    if-eqz v12, :cond_7

    .line 832
    invoke-virtual {v12}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v14

    and-int/2addr v14, v8

    if-eqz v14, :cond_6

    add-int/lit8 v13, v13, 0x1

    if-ne v13, v6, :cond_2

    move-object v5, v12

    goto :goto_2

    :cond_2
    if-nez v10, :cond_3

    .line 848
    new-instance v10, Landroidx/compose/runtime/collection/MutableVector;

    new-array v14, v7, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v10, v14, v11}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_3
    if-eqz v5, :cond_5

    if-eqz v10, :cond_4

    .line 851
    invoke-virtual {v10, v5}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    :cond_4
    const/4 v5, 0x0

    :cond_5
    if-eqz v10, :cond_6

    .line 854
    invoke-virtual {v10, v12}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 858
    :cond_6
    :goto_2
    invoke-virtual {v12}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v12

    goto :goto_1

    :cond_7
    if-ne v13, v6, :cond_8

    goto :goto_0

    .line 866
    :cond_8
    :goto_3
    invoke-static {v10}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    goto :goto_0

    .line 448
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v5

    move v7, v11

    :goto_4
    if-ge v7, v5, :cond_e

    .line 449
    invoke-virtual {v1, v7}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v12

    .line 450
    invoke-virtual {v1, v7}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    move-object v14, v8

    check-cast v14, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 452
    iget-object v8, v0, Landroidx/compose/ui/input/pointer/Node;->pointerIds:Landroidx/compose/ui/input/pointer/util/PointerIdArray;

    invoke-virtual {v8, v12, v13}, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->contains(J)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 453
    invoke-virtual {v14}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPreviousPosition-F1C5BW0()J

    move-result-wide v9

    move/from16 v33, v7

    .line 454
    invoke-virtual {v14}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide v6

    .line 456
    invoke-static {v9, v10}, Landroidx/compose/ui/geometry/Offset;->isValid-impl(J)Z

    move-result v15

    if-eqz v15, :cond_c

    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Offset;->isValid-impl(J)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 459
    new-instance v15, Ljava/util/ArrayList;

    invoke-virtual {v14}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getHistorical()Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v15, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 461
    invoke-virtual {v14}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getHistorical()Ljava/util/List;

    move-result-object v8

    .line 870
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    move/from16 v34, v5

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v11, :cond_b

    .line 871
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .line 872
    check-cast v16, Landroidx/compose/ui/input/pointer/HistoricalChange;

    move/from16 v35, v4

    .line 462
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/input/pointer/HistoricalChange;->getPosition-F1C5BW0()J

    move-result-wide v3

    .line 466
    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Offset;->isValid-impl(J)Z

    move-result v17

    if-eqz v17, :cond_a

    move-object/from16 v17, v8

    .line 468
    new-instance v8, Landroidx/compose/ui/input/pointer/HistoricalChange;

    .line 469
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/input/pointer/HistoricalChange;->getUptimeMillis()J

    move-result-wide v19

    move/from16 v26, v11

    .line 470
    iget-object v11, v0, Landroidx/compose/ui/input/pointer/Node;->coordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v11, v2, v3, v4}, Landroidx/compose/ui/layout/LayoutCoordinates;->localPositionOf-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    move-result-wide v21

    .line 474
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/input/pointer/HistoricalChange;->getOriginalEventPosition-F1C5BW0$ui_release()J

    move-result-wide v23

    const/16 v25, 0x0

    move-object/from16 v18, v8

    .line 468
    invoke-direct/range {v18 .. v25}, Landroidx/compose/ui/input/pointer/HistoricalChange;-><init>(JJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 467
    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_a
    move-object/from16 v17, v8

    move/from16 v26, v11

    :goto_6
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v3, p3

    move-object/from16 v8, v17

    move/from16 v11, v26

    move/from16 v4, v35

    goto :goto_5

    :cond_b
    move/from16 v35, v4

    .line 480
    iget-object v3, v0, Landroidx/compose/ui/input/pointer/Node;->relevantChanges:Landroidx/collection/LongSparseArray;

    .line 481
    iget-object v4, v0, Landroidx/compose/ui/input/pointer/Node;->coordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v4, v2, v9, v10}, Landroidx/compose/ui/layout/LayoutCoordinates;->localPositionOf-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    move-result-wide v24

    .line 485
    iget-object v4, v0, Landroidx/compose/ui/input/pointer/Node;->coordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v4, v2, v6, v7}, Landroidx/compose/ui/layout/LayoutCoordinates;->localPositionOf-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    move-result-wide v19

    .line 489
    move-object/from16 v28, v15

    check-cast v28, Ljava/util/List;

    const/16 v31, 0x2db

    const/16 v32, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const-wide/16 v29, 0x0

    .line 480
    invoke-static/range {v14 .. v32}, Landroidx/compose/ui/input/pointer/PointerInputChange;->copy-OHpmEuE$default(Landroidx/compose/ui/input/pointer/PointerInputChange;JJJZJJZILjava/util/List;JILjava/lang/Object;)Landroidx/compose/ui/input/pointer/PointerInputChange;

    move-result-object v4

    invoke-virtual {v3, v12, v13, v4}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_7

    :cond_c
    move/from16 v35, v4

    move/from16 v34, v5

    goto :goto_7

    :cond_d
    move/from16 v35, v4

    move/from16 v34, v5

    move/from16 v33, v7

    :goto_7
    add-int/lit8 v7, v33, 0x1

    move-object/from16 v3, p3

    move/from16 v5, v34

    move/from16 v4, v35

    const/4 v6, 0x1

    const/4 v11, 0x0

    goto/16 :goto_4

    :cond_e
    move/from16 v35, v4

    .line 495
    iget-object v2, v0, Landroidx/compose/ui/input/pointer/Node;->relevantChanges:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2}, Landroidx/collection/LongSparseArray;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 496
    iget-object v1, v0, Landroidx/compose/ui/input/pointer/Node;->pointerIds:Landroidx/compose/ui/input/pointer/util/PointerIdArray;

    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->clear()V

    .line 497
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/Node;->getChildren()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    const/4 v2, 0x1

    return v2

    :cond_f
    const/4 v2, 0x1

    .line 502
    iget-object v3, v0, Landroidx/compose/ui/input/pointer/Node;->pointerIds:Landroidx/compose/ui/input/pointer/util/PointerIdArray;

    .line 875
    invoke-virtual {v3}, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->getSize()I

    move-result v3

    sub-int/2addr v3, v2

    :goto_8
    const/4 v2, -0x1

    if-ge v2, v3, :cond_11

    .line 503
    iget-object v2, v0, Landroidx/compose/ui/input/pointer/Node;->pointerIds:Landroidx/compose/ui/input/pointer/util/PointerIdArray;

    invoke-virtual {v2, v3}, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->get-_I2yYro(I)J

    move-result-wide v4

    .line 504
    invoke-virtual {v1, v4, v5}, Landroidx/collection/LongSparseArray;->containsKey(J)Z

    move-result v2

    if-nez v2, :cond_10

    .line 505
    iget-object v2, v0, Landroidx/compose/ui/input/pointer/Node;->pointerIds:Landroidx/compose/ui/input/pointer/util/PointerIdArray;

    invoke-virtual {v2, v3}, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->removeAt(I)Z

    :cond_10
    add-int/lit8 v3, v3, -0x1

    goto :goto_8

    .line 509
    :cond_11
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Landroidx/compose/ui/input/pointer/Node;->relevantChanges:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2}, Landroidx/collection/LongSparseArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 510
    iget-object v2, v0, Landroidx/compose/ui/input/pointer/Node;->relevantChanges:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2}, Landroidx/collection/LongSparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_12

    .line 511
    iget-object v4, v0, Landroidx/compose/ui/input/pointer/Node;->relevantChanges:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4, v3}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 513
    :cond_12
    new-instance v2, Landroidx/compose/ui/input/pointer/PointerEvent;

    check-cast v1, Ljava/util/List;

    move-object/from16 v3, p3

    invoke-direct {v2, v1, v3}, Landroidx/compose/ui/input/pointer/PointerEvent;-><init>(Ljava/util/List;Landroidx/compose/ui/input/pointer/InternalPointerEvent;)V

    .line 515
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v1

    .line 879
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_a
    if-ge v5, v4, :cond_14

    .line 880
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 877
    move-object v7, v6

    check-cast v7, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 516
    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Landroidx/compose/ui/input/pointer/InternalPointerEvent;->activeHoverEvent-0FcD4WY(J)Z

    move-result v7

    if-eqz v7, :cond_13

    move-object v9, v6

    goto :goto_b

    :cond_13
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_14
    const/4 v9, 0x0

    .line 515
    :goto_b
    check-cast v9, Landroidx/compose/ui/input/pointer/PointerInputChange;

    if-eqz v9, :cond_1c

    if-nez p4, :cond_15

    const/4 v1, 0x0

    .line 521
    iput-boolean v1, v0, Landroidx/compose/ui/input/pointer/Node;->isIn:Z

    goto :goto_c

    :cond_15
    const/4 v1, 0x0

    .line 522
    iget-boolean v3, v0, Landroidx/compose/ui/input/pointer/Node;->isIn:Z

    if-nez v3, :cond_17

    invoke-virtual {v9}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPressed()Z

    move-result v3

    if-nez v3, :cond_16

    invoke-virtual {v9}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPreviousPressed()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 524
    :cond_16
    iget-object v3, v0, Landroidx/compose/ui/input/pointer/Node;->coordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v3}, Landroidx/compose/ui/layout/LayoutCoordinates;->getSize-YbymL2g()J

    move-result-wide v3

    .line 526
    invoke-static {v9, v3, v4}, Landroidx/compose/ui/input/pointer/PointerEventKt;->isOutOfBounds-O0kMr_c(Landroidx/compose/ui/input/pointer/PointerInputChange;J)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    iput-boolean v3, v0, Landroidx/compose/ui/input/pointer/Node;->isIn:Z

    goto :goto_d

    :cond_17
    :goto_c
    const/4 v4, 0x1

    .line 528
    :goto_d
    iget-boolean v3, v0, Landroidx/compose/ui/input/pointer/Node;->isIn:Z

    iget-boolean v5, v0, Landroidx/compose/ui/input/pointer/Node;->wasIn:Z

    if-eq v3, v5, :cond_1a

    .line 530
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/PointerEvent;->getType-7fucELk()I

    move-result v3

    sget-object v5, Landroidx/compose/ui/input/pointer/PointerEventType;->Companion:Landroidx/compose/ui/input/pointer/PointerEventType$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerEventType$Companion;->getMove-7fucELk()I

    move-result v5

    invoke-static {v3, v5}, Landroidx/compose/ui/input/pointer/PointerEventType;->equals-impl0(II)Z

    move-result v3

    if-nez v3, :cond_18

    .line 531
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/PointerEvent;->getType-7fucELk()I

    move-result v3

    sget-object v5, Landroidx/compose/ui/input/pointer/PointerEventType;->Companion:Landroidx/compose/ui/input/pointer/PointerEventType$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerEventType$Companion;->getEnter-7fucELk()I

    move-result v5

    invoke-static {v3, v5}, Landroidx/compose/ui/input/pointer/PointerEventType;->equals-impl0(II)Z

    move-result v3

    if-nez v3, :cond_18

    .line 532
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/PointerEvent;->getType-7fucELk()I

    move-result v3

    sget-object v5, Landroidx/compose/ui/input/pointer/PointerEventType;->Companion:Landroidx/compose/ui/input/pointer/PointerEventType$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerEventType$Companion;->getExit-7fucELk()I

    move-result v5

    invoke-static {v3, v5}, Landroidx/compose/ui/input/pointer/PointerEventType;->equals-impl0(II)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 535
    :cond_18
    iget-boolean v3, v0, Landroidx/compose/ui/input/pointer/Node;->isIn:Z

    if-eqz v3, :cond_19

    .line 536
    sget-object v3, Landroidx/compose/ui/input/pointer/PointerEventType;->Companion:Landroidx/compose/ui/input/pointer/PointerEventType$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/input/pointer/PointerEventType$Companion;->getEnter-7fucELk()I

    move-result v3

    goto :goto_e

    .line 538
    :cond_19
    sget-object v3, Landroidx/compose/ui/input/pointer/PointerEventType;->Companion:Landroidx/compose/ui/input/pointer/PointerEventType$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/input/pointer/PointerEventType$Companion;->getExit-7fucELk()I

    move-result v3

    .line 535
    :goto_e
    invoke-virtual {v2, v3}, Landroidx/compose/ui/input/pointer/PointerEvent;->setType-EhbLWgg$ui_release(I)V

    goto :goto_f

    .line 540
    :cond_1a
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/PointerEvent;->getType-7fucELk()I

    move-result v3

    sget-object v5, Landroidx/compose/ui/input/pointer/PointerEventType;->Companion:Landroidx/compose/ui/input/pointer/PointerEventType$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerEventType$Companion;->getEnter-7fucELk()I

    move-result v5

    invoke-static {v3, v5}, Landroidx/compose/ui/input/pointer/PointerEventType;->equals-impl0(II)Z

    move-result v3

    if-eqz v3, :cond_1b

    iget-boolean v3, v0, Landroidx/compose/ui/input/pointer/Node;->wasIn:Z

    if-eqz v3, :cond_1b

    iget-boolean v3, v0, Landroidx/compose/ui/input/pointer/Node;->hasExited:Z

    if-nez v3, :cond_1b

    .line 541
    sget-object v3, Landroidx/compose/ui/input/pointer/PointerEventType;->Companion:Landroidx/compose/ui/input/pointer/PointerEventType$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/input/pointer/PointerEventType$Companion;->getMove-7fucELk()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/compose/ui/input/pointer/PointerEvent;->setType-EhbLWgg$ui_release(I)V

    goto :goto_f

    .line 542
    :cond_1b
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/PointerEvent;->getType-7fucELk()I

    move-result v3

    sget-object v5, Landroidx/compose/ui/input/pointer/PointerEventType;->Companion:Landroidx/compose/ui/input/pointer/PointerEventType$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerEventType$Companion;->getExit-7fucELk()I

    move-result v5

    invoke-static {v3, v5}, Landroidx/compose/ui/input/pointer/PointerEventType;->equals-impl0(II)Z

    move-result v3

    if-eqz v3, :cond_1d

    iget-boolean v3, v0, Landroidx/compose/ui/input/pointer/Node;->isIn:Z

    if-eqz v3, :cond_1d

    invoke-virtual {v9}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPressed()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 543
    sget-object v3, Landroidx/compose/ui/input/pointer/PointerEventType;->Companion:Landroidx/compose/ui/input/pointer/PointerEventType$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/input/pointer/PointerEventType$Companion;->getMove-7fucELk()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/compose/ui/input/pointer/PointerEvent;->setType-EhbLWgg$ui_release(I)V

    goto :goto_f

    :cond_1c
    const/4 v1, 0x0

    const/4 v4, 0x1

    :cond_1d
    :goto_f
    if-nez v35, :cond_1f

    .line 547
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/PointerEvent;->getType-7fucELk()I

    move-result v3

    sget-object v5, Landroidx/compose/ui/input/pointer/PointerEventType;->Companion:Landroidx/compose/ui/input/pointer/PointerEventType$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerEventType$Companion;->getMove-7fucELk()I

    move-result v5

    invoke-static {v3, v5}, Landroidx/compose/ui/input/pointer/PointerEventType;->equals-impl0(II)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 548
    iget-object v3, v0, Landroidx/compose/ui/input/pointer/Node;->pointerEvent:Landroidx/compose/ui/input/pointer/PointerEvent;

    invoke-direct {v0, v3, v2}, Landroidx/compose/ui/input/pointer/Node;->hasPositionChanged(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEvent;)Z

    move-result v3

    if-eqz v3, :cond_1e

    goto :goto_10

    :cond_1e
    move v6, v1

    goto :goto_11

    :cond_1f
    :goto_10
    move v6, v4

    .line 549
    :goto_11
    iput-object v2, v0, Landroidx/compose/ui/input/pointer/Node;->pointerEvent:Landroidx/compose/ui/input/pointer/PointerEvent;

    return v6
.end method

.method public cleanUpHits(Landroidx/compose/ui/input/pointer/InternalPointerEvent;)V
    .locals 9

    .line 616
    invoke-super {p0, p1}, Landroidx/compose/ui/input/pointer/NodeParent;->cleanUpHits(Landroidx/compose/ui/input/pointer/InternalPointerEvent;)V

    .line 618
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/Node;->pointerEvent:Landroidx/compose/ui/input/pointer/PointerEvent;

    if-nez v0, :cond_0

    return-void

    .line 620
    :cond_0
    iget-boolean v1, p0, Landroidx/compose/ui/input/pointer/Node;->isIn:Z

    iput-boolean v1, p0, Landroidx/compose/ui/input/pointer/Node;->wasIn:Z

    .line 622
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v1

    .line 941
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_4

    .line 942
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 943
    check-cast v5, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 626
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPressed()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    .line 627
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    move-result-wide v7

    invoke-virtual {p1, v7, v8}, Landroidx/compose/ui/input/pointer/InternalPointerEvent;->activeHoverEvent-0FcD4WY(J)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    .line 628
    iget-boolean v8, p0, Landroidx/compose/ui/input/pointer/Node;->isIn:Z

    xor-int/lit8 v8, v8, 0x1

    if-eqz v6, :cond_1

    if-nez v7, :cond_2

    :cond_1
    if-eqz v6, :cond_3

    if-eqz v8, :cond_3

    .line 634
    :cond_2
    iget-object v6, p0, Landroidx/compose/ui/input/pointer/Node;->pointerIds:Landroidx/compose/ui/input/pointer/util/PointerIdArray;

    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->remove-0FcD4WY(J)Z

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 638
    :cond_4
    iput-boolean v3, p0, Landroidx/compose/ui/input/pointer/Node;->isIn:Z

    .line 639
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerEvent;->getType-7fucELk()I

    move-result p1

    sget-object v0, Landroidx/compose/ui/input/pointer/PointerEventType;->Companion:Landroidx/compose/ui/input/pointer/PointerEventType$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerEventType$Companion;->getExit-7fucELk()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/ui/input/pointer/PointerEventType;->equals-impl0(II)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/compose/ui/input/pointer/Node;->hasExited:Z

    return-void
.end method

.method public dispatchCancel()V
    .locals 10

    .line 605
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/Node;->getChildren()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v0

    .line 886
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_1

    .line 889
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v0

    move v4, v2

    .line 891
    :cond_0
    aget-object v5, v0, v4

    check-cast v5, Landroidx/compose/ui/input/pointer/Node;

    .line 605
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/Node;->dispatchCancel()V

    add-int/2addr v4, v3

    if-lt v4, v1, :cond_0

    .line 606
    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/Node;->modifierNode:Landroidx/compose/ui/Modifier$Node;

    const/16 v1, 0x10

    .line 896
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v4

    const/4 v5, 0x0

    move-object v6, v5

    :goto_0
    if-eqz v0, :cond_a

    .line 900
    instance-of v7, v0, Landroidx/compose/ui/node/PointerInputModifierNode;

    if-eqz v7, :cond_2

    .line 901
    check-cast v0, Landroidx/compose/ui/node/PointerInputModifierNode;

    .line 607
    invoke-interface {v0}, Landroidx/compose/ui/node/PointerInputModifierNode;->onCancelPointerInput()V

    goto :goto_3

    .line 903
    :cond_2
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v7

    and-int/2addr v7, v4

    if-eqz v7, :cond_9

    .line 902
    instance-of v7, v0, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v7, :cond_9

    .line 905
    move-object v7, v0

    check-cast v7, Landroidx/compose/ui/node/DelegatingNode;

    .line 906
    invoke-virtual {v7}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    move v8, v2

    :goto_1
    if-eqz v7, :cond_8

    .line 903
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v9

    and-int/2addr v9, v4

    if-eqz v9, :cond_7

    add-int/lit8 v8, v8, 0x1

    if-ne v8, v3, :cond_3

    move-object v0, v7

    goto :goto_2

    :cond_3
    if-nez v6, :cond_4

    .line 919
    new-instance v6, Landroidx/compose/runtime/collection/MutableVector;

    new-array v9, v1, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v6, v9, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_4
    if-eqz v0, :cond_6

    if-eqz v6, :cond_5

    .line 922
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    :cond_5
    move-object v0, v5

    :cond_6
    if-eqz v6, :cond_7

    .line 925
    invoke-virtual {v6, v7}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 929
    :cond_7
    :goto_2
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    goto :goto_1

    :cond_8
    if-ne v8, v3, :cond_9

    goto :goto_0

    .line 937
    :cond_9
    :goto_3
    invoke-static {v6}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    goto :goto_0

    :cond_a
    return-void
.end method

.method public dispatchFinalEventPass(Landroidx/compose/ui/input/pointer/InternalPointerEvent;)Z
    .locals 13

    .line 764
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/Node;->relevantChanges:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 766
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/Node;->modifierNode:Landroidx/compose/ui/Modifier$Node;

    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_4

    .line 401
    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/Node;->pointerEvent:Landroidx/compose/ui/input/pointer/PointerEvent;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 402
    iget-object v2, p0, Landroidx/compose/ui/input/pointer/Node;->coordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2}, Landroidx/compose/ui/layout/LayoutCoordinates;->getSize-YbymL2g()J

    move-result-wide v2

    .line 404
    iget-object v4, p0, Landroidx/compose/ui/input/pointer/Node;->modifierNode:Landroidx/compose/ui/Modifier$Node;

    const/16 v5, 0x10

    .line 769
    invoke-static {v5}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v6

    const/4 v7, 0x0

    move-object v8, v7

    :goto_0
    const/4 v9, 0x1

    if-eqz v4, :cond_a

    .line 773
    instance-of v10, v4, Landroidx/compose/ui/node/PointerInputModifierNode;

    if-eqz v10, :cond_2

    .line 774
    check-cast v4, Landroidx/compose/ui/node/PointerInputModifierNode;

    .line 405
    sget-object v9, Landroidx/compose/ui/input/pointer/PointerEventPass;->Final:Landroidx/compose/ui/input/pointer/PointerEventPass;

    invoke-interface {v4, v0, v9, v2, v3}, Landroidx/compose/ui/node/PointerInputModifierNode;->onPointerEvent-H0pRuoY(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V

    goto :goto_3

    .line 776
    :cond_2
    invoke-virtual {v4}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v10

    and-int/2addr v10, v6

    if-eqz v10, :cond_9

    .line 775
    instance-of v10, v4, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v10, :cond_9

    .line 778
    move-object v10, v4

    check-cast v10, Landroidx/compose/ui/node/DelegatingNode;

    .line 779
    invoke-virtual {v10}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    move v11, v1

    :goto_1
    if-eqz v10, :cond_8

    .line 776
    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v12

    and-int/2addr v12, v6

    if-eqz v12, :cond_7

    add-int/lit8 v11, v11, 0x1

    if-ne v11, v9, :cond_3

    move-object v4, v10

    goto :goto_2

    :cond_3
    if-nez v8, :cond_4

    .line 792
    new-instance v8, Landroidx/compose/runtime/collection/MutableVector;

    new-array v12, v5, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v8, v12, v1}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_4
    if-eqz v4, :cond_6

    if-eqz v8, :cond_5

    .line 795
    invoke-virtual {v8, v4}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    :cond_5
    move-object v4, v7

    :cond_6
    if-eqz v8, :cond_7

    .line 798
    invoke-virtual {v8, v10}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 802
    :cond_7
    :goto_2
    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    goto :goto_1

    :cond_8
    if-ne v11, v9, :cond_9

    goto :goto_0

    .line 810
    :cond_9
    :goto_3
    invoke-static {v8}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    goto :goto_0

    .line 409
    :cond_a
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/Node;->modifierNode:Landroidx/compose/ui/Modifier$Node;

    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 410
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/Node;->getChildren()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v0

    .line 814
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v2

    if-lez v2, :cond_c

    .line 817
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v0

    .line 819
    :cond_b
    aget-object v3, v0, v1

    check-cast v3, Landroidx/compose/ui/input/pointer/Node;

    .line 410
    invoke-virtual {v3, p1}, Landroidx/compose/ui/input/pointer/Node;->dispatchFinalEventPass(Landroidx/compose/ui/input/pointer/InternalPointerEvent;)Z

    add-int/2addr v1, v9

    if-lt v1, v2, :cond_b

    :cond_c
    move v1, v9

    .line 413
    :goto_4
    invoke-virtual {p0, p1}, Landroidx/compose/ui/input/pointer/Node;->cleanUpHits(Landroidx/compose/ui/input/pointer/InternalPointerEvent;)V

    .line 414
    invoke-direct {p0}, Landroidx/compose/ui/input/pointer/Node;->clearCache()V

    return v1
.end method

.method public dispatchMainEventPass(Landroidx/collection/LongSparseArray;Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/input/pointer/InternalPointerEvent;Z)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/LongSparseArray<",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            ">;",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            "Landroidx/compose/ui/input/pointer/InternalPointerEvent;",
            "Z)Z"
        }
    .end annotation

    .line 659
    iget-object p1, p0, Landroidx/compose/ui/input/pointer/Node;->relevantChanges:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->isEmpty()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    goto/16 :goto_8

    .line 661
    :cond_0
    iget-object p1, p0, Landroidx/compose/ui/input/pointer/Node;->modifierNode:Landroidx/compose/ui/Modifier$Node;

    invoke-virtual {p1}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_8

    .line 362
    :cond_1
    iget-object p1, p0, Landroidx/compose/ui/input/pointer/Node;->pointerEvent:Landroidx/compose/ui/input/pointer/PointerEvent;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 363
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/Node;->coordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Landroidx/compose/ui/layout/LayoutCoordinates;->getSize-YbymL2g()J

    move-result-wide v0

    .line 366
    iget-object v2, p0, Landroidx/compose/ui/input/pointer/Node;->modifierNode:Landroidx/compose/ui/Modifier$Node;

    const/16 v3, 0x10

    .line 664
    invoke-static {v3}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v4

    const/4 v5, 0x0

    move-object v6, v5

    :goto_0
    const/4 v7, 0x1

    if-eqz v2, :cond_a

    .line 668
    instance-of v8, v2, Landroidx/compose/ui/node/PointerInputModifierNode;

    if-eqz v8, :cond_2

    .line 669
    check-cast v2, Landroidx/compose/ui/node/PointerInputModifierNode;

    .line 367
    sget-object v7, Landroidx/compose/ui/input/pointer/PointerEventPass;->Initial:Landroidx/compose/ui/input/pointer/PointerEventPass;

    invoke-interface {v2, p1, v7, v0, v1}, Landroidx/compose/ui/node/PointerInputModifierNode;->onPointerEvent-H0pRuoY(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V

    goto :goto_3

    .line 671
    :cond_2
    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v8

    and-int/2addr v8, v4

    if-eqz v8, :cond_9

    .line 670
    instance-of v8, v2, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v8, :cond_9

    .line 673
    move-object v8, v2

    check-cast v8, Landroidx/compose/ui/node/DelegatingNode;

    .line 674
    invoke-virtual {v8}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    move v9, p2

    :goto_1
    if-eqz v8, :cond_8

    .line 671
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v10

    and-int/2addr v10, v4

    if-eqz v10, :cond_7

    add-int/lit8 v9, v9, 0x1

    if-ne v9, v7, :cond_3

    move-object v2, v8

    goto :goto_2

    :cond_3
    if-nez v6, :cond_4

    .line 687
    new-instance v6, Landroidx/compose/runtime/collection/MutableVector;

    new-array v10, v3, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v6, v10, p2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_4
    if-eqz v2, :cond_6

    if-eqz v6, :cond_5

    .line 690
    invoke-virtual {v6, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    :cond_5
    move-object v2, v5

    :cond_6
    if-eqz v6, :cond_7

    .line 693
    invoke-virtual {v6, v8}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 697
    :cond_7
    :goto_2
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    goto :goto_1

    :cond_8
    if-ne v9, v7, :cond_9

    goto :goto_0

    .line 705
    :cond_9
    :goto_3
    invoke-static {v6}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    goto :goto_0

    .line 371
    :cond_a
    iget-object v2, p0, Landroidx/compose/ui/input/pointer/Node;->modifierNode:Landroidx/compose/ui/Modifier$Node;

    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 372
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/Node;->getChildren()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v2

    .line 709
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v4

    if-lez v4, :cond_c

    .line 712
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v2

    move v6, p2

    .line 714
    :cond_b
    aget-object v8, v2, v6

    check-cast v8, Landroidx/compose/ui/input/pointer/Node;

    .line 376
    iget-object v9, p0, Landroidx/compose/ui/input/pointer/Node;->relevantChanges:Landroidx/collection/LongSparseArray;

    .line 377
    iget-object v10, p0, Landroidx/compose/ui/input/pointer/Node;->coordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 373
    invoke-virtual {v8, v9, v10, p3, p4}, Landroidx/compose/ui/input/pointer/Node;->dispatchMainEventPass(Landroidx/collection/LongSparseArray;Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/input/pointer/InternalPointerEvent;Z)Z

    add-int/2addr v6, v7

    if-lt v6, v4, :cond_b

    .line 384
    :cond_c
    iget-object p3, p0, Landroidx/compose/ui/input/pointer/Node;->modifierNode:Landroidx/compose/ui/Modifier$Node;

    invoke-virtual {p3}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result p3

    if-eqz p3, :cond_15

    .line 386
    iget-object p3, p0, Landroidx/compose/ui/input/pointer/Node;->modifierNode:Landroidx/compose/ui/Modifier$Node;

    .line 719
    invoke-static {v3}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result p4

    move-object v2, v5

    :goto_4
    if-eqz p3, :cond_15

    .line 723
    instance-of v4, p3, Landroidx/compose/ui/node/PointerInputModifierNode;

    if-eqz v4, :cond_d

    .line 724
    check-cast p3, Landroidx/compose/ui/node/PointerInputModifierNode;

    .line 387
    sget-object v4, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    invoke-interface {p3, p1, v4, v0, v1}, Landroidx/compose/ui/node/PointerInputModifierNode;->onPointerEvent-H0pRuoY(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V

    goto :goto_7

    .line 726
    :cond_d
    invoke-virtual {p3}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v4

    and-int/2addr v4, p4

    if-eqz v4, :cond_14

    .line 725
    instance-of v4, p3, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v4, :cond_14

    .line 728
    move-object v4, p3

    check-cast v4, Landroidx/compose/ui/node/DelegatingNode;

    .line 729
    invoke-virtual {v4}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    move v6, p2

    :goto_5
    if-eqz v4, :cond_13

    .line 726
    invoke-virtual {v4}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v8

    and-int/2addr v8, p4

    if-eqz v8, :cond_12

    add-int/lit8 v6, v6, 0x1

    if-ne v6, v7, :cond_e

    move-object p3, v4

    goto :goto_6

    :cond_e
    if-nez v2, :cond_f

    .line 742
    new-instance v2, Landroidx/compose/runtime/collection/MutableVector;

    new-array v8, v3, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v2, v8, p2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_f
    if-eqz p3, :cond_11

    if-eqz v2, :cond_10

    .line 745
    invoke-virtual {v2, p3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    :cond_10
    move-object p3, v5

    :cond_11
    if-eqz v2, :cond_12

    .line 748
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 752
    :cond_12
    :goto_6
    invoke-virtual {v4}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    goto :goto_5

    :cond_13
    if-ne v6, v7, :cond_14

    goto :goto_4

    .line 760
    :cond_14
    :goto_7
    invoke-static {v2}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object p3

    goto :goto_4

    :cond_15
    move p2, v7

    :goto_8
    return p2
.end method

.method public final getModifierNode()Landroidx/compose/ui/Modifier$Node;
    .locals 1

    .line 311
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/Node;->modifierNode:Landroidx/compose/ui/Modifier$Node;

    return-object v0
.end method

.method public final getPointerIds()Landroidx/compose/ui/input/pointer/util/PointerIdArray;
    .locals 1

    .line 316
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/Node;->pointerIds:Landroidx/compose/ui/input/pointer/util/PointerIdArray;

    return-object v0
.end method

.method public final markIsIn()V
    .locals 1

    const/4 v0, 0x1

    .line 612
    iput-boolean v0, p0, Landroidx/compose/ui/input/pointer/Node;->isIn:Z

    return-void
.end method

.method public removeInvalidPointerIdsAndChanges(JLandroidx/collection/MutableObjectList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroidx/collection/MutableObjectList<",
            "Landroidx/compose/ui/input/pointer/Node;",
            ">;)V"
        }
    .end annotation

    .line 337
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/Node;->pointerIds:Landroidx/compose/ui/input/pointer/util/PointerIdArray;

    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->contains(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    invoke-virtual {p3, p0}, Landroidx/collection/MutableObjectList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 339
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/Node;->pointerIds:Landroidx/compose/ui/input/pointer/util/PointerIdArray;

    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->remove(J)Z

    .line 340
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/Node;->relevantChanges:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->remove(J)V

    .line 344
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/Node;->getChildren()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v0

    .line 649
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v1

    if-lez v1, :cond_2

    .line 652
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    .line 654
    :cond_1
    aget-object v3, v0, v2

    check-cast v3, Landroidx/compose/ui/input/pointer/Node;

    .line 345
    invoke-virtual {v3, p1, p2, p3}, Landroidx/compose/ui/input/pointer/Node;->removeInvalidPointerIdsAndChanges(JLandroidx/collection/MutableObjectList;)V

    add-int/lit8 v2, v2, 0x1

    if-lt v2, v1, :cond_1

    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 643
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Node(pointerInputFilter="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/compose/ui/input/pointer/Node;->modifierNode:Landroidx/compose/ui/Modifier$Node;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", children="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/Node;->getChildren()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pointerIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 644
    iget-object v1, p0, Landroidx/compose/ui/input/pointer/Node;->pointerIds:Landroidx/compose/ui/input/pointer/util/PointerIdArray;

    .line 643
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
