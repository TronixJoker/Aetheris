.class final Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ProgressIndicator.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/ProgressIndicatorKt;->LinearProgressIndicator-GJbTh5U(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JJIFLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V
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
.field final synthetic $color:J

.field final synthetic $strokeCap:I


# direct methods
.method constructor <init>(JI)V
    .locals 0

    iput-wide p1, p0, Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$2$1;->$color:J

    iput p3, p0, Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$2$1;->$strokeCap:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 145
    check-cast p1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$2$1;->invoke(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V
    .locals 6

    .line 146
    sget-object v0, Landroidx/compose/material3/ProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorDefaults;

    .line 148
    sget-object v1, Landroidx/compose/material3/ProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorDefaults;

    invoke-virtual {v1}, Landroidx/compose/material3/ProgressIndicatorDefaults;->getLinearTrackStopIndicatorSize-D9Ej5fM()F

    move-result v2

    .line 149
    iget-wide v3, p0, Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$2$1;->$color:J

    .line 150
    iget v5, p0, Landroidx/compose/material3/ProgressIndicatorKt$LinearProgressIndicator$2$1;->$strokeCap:I

    move-object v1, p1

    .line 146
    invoke-virtual/range {v0 .. v5}, Landroidx/compose/material3/ProgressIndicatorDefaults;->drawStopIndicator-EgI2THU(Landroidx/compose/ui/graphics/drawscope/DrawScope;FJI)V

    return-void
.end method
