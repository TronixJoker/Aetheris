.class public final Lcom/xiaozhi/android/audio/OpusCodec;
.super Ljava/lang/Object;
.source "OpusCodec.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaozhi/android/audio/OpusCodec$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0017\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u0008\u001a\u00020\tJ\u0010\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000c\u001a\u00020\rJ\u0010\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000f\u001a\u00020\u000bJ\u0006\u0010\u0010\u001a\u00020\tR\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/xiaozhi/android/audio/OpusCodec;",
        "",
        "<init>",
        "()V",
        "encoder",
        "Lorg/concentus/OpusEncoder;",
        "decoder",
        "Lorg/concentus/OpusDecoder;",
        "initialize",
        "",
        "encode",
        "",
        "pcmData",
        "",
        "decode",
        "opusData",
        "release",
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

.field private static final CHANNELS:I = 0x1

.field public static final Companion:Lcom/xiaozhi/android/audio/OpusCodec$Companion;

.field private static final FRAME_SIZE:I = 0x140

.field private static final INPUT_SAMPLE_RATE:I = 0x3e80

.field private static final MAX_PACKET:I = 0x100

.field private static final OUTPUT_SAMPLE_RATE:I = 0x5dc0

.field private static final TAG:Ljava/lang/String; = "OpusCodec"


# instance fields
.field private decoder:Lorg/concentus/OpusDecoder;

.field private encoder:Lorg/concentus/OpusEncoder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/xiaozhi/android/audio/OpusCodec$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaozhi/android/audio/OpusCodec$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/xiaozhi/android/audio/OpusCodec;->Companion:Lcom/xiaozhi/android/audio/OpusCodec$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/xiaozhi/android/audio/OpusCodec;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final decode([B)[S
    .locals 10

    const-string v0, "opusData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget-object v1, p0, Lcom/xiaozhi/android/audio/OpusCodec;->decoder:Lorg/concentus/OpusDecoder;

    const/4 v0, 0x0

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/16 v7, 0x1e0

    .line 55
    :try_start_0
    new-array v9, v7, [S

    .line 56
    array-length v4, p1

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x0

    move-object v2, p1

    move-object v5, v9

    invoke-virtual/range {v1 .. v8}, Lorg/concentus/OpusDecoder;->decode([BII[SIIZ)I

    move-result p1

    if-lez p1, :cond_1

    .line 57
    invoke-static {v9, p1}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object p1

    const-string v1, "copyOf(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 59
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Opus decode error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "OpusCodec"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final encode([S)[B
    .locals 9

    const-string v0, "pcmData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object v1, p0, Lcom/xiaozhi/android/audio/OpusCodec;->encoder:Lorg/concentus/OpusEncoder;

    const/4 v0, 0x0

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/16 v2, 0x100

    .line 39
    :try_start_0
    new-array v8, v2, [B

    const/4 v6, 0x0

    const/16 v7, 0x100

    const/4 v3, 0x0

    const/16 v4, 0x140

    move-object v2, p1

    move-object v5, v8

    .line 40
    invoke-virtual/range {v1 .. v7}, Lorg/concentus/OpusEncoder;->encode([SII[BII)I

    move-result p1

    if-lez p1, :cond_1

    .line 41
    invoke-static {v8, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    const-string v1, "copyOf(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 43
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Opus encode error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "OpusCodec"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final initialize()V
    .locals 5

    .line 22
    const-string v0, "OpusCodec"

    .line 23
    :try_start_0
    new-instance v1, Lorg/concentus/OpusEncoder;

    sget-object v2, Lorg/concentus/OpusApplication;->OPUS_APPLICATION_VOIP:Lorg/concentus/OpusApplication;

    const/4 v3, 0x1

    const/16 v4, 0x3e80

    invoke-direct {v1, v4, v3, v2}, Lorg/concentus/OpusEncoder;-><init>(IILorg/concentus/OpusApplication;)V

    iput-object v1, p0, Lcom/xiaozhi/android/audio/OpusCodec;->encoder:Lorg/concentus/OpusEncoder;

    .line 24
    new-instance v1, Lorg/concentus/OpusDecoder;

    const/16 v2, 0x5dc0

    invoke-direct {v1, v2, v3}, Lorg/concentus/OpusDecoder;-><init>(II)V

    iput-object v1, p0, Lcom/xiaozhi/android/audio/OpusCodec;->decoder:Lorg/concentus/OpusDecoder;

    .line 25
    const-string v1, "Opus codec initialized (encoder: 16000Hz, decoder: 24000Hz)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 27
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to initialize Opus codec: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/xiaozhi/android/audio/OpusCodec;->encoder:Lorg/concentus/OpusEncoder;

    .line 29
    iput-object v0, p0, Lcom/xiaozhi/android/audio/OpusCodec;->decoder:Lorg/concentus/OpusDecoder;

    :goto_0
    return-void
.end method

.method public final release()V
    .locals 2

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/xiaozhi/android/audio/OpusCodec;->encoder:Lorg/concentus/OpusEncoder;

    .line 66
    iput-object v0, p0, Lcom/xiaozhi/android/audio/OpusCodec;->decoder:Lorg/concentus/OpusDecoder;

    .line 67
    const-string v0, "OpusCodec"

    const-string v1, "Opus codec released"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
