.class public final Landroidx/compose/ui/graphics/layer/LayerManager;
.super Ljava/lang/Object;
.source "LayerManager.android.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/graphics/layer/LayerManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLayerManager.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LayerManager.android.kt\nandroidx/compose/ui/graphics/layer/LayerManager\n+ 2 ObjectList.kt\nandroidx/collection/ObjectListKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 AndroidCanvas.android.kt\nandroidx/compose/ui/graphics/CanvasHolder\n+ 5 ScatterSet.kt\nandroidx/collection/ScatterSet\n+ 6 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n+ 7 ObjectList.kt\nandroidx/collection/ObjectList\n*L\n1#1,168:1\n1580#2:169\n1#3:170\n47#4,3:171\n50#4,2:201\n267#5,4:174\n237#5,7:178\n248#5,3:186\n251#5,2:190\n272#5,2:192\n254#5,6:194\n274#5:200\n1810#6:185\n1672#6:189\n305#7,6:203\n*S KotlinDebug\n*F\n+ 1 LayerManager.android.kt\nandroidx/compose/ui/graphics/layer/LayerManager\n*L\n82#1:169\n123#1:171,3\n123#1:201,2\n126#1:174,4\n126#1:178,7\n126#1:186,3\n126#1:190,2\n126#1:192,2\n126#1:194,6\n126#1:200\n126#1:185\n126#1:189\n132#1:203,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u0012\u001a\u00020\u0013J\u0006\u0010\u0014\u001a\u00020\u000fJ\u000e\u0010\u0015\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\rJ\u0016\u0010\u0017\u001a\u00020\u00132\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0019H\u0002J\u000e\u0010\u001a\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\rJ\u0006\u0010\u001b\u001a\u00020\u0013R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Landroidx/compose/ui/graphics/layer/LayerManager;",
        "",
        "canvasHolder",
        "Landroidx/compose/ui/graphics/CanvasHolder;",
        "(Landroidx/compose/ui/graphics/CanvasHolder;)V",
        "getCanvasHolder",
        "()Landroidx/compose/ui/graphics/CanvasHolder;",
        "handler",
        "Landroid/os/Handler;",
        "imageReader",
        "Landroid/media/ImageReader;",
        "layerSet",
        "Landroidx/collection/MutableScatterSet;",
        "Landroidx/compose/ui/graphics/layer/GraphicsLayer;",
        "persistenceIterationInProgress",
        "",
        "postponedReleaseRequests",
        "Landroidx/collection/MutableObjectList;",
        "destroy",
        "",
        "hasImageReader",
        "persist",
        "layer",
        "persistLayers",
        "layers",
        "Landroidx/collection/ScatterSet;",
        "release",
        "updateLayerPersistence",
        "Companion",
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


# static fields
.field public static final Companion:Landroidx/compose/ui/graphics/layer/LayerManager$Companion;

.field private static final isRobolectric:Z


# instance fields
.field private final canvasHolder:Landroidx/compose/ui/graphics/CanvasHolder;

.field private final handler:Landroid/os/Handler;

.field private imageReader:Landroid/media/ImageReader;

.field private final layerSet:Landroidx/collection/MutableScatterSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableScatterSet<",
            "Landroidx/compose/ui/graphics/layer/GraphicsLayer;",
            ">;"
        }
    .end annotation
.end field

.field private persistenceIterationInProgress:Z

.field private postponedReleaseRequests:Landroidx/collection/MutableObjectList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableObjectList<",
            "Landroidx/compose/ui/graphics/layer/GraphicsLayer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$aibvIlo-YJwoVsKBYkLpc029810(Landroid/media/ImageReader;)V
    .locals 0

    invoke-static {p0}, Landroidx/compose/ui/graphics/layer/LayerManager;->persistLayers$lambda$3$lambda$2(Landroid/media/ImageReader;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fg6fcHbjsMbRdqNAHigdN8WSDDg(Landroidx/compose/ui/graphics/layer/LayerManager;Landroid/os/Message;)Z
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/layer/LayerManager;->handler$lambda$0(Landroidx/compose/ui/graphics/layer/LayerManager;Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/graphics/layer/LayerManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/layer/LayerManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/graphics/layer/LayerManager;->Companion:Landroidx/compose/ui/graphics/layer/LayerManager$Companion;

    .line 158
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "robolectric"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroidx/compose/ui/graphics/layer/LayerManager;->isRobolectric:Z

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/graphics/CanvasHolder;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/graphics/layer/LayerManager;->canvasHolder:Landroidx/compose/ui/graphics/CanvasHolder;

    .line 40
    invoke-static {}, Landroidx/collection/ScatterSetKt;->mutableScatterSetOf()Landroidx/collection/MutableScatterSet;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/graphics/layer/LayerManager;->layerSet:Landroidx/collection/MutableScatterSet;

    .line 51
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    new-instance v0, Landroidx/compose/ui/graphics/layer/LayerManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroidx/compose/ui/graphics/layer/LayerManager$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/ui/graphics/layer/LayerManager;)V

    invoke-static {p1, v0}, Landroidx/core/os/HandlerCompat;->createAsync(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/graphics/layer/LayerManager;->handler:Landroid/os/Handler;

    return-void
.end method

.method public static final synthetic access$isRobolectric$cp()Z
    .locals 1

    .line 38
    sget-boolean v0, Landroidx/compose/ui/graphics/layer/LayerManager;->isRobolectric:Z

    return v0
.end method

.method private static final handler$lambda$0(Landroidx/compose/ui/graphics/layer/LayerManager;Landroid/os/Message;)Z
    .locals 0

    .line 52
    iget-object p1, p0, Landroidx/compose/ui/graphics/layer/LayerManager;->layerSet:Landroidx/collection/MutableScatterSet;

    check-cast p1, Landroidx/collection/ScatterSet;

    invoke-direct {p0, p1}, Landroidx/compose/ui/graphics/layer/LayerManager;->persistLayers(Landroidx/collection/ScatterSet;)V

    const/4 p0, 0x1

    return p0
.end method

.method private final persistLayers(Landroidx/collection/ScatterSet;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ScatterSet<",
            "Landroidx/compose/ui/graphics/layer/GraphicsLayer;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 101
    invoke-virtual/range {p1 .. p1}, Landroidx/collection/ScatterSet;->isNotEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    sget-boolean v2, Landroidx/compose/ui/graphics/layer/LayerManager;->isRobolectric:Z

    if-nez v2, :cond_7

    .line 104
    iget-object v2, v0, Landroidx/compose/ui/graphics/layer/LayerManager;->imageReader:Landroid/media/ImageReader;

    const/4 v3, 0x1

    if-nez v2, :cond_0

    const/4 v2, 0x3

    .line 107
    invoke-static {v3, v3, v3, v2}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v2

    .line 113
    new-instance v4, Landroidx/compose/ui/graphics/layer/LayerManager$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Landroidx/compose/ui/graphics/layer/LayerManager$$ExternalSyntheticLambda0;-><init>()V

    .line 115
    iget-object v5, v0, Landroidx/compose/ui/graphics/layer/LayerManager;->handler:Landroid/os/Handler;

    .line 113
    invoke-virtual {v2, v4, v5}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 118
    iput-object v2, v0, Landroidx/compose/ui/graphics/layer/LayerManager;->imageReader:Landroid/media/ImageReader;

    .line 119
    :cond_0
    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    .line 120
    sget-object v4, Landroidx/compose/ui/graphics/layer/LockHardwareCanvasHelper;->INSTANCE:Landroidx/compose/ui/graphics/layer/LockHardwareCanvasHelper;

    invoke-virtual {v4, v2}, Landroidx/compose/ui/graphics/layer/LockHardwareCanvasHelper;->lockHardwareCanvas(Landroid/view/Surface;)Landroid/graphics/Canvas;

    move-result-object v4

    .line 122
    iput-boolean v3, v0, Landroidx/compose/ui/graphics/layer/LayerManager;->persistenceIterationInProgress:Z

    .line 123
    iget-object v5, v0, Landroidx/compose/ui/graphics/layer/LayerManager;->canvasHolder:Landroidx/compose/ui/graphics/CanvasHolder;

    .line 171
    invoke-virtual {v5}, Landroidx/compose/ui/graphics/CanvasHolder;->getAndroidCanvas()Landroidx/compose/ui/graphics/AndroidCanvas;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/AndroidCanvas;->getInternalCanvas()Landroid/graphics/Canvas;

    move-result-object v6

    .line 172
    invoke-virtual {v5}, Landroidx/compose/ui/graphics/CanvasHolder;->getAndroidCanvas()Landroidx/compose/ui/graphics/AndroidCanvas;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroidx/compose/ui/graphics/AndroidCanvas;->setInternalCanvas(Landroid/graphics/Canvas;)V

    .line 173
    invoke-virtual {v5}, Landroidx/compose/ui/graphics/CanvasHolder;->getAndroidCanvas()Landroidx/compose/ui/graphics/AndroidCanvas;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/graphics/Canvas;

    .line 124
    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    const/4 v8, 0x0

    .line 125
    invoke-virtual {v4, v8, v8, v3, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 175
    iget-object v3, v1, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 179
    iget-object v1, v1, Landroidx/collection/ScatterSet;->metadata:[J

    .line 180
    array-length v9, v1

    add-int/lit8 v9, v9, -0x2

    if-ltz v9, :cond_4

    move v10, v8

    .line 183
    :goto_0
    aget-wide v11, v1, v10

    not-long v13, v11

    const/4 v15, 0x7

    shl-long/2addr v13, v15

    and-long/2addr v13, v11

    const-wide v15, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v13, v15

    cmp-long v13, v13, v15

    if-eqz v13, :cond_3

    sub-int v13, v10, v9

    not-int v13, v13

    ushr-int/lit8 v13, v13, 0x1f

    const/16 v14, 0x8

    rsub-int/lit8 v13, v13, 0x8

    move v15, v8

    :goto_1
    if-ge v15, v13, :cond_2

    const-wide/16 v16, 0xff

    and-long v16, v11, v16

    const-wide/16 v18, 0x80

    cmp-long v16, v16, v18

    if-gez v16, :cond_1

    shl-int/lit8 v16, v10, 0x3

    add-int v16, v16, v15

    .line 192
    aget-object v16, v3, v16

    move-object/from16 v8, v16

    check-cast v8, Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 126
    invoke-virtual {v8, v7}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->drawForPersistence$ui_graphics_release(Landroidx/compose/ui/graphics/Canvas;)V

    :cond_1
    shr-long/2addr v11, v14

    add-int/lit8 v15, v15, 0x1

    const/4 v8, 0x0

    goto :goto_1

    :cond_2
    if-ne v13, v14, :cond_4

    :cond_3
    if-eq v10, v9, :cond_4

    add-int/lit8 v10, v10, 0x1

    const/4 v8, 0x0

    goto :goto_0

    .line 127
    :cond_4
    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    .line 201
    invoke-virtual {v5}, Landroidx/compose/ui/graphics/CanvasHolder;->getAndroidCanvas()Landroidx/compose/ui/graphics/AndroidCanvas;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroidx/compose/ui/graphics/AndroidCanvas;->setInternalCanvas(Landroid/graphics/Canvas;)V

    const/4 v1, 0x0

    .line 129
    iput-boolean v1, v0, Landroidx/compose/ui/graphics/layer/LayerManager;->persistenceIterationInProgress:Z

    .line 130
    iget-object v3, v0, Landroidx/compose/ui/graphics/layer/LayerManager;->postponedReleaseRequests:Landroidx/collection/MutableObjectList;

    if-eqz v3, :cond_6

    .line 131
    invoke-virtual {v3}, Landroidx/collection/MutableObjectList;->isNotEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 132
    move-object v5, v3

    check-cast v5, Landroidx/collection/ObjectList;

    .line 204
    iget-object v6, v5, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    .line 205
    iget v5, v5, Landroidx/collection/ObjectList;->_size:I

    move v8, v1

    :goto_2
    if-ge v8, v5, :cond_5

    .line 206
    aget-object v1, v6, v8

    check-cast v1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 132
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/layer/LayerManager;->release(Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 133
    :cond_5
    invoke-virtual {v3}, Landroidx/collection/MutableObjectList;->clear()V

    .line 135
    :cond_6
    invoke-virtual {v2, v4}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_7
    return-void
.end method

.method private static final persistLayers$lambda$3$lambda$2(Landroid/media/ImageReader;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 114
    invoke-virtual {p0}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/Image;->close()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    .line 140
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/LayerManager;->imageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    :cond_0
    const/4 v0, 0x0

    .line 141
    iput-object v0, p0, Landroidx/compose/ui/graphics/layer/LayerManager;->imageReader:Landroid/media/ImageReader;

    return-void
.end method

.method public final getCanvasHolder()Landroidx/compose/ui/graphics/CanvasHolder;
    .locals 1

    .line 38
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/LayerManager;->canvasHolder:Landroidx/compose/ui/graphics/CanvasHolder;

    return-object v0
.end method

.method public final hasImageReader()Z
    .locals 1

    .line 144
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/LayerManager;->imageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final persist(Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 1

    .line 60
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/LayerManager;->layerSet:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v0, p1}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object p1, p0, Landroidx/compose/ui/graphics/layer/LayerManager;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 68
    iget-object p1, p0, Landroidx/compose/ui/graphics/layer/LayerManager;->handler:Landroid/os/Handler;

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public final release(Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 4

    .line 73
    iget-boolean v0, p0, Landroidx/compose/ui/graphics/layer/LayerManager;->persistenceIterationInProgress:Z

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/LayerManager;->layerSet:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v0, p1}, Landroidx/collection/MutableScatterSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->discardDisplayList$ui_graphics_release()V

    goto :goto_0

    .line 81
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/LayerManager;->postponedReleaseRequests:Landroidx/collection/MutableObjectList;

    if-nez v0, :cond_1

    .line 169
    new-instance v0, Landroidx/collection/MutableObjectList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableObjectList;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 82
    iput-object v0, p0, Landroidx/compose/ui/graphics/layer/LayerManager;->postponedReleaseRequests:Landroidx/collection/MutableObjectList;

    .line 83
    :cond_1
    invoke-virtual {v0, p1}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final updateLayerPersistence()V
    .locals 1

    .line 153
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/layer/LayerManager;->destroy()V

    .line 154
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/LayerManager;->layerSet:Landroidx/collection/MutableScatterSet;

    check-cast v0, Landroidx/collection/ScatterSet;

    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/layer/LayerManager;->persistLayers(Landroidx/collection/ScatterSet;)V

    return-void
.end method
