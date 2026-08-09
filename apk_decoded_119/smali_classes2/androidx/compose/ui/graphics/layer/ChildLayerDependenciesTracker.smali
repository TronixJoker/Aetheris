.class public final Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;
.super Ljava/lang/Object;
.source "ChildLayerDependenciesTracker.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChildLayerDependenciesTracker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChildLayerDependenciesTracker.kt\nandroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker\n+ 2 ScatterSet.kt\nandroidx/collection/ScatterSet\n+ 3 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n+ 4 InlineClassHelper.kt\nandroidx/compose/ui/graphics/InlineClassHelperKt\n*L\n1#1,117:1\n267#2,4:118\n237#2,7:122\n248#2,3:130\n251#2,2:134\n272#2,2:136\n254#2,6:138\n274#2:144\n267#2,4:152\n237#2,7:156\n248#2,3:164\n251#2,2:168\n272#2,2:170\n254#2,6:172\n274#2:178\n1810#3:129\n1672#3:133\n1810#3:163\n1672#3:167\n33#4,7:145\n*S KotlinDebug\n*F\n+ 1 ChildLayerDependenciesTracker.kt\nandroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker\n*L\n63#1:118,4\n63#1:122,7\n63#1:130,3\n63#1:134,2\n63#1:136,2\n63#1:138,6\n63#1:144\n112#1:152,4\n112#1:156,7\n112#1:164,3\n112#1:168,2\n112#1:170,2\n112#1:172,6\n112#1:178\n63#1:129\n63#1:133\n112#1:163\n112#1:167\n73#1:145,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\u0005J\u001d\u0010\r\u001a\u00020\u000e2\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u000e0\u0010H\u0086\u0008J+\u0010\u0011\u001a\u00020\u000e2\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u000e0\u00102\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u0013H\u0086\u0008R\u0016\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;",
        "",
        "()V",
        "dependenciesSet",
        "Landroidx/collection/MutableScatterSet;",
        "Landroidx/compose/ui/graphics/layer/GraphicsLayer;",
        "dependency",
        "oldDependenciesSet",
        "oldDependency",
        "trackingInProgress",
        "",
        "onDependencyAdded",
        "graphicsLayer",
        "removeDependencies",
        "",
        "block",
        "Lkotlin/Function1;",
        "withTracking",
        "onDependencyRemoved",
        "Lkotlin/Function0;",
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
.field private dependenciesSet:Landroidx/collection/MutableScatterSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableScatterSet<",
            "Landroidx/compose/ui/graphics/layer/GraphicsLayer;",
            ">;"
        }
    .end annotation
.end field

.field private dependency:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

.field private oldDependenciesSet:Landroidx/collection/MutableScatterSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableScatterSet<",
            "Landroidx/compose/ui/graphics/layer/GraphicsLayer;",
            ">;"
        }
    .end annotation
.end field

.field private oldDependency:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

.field private trackingInProgress:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getDependenciesSet$p(Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;)Landroidx/collection/MutableScatterSet;
    .locals 0

    .line 26
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->dependenciesSet:Landroidx/collection/MutableScatterSet;

    return-object p0
.end method

.method public static final synthetic access$getDependency$p(Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;)Landroidx/compose/ui/graphics/layer/GraphicsLayer;
    .locals 0

    .line 26
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->dependency:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    return-object p0
.end method

.method public static final synthetic access$getOldDependenciesSet$p(Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;)Landroidx/collection/MutableScatterSet;
    .locals 0

    .line 26
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->oldDependenciesSet:Landroidx/collection/MutableScatterSet;

    return-object p0
.end method

.method public static final synthetic access$getOldDependency$p(Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;)Landroidx/compose/ui/graphics/layer/GraphicsLayer;
    .locals 0

    .line 26
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->oldDependency:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    return-object p0
.end method

.method public static final synthetic access$setDependency$p(Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 0

    .line 26
    iput-object p1, p0, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->dependency:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    return-void
.end method

.method public static final synthetic access$setOldDependenciesSet$p(Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;Landroidx/collection/MutableScatterSet;)V
    .locals 0

    .line 26
    iput-object p1, p0, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->oldDependenciesSet:Landroidx/collection/MutableScatterSet;

    return-void
.end method

.method public static final synthetic access$setOldDependency$p(Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 0

    .line 26
    iput-object p1, p0, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->oldDependency:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    return-void
.end method

.method public static final synthetic access$setTrackingInProgress$p(Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;Z)V
    .locals 0

    .line 26
    iput-boolean p1, p0, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->trackingInProgress:Z

    return-void
.end method


# virtual methods
.method public final onDependencyAdded(Landroidx/compose/ui/graphics/layer/GraphicsLayer;)Z
    .locals 3

    .line 73
    iget-boolean v0, p0, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->trackingInProgress:Z

    if-nez v0, :cond_0

    const-string v0, "Only add dependencies during a tracking"

    .line 149
    invoke-static {v0}, Landroidx/compose/ui/graphics/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 76
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->dependenciesSet:Landroidx/collection/MutableScatterSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 77
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 78
    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->dependency:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    if-eqz v0, :cond_2

    .line 79
    invoke-static {}, Landroidx/collection/ScatterSetKt;->mutableScatterSetOf()Landroidx/collection/MutableScatterSet;

    move-result-object v0

    .line 80
    iget-object v2, p0, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->dependency:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    .line 81
    invoke-virtual {v0, p1}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    .line 79
    iput-object v0, p0, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->dependenciesSet:Landroidx/collection/MutableScatterSet;

    .line 83
    iput-object v1, p0, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->dependency:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    goto :goto_0

    .line 85
    :cond_2
    iput-object p1, p0, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->dependency:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 89
    :goto_0
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->oldDependenciesSet:Landroidx/collection/MutableScatterSet;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 91
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Landroidx/collection/MutableScatterSet;->remove(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v2

    return p1

    .line 93
    :cond_3
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->oldDependency:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    if-eq v0, p1, :cond_4

    return v2

    .line 97
    :cond_4
    iput-object v1, p0, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->oldDependency:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    const/4 p1, 0x0

    return p1
.end method

.method public final removeDependencies(Lkotlin/jvm/functions/Function1;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/graphics/layer/GraphicsLayer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 107
    invoke-static/range {p0 .. p0}, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->access$getDependency$p(Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;)Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 108
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    move-object/from16 v2, p0

    .line 109
    invoke-static {v2, v1}, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->access$setDependency$p(Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    goto :goto_0

    :cond_0
    move-object/from16 v2, p0

    .line 111
    :goto_0
    invoke-static/range {p0 .. p0}, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->access$getDependenciesSet$p(Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;)Landroidx/collection/MutableScatterSet;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 112
    move-object v3, v1

    check-cast v3, Landroidx/collection/ScatterSet;

    .line 153
    iget-object v4, v3, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 157
    iget-object v3, v3, Landroidx/collection/ScatterSet;->metadata:[J

    .line 158
    array-length v5, v3

    add-int/lit8 v5, v5, -0x2

    if-ltz v5, :cond_4

    const/4 v6, 0x0

    move v7, v6

    .line 161
    :goto_1
    aget-wide v8, v3, v7

    not-long v10, v8

    const/4 v12, 0x7

    shl-long/2addr v10, v12

    and-long/2addr v10, v8

    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v10, v12

    cmp-long v10, v10, v12

    if-eqz v10, :cond_3

    sub-int v10, v7, v5

    not-int v10, v10

    ushr-int/lit8 v10, v10, 0x1f

    const/16 v11, 0x8

    rsub-int/lit8 v10, v10, 0x8

    move v12, v6

    :goto_2
    if-ge v12, v10, :cond_2

    const-wide/16 v13, 0xff

    and-long/2addr v13, v8

    const-wide/16 v15, 0x80

    cmp-long v13, v13, v15

    if-gez v13, :cond_1

    shl-int/lit8 v13, v7, 0x3

    add-int/2addr v13, v12

    .line 170
    aget-object v13, v4, v13

    invoke-interface {v0, v13}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    shr-long/2addr v8, v11

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_2
    if-ne v10, v11, :cond_4

    :cond_3
    if-eq v7, v5, :cond_4

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 113
    :cond_4
    invoke-virtual {v1}, Landroidx/collection/MutableScatterSet;->clear()V

    :cond_5
    return-void
.end method

.method public final withTracking(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/graphics/layer/GraphicsLayer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 44
    invoke-static/range {p0 .. p0}, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->access$getDependency$p(Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;)Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->access$setOldDependency$p(Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    .line 45
    invoke-static/range {p0 .. p0}, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->access$getDependenciesSet$p(Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;)Landroidx/collection/MutableScatterSet;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 46
    invoke-virtual {v2}, Landroidx/collection/MutableScatterSet;->isNotEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 47
    invoke-static/range {p0 .. p0}, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->access$getOldDependenciesSet$p(Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;)Landroidx/collection/MutableScatterSet;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-static {}, Landroidx/collection/ScatterSetKt;->mutableScatterSetOf()Landroidx/collection/MutableScatterSet;

    move-result-object v3

    .line 48
    invoke-static {v0, v3}, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->access$setOldDependenciesSet$p(Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;Landroidx/collection/MutableScatterSet;)V

    .line 50
    :cond_0
    move-object v4, v2

    check-cast v4, Landroidx/collection/ScatterSet;

    invoke-virtual {v3, v4}, Landroidx/collection/MutableScatterSet;->addAll(Landroidx/collection/ScatterSet;)Z

    .line 51
    invoke-virtual {v2}, Landroidx/collection/MutableScatterSet;->clear()V

    :cond_1
    const/4 v2, 0x1

    .line 54
    invoke-static {v0, v2}, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->access$setTrackingInProgress$p(Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;Z)V

    .line 55
    invoke-interface/range {p2 .. p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    const/4 v2, 0x0

    .line 56
    invoke-static {v0, v2}, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->access$setTrackingInProgress$p(Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;Z)V

    .line 60
    invoke-static/range {p0 .. p0}, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->access$getOldDependency$p(Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;)Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v1, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :cond_2
    invoke-static/range {p0 .. p0}, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->access$getOldDependenciesSet$p(Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;)Landroidx/collection/MutableScatterSet;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 62
    invoke-virtual {v3}, Landroidx/collection/MutableScatterSet;->isNotEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 63
    move-object v4, v3

    check-cast v4, Landroidx/collection/ScatterSet;

    .line 119
    iget-object v5, v4, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 123
    iget-object v4, v4, Landroidx/collection/ScatterSet;->metadata:[J

    .line 124
    array-length v6, v4

    add-int/lit8 v6, v6, -0x2

    if-ltz v6, :cond_6

    move v7, v2

    .line 127
    :goto_0
    aget-wide v8, v4, v7

    not-long v10, v8

    const/4 v12, 0x7

    shl-long/2addr v10, v12

    and-long/2addr v10, v8

    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v10, v12

    cmp-long v10, v10, v12

    if-eqz v10, :cond_5

    sub-int v10, v7, v6

    not-int v10, v10

    ushr-int/lit8 v10, v10, 0x1f

    const/16 v11, 0x8

    rsub-int/lit8 v10, v10, 0x8

    move v12, v2

    :goto_1
    if-ge v12, v10, :cond_4

    const-wide/16 v13, 0xff

    and-long/2addr v13, v8

    const-wide/16 v15, 0x80

    cmp-long v13, v13, v15

    if-gez v13, :cond_3

    shl-int/lit8 v13, v7, 0x3

    add-int/2addr v13, v12

    .line 136
    aget-object v13, v5, v13

    invoke-interface {v1, v13}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    shr-long/2addr v8, v11

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_4
    if-ne v10, v11, :cond_6

    :cond_5
    if-eq v7, v6, :cond_6

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 64
    :cond_6
    invoke-virtual {v3}, Landroidx/collection/MutableScatterSet;->clear()V

    :cond_7
    return-void
.end method
