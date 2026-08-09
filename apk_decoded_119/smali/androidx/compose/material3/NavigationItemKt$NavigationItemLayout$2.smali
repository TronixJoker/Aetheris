.class final Landroidx/compose/material3/NavigationItemKt$NavigationItemLayout$2;
.super Lkotlin/jvm/internal/Lambda;
.source "NavigationItem.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/NavigationItemKt;->NavigationItemLayout-KmRX-Dg(Landroidx/compose/foundation/interaction/InteractionSource;JLandroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;FFFFFLandroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
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
.field final synthetic $$changed:I

.field final synthetic $$changed1:I

.field final synthetic $animationProgress:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $icon:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $iconPosition:I

.field final synthetic $indicatorColor:J

.field final synthetic $indicatorHorizontalPadding:F

.field final synthetic $indicatorShape:Landroidx/compose/ui/graphics/Shape;

.field final synthetic $indicatorToLabelVerticalPadding:F

.field final synthetic $indicatorVerticalPadding:F

.field final synthetic $interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;

.field final synthetic $label:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $startIconToLabelHorizontalPadding:F

.field final synthetic $topIconItemVerticalPadding:F


# direct methods
.method constructor <init>(Landroidx/compose/foundation/interaction/InteractionSource;JLandroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;FFFFFII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/interaction/InteractionSource;",
            "J",
            "Landroidx/compose/ui/graphics/Shape;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;I",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Float;",
            ">;FFFFFII)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/NavigationItemKt$NavigationItemLayout$2;->$interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;

    iput-wide p2, p0, Landroidx/compose/material3/NavigationItemKt$NavigationItemLayout$2;->$indicatorColor:J

    iput-object p4, p0, Landroidx/compose/material3/NavigationItemKt$NavigationItemLayout$2;->$indicatorShape:Landroidx/compose/ui/graphics/Shape;

    iput-object p5, p0, Landroidx/compose/material3/NavigationItemKt$NavigationItemLayout$2;->$icon:Lkotlin/jvm/functions/Function2;

    iput p6, p0, Landroidx/compose/material3/NavigationItemKt$NavigationItemLayout$2;->$iconPosition:I

    iput-object p7, p0, Landroidx/compose/material3/NavigationItemKt$NavigationItemLayout$2;->$label:Lkotlin/jvm/functions/Function2;

    iput-object p8, p0, Landroidx/compose/material3/NavigationItemKt$NavigationItemLayout$2;->$animationProgress:Lkotlin/jvm/functions/Function0;

    iput p9, p0, Landroidx/compose/material3/NavigationItemKt$NavigationItemLayout$2;->$indicatorHorizontalPadding:F

    iput p10, p0, Landroidx/compose/material3/NavigationItemKt$NavigationItemLayout$2;->$indicatorVerticalPadding:F

    iput p11, p0, Landroidx/compose/material3/NavigationItemKt$NavigationItemLayout$2;->$indicatorToLabelVerticalPadding:F

    iput p12, p0, Landroidx/compose/material3/NavigationItemKt$NavigationItemLayout$2;->$startIconToLabelHorizontalPadding:F

    iput p13, p0, Landroidx/compose/material3/NavigationItemKt$NavigationItemLayout$2;->$topIconItemVerticalPadding:F

    iput p14, p0, Landroidx/compose/material3/NavigationItemKt$NavigationItemLayout$2;->$$changed:I

    iput p15, p0, Landroidx/compose/material3/NavigationItemKt$NavigationItemLayout$2;->$$changed1:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/NavigationItemKt$NavigationItemLayout$2;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/material3/NavigationItemKt$NavigationItemLayout$2;->$interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;

    iget-wide v2, v0, Landroidx/compose/material3/NavigationItemKt$NavigationItemLayout$2;->$indicatorColor:J

    iget-object v4, v0, Landroidx/compose/material3/NavigationItemKt$NavigationItemLayout$2;->$indicatorShape:Landroidx/compose/ui/graphics/Shape;

    iget-object v5, v0, Landroidx/compose/material3/NavigationItemKt$NavigationItemLayout$2;->$icon:Lkotlin/jvm/functions/Function2;

    iget v6, v0, Landroidx/compose/material3/NavigationItemKt$NavigationItemLayout$2;->$iconPosition:I

    iget-object v7, v0, Landroidx/compose/material3/NavigationItemKt$NavigationItemLayout$2;->$label:Lkotlin/jvm/functions/Function2;

    iget-object v8, v0, Landroidx/compose/material3/NavigationItemKt$NavigationItemLayout$2;->$animationProgress:Lkotlin/jvm/functions/Function0;

    iget v9, v0, Landroidx/compose/material3/NavigationItemKt$NavigationItemLayout$2;->$indicatorHorizontalPadding:F

    iget v10, v0, Landroidx/compose/material3/NavigationItemKt$NavigationItemLayout$2;->$indicatorVerticalPadding:F

    iget v11, v0, Landroidx/compose/material3/NavigationItemKt$NavigationItemLayout$2;->$indicatorToLabelVerticalPadding:F

    iget v12, v0, Landroidx/compose/material3/NavigationItemKt$NavigationItemLayout$2;->$startIconToLabelHorizontalPadding:F

    iget v13, v0, Landroidx/compose/material3/NavigationItemKt$NavigationItemLayout$2;->$topIconItemVerticalPadding:F

    iget v14, v0, Landroidx/compose/material3/NavigationItemKt$NavigationItemLayout$2;->$$changed:I

    or-int/lit8 v14, v14, 0x1

    invoke-static {v14}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v15

    iget v14, v0, Landroidx/compose/material3/NavigationItemKt$NavigationItemLayout$2;->$$changed1:I

    invoke-static {v14}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v16

    move-object/from16 v14, p1

    invoke-static/range {v1 .. v16}, Landroidx/compose/material3/NavigationItemKt;->access$NavigationItemLayout-KmRX-Dg(Landroidx/compose/foundation/interaction/InteractionSource;JLandroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;FFFFFLandroidx/compose/runtime/Composer;II)V

    return-void
.end method
