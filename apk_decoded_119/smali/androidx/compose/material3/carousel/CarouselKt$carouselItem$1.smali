.class final Landroidx/compose/material3/carousel/CarouselKt$carouselItem$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Carousel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/carousel/CarouselKt;->carouselItem(Landroidx/compose/ui/Modifier;ILandroidx/compose/material3/carousel/CarouselState;Lkotlin/jvm/functions/Function0;Landroidx/compose/material3/carousel/CarouselItemInfoImpl;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroidx/compose/ui/layout/MeasureScope;",
        "Landroidx/compose/ui/layout/Measurable;",
        "Landroidx/compose/ui/unit/Constraints;",
        "Landroidx/compose/ui/layout/MeasureResult;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\n\u00a2\u0006\u0004\u0008\u0007\u0010\u0008"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "Landroidx/compose/ui/layout/MeasureScope;",
        "measurable",
        "Landroidx/compose/ui/layout/Measurable;",
        "constraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "invoke-3p2s80s",
        "(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;"
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
.field final synthetic $carouselItemInfo:Landroidx/compose/material3/carousel/CarouselItemInfoImpl;

.field final synthetic $clipShape:Landroidx/compose/ui/graphics/Shape;

.field final synthetic $index:I

.field final synthetic $state:Landroidx/compose/material3/carousel/CarouselState;

.field final synthetic $strategy:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/compose/material3/carousel/Strategy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/material3/carousel/CarouselState;ILandroidx/compose/material3/carousel/CarouselItemInfoImpl;Landroidx/compose/ui/graphics/Shape;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/compose/material3/carousel/Strategy;",
            ">;",
            "Landroidx/compose/material3/carousel/CarouselState;",
            "I",
            "Landroidx/compose/material3/carousel/CarouselItemInfoImpl;",
            "Landroidx/compose/ui/graphics/Shape;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/carousel/CarouselKt$carouselItem$1;->$strategy:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Landroidx/compose/material3/carousel/CarouselKt$carouselItem$1;->$state:Landroidx/compose/material3/carousel/CarouselState;

    iput p3, p0, Landroidx/compose/material3/carousel/CarouselKt$carouselItem$1;->$index:I

    iput-object p4, p0, Landroidx/compose/material3/carousel/CarouselKt$carouselItem$1;->$carouselItemInfo:Landroidx/compose/material3/carousel/CarouselItemInfoImpl;

    iput-object p5, p0, Landroidx/compose/material3/carousel/CarouselKt$carouselItem$1;->$clipShape:Landroidx/compose/ui/graphics/Shape;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 439
    check-cast p1, Landroidx/compose/ui/layout/MeasureScope;

    check-cast p2, Landroidx/compose/ui/layout/Measurable;

    check-cast p3, Landroidx/compose/ui/unit/Constraints;

    invoke-virtual {p3}, Landroidx/compose/ui/unit/Constraints;->unbox-impl()J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroidx/compose/material3/carousel/CarouselKt$carouselItem$1;->invoke-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p1

    return-object p1
.end method

.method public final invoke-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 18

    move-object/from16 v0, p0

    .line 440
    iget-object v1, v0, Landroidx/compose/material3/carousel/CarouselKt$carouselItem$1;->$strategy:Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/compose/material3/carousel/Strategy;

    .line 441
    invoke-virtual {v5}, Landroidx/compose/material3/carousel/Strategy;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 443
    sget-object v1, Landroidx/compose/material3/carousel/CarouselKt$carouselItem$1$1;->INSTANCE:Landroidx/compose/material3/carousel/CarouselKt$carouselItem$1$1;

    move-object v6, v1

    check-cast v6, Lkotlin/jvm/functions/Function1;

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v1

    return-object v1

    .line 446
    :cond_0
    iget-object v1, v0, Landroidx/compose/material3/carousel/CarouselKt$carouselItem$1;->$state:Landroidx/compose/material3/carousel/CarouselState;

    invoke-virtual {v1}, Landroidx/compose/material3/carousel/CarouselState;->getPagerState$material3_release()Landroidx/compose/foundation/pager/PagerState;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/foundation/pager/PagerState;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerLayoutInfo;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/foundation/pager/PagerLayoutInfo;->getOrientation()Landroidx/compose/foundation/gestures/Orientation;

    move-result-object v1

    sget-object v2, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_1

    move v7, v3

    goto :goto_0

    :cond_1
    move v7, v4

    .line 447
    :goto_0
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/layout/MeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v1

    sget-object v2, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne v1, v2, :cond_2

    move v10, v3

    goto :goto_1

    :cond_2
    move v10, v4

    .line 450
    :goto_1
    invoke-virtual {v5}, Landroidx/compose/material3/carousel/Strategy;->getItemMainAxisSize()F

    move-result v1

    if-eqz v7, :cond_3

    .line 454
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v13

    .line 455
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v14

    .line 456
    invoke-static {v1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v15

    .line 457
    invoke-static {v1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v16

    move-wide/from16 v11, p3

    .line 453
    invoke-static/range {v11 .. v16}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA(JIIII)J

    move-result-wide v1

    goto :goto_2

    .line 461
    :cond_3
    invoke-static {v1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v13

    .line 462
    invoke-static {v1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v14

    .line 463
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v15

    .line 464
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v16

    move-wide/from16 v11, p3

    .line 460
    invoke-static/range {v11 .. v16}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA(JIIII)J

    move-result-wide v1

    :goto_2
    move-object/from16 v3, p2

    .line 468
    invoke-interface {v3, v1, v2}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v3

    .line 469
    invoke-virtual {v3}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v12

    invoke-virtual {v3}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v13

    new-instance v1, Landroidx/compose/material3/carousel/CarouselKt$carouselItem$1$2;

    iget-object v4, v0, Landroidx/compose/material3/carousel/CarouselKt$carouselItem$1;->$state:Landroidx/compose/material3/carousel/CarouselState;

    iget v6, v0, Landroidx/compose/material3/carousel/CarouselKt$carouselItem$1;->$index:I

    iget-object v8, v0, Landroidx/compose/material3/carousel/CarouselKt$carouselItem$1;->$carouselItemInfo:Landroidx/compose/material3/carousel/CarouselItemInfoImpl;

    iget-object v9, v0, Landroidx/compose/material3/carousel/CarouselKt$carouselItem$1;->$clipShape:Landroidx/compose/ui/graphics/Shape;

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Landroidx/compose/material3/carousel/CarouselKt$carouselItem$1$2;-><init>(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/material3/carousel/CarouselState;Landroidx/compose/material3/carousel/Strategy;IZLandroidx/compose/material3/carousel/CarouselItemInfoImpl;Landroidx/compose/ui/graphics/Shape;Z)V

    move-object v15, v1

    check-cast v15, Lkotlin/jvm/functions/Function1;

    const/16 v16, 0x4

    const/16 v17, 0x0

    const/4 v14, 0x0

    move-object/from16 v11, p1

    invoke-static/range {v11 .. v17}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v1

    return-object v1
.end method
