.class final Landroidx/compose/material3/carousel/StrategyKt$createShiftedKeylineListForContentPadding$newKeylines$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Strategy.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/carousel/StrategyKt;->createShiftedKeylineListForContentPadding(Landroidx/compose/material3/carousel/KeylineList;FFFLandroidx/compose/material3/carousel/Keyline;I)Landroidx/compose/material3/carousel/KeylineList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/material3/carousel/KeylineListScope;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStrategy.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Strategy.kt\nandroidx/compose/material3/carousel/StrategyKt$createShiftedKeylineListForContentPadding$newKeylines$1\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,626:1\n33#2,6:627\n*S KotlinDebug\n*F\n+ 1 Strategy.kt\nandroidx/compose/material3/carousel/StrategyKt$createShiftedKeylineListForContentPadding$newKeylines$1\n*L\n494#1:627,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/material3/carousel/KeylineListScope;",
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
.field final synthetic $from:Landroidx/compose/material3/carousel/KeylineList;

.field final synthetic $sizeReduction:F


# direct methods
.method constructor <init>(Landroidx/compose/material3/carousel/KeylineList;F)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/carousel/StrategyKt$createShiftedKeylineListForContentPadding$newKeylines$1;->$from:Landroidx/compose/material3/carousel/KeylineList;

    iput p2, p0, Landroidx/compose/material3/carousel/StrategyKt$createShiftedKeylineListForContentPadding$newKeylines$1;->$sizeReduction:F

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 488
    check-cast p1, Landroidx/compose/material3/carousel/KeylineListScope;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/carousel/StrategyKt$createShiftedKeylineListForContentPadding$newKeylines$1;->invoke(Landroidx/compose/material3/carousel/KeylineListScope;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/material3/carousel/KeylineListScope;)V
    .locals 7

    .line 494
    iget-object v0, p0, Landroidx/compose/material3/carousel/StrategyKt$createShiftedKeylineListForContentPadding$newKeylines$1;->$from:Landroidx/compose/material3/carousel/KeylineList;

    check-cast v0, Ljava/util/List;

    iget v1, p0, Landroidx/compose/material3/carousel/StrategyKt$createShiftedKeylineListForContentPadding$newKeylines$1;->$sizeReduction:F

    .line 628
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 629
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 630
    check-cast v4, Landroidx/compose/material3/carousel/Keyline;

    .line 494
    invoke-virtual {v4}, Landroidx/compose/material3/carousel/Keyline;->getSize()F

    move-result v5

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual {v4}, Landroidx/compose/material3/carousel/Keyline;->isAnchor()Z

    move-result v4

    invoke-interface {p1, v5, v4}, Landroidx/compose/material3/carousel/KeylineListScope;->add(FZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
