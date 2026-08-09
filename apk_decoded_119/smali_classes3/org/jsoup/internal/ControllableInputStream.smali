.class public Lorg/jsoup/internal/ControllableInputStream;
.super Ljava/io/FilterInputStream;
.source "ControllableInputStream.java"


# instance fields
.field private final buff:Ljava/io/BufferedInputStream;

.field private final capped:Z

.field private interrupted:Z

.field private markPos:I

.field private final maxSize:I

.field private remaining:I

.field private startTime:J

.field private timeout:J


# direct methods
.method private constructor <init>(Ljava/io/BufferedInputStream;I)V
    .locals 3

    .line 32
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const-wide/16 v0, 0x0

    .line 26
    iput-wide v0, p0, Lorg/jsoup/internal/ControllableInputStream;->timeout:J

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 33
    :goto_0
    invoke-static {v2}, Lorg/jsoup/helper/Validate;->isTrue(Z)V

    .line 34
    iput-object p1, p0, Lorg/jsoup/internal/ControllableInputStream;->buff:Ljava/io/BufferedInputStream;

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 35
    :goto_1
    iput-boolean v0, p0, Lorg/jsoup/internal/ControllableInputStream;->capped:Z

    .line 36
    iput p2, p0, Lorg/jsoup/internal/ControllableInputStream;->maxSize:I

    .line 37
    iput p2, p0, Lorg/jsoup/internal/ControllableInputStream;->remaining:I

    const/4 p1, -0x1

    .line 38
    iput p1, p0, Lorg/jsoup/internal/ControllableInputStream;->markPos:I

    .line 39
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/jsoup/internal/ControllableInputStream;->startTime:J

    return-void
.end method

.method private expired()Z
    .locals 6

    .line 130
    iget-wide v0, p0, Lorg/jsoup/internal/ControllableInputStream;->timeout:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 133
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 134
    iget-wide v4, p0, Lorg/jsoup/internal/ControllableInputStream;->startTime:J

    sub-long/2addr v2, v4

    .line 135
    iget-wide v4, p0, Lorg/jsoup/internal/ControllableInputStream;->timeout:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static readToByteBuffer(Ljava/io/InputStream;I)Ljava/nio/ByteBuffer;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 87
    :goto_0
    const-string v3, "maxSize must be 0 (unlimited) or larger"

    invoke-static {v2, v3}, Lorg/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    .line 88
    invoke-static {p0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    if-lez p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const v2, 0x8000

    if-eqz v0, :cond_2

    if-ge p1, v2, :cond_2

    move v2, p1

    .line 91
    :cond_2
    new-array v3, v2, [B

    .line 92
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    :goto_2
    if-eqz v0, :cond_3

    .line 97
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_3

    :cond_3
    move v5, v2

    :goto_3
    invoke-virtual {p0, v3, v1, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_4

    goto :goto_4

    :cond_4
    if-eqz v0, :cond_6

    if-lt v5, p1, :cond_5

    .line 101
    invoke-virtual {v4, v3, v1, p1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 108
    :goto_4
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0

    :cond_5
    sub-int/2addr p1, v5

    .line 106
    :cond_6
    invoke-virtual {v4, v3, v1, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2
.end method

.method public static wrap(Ljava/io/InputStream;II)Lorg/jsoup/internal/ControllableInputStream;
    .locals 2

    .line 50
    instance-of v0, p0, Lorg/jsoup/internal/ControllableInputStream;

    if-eqz v0, :cond_0

    .line 51
    check-cast p0, Lorg/jsoup/internal/ControllableInputStream;

    return-object p0

    .line 52
    :cond_0
    instance-of v0, p0, Ljava/io/BufferedInputStream;

    if-eqz v0, :cond_1

    .line 53
    new-instance p1, Lorg/jsoup/internal/ControllableInputStream;

    check-cast p0, Ljava/io/BufferedInputStream;

    invoke-direct {p1, p0, p2}, Lorg/jsoup/internal/ControllableInputStream;-><init>(Ljava/io/BufferedInputStream;I)V

    return-object p1

    .line 55
    :cond_1
    new-instance v0, Lorg/jsoup/internal/ControllableInputStream;

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v0, v1, p2}, Lorg/jsoup/internal/ControllableInputStream;-><init>(Ljava/io/BufferedInputStream;I)V

    return-object v0
.end method


# virtual methods
.method public inputStream()Ljava/io/BufferedInputStream;
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/jsoup/internal/ControllableInputStream;->buff:Ljava/io/BufferedInputStream;

    return-object v0
.end method

.method public mark(I)V
    .locals 1

    .line 119
    invoke-super {p0, p1}, Ljava/io/FilterInputStream;->mark(I)V

    .line 120
    iget p1, p0, Lorg/jsoup/internal/ControllableInputStream;->maxSize:I

    iget v0, p0, Lorg/jsoup/internal/ControllableInputStream;->remaining:I

    sub-int/2addr p1, v0

    iput p1, p0, Lorg/jsoup/internal/ControllableInputStream;->markPos:I

    return-void
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    iget-boolean v0, p0, Lorg/jsoup/internal/ControllableInputStream;->interrupted:Z

    const/4 v1, -0x1

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lorg/jsoup/internal/ControllableInputStream;->capped:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/jsoup/internal/ControllableInputStream;->remaining:I

    if-gtz v0, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    .line 64
    iput-boolean p1, p0, Lorg/jsoup/internal/ControllableInputStream;->interrupted:Z

    return v1

    .line 67
    :cond_1
    invoke-direct {p0}, Lorg/jsoup/internal/ControllableInputStream;->expired()Z

    move-result v0

    if-nez v0, :cond_3

    .line 70
    iget-boolean v0, p0, Lorg/jsoup/internal/ControllableInputStream;->capped:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/jsoup/internal/ControllableInputStream;->remaining:I

    if-le p3, v0, :cond_2

    move p3, v0

    .line 74
    :cond_2
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result p1

    .line 75
    iget p2, p0, Lorg/jsoup/internal/ControllableInputStream;->remaining:I

    sub-int/2addr p2, p1

    iput p2, p0, Lorg/jsoup/internal/ControllableInputStream;->remaining:I
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1

    .line 68
    :cond_3
    new-instance p1, Ljava/net/SocketTimeoutException;

    const-string p2, "Read timeout"

    invoke-direct {p1, p2}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_0
    return v1
.end method

.method public reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    invoke-super {p0}, Ljava/io/FilterInputStream;->reset()V

    .line 114
    iget v0, p0, Lorg/jsoup/internal/ControllableInputStream;->maxSize:I

    iget v1, p0, Lorg/jsoup/internal/ControllableInputStream;->markPos:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/jsoup/internal/ControllableInputStream;->remaining:I

    return-void
.end method

.method public timeout(JJ)Lorg/jsoup/internal/ControllableInputStream;
    .locals 0

    .line 124
    iput-wide p1, p0, Lorg/jsoup/internal/ControllableInputStream;->startTime:J

    const-wide/32 p1, 0xf4240

    mul-long/2addr p3, p1

    .line 125
    iput-wide p3, p0, Lorg/jsoup/internal/ControllableInputStream;->timeout:J

    return-object p0
.end method
