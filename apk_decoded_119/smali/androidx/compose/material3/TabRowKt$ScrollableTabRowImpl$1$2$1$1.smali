.class final Landroidx/compose/material3/TabRowKt$ScrollableTabRowImpl$1$2$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TabRow.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/TabRowKt$ScrollableTabRowImpl$1$2$1;->measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
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
    value = "SMAP\nTabRow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TabRow.kt\nandroidx/compose/material3/TabRowKt$ScrollableTabRowImpl$1$2$1$1\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/Dp\n*L\n1#1,1355:1\n69#2,4:1356\n74#2:1361\n33#2,6:1362\n33#2,6:1368\n50#3:1360\n*S KotlinDebug\n*F\n+ 1 TabRow.kt\nandroidx/compose/material3/TabRowKt$ScrollableTabRowImpl$1$2$1$1\n*L\n817#1:1356,4\n817#1:1361\n822#1:1362,6\n826#1:1368,6\n819#1:1360\n*E\n"
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
.field final synthetic $dividerPlaceables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $edgePadding:F

.field final synthetic $indicatorPlaceables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $layoutHeight:I

.field final synthetic $left:Lkotlin/jvm/internal/Ref$FloatRef;

.field final synthetic $padding:I

.field final synthetic $positions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/material3/TabPosition;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $scrollableTabData:Landroidx/compose/material3/ScrollableTabData;

.field final synthetic $selectedTabIndex:I

.field final synthetic $tabPlaceables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $this_Layout:Landroidx/compose/ui/layout/MeasureScope;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$FloatRef;FLjava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/compose/material3/ScrollableTabData;Landroidx/compose/ui/layout/MeasureScope;ILjava/util/List;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$FloatRef;",
            "F",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;",
            "Landroidx/compose/material3/ScrollableTabData;",
            "Landroidx/compose/ui/layout/MeasureScope;",
            "I",
            "Ljava/util/List<",
            "Landroidx/compose/material3/TabPosition;",
            ">;II)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImpl$1$2$1$1;->$left:Lkotlin/jvm/internal/Ref$FloatRef;

    iput p2, p0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImpl$1$2$1$1;->$edgePadding:F

    iput-object p3, p0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImpl$1$2$1$1;->$tabPlaceables:Ljava/util/List;

    iput-object p4, p0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImpl$1$2$1$1;->$dividerPlaceables:Ljava/util/List;

    iput-object p5, p0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImpl$1$2$1$1;->$indicatorPlaceables:Ljava/util/List;

    iput-object p6, p0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImpl$1$2$1$1;->$scrollableTabData:Landroidx/compose/material3/ScrollableTabData;

    iput-object p7, p0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImpl$1$2$1$1;->$this_Layout:Landroidx/compose/ui/layout/MeasureScope;

    iput p8, p0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImpl$1$2$1$1;->$padding:I

    iput-object p9, p0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImpl$1$2$1$1;->$positions:Ljava/util/List;

    iput p10, p0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImpl$1$2$1$1;->$selectedTabIndex:I

    iput p11, p0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImpl$1$2$1$1;->$layoutHeight:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 815
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImpl$1$2$1$1;->invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V
    .locals 17

    move-object/from16 v0, p0

    .line 816
    iget-object v1, v0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImpl$1$2$1$1;->$left:Lkotlin/jvm/internal/Ref$FloatRef;

    iget v2, v0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImpl$1$2$1$1;->$edgePadding:F

    iput v2, v1, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 817
    iget-object v1, v0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImpl$1$2$1$1;->$tabPlaceables:Ljava/util/List;

    iget-object v2, v0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImpl$1$2$1$1;->$this_Layout:Landroidx/compose/ui/layout/MeasureScope;

    iget-object v3, v0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImpl$1$2$1$1;->$left:Lkotlin/jvm/internal/Ref$FloatRef;

    iget-object v4, v0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImpl$1$2$1$1;->$positions:Ljava/util/List;

    .line 1357
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_0

    .line 1358
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 1359
    move-object v10, v8

    check-cast v10, Landroidx/compose/ui/layout/Placeable;

    .line 818
    iget v8, v3, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-interface {v2, v8}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v11

    const/4 v14, 0x4

    const/4 v15, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v9, p1

    invoke-static/range {v9 .. v15}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 819
    iget v8, v3, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/material3/TabPosition;

    invoke-virtual {v9}, Landroidx/compose/material3/TabPosition;->getWidth-D9Ej5fM()F

    move-result v9

    add-float/2addr v8, v9

    .line 1360
    invoke-static {v8}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v8

    .line 819
    iput v8, v3, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 822
    :cond_0
    iget-object v1, v0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImpl$1$2$1$1;->$dividerPlaceables:Ljava/util/List;

    iget v2, v0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImpl$1$2$1$1;->$layoutHeight:I

    .line 1363
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    move v4, v6

    :goto_1
    if-ge v4, v3, :cond_1

    .line 1364
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 1365
    move-object v8, v5

    check-cast v8, Landroidx/compose/ui/layout/Placeable;

    .line 823
    invoke-virtual {v8}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v5

    sub-int v10, v2, v5

    const/4 v12, 0x4

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object/from16 v7, p1

    invoke-static/range {v7 .. v13}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 826
    :cond_1
    iget-object v1, v0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImpl$1$2$1$1;->$indicatorPlaceables:Ljava/util/List;

    iget-object v2, v0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImpl$1$2$1$1;->$this_Layout:Landroidx/compose/ui/layout/MeasureScope;

    iget-object v3, v0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImpl$1$2$1$1;->$positions:Ljava/util/List;

    iget v4, v0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImpl$1$2$1$1;->$selectedTabIndex:I

    iget v5, v0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImpl$1$2$1$1;->$layoutHeight:I

    .line 1369
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    move v8, v6

    :goto_2
    if-ge v8, v7, :cond_2

    .line 1370
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 1371
    move-object v11, v9

    check-cast v11, Landroidx/compose/ui/layout/Placeable;

    .line 828
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/material3/TabPosition;

    invoke-virtual {v9}, Landroidx/compose/material3/TabPosition;->getWidth-D9Ej5fM()F

    move-result v9

    invoke-interface {v2, v9}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v9

    invoke-virtual {v11}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v10

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 829
    invoke-virtual {v11}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v9

    sub-int v13, v5, v9

    const/4 v15, 0x4

    const/16 v16, 0x0

    const/4 v14, 0x0

    move-object/from16 v10, p1

    invoke-static/range {v10 .. v16}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 832
    :cond_2
    iget-object v1, v0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImpl$1$2$1$1;->$scrollableTabData:Landroidx/compose/material3/ScrollableTabData;

    .line 833
    iget-object v2, v0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImpl$1$2$1$1;->$this_Layout:Landroidx/compose/ui/layout/MeasureScope;

    check-cast v2, Landroidx/compose/ui/unit/Density;

    .line 834
    iget v3, v0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImpl$1$2$1$1;->$padding:I

    .line 835
    iget-object v4, v0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImpl$1$2$1$1;->$positions:Ljava/util/List;

    .line 836
    iget v5, v0, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImpl$1$2$1$1;->$selectedTabIndex:I

    .line 832
    invoke-virtual {v1, v2, v3, v4, v5}, Landroidx/compose/material3/ScrollableTabData;->onLaidOut(Landroidx/compose/ui/unit/Density;ILjava/util/List;I)V

    return-void
.end method
