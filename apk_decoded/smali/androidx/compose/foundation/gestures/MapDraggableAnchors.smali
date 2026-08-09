.class final Landroidx/compose/foundation/gestures/MapDraggableAnchors;
.super Ljava/lang/Object;
.source "AnchoredDraggable.kt"

# interfaces
.implements Landroidx/compose/foundation/gestures/DraggableAnchors;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/compose/foundation/gestures/DraggableAnchors<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAnchoredDraggable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnchoredDraggable.kt\nandroidx/compose/foundation/gestures/MapDraggableAnchors\n+ 2 ObjectFloatMap.kt\nandroidx/collection/ObjectFloatMap\n+ 3 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n*L\n1#1,1220:1\n401#2,4:1221\n373#2,6:1225\n383#2,3:1232\n386#2,2:1236\n406#2,2:1238\n389#2,6:1240\n408#2:1246\n401#2,4:1247\n373#2,6:1251\n383#2,3:1258\n386#2,2:1262\n406#2,2:1264\n389#2,6:1266\n408#2:1272\n401#2,4:1273\n373#2,6:1277\n383#2,3:1284\n386#2,2:1288\n406#2,2:1290\n389#2,6:1292\n408#2:1298\n1810#3:1231\n1672#3:1235\n1810#3:1257\n1672#3:1261\n1810#3:1283\n1672#3:1287\n*S KotlinDebug\n*F\n+ 1 AnchoredDraggable.kt\nandroidx/compose/foundation/gestures/MapDraggableAnchors\n*L\n1142#1:1221,4\n1142#1:1225,6\n1142#1:1232,3\n1142#1:1236,2\n1142#1:1238,2\n1142#1:1240,6\n1142#1:1246\n1158#1:1247,4\n1158#1:1251,6\n1158#1:1258,3\n1158#1:1262,2\n1158#1:1264,2\n1158#1:1266,6\n1158#1:1272\n1188#1:1273,4\n1188#1:1277,6\n1188#1:1284,3\n1188#1:1288,2\n1188#1:1290,2\n1188#1:1292,6\n1188#1:1298\n1142#1:1231\n1142#1:1235\n1158#1:1257\n1158#1:1261\n1188#1:1283\n1188#1:1287\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000e\n\u0000\u0008\u0002\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\u0013\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u00a2\u0006\u0002\u0010\u0005J\u0017\u0010\n\u001a\u0004\u0018\u00018\u00002\u0006\u0010\u000b\u001a\u00020\u000cH\u0016\u00a2\u0006\u0002\u0010\rJ\u001f\u0010\n\u001a\u0004\u0018\u00018\u00002\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016\u00a2\u0006\u0002\u0010\u0010J\u0013\u0010\u0011\u001a\u00020\u000f2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0096\u0002J@\u0010\u0014\u001a\u00020\u001526\u0010\u0016\u001a2\u0012\u0013\u0012\u00118\u0000\u00a2\u0006\u000c\u0008\u0018\u0012\u0008\u0008\u0019\u0012\u0004\u0008\u0008(\u001a\u0012\u0013\u0012\u00110\u000c\u00a2\u0006\u000c\u0008\u0018\u0012\u0008\u0008\u0019\u0012\u0004\u0008\u0008(\u000b\u0012\u0004\u0012\u00020\u00150\u0017H\u0016J\u0015\u0010\u001b\u001a\u00020\u000f2\u0006\u0010\u001c\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u001dJ\u0008\u0010\u001e\u001a\u00020\u0007H\u0016J\u0008\u0010\u001f\u001a\u00020\u000cH\u0016J\u0008\u0010 \u001a\u00020\u000cH\u0016J\u0015\u0010!\u001a\u00020\u000c2\u0006\u0010\u001c\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\"J\u0008\u0010#\u001a\u00020$H\u0016R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u00020\u00078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006%"
    }
    d2 = {
        "Landroidx/compose/foundation/gestures/MapDraggableAnchors;",
        "T",
        "Landroidx/compose/foundation/gestures/DraggableAnchors;",
        "anchors",
        "Landroidx/collection/ObjectFloatMap;",
        "(Landroidx/collection/ObjectFloatMap;)V",
        "size",
        "",
        "getSize",
        "()I",
        "closestAnchor",
        "position",
        "",
        "(F)Ljava/lang/Object;",
        "searchUpwards",
        "",
        "(FZ)Ljava/lang/Object;",
        "equals",
        "other",
        "",
        "forEach",
        "",
        "block",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "name",
        "anchor",
        "hasAnchorFor",
        "value",
        "(Ljava/lang/Object;)Z",
        "hashCode",
        "maxAnchor",
        "minAnchor",
        "positionOf",
        "(Ljava/lang/Object;)F",
        "toString",
        "",
        "foundation_release"
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
.field private final anchors:Landroidx/collection/ObjectFloatMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ObjectFloatMap<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/collection/ObjectFloatMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ObjectFloatMap<",
            "TT;>;)V"
        }
    .end annotation

    .line 1132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1133
    iput-object p1, p0, Landroidx/compose/foundation/gestures/MapDraggableAnchors;->anchors:Landroidx/collection/ObjectFloatMap;

    return-void
.end method


# virtual methods
.method public closestAnchor(F)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1142
    iget-object v1, v0, Landroidx/compose/foundation/gestures/MapDraggableAnchors;->anchors:Landroidx/collection/ObjectFloatMap;

    .line 1221
    iget-object v2, v1, Landroidx/collection/ObjectFloatMap;->keys:[Ljava/lang/Object;

    .line 1222
    iget-object v3, v1, Landroidx/collection/ObjectFloatMap;->values:[F

    .line 1225
    iget-object v1, v1, Landroidx/collection/ObjectFloatMap;->metadata:[J

    .line 1226
    array-length v4, v1

    add-int/lit8 v4, v4, -0x2

    const/4 v5, 0x0

    if-ltz v4, :cond_3

    const/high16 v6, 0x7f800000    # Float.POSITIVE_INFINITY

    const/4 v7, 0x0

    move v8, v7

    .line 1229
    :goto_0
    aget-wide v9, v1, v8

    not-long v11, v9

    const/4 v13, 0x7

    shl-long/2addr v11, v13

    and-long/2addr v11, v9

    const-wide v13, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v11, v13

    cmp-long v11, v11, v13

    if-eqz v11, :cond_2

    sub-int v11, v8, v4

    not-int v11, v11

    ushr-int/lit8 v11, v11, 0x1f

    const/16 v12, 0x8

    rsub-int/lit8 v11, v11, 0x8

    move v13, v7

    :goto_1
    if-ge v13, v11, :cond_1

    const-wide/16 v14, 0xff

    and-long/2addr v14, v9

    const-wide/16 v16, 0x80

    cmp-long v14, v14, v16

    if-gez v14, :cond_0

    shl-int/lit8 v14, v8, 0x3

    add-int/2addr v14, v13

    .line 1238
    aget-object v15, v2, v14

    aget v14, v3, v14

    sub-float v14, p1, v14

    .line 1143
    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    cmpg-float v16, v14, v6

    if-gtz v16, :cond_0

    move v6, v14

    move-object v5, v15

    :cond_0
    shr-long/2addr v9, v12

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_1
    if-ne v11, v12, :cond_3

    :cond_2
    if-eq v8, v4, :cond_3

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    return-object v5
.end method

.method public closestAnchor(FZ)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FZ)TT;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1158
    iget-object v1, v0, Landroidx/compose/foundation/gestures/MapDraggableAnchors;->anchors:Landroidx/collection/ObjectFloatMap;

    .line 1247
    iget-object v2, v1, Landroidx/collection/ObjectFloatMap;->keys:[Ljava/lang/Object;

    .line 1248
    iget-object v3, v1, Landroidx/collection/ObjectFloatMap;->values:[F

    .line 1251
    iget-object v1, v1, Landroidx/collection/ObjectFloatMap;->metadata:[J

    .line 1252
    array-length v4, v1

    add-int/lit8 v4, v4, -0x2

    const/4 v5, 0x0

    if-ltz v4, :cond_5

    const/high16 v6, 0x7f800000    # Float.POSITIVE_INFINITY

    const/4 v7, 0x0

    move v9, v6

    move v8, v7

    .line 1255
    :goto_0
    aget-wide v10, v1, v8

    not-long v12, v10

    const/4 v14, 0x7

    shl-long/2addr v12, v14

    and-long/2addr v12, v10

    const-wide v14, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v12, v14

    cmp-long v12, v12, v14

    if-eqz v12, :cond_4

    sub-int v12, v8, v4

    not-int v12, v12

    ushr-int/lit8 v12, v12, 0x1f

    const/16 v13, 0x8

    rsub-int/lit8 v12, v12, 0x8

    move v14, v7

    :goto_1
    if-ge v14, v12, :cond_3

    const-wide/16 v15, 0xff

    and-long/2addr v15, v10

    const-wide/16 v17, 0x80

    cmp-long v15, v15, v17

    if-gez v15, :cond_2

    shl-int/lit8 v15, v8, 0x3

    add-int/2addr v15, v14

    .line 1264
    aget-object v16, v2, v15

    aget v15, v3, v15

    if-eqz p2, :cond_0

    sub-float v15, v15, p1

    goto :goto_2

    :cond_0
    sub-float v15, p1, v15

    :goto_2
    const/16 v17, 0x0

    cmpg-float v17, v15, v17

    if-gez v17, :cond_1

    move v15, v6

    :cond_1
    cmpg-float v17, v15, v9

    if-gtz v17, :cond_2

    move v9, v15

    move-object/from16 v5, v16

    :cond_2
    shr-long/2addr v10, v13

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_3
    if-ne v12, v13, :cond_5

    :cond_4
    if-eq v8, v4, :cond_5

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_5
    return-object v5
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1178
    :cond_0
    instance-of v0, p1, Landroidx/compose/foundation/gestures/MapDraggableAnchors;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 1180
    :cond_1
    iget-object v0, p0, Landroidx/compose/foundation/gestures/MapDraggableAnchors;->anchors:Landroidx/collection/ObjectFloatMap;

    check-cast p1, Landroidx/compose/foundation/gestures/MapDraggableAnchors;

    iget-object p1, p1, Landroidx/compose/foundation/gestures/MapDraggableAnchors;->anchors:Landroidx/collection/ObjectFloatMap;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public forEach(Lkotlin/jvm/functions/Function2;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-TT;-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1188
    iget-object v1, v0, Landroidx/compose/foundation/gestures/MapDraggableAnchors;->anchors:Landroidx/collection/ObjectFloatMap;

    .line 1273
    iget-object v2, v1, Landroidx/collection/ObjectFloatMap;->keys:[Ljava/lang/Object;

    .line 1274
    iget-object v3, v1, Landroidx/collection/ObjectFloatMap;->values:[F

    .line 1277
    iget-object v1, v1, Landroidx/collection/ObjectFloatMap;->metadata:[J

    .line 1278
    array-length v4, v1

    add-int/lit8 v4, v4, -0x2

    if-ltz v4, :cond_3

    const/4 v5, 0x0

    move v6, v5

    .line 1281
    :goto_0
    aget-wide v7, v1, v6

    not-long v9, v7

    const/4 v11, 0x7

    shl-long/2addr v9, v11

    and-long/2addr v9, v7

    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v9, v11

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    sub-int v9, v6, v4

    not-int v9, v9

    ushr-int/lit8 v9, v9, 0x1f

    const/16 v10, 0x8

    rsub-int/lit8 v9, v9, 0x8

    move v11, v5

    :goto_1
    if-ge v11, v9, :cond_1

    const-wide/16 v12, 0xff

    and-long/2addr v12, v7

    const-wide/16 v14, 0x80

    cmp-long v12, v12, v14

    if-gez v12, :cond_0

    shl-int/lit8 v12, v6, 0x3

    add-int/2addr v12, v11

    .line 1290
    aget-object v13, v2, v12

    aget v12, v3, v12

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    move-object/from16 v14, p1

    invoke-interface {v14, v13, v12}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_0
    move-object/from16 v14, p1

    :goto_2
    shr-long/2addr v7, v10

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v14, p1

    if-ne v9, v10, :cond_3

    goto :goto_3

    :cond_2
    move-object/from16 v14, p1

    :goto_3
    if-eq v6, v4, :cond_3

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public getSize()I
    .locals 1

    .line 1174
    iget-object v0, p0, Landroidx/compose/foundation/gestures/MapDraggableAnchors;->anchors:Landroidx/collection/ObjectFloatMap;

    invoke-virtual {v0}, Landroidx/collection/ObjectFloatMap;->getSize()I

    move-result v0

    return v0
.end method

.method public hasAnchorFor(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1137
    iget-object v0, p0, Landroidx/compose/foundation/gestures/MapDraggableAnchors;->anchors:Landroidx/collection/ObjectFloatMap;

    invoke-virtual {v0, p1}, Landroidx/collection/ObjectFloatMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1183
    iget-object v0, p0, Landroidx/compose/foundation/gestures/MapDraggableAnchors;->anchors:Landroidx/collection/ObjectFloatMap;

    invoke-virtual {v0}, Landroidx/collection/ObjectFloatMap;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public maxAnchor()F
    .locals 1

    .line 1171
    iget-object v0, p0, Landroidx/compose/foundation/gestures/MapDraggableAnchors;->anchors:Landroidx/collection/ObjectFloatMap;

    invoke-static {v0}, Landroidx/compose/foundation/gestures/AnchoredDraggableKt;->access$maxValueOrNaN(Landroidx/collection/ObjectFloatMap;)F

    move-result v0

    return v0
.end method

.method public minAnchor()F
    .locals 1

    .line 1169
    iget-object v0, p0, Landroidx/compose/foundation/gestures/MapDraggableAnchors;->anchors:Landroidx/collection/ObjectFloatMap;

    invoke-static {v0}, Landroidx/compose/foundation/gestures/AnchoredDraggableKt;->access$minValueOrNaN(Landroidx/collection/ObjectFloatMap;)F

    move-result v0

    return v0
.end method

.method public positionOf(Ljava/lang/Object;)F
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)F"
        }
    .end annotation

    .line 1135
    iget-object v0, p0, Landroidx/compose/foundation/gestures/MapDraggableAnchors;->anchors:Landroidx/collection/ObjectFloatMap;

    const/high16 v1, 0x7fc00000    # Float.NaN

    invoke-virtual {v0, p1, v1}, Landroidx/collection/ObjectFloatMap;->getOrDefault(Ljava/lang/Object;F)F

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1185
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MapDraggableAnchors("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/compose/foundation/gestures/MapDraggableAnchors;->anchors:Landroidx/collection/ObjectFloatMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
