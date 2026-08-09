.class final Landroidx/compose/ui/graphics/AndroidGraphicsContext;
.super Ljava/lang/Object;
.source "AndroidGraphicsContext.android.kt"

# interfaces
.implements Landroidx/compose/ui/graphics/GraphicsContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/graphics/AndroidGraphicsContext$Companion;,
        Landroidx/compose/ui/graphics/AndroidGraphicsContext$UniqueDrawingIdApi29;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidGraphicsContext.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidGraphicsContext.android.kt\nandroidx/compose/ui/graphics/AndroidGraphicsContext\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,221:1\n1#2:222\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0002\u0018\u0000 \u001f2\u00020\u0001:\u0002\u001f B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\u0006\u0010\u0016\u001a\u00020\u0008J\u0010\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002J\u0010\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0002J\u0010\u0010\u001c\u001a\u00020\u00192\u0006\u0010\u001d\u001a\u00020\u0011H\u0016J\u0010\u0010\u001e\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0002R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Landroidx/compose/ui/graphics/AndroidGraphicsContext;",
        "Landroidx/compose/ui/graphics/GraphicsContext;",
        "ownerView",
        "Landroid/view/ViewGroup;",
        "(Landroid/view/ViewGroup;)V",
        "componentCallback",
        "Landroid/content/ComponentCallbacks2;",
        "componentCallbackRegistered",
        "",
        "layerManager",
        "Landroidx/compose/ui/graphics/layer/LayerManager;",
        "lock",
        "",
        "predrawListenerRegistered",
        "viewLayerContainer",
        "Landroidx/compose/ui/graphics/layer/view/DrawChildContainer;",
        "createGraphicsLayer",
        "Landroidx/compose/ui/graphics/layer/GraphicsLayer;",
        "getUniqueDrawingId",
        "",
        "view",
        "Landroid/view/View;",
        "isLayerManagerInitialized",
        "obtainViewLayerContainer",
        "registerComponentCallback",
        "",
        "context",
        "Landroid/content/Context;",
        "releaseGraphicsLayer",
        "layer",
        "unregisterComponentCallback",
        "Companion",
        "UniqueDrawingIdApi29",
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
.field public static final Companion:Landroidx/compose/ui/graphics/AndroidGraphicsContext$Companion;

.field public static final enableLayerPersistence:Z

.field private static isRenderNodeCompatible:Z


# instance fields
.field private final componentCallback:Landroid/content/ComponentCallbacks2;

.field private componentCallbackRegistered:Z

.field private final layerManager:Landroidx/compose/ui/graphics/layer/LayerManager;

.field private final lock:Ljava/lang/Object;

.field private final ownerView:Landroid/view/ViewGroup;

.field private predrawListenerRegistered:Z

.field private viewLayerContainer:Landroidx/compose/ui/graphics/layer/view/DrawChildContainer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/graphics/AndroidGraphicsContext$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/AndroidGraphicsContext$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/graphics/AndroidGraphicsContext;->Companion:Landroidx/compose/ui/graphics/AndroidGraphicsContext$Companion;

    const/4 v0, 0x1

    .line 203
    sput-boolean v0, Landroidx/compose/ui/graphics/AndroidGraphicsContext;->isRenderNodeCompatible:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/graphics/AndroidGraphicsContext;->ownerView:Landroid/view/ViewGroup;

    .line 47
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/graphics/AndroidGraphicsContext;->lock:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 125
    iput-object p1, p0, Landroidx/compose/ui/graphics/AndroidGraphicsContext;->layerManager:Landroidx/compose/ui/graphics/layer/LayerManager;

    .line 126
    iput-object p1, p0, Landroidx/compose/ui/graphics/AndroidGraphicsContext;->componentCallback:Landroid/content/ComponentCallbacks2;

    return-void
.end method

.method public static final synthetic access$getLayerManager$p(Landroidx/compose/ui/graphics/AndroidGraphicsContext;)Landroidx/compose/ui/graphics/layer/LayerManager;
    .locals 0

    .line 45
    iget-object p0, p0, Landroidx/compose/ui/graphics/AndroidGraphicsContext;->layerManager:Landroidx/compose/ui/graphics/layer/LayerManager;

    return-object p0
.end method

.method public static final synthetic access$getOwnerView$p(Landroidx/compose/ui/graphics/AndroidGraphicsContext;)Landroid/view/ViewGroup;
    .locals 0

    .line 45
    iget-object p0, p0, Landroidx/compose/ui/graphics/AndroidGraphicsContext;->ownerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public static final synthetic access$getPredrawListenerRegistered$p(Landroidx/compose/ui/graphics/AndroidGraphicsContext;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Landroidx/compose/ui/graphics/AndroidGraphicsContext;->predrawListenerRegistered:Z

    return p0
.end method

.method public static final synthetic access$isRenderNodeCompatible$cp()Z
    .locals 1

    .line 45
    sget-boolean v0, Landroidx/compose/ui/graphics/AndroidGraphicsContext;->isRenderNodeCompatible:Z

    return v0
.end method

.method public static final synthetic access$registerComponentCallback(Landroidx/compose/ui/graphics/AndroidGraphicsContext;Landroid/content/Context;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Landroidx/compose/ui/graphics/AndroidGraphicsContext;->registerComponentCallback(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$setPredrawListenerRegistered$p(Landroidx/compose/ui/graphics/AndroidGraphicsContext;Z)V
    .locals 0

    .line 45
    iput-boolean p1, p0, Landroidx/compose/ui/graphics/AndroidGraphicsContext;->predrawListenerRegistered:Z

    return-void
.end method

.method public static final synthetic access$setRenderNodeCompatible$cp(Z)V
    .locals 0

    .line 45
    sput-boolean p0, Landroidx/compose/ui/graphics/AndroidGraphicsContext;->isRenderNodeCompatible:Z

    return-void
.end method

.method public static final synthetic access$unregisterComponentCallback(Landroidx/compose/ui/graphics/AndroidGraphicsContext;Landroid/content/Context;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Landroidx/compose/ui/graphics/AndroidGraphicsContext;->unregisterComponentCallback(Landroid/content/Context;)V

    return-void
.end method

.method private final getUniqueDrawingId(Landroid/view/View;)J
    .locals 2

    .line 196
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 197
    invoke-static {p1}, Landroidx/compose/ui/graphics/AndroidGraphicsContext$UniqueDrawingIdApi29;->getUniqueDrawingId(Landroid/view/View;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method private final obtainViewLayerContainer(Landroid/view/ViewGroup;)Landroidx/compose/ui/graphics/layer/view/DrawChildContainer;
    .locals 2

    .line 184
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidGraphicsContext;->viewLayerContainer:Landroidx/compose/ui/graphics/layer/view/DrawChildContainer;

    if-nez v0, :cond_0

    .line 186
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 188
    new-instance v1, Landroidx/compose/ui/graphics/layer/view/ViewLayerContainer;

    invoke-direct {v1, v0}, Landroidx/compose/ui/graphics/layer/view/ViewLayerContainer;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    check-cast v0, Landroidx/compose/ui/graphics/layer/view/DrawChildContainer;

    .line 189
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 190
    iput-object v0, p0, Landroidx/compose/ui/graphics/AndroidGraphicsContext;->viewLayerContainer:Landroidx/compose/ui/graphics/layer/view/DrawChildContainer;

    :cond_0
    return-object v0
.end method

.method private final registerComponentCallback(Landroid/content/Context;)V
    .locals 1

    .line 133
    iget-boolean v0, p0, Landroidx/compose/ui/graphics/AndroidGraphicsContext;->componentCallbackRegistered:Z

    if-nez v0, :cond_0

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidGraphicsContext;->componentCallback:Landroid/content/ComponentCallbacks2;

    check-cast v0, Landroid/content/ComponentCallbacks;

    invoke-virtual {p1, v0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    const/4 p1, 0x1

    .line 135
    iput-boolean p1, p0, Landroidx/compose/ui/graphics/AndroidGraphicsContext;->componentCallbackRegistered:Z

    :cond_0
    return-void
.end method

.method private final unregisterComponentCallback(Landroid/content/Context;)V
    .locals 1

    .line 140
    iget-boolean v0, p0, Landroidx/compose/ui/graphics/AndroidGraphicsContext;->componentCallbackRegistered:Z

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidGraphicsContext;->componentCallback:Landroid/content/ComponentCallbacks2;

    check-cast v0, Landroid/content/ComponentCallbacks;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    const/4 p1, 0x0

    .line 142
    iput-boolean p1, p0, Landroidx/compose/ui/graphics/AndroidGraphicsContext;->componentCallbackRegistered:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public createGraphicsLayer()Landroidx/compose/ui/graphics/layer/GraphicsLayer;
    .locals 12

    .line 147
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidGraphicsContext;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 148
    :try_start_0
    iget-object v1, p0, Landroidx/compose/ui/graphics/AndroidGraphicsContext;->ownerView:Landroid/view/ViewGroup;

    check-cast v1, Landroid/view/View;

    invoke-direct {p0, v1}, Landroidx/compose/ui/graphics/AndroidGraphicsContext;->getUniqueDrawingId(Landroid/view/View;)J

    move-result-wide v10

    .line 150
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    .line 151
    new-instance v1, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v1

    move-wide v3, v10

    invoke-direct/range {v2 .. v8}, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;-><init>(JLandroidx/compose/ui/graphics/CanvasHolder;Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    goto :goto_0

    .line 153
    :cond_0
    sget-boolean v1, Landroidx/compose/ui/graphics/AndroidGraphicsContext;->isRenderNodeCompatible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_1

    .line 156
    :try_start_1
    new-instance v1, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;

    iget-object v2, p0, Landroidx/compose/ui/graphics/AndroidGraphicsContext;->ownerView:Landroid/view/ViewGroup;

    move-object v3, v2

    check-cast v3, Landroid/view/View;

    const/16 v8, 0xc

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    move-wide v4, v10

    invoke-direct/range {v2 .. v9}, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;-><init>(Landroid/view/View;JLandroidx/compose/ui/graphics/CanvasHolder;Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v1, 0x0

    .line 165
    :try_start_2
    sput-boolean v1, Landroidx/compose/ui/graphics/AndroidGraphicsContext;->isRenderNodeCompatible:Z

    .line 166
    new-instance v1, Landroidx/compose/ui/graphics/layer/GraphicsViewLayer;

    iget-object v2, p0, Landroidx/compose/ui/graphics/AndroidGraphicsContext;->ownerView:Landroid/view/ViewGroup;

    invoke-direct {p0, v2}, Landroidx/compose/ui/graphics/AndroidGraphicsContext;->obtainViewLayerContainer(Landroid/view/ViewGroup;)Landroidx/compose/ui/graphics/layer/view/DrawChildContainer;

    move-result-object v3

    const/16 v8, 0xc

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    move-wide v4, v10

    invoke-direct/range {v2 .. v9}, Landroidx/compose/ui/graphics/layer/GraphicsViewLayer;-><init>(Landroidx/compose/ui/graphics/layer/view/DrawChildContainer;JLandroidx/compose/ui/graphics/CanvasHolder;Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    goto :goto_0

    .line 169
    :cond_1
    new-instance v1, Landroidx/compose/ui/graphics/layer/GraphicsViewLayer;

    iget-object v2, p0, Landroidx/compose/ui/graphics/AndroidGraphicsContext;->ownerView:Landroid/view/ViewGroup;

    invoke-direct {p0, v2}, Landroidx/compose/ui/graphics/AndroidGraphicsContext;->obtainViewLayerContainer(Landroid/view/ViewGroup;)Landroidx/compose/ui/graphics/layer/view/DrawChildContainer;

    move-result-object v3

    const/16 v8, 0xc

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    move-wide v4, v10

    invoke-direct/range {v2 .. v9}, Landroidx/compose/ui/graphics/layer/GraphicsViewLayer;-><init>(Landroidx/compose/ui/graphics/layer/view/DrawChildContainer;JLandroidx/compose/ui/graphics/CanvasHolder;Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    .line 171
    :goto_0
    new-instance v2, Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iget-object v3, p0, Landroidx/compose/ui/graphics/AndroidGraphicsContext;->layerManager:Landroidx/compose/ui/graphics/layer/LayerManager;

    invoke-direct {v2, v1, v3}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;-><init>(Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;Landroidx/compose/ui/graphics/layer/LayerManager;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 175
    monitor-exit v0

    return-object v2

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final isLayerManagerInitialized()Z
    .locals 1

    .line 130
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidGraphicsContext;->layerManager:Landroidx/compose/ui/graphics/layer/LayerManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/layer/LayerManager;->hasImageReader()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public releaseGraphicsLayer(Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 1

    .line 180
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidGraphicsContext;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->release$ui_graphics_release()V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method
