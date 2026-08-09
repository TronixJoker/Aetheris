.class public final Lcom/xiaozhi/android/pet/PetModel;
.super Ljava/lang/Object;
.source "PetGLSurfaceView.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPetGLSurfaceView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PetGLSurfaceView.kt\ncom/xiaozhi/android/pet/PetModel\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,224:1\n1#2:225\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016R\u001e\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0005@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\"\u0010\n\u001a\u0004\u0018\u00010\t2\u0008\u0010\u0004\u001a\u0004\u0018\u00010\t@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\"\u0010\r\u001a\u0004\u0018\u00010\t2\u0008\u0010\u0004\u001a\u0004\u0018\u00010\t@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000cR\"\u0010\u000f\u001a\u0004\u0018\u00010\t2\u0008\u0010\u0004\u001a\u0004\u0018\u00010\t@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000c\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/xiaozhi/android/pet/PetModel;",
        "",
        "<init>",
        "()V",
        "value",
        "",
        "vertexCount",
        "getVertexCount",
        "()I",
        "Ljava/nio/FloatBuffer;",
        "vertexBuffer",
        "getVertexBuffer",
        "()Ljava/nio/FloatBuffer;",
        "normalBuffer",
        "getNormalBuffer",
        "textureBuffer",
        "getTextureBuffer",
        "loadFromAssets",
        "",
        "context",
        "Landroid/content/Context;",
        "fileName",
        "",
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
.field public static final $stable:I = 0x8


# instance fields
.field private normalBuffer:Ljava/nio/FloatBuffer;

.field private textureBuffer:Ljava/nio/FloatBuffer;

.field private vertexBuffer:Ljava/nio/FloatBuffer;

.field private vertexCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getNormalBuffer()Ljava/nio/FloatBuffer;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/xiaozhi/android/pet/PetModel;->normalBuffer:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public final getTextureBuffer()Ljava/nio/FloatBuffer;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/xiaozhi/android/pet/PetModel;->textureBuffer:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public final getVertexBuffer()Ljava/nio/FloatBuffer;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/xiaozhi/android/pet/PetModel;->vertexBuffer:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public final getVertexCount()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/xiaozhi/android/pet/PetModel;->vertexCount:I

    return v0
.end method

.method public final loadFromAssets(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 12

    const-string v0, "PetModel"

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "fileName"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 34
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    const-string v2, "open(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-static {p1}, Lkotlin/io/ByteStreamsKt;->readBytes(Ljava/io/InputStream;)[B

    move-result-object v2

    .line 36
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 38
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 39
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 40
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, p0, Lcom/xiaozhi/android/pet/PetModel;->vertexCount:I

    mul-int/lit8 v2, v2, 0x8

    .line 43
    new-array v2, v2, [F

    .line 44
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/nio/FloatBuffer;->get([F)Ljava/nio/FloatBuffer;

    .line 47
    iget p1, p0, Lcom/xiaozhi/android/pet/PetModel;->vertexCount:I

    mul-int/lit8 v3, p1, 0x3

    new-array v3, v3, [F

    mul-int/lit8 v4, p1, 0x3

    .line 48
    new-array v4, v4, [F

    mul-int/lit8 v5, p1, 0x2

    .line 49
    new-array v5, v5, [F

    move v6, v1

    :goto_0
    if-ge v6, p1, :cond_0

    mul-int/lit8 v7, v6, 0x8

    mul-int/lit8 v8, v6, 0x3

    .line 53
    aget v9, v2, v7

    aput v9, v3, v8

    add-int/lit8 v9, v8, 0x1

    add-int/lit8 v10, v7, 0x1

    .line 54
    aget v10, v2, v10

    aput v10, v3, v9

    add-int/lit8 v10, v8, 0x2

    add-int/lit8 v11, v7, 0x2

    .line 55
    aget v11, v2, v11

    aput v11, v3, v10

    add-int/lit8 v11, v7, 0x3

    .line 56
    aget v11, v2, v11

    aput v11, v4, v8

    add-int/lit8 v8, v7, 0x4

    .line 57
    aget v8, v2, v8

    aput v8, v4, v9

    add-int/lit8 v8, v7, 0x5

    .line 58
    aget v8, v2, v8

    aput v8, v4, v10

    mul-int/lit8 v8, v6, 0x2

    add-int/lit8 v9, v7, 0x6

    .line 59
    aget v9, v2, v9

    aput v9, v5, v8

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v7, v7, 0x7

    .line 60
    aget v7, v2, v7

    aput v7, v5, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    mul-int/lit8 v2, p1, 0xc

    .line 63
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 64
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 65
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iput-object v2, p0, Lcom/xiaozhi/android/pet/PetModel;->vertexBuffer:Ljava/nio/FloatBuffer;

    mul-int/lit8 v2, p1, 0xc

    .line 67
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 68
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 69
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iput-object v2, p0, Lcom/xiaozhi/android/pet/PetModel;->normalBuffer:Ljava/nio/FloatBuffer;

    mul-int/lit8 p1, p1, 0x8

    .line 71
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 72
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 73
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iput-object p1, p0, Lcom/xiaozhi/android/pet/PetModel;->textureBuffer:Ljava/nio/FloatBuffer;

    .line 75
    iget p1, p0, Lcom/xiaozhi/android/pet/PetModel;->vertexCount:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loaded "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " verts"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to load "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method
