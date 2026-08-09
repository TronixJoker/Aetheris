.class final Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$3$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ProgressIndicator.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/ProgressIndicatorKt;->CircularProgressIndicator-IyT6zlY(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JFJIFLandroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/graphics/drawscope/DrawScope;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProgressIndicator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProgressIndicator.kt\nandroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$3$1\n+ 2 Dp.kt\nandroidx/compose/ui/unit/Dp\n*L\n1#1,1024:1\n50#2:1025\n*S KotlinDebug\n*F\n+ 1 ProgressIndicator.kt\nandroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$3$1\n*L\n598#1:1025\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/ui/graphics/drawscope/DrawScope;",
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
.field final synthetic $coercedProgress:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $color:J

.field final synthetic $gapSize:F

.field final synthetic $stroke:Landroidx/compose/ui/graphics/drawscope/Stroke;

.field final synthetic $strokeCap:I

.field final synthetic $strokeWidth:F

.field final synthetic $trackColor:J


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function0;IFFJLandroidx/compose/ui/graphics/drawscope/Stroke;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Float;",
            ">;IFFJ",
            "Landroidx/compose/ui/graphics/drawscope/Stroke;",
            "J)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$3$1;->$coercedProgress:Lkotlin/jvm/functions/Function0;

    iput p2, p0, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$3$1;->$strokeCap:I

    iput p3, p0, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$3$1;->$gapSize:F

    iput p4, p0, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$3$1;->$strokeWidth:F

    iput-wide p5, p0, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$3$1;->$trackColor:J

    iput-object p7, p0, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$3$1;->$stroke:Landroidx/compose/ui/graphics/drawscope/Stroke;

    iput-wide p8, p0, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$3$1;->$color:J

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 590
    check-cast p1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$3$1;->invoke(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V
    .locals 12

    .line 593
    iget-object v0, p0, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$3$1;->$coercedProgress:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float v4, v0, v1

    .line 595
    iget v0, p0, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$3$1;->$strokeCap:I

    sget-object v2, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v2

    invoke-static {v0, v2}, Landroidx/compose/ui/graphics/StrokeCap;->equals-impl0(II)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v0

    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    goto :goto_0

    .line 598
    :cond_0
    iget v0, p0, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$3$1;->$gapSize:F

    iget v2, p0, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$3$1;->$strokeWidth:F

    add-float/2addr v0, v2

    .line 1025
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    goto :goto_1

    .line 596
    :cond_1
    :goto_0
    iget v0, p0, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$3$1;->$gapSize:F

    .line 601
    :goto_1
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v2

    invoke-interface {p1, v2}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->toDp-u2uoSUM(F)F

    move-result v2

    float-to-double v2, v2

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v5

    double-to-float v2, v2

    div-float/2addr v0, v2

    mul-float/2addr v0, v1

    const/high16 v3, 0x43870000    # 270.0f

    add-float v2, v3, v4

    .line 604
    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v5

    add-float v7, v2, v5

    sub-float/2addr v1, v4

    .line 605
    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v2, 0x2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    sub-float v8, v1, v0

    .line 606
    iget-wide v9, p0, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$3$1;->$trackColor:J

    .line 607
    iget-object v11, p0, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$3$1;->$stroke:Landroidx/compose/ui/graphics/drawscope/Stroke;

    move-object v6, p1

    .line 603
    invoke-static/range {v6 .. v11}, Landroidx/compose/material3/ProgressIndicatorKt;->access$drawCircularIndicator-42QJj7c(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFJLandroidx/compose/ui/graphics/drawscope/Stroke;)V

    .line 609
    iget-wide v5, p0, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$3$1;->$color:J

    iget-object v7, p0, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$3$1;->$stroke:Landroidx/compose/ui/graphics/drawscope/Stroke;

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Landroidx/compose/material3/ProgressIndicatorKt;->access$drawDeterminateCircularIndicator-42QJj7c(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFJLandroidx/compose/ui/graphics/drawscope/Stroke;)V

    return-void
.end method
