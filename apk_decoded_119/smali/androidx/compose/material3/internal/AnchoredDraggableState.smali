.class public final Landroidx/compose/material3/internal/AnchoredDraggableState;
.super Ljava/lang/Object;
.source "AnchoredDraggable.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material3/internal/AnchoredDraggableState$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAnchoredDraggable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnchoredDraggable.kt\nandroidx/compose/material3/internal/AnchoredDraggableState\n+ 2 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 3 SnapshotFloatState.kt\nandroidx/compose/runtime/PrimitiveSnapshotStateKt__SnapshotFloatStateKt\n*L\n1#1,868:1\n81#2:869\n107#2,2:870\n81#2:872\n81#2:873\n81#2:877\n81#2:881\n107#2,2:882\n81#2:884\n107#2,2:885\n76#3:874\n109#3,2:875\n76#3:878\n109#3,2:879\n*S KotlinDebug\n*F\n+ 1 AnchoredDraggable.kt\nandroidx/compose/material3/internal/AnchoredDraggableState\n*L\n287#1:869\n287#1:870,2\n295#1:872\n310#1:873\n355#1:877\n374#1:881\n374#1:882,2\n376#1:884\n376#1:885,2\n328#1:874\n328#1:875,2\n371#1:878\n371#1:879,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0019\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0015\u0008\u0001\u0018\u0000 i*\u0004\u0008\u0000\u0010\u00012\u00020\u0002:\u0001iB\u0081\u0001\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00028\u0000\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005\u0012!\u0010\u0006\u001a\u001d\u0012\u0013\u0012\u00110\u0008\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u000b\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00080\r\u0012\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u000f\u0012#\u0008\u0002\u0010\u0010\u001a\u001d\u0012\u0013\u0012\u00118\u0000\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u0011\u0012\u0004\u0012\u00020\u00120\u0007\u00a2\u0006\u0002\u0010\u0013Bq\u0012\u0006\u0010\u0003\u001a\u00028\u0000\u0012!\u0010\u0006\u001a\u001d\u0012\u0013\u0012\u00110\u0008\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u000b\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00080\r\u0012\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u000f\u0012#\u0008\u0002\u0010\u0010\u001a\u001d\u0012\u0013\u0012\u00118\u0000\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u0011\u0012\u0004\u0012\u00020\u00120\u0007\u00a2\u0006\u0002\u0010\u0014Jy\u0010L\u001a\u00020M2\u0006\u0010G\u001a\u00028\u00002\u0008\u0008\u0002\u0010N\u001a\u00020O2W\u0010P\u001aS\u0008\u0001\u0012\u0004\u0012\u00020\u0016\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00028\u00000\u0005\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u0004\u0012\u0013\u0012\u00118\u0000\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(G\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020M0R\u0012\u0006\u0012\u0004\u0018\u00010\u00020Q\u00a2\u0006\u0002\u0008SH\u0086@\u00a2\u0006\u0002\u0010TJ\\\u0010L\u001a\u00020M2\u0008\u0008\u0002\u0010N\u001a\u00020O2B\u0010P\u001a>\u0008\u0001\u0012\u0004\u0012\u00020\u0016\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00028\u00000\u0005\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u0004\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020M0R\u0012\u0006\u0012\u0004\u0018\u00010\u00020U\u00a2\u0006\u0002\u0008SH\u0086@\u00a2\u0006\u0002\u0010VJ%\u0010W\u001a\u00028\u00002\u0006\u0010?\u001a\u00020\u00082\u0006\u0010\'\u001a\u00028\u00002\u0006\u0010X\u001a\u00020\u0008H\u0002\u00a2\u0006\u0002\u0010YJ\u001d\u0010Z\u001a\u00028\u00002\u0006\u0010?\u001a\u00020\u00082\u0006\u0010\'\u001a\u00028\u0000H\u0002\u00a2\u0006\u0002\u0010[J\u000e\u0010\\\u001a\u00020\u00082\u0006\u0010]\u001a\u00020\u0008J\u0015\u0010^\u001a\u00020\u00082\u0006\u0010]\u001a\u00020\u0008H\u0000\u00a2\u0006\u0002\u0008_J\u0006\u0010`\u001a\u00020\u0008J\u0016\u0010a\u001a\u00020M2\u0006\u0010X\u001a\u00020\u0008H\u0086@\u00a2\u0006\u0002\u0010bJ\u0015\u0010c\u001a\u00020\u00122\u0006\u0010G\u001a\u00028\u0000H\u0002\u00a2\u0006\u0002\u0010dJ#\u0010e\u001a\u00020M2\u000c\u0010f\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00052\u0008\u0008\u0002\u0010g\u001a\u00028\u0000\u00a2\u0006\u0002\u0010hR\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R7\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00052\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00058F@BX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u0017\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001fR\u001b\u0010 \u001a\u00028\u00008@X\u0080\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008#\u0010$\u001a\u0004\u0008!\u0010\"R/\u0010\u0010\u001a\u001d\u0012\u0013\u0012\u00118\u0000\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u0011\u0012\u0004\u0012\u00020\u00120\u0007X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010&R+\u0010\'\u001a\u00028\u00002\u0006\u0010\u0017\u001a\u00028\u00008F@BX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008+\u0010\u001d\u001a\u0004\u0008(\u0010\"\"\u0004\u0008)\u0010*R\u000e\u0010,\u001a\u00020-X\u0082\u0004\u00a2\u0006\u0002\n\u0000R/\u0010.\u001a\u0004\u0018\u00018\u00002\u0008\u0010\u0017\u001a\u0004\u0018\u00018\u00008B@BX\u0082\u008e\u0002\u00a2\u0006\u0012\n\u0004\u00081\u0010\u001d\u001a\u0004\u0008/\u0010\"\"\u0004\u00080\u0010*R\u0014\u00102\u001a\u000203X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00084\u00105R\u0011\u00106\u001a\u00020\u00128F\u00a2\u0006\u0006\u001a\u0004\u00086\u00107R+\u00108\u001a\u00020\u00082\u0006\u0010\u0017\u001a\u00020\u00088F@BX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008=\u0010>\u001a\u0004\u00089\u0010:\"\u0004\u0008;\u0010<R+\u0010?\u001a\u00020\u00082\u0006\u0010\u0017\u001a\u00020\u00088F@BX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008B\u0010>\u001a\u0004\u0008@\u0010:\"\u0004\u0008A\u0010<R/\u0010\u0006\u001a\u001d\u0012\u0013\u0012\u00110\u0008\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u000b\u0012\u0004\u0012\u00020\u00080\u0007X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008C\u0010&R\u001b\u0010D\u001a\u00020\u00088GX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008F\u0010$\u001a\u0004\u0008E\u0010:R\u001b\u0010G\u001a\u00028\u00008FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008I\u0010$\u001a\u0004\u0008H\u0010\"R\u001a\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00080\rX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008J\u0010K\u00a8\u0006j"
    }
    d2 = {
        "Landroidx/compose/material3/internal/AnchoredDraggableState;",
        "T",
        "",
        "initialValue",
        "anchors",
        "Landroidx/compose/material3/internal/DraggableAnchors;",
        "positionalThreshold",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "totalDistance",
        "velocityThreshold",
        "Lkotlin/Function0;",
        "animationSpec",
        "Landroidx/compose/animation/core/AnimationSpec;",
        "confirmValueChange",
        "newValue",
        "",
        "(Ljava/lang/Object;Landroidx/compose/material3/internal/DraggableAnchors;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;)V",
        "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;)V",
        "anchoredDragScope",
        "Landroidx/compose/material3/internal/AnchoredDragScope;",
        "<set-?>",
        "getAnchors",
        "()Landroidx/compose/material3/internal/DraggableAnchors;",
        "setAnchors",
        "(Landroidx/compose/material3/internal/DraggableAnchors;)V",
        "anchors$delegate",
        "Landroidx/compose/runtime/MutableState;",
        "getAnimationSpec",
        "()Landroidx/compose/animation/core/AnimationSpec;",
        "closestValue",
        "getClosestValue$material3_release",
        "()Ljava/lang/Object;",
        "closestValue$delegate",
        "Landroidx/compose/runtime/State;",
        "getConfirmValueChange$material3_release",
        "()Lkotlin/jvm/functions/Function1;",
        "currentValue",
        "getCurrentValue",
        "setCurrentValue",
        "(Ljava/lang/Object;)V",
        "currentValue$delegate",
        "dragMutex",
        "Landroidx/compose/material3/internal/InternalMutatorMutex;",
        "dragTarget",
        "getDragTarget",
        "setDragTarget",
        "dragTarget$delegate",
        "draggableState",
        "Landroidx/compose/foundation/gestures/DraggableState;",
        "getDraggableState$material3_release",
        "()Landroidx/compose/foundation/gestures/DraggableState;",
        "isAnimationRunning",
        "()Z",
        "lastVelocity",
        "getLastVelocity",
        "()F",
        "setLastVelocity",
        "(F)V",
        "lastVelocity$delegate",
        "Landroidx/compose/runtime/MutableFloatState;",
        "offset",
        "getOffset",
        "setOffset",
        "offset$delegate",
        "getPositionalThreshold$material3_release",
        "progress",
        "getProgress",
        "progress$delegate",
        "targetValue",
        "getTargetValue",
        "targetValue$delegate",
        "getVelocityThreshold$material3_release",
        "()Lkotlin/jvm/functions/Function0;",
        "anchoredDrag",
        "",
        "dragPriority",
        "Landroidx/compose/foundation/MutatePriority;",
        "block",
        "Lkotlin/Function4;",
        "Lkotlin/coroutines/Continuation;",
        "Lkotlin/ExtensionFunctionType;",
        "(Ljava/lang/Object;Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function4;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lkotlin/Function3;",
        "(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "computeTarget",
        "velocity",
        "(FLjava/lang/Object;F)Ljava/lang/Object;",
        "computeTargetWithoutThresholds",
        "(FLjava/lang/Object;)Ljava/lang/Object;",
        "dispatchRawDelta",
        "delta",
        "newOffsetForDelta",
        "newOffsetForDelta$material3_release",
        "requireOffset",
        "settle",
        "(FLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "trySnapTo",
        "(Ljava/lang/Object;)Z",
        "updateAnchors",
        "newAnchors",
        "newTarget",
        "(Landroidx/compose/material3/internal/DraggableAnchors;Ljava/lang/Object;)V",
        "Companion",
        "material3_release"
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

.field public static final Companion:Landroidx/compose/material3/internal/AnchoredDraggableState$Companion;


# instance fields
.field private final anchoredDragScope:Landroidx/compose/material3/internal/AnchoredDragScope;

.field private final anchors$delegate:Landroidx/compose/runtime/MutableState;

.field private final animationSpec:Landroidx/compose/animation/core/AnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final closestValue$delegate:Landroidx/compose/runtime/State;

.field private final confirmValueChange:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final currentValue$delegate:Landroidx/compose/runtime/MutableState;

.field private final dragMutex:Landroidx/compose/material3/internal/InternalMutatorMutex;

.field private final dragTarget$delegate:Landroidx/compose/runtime/MutableState;

.field private final draggableState:Landroidx/compose/foundation/gestures/DraggableState;

.field private final lastVelocity$delegate:Landroidx/compose/runtime/MutableFloatState;

.field private final offset$delegate:Landroidx/compose/runtime/MutableFloatState;

.field private final positionalThreshold:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final progress$delegate:Landroidx/compose/runtime/State;

.field private final targetValue$delegate:Landroidx/compose/runtime/State;

.field private final velocityThreshold:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/material3/internal/AnchoredDraggableState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/material3/internal/AnchoredDraggableState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/material3/internal/AnchoredDraggableState;->Companion:Landroidx/compose/material3/internal/AnchoredDraggableState$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroidx/compose/material3/internal/DraggableAnchors;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroidx/compose/material3/internal/DraggableAnchors<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 249
    invoke-direct/range {v0 .. v5}, Landroidx/compose/material3/internal/AnchoredDraggableState;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;)V

    .line 256
    invoke-direct {p0, p2}, Landroidx/compose/material3/internal/AnchoredDraggableState;->setAnchors(Landroidx/compose/material3/internal/DraggableAnchors;)V

    .line 257
    invoke-direct {p0, p1}, Landroidx/compose/material3/internal/AnchoredDraggableState;->trySnapTo(Ljava/lang/Object;)Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Landroidx/compose/material3/internal/DraggableAnchors;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_0

    .line 248
    sget-object p6, Landroidx/compose/material3/internal/AnchoredDraggableState$2;->INSTANCE:Landroidx/compose/material3/internal/AnchoredDraggableState$2;

    check-cast p6, Lkotlin/jvm/functions/Function1;

    :cond_0
    move-object v6, p6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 242
    invoke-direct/range {v0 .. v6}, Landroidx/compose/material3/internal/AnchoredDraggableState;-><init>(Ljava/lang/Object;Landroidx/compose/material3/internal/DraggableAnchors;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iput-object p2, p0, Landroidx/compose/material3/internal/AnchoredDraggableState;->positionalThreshold:Lkotlin/jvm/functions/Function1;

    .line 220
    iput-object p3, p0, Landroidx/compose/material3/internal/AnchoredDraggableState;->velocityThreshold:Lkotlin/jvm/functions/Function0;

    .line 221
    iput-object p4, p0, Landroidx/compose/material3/internal/AnchoredDraggableState;->animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    .line 222
    iput-object p5, p0, Landroidx/compose/material3/internal/AnchoredDraggableState;->confirmValueChange:Lkotlin/jvm/functions/Function1;

    .line 260
    new-instance p2, Landroidx/compose/material3/internal/InternalMutatorMutex;

    invoke-direct {p2}, Landroidx/compose/material3/internal/InternalMutatorMutex;-><init>()V

    iput-object p2, p0, Landroidx/compose/material3/internal/AnchoredDraggableState;->dragMutex:Landroidx/compose/material3/internal/InternalMutatorMutex;

    .line 263
    new-instance p2, Landroidx/compose/material3/internal/AnchoredDraggableState$draggableState$1;

    invoke-direct {p2, p0}, Landroidx/compose/material3/internal/AnchoredDraggableState$draggableState$1;-><init>(Landroidx/compose/material3/internal/AnchoredDraggableState;)V

    check-cast p2, Landroidx/compose/foundation/gestures/DraggableState;

    iput-object p2, p0, Landroidx/compose/material3/internal/AnchoredDraggableState;->draggableState:Landroidx/compose/foundation/gestures/DraggableState;

    const/4 p2, 0x0

    const/4 p3, 0x2

    .line 287
    invoke-static {p1, p2, p3, p2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material3/internal/AnchoredDraggableState;->currentValue$delegate:Landroidx/compose/runtime/MutableState;

    .line 295
    new-instance p1, Landroidx/compose/material3/internal/AnchoredDraggableState$targetValue$2;

    invoke-direct {p1, p0}, Landroidx/compose/material3/internal/AnchoredDraggableState$targetValue$2;-><init>(Landroidx/compose/material3/internal/AnchoredDraggableState;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material3/internal/AnchoredDraggableState;->targetValue$delegate:Landroidx/compose/runtime/State;

    .line 310
    new-instance p1, Landroidx/compose/material3/internal/AnchoredDraggableState$closestValue$2;

    invoke-direct {p1, p0}, Landroidx/compose/material3/internal/AnchoredDraggableState$closestValue$2;-><init>(Landroidx/compose/material3/internal/AnchoredDraggableState;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material3/internal/AnchoredDraggableState;->closestValue$delegate:Landroidx/compose/runtime/State;

    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 328
    invoke-static {p1}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->mutableFloatStateOf(F)Landroidx/compose/runtime/MutableFloatState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material3/internal/AnchoredDraggableState;->offset$delegate:Landroidx/compose/runtime/MutableFloatState;

    .line 355
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->structuralEqualityPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object p1

    new-instance p4, Landroidx/compose/material3/internal/AnchoredDraggableState$progress$2;

    invoke-direct {p4, p0}, Landroidx/compose/material3/internal/AnchoredDraggableState$progress$2;-><init>(Landroidx/compose/material3/internal/AnchoredDraggableState;)V

    check-cast p4, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p4}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material3/internal/AnchoredDraggableState;->progress$delegate:Landroidx/compose/runtime/State;

    const/4 p1, 0x0

    .line 371
    invoke-static {p1}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->mutableFloatStateOf(F)Landroidx/compose/runtime/MutableFloatState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material3/internal/AnchoredDraggableState;->lastVelocity$delegate:Landroidx/compose/runtime/MutableFloatState;

    .line 374
    invoke-static {p2, p2, p3, p2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material3/internal/AnchoredDraggableState;->dragTarget$delegate:Landroidx/compose/runtime/MutableState;

    .line 376
    invoke-static {}, Landroidx/compose/material3/internal/AnchoredDraggableKt;->access$emptyDraggableAnchors()Landroidx/compose/material3/internal/MapDraggableAnchors;

    move-result-object p1

    invoke-static {p1, p2, p3, p2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material3/internal/AnchoredDraggableState;->anchors$delegate:Landroidx/compose/runtime/MutableState;

    .line 490
    new-instance p1, Landroidx/compose/material3/internal/AnchoredDraggableState$anchoredDragScope$1;

    invoke-direct {p1, p0}, Landroidx/compose/material3/internal/AnchoredDraggableState$anchoredDragScope$1;-><init>(Landroidx/compose/material3/internal/AnchoredDraggableState;)V

    check-cast p1, Landroidx/compose/material3/internal/AnchoredDragScope;

    iput-object p1, p0, Landroidx/compose/material3/internal/AnchoredDraggableState;->anchoredDragScope:Landroidx/compose/material3/internal/AnchoredDragScope;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    .line 222
    sget-object p5, Landroidx/compose/material3/internal/AnchoredDraggableState$1;->INSTANCE:Landroidx/compose/material3/internal/AnchoredDraggableState$1;

    check-cast p5, Lkotlin/jvm/functions/Function1;

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 217
    invoke-direct/range {v0 .. v5}, Landroidx/compose/material3/internal/AnchoredDraggableState;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic access$computeTarget(Landroidx/compose/material3/internal/AnchoredDraggableState;FLjava/lang/Object;F)Ljava/lang/Object;
    .locals 0

    .line 216
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/material3/internal/AnchoredDraggableState;->computeTarget(FLjava/lang/Object;F)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$computeTargetWithoutThresholds(Landroidx/compose/material3/internal/AnchoredDraggableState;FLjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 216
    invoke-direct {p0, p1, p2}, Landroidx/compose/material3/internal/AnchoredDraggableState;->computeTargetWithoutThresholds(FLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getAnchoredDragScope$p(Landroidx/compose/material3/internal/AnchoredDraggableState;)Landroidx/compose/material3/internal/AnchoredDragScope;
    .locals 0

    .line 216
    iget-object p0, p0, Landroidx/compose/material3/internal/AnchoredDraggableState;->anchoredDragScope:Landroidx/compose/material3/internal/AnchoredDragScope;

    return-object p0
.end method

.method public static final synthetic access$getDragTarget(Landroidx/compose/material3/internal/AnchoredDraggableState;)Ljava/lang/Object;
    .locals 0

    .line 216
    invoke-direct {p0}, Landroidx/compose/material3/internal/AnchoredDraggableState;->getDragTarget()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setCurrentValue(Landroidx/compose/material3/internal/AnchoredDraggableState;Ljava/lang/Object;)V
    .locals 0

    .line 216
    invoke-direct {p0, p1}, Landroidx/compose/material3/internal/AnchoredDraggableState;->setCurrentValue(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$setDragTarget(Landroidx/compose/material3/internal/AnchoredDraggableState;Ljava/lang/Object;)V
    .locals 0

    .line 216
    invoke-direct {p0, p1}, Landroidx/compose/material3/internal/AnchoredDraggableState;->setDragTarget(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$setLastVelocity(Landroidx/compose/material3/internal/AnchoredDraggableState;F)V
    .locals 0

    .line 216
    invoke-direct {p0, p1}, Landroidx/compose/material3/internal/AnchoredDraggableState;->setLastVelocity(F)V

    return-void
.end method

.method public static final synthetic access$setOffset(Landroidx/compose/material3/internal/AnchoredDraggableState;F)V
    .locals 0

    .line 216
    invoke-direct {p0, p1}, Landroidx/compose/material3/internal/AnchoredDraggableState;->setOffset(F)V

    return-void
.end method

.method public static synthetic anchoredDrag$default(Landroidx/compose/material3/internal/AnchoredDraggableState;Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    .line 516
    sget-object p1, Landroidx/compose/foundation/MutatePriority;->Default:Landroidx/compose/foundation/MutatePriority;

    .line 515
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/material3/internal/AnchoredDraggableState;->anchoredDrag(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic anchoredDrag$default(Landroidx/compose/material3/internal/AnchoredDraggableState;Ljava/lang/Object;Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function4;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    .line 562
    sget-object p2, Landroidx/compose/foundation/MutatePriority;->Default:Landroidx/compose/foundation/MutatePriority;

    .line 560
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/material3/internal/AnchoredDraggableState;->anchoredDrag(Ljava/lang/Object;Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function4;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final computeTarget(FLjava/lang/Object;F)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FTT;F)TT;"
        }
    .end annotation

    .line 438
    invoke-virtual {p0}, Landroidx/compose/material3/internal/AnchoredDraggableState;->getAnchors()Landroidx/compose/material3/internal/DraggableAnchors;

    move-result-object v0

    .line 439
    invoke-interface {v0, p2}, Landroidx/compose/material3/internal/DraggableAnchors;->positionOf(Ljava/lang/Object;)F

    move-result v1

    .line 440
    iget-object v2, p0, Landroidx/compose/material3/internal/AnchoredDraggableState;->velocityThreshold:Lkotlin/jvm/functions/Function0;

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    cmpg-float v3, v1, p1

    if-nez v3, :cond_0

    goto/16 :goto_0

    .line 441
    :cond_0
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_0

    :cond_1
    if-gez v3, :cond_4

    cmpl-float p3, p3, v2

    const/4 v2, 0x1

    if-ltz p3, :cond_2

    .line 446
    invoke-interface {v0, p1, v2}, Landroidx/compose/material3/internal/DraggableAnchors;->closestAnchor(FZ)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 448
    :cond_2
    invoke-interface {v0, p1, v2}, Landroidx/compose/material3/internal/DraggableAnchors;->closestAnchor(FZ)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 449
    invoke-interface {v0, p3}, Landroidx/compose/material3/internal/DraggableAnchors;->positionOf(Ljava/lang/Object;)F

    move-result v0

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 450
    iget-object v2, p0, Landroidx/compose/material3/internal/AnchoredDraggableState;->positionalThreshold:Lkotlin/jvm/functions/Function1;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    add-float/2addr v1, v0

    .line 451
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_3

    goto :goto_0

    :cond_3
    move-object p2, p3

    goto :goto_0

    :cond_4
    neg-float v2, v2

    cmpg-float p3, p3, v2

    const/4 v2, 0x0

    if-gtz p3, :cond_5

    .line 457
    invoke-interface {v0, p1, v2}, Landroidx/compose/material3/internal/DraggableAnchors;->closestAnchor(FZ)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    .line 459
    :cond_5
    invoke-interface {v0, p1, v2}, Landroidx/compose/material3/internal/DraggableAnchors;->closestAnchor(FZ)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 460
    invoke-interface {v0, p3}, Landroidx/compose/material3/internal/DraggableAnchors;->positionOf(Ljava/lang/Object;)F

    move-result v0

    sub-float v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 461
    iget-object v2, p0, Landroidx/compose/material3/internal/AnchoredDraggableState;->positionalThreshold:Lkotlin/jvm/functions/Function1;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float/2addr v1, v0

    .line 462
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_6

    .line 466
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, v0

    if-gez p1, :cond_3

    goto :goto_0

    :cond_6
    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    :goto_0
    return-object p2
.end method

.method private final computeTargetWithoutThresholds(FLjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FTT;)TT;"
        }
    .end annotation

    .line 478
    invoke-virtual {p0}, Landroidx/compose/material3/internal/AnchoredDraggableState;->getAnchors()Landroidx/compose/material3/internal/DraggableAnchors;

    move-result-object v0

    .line 479
    invoke-interface {v0, p2}, Landroidx/compose/material3/internal/DraggableAnchors;->positionOf(Ljava/lang/Object;)F

    move-result v1

    cmpg-float v2, v1, p1

    if-nez v2, :cond_0

    goto :goto_0

    .line 480
    :cond_0
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    if-gez v2, :cond_2

    const/4 v1, 0x1

    .line 483
    invoke-interface {v0, p1, v1}, Landroidx/compose/material3/internal/DraggableAnchors;->closestAnchor(FZ)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 485
    invoke-interface {v0, p1, v1}, Landroidx/compose/material3/internal/DraggableAnchors;->closestAnchor(FZ)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move-object p2, p1

    :goto_0
    return-object p2
.end method

.method private final getDragTarget()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 374
    iget-object v0, p0, Landroidx/compose/material3/internal/AnchoredDraggableState;->dragTarget$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .line 881
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final setAnchors(Landroidx/compose/material3/internal/DraggableAnchors;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/internal/DraggableAnchors<",
            "TT;>;)V"
        }
    .end annotation

    .line 376
    iget-object v0, p0, Landroidx/compose/material3/internal/AnchoredDraggableState;->anchors$delegate:Landroidx/compose/runtime/MutableState;

    .line 885
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final setCurrentValue(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 287
    iget-object v0, p0, Landroidx/compose/material3/internal/AnchoredDraggableState;->currentValue$delegate:Landroidx/compose/runtime/MutableState;

    .line 870
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final setDragTarget(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 374
    iget-object v0, p0, Landroidx/compose/material3/internal/AnchoredDraggableState;->dragTarget$delegate:Landroidx/compose/runtime/MutableState;

    .line 882
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final setLastVelocity(F)V
    .locals 1

    .line 371
    iget-object v0, p0, Landroidx/compose/material3/internal/AnchoredDraggableState;->lastVelocity$delegate:Landroidx/compose/runtime/MutableFloatState;

    .line 879
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableFloatState;->setFloatValue(F)V

    return-void
.end method

.method private final setOffset(F)V
    .locals 1

    .line 328
    iget-object v0, p0, Landroidx/compose/material3/internal/AnchoredDraggableState;->offset$delegate:Landroidx/compose/runtime/MutableFloatState;

    .line 875
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableFloatState;->setFloatValue(F)V

    return-void
.end method

.method private final trySnapTo(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 617
    iget-object v0, p0, Landroidx/compose/material3/internal/AnchoredDraggableState;->dragMutex:Landroidx/compose/material3/internal/InternalMutatorMutex;

    new-instance v1, Landroidx/compose/material3/internal/AnchoredDraggableState$trySnapTo$1;

    invoke-direct {v1, p0, p1}, Landroidx/compose/material3/internal/AnchoredDraggableState$trySnapTo$1;-><init>(Landroidx/compose/material3/internal/AnchoredDraggableState;Ljava/lang/Object;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1}, Landroidx/compose/material3/internal/InternalMutatorMutex;->tryMutate(Lkotlin/jvm/functions/Function0;)Z

    move-result p1

    return p1
.end method

.method public static synthetic updateAnchors$default(Landroidx/compose/material3/internal/AnchoredDraggableState;Landroidx/compose/material3/internal/DraggableAnchors;Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 396
    invoke-virtual {p0}, Landroidx/compose/material3/internal/AnchoredDraggableState;->getOffset()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result p2

    if-nez p2, :cond_0

    .line 397
    invoke-virtual {p0}, Landroidx/compose/material3/internal/AnchoredDraggableState;->getOffset()F

    move-result p2

    invoke-interface {p1, p2}, Landroidx/compose/material3/internal/DraggableAnchors;->closestAnchor(F)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-virtual {p0}, Landroidx/compose/material3/internal/AnchoredDraggableState;->getTargetValue()Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    .line 398
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/material3/internal/AnchoredDraggableState;->getTargetValue()Ljava/lang/Object;

    move-result-object p2

    .line 393
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/internal/AnchoredDraggableState;->updateAnchors(Landroidx/compose/material3/internal/DraggableAnchors;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final anchoredDrag(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/MutatePriority;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/material3/internal/AnchoredDragScope;",
            "-",
            "Landroidx/compose/material3/internal/DraggableAnchors<",
            "TT;>;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Landroidx/compose/material3/internal/AnchoredDraggableState$anchoredDrag$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Landroidx/compose/material3/internal/AnchoredDraggableState$anchoredDrag$1;

    iget v1, v0, Landroidx/compose/material3/internal/AnchoredDraggableState$anchoredDrag$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Landroidx/compose/material3/internal/AnchoredDraggableState$anchoredDrag$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Landroidx/compose/material3/internal/AnchoredDraggableState$anchoredDrag$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/material3/internal/AnchoredDraggableState$anchoredDrag$1;

    invoke-direct {v0, p0, p3}, Landroidx/compose/material3/internal/AnchoredDraggableState$anchoredDrag$1;-><init>(Landroidx/compose/material3/internal/AnchoredDraggableState;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Landroidx/compose/material3/internal/AnchoredDraggableState$anchoredDrag$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 515
    iget v2, v0, Landroidx/compose/material3/internal/AnchoredDraggableState$anchoredDrag$1;->label:I

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Landroidx/compose/material3/internal/AnchoredDraggableState$anchoredDrag$1;->L$0:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/material3/internal/AnchoredDraggableState;

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 520
    :try_start_1
    iget-object p3, p0, Landroidx/compose/material3/internal/AnchoredDraggableState;->dragMutex:Landroidx/compose/material3/internal/InternalMutatorMutex;

    new-instance v2, Landroidx/compose/material3/internal/AnchoredDraggableState$anchoredDrag$2;

    const/4 v5, 0x0

    invoke-direct {v2, p0, p2, v5}, Landroidx/compose/material3/internal/AnchoredDraggableState$anchoredDrag$2;-><init>(Landroidx/compose/material3/internal/AnchoredDraggableState;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    iput-object p0, v0, Landroidx/compose/material3/internal/AnchoredDraggableState$anchoredDrag$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Landroidx/compose/material3/internal/AnchoredDraggableState$anchoredDrag$1;->label:I

    invoke-virtual {p3, p1, v2, v0}, Landroidx/compose/material3/internal/InternalMutatorMutex;->mutate(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p0

    .line 526
    :goto_1
    invoke-virtual {p1}, Landroidx/compose/material3/internal/AnchoredDraggableState;->getAnchors()Landroidx/compose/material3/internal/DraggableAnchors;

    move-result-object p2

    invoke-virtual {p1}, Landroidx/compose/material3/internal/AnchoredDraggableState;->getOffset()F

    move-result p3

    invoke-interface {p2, p3}, Landroidx/compose/material3/internal/DraggableAnchors;->closestAnchor(F)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 529
    invoke-virtual {p1}, Landroidx/compose/material3/internal/AnchoredDraggableState;->getOffset()F

    move-result p3

    invoke-virtual {p1}, Landroidx/compose/material3/internal/AnchoredDraggableState;->getAnchors()Landroidx/compose/material3/internal/DraggableAnchors;

    move-result-object v0

    invoke-interface {v0, p2}, Landroidx/compose/material3/internal/DraggableAnchors;->positionOf(Ljava/lang/Object;)F

    move-result v0

    sub-float/2addr p3, v0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    cmpg-float p3, p3, v3

    if-gtz p3, :cond_4

    .line 530
    iget-object p3, p1, Landroidx/compose/material3/internal/AnchoredDraggableState;->confirmValueChange:Lkotlin/jvm/functions/Function1;

    invoke-interface {p3, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 532
    invoke-direct {p1, p2}, Landroidx/compose/material3/internal/AnchoredDraggableState;->setCurrentValue(Ljava/lang/Object;)V

    .line 535
    :cond_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_1
    move-exception p2

    move-object p1, p0

    .line 526
    :goto_2
    invoke-virtual {p1}, Landroidx/compose/material3/internal/AnchoredDraggableState;->getAnchors()Landroidx/compose/material3/internal/DraggableAnchors;

    move-result-object p3

    invoke-virtual {p1}, Landroidx/compose/material3/internal/AnchoredDraggableState;->getOffset()F

    move-result v0

    invoke-interface {p3, v0}, Landroidx/compose/material3/internal/DraggableAnchors;->closestAnchor(F)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_5

    .line 529
    invoke-virtual {p1}, Landroidx/compose/material3/internal/AnchoredDraggableState;->getOffset()F

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/material3/internal/AnchoredDraggableState;->getAnchors()Landroidx/compose/material3/internal/DraggableAnchors;

    move-result-object v1

    invoke-interface {v1, p3}, Landroidx/compose/material3/internal/DraggableAnchors;->positionOf(Ljava/lang/Object;)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_5

    .line 530
    iget-object v0, p1, Landroidx/compose/material3/internal/AnchoredDraggableState;->confirmValueChange:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 532
    invoke-direct {p1, p3}, Landroidx/compose/material3/internal/AnchoredDraggableState;->setCurrentValue(Ljava/lang/Object;)V

    :cond_5
    throw p2
.end method

.method public final anchoredDrag(Ljava/lang/Object;Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function4;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroidx/compose/foundation/MutatePriority;",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Landroidx/compose/material3/internal/AnchoredDragScope;",
            "-",
            "Landroidx/compose/material3/internal/DraggableAnchors<",
            "TT;>;-TT;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Landroidx/compose/material3/internal/AnchoredDraggableState$anchoredDrag$3;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Landroidx/compose/material3/internal/AnchoredDraggableState$anchoredDrag$3;

    iget v1, v0, Landroidx/compose/material3/internal/AnchoredDraggableState$anchoredDrag$3;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p4, v0, Landroidx/compose/material3/internal/AnchoredDraggableState$anchoredDrag$3;->label:I

    sub-int/2addr p4, v2

    iput p4, v0, Landroidx/compose/material3/internal/AnchoredDraggableState$anchoredDrag$3;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/material3/internal/AnchoredDraggableState$anchoredDrag$3;

    invoke-direct {v0, p0, p4}, Landroidx/compose/material3/internal/AnchoredDraggableState$anchoredDrag$3;-><init>(Landroidx/compose/material3/internal/AnchoredDraggableState;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Landroidx/compose/material3/internal/AnchoredDraggableState$anchoredDrag$3;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 560
    iget v2, v0, Landroidx/compose/material3/internal/AnchoredDraggableState$anchoredDrag$3;->label:I

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Landroidx/compose/material3/internal/AnchoredDraggableState$anchoredDrag$3;->L$0:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/material3/internal/AnchoredDraggableState;

    :try_start_0
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 565
    invoke-virtual {p0}, Landroidx/compose/material3/internal/AnchoredDraggableState;->getAnchors()Landroidx/compose/material3/internal/DraggableAnchors;

    move-result-object p4

    invoke-interface {p4, p1}, Landroidx/compose/material3/internal/DraggableAnchors;->hasAnchorFor(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_5

    .line 567
    :try_start_1
    iget-object p4, p0, Landroidx/compose/material3/internal/AnchoredDraggableState;->dragMutex:Landroidx/compose/material3/internal/InternalMutatorMutex;

    new-instance v2, Landroidx/compose/material3/internal/AnchoredDraggableState$anchoredDrag$4;

    invoke-direct {v2, p0, p1, p3, v5}, Landroidx/compose/material3/internal/AnchoredDraggableState$anchoredDrag$4;-><init>(Landroidx/compose/material3/internal/AnchoredDraggableState;Ljava/lang/Object;Lkotlin/jvm/functions/Function4;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    iput-object p0, v0, Landroidx/compose/material3/internal/AnchoredDraggableState$anchoredDrag$3;->L$0:Ljava/lang/Object;

    iput v4, v0, Landroidx/compose/material3/internal/AnchoredDraggableState$anchoredDrag$3;->label:I

    invoke-virtual {p4, p2, v2, v0}, Landroidx/compose/material3/internal/InternalMutatorMutex;->mutate(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p0

    .line 575
    :goto_1
    invoke-direct {p1, v5}, Landroidx/compose/material3/internal/AnchoredDraggableState;->setDragTarget(Ljava/lang/Object;)V

    .line 576
    invoke-virtual {p1}, Landroidx/compose/material3/internal/AnchoredDraggableState;->getAnchors()Landroidx/compose/material3/internal/DraggableAnchors;

    move-result-object p2

    invoke-virtual {p1}, Landroidx/compose/material3/internal/AnchoredDraggableState;->getOffset()F

    move-result p3

    invoke-interface {p2, p3}, Landroidx/compose/material3/internal/DraggableAnchors;->closestAnchor(F)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 579
    invoke-virtual {p1}, Landroidx/compose/material3/internal/AnchoredDraggableState;->getOffset()F

    move-result p3

    invoke-virtual {p1}, Landroidx/compose/material3/internal/AnchoredDraggableState;->getAnchors()Landroidx/compose/material3/internal/DraggableAnchors;

    move-result-object p4

    invoke-interface {p4, p2}, Landroidx/compose/material3/internal/DraggableAnchors;->positionOf(Ljava/lang/Object;)F

    move-result p4

    sub-float/2addr p3, p4

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    cmpg-float p3, p3, v3

    if-gtz p3, :cond_6

    .line 580
    iget-object p3, p1, Landroidx/compose/material3/internal/AnchoredDraggableState;->confirmValueChange:Lkotlin/jvm/functions/Function1;

    invoke-interface {p3, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_6

    .line 582
    invoke-direct {p1, p2}, Landroidx/compose/material3/internal/AnchoredDraggableState;->setCurrentValue(Ljava/lang/Object;)V

    goto :goto_3

    :catchall_1
    move-exception p2

    move-object p1, p0

    .line 575
    :goto_2
    invoke-direct {p1, v5}, Landroidx/compose/material3/internal/AnchoredDraggableState;->setDragTarget(Ljava/lang/Object;)V

    .line 576
    invoke-virtual {p1}, Landroidx/compose/material3/internal/AnchoredDraggableState;->getAnchors()Landroidx/compose/material3/internal/DraggableAnchors;

    move-result-object p3

    invoke-virtual {p1}, Landroidx/compose/material3/internal/AnchoredDraggableState;->getOffset()F

    move-result p4

    invoke-interface {p3, p4}, Landroidx/compose/material3/internal/DraggableAnchors;->closestAnchor(F)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 579
    invoke-virtual {p1}, Landroidx/compose/material3/internal/AnchoredDraggableState;->getOffset()F

    move-result p4

    invoke-virtual {p1}, Landroidx/compose/material3/internal/AnchoredDraggableState;->getAnchors()Landroidx/compose/material3/internal/DraggableAnchors;

    move-result-object v0

    invoke-interface {v0, p3}, Landroidx/compose/material3/internal/DraggableAnchors;->positionOf(Ljava/lang/Object;)F

    move-result v0

    sub-float/2addr p4, v0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    cmpg-float p4, p4, v3

    if-gtz p4, :cond_4

    .line 580
    iget-object p4, p1, Landroidx/compose/material3/internal/AnchoredDraggableState;->confirmValueChange:Lkotlin/jvm/functions/Function1;

    invoke-interface {p4, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    if-eqz p4, :cond_4

    .line 582
    invoke-direct {p1, p3}, Landroidx/compose/material3/internal/AnchoredDraggableState;->setCurrentValue(Ljava/lang/Object;)V

    :cond_4
    throw p2

    .line 587
    :cond_5
    invoke-direct {p0, p1}, Landroidx/compose/material3/internal/AnchoredDraggableState;->setCurrentValue(Ljava/lang/Object;)V

    .line 589
    :cond_6
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final dispatchRawDelta(F)F
    .locals 1

    .line 603
    invoke-virtual {p0, p1}, Landroidx/compose/material3/internal/AnchoredDraggableState;->newOffsetForDelta$material3_release(F)F

    move-result p1

    .line 604
    invoke-virtual {p0}, Landroidx/compose/material3/internal/AnchoredDraggableState;->getOffset()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/material3/internal/AnchoredDraggableState;->getOffset()F

    move-result v0

    .line 605
    :goto_0
    invoke-direct {p0, p1}, Landroidx/compose/material3/internal/AnchoredDraggableState;->setOffset(F)V

    sub-float/2addr p1, v0

    return p1
.end method

.method public final getAnchors()Landroidx/compose/material3/internal/DraggableAnchors;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/material3/internal/DraggableAnchors<",
            "TT;>;"
        }
    .end annotation

    .line 376
    iget-object v0, p0, Landroidx/compose/material3/internal/AnchoredDraggableState;->anchors$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .line 884
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/material3/internal/DraggableAnchors;

    return-object v0
.end method

.method public final getAnimationSpec()Landroidx/compose/animation/core/AnimationSpec;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 221
    iget-object v0, p0, Landroidx/compose/material3/internal/AnchoredDraggableState;->animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    return-object v0
.end method

.method public final getClosestValue$material3_release()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 310
    iget-object v0, p0, Landroidx/compose/material3/internal/AnchoredDraggableState;->closestValue$delegate:Landroidx/compose/runtime/State;

    .line 873
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getConfirmValueChange$material3_release()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 222
    iget-object v0, p0, Landroidx/compose/material3/internal/AnchoredDraggableState;->confirmValueChange:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getCurrentValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 287
    iget-object v0, p0, Landroidx/compose/material3/internal/AnchoredDraggableState;->currentValue$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .line 869
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getDraggableState$material3_release()Landroidx/compose/foundation/gestures/DraggableState;
    .locals 1

    .line 262
    iget-object v0, p0, Landroidx/compose/material3/internal/AnchoredDraggableState;->draggableState:Landroidx/compose/foundation/gestures/DraggableState;

    return-object v0
.end method

.method public final getLastVelocity()F
    .locals 1

    .line 371
    iget-object v0, p0, Landroidx/compose/material3/internal/AnchoredDraggableState;->lastVelocity$delegate:Landroidx/compose/runtime/MutableFloatState;

    check-cast v0, Landroidx/compose/runtime/FloatState;

    .line 878
    invoke-interface {v0}, Landroidx/compose/runtime/FloatState;->getFloatValue()F

    move-result v0

    return v0
.end method

.method public final getOffset()F
    .locals 1

    .line 328
    iget-object v0, p0, Landroidx/compose/material3/internal/AnchoredDraggableState;->offset$delegate:Landroidx/compose/runtime/MutableFloatState;

    check-cast v0, Landroidx/compose/runtime/FloatState;

    .line 874
    invoke-interface {v0}, Landroidx/compose/runtime/FloatState;->getFloatValue()F

    move-result v0

    return v0
.end method

.method public final getPositionalThreshold$material3_release()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 219
    iget-object v0, p0, Landroidx/compose/material3/internal/AnchoredDraggableState;->positionalThreshold:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getProgress()F
    .locals 1

    .line 354
    iget-object v0, p0, Landroidx/compose/material3/internal/AnchoredDraggableState;->progress$delegate:Landroidx/compose/runtime/State;

    .line 877
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method public final getTargetValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 295
    iget-object v0, p0, Landroidx/compose/material3/internal/AnchoredDraggableState;->targetValue$delegate:Landroidx/compose/runtime/State;

    .line 872
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getVelocityThreshold$material3_release()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 220
    iget-object v0, p0, Landroidx/compose/material3/internal/AnchoredDraggableState;->velocityThreshold:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final isAnimationRunning()Z
    .locals 1

    .line 347
    invoke-direct {p0}, Landroidx/compose/material3/internal/AnchoredDraggableState;->getDragTarget()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final newOffsetForDelta$material3_release(F)F
    .locals 2

    .line 592
    invoke-virtual {p0}, Landroidx/compose/material3/internal/AnchoredDraggableState;->getOffset()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/material3/internal/AnchoredDraggableState;->getOffset()F

    move-result v0

    :goto_0
    add-float/2addr v0, p1

    .line 593
    invoke-virtual {p0}, Landroidx/compose/material3/internal/AnchoredDraggableState;->getAnchors()Landroidx/compose/material3/internal/DraggableAnchors;

    move-result-object p1

    invoke-interface {p1}, Landroidx/compose/material3/internal/DraggableAnchors;->minAnchor()F

    move-result p1

    .line 594
    invoke-virtual {p0}, Landroidx/compose/material3/internal/AnchoredDraggableState;->getAnchors()Landroidx/compose/material3/internal/DraggableAnchors;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/material3/internal/DraggableAnchors;->maxAnchor()F

    move-result v1

    .line 592
    invoke-static {v0, p1, v1}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p1

    return p1
.end method

.method public final requireOffset()F
    .locals 2

    .line 338
    invoke-virtual {p0}, Landroidx/compose/material3/internal/AnchoredDraggableState;->getOffset()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 342
    invoke-virtual {p0}, Landroidx/compose/material3/internal/AnchoredDraggableState;->getOffset()F

    move-result v0

    return v0

    .line 338
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The offset was read before being initialized. Did you access the offset in a phase before layout, like effects or composition?"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final settle(FLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 422
    invoke-virtual {p0}, Landroidx/compose/material3/internal/AnchoredDraggableState;->getCurrentValue()Ljava/lang/Object;

    move-result-object v0

    .line 425
    invoke-virtual {p0}, Landroidx/compose/material3/internal/AnchoredDraggableState;->requireOffset()F

    move-result v1

    .line 424
    invoke-direct {p0, v1, v0, p1}, Landroidx/compose/material3/internal/AnchoredDraggableState;->computeTarget(FLjava/lang/Object;F)Ljava/lang/Object;

    move-result-object v1

    .line 429
    iget-object v2, p0, Landroidx/compose/material3/internal/AnchoredDraggableState;->confirmValueChange:Lkotlin/jvm/functions/Function1;

    invoke-interface {v2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 430
    invoke-static {p0, v1, p1, p2}, Landroidx/compose/material3/internal/AnchoredDraggableKt;->animateTo(Landroidx/compose/material3/internal/AnchoredDraggableState;Ljava/lang/Object;FLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 433
    :cond_1
    invoke-static {p0, v0, p1, p2}, Landroidx/compose/material3/internal/AnchoredDraggableKt;->animateTo(Landroidx/compose/material3/internal/AnchoredDraggableState;Ljava/lang/Object;FLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_2

    return-object p1

    :cond_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final updateAnchors(Landroidx/compose/material3/internal/DraggableAnchors;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/internal/DraggableAnchors<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 400
    invoke-virtual {p0}, Landroidx/compose/material3/internal/AnchoredDraggableState;->getAnchors()Landroidx/compose/material3/internal/DraggableAnchors;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 401
    invoke-direct {p0, p1}, Landroidx/compose/material3/internal/AnchoredDraggableState;->setAnchors(Landroidx/compose/material3/internal/DraggableAnchors;)V

    .line 405
    invoke-direct {p0, p2}, Landroidx/compose/material3/internal/AnchoredDraggableState;->trySnapTo(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 407
    invoke-direct {p0, p2}, Landroidx/compose/material3/internal/AnchoredDraggableState;->setDragTarget(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
