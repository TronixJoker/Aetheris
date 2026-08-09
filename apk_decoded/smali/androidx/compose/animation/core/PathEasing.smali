.class public final Landroidx/compose/animation/core/PathEasing;
.super Ljava/lang/Object;
.source "PathEasing.kt"

# interfaces
.implements Landroidx/compose/animation/core/Easing;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPathEasing.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PathEasing.kt\nandroidx/compose/animation/core/PathEasing\n+ 2 Preconditions.kt\nandroidx/compose/animation/core/PreconditionsKt\n+ 3 FloatFloatPair.kt\nandroidx/collection/FloatFloatPair\n+ 4 PackingHelpers.jvm.kt\nandroidx/collection/internal/PackingHelpers_jvmKt\n*L\n1#1,120:1\n66#2,8:121\n54#2,7:129\n33#2,7:136\n33#2,7:146\n48#3:143\n54#3:145\n22#4:144\n*S KotlinDebug\n*F\n+ 1 PathEasing.kt\nandroidx/compose/animation/core/PathEasing\n*L\n72#1:121,8\n77#1:129,7\n101#1:136,7\n113#1:146,7\n108#1:143\n108#1:145\n108#1:144\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0008\u001a\u00020\tH\u0002J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000bH\u0016R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Landroidx/compose/animation/core/PathEasing;",
        "Landroidx/compose/animation/core/Easing;",
        "path",
        "Landroidx/compose/ui/graphics/Path;",
        "(Landroidx/compose/ui/graphics/Path;)V",
        "intervals",
        "Landroidx/compose/ui/graphics/IntervalTree;",
        "Landroidx/compose/ui/graphics/PathSegment;",
        "initializeEasing",
        "",
        "transform",
        "",
        "fraction",
        "animation-core_release"
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


# instance fields
.field private intervals:Landroidx/compose/ui/graphics/IntervalTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/ui/graphics/IntervalTree<",
            "Landroidx/compose/ui/graphics/PathSegment;",
            ">;"
        }
    .end annotation
.end field

.field private final path:Landroidx/compose/ui/graphics/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/graphics/Path;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Landroidx/compose/animation/core/PathEasing;->path:Landroidx/compose/ui/graphics/Path;

    return-void
.end method

.method private final initializeEasing()V
    .locals 9

    const/4 v0, 0x5

    .line 85
    new-array v0, v0, [F

    .line 91
    new-instance v1, Landroidx/compose/ui/graphics/IntervalTree;

    invoke-direct {v1}, Landroidx/compose/ui/graphics/IntervalTree;-><init>()V

    .line 95
    iget-object v2, p0, Landroidx/compose/animation/core/PathEasing;->path:Landroidx/compose/ui/graphics/Path;

    .line 96
    sget-object v3, Landroidx/compose/ui/graphics/PathIterator$ConicEvaluation;->AsQuadratics:Landroidx/compose/ui/graphics/PathIterator$ConicEvaluation;

    const v4, 0x3951b717    # 2.0E-4f

    .line 95
    invoke-interface {v2, v3, v4}, Landroidx/compose/ui/graphics/Path;->iterator(Landroidx/compose/ui/graphics/PathIterator$ConicEvaluation;F)Landroidx/compose/ui/graphics/PathIterator;

    move-result-object v2

    .line 99
    :cond_0
    :goto_0
    invoke-interface {v2}, Landroidx/compose/ui/graphics/PathIterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    .line 100
    invoke-interface {v2}, Landroidx/compose/ui/graphics/PathIterator;->next()Landroidx/compose/ui/graphics/PathSegment;

    move-result-object v3

    .line 101
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/PathSegment;->getType()Landroidx/compose/ui/graphics/PathSegment$Type;

    move-result-object v6

    sget-object v7, Landroidx/compose/ui/graphics/PathSegment$Type;->Close:Landroidx/compose/ui/graphics/PathSegment$Type;

    if-eq v6, v7, :cond_1

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    if-nez v4, :cond_2

    .line 102
    const-string v4, "The path cannot contain a close() command."

    .line 140
    invoke-static {v4}, Landroidx/compose/animation/core/PreconditionsKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 104
    :cond_2
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/PathSegment;->getType()Landroidx/compose/ui/graphics/PathSegment$Type;

    move-result-object v4

    sget-object v6, Landroidx/compose/ui/graphics/PathSegment$Type;->Move:Landroidx/compose/ui/graphics/PathSegment$Type;

    if-eq v4, v6, :cond_0

    .line 105
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/PathSegment;->getType()Landroidx/compose/ui/graphics/PathSegment$Type;

    move-result-object v4

    sget-object v6, Landroidx/compose/ui/graphics/PathSegment$Type;->Done:Landroidx/compose/ui/graphics/PathSegment$Type;

    if-eq v4, v6, :cond_0

    const/4 v4, 0x4

    const/4 v6, 0x0

    .line 107
    invoke-static {v3, v0, v5, v4, v6}, Landroidx/compose/ui/graphics/BezierKt;->computeHorizontalBounds$default(Landroidx/compose/ui/graphics/PathSegment;[FIILjava/lang/Object;)J

    move-result-wide v4

    const/16 v6, 0x20

    shr-long v6, v4, v6

    long-to-int v6, v6

    .line 144
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    const-wide v7, 0xffffffffL

    and-long/2addr v4, v7

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    .line 108
    invoke-virtual {v1, v6, v4, v3}, Landroidx/compose/ui/graphics/IntervalTree;->addInterval(FFLjava/lang/Object;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 113
    invoke-virtual {v1, v0}, Landroidx/compose/ui/graphics/IntervalTree;->contains(F)Z

    move-result v0

    if-eqz v0, :cond_4

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0}, Landroidx/compose/ui/graphics/IntervalTree;->contains(F)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    move v4, v5

    :goto_2
    if-nez v4, :cond_5

    .line 114
    const-string v0, "The easing path must start at 0.0f and end at 1.0f."

    .line 150
    invoke-static {v0}, Landroidx/compose/animation/core/PreconditionsKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 117
    :cond_5
    iput-object v1, p0, Landroidx/compose/animation/core/PathEasing;->intervals:Landroidx/compose/ui/graphics/IntervalTree;

    return-void
.end method


# virtual methods
.method public transform(F)F
    .locals 4

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_0

    return v0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v1

    if-ltz v2, :cond_1

    return v1

    .line 67
    :cond_1
    iget-object v1, p0, Landroidx/compose/animation/core/PathEasing;->intervals:Landroidx/compose/ui/graphics/IntervalTree;

    if-nez v1, :cond_2

    .line 68
    invoke-direct {p0}, Landroidx/compose/animation/core/PathEasing;->initializeEasing()V

    .line 71
    :cond_2
    iget-object v1, p0, Landroidx/compose/animation/core/PathEasing;->intervals:Landroidx/compose/ui/graphics/IntervalTree;

    const/4 v2, 0x0

    if-nez v1, :cond_3

    const-string/jumbo v1, "intervals"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_3
    const/4 v3, 0x2

    invoke-static {v1, p1, v0, v3, v2}, Landroidx/compose/ui/graphics/IntervalTree;->findFirstOverlap$default(Landroidx/compose/ui/graphics/IntervalTree;FFILjava/lang/Object;)Landroidx/compose/ui/graphics/Interval;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Interval;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    check-cast v0, Landroidx/compose/ui/graphics/PathSegment;

    .line 76
    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/BezierKt;->findFirstRoot(Landroidx/compose/ui/graphics/PathSegment;F)F

    move-result p1

    .line 77
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_4

    .line 78
    const-string v1, "The easing path is invalid. Make sure it does not contain NaN/Infinity values."

    .line 133
    invoke-static {v1}, Landroidx/compose/animation/core/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 81
    :cond_4
    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/BezierKt;->evaluateY(Landroidx/compose/ui/graphics/PathSegment;F)F

    move-result p1

    return p1

    .line 73
    :cond_5
    const-string p1, "The easing path is invalid. Make sure it is continuous on the x axis."

    .line 126
    invoke-static {p1}, Landroidx/compose/animation/core/PreconditionsKt;->throwIllegalStateExceptionForNullCheck(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method
