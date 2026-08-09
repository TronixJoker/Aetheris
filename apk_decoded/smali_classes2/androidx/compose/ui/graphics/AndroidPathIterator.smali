.class final Landroidx/compose/ui/graphics/AndroidPathIterator;
.super Ljava/lang/Object;
.source "AndroidPathIterator.android.kt"

# interfaces
.implements Landroidx/compose/ui/graphics/PathIterator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/graphics/AndroidPathIterator$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidPathIterator.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidPathIterator.android.kt\nandroidx/compose/ui/graphics/AndroidPathIterator\n+ 2 AndroidPath.android.kt\nandroidx/compose/ui/graphics/AndroidPath_androidKt\n*L\n1#1,86:1\n38#2,5:87\n*S KotlinDebug\n*F\n+ 1 AndroidPathIterator.android.kt\nandroidx/compose/ui/graphics/AndroidPathIterator\n*L\n37#1:87,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0014\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0002\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\t\u0010\u0017\u001a\u00020\u0016H\u0096\u0002J\t\u0010\u0018\u001a\u00020\u0019H\u0096\u0002J\u0018\u0010\u0018\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u00102\u0006\u0010\u001c\u001a\u00020\u0014H\u0016R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u001d"
    }
    d2 = {
        "Landroidx/compose/ui/graphics/AndroidPathIterator;",
        "Landroidx/compose/ui/graphics/PathIterator;",
        "path",
        "Landroidx/compose/ui/graphics/Path;",
        "conicEvaluation",
        "Landroidx/compose/ui/graphics/PathIterator$ConicEvaluation;",
        "tolerance",
        "",
        "(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/PathIterator$ConicEvaluation;F)V",
        "getConicEvaluation",
        "()Landroidx/compose/ui/graphics/PathIterator$ConicEvaluation;",
        "implementation",
        "Landroidx/graphics/path/PathIterator;",
        "getPath",
        "()Landroidx/compose/ui/graphics/Path;",
        "segmentPoints",
        "",
        "getTolerance",
        "()F",
        "calculateSize",
        "",
        "includeConvertedConics",
        "",
        "hasNext",
        "next",
        "Landroidx/compose/ui/graphics/PathSegment;",
        "Landroidx/compose/ui/graphics/PathSegment$Type;",
        "outPoints",
        "offset",
        "ui-graphics_release"
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
.field private final conicEvaluation:Landroidx/compose/ui/graphics/PathIterator$ConicEvaluation;

.field private final implementation:Landroidx/graphics/path/PathIterator;

.field private final path:Landroidx/compose/ui/graphics/Path;

.field private final segmentPoints:[F

.field private final tolerance:F


# direct methods
.method public constructor <init>(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/PathIterator$ConicEvaluation;F)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Landroidx/compose/ui/graphics/AndroidPathIterator;->path:Landroidx/compose/ui/graphics/Path;

    .line 31
    iput-object p2, p0, Landroidx/compose/ui/graphics/AndroidPathIterator;->conicEvaluation:Landroidx/compose/ui/graphics/PathIterator$ConicEvaluation;

    .line 32
    iput p3, p0, Landroidx/compose/ui/graphics/AndroidPathIterator;->tolerance:F

    const/16 p1, 0x8

    .line 34
    new-array p1, p1, [F

    iput-object p1, p0, Landroidx/compose/ui/graphics/AndroidPathIterator;->segmentPoints:[F

    .line 36
    new-instance p1, Landroidx/graphics/path/PathIterator;

    .line 37
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/AndroidPathIterator;->getPath()Landroidx/compose/ui/graphics/Path;

    move-result-object p2

    .line 87
    instance-of p3, p2, Landroidx/compose/ui/graphics/AndroidPath;

    if-eqz p3, :cond_2

    .line 88
    check-cast p2, Landroidx/compose/ui/graphics/AndroidPath;

    invoke-virtual {p2}, Landroidx/compose/ui/graphics/AndroidPath;->getInternalPath()Landroid/graphics/Path;

    move-result-object p2

    .line 38
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/AndroidPathIterator;->getConicEvaluation()Landroidx/compose/ui/graphics/PathIterator$ConicEvaluation;

    move-result-object p3

    sget-object v0, Landroidx/compose/ui/graphics/AndroidPathIterator$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p3}, Landroidx/compose/ui/graphics/PathIterator$ConicEvaluation;->ordinal()I

    move-result p3

    aget p3, v0, p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    .line 40
    sget-object p3, Landroidx/graphics/path/PathIterator$ConicEvaluation;->AsQuadratics:Landroidx/graphics/path/PathIterator$ConicEvaluation;

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 39
    :cond_1
    sget-object p3, Landroidx/graphics/path/PathIterator$ConicEvaluation;->AsConic:Landroidx/graphics/path/PathIterator$ConicEvaluation;

    .line 42
    :goto_0
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/AndroidPathIterator;->getTolerance()F

    move-result v0

    .line 36
    invoke-direct {p1, p2, p3, v0}, Landroidx/graphics/path/PathIterator;-><init>(Landroid/graphics/Path;Landroidx/graphics/path/PathIterator$ConicEvaluation;F)V

    iput-object p1, p0, Landroidx/compose/ui/graphics/AndroidPathIterator;->implementation:Landroidx/graphics/path/PathIterator;

    return-void

    .line 90
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Unable to obtain android.graphics.Path"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public calculateSize(Z)I
    .locals 1

    .line 46
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidPathIterator;->implementation:Landroidx/graphics/path/PathIterator;

    invoke-virtual {v0, p1}, Landroidx/graphics/path/PathIterator;->calculateSize(Z)I

    move-result p1

    return p1
.end method

.method public getConicEvaluation()Landroidx/compose/ui/graphics/PathIterator$ConicEvaluation;
    .locals 1

    .line 31
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidPathIterator;->conicEvaluation:Landroidx/compose/ui/graphics/PathIterator$ConicEvaluation;

    return-object v0
.end method

.method public getPath()Landroidx/compose/ui/graphics/Path;
    .locals 1

    .line 30
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidPathIterator;->path:Landroidx/compose/ui/graphics/Path;

    return-object v0
.end method

.method public getTolerance()F
    .locals 1

    .line 32
    iget v0, p0, Landroidx/compose/ui/graphics/AndroidPathIterator;->tolerance:F

    return v0
.end method

.method public hasNext()Z
    .locals 1

    .line 48
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidPathIterator;->implementation:Landroidx/graphics/path/PathIterator;

    invoke-virtual {v0}, Landroidx/graphics/path/PathIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next([FI)Landroidx/compose/ui/graphics/PathSegment$Type;
    .locals 1

    .line 51
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidPathIterator;->implementation:Landroidx/graphics/path/PathIterator;

    invoke-virtual {v0, p1, p2}, Landroidx/graphics/path/PathIterator;->next([FI)Landroidx/graphics/path/PathSegment$Type;

    move-result-object p1

    invoke-static {p1}, Landroidx/compose/ui/graphics/AndroidPathIterator_androidKt;->access$toPathSegmentType(Landroidx/graphics/path/PathSegment$Type;)Landroidx/compose/ui/graphics/PathSegment$Type;

    move-result-object p1

    return-object p1
.end method

.method public next()Landroidx/compose/ui/graphics/PathSegment;
    .locals 11

    .line 54
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidPathIterator;->segmentPoints:[F

    .line 56
    iget-object v1, p0, Landroidx/compose/ui/graphics/AndroidPathIterator;->implementation:Landroidx/graphics/path/PathIterator;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroidx/graphics/path/PathIterator;->next([FI)Landroidx/graphics/path/PathSegment$Type;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/ui/graphics/AndroidPathIterator_androidKt;->access$toPathSegmentType(Landroidx/graphics/path/PathSegment$Type;)Landroidx/compose/ui/graphics/PathSegment$Type;

    move-result-object v1

    .line 57
    sget-object v3, Landroidx/compose/ui/graphics/PathSegment$Type;->Done:Landroidx/compose/ui/graphics/PathSegment$Type;

    if-ne v1, v3, :cond_0

    invoke-static {}, Landroidx/compose/ui/graphics/PathSegmentKt;->getDoneSegment()Landroidx/compose/ui/graphics/PathSegment;

    move-result-object v0

    return-object v0

    .line 58
    :cond_0
    sget-object v3, Landroidx/compose/ui/graphics/PathSegment$Type;->Close:Landroidx/compose/ui/graphics/PathSegment$Type;

    if-ne v1, v3, :cond_1

    invoke-static {}, Landroidx/compose/ui/graphics/PathSegmentKt;->getCloseSegment()Landroidx/compose/ui/graphics/PathSegment;

    move-result-object v0

    return-object v0

    .line 60
    :cond_1
    sget-object v3, Landroidx/compose/ui/graphics/AndroidPathIterator$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/PathSegment$Type;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x6

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v3, v6, :cond_6

    const/4 v7, 0x4

    const/4 v8, 0x3

    if-eq v3, v5, :cond_5

    const/4 v9, 0x5

    if-eq v3, v8, :cond_4

    if-eq v3, v7, :cond_3

    if-eq v3, v9, :cond_2

    .line 66
    new-array v2, v2, [F

    goto/16 :goto_1

    :cond_2
    const/16 v3, 0x8

    .line 65
    new-array v3, v3, [F

    aget v10, v0, v2

    aput v10, v3, v2

    aget v2, v0, v6

    aput v2, v3, v6

    aget v2, v0, v5

    aput v2, v3, v5

    aget v2, v0, v8

    aput v2, v3, v8

    aget v2, v0, v7

    aput v2, v3, v7

    aget v2, v0, v9

    aput v2, v3, v9

    aget v2, v0, v4

    aput v2, v3, v4

    const/4 v2, 0x7

    aget v5, v0, v2

    aput v5, v3, v2

    goto :goto_0

    .line 64
    :cond_3
    new-array v3, v4, [F

    aget v10, v0, v2

    aput v10, v3, v2

    aget v2, v0, v6

    aput v2, v3, v6

    aget v2, v0, v5

    aput v2, v3, v5

    aget v2, v0, v8

    aput v2, v3, v8

    aget v2, v0, v7

    aput v2, v3, v7

    aget v2, v0, v9

    aput v2, v3, v9

    goto :goto_0

    .line 63
    :cond_4
    new-array v3, v4, [F

    aget v10, v0, v2

    aput v10, v3, v2

    aget v2, v0, v6

    aput v2, v3, v6

    aget v2, v0, v5

    aput v2, v3, v5

    aget v2, v0, v8

    aput v2, v3, v8

    aget v2, v0, v7

    aput v2, v3, v7

    aget v2, v0, v9

    aput v2, v3, v9

    goto :goto_0

    .line 62
    :cond_5
    new-array v3, v7, [F

    aget v7, v0, v2

    aput v7, v3, v2

    aget v2, v0, v6

    aput v2, v3, v6

    aget v2, v0, v5

    aput v2, v3, v5

    aget v2, v0, v8

    aput v2, v3, v8

    goto :goto_0

    .line 61
    :cond_6
    new-array v3, v5, [F

    aget v5, v0, v2

    aput v5, v3, v2

    aget v2, v0, v6

    aput v2, v3, v6

    :goto_0
    move-object v2, v3

    .line 69
    :goto_1
    new-instance v3, Landroidx/compose/ui/graphics/PathSegment;

    .line 72
    sget-object v5, Landroidx/compose/ui/graphics/PathSegment$Type;->Conic:Landroidx/compose/ui/graphics/PathSegment$Type;

    if-ne v1, v5, :cond_7

    aget v0, v0, v4

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    .line 69
    :goto_2
    invoke-direct {v3, v1, v2, v0}, Landroidx/compose/ui/graphics/PathSegment;-><init>(Landroidx/compose/ui/graphics/PathSegment$Type;[FF)V

    return-object v3
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 29
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/AndroidPathIterator;->next()Landroidx/compose/ui/graphics/PathSegment;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
