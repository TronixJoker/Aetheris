.class public Lorg/jsoup/UncheckedIOException;
.super Ljava/io/UncheckedIOException;
.source "UncheckedIOException.java"


# direct methods
.method public constructor <init>(Ljava/io/IOException;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 16
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    return-void
.end method


# virtual methods
.method public ioException()Ljava/io/IOException;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lorg/jsoup/UncheckedIOException;->getCause()Ljava/io/IOException;

    move-result-object v0

    return-object v0
.end method
