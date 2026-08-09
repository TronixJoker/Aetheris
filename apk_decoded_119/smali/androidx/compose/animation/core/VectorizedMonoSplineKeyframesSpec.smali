.class public final Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;
.super Ljava/lang/Object;
.source "VectorizedMonoSplineKeyframesSpec.kt"

# interfaces
.implements Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroidx/compose/animation/core/AnimationVector;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec<",
        "TV;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVectorizedMonoSplineKeyframesSpec.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VectorizedMonoSplineKeyframesSpec.kt\nandroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec\n+ 2 IntList.kt\nandroidx/collection/IntList\n*L\n1#1,203:1\n70#2:204\n*S KotlinDebug\n*F\n+ 1 VectorizedMonoSplineKeyframesSpec.kt\nandroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec\n*L\n174#1:204\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0014\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\t\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0001\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003B?\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0018\u0010\u0006\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\t0\u00080\u0007\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0006\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0002\u0010\u000fJ\u0010\u0010\u001f\u001a\u00020\u000b2\u0006\u0010 \u001a\u00020\u000bH\u0002J\u0018\u0010!\u001a\u00020\u000e2\u0006\u0010\"\u001a\u00020\u000b2\u0006\u0010 \u001a\u00020\u000bH\u0002J\u0010\u0010#\u001a\u00020\t2\u0006\u0010\"\u001a\u00020\u000bH\u0002J-\u0010$\u001a\u00028\u00002\u0006\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00028\u00002\u0006\u0010(\u001a\u00028\u00002\u0006\u0010)\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010*J-\u0010+\u001a\u00028\u00002\u0006\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00028\u00002\u0006\u0010(\u001a\u00028\u00002\u0006\u0010)\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010*J%\u0010,\u001a\u00020-2\u0006\u0010\'\u001a\u00028\u00002\u0006\u0010(\u001a\u00028\u00002\u0006\u0010)\u001a\u00028\u0000H\u0002\u00a2\u0006\u0002\u0010.R\u0014\u0010\u000c\u001a\u00020\u000bX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\n\u001a\u00020\u000bX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0011R \u0010\u0006\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\t0\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0013\u001a\u0004\u0018\u00018\u0000X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0014R\u0012\u0010\u0015\u001a\u0004\u0018\u00018\u0000X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0014R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001a\u001a\u00028\u0000X\u0082.\u00a2\u0006\u0004\n\u0002\u0010\u0014R\u0016\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u001cX\u0082.\u00a2\u0006\u0004\n\u0002\u0010\u001dR\u0010\u0010\u001e\u001a\u00028\u0000X\u0082.\u00a2\u0006\u0004\n\u0002\u0010\u0014\u00a8\u0006/"
    }
    d2 = {
        "Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;",
        "V",
        "Landroidx/compose/animation/core/AnimationVector;",
        "Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;",
        "timestamps",
        "Landroidx/collection/IntList;",
        "keyframes",
        "Landroidx/collection/IntObjectMap;",
        "Lkotlin/Pair;",
        "Landroidx/compose/animation/core/Easing;",
        "durationMillis",
        "",
        "delayMillis",
        "periodicBias",
        "",
        "(Landroidx/collection/IntList;Landroidx/collection/IntObjectMap;IIF)V",
        "getDelayMillis",
        "()I",
        "getDurationMillis",
        "lastInitialValue",
        "Landroidx/compose/animation/core/AnimationVector;",
        "lastTargetValue",
        "monoSpline",
        "Landroidx/compose/animation/core/MonoSpline;",
        "times",
        "",
        "valueVector",
        "values",
        "",
        "[[F",
        "velocityVector",
        "findEntryForTimeMillis",
        "timeMillis",
        "getEasedTimeFromIndex",
        "index",
        "getEasing",
        "getValueFromNanos",
        "playTimeNanos",
        "",
        "initialValue",
        "targetValue",
        "initialVelocity",
        "(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;",
        "getVelocityFromNanos",
        "init",
        "",
        "(Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)V",
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
.field public static final $stable:I = 0x8


# instance fields
.field private final delayMillis:I

.field private final durationMillis:I

.field private final keyframes:Landroidx/collection/IntObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/IntObjectMap<",
            "Lkotlin/Pair<",
            "TV;",
            "Landroidx/compose/animation/core/Easing;",
            ">;>;"
        }
    .end annotation
.end field

.field private lastInitialValue:Landroidx/compose/animation/core/AnimationVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private lastTargetValue:Landroidx/compose/animation/core/AnimationVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private monoSpline:Landroidx/compose/animation/core/MonoSpline;

.field private final periodicBias:F

.field private times:[F

.field private final timestamps:Landroidx/collection/IntList;

.field private valueVector:Landroidx/compose/animation/core/AnimationVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private values:[[F

.field private velocityVector:Landroidx/compose/animation/core/AnimationVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/collection/IntList;Landroidx/collection/IntObjectMap;IIF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/IntList;",
            "Landroidx/collection/IntObjectMap<",
            "Lkotlin/Pair<",
            "TV;",
            "Landroidx/compose/animation/core/Easing;",
            ">;>;IIF)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->timestamps:Landroidx/collection/IntList;

    .line 28
    iput-object p2, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->keyframes:Landroidx/collection/IntObjectMap;

    .line 29
    iput p3, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->durationMillis:I

    .line 30
    iput p4, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->delayMillis:I

    .line 31
    iput p5, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->periodicBias:F

    return-void
.end method

.method private final findEntryForTimeMillis(I)I
    .locals 6

    .line 199
    iget-object v0, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->timestamps:Landroidx/collection/IntList;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v1, p1

    invoke-static/range {v0 .. v5}, Landroidx/compose/animation/core/IntListExtensionKt;->binarySearch$default(Landroidx/collection/IntList;IIIILjava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ge p1, v0, :cond_0

    add-int/lit8 p1, p1, 0x2

    neg-int p1, p1

    :cond_0
    return p1
.end method

.method private final getEasedTimeFromIndex(II)F
    .locals 5

    .line 174
    iget-object v0, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->timestamps:Landroidx/collection/IntList;

    .line 204
    iget v0, v0, Landroidx/collection/IntList;->_size:I

    add-int/lit8 v0, v0, -0x1

    const-wide/16 v1, 0x3e8

    if-lt p1, v0, :cond_0

    int-to-float p1, p2

    :goto_0
    long-to-float p2, v1

    div-float/2addr p1, p2

    return p1

    .line 178
    :cond_0
    iget-object v0, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->timestamps:Landroidx/collection/IntList;

    invoke-virtual {v0, p1}, Landroidx/collection/IntList;->get(I)I

    move-result v0

    .line 179
    iget-object v3, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->timestamps:Landroidx/collection/IntList;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Landroidx/collection/IntList;->get(I)I

    move-result v3

    if-ne p2, v0, :cond_1

    int-to-float p1, v0

    goto :goto_0

    :cond_1
    sub-int/2addr v3, v0

    .line 186
    invoke-direct {p0, p1}, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->getEasing(I)Landroidx/compose/animation/core/Easing;

    move-result-object p1

    sub-int/2addr p2, v0

    int-to-float p2, p2

    int-to-float v3, v3

    div-float/2addr p2, v3

    .line 188
    invoke-interface {p1, p2}, Landroidx/compose/animation/core/Easing;->transform(F)F

    move-result p1

    mul-float/2addr v3, p1

    int-to-float p1, v0

    add-float/2addr v3, p1

    long-to-float p1, v1

    div-float/2addr v3, p1

    return v3
.end method

.method private final getEasing(I)Landroidx/compose/animation/core/Easing;
    .locals 1

    .line 165
    iget-object v0, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->timestamps:Landroidx/collection/IntList;

    invoke-virtual {v0, p1}, Landroidx/collection/IntList;->get(I)I

    move-result p1

    .line 167
    iget-object v0, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->keyframes:Landroidx/collection/IntObjectMap;

    invoke-virtual {v0, p1}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Pair;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/animation/core/Easing;

    if-nez p1, :cond_1

    :cond_0
    invoke-static {}, Landroidx/compose/animation/core/EasingKt;->getLinearEasing()Landroidx/compose/animation/core/Easing;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private final init(Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TV;TV;)V"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->valueVector:Landroidx/compose/animation/core/AnimationVector;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 50
    invoke-static {p1}, Landroidx/compose/animation/core/AnimationVectorsKt;->newInstance(Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->valueVector:Landroidx/compose/animation/core/AnimationVector;

    .line 51
    invoke-static {p3}, Landroidx/compose/animation/core/AnimationVectorsKt;->newInstance(Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    move-result-object p3

    iput-object p3, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->velocityVector:Landroidx/compose/animation/core/AnimationVector;

    .line 53
    iget-object p3, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->timestamps:Landroidx/collection/IntList;

    invoke-virtual {p3}, Landroidx/collection/IntList;->getSize()I

    move-result p3

    new-array v0, p3, [F

    move v2, v1

    :goto_0
    if-ge v2, p3, :cond_0

    .line 54
    iget-object v3, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->timestamps:Landroidx/collection/IntList;

    invoke-virtual {v3, v2}, Landroidx/collection/IntList;->get(I)I

    move-result v3

    int-to-float v3, v3

    const-wide/16 v4, 0x3e8

    long-to-float v4, v4

    div-float/2addr v3, v4

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 53
    :cond_0
    iput-object v0, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->times:[F

    .line 59
    :cond_1
    iget-object p3, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->monoSpline:Landroidx/compose/animation/core/MonoSpline;

    if-eqz p3, :cond_2

    .line 60
    iget-object p3, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->lastInitialValue:Landroidx/compose/animation/core/AnimationVector;

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->lastTargetValue:Landroidx/compose/animation/core/AnimationVector;

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_13

    .line 62
    :cond_2
    iget-object p3, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->lastInitialValue:Landroidx/compose/animation/core/AnimationVector;

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    .line 63
    iget-object v0, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->lastTargetValue:Landroidx/compose/animation/core/AnimationVector;

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 64
    iput-object p1, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->lastInitialValue:Landroidx/compose/animation/core/AnimationVector;

    .line 65
    iput-object p2, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->lastTargetValue:Landroidx/compose/animation/core/AnimationVector;

    .line 67
    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationVector;->getSize$animation_core_release()I

    move-result v2

    .line 69
    iget-object v3, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->values:[[F

    const-string/jumbo v4, "values"

    const/4 v5, 0x0

    if-nez v3, :cond_a

    .line 70
    iget-object p3, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->timestamps:Landroidx/collection/IntList;

    invoke-virtual {p3}, Landroidx/collection/IntList;->getSize()I

    move-result p3

    new-array v0, p3, [[F

    move v3, v1

    :goto_1
    if-ge v3, p3, :cond_9

    .line 71
    iget-object v6, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->timestamps:Landroidx/collection/IntList;

    invoke-virtual {v6, v3}, Landroidx/collection/IntList;->get(I)I

    move-result v6

    if-nez v6, :cond_4

    .line 74
    iget-object v7, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->keyframes:Landroidx/collection/IntObjectMap;

    invoke-virtual {v7, v6}, Landroidx/collection/IntObjectMap;->contains(I)Z

    move-result v7

    if-nez v7, :cond_3

    .line 75
    new-array v6, v2, [F

    move v7, v1

    :goto_2
    if-ge v7, v2, :cond_8

    invoke-virtual {p1, v7}, Landroidx/compose/animation/core/AnimationVector;->get$animation_core_release(I)F

    move-result v8

    aput v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 77
    :cond_3
    new-array v7, v2, [F

    iget-object v8, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->keyframes:Landroidx/collection/IntObjectMap;

    invoke-virtual {v8, v6}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v6, Lkotlin/Pair;

    invoke-virtual {v6}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/animation/core/AnimationVector;

    move v8, v1

    :goto_3
    if-ge v8, v2, :cond_7

    invoke-virtual {v6, v8}, Landroidx/compose/animation/core/AnimationVector;->get$animation_core_release(I)F

    move-result v9

    aput v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 81
    :cond_4
    invoke-virtual {p0}, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->getDurationMillis()I

    move-result v7

    if-ne v6, v7, :cond_6

    .line 82
    iget-object v7, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->keyframes:Landroidx/collection/IntObjectMap;

    invoke-virtual {v7, v6}, Landroidx/collection/IntObjectMap;->contains(I)Z

    move-result v7

    if-nez v7, :cond_5

    .line 83
    new-array v6, v2, [F

    move v7, v1

    :goto_4
    if-ge v7, v2, :cond_8

    invoke-virtual {p2, v7}, Landroidx/compose/animation/core/AnimationVector;->get$animation_core_release(I)F

    move-result v8

    aput v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 85
    :cond_5
    new-array v7, v2, [F

    iget-object v8, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->keyframes:Landroidx/collection/IntObjectMap;

    invoke-virtual {v8, v6}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v6, Lkotlin/Pair;

    invoke-virtual {v6}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/animation/core/AnimationVector;

    move v8, v1

    :goto_5
    if-ge v8, v2, :cond_7

    invoke-virtual {v6, v8}, Landroidx/compose/animation/core/AnimationVector;->get$animation_core_release(I)F

    move-result v9

    aput v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 90
    :cond_6
    new-array v7, v2, [F

    iget-object v8, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->keyframes:Landroidx/collection/IntObjectMap;

    invoke-virtual {v8, v6}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v6, Lkotlin/Pair;

    invoke-virtual {v6}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/animation/core/AnimationVector;

    move v8, v1

    :goto_6
    if-ge v8, v2, :cond_7

    invoke-virtual {v6, v8}, Landroidx/compose/animation/core/AnimationVector;->get$animation_core_release(I)F

    move-result v9

    aput v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_7
    move-object v6, v7

    :cond_8
    aput-object v6, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 70
    :cond_9
    iput-object v0, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->values:[[F

    goto :goto_9

    :cond_a
    if-eqz p3, :cond_d

    .line 95
    iget-object p3, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->keyframes:Landroidx/collection/IntObjectMap;

    invoke-virtual {p3, v1}, Landroidx/collection/IntObjectMap;->contains(I)Z

    move-result p3

    if-nez p3, :cond_d

    .line 96
    iget-object p3, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->values:[[F

    if-nez p3, :cond_b

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p3, v5

    :cond_b
    iget-object v6, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->timestamps:Landroidx/collection/IntList;

    const/4 v10, 0x6

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Landroidx/compose/animation/core/IntListExtensionKt;->binarySearch$default(Landroidx/collection/IntList;IIIILjava/lang/Object;)I

    move-result v3

    new-array v6, v2, [F

    move v7, v1

    :goto_7
    if-ge v7, v2, :cond_c

    invoke-virtual {p1, v7}, Landroidx/compose/animation/core/AnimationVector;->get$animation_core_release(I)F

    move-result v8

    aput v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_c
    aput-object v6, p3, v3

    :cond_d
    if-eqz v0, :cond_10

    .line 98
    iget-object p1, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->keyframes:Landroidx/collection/IntObjectMap;

    invoke-virtual {p0}, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->getDurationMillis()I

    move-result p3

    invoke-virtual {p1, p3}, Landroidx/collection/IntObjectMap;->contains(I)Z

    move-result p1

    if-nez p1, :cond_10

    .line 99
    iget-object p1, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->values:[[F

    if-nez p1, :cond_e

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v5

    :cond_e
    iget-object v6, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->timestamps:Landroidx/collection/IntList;

    invoke-virtual {p0}, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->getDurationMillis()I

    move-result v7

    const/4 v10, 0x6

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Landroidx/compose/animation/core/IntListExtensionKt;->binarySearch$default(Landroidx/collection/IntList;IIIILjava/lang/Object;)I

    move-result p3

    .line 100
    new-array v0, v2, [F

    :goto_8
    if-ge v1, v2, :cond_f

    invoke-virtual {p2, v1}, Landroidx/compose/animation/core/AnimationVector;->get$animation_core_release(I)F

    move-result v3

    aput v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_f
    aput-object v0, p1, p3

    .line 103
    :cond_10
    :goto_9
    new-instance p1, Landroidx/compose/animation/core/MonoSpline;

    iget-object p2, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->times:[F

    if-nez p2, :cond_11

    const-string/jumbo p2, "times"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v5

    :cond_11
    iget-object p3, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->values:[[F

    if-nez p3, :cond_12

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_a

    :cond_12
    move-object v5, p3

    :goto_a
    iget p3, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->periodicBias:F

    invoke-direct {p1, p2, v5, p3}, Landroidx/compose/animation/core/MonoSpline;-><init>([F[[FF)V

    iput-object p1, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->monoSpline:Landroidx/compose/animation/core/MonoSpline;

    :cond_13
    return-void
.end method


# virtual methods
.method public getDelayMillis()I
    .locals 1

    .line 30
    iget v0, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->delayMillis:I

    return v0
.end method

.method public getDurationMillis()I
    .locals 1

    .line 29
    iget v0, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->durationMillis:I

    return v0
.end method

.method public getValueFromNanos(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;TV;TV;)TV;"
        }
    .end annotation

    const-wide/32 v0, 0xf4240

    .line 113
    div-long/2addr p1, v0

    .line 114
    move-object v0, p0

    check-cast v0, Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;

    invoke-static {v0, p1, p2}, Landroidx/compose/animation/core/VectorizedAnimationSpecKt;->clampPlayTime(Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;J)J

    move-result-wide p1

    long-to-int p1, p1

    .line 116
    iget-object p2, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->keyframes:Landroidx/collection/IntObjectMap;

    invoke-virtual {p2, p1}, Landroidx/collection/IntObjectMap;->containsKey(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 117
    iget-object p2, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->keyframes:Landroidx/collection/IntObjectMap;

    invoke-virtual {p2, p1}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/animation/core/AnimationVector;

    return-object p1

    .line 120
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->getDurationMillis()I

    move-result p2

    if-lt p1, p2, :cond_1

    return-object p4

    :cond_1
    if-gtz p1, :cond_2

    return-object p3

    .line 124
    :cond_2
    invoke-direct {p0, p3, p4, p5}, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->init(Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)V

    .line 128
    invoke-direct {p0, p1}, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->findEntryForTimeMillis(I)I

    move-result p2

    .line 130
    iget-object p3, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->monoSpline:Landroidx/compose/animation/core/MonoSpline;

    const/4 p4, 0x0

    if-nez p3, :cond_3

    const-string/jumbo p3, "monoSpline"

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p3, p4

    .line 132
    :cond_3
    invoke-direct {p0, p2, p1}, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->getEasedTimeFromIndex(II)F

    move-result p1

    .line 133
    iget-object p5, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->valueVector:Landroidx/compose/animation/core/AnimationVector;

    const-string/jumbo v0, "valueVector"

    if-nez p5, :cond_4

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p5, p4

    .line 130
    :cond_4
    invoke-virtual {p3, p1, p5, p2}, Landroidx/compose/animation/core/MonoSpline;->getPos(FLandroidx/compose/animation/core/AnimationVector;I)V

    .line 135
    iget-object p1, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->valueVector:Landroidx/compose/animation/core/AnimationVector;

    if-nez p1, :cond_5

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object p4, p1

    :goto_0
    return-object p4
.end method

.method public getVelocityFromNanos(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;TV;TV;)TV;"
        }
    .end annotation

    const-wide/32 v0, 0xf4240

    .line 144
    div-long/2addr p1, v0

    .line 145
    move-object v0, p0

    check-cast v0, Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;

    invoke-static {v0, p1, p2}, Landroidx/compose/animation/core/VectorizedAnimationSpecKt;->clampPlayTime(Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;J)J

    move-result-wide p1

    long-to-int p1, p1

    if-gez p1, :cond_0

    return-object p5

    .line 150
    :cond_0
    invoke-direct {p0, p3, p4, p5}, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->init(Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)V

    .line 154
    invoke-direct {p0, p1}, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->findEntryForTimeMillis(I)I

    move-result p2

    .line 156
    iget-object p3, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->monoSpline:Landroidx/compose/animation/core/MonoSpline;

    const/4 p4, 0x0

    if-nez p3, :cond_1

    const-string/jumbo p3, "monoSpline"

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p3, p4

    .line 158
    :cond_1
    invoke-direct {p0, p2, p1}, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->getEasedTimeFromIndex(II)F

    move-result p1

    .line 159
    iget-object p5, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->velocityVector:Landroidx/compose/animation/core/AnimationVector;

    const-string/jumbo v0, "velocityVector"

    if-nez p5, :cond_2

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p5, p4

    .line 156
    :cond_2
    invoke-virtual {p3, p1, p5, p2}, Landroidx/compose/animation/core/MonoSpline;->getSlope(FLandroidx/compose/animation/core/AnimationVector;I)V

    .line 161
    iget-object p1, p0, Landroidx/compose/animation/core/VectorizedMonoSplineKeyframesSpec;->velocityVector:Landroidx/compose/animation/core/AnimationVector;

    if-nez p1, :cond_3

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object p4, p1

    :goto_0
    return-object p4
.end method
