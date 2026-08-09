.class public interface abstract Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;
.super Ljava/lang/Object;
.source "FlowLayout.kt"

# interfaces
.implements Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008`\u0018\u00002\u00020\u0001J=\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\u000bH\u0016\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ2\u0010\u001b\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0006\u0010 \u001a\u00020\u00142\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u0014H\u0016Jg\u0010$\u001a\u00020%2\u000e\u0010&\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001d0\'2\u0006\u0010(\u001a\u00020)2\u0006\u0010#\u001a\u00020\u00142\u0006\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020\u00142\u0006\u0010 \u001a\u00020\u00142\u0008\u0010-\u001a\u0004\u0018\u00010+2\u0006\u0010.\u001a\u00020\u00142\u0006\u0010/\u001a\u00020\u00142\u0006\u00100\u001a\u00020\u0014H\u0016\u00a2\u0006\u0002\u00101J(\u00102\u001a\u0002032\u0006\u0010,\u001a\u00020\u00142\u0006\u00104\u001a\u00020+2\u0006\u0010*\u001a\u00020+2\u0006\u0010(\u001a\u00020)H\u0016J\u000c\u00105\u001a\u00020\u0014*\u00020\u001dH\u0016J\u000c\u00106\u001a\u00020\u0014*\u00020\u001dH\u0016R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0012\u0010\n\u001a\u00020\u000bX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000cR\u0012\u0010\r\u001a\u00020\u000eX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010\u00f8\u0001\u0002\u0082\u0002\u0011\n\u0002\u0008!\n\u0005\u0008\u00a1\u001e0\u0001\n\u0004\u0008!0\u0001\u00a8\u00067\u00c0\u0006\u0001"
    }
    d2 = {
        "Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;",
        "Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;",
        "crossAxisAlignment",
        "Landroidx/compose/foundation/layout/CrossAxisAlignment;",
        "getCrossAxisAlignment",
        "()Landroidx/compose/foundation/layout/CrossAxisAlignment;",
        "horizontalArrangement",
        "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
        "getHorizontalArrangement",
        "()Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
        "isHorizontal",
        "",
        "()Z",
        "verticalArrangement",
        "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
        "getVerticalArrangement",
        "()Landroidx/compose/foundation/layout/Arrangement$Vertical;",
        "createConstraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "mainAxisMin",
        "",
        "crossAxisMin",
        "mainAxisMax",
        "crossAxisMax",
        "isPrioritizing",
        "createConstraints-xF2OJ5Q",
        "(IIIIZ)J",
        "getCrossAxisPosition",
        "placeable",
        "Landroidx/compose/ui/layout/Placeable;",
        "rowColumnParentData",
        "Landroidx/compose/foundation/layout/RowColumnParentData;",
        "crossAxisLayoutSize",
        "layoutDirection",
        "Landroidx/compose/ui/unit/LayoutDirection;",
        "beforeCrossAxisAlignmentLine",
        "placeHelper",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "placeables",
        "",
        "measureScope",
        "Landroidx/compose/ui/layout/MeasureScope;",
        "mainAxisPositions",
        "",
        "mainAxisLayoutSize",
        "crossAxisOffset",
        "currentLineIndex",
        "startIndex",
        "endIndex",
        "([Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/MeasureScope;I[III[IIII)Landroidx/compose/ui/layout/MeasureResult;",
        "populateMainAxisPositions",
        "",
        "childrenMainAxisSize",
        "crossAxisSize",
        "mainAxisSize",
        "foundation-layout_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public createConstraints-xF2OJ5Q(IIIIZ)J
    .locals 1

    .line 516
    invoke-interface {p0}, Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    invoke-static {p5, p1, p2, p3, p4}, Landroidx/compose/foundation/layout/RowKt;->createRowConstraints(ZIIII)J

    move-result-wide p1

    goto :goto_0

    .line 525
    :cond_0
    invoke-static {p5, p1, p2, p3, p4}, Landroidx/compose/foundation/layout/ColumnKt;->createColumnConstraints(ZIIII)J

    move-result-wide p1

    :goto_0
    return-wide p1
.end method

.method public crossAxisSize(Landroidx/compose/ui/layout/Placeable;)I
    .locals 1

    .line 507
    invoke-interface {p0}, Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/compose/ui/layout/Placeable;->getMeasuredHeight()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/layout/Placeable;->getMeasuredWidth()I

    move-result p1

    :goto_0
    return p1
.end method

.method public abstract getCrossAxisAlignment()Landroidx/compose/foundation/layout/CrossAxisAlignment;
.end method

.method public getCrossAxisPosition(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/foundation/layout/RowColumnParentData;ILandroidx/compose/ui/unit/LayoutDirection;I)I
    .locals 1

    if-eqz p2, :cond_0

    .line 591
    invoke-virtual {p2}, Landroidx/compose/foundation/layout/RowColumnParentData;->getCrossAxisAlignment()Landroidx/compose/foundation/layout/CrossAxisAlignment;

    move-result-object p2

    if-nez p2, :cond_1

    :cond_0
    invoke-interface {p0}, Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;->getCrossAxisAlignment()Landroidx/compose/foundation/layout/CrossAxisAlignment;

    move-result-object p2

    .line 593
    :cond_1
    invoke-interface {p0, p1}, Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;->crossAxisSize(Landroidx/compose/ui/layout/Placeable;)I

    move-result v0

    sub-int/2addr p3, v0

    .line 594
    invoke-interface {p0}, Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 595
    sget-object p4, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    .line 592
    :cond_2
    invoke-virtual {p2, p3, p4, p1, p5}, Landroidx/compose/foundation/layout/CrossAxisAlignment;->align$foundation_layout_release(ILandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/layout/Placeable;I)I

    move-result p1

    return p1
.end method

.method public abstract getHorizontalArrangement()Landroidx/compose/foundation/layout/Arrangement$Horizontal;
.end method

.method public abstract getVerticalArrangement()Landroidx/compose/foundation/layout/Arrangement$Vertical;
.end method

.method public abstract isHorizontal()Z
.end method

.method public mainAxisSize(Landroidx/compose/ui/layout/Placeable;)I
    .locals 1

    .line 504
    invoke-interface {p0}, Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/compose/ui/layout/Placeable;->getMeasuredWidth()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/layout/Placeable;->getMeasuredHeight()I

    move-result p1

    :goto_0
    return p1
.end method

.method public placeHelper([Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/MeasureScope;I[III[IIII)Landroidx/compose/ui/layout/MeasureResult;
    .locals 14

    .line 550
    invoke-interface {p0}, Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    move/from16 v0, p5

    move/from16 v1, p6

    goto :goto_0

    :cond_0
    move/from16 v1, p5

    move/from16 v0, p6

    .line 557
    :goto_0
    new-instance v13, Landroidx/compose/foundation/layout/FlowLineMeasurePolicy$placeHelper$1$1;

    move-object v2, v13

    move-object/from16 v3, p7

    move/from16 v4, p8

    move/from16 v5, p9

    move/from16 v6, p10

    move-object v7, p1

    move-object v8, p0

    move/from16 v9, p6

    move-object/from16 v10, p2

    move/from16 v11, p3

    move-object/from16 v12, p4

    invoke-direct/range {v2 .. v12}, Landroidx/compose/foundation/layout/FlowLineMeasurePolicy$placeHelper$1$1;-><init>([IIII[Landroidx/compose/ui/layout/Placeable;Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;ILandroidx/compose/ui/layout/MeasureScope;I[I)V

    move-object v2, v13

    check-cast v2, Lkotlin/jvm/functions/Function1;

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 p1, p2

    move/from16 p2, v0

    move/from16 p3, v1

    move-object/from16 p4, v5

    move-object/from16 p5, v2

    move/from16 p6, v3

    move-object/from16 p7, v4

    invoke-static/range {p1 .. p7}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0
.end method

.method public populateMainAxisPositions(I[I[ILandroidx/compose/ui/layout/MeasureScope;)V
    .locals 7

    .line 610
    invoke-interface {p0}, Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 611
    invoke-interface {p0}, Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;->getHorizontalArrangement()Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    move-result-object v1

    .line 612
    move-object v2, p4

    check-cast v2, Landroidx/compose/ui/unit/Density;

    .line 615
    invoke-interface {p4}, Landroidx/compose/ui/layout/MeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v5

    move v3, p1

    move-object v4, p2

    move-object v6, p3

    .line 612
    invoke-interface/range {v1 .. v6}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->arrange(Landroidx/compose/ui/unit/Density;I[ILandroidx/compose/ui/unit/LayoutDirection;[I)V

    goto :goto_0

    .line 620
    :cond_0
    invoke-interface {p0}, Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;->getVerticalArrangement()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    move-result-object v0

    .line 621
    check-cast p4, Landroidx/compose/ui/unit/Density;

    invoke-interface {v0, p4, p1, p2, p3}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->arrange(Landroidx/compose/ui/unit/Density;I[I[I)V

    :goto_0
    return-void
.end method
