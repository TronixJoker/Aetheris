.class final Lorg/jsoup/helper/UrlBuilder;
.super Ljava/lang/Object;
.source "UrlBuilder.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field q:Ljava/lang/StringBuilder;

.field u:Ljava/net/URL;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Ljava/net/URL;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/jsoup/helper/UrlBuilder;->u:Ljava/net/URL;

    .line 29
    invoke-virtual {p1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 30
    invoke-static {}, Lorg/jsoup/internal/StringUtil;->borrowBuilder()Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lorg/jsoup/helper/UrlBuilder;->u:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iput-object p1, p0, Lorg/jsoup/helper/UrlBuilder;->q:Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method private static appendToAscii(Ljava/lang/String;ZLjava/lang/StringBuilder;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 86
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 87
    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_1

    if-eqz p1, :cond_0

    const/16 v1, 0x2b

    .line 89
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    goto :goto_1

    :cond_0
    const-string v1, "%20"

    :goto_1
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    const/16 v2, 0x7f

    if-le v1, v2, :cond_2

    .line 91
    new-instance v2, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    sget-object v3, Lorg/jsoup/helper/DataUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    int-to-char v1, v1

    .line 95
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private static decodePart(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 78
    :try_start_0
    sget-object v0, Lorg/jsoup/helper/DataUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 80
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method appendKeyVal(Lorg/jsoup/Connection$KeyVal;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lorg/jsoup/helper/UrlBuilder;->q:Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    .line 67
    invoke-static {}, Lorg/jsoup/internal/StringUtil;->borrowBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/helper/UrlBuilder;->q:Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/16 v1, 0x26

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    :goto_0
    iget-object v0, p0, Lorg/jsoup/helper/UrlBuilder;->q:Ljava/lang/StringBuilder;

    .line 71
    invoke-interface {p1}, Lorg/jsoup/Connection$KeyVal;->key()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/jsoup/helper/DataUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3d

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 73
    invoke-interface {p1}, Lorg/jsoup/Connection$KeyVal;->value()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lorg/jsoup/helper/DataUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method build()Ljava/net/URL;
    .locals 9

    .line 36
    :try_start_0
    new-instance v8, Ljava/net/URI;

    iget-object v0, p0, Lorg/jsoup/helper/UrlBuilder;->u:Ljava/net/URL;

    .line 37
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lorg/jsoup/helper/UrlBuilder;->u:Ljava/net/URL;

    .line 38
    invoke-virtual {v0}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lorg/jsoup/helper/UrlBuilder;->u:Ljava/net/URL;

    .line 39
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jsoup/helper/UrlBuilder;->decodePart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/IDN;->toASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lorg/jsoup/helper/UrlBuilder;->u:Ljava/net/URL;

    .line 40
    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-static {}, Lorg/jsoup/internal/StringUtil;->borrowBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 45
    iget-object v1, p0, Lorg/jsoup/helper/UrlBuilder;->u:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lorg/jsoup/helper/UrlBuilder;->appendToAscii(Ljava/lang/String;ZLjava/lang/StringBuilder;)V

    .line 46
    iget-object v1, p0, Lorg/jsoup/helper/UrlBuilder;->q:Ljava/lang/StringBuilder;

    if-eqz v1, :cond_0

    const/16 v1, 0x3f

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    iget-object v1, p0, Lorg/jsoup/helper/UrlBuilder;->q:Ljava/lang/StringBuilder;

    invoke-static {v1}, Lorg/jsoup/internal/StringUtil;->releaseBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v1, v3, v0}, Lorg/jsoup/helper/UrlBuilder;->appendToAscii(Ljava/lang/String;ZLjava/lang/StringBuilder;)V

    .line 50
    :cond_0
    iget-object v1, p0, Lorg/jsoup/helper/UrlBuilder;->u:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const/16 v1, 0x23

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 52
    iget-object v1, p0, Lorg/jsoup/helper/UrlBuilder;->u:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2, v0}, Lorg/jsoup/helper/UrlBuilder;->appendToAscii(Ljava/lang/String;ZLjava/lang/StringBuilder;)V

    .line 54
    :cond_1
    new-instance v1, Ljava/net/URL;

    invoke-static {v0}, Lorg/jsoup/internal/StringUtil;->releaseBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/jsoup/helper/UrlBuilder;->u:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 61
    :catch_0
    iget-object v0, p0, Lorg/jsoup/helper/UrlBuilder;->u:Ljava/net/URL;

    return-object v0
.end method
