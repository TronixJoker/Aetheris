.class public final Landroidx/compose/material3/carousel/KeylineSnapPositionKt;
.super Ljava/lang/Object;
.source "KeylineSnapPosition.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a \u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0005H\u0000\u00a8\u0006\n"
    }
    d2 = {
        "KeylineSnapPosition",
        "Landroidx/compose/foundation/gestures/snapping/SnapPosition;",
        "pageSize",
        "Landroidx/compose/material3/carousel/CarouselPageSize;",
        "getSnapPositionOffset",
        "",
        "strategy",
        "Landroidx/compose/material3/carousel/Strategy;",
        "itemIndex",
        "itemCount",
        "material3_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final KeylineSnapPosition(Landroidx/compose/material3/carousel/CarouselPageSize;)Landroidx/compose/foundation/gestures/snapping/SnapPosition;
    .locals 1

    .line 63
    new-instance v0, Landroidx/compose/material3/carousel/KeylineSnapPositionKt$KeylineSnapPosition$1;

    invoke-direct {v0, p0}, Landroidx/compose/material3/carousel/KeylineSnapPositionKt$KeylineSnapPosition$1;-><init>(Landroidx/compose/material3/carousel/CarouselPageSize;)V

    check-cast v0, Landroidx/compose/foundation/gestures/snapping/SnapPosition;

    return-object v0
.end method

.method public static final getSnapPositionOffset(Landroidx/compose/material3/carousel/Strategy;II)I
    .locals 7

    .line 32
    invoke-virtual {p0}, Landroidx/compose/material3/carousel/Strategy;->isValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 35
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/material3/carousel/Strategy;->getDefaultKeylines()Landroidx/compose/material3/carousel/KeylineList;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/material3/carousel/KeylineList;->getLastFocalIndex()I

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/material3/carousel/Strategy;->getDefaultKeylines()Landroidx/compose/material3/carousel/KeylineList;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/material3/carousel/KeylineList;->getFirstFocalIndex()I

    move-result v2

    sub-int/2addr v0, v2

    .line 36
    invoke-virtual {p0}, Landroidx/compose/material3/carousel/Strategy;->getStartKeylineSteps()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v0

    .line 37
    invoke-virtual {p0}, Landroidx/compose/material3/carousel/Strategy;->getEndKeylineSteps()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v0

    .line 40
    invoke-virtual {p0}, Landroidx/compose/material3/carousel/Strategy;->getDefaultKeylines()Landroidx/compose/material3/carousel/KeylineList;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/material3/carousel/KeylineList;->getFirstFocal()Landroidx/compose/material3/carousel/Keyline;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/material3/carousel/Keyline;->getUnadjustedOffset()F

    move-result v4

    invoke-virtual {p0}, Landroidx/compose/material3/carousel/Strategy;->getItemMainAxisSize()F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    .line 41
    invoke-static {v4}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v4

    if-ge p1, v2, :cond_1

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, p1

    .line 44
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 45
    invoke-virtual {p0}, Landroidx/compose/material3/carousel/Strategy;->getStartKeylineSteps()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 46
    invoke-virtual {p0}, Landroidx/compose/material3/carousel/Strategy;->getStartKeylineSteps()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/material3/carousel/KeylineList;

    .line 48
    invoke-virtual {v2}, Landroidx/compose/material3/carousel/KeylineList;->getFirstFocal()Landroidx/compose/material3/carousel/Keyline;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/material3/carousel/Keyline;->getUnadjustedOffset()F

    move-result v2

    invoke-virtual {p0}, Landroidx/compose/material3/carousel/Strategy;->getItemMainAxisSize()F

    move-result v4

    div-float/2addr v4, v6

    sub-float/2addr v2, v4

    .line 49
    invoke-static {v2}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v4

    :cond_1
    add-int/lit8 v0, v0, 0x1

    if-le p2, v0, :cond_2

    sub-int v0, p2, v3

    if-lt p1, v0, :cond_2

    sub-int/2addr p1, p2

    add-int/2addr p1, v3

    .line 52
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 53
    invoke-virtual {p0}, Landroidx/compose/material3/carousel/Strategy;->getEndKeylineSteps()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 54
    invoke-virtual {p0}, Landroidx/compose/material3/carousel/Strategy;->getEndKeylineSteps()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/material3/carousel/KeylineList;

    .line 56
    invoke-virtual {p1}, Landroidx/compose/material3/carousel/KeylineList;->getFirstFocal()Landroidx/compose/material3/carousel/Keyline;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/material3/carousel/Keyline;->getUnadjustedOffset()F

    move-result p1

    invoke-virtual {p0}, Landroidx/compose/material3/carousel/Strategy;->getItemMainAxisSize()F

    move-result p0

    div-float/2addr p0, v6

    sub-float/2addr p1, p0

    invoke-static {p1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v4

    :cond_2
    return v4
.end method
