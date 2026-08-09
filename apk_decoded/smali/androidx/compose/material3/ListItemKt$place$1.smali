.class final Landroidx/compose/material3/ListItemKt$place$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ListItem.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/ListItemKt;->place(Landroidx/compose/ui/layout/MeasureScope;IILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;ZIII)Landroidx/compose/ui/layout/MeasureResult;
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
.field final synthetic $endPadding:I

.field final synthetic $headlinePlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $height:I

.field final synthetic $isThreeLine:Z

.field final synthetic $leadingPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $overlinePlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $startPadding:I

.field final synthetic $supportingPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $topPadding:I

.field final synthetic $trailingPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $width:I


# direct methods
.method constructor <init>(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;IZILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;III)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/ListItemKt$place$1;->$leadingPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput-object p2, p0, Landroidx/compose/material3/ListItemKt$place$1;->$trailingPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput p3, p0, Landroidx/compose/material3/ListItemKt$place$1;->$startPadding:I

    iput-boolean p4, p0, Landroidx/compose/material3/ListItemKt$place$1;->$isThreeLine:Z

    iput p5, p0, Landroidx/compose/material3/ListItemKt$place$1;->$topPadding:I

    iput-object p6, p0, Landroidx/compose/material3/ListItemKt$place$1;->$headlinePlaceable:Landroidx/compose/ui/layout/Placeable;

    iput-object p7, p0, Landroidx/compose/material3/ListItemKt$place$1;->$overlinePlaceable:Landroidx/compose/ui/layout/Placeable;

    iput-object p8, p0, Landroidx/compose/material3/ListItemKt$place$1;->$supportingPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput p9, p0, Landroidx/compose/material3/ListItemKt$place$1;->$height:I

    iput p10, p0, Landroidx/compose/material3/ListItemKt$place$1;->$width:I

    iput p11, p0, Landroidx/compose/material3/ListItemKt$place$1;->$endPadding:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 492
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/ListItemKt$place$1;->invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V
    .locals 14

    .line 493
    iget-object v1, p0, Landroidx/compose/material3/ListItemKt$place$1;->$leadingPlaceable:Landroidx/compose/ui/layout/Placeable;

    if-eqz v1, :cond_1

    iget v2, p0, Landroidx/compose/material3/ListItemKt$place$1;->$startPadding:I

    iget-boolean v0, p0, Landroidx/compose/material3/ListItemKt$place$1;->$isThreeLine:Z

    iget v3, p0, Landroidx/compose/material3/ListItemKt$place$1;->$topPadding:I

    iget v4, p0, Landroidx/compose/material3/ListItemKt$place$1;->$height:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 496
    :cond_0
    sget-object v0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getCenterVertically()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v0

    invoke-virtual {v1}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v3

    invoke-interface {v0, v3, v4}, Landroidx/compose/ui/Alignment$Vertical;->align(II)I

    move-result v0

    move v3, v0

    :goto_0
    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    .line 494
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 499
    :cond_1
    iget-object v8, p0, Landroidx/compose/material3/ListItemKt$place$1;->$trailingPlaceable:Landroidx/compose/ui/layout/Placeable;

    if-eqz v8, :cond_3

    iget v0, p0, Landroidx/compose/material3/ListItemKt$place$1;->$width:I

    iget v1, p0, Landroidx/compose/material3/ListItemKt$place$1;->$endPadding:I

    iget-boolean v2, p0, Landroidx/compose/material3/ListItemKt$place$1;->$isThreeLine:Z

    iget v3, p0, Landroidx/compose/material3/ListItemKt$place$1;->$topPadding:I

    iget v4, p0, Landroidx/compose/material3/ListItemKt$place$1;->$height:I

    sub-int/2addr v0, v1

    .line 501
    invoke-virtual {v8}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v1

    sub-int v9, v0, v1

    if-eqz v2, :cond_2

    move v10, v3

    goto :goto_1

    .line 502
    :cond_2
    sget-object v0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getCenterVertically()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v0

    invoke-virtual {v8}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v1

    invoke-interface {v0, v1, v4}, Landroidx/compose/ui/Alignment$Vertical;->align(II)I

    move-result v0

    move v10, v0

    :goto_1
    const/4 v12, 0x4

    const/4 v13, 0x0

    const/4 v11, 0x0

    move-object v7, p1

    .line 500
    invoke-static/range {v7 .. v13}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 506
    :cond_3
    iget v0, p0, Landroidx/compose/material3/ListItemKt$place$1;->$startPadding:I

    iget-object v1, p0, Landroidx/compose/material3/ListItemKt$place$1;->$leadingPlaceable:Landroidx/compose/ui/layout/Placeable;

    invoke-static {v1}, Landroidx/compose/material3/internal/TextFieldImplKt;->widthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v1

    add-int/2addr v0, v1

    .line 508
    iget-boolean v1, p0, Landroidx/compose/material3/ListItemKt$place$1;->$isThreeLine:Z

    if-eqz v1, :cond_4

    .line 509
    iget v1, p0, Landroidx/compose/material3/ListItemKt$place$1;->$topPadding:I

    goto :goto_2

    .line 512
    :cond_4
    iget-object v1, p0, Landroidx/compose/material3/ListItemKt$place$1;->$headlinePlaceable:Landroidx/compose/ui/layout/Placeable;

    invoke-static {v1}, Landroidx/compose/material3/internal/TextFieldImplKt;->heightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v1

    .line 513
    iget-object v2, p0, Landroidx/compose/material3/ListItemKt$place$1;->$overlinePlaceable:Landroidx/compose/ui/layout/Placeable;

    invoke-static {v2}, Landroidx/compose/material3/internal/TextFieldImplKt;->heightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v2

    add-int/2addr v1, v2

    .line 514
    iget-object v2, p0, Landroidx/compose/material3/ListItemKt$place$1;->$supportingPlaceable:Landroidx/compose/ui/layout/Placeable;

    invoke-static {v2}, Landroidx/compose/material3/internal/TextFieldImplKt;->heightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v2

    add-int/2addr v1, v2

    .line 515
    sget-object v2, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/Alignment$Companion;->getCenterVertically()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v2

    iget v3, p0, Landroidx/compose/material3/ListItemKt$place$1;->$height:I

    invoke-interface {v2, v1, v3}, Landroidx/compose/ui/Alignment$Vertical;->align(II)I

    move-result v1

    .line 519
    :goto_2
    iget-object v3, p0, Landroidx/compose/material3/ListItemKt$place$1;->$overlinePlaceable:Landroidx/compose/ui/layout/Placeable;

    if-eqz v3, :cond_5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    move v4, v0

    move v5, v1

    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 520
    :cond_5
    iget-object v2, p0, Landroidx/compose/material3/ListItemKt$place$1;->$overlinePlaceable:Landroidx/compose/ui/layout/Placeable;

    invoke-static {v2}, Landroidx/compose/material3/internal/TextFieldImplKt;->heightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v2

    add-int/2addr v1, v2

    .line 522
    iget-object v3, p0, Landroidx/compose/material3/ListItemKt$place$1;->$headlinePlaceable:Landroidx/compose/ui/layout/Placeable;

    if-eqz v3, :cond_6

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    move v4, v0

    move v5, v1

    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 523
    :cond_6
    iget-object v2, p0, Landroidx/compose/material3/ListItemKt$place$1;->$headlinePlaceable:Landroidx/compose/ui/layout/Placeable;

    invoke-static {v2}, Landroidx/compose/material3/internal/TextFieldImplKt;->heightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v2

    add-int v5, v1, v2

    .line 525
    iget-object v3, p0, Landroidx/compose/material3/ListItemKt$place$1;->$supportingPlaceable:Landroidx/compose/ui/layout/Placeable;

    if-eqz v3, :cond_7

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    move v4, v0

    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    :cond_7
    return-void
.end method
