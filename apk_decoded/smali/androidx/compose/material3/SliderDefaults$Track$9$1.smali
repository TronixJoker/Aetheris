.class final Landroidx/compose/material3/SliderDefaults$Track$9$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Slider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/SliderDefaults;->Track-4EFweAY(Landroidx/compose/material3/RangeSliderState;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SliderColors;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;FFLandroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/ui/graphics/drawscope/DrawScope;",
        "Landroidx/compose/ui/geometry/Offset;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $colors:Landroidx/compose/material3/SliderColors;

.field final synthetic $enabled:Z


# direct methods
.method constructor <init>(Landroidx/compose/material3/SliderColors;Z)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/SliderDefaults$Track$9$1;->$colors:Landroidx/compose/material3/SliderColors;

    iput-boolean p2, p0, Landroidx/compose/material3/SliderDefaults$Track$9$1;->$enabled:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1224
    check-cast p1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    check-cast p2, Landroidx/compose/ui/geometry/Offset;

    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroidx/compose/material3/SliderDefaults$Track$9$1;->invoke-Uv8p0NA(Landroidx/compose/ui/graphics/drawscope/DrawScope;J)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke-Uv8p0NA(Landroidx/compose/ui/graphics/drawscope/DrawScope;J)V
    .locals 7

    .line 1225
    sget-object v0, Landroidx/compose/material3/SliderDefaults;->INSTANCE:Landroidx/compose/material3/SliderDefaults;

    .line 1228
    iget-object v1, p0, Landroidx/compose/material3/SliderDefaults$Track$9$1;->$colors:Landroidx/compose/material3/SliderColors;

    iget-boolean v2, p0, Landroidx/compose/material3/SliderDefaults$Track$9$1;->$enabled:Z

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroidx/compose/material3/SliderColors;->trackColor-WaAFU9c$material3_release(ZZ)J

    move-result-wide v5

    .line 1229
    sget-object v1, Landroidx/compose/material3/SliderDefaults;->INSTANCE:Landroidx/compose/material3/SliderDefaults;

    invoke-virtual {v1}, Landroidx/compose/material3/SliderDefaults;->getTrackStopIndicatorSize-D9Ej5fM()F

    move-result v4

    move-object v1, p1

    move-wide v2, p2

    .line 1225
    invoke-static/range {v0 .. v6}, Landroidx/compose/material3/SliderDefaults;->access$drawStopIndicator-x3O1jOs(Landroidx/compose/material3/SliderDefaults;Landroidx/compose/ui/graphics/drawscope/DrawScope;JFJ)V

    return-void
.end method
