.class final Landroidx/compose/foundation/DrawGlowOverscrollModifier;
.super Landroidx/compose/ui/platform/InspectorValueInfo;
.source "AndroidOverscroll.android.kt"

# interfaces
.implements Landroidx/compose/ui/draw/DrawModifier;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u0002B6\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000c0\n\u00a2\u0006\u0002\u0008\r\u00a2\u0006\u0002\u0010\u000eJ6\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\n\u0010\u0017\u001a\u00060\u0018j\u0002`\u0019H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u000c\u0010\u001c\u001a\u00020\u000c*\u00020\u001dH\u0016J \u0010\u001e\u001a\u00020\u0010*\u00020\u001f2\u0006\u0010 \u001a\u00020\u00162\n\u0010\u0017\u001a\u00060\u0018j\u0002`\u0019H\u0002J \u0010!\u001a\u00020\u0010*\u00020\u001f2\u0006\u0010\"\u001a\u00020\u00162\n\u0010\u0017\u001a\u00060\u0018j\u0002`\u0019H\u0002J \u0010#\u001a\u00020\u0010*\u00020\u001f2\u0006\u0010$\u001a\u00020\u00162\n\u0010\u0017\u001a\u00060\u0018j\u0002`\u0019H\u0002J \u0010%\u001a\u00020\u0010*\u00020\u001f2\u0006\u0010&\u001a\u00020\u00162\n\u0010\u0017\u001a\u00060\u0018j\u0002`\u0019H\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\'"
    }
    d2 = {
        "Landroidx/compose/foundation/DrawGlowOverscrollModifier;",
        "Landroidx/compose/ui/draw/DrawModifier;",
        "Landroidx/compose/ui/platform/InspectorValueInfo;",
        "overscrollEffect",
        "Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;",
        "edgeEffectWrapper",
        "Landroidx/compose/foundation/EdgeEffectWrapper;",
        "overscrollConfig",
        "Landroidx/compose/foundation/OverscrollConfiguration;",
        "inspectorInfo",
        "Lkotlin/Function1;",
        "Landroidx/compose/ui/platform/InspectorInfo;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/foundation/EdgeEffectWrapper;Landroidx/compose/foundation/OverscrollConfiguration;Lkotlin/jvm/functions/Function1;)V",
        "drawWithRotationAndOffset",
        "",
        "rotationDegrees",
        "",
        "offset",
        "Landroidx/compose/ui/geometry/Offset;",
        "edgeEffect",
        "Landroid/widget/EdgeEffect;",
        "canvas",
        "Landroid/graphics/Canvas;",
        "Landroidx/compose/ui/graphics/NativeCanvas;",
        "drawWithRotationAndOffset-ubNVwUQ",
        "(FJLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z",
        "draw",
        "Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;",
        "drawBottomGlow",
        "Landroidx/compose/ui/graphics/drawscope/DrawScope;",
        "bottom",
        "drawLeftGlow",
        "left",
        "drawRightGlow",
        "right",
        "drawTopGlow",
        "top",
        "foundation_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final edgeEffectWrapper:Landroidx/compose/foundation/EdgeEffectWrapper;

.field private final overscrollConfig:Landroidx/compose/foundation/OverscrollConfiguration;

.field private final overscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/foundation/EdgeEffectWrapper;Landroidx/compose/foundation/OverscrollConfiguration;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;",
            "Landroidx/compose/foundation/EdgeEffectWrapper;",
            "Landroidx/compose/foundation/OverscrollConfiguration;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/platform/InspectorInfo;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 320
    invoke-direct {p0, p4}, Landroidx/compose/ui/platform/InspectorValueInfo;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 316
    iput-object p1, p0, Landroidx/compose/foundation/DrawGlowOverscrollModifier;->overscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    .line 317
    iput-object p2, p0, Landroidx/compose/foundation/DrawGlowOverscrollModifier;->edgeEffectWrapper:Landroidx/compose/foundation/EdgeEffectWrapper;

    .line 318
    iput-object p3, p0, Landroidx/compose/foundation/DrawGlowOverscrollModifier;->overscrollConfig:Landroidx/compose/foundation/OverscrollConfiguration;

    return-void
.end method

.method private final drawBottomGlow(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z
    .locals 8

    .line 391
    iget-object v0, p0, Landroidx/compose/foundation/DrawGlowOverscrollModifier;->overscrollConfig:Landroidx/compose/foundation/OverscrollConfiguration;

    invoke-virtual {v0}, Landroidx/compose/foundation/OverscrollConfiguration;->getDrawPadding()Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/foundation/layout/PaddingValues;->calculateBottomPadding-D9Ej5fM()F

    move-result v0

    invoke-interface {p1, v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->toPx-0680j_4(F)F

    move-result v0

    .line 392
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v1

    neg-float v1, v1

    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result p1

    neg-float p1, p1

    add-float/2addr p1, v0

    invoke-static {v1, p1}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v4

    const/high16 v3, 0x43340000    # 180.0f

    move-object v2, p0

    move-object v6, p2

    move-object v7, p3

    .line 393
    invoke-direct/range {v2 .. v7}, Landroidx/compose/foundation/DrawGlowOverscrollModifier;->drawWithRotationAndOffset-ubNVwUQ(FJLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    move-result p1

    return p1
.end method

.method private final drawLeftGlow(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z
    .locals 7

    .line 357
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v0

    neg-float v0, v0

    .line 358
    iget-object v1, p0, Landroidx/compose/foundation/DrawGlowOverscrollModifier;->overscrollConfig:Landroidx/compose/foundation/OverscrollConfiguration;

    invoke-virtual {v1}, Landroidx/compose/foundation/OverscrollConfiguration;->getDrawPadding()Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v1

    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v2

    invoke-interface {v1, v2}, Landroidx/compose/foundation/layout/PaddingValues;->calculateLeftPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v1

    invoke-interface {p1, v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->toPx-0680j_4(F)F

    move-result p1

    .line 356
    invoke-static {v0, p1}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v3

    const/high16 v2, 0x43870000    # 270.0f

    move-object v1, p0

    move-object v5, p2

    move-object v6, p3

    .line 360
    invoke-direct/range {v1 .. v6}, Landroidx/compose/foundation/DrawGlowOverscrollModifier;->drawWithRotationAndOffset-ubNVwUQ(FJLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    move-result p1

    return p1
.end method

.method private final drawRightGlow(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z
    .locals 7

    .line 379
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v0

    invoke-static {v0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v0

    .line 380
    iget-object v1, p0, Landroidx/compose/foundation/DrawGlowOverscrollModifier;->overscrollConfig:Landroidx/compose/foundation/OverscrollConfiguration;

    invoke-virtual {v1}, Landroidx/compose/foundation/OverscrollConfiguration;->getDrawPadding()Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v1

    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v2

    invoke-interface {v1, v2}, Landroidx/compose/foundation/layout/PaddingValues;->calculateRightPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v1

    int-to-float v0, v0

    neg-float v0, v0

    .line 381
    invoke-interface {p1, v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->toPx-0680j_4(F)F

    move-result p1

    add-float/2addr v0, p1

    const/4 p1, 0x0

    invoke-static {p1, v0}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v3

    const/high16 v2, 0x42b40000    # 90.0f

    move-object v1, p0

    move-object v5, p2

    move-object v6, p3

    .line 382
    invoke-direct/range {v1 .. v6}, Landroidx/compose/foundation/DrawGlowOverscrollModifier;->drawWithRotationAndOffset-ubNVwUQ(FJLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    move-result p1

    return p1
.end method

.method private final drawTopGlow(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z
    .locals 7

    .line 369
    iget-object v0, p0, Landroidx/compose/foundation/DrawGlowOverscrollModifier;->overscrollConfig:Landroidx/compose/foundation/OverscrollConfiguration;

    invoke-virtual {v0}, Landroidx/compose/foundation/OverscrollConfiguration;->getDrawPadding()Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/foundation/layout/PaddingValues;->calculateTopPadding-D9Ej5fM()F

    move-result v0

    invoke-interface {p1, v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->toPx-0680j_4(F)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v3

    const/4 v2, 0x0

    move-object v1, p0

    move-object v5, p2

    move-object v6, p3

    .line 370
    invoke-direct/range {v1 .. v6}, Landroidx/compose/foundation/DrawGlowOverscrollModifier;->drawWithRotationAndOffset-ubNVwUQ(FJLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    move-result p1

    return p1
.end method

.method private final drawWithRotationAndOffset-ubNVwUQ(FJLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z
    .locals 1

    .line 407
    invoke-virtual {p5}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 408
    invoke-virtual {p5, p1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 409
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result p1

    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p2

    invoke-virtual {p5, p1, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 410
    invoke-virtual {p4, p5}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result p1

    .line 411
    invoke-virtual {p5, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return p1
.end method


# virtual methods
.method public draw(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V
    .locals 7

    .line 324
    iget-object v0, p0, Landroidx/compose/foundation/DrawGlowOverscrollModifier;->overscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->getSize-NH-jbRc()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->updateSize-uvyYCjk$foundation_release(J)V

    .line 325
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->getSize-NH-jbRc()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->isEmpty-impl(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->drawContent()V

    return-void

    .line 330
    :cond_0
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->drawContent()V

    .line 331
    iget-object v0, p0, Landroidx/compose/foundation/DrawGlowOverscrollModifier;->overscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    invoke-virtual {v0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->getRedrawSignal$foundation_release()Landroidx/compose/runtime/MutableState;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    .line 332
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/graphics/AndroidCanvas_androidKt;->getNativeCanvas(Landroidx/compose/ui/graphics/Canvas;)Landroid/graphics/Canvas;

    move-result-object v0

    .line 334
    iget-object v1, p0, Landroidx/compose/foundation/DrawGlowOverscrollModifier;->edgeEffectWrapper:Landroidx/compose/foundation/EdgeEffectWrapper;

    .line 335
    invoke-virtual {v1}, Landroidx/compose/foundation/EdgeEffectWrapper;->isLeftAnimating()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 336
    invoke-virtual {v1}, Landroidx/compose/foundation/EdgeEffectWrapper;->getOrCreateLeftEffect()Landroid/widget/EdgeEffect;

    move-result-object v2

    .line 337
    move-object v4, p1

    check-cast v4, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    invoke-direct {p0, v4, v2, v0}, Landroidx/compose/foundation/DrawGlowOverscrollModifier;->drawLeftGlow(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v3

    .line 339
    :goto_0
    invoke-virtual {v1}, Landroidx/compose/foundation/EdgeEffectWrapper;->isTopAnimating()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    .line 340
    invoke-virtual {v1}, Landroidx/compose/foundation/EdgeEffectWrapper;->getOrCreateTopEffect()Landroid/widget/EdgeEffect;

    move-result-object v4

    .line 341
    move-object v6, p1

    check-cast v6, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    invoke-direct {p0, v6, v4, v0}, Landroidx/compose/foundation/DrawGlowOverscrollModifier;->drawTopGlow(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2

    :cond_3
    :goto_1
    move v2, v5

    .line 343
    :cond_4
    :goto_2
    invoke-virtual {v1}, Landroidx/compose/foundation/EdgeEffectWrapper;->isRightAnimating()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 344
    invoke-virtual {v1}, Landroidx/compose/foundation/EdgeEffectWrapper;->getOrCreateRightEffect()Landroid/widget/EdgeEffect;

    move-result-object v4

    .line 345
    move-object v6, p1

    check-cast v6, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    invoke-direct {p0, v6, v4, v0}, Landroidx/compose/foundation/DrawGlowOverscrollModifier;->drawRightGlow(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    move-result v4

    if-nez v4, :cond_6

    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    move v2, v3

    goto :goto_4

    :cond_6
    :goto_3
    move v2, v5

    .line 347
    :cond_7
    :goto_4
    invoke-virtual {v1}, Landroidx/compose/foundation/EdgeEffectWrapper;->isBottomAnimating()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 348
    invoke-virtual {v1}, Landroidx/compose/foundation/EdgeEffectWrapper;->getOrCreateBottomEffect()Landroid/widget/EdgeEffect;

    move-result-object v1

    .line 349
    check-cast p1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    invoke-direct {p0, p1, v1, v0}, Landroidx/compose/foundation/DrawGlowOverscrollModifier;->drawBottomGlow(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    move-result p1

    if-nez p1, :cond_8

    if-eqz v2, :cond_9

    :cond_8
    move v3, v5

    :cond_9
    move v2, v3

    :cond_a
    if-eqz v2, :cond_b

    .line 351
    iget-object p1, p0, Landroidx/compose/foundation/DrawGlowOverscrollModifier;->overscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    invoke-virtual {p1}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->invalidateOverscroll$foundation_release()V

    :cond_b
    return-void
.end method
