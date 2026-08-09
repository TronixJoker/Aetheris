.class final Landroidx/compose/material3/NavigationDrawerKt$predictiveBackDrawerChild$1;
.super Lkotlin/jvm/internal/Lambda;
.source "NavigationDrawer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/NavigationDrawerKt;->predictiveBackDrawerChild(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/DrawerPredictiveBackState;Z)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
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
.field final synthetic $drawerPredictiveBackState:Landroidx/compose/material3/DrawerPredictiveBackState;

.field final synthetic $isRtl:Z


# direct methods
.method constructor <init>(Landroidx/compose/material3/DrawerPredictiveBackState;Z)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/NavigationDrawerKt$predictiveBackDrawerChild$1;->$drawerPredictiveBackState:Landroidx/compose/material3/DrawerPredictiveBackState;

    iput-boolean p2, p0, Landroidx/compose/material3/NavigationDrawerKt$predictiveBackDrawerChild$1;->$isRtl:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 815
    check-cast p1, Landroidx/compose/ui/graphics/GraphicsLayerScope;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/NavigationDrawerKt$predictiveBackDrawerChild$1;->invoke(Landroidx/compose/ui/graphics/GraphicsLayerScope;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/ui/graphics/GraphicsLayerScope;)V
    .locals 5

    .line 818
    iget-object v0, p0, Landroidx/compose/material3/NavigationDrawerKt$predictiveBackDrawerChild$1;->$drawerPredictiveBackState:Landroidx/compose/material3/DrawerPredictiveBackState;

    invoke-static {p1, v0}, Landroidx/compose/material3/NavigationDrawerKt;->access$calculatePredictiveBackScaleX(Landroidx/compose/ui/graphics/GraphicsLayerScope;Landroidx/compose/material3/DrawerPredictiveBackState;)F

    move-result v0

    .line 819
    iget-object v1, p0, Landroidx/compose/material3/NavigationDrawerKt$predictiveBackDrawerChild$1;->$drawerPredictiveBackState:Landroidx/compose/material3/DrawerPredictiveBackState;

    invoke-static {p1, v1}, Landroidx/compose/material3/NavigationDrawerKt;->access$calculatePredictiveBackScaleY(Landroidx/compose/ui/graphics/GraphicsLayerScope;Landroidx/compose/material3/DrawerPredictiveBackState;)F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v3, v0, v2

    const/high16 v4, 0x3f800000    # 1.0f

    if-nez v3, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    div-float/2addr v1, v0

    .line 820
    :goto_0
    invoke-interface {p1, v1}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->setScaleX(F)V

    .line 821
    iget-boolean v0, p0, Landroidx/compose/material3/NavigationDrawerKt$predictiveBackDrawerChild$1;->$isRtl:Z

    if-eqz v0, :cond_1

    move v4, v2

    :cond_1
    invoke-static {v4, v2}, Landroidx/compose/ui/graphics/TransformOriginKt;->TransformOrigin(FF)J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->setTransformOrigin-__ExYCQ(J)V

    return-void
.end method
