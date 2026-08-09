.class public final Lcom/xiaozhi/android/pet/PetGLSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "PetGLSurfaceView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaozhi/android/pet/PetGLSurfaceView$Companion;,
        Lcom/xiaozhi/android/pet/PetGLSurfaceView$PetRenderer;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 \u000e2\u00020\u0001:\u0002\r\u000eB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bJ\u0006\u0010\u000c\u001a\u00020\tR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/xiaozhi/android/pet/PetGLSurfaceView;",
        "Landroid/opengl/GLSurfaceView;",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "renderer",
        "Lcom/xiaozhi/android/pet/PetGLSurfaceView$PetRenderer;",
        "updateState",
        "",
        "state",
        "",
        "destroy",
        "PetRenderer",
        "Companion",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I

.field public static final Companion:Lcom/xiaozhi/android/pet/PetGLSurfaceView$Companion;

.field private static final TAG:Ljava/lang/String; = "PetGLSurfaceView"


# instance fields
.field private final renderer:Lcom/xiaozhi/android/pet/PetGLSurfaceView$PetRenderer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/xiaozhi/android/pet/PetGLSurfaceView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaozhi/android/pet/PetGLSurfaceView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/xiaozhi/android/pet/PetGLSurfaceView;->Companion:Lcom/xiaozhi/android/pet/PetGLSurfaceView$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/xiaozhi/android/pet/PetGLSurfaceView;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    move-object v0, p1

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/xiaozhi/android/pet/PetGLSurfaceView;->setEGLContextClientVersion(I)V

    move-object v1, p0

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    const/16 v5, 0x8

    const/16 v6, 0x10

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/xiaozhi/android/pet/PetGLSurfaceView;->setEGLConfigChooser(IIIIII)V

    invoke-virtual {p0}, Lcom/xiaozhi/android/pet/PetGLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    const/4 v2, -0x3

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/xiaozhi/android/pet/PetGLSurfaceView;->setZOrderOnTop(Z)V

    new-instance v1, Lcom/xiaozhi/android/pet/PetGLSurfaceView$PetRenderer;

    invoke-direct {v1, v0}, Lcom/xiaozhi/android/pet/PetGLSurfaceView$PetRenderer;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/xiaozhi/android/pet/PetGLSurfaceView;->renderer:Lcom/xiaozhi/android/pet/PetGLSurfaceView$PetRenderer;

    check-cast v1, Landroid/opengl/GLSurfaceView$Renderer;

    invoke-virtual {p0, v1}, Lcom/xiaozhi/android/pet/PetGLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/xiaozhi/android/pet/PetGLSurfaceView;->setRenderMode(I)V

    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/xiaozhi/android/pet/PetGLSurfaceView;->renderer:Lcom/xiaozhi/android/pet/PetGLSurfaceView$PetRenderer;

    invoke-virtual {v0}, Lcom/xiaozhi/android/pet/PetGLSurfaceView$PetRenderer;->destroy()V

    return-void
.end method

.method public final updateState(I)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/xiaozhi/android/pet/PetGLSurfaceView;->renderer:Lcom/xiaozhi/android/pet/PetGLSurfaceView$PetRenderer;

    invoke-virtual {v0, p1}, Lcom/xiaozhi/android/pet/PetGLSurfaceView$PetRenderer;->setPetState(I)V

    return-void
.end method
