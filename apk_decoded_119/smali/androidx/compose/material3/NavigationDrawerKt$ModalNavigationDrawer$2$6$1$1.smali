.class final Landroidx/compose/material3/NavigationDrawerKt$ModalNavigationDrawer$2$6$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "NavigationDrawer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/NavigationDrawerKt$ModalNavigationDrawer$2$6$1;->measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNavigationDrawer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavigationDrawer.kt\nandroidx/compose/material3/NavigationDrawerKt$ModalNavigationDrawer$2$6$1$1\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,1167:1\n33#2,6:1168\n*S KotlinDebug\n*F\n+ 1 NavigationDrawer.kt\nandroidx/compose/material3/NavigationDrawerKt$ModalNavigationDrawer$2$6$1$1\n*L\n409#1:1168,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $anchorsInitialized$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $drawerState:Landroidx/compose/material3/DrawerState;

.field final synthetic $maxValue:F

.field final synthetic $minValue$delegate:Landroidx/compose/runtime/MutableFloatState;

.field final synthetic $placeables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $width:I


# direct methods
.method constructor <init>(Landroidx/compose/material3/DrawerState;ILjava/util/List;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableFloatState;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/DrawerState;",
            "I",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/MutableFloatState;",
            "F)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/NavigationDrawerKt$ModalNavigationDrawer$2$6$1$1;->$drawerState:Landroidx/compose/material3/DrawerState;

    iput p2, p0, Landroidx/compose/material3/NavigationDrawerKt$ModalNavigationDrawer$2$6$1$1;->$width:I

    iput-object p3, p0, Landroidx/compose/material3/NavigationDrawerKt$ModalNavigationDrawer$2$6$1$1;->$placeables:Ljava/util/List;

    iput-object p4, p0, Landroidx/compose/material3/NavigationDrawerKt$ModalNavigationDrawer$2$6$1$1;->$anchorsInitialized$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p5, p0, Landroidx/compose/material3/NavigationDrawerKt$ModalNavigationDrawer$2$6$1$1;->$minValue$delegate:Landroidx/compose/runtime/MutableFloatState;

    iput p6, p0, Landroidx/compose/material3/NavigationDrawerKt$ModalNavigationDrawer$2$6$1$1;->$maxValue:F

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 392
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/NavigationDrawerKt$ModalNavigationDrawer$2$6$1$1;->invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V
    .locals 11

    .line 394
    iget-object v0, p0, Landroidx/compose/material3/NavigationDrawerKt$ModalNavigationDrawer$2$6$1$1;->$drawerState:Landroidx/compose/material3/DrawerState;

    invoke-virtual {v0}, Landroidx/compose/material3/DrawerState;->getAnchoredDraggableState$material3_release()Landroidx/compose/material3/internal/AnchoredDraggableState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/material3/internal/AnchoredDraggableState;->getAnchors()Landroidx/compose/material3/internal/DraggableAnchors;

    move-result-object v0

    sget-object v1, Landroidx/compose/material3/DrawerValue;->Closed:Landroidx/compose/material3/DrawerValue;

    invoke-interface {v0, v1}, Landroidx/compose/material3/internal/DraggableAnchors;->positionOf(Ljava/lang/Object;)F

    move-result v0

    .line 395
    iget v1, p0, Landroidx/compose/material3/NavigationDrawerKt$ModalNavigationDrawer$2$6$1$1;->$width:I

    int-to-float v1, v1

    neg-float v1, v1

    .line 397
    iget-object v2, p0, Landroidx/compose/material3/NavigationDrawerKt$ModalNavigationDrawer$2$6$1$1;->$anchorsInitialized$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v2}, Landroidx/compose/material3/NavigationDrawerKt;->access$ModalNavigationDrawer_FHprtrg$lambda$2(Landroidx/compose/runtime/MutableState;)Z

    move-result v2

    if-eqz v2, :cond_0

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    .line 398
    :cond_0
    iget-object v0, p0, Landroidx/compose/material3/NavigationDrawerKt$ModalNavigationDrawer$2$6$1$1;->$anchorsInitialized$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v0}, Landroidx/compose/material3/NavigationDrawerKt;->access$ModalNavigationDrawer_FHprtrg$lambda$2(Landroidx/compose/runtime/MutableState;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 399
    iget-object v0, p0, Landroidx/compose/material3/NavigationDrawerKt$ModalNavigationDrawer$2$6$1$1;->$anchorsInitialized$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroidx/compose/material3/NavigationDrawerKt;->access$ModalNavigationDrawer_FHprtrg$lambda$3(Landroidx/compose/runtime/MutableState;Z)V

    .line 401
    :cond_1
    iget-object v0, p0, Landroidx/compose/material3/NavigationDrawerKt$ModalNavigationDrawer$2$6$1$1;->$minValue$delegate:Landroidx/compose/runtime/MutableFloatState;

    invoke-static {v0, v1}, Landroidx/compose/material3/NavigationDrawerKt;->access$ModalNavigationDrawer_FHprtrg$lambda$6(Landroidx/compose/runtime/MutableFloatState;F)V

    .line 402
    iget-object v0, p0, Landroidx/compose/material3/NavigationDrawerKt$ModalNavigationDrawer$2$6$1$1;->$drawerState:Landroidx/compose/material3/DrawerState;

    invoke-virtual {v0}, Landroidx/compose/material3/DrawerState;->getAnchoredDraggableState$material3_release()Landroidx/compose/material3/internal/AnchoredDraggableState;

    move-result-object v0

    .line 403
    new-instance v1, Landroidx/compose/material3/NavigationDrawerKt$ModalNavigationDrawer$2$6$1$1$1;

    iget v2, p0, Landroidx/compose/material3/NavigationDrawerKt$ModalNavigationDrawer$2$6$1$1;->$maxValue:F

    iget-object v3, p0, Landroidx/compose/material3/NavigationDrawerKt$ModalNavigationDrawer$2$6$1$1;->$minValue$delegate:Landroidx/compose/runtime/MutableFloatState;

    invoke-direct {v1, v2, v3}, Landroidx/compose/material3/NavigationDrawerKt$ModalNavigationDrawer$2$6$1$1$1;-><init>(FLandroidx/compose/runtime/MutableFloatState;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v1}, Landroidx/compose/material3/internal/AnchoredDraggableKt;->DraggableAnchors(Lkotlin/jvm/functions/Function1;)Landroidx/compose/material3/internal/DraggableAnchors;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 402
    invoke-static {v0, v1, v3, v2, v3}, Landroidx/compose/material3/internal/AnchoredDraggableState;->updateAnchors$default(Landroidx/compose/material3/internal/AnchoredDraggableState;Landroidx/compose/material3/internal/DraggableAnchors;Ljava/lang/Object;ILjava/lang/Object;)V

    .line 409
    :goto_0
    iget-object v0, p0, Landroidx/compose/material3/NavigationDrawerKt$ModalNavigationDrawer$2$6$1$1;->$placeables:Ljava/util/List;

    .line 1169
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    .line 1170
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 1171
    move-object v5, v3

    check-cast v5, Landroidx/compose/ui/layout/Placeable;

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p1

    .line 409
    invoke-static/range {v4 .. v10}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method
