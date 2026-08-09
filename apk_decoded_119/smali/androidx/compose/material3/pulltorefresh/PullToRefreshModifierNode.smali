.class public final Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;
.super Landroidx/compose/ui/node/DelegatingNode;
.source "PullToRefresh.kt"

# interfaces
.implements Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;
.implements Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPullToRefresh.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PullToRefresh.kt\nandroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode\n+ 2 SnapshotFloatState.kt\nandroidx/compose/runtime/PrimitiveSnapshotStateKt__SnapshotFloatStateKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,678:1\n76#2:679\n109#2,2:680\n76#2:682\n109#2,2:683\n1#3:685\n*S KotlinDebug\n*F\n+ 1 PullToRefresh.kt\nandroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode\n*L\n271#1:679\n271#1:680,2\n272#1:682\n272#1:683,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B3\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u0006\u0010\t\u001a\u00020\u0005\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0002\u0010\u000eJ\u000e\u00106\u001a\u00020\u0008H\u0082@\u00a2\u0006\u0002\u00107J\u000e\u00108\u001a\u00020\u0008H\u0082@\u00a2\u0006\u0002\u00107J\u0008\u00109\u001a\u00020\u0010H\u0002J\u001a\u0010:\u001a\u00020;2\u0006\u0010<\u001a\u00020;H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008=\u0010>J\u0008\u0010?\u001a\u00020\u0008H\u0016J*\u0010@\u001a\u00020;2\u0006\u0010A\u001a\u00020;2\u0006\u0010<\u001a\u00020;2\u0006\u0010B\u001a\u00020CH\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008D\u0010EJ\u001b\u0010F\u001a\u00020G2\u0006\u0010<\u001a\u00020GH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008H\u0010IJ\"\u0010J\u001a\u00020;2\u0006\u0010<\u001a\u00020;2\u0006\u0010B\u001a\u00020CH\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008K\u0010LJ\u0016\u0010M\u001a\u00020\u00102\u0006\u0010N\u001a\u00020\u0010H\u0082@\u00a2\u0006\u0002\u0010OJ\u0006\u0010P\u001a\u00020\u0008R\u0014\u0010\u000f\u001a\u00020\u00108BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R+\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00108B@BX\u0082\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u0015\u0010\u0012\"\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\t\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0004\u0010\u001b\"\u0004\u0008\u001e\u0010\u001dR\u000e\u0010\u001f\u001a\u00020 X\u0082\u000e\u00a2\u0006\u0002\n\u0000R \u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R\u0014\u0010%\u001a\u00020\u00108BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008&\u0010\u0012R\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*R\"\u0010\u000c\u001a\u00020\rX\u0086\u000e\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0010\n\u0002\u0010-\u001a\u0004\u0008+\u0010\u0012\"\u0004\u0008,\u0010\u0017R\u0014\u0010.\u001a\u00020/8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u00080\u00101R+\u00102\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00108B@BX\u0082\u008e\u0002\u00a2\u0006\u0012\n\u0004\u00085\u0010\u0019\u001a\u0004\u00083\u0010\u0012\"\u0004\u00084\u0010\u0017\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006Q"
    }
    d2 = {
        "Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;",
        "Landroidx/compose/ui/node/DelegatingNode;",
        "Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;",
        "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;",
        "isRefreshing",
        "",
        "onRefresh",
        "Lkotlin/Function0;",
        "",
        "enabled",
        "state",
        "Landroidx/compose/material3/pulltorefresh/PullToRefreshState;",
        "threshold",
        "Landroidx/compose/ui/unit/Dp;",
        "(ZLkotlin/jvm/functions/Function0;ZLandroidx/compose/material3/pulltorefresh/PullToRefreshState;FLkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "adjustedDistancePulled",
        "",
        "getAdjustedDistancePulled",
        "()F",
        "<set-?>",
        "distancePulled",
        "getDistancePulled",
        "setDistancePulled",
        "(F)V",
        "distancePulled$delegate",
        "Landroidx/compose/runtime/MutableFloatState;",
        "getEnabled",
        "()Z",
        "setEnabled",
        "(Z)V",
        "setRefreshing",
        "nestedScrollNode",
        "Landroidx/compose/ui/node/DelegatableNode;",
        "getOnRefresh",
        "()Lkotlin/jvm/functions/Function0;",
        "setOnRefresh",
        "(Lkotlin/jvm/functions/Function0;)V",
        "progress",
        "getProgress",
        "getState",
        "()Landroidx/compose/material3/pulltorefresh/PullToRefreshState;",
        "setState",
        "(Landroidx/compose/material3/pulltorefresh/PullToRefreshState;)V",
        "getThreshold-D9Ej5fM",
        "setThreshold-0680j_4",
        "F",
        "thresholdPx",
        "",
        "getThresholdPx",
        "()I",
        "verticalOffset",
        "getVerticalOffset",
        "setVerticalOffset",
        "verticalOffset$delegate",
        "animateToHidden",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "animateToThreshold",
        "calculateVerticalOffset",
        "consumeAvailableOffset",
        "Landroidx/compose/ui/geometry/Offset;",
        "available",
        "consumeAvailableOffset-MK-Hz9U",
        "(J)J",
        "onAttach",
        "onPostScroll",
        "consumed",
        "source",
        "Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;",
        "onPostScroll-DzOQY0M",
        "(JJI)J",
        "onPreFling",
        "Landroidx/compose/ui/unit/Velocity;",
        "onPreFling-QWom1Mo",
        "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "onPreScroll",
        "onPreScroll-OzD1aCk",
        "(JI)J",
        "onRelease",
        "velocity",
        "(FLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "update",
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
.field public static final $stable:I = 0x8


# instance fields
.field private final distancePulled$delegate:Landroidx/compose/runtime/MutableFloatState;

.field private enabled:Z

.field private isRefreshing:Z

.field private nestedScrollNode:Landroidx/compose/ui/node/DelegatableNode;

.field private onRefresh:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private state:Landroidx/compose/material3/pulltorefresh/PullToRefreshState;

.field private threshold:F

.field private final verticalOffset$delegate:Landroidx/compose/runtime/MutableFloatState;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(ZLkotlin/jvm/functions/Function0;ZLandroidx/compose/material3/pulltorefresh/PullToRefreshState;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;Z",
            "Landroidx/compose/material3/pulltorefresh/PullToRefreshState;",
            "F)V"
        }
    .end annotation

    .line 263
    invoke-direct {p0}, Landroidx/compose/ui/node/DelegatingNode;-><init>()V

    .line 258
    iput-boolean p1, p0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;->isRefreshing:Z

    .line 259
    iput-object p2, p0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;->onRefresh:Lkotlin/jvm/functions/Function0;

    .line 260
    iput-boolean p3, p0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;->enabled:Z

    .line 261
    iput-object p4, p0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;->state:Landroidx/compose/material3/pulltorefresh/PullToRefreshState;

    .line 262
    iput p5, p0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;->threshold:F

    .line 267
    move-object p1, p0

    check-cast p1, Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    const/4 p2, 0x0

    .line 266
    invoke-static {p1, p2}, Landroidx/compose/ui/input/nestedscroll/NestedScrollNodeKt;->nestedScrollModifierNode(Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;)Landroidx/compose/ui/node/DelegatableNode;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;->nestedScrollNode:Landroidx/compose/ui/node/DelegatableNode;

    const/4 p1, 0x0

    .line 271
    invoke-static {p1}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->mutableFloatStateOf(F)Landroidx/compose/runtime/MutableFloatState;

    move-result-object p2

    iput-object p2, p0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;->verticalOffset$delegate:Landroidx/compose/runtime/MutableFloatState;

    .line 272
    invoke-static {p1}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->mutableFloatStateOf(F)Landroidx/compose/runtime/MutableFloatState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;->distancePulled$delegate:Landroidx/compose/runtime/MutableFloatState;

    return-void
.end method

.method public synthetic constructor <init>(ZLkotlin/jvm/functions/Function0;ZLandroidx/compose/material3/pulltorefresh/PullToRefreshState;FLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;-><init>(ZLkotlin/jvm/functions/Function0;ZLandroidx/compose/material3/pulltorefresh/PullToRefreshState;F)V

    return-void
.end method

.method public static final synthetic access$animateToHidden(Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 256
    invoke-direct {p0, p1}, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;->animateToHidden(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$animateToThreshold(Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 256
    invoke-direct {p0, p1}, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;->animateToThreshold(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getThresholdPx(Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;)I
    .locals 0

    .line 256
    invoke-direct {p0}, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;->getThresholdPx()I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getVerticalOffset(Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;)F
    .locals 0

    .line 256
    invoke-direct {p0}, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;->getVerticalOffset()F

    move-result p0

    return p0
.end method

.method public static final synthetic access$onRelease(Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;FLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 256
    invoke-direct {p0, p1, p2}, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;->onRelease(FLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final animateToHidden(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode$animateToHidden$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode$animateToHidden$1;

    iget v1, v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode$animateToHidden$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode$animateToHidden$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode$animateToHidden$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode$animateToHidden$1;

    invoke-direct {v0, p0, p1}, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode$animateToHidden$1;-><init>(Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode$animateToHidden$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 405
    iget v2, v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode$animateToHidden$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode$animateToHidden$1;->L$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 406
    iget-object p1, p0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;->state:Landroidx/compose/material3/pulltorefresh/PullToRefreshState;

    iput-object p0, v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode$animateToHidden$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode$animateToHidden$1;->label:I

    invoke-interface {p1, v0}, Landroidx/compose/material3/pulltorefresh/PullToRefreshState;->animateToHidden(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    :goto_1
    const/4 p1, 0x0

    .line 407
    invoke-direct {v0, p1}, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;->setDistancePulled(F)V

    .line 408
    invoke-direct {v0, p1}, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;->setVerticalOffset(F)V

    .line 409
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final animateToThreshold(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode$animateToThreshold$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode$animateToThreshold$1;

    iget v1, v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode$animateToThreshold$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode$animateToThreshold$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode$animateToThreshold$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode$animateToThreshold$1;

    invoke-direct {v0, p0, p1}, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode$animateToThreshold$1;-><init>(Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode$animateToThreshold$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 399
    iget v2, v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode$animateToThreshold$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode$animateToThreshold$1;->L$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 400
    iget-object p1, p0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;->state:Landroidx/compose/material3/pulltorefresh/PullToRefreshState;

    iput-object p0, v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode$animateToThreshold$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode$animateToThreshold$1;->label:I

    invoke-interface {p1, v0}, Landroidx/compose/material3/pulltorefresh/PullToRefreshState;->animateToThreshold(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 401
    :goto_1
    invoke-direct {v0}, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;->getThresholdPx()I

    move-result p1

    int-to-float p1, p1

    invoke-direct {v0, p1}, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;->setDistancePulled(F)V

    .line 402
    invoke-direct {v0}, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;->getThresholdPx()I

    move-result p1

    int-to-float p1, p1

    invoke-direct {v0, p1}, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;->setVerticalOffset(F)V

    .line 403
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final calculateVerticalOffset()F
    .locals 5

    .line 385
    invoke-direct {p0}, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;->getAdjustedDistancePulled()F

    move-result v0

    invoke-direct {p0}, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;->getThresholdPx()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-direct {p0}, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;->getAdjustedDistancePulled()F

    move-result v0

    goto :goto_0

    .line 388
    :cond_0
    invoke-direct {p0}, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;->getProgress()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    .line 390
    invoke-static {v0, v1, v2}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v0

    float-to-double v1, v0

    const/4 v3, 0x2

    int-to-double v3, v3

    .line 392
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    const/4 v2, 0x4

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 394
    invoke-direct {p0}, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;->getThresholdPx()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    .line 395
    invoke-direct {p0}, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;->getThresholdPx()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v1

    :goto_0
    return v0
.end method

.method private final consumeAvailableOffset-MK-Hz9U(J)J
    .locals 2

    .line 343
    iget-boolean v0, p0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;->isRefreshing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p2, v1

    goto :goto_0

    .line 345
    :cond_0
    invoke-direct {p0}, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;->getDistancePulled()F

    move-result v0

    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p1

    add-float/2addr v0, p1

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result p1

    .line 346
    invoke-direct {p0}, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;->getDistancePulled()F

    move-result p2

    sub-float p2, p1, p2

    .line 347
    invoke-direct {p0, p1}, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;->setDistancePulled(F)V

    .line 348
    invoke-direct {p0}, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;->calculateVerticalOffset()F

    move-result p1

    invoke-direct {p0, p1}, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;->setVerticalOffset(F)V

    .line 351
    :goto_0
    invoke-static {v1, p2}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide p1

    return-wide p1
.end method

.method private final getAdjustedDistancePulled()F
    .locals 2

    .line 275
    invoke-direct {p0}, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;->getDistancePulled()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    return v0
.end method

.method private final getDistancePulled()F
    .locals 1

    .line 272
    iget-object v0, p0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;->distancePulled$delegate:Landroidx/compose/runtime/MutableFloatState;

    check-cast v0, Landroidx/compose/runtime/FloatState;

    .line 682
    invoke-interface {v0}, Landroidx/compose/runtime/FloatState;->getFloatValue()F

    move-result v0

    return v0
.end method

.method private final getProgress()F
    .locals 2

    .line 281
    invoke-direct {p0}, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;->getAdjustedDistancePulled()F

    move-result v0

    invoke-direct {p0}, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;->getThresholdPx()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method private final getThresholdPx()I
    .locals 2

    .line 278
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;

    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/CompositionLocal;

    invoke-static {v0, v1}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/unit/Density;

    iget v1, p0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;->threshold:F

    invoke-interface {v0, v1}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v0

    return v0
.end method

.method private final getVerticalOffset()F
    .locals 1

    .line 271
    iget-object v0, p0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;->verticalOffset$delegate:Landroidx/compose/runtime/MutableFloatState;

    check-cast v0, Landroidx/compose/runtime/FloatState;

    .line 679
    invoke-interface {v0}, Landroidx/compose/runtime/FloatState;->getFloatValue()F

    move-result v0

    return v0
.end method

.method private final onRelease(FLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Float;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode$onRelease$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode$onRelease$1;

    iget v1, v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode$onRelease$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode$onRelease$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode$onRelease$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode$onRelease$1;

    invoke-direct {v0, p0, p2}, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode$onRelease$1;-><init>(Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode$onRelease$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 355
    iget v2, v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode$onRelease$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget p1, v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode$onRelease$1;->F$0:F

    iget-object v0, v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode$onRelease$1;->L$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget p1, v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode$onRelease$1;->F$0:F

    iget-object v0, v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode$onRelease$1;->L$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 356
    iget-boolean p2, p0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;->isRefreshing:Z

    if-eqz p2, :cond_4

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 358
    :cond_4
    invoke-direct {p0}, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;->getAdjustedDistancePulled()F

    move-result p2

    invoke-direct {p0}, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;->getThresholdPx()I

    move-result v2

    int-to-float v2, v2

    cmpl-float p2, p2, v2

    if-lez p2, :cond_6

    .line 359
    iput-object p0, v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode$onRelease$1;->L$0:Ljava/lang/Object;

    iput p1, v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode$onRelease$1;->F$0:F

    iput v4, v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode$onRelease$1;->label:I

    invoke-direct {p0, v0}, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;->animateToThreshold(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    move-object v0, p0

    .line 360
    :goto_1
    iget-object p2, v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;->onRefresh:Lkotlin/jvm/functions/Function0;

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_2

    .line 362
    :cond_6
    iput-object p0, v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode$onRelease$1;->L$0:Ljava/lang/Object;

    iput p1, v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode$onRelease$1;->F$0:F

    iput v3, v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode$onRelease$1;->label:I

    invoke-direct {p0, v0}, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;->animateToHidden(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_7

    return-object v1

    :cond_7
    move-object v0, p0

    .line 370
    :goto_2
    invoke-direct {v0}, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;->getDistancePulled()F

    move-result p2

    cmpg-float p2, p2, v5

    if-nez p2, :cond_8

    :goto_3
    move p1, v5

    goto :goto_4

    :cond_8
    cmpg-float p2, p1, v5

    if-gez p2, :cond_9

    goto :goto_3

    .line 378
    :cond_9
    :goto_4
    invoke-direct {v0, v5}, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;->setDistancePulled(F)V

    .line 379
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method private final setDistancePulled(F)V
    .locals 1

    .line 272
    iget-object v0, p0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;->distancePulled$delegate:Landroidx/compose/runtime/MutableFloatState;

    .line 683
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableFloatState;->setFloatValue(F)V

    return-void
.end method

.method private final setVerticalOffset(F)V
    .locals 1

    .line 271
    iget-object v0, p0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;->verticalOffset$delegate:Landroidx/compose/runtime/MutableFloatState;

    .line 680
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableFloatState;->setFloatValue(F)V

    return-void
.end method


# virtual methods
.method public final getEnabled()Z
    .locals 1

    .line 260
    iget-boolean v0, p0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;->enabled:Z

    return v0
.end method

.method public final getOnRefresh()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 259
    iget-object v0, p0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;->onRefresh:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getState()Landroidx/compose/material3/pulltorefresh/PullToRefreshState;
    .locals 1

    .line 261
    iget-object v0, p0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;->state:Landroidx/compose/material3/pulltorefresh/PullToRefreshState;

    return-object v0
.end method

.method public final getThreshold-D9Ej5fM()F
    .locals 1

    .line 262
    iget v0, p0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;->threshold:F

    return v0
.end method

.method public final isRefreshing()Z
    .locals 1

    .line 258
    iget-boolean v0, p0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;->isRefreshing:Z

    return v0
.end method

.method public onAttach()V
    .locals 7

    .line 284
    iget-object v0, p0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;->nestedScrollNode:Landroidx/compose/ui/node/DelegatableNode;

    invoke-virtual {p0, v0}, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;->delegate(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    .line 285
    invoke-virtual {p0}, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode$onAttach$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode$onAttach$1;-><init>(Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public onPostScroll-DzOQY0M(JJI)J
    .locals 6

    .line 314
    iget-object p1, p0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;->state:Landroidx/compose/material3/pulltorefresh/PullToRefreshState;

    invoke-interface {p1}, Landroidx/compose/material3/pulltorefresh/PullToRefreshState;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide p1

    goto :goto_0

    .line 315
    :cond_0
    iget-boolean p1, p0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;->enabled:Z

    if-nez p1, :cond_1

    sget-object p1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide p1

    goto :goto_0

    .line 317
    :cond_1
    sget-object p1, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;->Companion:Landroidx/compose/ui/input/nestedscroll/NestedScrollSource$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource$Companion;->getUserInput-WNlRxjI()I

    move-result p1

    invoke-static {p5, p1}, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;->equals-impl0(II)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 318
    invoke-direct {p0, p3, p4}, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;->consumeAvailableOffset-MK-Hz9U(J)J

    move-result-wide p1

    .line 319
    invoke-virtual {p0}, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    new-instance p3, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode$onPostScroll$1;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p4}, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode$onPostScroll$1;-><init>(Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;Lkotlin/coroutines/Continuation;)V

    move-object v3, p3

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_0

    .line 323
    :cond_2
    sget-object p1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide p1

    :goto_0
    return-wide p1
.end method

.method public onPreFling-QWom1Mo(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/ui/unit/Velocity;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode$onPreFling$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode$onPreFling$1;

    iget v1, v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode$onPreFling$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode$onPreFling$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode$onPreFling$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode$onPreFling$1;

    invoke-direct {v0, p0, p3}, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode$onPreFling$1;-><init>(Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode$onPreFling$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 326
    iget v2, v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode$onPreFling$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget p1, v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode$onPreFling$1;->F$0:F

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 327
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->getY-impl(J)F

    move-result p1

    const/4 p2, 0x0

    iput p2, v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode$onPreFling$1;->F$0:F

    iput v3, v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode$onPreFling$1;->label:I

    invoke-direct {p0, p1, v0}, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;->onRelease(FLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    move p1, p2

    :goto_1
    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p2

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/VelocityKt;->Velocity(FF)J

    move-result-wide p1

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->box-impl(J)Landroidx/compose/ui/unit/Velocity;

    move-result-object p1

    return-object p1
.end method

.method public onPreScroll-OzD1aCk(JI)J
    .locals 1

    .line 299
    iget-object v0, p0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;->state:Landroidx/compose/material3/pulltorefresh/PullToRefreshState;

    invoke-interface {v0}, Landroidx/compose/material3/pulltorefresh/PullToRefreshState;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide p1

    goto :goto_0

    .line 300
    :cond_0
    iget-boolean v0, p0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;->enabled:Z

    if-nez v0, :cond_1

    sget-object p1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide p1

    goto :goto_0

    .line 302
    :cond_1
    sget-object v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;->Companion:Landroidx/compose/ui/input/nestedscroll/NestedScrollSource$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource$Companion;->getUserInput-WNlRxjI()I

    move-result v0

    invoke-static {p3, v0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;->equals-impl0(II)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p3

    const/4 v0, 0x0

    cmpg-float p3, p3, v0

    if-gez p3, :cond_2

    .line 303
    invoke-direct {p0, p1, p2}, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;->consumeAvailableOffset-MK-Hz9U(J)J

    move-result-wide p1

    goto :goto_0

    .line 305
    :cond_2
    sget-object p1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide p1

    :goto_0
    return-wide p1
.end method

.method public final setEnabled(Z)V
    .locals 0

    .line 260
    iput-boolean p1, p0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;->enabled:Z

    return-void
.end method

.method public final setOnRefresh(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 259
    iput-object p1, p0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;->onRefresh:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setRefreshing(Z)V
    .locals 0

    .line 258
    iput-boolean p1, p0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;->isRefreshing:Z

    return-void
.end method

.method public final setState(Landroidx/compose/material3/pulltorefresh/PullToRefreshState;)V
    .locals 0

    .line 261
    iput-object p1, p0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;->state:Landroidx/compose/material3/pulltorefresh/PullToRefreshState;

    return-void
.end method

.method public final setThreshold-0680j_4(F)V
    .locals 0

    .line 262
    iput p1, p0, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;->threshold:F

    return-void
.end method

.method public final update()V
    .locals 6

    .line 331
    invoke-virtual {p0}, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    new-instance v1, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode$update$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode$update$1;-><init>(Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;Lkotlin/coroutines/Continuation;)V

    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
