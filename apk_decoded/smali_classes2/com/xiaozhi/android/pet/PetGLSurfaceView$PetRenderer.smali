.class public final Lcom/xiaozhi/android/pet/PetGLSurfaceView$PetRenderer;
.super Ljava/lang/Object;
.source "PetGLSurfaceView.kt"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaozhi/android/pet/PetGLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PetRenderer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaozhi/android/pet/PetGLSurfaceView$PetRenderer$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u0000 $2\u00020\u0001:\u0001$B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\tJ\u0018\u0010\u0019\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J\u0010\u0010\u001e\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u001bH\u0002J \u0010\u001f\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010 \u001a\u00020\t2\u0006\u0010!\u001a\u00020\tH\u0016J\u0010\u0010\"\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\u0006\u0010#\u001a\u00020\u0017R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\n\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u000e\u0010\u0015\u001a\u00020\u0010X\u0082D\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Lcom/xiaozhi/android/pet/PetGLSurfaceView$PetRenderer;",
        "Landroid/opengl/GLSurfaceView$Renderer;",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "model",
        "Lcom/xiaozhi/android/pet/PetModel;",
        "textureId",
        "",
        "petState",
        "getPetState",
        "()I",
        "setPetState",
        "(I)V",
        "rotationAngle",
        "",
        "getRotationAngle",
        "()F",
        "setRotationAngle",
        "(F)V",
        "rotationSpeed",
        "setState",
        "",
        "s",
        "onSurfaceCreated",
        "gl",
        "Ljavax/microedition/khronos/opengles/GL10;",
        "config",
        "Ljavax/microedition/khronos/egl/EGLConfig;",
        "loadTexture",
        "onSurfaceChanged",
        "width",
        "height",
        "onDrawFrame",
        "destroy",
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

.field public static final Companion:Lcom/xiaozhi/android/pet/PetGLSurfaceView$PetRenderer$Companion;

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_LISTENING:I = 0x1

.field public static final STATE_SPEAKING:I = 0x2

.field public static final STATE_THINKING:I = 0x3


# instance fields
.field private final context:Landroid/content/Context;

.field private model:Lcom/xiaozhi/android/pet/PetModel;

.field private petState:I

.field private rotationAngle:F

.field private final rotationSpeed:F

.field private textureId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/xiaozhi/android/pet/PetGLSurfaceView$PetRenderer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaozhi/android/pet/PetGLSurfaceView$PetRenderer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/xiaozhi/android/pet/PetGLSurfaceView$PetRenderer;->Companion:Lcom/xiaozhi/android/pet/PetGLSurfaceView$PetRenderer$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/xiaozhi/android/pet/PetGLSurfaceView$PetRenderer;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaozhi/android/pet/PetGLSurfaceView$PetRenderer;->context:Landroid/content/Context;

    const/high16 p1, 0x3f000000    # 0.5f

    .line 109
    iput p1, p0, Lcom/xiaozhi/android/pet/PetGLSurfaceView$PetRenderer;->rotationSpeed:F

    return-void
.end method

.method private final loadTexture(Ljavax/microedition/khronos/opengles/GL10;)I
    .locals 8

    .line 129
    const-string v0, "PetGLSurfaceView"

    .line 0
    const-string v1, "Texture loaded: "

    const/4 v2, 0x0

    .line 130
    :try_start_0
    iget-object v3, p0, Lcom/xiaozhi/android/pet/PetGLSurfaceView$PetRenderer;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "pet_texture.png"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    const-string v4, "open(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 132
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    if-nez v4, :cond_0

    .line 134
    const-string p1, "Failed to decode texture"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/4 v3, 0x1

    .line 137
    new-array v5, v3, [I

    .line 138
    invoke-interface {p1, v3, v5, v2}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 139
    aget v3, v5, v2

    const/16 v5, 0xde1

    .line 140
    invoke-interface {p1, v5, v3}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    const/16 v6, 0x2801

    const v7, 0x46180400    # 9729.0f

    .line 141
    invoke-interface {p1, v5, v6, v7}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    const/16 v6, 0x2800

    .line 142
    invoke-interface {p1, v5, v6, v7}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    const/16 v6, 0x2802

    const v7, 0x47012f00    # 33071.0f

    .line 143
    invoke-interface {p1, v5, v6, v7}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    const/16 v6, 0x2803

    .line 144
    invoke-interface {p1, v5, v6, v7}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 145
    invoke-static {v5, v2, v4, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 146
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 147
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception p1

    .line 150
    const-string v1, "Failed to load texture"

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 209
    iput-object v0, p0, Lcom/xiaozhi/android/pet/PetGLSurfaceView$PetRenderer;->model:Lcom/xiaozhi/android/pet/PetModel;

    return-void
.end method

.method public final getPetState()I
    .locals 1

    .line 106
    iget v0, p0, Lcom/xiaozhi/android/pet/PetGLSurfaceView$PetRenderer;->petState:I

    return v0
.end method

.method public final getRotationAngle()F
    .locals 1

    .line 108
    iget v0, p0, Lcom/xiaozhi/android/pet/PetGLSurfaceView$PetRenderer;->rotationAngle:F

    return v0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 10

    const-string v0, "gl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 167
    invoke-interface {p1, v0, v0, v0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    const/16 v1, 0x4100

    .line 168
    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    const/16 v0, 0xbe2

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    const/4 v0, 0x0

    .line 169
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    const/high16 v1, -0x3fc00000    # -3.0f

    .line 171
    invoke-interface {p1, v0, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 172
    iget v1, p0, Lcom/xiaozhi/android/pet/PetGLSurfaceView$PetRenderer;->rotationAngle:F

    iget v2, p0, Lcom/xiaozhi/android/pet/PetGLSurfaceView$PetRenderer;->rotationSpeed:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/xiaozhi/android/pet/PetGLSurfaceView$PetRenderer;->rotationAngle:F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 173
    invoke-interface {p1, v1, v0, v2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 175
    iget-object v0, p0, Lcom/xiaozhi/android/pet/PetGLSurfaceView$PetRenderer;->model:Lcom/xiaozhi/android/pet/PetModel;

    if-nez v0, :cond_0

    return-void

    .line 176
    :cond_0
    invoke-virtual {v0}, Lcom/xiaozhi/android/pet/PetModel;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 177
    :cond_1
    invoke-virtual {v0}, Lcom/xiaozhi/android/pet/PetModel;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    if-nez v2, :cond_2

    return-void

    .line 179
    :cond_2
    iget v3, p0, Lcom/xiaozhi/android/pet/PetGLSurfaceView$PetRenderer;->textureId:I

    const v4, 0x8078

    const/16 v5, 0xde1

    const/16 v6, 0x1406

    const/4 v7, 0x0

    if-eqz v3, :cond_4

    .line 180
    invoke-interface {p1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 181
    iget v3, p0, Lcom/xiaozhi/android/pet/PetGLSurfaceView$PetRenderer;->textureId:I

    invoke-interface {p1, v5, v3}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 182
    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 183
    invoke-virtual {v0}, Lcom/xiaozhi/android/pet/PetModel;->getTextureBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    if-eqz v3, :cond_3

    const/4 v8, 0x2

    .line 185
    check-cast v3, Ljava/nio/Buffer;

    invoke-interface {p1, v8, v6, v7, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    :cond_3
    const/16 v3, 0x2200

    const v8, 0x45f00800    # 7681.0f

    const/16 v9, 0x2300

    .line 188
    invoke-interface {p1, v9, v3, v8}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    const/16 v3, 0xb50

    .line 189
    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    :cond_4
    const v3, 0x8074

    .line 192
    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    const v8, 0x8075

    .line 193
    invoke-interface {p1, v8}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    const/4 v9, 0x3

    .line 195
    check-cast v1, Ljava/nio/Buffer;

    invoke-interface {p1, v9, v6, v7, v1}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 196
    check-cast v2, Ljava/nio/Buffer;

    invoke-interface {p1, v6, v7, v2}, Ljavax/microedition/khronos/opengles/GL10;->glNormalPointer(IILjava/nio/Buffer;)V

    const/4 v1, 0x4

    .line 197
    invoke-virtual {v0}, Lcom/xiaozhi/android/pet/PetModel;->getVertexCount()I

    move-result v0

    invoke-interface {p1, v1, v7, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 199
    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 200
    invoke-interface {p1, v8}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 202
    iget v0, p0, Lcom/xiaozhi/android/pet/PetGLSurfaceView$PetRenderer;->textureId:I

    if-eqz v0, :cond_5

    .line 203
    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 204
    invoke-interface {p1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    :cond_5
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 2

    const-string v0, "gl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 156
    invoke-interface {p1, v0, v0, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    const/16 v0, 0x1701

    .line 157
    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 158
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    int-to-float p2, p2

    int-to-float p3, p3

    div-float/2addr p2, p3

    const p3, 0x3dcccccd    # 0.1f

    const/high16 v0, 0x42c80000    # 100.0f

    const/high16 v1, 0x42340000    # 45.0f

    .line 161
    invoke-static {p1, v1, p2, p3, v0}, Landroid/opengl/GLU;->gluPerspective(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    const/16 p2, 0x1700

    .line 162
    invoke-interface {p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 163
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2

    const-string v0, "gl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p2, 0xb71

    .line 114
    invoke-interface {p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    const/16 p2, 0xde1

    .line 115
    invoke-interface {p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 118
    new-instance p2, Lcom/xiaozhi/android/pet/PetModel;

    invoke-direct {p2}, Lcom/xiaozhi/android/pet/PetModel;-><init>()V

    .line 119
    iget-object v0, p0, Lcom/xiaozhi/android/pet/PetGLSurfaceView$PetRenderer;->context:Landroid/content/Context;

    const-string v1, "pet_model.bin"

    invoke-virtual {p2, v0, v1}, Lcom/xiaozhi/android/pet/PetModel;->loadFromAssets(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    const-string v0, "PetGLSurfaceView"

    const-string v1, "Failed to load model"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_0
    iput-object p2, p0, Lcom/xiaozhi/android/pet/PetGLSurfaceView$PetRenderer;->model:Lcom/xiaozhi/android/pet/PetModel;

    .line 125
    invoke-direct {p0, p1}, Lcom/xiaozhi/android/pet/PetGLSurfaceView$PetRenderer;->loadTexture(Ljavax/microedition/khronos/opengles/GL10;)I

    move-result p1

    iput p1, p0, Lcom/xiaozhi/android/pet/PetGLSurfaceView$PetRenderer;->textureId:I

    return-void
.end method

.method public final setPetState(I)V
    .locals 0

    .line 106
    iput p1, p0, Lcom/xiaozhi/android/pet/PetGLSurfaceView$PetRenderer;->petState:I

    return-void
.end method

.method public final setRotationAngle(F)V
    .locals 0

    .line 108
    iput p1, p0, Lcom/xiaozhi/android/pet/PetGLSurfaceView$PetRenderer;->rotationAngle:F

    return-void
.end method

.method public final setState(I)V
    .locals 0

    .line 111
    iput p1, p0, Lcom/xiaozhi/android/pet/PetGLSurfaceView$PetRenderer;->petState:I

    return-void
.end method
