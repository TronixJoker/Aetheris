.class public final Landroidx/compose/material3/carousel/Strategy;
.super Ljava/lang/Object;
.source "Strategy.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material3/carousel/Strategy$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000f\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000 +2\u00020\u0001:\u0001+B/\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\tBK\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000b\u0012\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000b\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\rJ\u0013\u0010\"\u001a\u00020\u001a2\u0008\u0010#\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\'\u0010$\u001a\u00020\u00032\u0006\u0010%\u001a\u00020\u00052\u0006\u0010&\u001a\u00020\u00052\u0008\u0008\u0002\u0010\'\u001a\u00020\u001aH\u0000\u00a2\u0006\u0002\u0008(J\u0008\u0010)\u001a\u00020*H\u0016R\u0011\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000fR\u0011\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000fR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0017\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u000e\u0010\u0016\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0019\u001a\u00020\u001a\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001bR\u0011\u0010\u001c\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u000fR\u0017\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u0015R\u000e\u0010 \u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006,"
    }
    d2 = {
        "Landroidx/compose/material3/carousel/Strategy;",
        "",
        "defaultKeylines",
        "Landroidx/compose/material3/carousel/KeylineList;",
        "availableSpace",
        "",
        "itemSpacing",
        "beforeContentPadding",
        "afterContentPadding",
        "(Landroidx/compose/material3/carousel/KeylineList;FFFF)V",
        "startKeylineSteps",
        "",
        "endKeylineSteps",
        "(Landroidx/compose/material3/carousel/KeylineList;Ljava/util/List;Ljava/util/List;FFFF)V",
        "getAfterContentPadding",
        "()F",
        "getAvailableSpace",
        "getBeforeContentPadding",
        "getDefaultKeylines",
        "()Landroidx/compose/material3/carousel/KeylineList;",
        "getEndKeylineSteps",
        "()Ljava/util/List;",
        "endShiftDistance",
        "endShiftPoints",
        "Landroidx/collection/FloatList;",
        "isValid",
        "",
        "()Z",
        "itemMainAxisSize",
        "getItemMainAxisSize",
        "getItemSpacing",
        "getStartKeylineSteps",
        "startShiftDistance",
        "startShiftPoints",
        "equals",
        "other",
        "getKeylineListForScrollOffset",
        "scrollOffset",
        "maxScrollOffset",
        "roundToNearestStep",
        "getKeylineListForScrollOffset$material3_release",
        "hashCode",
        "",
        "Companion",
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


# static fields
.field public static final $stable:I

.field public static final Companion:Landroidx/compose/material3/carousel/Strategy$Companion;

.field private static final Empty:Landroidx/compose/material3/carousel/Strategy;


# instance fields
.field private final afterContentPadding:F

.field private final availableSpace:F

.field private final beforeContentPadding:F

.field private final defaultKeylines:Landroidx/compose/material3/carousel/KeylineList;

.field private final endKeylineSteps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/material3/carousel/KeylineList;",
            ">;"
        }
    .end annotation
.end field

.field private final endShiftDistance:F

.field private final endShiftPoints:Landroidx/collection/FloatList;

.field private final isValid:Z

.field private final itemSpacing:F

.field private final startKeylineSteps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/material3/carousel/KeylineList;",
            ">;"
        }
    .end annotation
.end field

.field private final startShiftDistance:F

.field private final startShiftPoints:Landroidx/collection/FloatList;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Landroidx/compose/material3/carousel/Strategy$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/material3/carousel/Strategy$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/material3/carousel/Strategy;->Companion:Landroidx/compose/material3/carousel/Strategy$Companion;

    const/16 v0, 0x8

    sput v0, Landroidx/compose/material3/carousel/Strategy;->$stable:I

    .line 237
    new-instance v0, Landroidx/compose/material3/carousel/Strategy;

    .line 238
    invoke-static {}, Landroidx/compose/material3/carousel/KeylineListKt;->emptyKeylineList()Landroidx/compose/material3/carousel/KeylineList;

    move-result-object v2

    .line 239
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 240
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    .line 237
    invoke-direct/range {v1 .. v8}, Landroidx/compose/material3/carousel/Strategy;-><init>(Landroidx/compose/material3/carousel/KeylineList;Ljava/util/List;Ljava/util/List;FFFF)V

    sput-object v0, Landroidx/compose/material3/carousel/Strategy;->Empty:Landroidx/compose/material3/carousel/Strategy;

    return-void
.end method

.method public constructor <init>(Landroidx/compose/material3/carousel/KeylineList;FFFF)V
    .locals 8

    .line 87
    invoke-static {p1, p2, p3, p4}, Landroidx/compose/material3/carousel/StrategyKt;->access$getStartKeylineSteps(Landroidx/compose/material3/carousel/KeylineList;FFF)Ljava/util/List;

    move-result-object v2

    .line 94
    invoke-static {p1, p2, p3, p5}, Landroidx/compose/material3/carousel/StrategyKt;->access$getEndKeylineSteps(Landroidx/compose/material3/carousel/KeylineList;FFF)Ljava/util/List;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    .line 84
    invoke-direct/range {v0 .. v7}, Landroidx/compose/material3/carousel/Strategy;-><init>(Landroidx/compose/material3/carousel/KeylineList;Ljava/util/List;Ljava/util/List;FFFF)V

    return-void
.end method

.method private constructor <init>(Landroidx/compose/material3/carousel/KeylineList;Ljava/util/List;Ljava/util/List;FFFF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/carousel/KeylineList;",
            "Ljava/util/List<",
            "Landroidx/compose/material3/carousel/KeylineList;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/compose/material3/carousel/KeylineList;",
            ">;FFFF)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Landroidx/compose/material3/carousel/Strategy;->defaultKeylines:Landroidx/compose/material3/carousel/KeylineList;

    .line 49
    iput-object p2, p0, Landroidx/compose/material3/carousel/Strategy;->startKeylineSteps:Ljava/util/List;

    .line 50
    iput-object p3, p0, Landroidx/compose/material3/carousel/Strategy;->endKeylineSteps:Ljava/util/List;

    .line 51
    iput p4, p0, Landroidx/compose/material3/carousel/Strategy;->availableSpace:F

    .line 52
    iput p5, p0, Landroidx/compose/material3/carousel/Strategy;->itemSpacing:F

    .line 53
    iput p6, p0, Landroidx/compose/material3/carousel/Strategy;->beforeContentPadding:F

    .line 54
    iput p7, p0, Landroidx/compose/material3/carousel/Strategy;->afterContentPadding:F

    .line 102
    invoke-static {p2, p6}, Landroidx/compose/material3/carousel/StrategyKt;->access$getStartShiftDistance(Ljava/util/List;F)F

    move-result p5

    iput p5, p0, Landroidx/compose/material3/carousel/Strategy;->startShiftDistance:F

    .line 104
    invoke-static {p3, p7}, Landroidx/compose/material3/carousel/StrategyKt;->access$getEndShiftDistance(Ljava/util/List;F)F

    move-result p6

    iput p6, p0, Landroidx/compose/material3/carousel/Strategy;->endShiftDistance:F

    const/4 p7, 0x1

    .line 111
    invoke-static {p5, p2, p7}, Landroidx/compose/material3/carousel/StrategyKt;->access$getStepInterpolationPoints(FLjava/util/List;Z)Landroidx/collection/FloatList;

    move-result-object p2

    iput-object p2, p0, Landroidx/compose/material3/carousel/Strategy;->startShiftPoints:Landroidx/collection/FloatList;

    const/4 p2, 0x0

    .line 118
    invoke-static {p6, p3, p2}, Landroidx/compose/material3/carousel/StrategyKt;->access$getStepInterpolationPoints(FLjava/util/List;Z)Landroidx/collection/FloatList;

    move-result-object p3

    iput-object p3, p0, Landroidx/compose/material3/carousel/Strategy;->endShiftPoints:Landroidx/collection/FloatList;

    .line 126
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, p7

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    cmpg-float p3, p4, p1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/material3/carousel/Strategy;->getItemMainAxisSize()F

    move-result p3

    cmpg-float p1, p3, p1

    if-nez p1, :cond_2

    :cond_1
    :goto_0
    move p7, p2

    :cond_2
    iput-boolean p7, p0, Landroidx/compose/material3/carousel/Strategy;->isValid:Z

    return-void
.end method

.method public static final synthetic access$getEmpty$cp()Landroidx/compose/material3/carousel/Strategy;
    .locals 1

    .line 46
    sget-object v0, Landroidx/compose/material3/carousel/Strategy;->Empty:Landroidx/compose/material3/carousel/Strategy;

    return-object v0
.end method

.method public static synthetic getKeylineListForScrollOffset$material3_release$default(Landroidx/compose/material3/carousel/Strategy;FFZILjava/lang/Object;)Landroidx/compose/material3/carousel/KeylineList;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 135
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/material3/carousel/Strategy;->getKeylineListForScrollOffset$material3_release(FFZ)Landroidx/compose/material3/carousel/KeylineList;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 196
    :cond_0
    instance-of v1, p1, Landroidx/compose/material3/carousel/Strategy;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 199
    :cond_1
    iget-boolean v1, p0, Landroidx/compose/material3/carousel/Strategy;->isValid:Z

    if-nez v1, :cond_2

    move-object v3, p1

    check-cast v3, Landroidx/compose/material3/carousel/Strategy;

    iget-boolean v3, v3, Landroidx/compose/material3/carousel/Strategy;->isValid:Z

    if-nez v3, :cond_2

    return v0

    .line 201
    :cond_2
    check-cast p1, Landroidx/compose/material3/carousel/Strategy;

    iget-boolean v3, p1, Landroidx/compose/material3/carousel/Strategy;->isValid:Z

    if-eq v1, v3, :cond_3

    return v2

    .line 202
    :cond_3
    iget v1, p0, Landroidx/compose/material3/carousel/Strategy;->availableSpace:F

    iget v3, p1, Landroidx/compose/material3/carousel/Strategy;->availableSpace:F

    cmpg-float v1, v1, v3

    if-nez v1, :cond_7

    .line 203
    iget v1, p0, Landroidx/compose/material3/carousel/Strategy;->itemSpacing:F

    iget v3, p1, Landroidx/compose/material3/carousel/Strategy;->itemSpacing:F

    cmpg-float v1, v1, v3

    if-nez v1, :cond_7

    .line 204
    iget v1, p0, Landroidx/compose/material3/carousel/Strategy;->beforeContentPadding:F

    iget v3, p1, Landroidx/compose/material3/carousel/Strategy;->beforeContentPadding:F

    cmpg-float v1, v1, v3

    if-nez v1, :cond_7

    .line 205
    iget v1, p0, Landroidx/compose/material3/carousel/Strategy;->afterContentPadding:F

    iget v3, p1, Landroidx/compose/material3/carousel/Strategy;->afterContentPadding:F

    cmpg-float v1, v1, v3

    if-nez v1, :cond_7

    .line 206
    invoke-virtual {p0}, Landroidx/compose/material3/carousel/Strategy;->getItemMainAxisSize()F

    move-result v1

    invoke-virtual {p1}, Landroidx/compose/material3/carousel/Strategy;->getItemMainAxisSize()F

    move-result v3

    cmpg-float v1, v1, v3

    if-nez v1, :cond_7

    .line 207
    iget v1, p0, Landroidx/compose/material3/carousel/Strategy;->startShiftDistance:F

    iget v3, p1, Landroidx/compose/material3/carousel/Strategy;->startShiftDistance:F

    cmpg-float v1, v1, v3

    if-nez v1, :cond_7

    .line 208
    iget v1, p0, Landroidx/compose/material3/carousel/Strategy;->endShiftDistance:F

    iget v3, p1, Landroidx/compose/material3/carousel/Strategy;->endShiftDistance:F

    cmpg-float v1, v1, v3

    if-nez v1, :cond_7

    .line 209
    iget-object v1, p0, Landroidx/compose/material3/carousel/Strategy;->startShiftPoints:Landroidx/collection/FloatList;

    iget-object v3, p1, Landroidx/compose/material3/carousel/Strategy;->startShiftPoints:Landroidx/collection/FloatList;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 210
    :cond_4
    iget-object v1, p0, Landroidx/compose/material3/carousel/Strategy;->endShiftPoints:Landroidx/collection/FloatList;

    iget-object v3, p1, Landroidx/compose/material3/carousel/Strategy;->endShiftPoints:Landroidx/collection/FloatList;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 213
    :cond_5
    iget-object v1, p0, Landroidx/compose/material3/carousel/Strategy;->defaultKeylines:Landroidx/compose/material3/carousel/KeylineList;

    iget-object p1, p1, Landroidx/compose/material3/carousel/Strategy;->defaultKeylines:Landroidx/compose/material3/carousel/KeylineList;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0

    :cond_7
    return v2
.end method

.method public final getAfterContentPadding()F
    .locals 1

    .line 54
    iget v0, p0, Landroidx/compose/material3/carousel/Strategy;->afterContentPadding:F

    return v0
.end method

.method public final getAvailableSpace()F
    .locals 1

    .line 51
    iget v0, p0, Landroidx/compose/material3/carousel/Strategy;->availableSpace:F

    return v0
.end method

.method public final getBeforeContentPadding()F
    .locals 1

    .line 53
    iget v0, p0, Landroidx/compose/material3/carousel/Strategy;->beforeContentPadding:F

    return v0
.end method

.method public final getDefaultKeylines()Landroidx/compose/material3/carousel/KeylineList;
    .locals 1

    .line 48
    iget-object v0, p0, Landroidx/compose/material3/carousel/Strategy;->defaultKeylines:Landroidx/compose/material3/carousel/KeylineList;

    return-object v0
.end method

.method public final getEndKeylineSteps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/material3/carousel/KeylineList;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Landroidx/compose/material3/carousel/Strategy;->endKeylineSteps:Ljava/util/List;

    return-object v0
.end method

.method public final getItemMainAxisSize()F
    .locals 1

    .line 122
    iget-object v0, p0, Landroidx/compose/material3/carousel/Strategy;->defaultKeylines:Landroidx/compose/material3/carousel/KeylineList;

    invoke-virtual {v0}, Landroidx/compose/material3/carousel/KeylineList;->getFirstFocal()Landroidx/compose/material3/carousel/Keyline;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/material3/carousel/Keyline;->getSize()F

    move-result v0

    return v0
.end method

.method public final getItemSpacing()F
    .locals 1

    .line 52
    iget v0, p0, Landroidx/compose/material3/carousel/Strategy;->itemSpacing:F

    return v0
.end method

.method public final getKeylineListForScrollOffset$material3_release(FFZ)Landroidx/compose/material3/carousel/KeylineList;
    .locals 7

    const/4 v0, 0x0

    .line 142
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 143
    iget v1, p0, Landroidx/compose/material3/carousel/Strategy;->startShiftDistance:F

    .line 144
    iget v2, p0, Landroidx/compose/material3/carousel/Strategy;->endShiftDistance:F

    sub-float v2, p2, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    cmpg-float v3, v1, p1

    if-gtz v3, :cond_0

    cmpg-float v3, p1, v2

    if-gtz v3, :cond_0

    .line 148
    iget-object p1, p0, Landroidx/compose/material3/carousel/Strategy;->defaultKeylines:Landroidx/compose/material3/carousel/KeylineList;

    return-object p1

    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    .line 152
    invoke-static {v3, v0, v0, v1, p1}, Landroidx/compose/material3/carousel/StrategyKt;->access$lerp(FFFFF)F

    move-result v1

    .line 159
    iget-object v4, p0, Landroidx/compose/material3/carousel/Strategy;->startShiftPoints:Landroidx/collection/FloatList;

    .line 160
    iget-object v5, p0, Landroidx/compose/material3/carousel/Strategy;->startKeylineSteps:Ljava/util/List;

    cmpl-float v6, p1, v2

    if-lez v6, :cond_1

    .line 164
    invoke-static {v0, v3, v2, p2, p1}, Landroidx/compose/material3/carousel/StrategyKt;->access$lerp(FFFFF)F

    move-result v1

    .line 171
    iget-object v4, p0, Landroidx/compose/material3/carousel/Strategy;->endShiftPoints:Landroidx/collection/FloatList;

    .line 172
    iget-object v5, p0, Landroidx/compose/material3/carousel/Strategy;->endKeylineSteps:Ljava/util/List;

    .line 175
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1, v4, v1}, Landroidx/compose/material3/carousel/StrategyKt;->access$getShiftPointRange(ILandroidx/collection/FloatList;F)Landroidx/compose/material3/carousel/ShiftPointRange;

    move-result-object p1

    if-eqz p3, :cond_3

    .line 179
    invoke-virtual {p1}, Landroidx/compose/material3/carousel/ShiftPointRange;->getSteppedInterpolation()F

    move-result p2

    invoke-static {p2}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p2

    if-nez p2, :cond_2

    .line 180
    invoke-virtual {p1}, Landroidx/compose/material3/carousel/ShiftPointRange;->getFromStepIndex()I

    move-result p1

    goto :goto_0

    .line 182
    :cond_2
    invoke-virtual {p1}, Landroidx/compose/material3/carousel/ShiftPointRange;->getToStepIndex()I

    move-result p1

    .line 184
    :goto_0
    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/material3/carousel/KeylineList;

    return-object p1

    .line 188
    :cond_3
    invoke-virtual {p1}, Landroidx/compose/material3/carousel/ShiftPointRange;->getFromStepIndex()I

    move-result p2

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/compose/material3/carousel/KeylineList;

    .line 189
    invoke-virtual {p1}, Landroidx/compose/material3/carousel/ShiftPointRange;->getToStepIndex()I

    move-result p3

    invoke-interface {v5, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/compose/material3/carousel/KeylineList;

    .line 190
    invoke-virtual {p1}, Landroidx/compose/material3/carousel/ShiftPointRange;->getSteppedInterpolation()F

    move-result p1

    .line 187
    invoke-static {p2, p3, p1}, Landroidx/compose/material3/carousel/KeylineListKt;->lerp(Landroidx/compose/material3/carousel/KeylineList;Landroidx/compose/material3/carousel/KeylineList;F)Landroidx/compose/material3/carousel/KeylineList;

    move-result-object p1

    return-object p1
.end method

.method public final getStartKeylineSteps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/material3/carousel/KeylineList;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Landroidx/compose/material3/carousel/Strategy;->startKeylineSteps:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 219
    iget-boolean v0, p0, Landroidx/compose/material3/carousel/Strategy;->isValid:Z

    if-nez v0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    return v0

    .line 221
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 222
    iget v1, p0, Landroidx/compose/material3/carousel/Strategy;->availableSpace:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 223
    iget v1, p0, Landroidx/compose/material3/carousel/Strategy;->itemSpacing:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 224
    iget v1, p0, Landroidx/compose/material3/carousel/Strategy;->beforeContentPadding:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 225
    iget v1, p0, Landroidx/compose/material3/carousel/Strategy;->afterContentPadding:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 226
    invoke-virtual {p0}, Landroidx/compose/material3/carousel/Strategy;->getItemMainAxisSize()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 227
    iget v1, p0, Landroidx/compose/material3/carousel/Strategy;->startShiftDistance:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 228
    iget v1, p0, Landroidx/compose/material3/carousel/Strategy;->endShiftDistance:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 229
    iget-object v1, p0, Landroidx/compose/material3/carousel/Strategy;->startShiftPoints:Landroidx/collection/FloatList;

    invoke-virtual {v1}, Landroidx/collection/FloatList;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 230
    iget-object v1, p0, Landroidx/compose/material3/carousel/Strategy;->endShiftPoints:Landroidx/collection/FloatList;

    invoke-virtual {v1}, Landroidx/collection/FloatList;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 231
    iget-object v1, p0, Landroidx/compose/material3/carousel/Strategy;->defaultKeylines:Landroidx/compose/material3/carousel/KeylineList;

    invoke-virtual {v1}, Landroidx/compose/material3/carousel/KeylineList;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isValid()Z
    .locals 1

    .line 125
    iget-boolean v0, p0, Landroidx/compose/material3/carousel/Strategy;->isValid:Z

    return v0
.end method
