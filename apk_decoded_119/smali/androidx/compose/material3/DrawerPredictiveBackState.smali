.class public final Landroidx/compose/material3/DrawerPredictiveBackState;
.super Ljava/lang/Object;
.source "NavigationDrawer.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNavigationDrawer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavigationDrawer.kt\nandroidx/compose/material3/DrawerPredictiveBackState\n+ 2 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 3 SnapshotFloatState.kt\nandroidx/compose/runtime/PrimitiveSnapshotStateKt__SnapshotFloatStateKt\n*L\n1#1,1167:1\n81#2:1168\n107#2,2:1169\n76#3:1171\n109#3,2:1172\n76#3:1174\n109#3,2:1175\n*S KotlinDebug\n*F\n+ 1 NavigationDrawer.kt\nandroidx/compose/material3/DrawerPredictiveBackState\n*L\n1051#1:1168\n1051#1:1169,2\n1053#1:1171\n1053#1:1172,2\n1055#1:1174\n1055#1:1175,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0008\u0008\u0001\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0018\u001a\u00020\u0019J6\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u00102\u0006\u0010\u001d\u001a\u00020\u00102\u0006\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u0004R+\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00048F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR+\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00048F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u000b\u001a\u0004\u0008\r\u0010\u0007\"\u0004\u0008\u000e\u0010\tR+\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0003\u001a\u00020\u00108F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015\u00a8\u0006!"
    }
    d2 = {
        "Landroidx/compose/material3/DrawerPredictiveBackState;",
        "",
        "()V",
        "<set-?>",
        "",
        "scaleXDistance",
        "getScaleXDistance",
        "()F",
        "setScaleXDistance",
        "(F)V",
        "scaleXDistance$delegate",
        "Landroidx/compose/runtime/MutableFloatState;",
        "scaleYDistance",
        "getScaleYDistance",
        "setScaleYDistance",
        "scaleYDistance$delegate",
        "",
        "swipeEdgeMatchesDrawer",
        "getSwipeEdgeMatchesDrawer",
        "()Z",
        "setSwipeEdgeMatchesDrawer",
        "(Z)V",
        "swipeEdgeMatchesDrawer$delegate",
        "Landroidx/compose/runtime/MutableState;",
        "clear",
        "",
        "update",
        "progress",
        "swipeEdgeLeft",
        "isRtl",
        "maxScaleXDistanceGrow",
        "maxScaleXDistanceShrink",
        "maxScaleYDistance",
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


# instance fields
.field private final scaleXDistance$delegate:Landroidx/compose/runtime/MutableFloatState;

.field private final scaleYDistance$delegate:Landroidx/compose/runtime/MutableFloatState;

.field private final swipeEdgeMatchesDrawer$delegate:Landroidx/compose/runtime/MutableState;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1048
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 1051
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/material3/DrawerPredictiveBackState;->swipeEdgeMatchesDrawer$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v0, 0x0

    .line 1053
    invoke-static {v0}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->mutableFloatStateOf(F)Landroidx/compose/runtime/MutableFloatState;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/material3/DrawerPredictiveBackState;->scaleXDistance$delegate:Landroidx/compose/runtime/MutableFloatState;

    .line 1055
    invoke-static {v0}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->mutableFloatStateOf(F)Landroidx/compose/runtime/MutableFloatState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/material3/DrawerPredictiveBackState;->scaleYDistance$delegate:Landroidx/compose/runtime/MutableFloatState;

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    const/4 v0, 0x1

    .line 1073
    invoke-virtual {p0, v0}, Landroidx/compose/material3/DrawerPredictiveBackState;->setSwipeEdgeMatchesDrawer(Z)V

    const/4 v0, 0x0

    .line 1074
    invoke-virtual {p0, v0}, Landroidx/compose/material3/DrawerPredictiveBackState;->setScaleXDistance(F)V

    .line 1075
    invoke-virtual {p0, v0}, Landroidx/compose/material3/DrawerPredictiveBackState;->setScaleYDistance(F)V

    return-void
.end method

.method public final getScaleXDistance()F
    .locals 1

    .line 1053
    iget-object v0, p0, Landroidx/compose/material3/DrawerPredictiveBackState;->scaleXDistance$delegate:Landroidx/compose/runtime/MutableFloatState;

    check-cast v0, Landroidx/compose/runtime/FloatState;

    .line 1171
    invoke-interface {v0}, Landroidx/compose/runtime/FloatState;->getFloatValue()F

    move-result v0

    return v0
.end method

.method public final getScaleYDistance()F
    .locals 1

    .line 1055
    iget-object v0, p0, Landroidx/compose/material3/DrawerPredictiveBackState;->scaleYDistance$delegate:Landroidx/compose/runtime/MutableFloatState;

    check-cast v0, Landroidx/compose/runtime/FloatState;

    .line 1174
    invoke-interface {v0}, Landroidx/compose/runtime/FloatState;->getFloatValue()F

    move-result v0

    return v0
.end method

.method public final getSwipeEdgeMatchesDrawer()Z
    .locals 1

    .line 1051
    iget-object v0, p0, Landroidx/compose/material3/DrawerPredictiveBackState;->swipeEdgeMatchesDrawer$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .line 1168
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final setScaleXDistance(F)V
    .locals 1

    .line 1053
    iget-object v0, p0, Landroidx/compose/material3/DrawerPredictiveBackState;->scaleXDistance$delegate:Landroidx/compose/runtime/MutableFloatState;

    .line 1172
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableFloatState;->setFloatValue(F)V

    return-void
.end method

.method public final setScaleYDistance(F)V
    .locals 1

    .line 1055
    iget-object v0, p0, Landroidx/compose/material3/DrawerPredictiveBackState;->scaleYDistance$delegate:Landroidx/compose/runtime/MutableFloatState;

    .line 1175
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableFloatState;->setFloatValue(F)V

    return-void
.end method

.method public final setSwipeEdgeMatchesDrawer(Z)V
    .locals 1

    .line 1051
    iget-object v0, p0, Landroidx/compose/material3/DrawerPredictiveBackState;->swipeEdgeMatchesDrawer$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 1169
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final update(FZZFFF)V
    .locals 0

    if-eq p2, p3, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 1065
    :goto_0
    invoke-virtual {p0, p2}, Landroidx/compose/material3/DrawerPredictiveBackState;->setSwipeEdgeMatchesDrawer(Z)V

    .line 1067
    invoke-virtual {p0}, Landroidx/compose/material3/DrawerPredictiveBackState;->getSwipeEdgeMatchesDrawer()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move p4, p5

    :goto_1
    const/4 p2, 0x0

    .line 1068
    invoke-static {p2, p4, p1}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result p3

    invoke-virtual {p0, p3}, Landroidx/compose/material3/DrawerPredictiveBackState;->setScaleXDistance(F)V

    .line 1069
    invoke-static {p2, p6, p1}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/compose/material3/DrawerPredictiveBackState;->setScaleYDistance(F)V

    return-void
.end method
