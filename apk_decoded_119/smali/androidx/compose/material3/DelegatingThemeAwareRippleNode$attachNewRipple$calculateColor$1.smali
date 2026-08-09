.class final Landroidx/compose/material3/DelegatingThemeAwareRippleNode$attachNewRipple$calculateColor$1;
.super Ljava/lang/Object;
.source "Ripple.kt"

# interfaces
.implements Landroidx/compose/ui/graphics/ColorProducer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/DelegatingThemeAwareRippleNode;->attachNewRipple()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRipple.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Ripple.kt\nandroidx/compose/material3/DelegatingThemeAwareRippleNode$attachNewRipple$calculateColor$1\n+ 2 Color.kt\nandroidx/compose/ui/graphics/ColorKt\n*L\n1#1,370:1\n696#2:371\n696#2:372\n*S KotlinDebug\n*F\n+ 1 Ripple.kt\nandroidx/compose/material3/DelegatingThemeAwareRippleNode$attachNewRipple$calculateColor$1\n*L\n328#1:371\n334#1:372\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/ui/graphics/Color;",
        "invoke-0d7_KjU",
        "()J"
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
.field final synthetic this$0:Landroidx/compose/material3/DelegatingThemeAwareRippleNode;


# direct methods
.method constructor <init>(Landroidx/compose/material3/DelegatingThemeAwareRippleNode;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/DelegatingThemeAwareRippleNode$attachNewRipple$calculateColor$1;->this$0:Landroidx/compose/material3/DelegatingThemeAwareRippleNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke-0d7_KjU()J
    .locals 6

    .line 327
    iget-object v0, p0, Landroidx/compose/material3/DelegatingThemeAwareRippleNode$attachNewRipple$calculateColor$1;->this$0:Landroidx/compose/material3/DelegatingThemeAwareRippleNode;

    invoke-static {v0}, Landroidx/compose/material3/DelegatingThemeAwareRippleNode;->access$getColor$p(Landroidx/compose/material3/DelegatingThemeAwareRippleNode;)Landroidx/compose/ui/graphics/ColorProducer;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/graphics/ColorProducer;->invoke-0d7_KjU()J

    move-result-wide v0

    const-wide/16 v2, 0x10

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    goto :goto_0

    .line 333
    :cond_0
    iget-object v0, p0, Landroidx/compose/material3/DelegatingThemeAwareRippleNode$attachNewRipple$calculateColor$1;->this$0:Landroidx/compose/material3/DelegatingThemeAwareRippleNode;

    check-cast v0, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;

    invoke-static {}, Landroidx/compose/material3/RippleKt;->getLocalRippleConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/CompositionLocal;

    invoke-static {v0, v1}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/material3/RippleConfiguration;

    if-eqz v0, :cond_1

    .line 334
    invoke-virtual {v0}, Landroidx/compose/material3/RippleConfiguration;->getColor-0d7_KjU()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-eqz v1, :cond_1

    .line 335
    invoke-virtual {v0}, Landroidx/compose/material3/RippleConfiguration;->getColor-0d7_KjU()J

    move-result-wide v0

    goto :goto_0

    .line 337
    :cond_1
    iget-object v0, p0, Landroidx/compose/material3/DelegatingThemeAwareRippleNode$attachNewRipple$calculateColor$1;->this$0:Landroidx/compose/material3/DelegatingThemeAwareRippleNode;

    check-cast v0, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;

    invoke-static {}, Landroidx/compose/material3/ContentColorKt;->getLocalContentColor()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/CompositionLocal;

    invoke-static {v0, v1}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method
