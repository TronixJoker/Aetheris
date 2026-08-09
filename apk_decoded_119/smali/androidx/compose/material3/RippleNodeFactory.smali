.class final Landroidx/compose/material3/RippleNodeFactory;
.super Ljava/lang/Object;
.source "Ripple.kt"

# interfaces
.implements Landroidx/compose/foundation/IndicationNodeFactory;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u0003\u0018\u00002\u00020\u0001B\u001f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008B\u001f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bB)\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000cJ\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0013\u0010\u0013\u001a\u00020\u00032\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0096\u0002J\u0008\u0010\u0016\u001a\u00020\u0017H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\u00020\nX\u0082\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\n\u0002\u0010\rR\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\n\u0002\u0010\u000e\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006\u0018"
    }
    d2 = {
        "Landroidx/compose/material3/RippleNodeFactory;",
        "Landroidx/compose/foundation/IndicationNodeFactory;",
        "bounded",
        "",
        "radius",
        "Landroidx/compose/ui/unit/Dp;",
        "colorProducer",
        "Landroidx/compose/ui/graphics/ColorProducer;",
        "(ZFLandroidx/compose/ui/graphics/ColorProducer;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "color",
        "Landroidx/compose/ui/graphics/Color;",
        "(ZFJLkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "(ZFLandroidx/compose/ui/graphics/ColorProducer;J)V",
        "J",
        "F",
        "create",
        "Landroidx/compose/ui/node/DelegatableNode;",
        "interactionSource",
        "Landroidx/compose/foundation/interaction/InteractionSource;",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "material3_release"
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
.field private final bounded:Z

.field private final color:J

.field private final colorProducer:Landroidx/compose/ui/graphics/ColorProducer;

.field private final radius:F


# direct methods
.method private constructor <init>(ZFJ)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v4, p3

    .line 266
    invoke-direct/range {v0 .. v5}, Landroidx/compose/material3/RippleNodeFactory;-><init>(ZFLandroidx/compose/ui/graphics/ColorProducer;J)V

    return-void
.end method

.method public synthetic constructor <init>(ZFJLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/material3/RippleNodeFactory;-><init>(ZFJ)V

    return-void
.end method

.method private constructor <init>(ZFLandroidx/compose/ui/graphics/ColorProducer;)V
    .locals 7

    .line 264
    sget-object v0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v5

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Landroidx/compose/material3/RippleNodeFactory;-><init>(ZFLandroidx/compose/ui/graphics/ColorProducer;J)V

    return-void
.end method

.method private constructor <init>(ZFLandroidx/compose/ui/graphics/ColorProducer;J)V
    .locals 0

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    iput-boolean p1, p0, Landroidx/compose/material3/RippleNodeFactory;->bounded:Z

    .line 256
    iput p2, p0, Landroidx/compose/material3/RippleNodeFactory;->radius:F

    .line 257
    iput-object p3, p0, Landroidx/compose/material3/RippleNodeFactory;->colorProducer:Landroidx/compose/ui/graphics/ColorProducer;

    .line 258
    iput-wide p4, p0, Landroidx/compose/material3/RippleNodeFactory;->color:J

    return-void
.end method

.method public synthetic constructor <init>(ZFLandroidx/compose/ui/graphics/ColorProducer;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/material3/RippleNodeFactory;-><init>(ZFLandroidx/compose/ui/graphics/ColorProducer;)V

    return-void
.end method

.method public static final synthetic access$getColor$p(Landroidx/compose/material3/RippleNodeFactory;)J
    .locals 2

    .line 252
    iget-wide v0, p0, Landroidx/compose/material3/RippleNodeFactory;->color:J

    return-wide v0
.end method


# virtual methods
.method public create(Landroidx/compose/foundation/interaction/InteractionSource;)Landroidx/compose/ui/node/DelegatableNode;
    .locals 7

    .line 269
    iget-object v0, p0, Landroidx/compose/material3/RippleNodeFactory;->colorProducer:Landroidx/compose/ui/graphics/ColorProducer;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/compose/material3/RippleNodeFactory$create$colorProducer$1;

    invoke-direct {v0, p0}, Landroidx/compose/material3/RippleNodeFactory$create$colorProducer$1;-><init>(Landroidx/compose/material3/RippleNodeFactory;)V

    check-cast v0, Landroidx/compose/ui/graphics/ColorProducer;

    :cond_0
    move-object v5, v0

    .line 270
    new-instance v0, Landroidx/compose/material3/DelegatingThemeAwareRippleNode;

    iget-boolean v3, p0, Landroidx/compose/material3/RippleNodeFactory;->bounded:Z

    iget v4, p0, Landroidx/compose/material3/RippleNodeFactory;->radius:F

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Landroidx/compose/material3/DelegatingThemeAwareRippleNode;-><init>(Landroidx/compose/foundation/interaction/InteractionSource;ZFLandroidx/compose/ui/graphics/ColorProducer;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Landroidx/compose/ui/node/DelegatableNode;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 275
    :cond_0
    instance-of v0, p1, Landroidx/compose/material3/RippleNodeFactory;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 277
    :cond_1
    iget-boolean v0, p0, Landroidx/compose/material3/RippleNodeFactory;->bounded:Z

    check-cast p1, Landroidx/compose/material3/RippleNodeFactory;

    iget-boolean v2, p1, Landroidx/compose/material3/RippleNodeFactory;->bounded:Z

    if-eq v0, v2, :cond_2

    return v1

    .line 278
    :cond_2
    iget v0, p0, Landroidx/compose/material3/RippleNodeFactory;->radius:F

    iget v2, p1, Landroidx/compose/material3/RippleNodeFactory;->radius:F

    invoke-static {v0, v2}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 279
    :cond_3
    iget-object v0, p0, Landroidx/compose/material3/RippleNodeFactory;->colorProducer:Landroidx/compose/ui/graphics/ColorProducer;

    iget-object v2, p1, Landroidx/compose/material3/RippleNodeFactory;->colorProducer:Landroidx/compose/ui/graphics/ColorProducer;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 280
    :cond_4
    iget-wide v0, p0, Landroidx/compose/material3/RippleNodeFactory;->color:J

    iget-wide v2, p1, Landroidx/compose/material3/RippleNodeFactory;->color:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 3

    .line 284
    iget-boolean v0, p0, Landroidx/compose/material3/RippleNodeFactory;->bounded:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 285
    iget v1, p0, Landroidx/compose/material3/RippleNodeFactory;->radius:F

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->hashCode-impl(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 286
    iget-object v1, p0, Landroidx/compose/material3/RippleNodeFactory;->colorProducer:Landroidx/compose/ui/graphics/ColorProducer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 287
    iget-wide v1, p0, Landroidx/compose/material3/RippleNodeFactory;->color:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
