.class final Landroidx/compose/material3/carousel/CarouselKt$HorizontalUncontainedCarousel$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Carousel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/carousel/CarouselKt;->HorizontalUncontainedCarousel-9QcgTRs(Landroidx/compose/material3/carousel/CarouselState;FLandroidx/compose/ui/Modifier;FLandroidx/compose/foundation/gestures/TargetedFlingBehavior;Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Float;",
        "Ljava/lang/Float;",
        "Landroidx/compose/material3/carousel/KeylineList;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/material3/carousel/KeylineList;",
        "availableSpace",
        "",
        "itemSpacingPx",
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
.field final synthetic $density:Landroidx/compose/ui/unit/Density;

.field final synthetic $itemWidth:F


# direct methods
.method constructor <init>(Landroidx/compose/ui/unit/Density;F)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/carousel/CarouselKt$HorizontalUncontainedCarousel$1$1;->$density:Landroidx/compose/ui/unit/Density;

    iput p2, p0, Landroidx/compose/material3/carousel/CarouselKt$HorizontalUncontainedCarousel$1$1;->$itemWidth:F

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(FF)Landroidx/compose/material3/carousel/KeylineList;
    .locals 2

    .line 185
    iget-object v0, p0, Landroidx/compose/material3/carousel/CarouselKt$HorizontalUncontainedCarousel$1$1;->$density:Landroidx/compose/ui/unit/Density;

    iget v1, p0, Landroidx/compose/material3/carousel/CarouselKt$HorizontalUncontainedCarousel$1$1;->$itemWidth:F

    .line 189
    invoke-interface {v0, v1}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v1

    .line 186
    invoke-static {v0, p1, v1, p2}, Landroidx/compose/material3/carousel/KeylinesKt;->uncontainedKeylineList(Landroidx/compose/ui/unit/Density;FFF)Landroidx/compose/material3/carousel/KeylineList;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 184
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/carousel/CarouselKt$HorizontalUncontainedCarousel$1$1;->invoke(FF)Landroidx/compose/material3/carousel/KeylineList;

    move-result-object p1

    return-object p1
.end method
