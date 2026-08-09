.class public Lorg/jsoup/helper/HttpConnection$Response;
.super Lorg/jsoup/helper/HttpConnection$Base;
.source "HttpConnection.java"

# interfaces
.implements Lorg/jsoup/Connection$Response;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/helper/HttpConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Response"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jsoup/helper/HttpConnection$Base<",
        "Lorg/jsoup/Connection$Response;",
        ">;",
        "Lorg/jsoup/Connection$Response;"
    }
.end annotation


# static fields
.field private static final LOCATION:Ljava/lang/String; = "Location"

.field private static final MAX_REDIRECTS:I = 0x14

.field private static final xmlContentTypeRxp:Ljava/util/regex/Pattern;


# instance fields
.field private bodyStream:Lorg/jsoup/internal/ControllableInputStream;

.field private byteData:Ljava/nio/ByteBuffer;

.field private charset:Ljava/lang/String;

.field private conn:Ljava/net/HttpURLConnection;

.field private final contentType:Ljava/lang/String;

.field private executed:Z

.field private inputStreamRead:Z

.field private numRedirects:I

.field private final req:Lorg/jsoup/helper/HttpConnection$Request;

.field private final statusCode:I

.field private final statusMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 803
    const-string v0, "(\\w+)/\\w*\\+?xml.*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jsoup/helper/HttpConnection$Response;->xmlContentTypeRxp:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 810
    invoke-direct {p0, v0}, Lorg/jsoup/helper/HttpConnection$Base;-><init>(Lorg/jsoup/helper/HttpConnection$1;)V

    const/4 v1, 0x0

    .line 795
    iput-boolean v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->executed:Z

    .line 796
    iput-boolean v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->inputStreamRead:Z

    .line 797
    iput v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->numRedirects:I

    const/16 v1, 0x190

    .line 811
    iput v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->statusCode:I

    .line 812
    const-string v1, "Request not made"

    iput-object v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->statusMessage:Ljava/lang/String;

    .line 813
    new-instance v1, Lorg/jsoup/helper/HttpConnection$Request;

    invoke-direct {v1}, Lorg/jsoup/helper/HttpConnection$Request;-><init>()V

    iput-object v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->req:Lorg/jsoup/helper/HttpConnection$Request;

    .line 814
    iput-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->contentType:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/net/HttpURLConnection;Lorg/jsoup/helper/HttpConnection$Request;Lorg/jsoup/helper/HttpConnection$Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1071
    invoke-direct {p0, v0}, Lorg/jsoup/helper/HttpConnection$Base;-><init>(Lorg/jsoup/helper/HttpConnection$1;)V

    const/4 v0, 0x0

    .line 795
    iput-boolean v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->executed:Z

    .line 796
    iput-boolean v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->inputStreamRead:Z

    .line 797
    iput v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->numRedirects:I

    .line 1072
    iput-object p1, p0, Lorg/jsoup/helper/HttpConnection$Response;->conn:Ljava/net/HttpURLConnection;

    .line 1073
    iput-object p2, p0, Lorg/jsoup/helper/HttpConnection$Response;->req:Lorg/jsoup/helper/HttpConnection$Request;

    .line 1074
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jsoup/Connection$Method;->valueOf(Ljava/lang/String;)Lorg/jsoup/Connection$Method;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->method:Lorg/jsoup/Connection$Method;

    .line 1075
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->url:Ljava/net/URL;

    .line 1076
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->statusCode:I

    .line 1077
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->statusMessage:Ljava/lang/String;

    .line 1078
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->contentType:Ljava/lang/String;

    .line 1080
    invoke-static {p1}, Lorg/jsoup/helper/HttpConnection$Response;->createHeaderMap(Ljava/net/HttpURLConnection;)Ljava/util/LinkedHashMap;

    move-result-object p1

    .line 1081
    invoke-virtual {p0, p1}, Lorg/jsoup/helper/HttpConnection$Response;->processResponseHeaders(Ljava/util/Map;)V

    .line 1082
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->url:Ljava/net/URL;

    invoke-static {p2, v0, p1}, Lorg/jsoup/helper/CookieUtil;->storeCookies(Lorg/jsoup/helper/HttpConnection$Request;Ljava/net/URL;Ljava/util/Map;)V

    if-eqz p3, :cond_3

    .line 1086
    invoke-virtual {p3}, Lorg/jsoup/helper/HttpConnection$Response;->cookies()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 1087
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/jsoup/helper/HttpConnection$Response;->hasCookie(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1088
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lorg/jsoup/helper/HttpConnection$Response;->cookie(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    goto :goto_0

    .line 1090
    :cond_1
    invoke-direct {p3}, Lorg/jsoup/helper/HttpConnection$Response;->safeClose()V

    .line 1093
    iget p1, p3, Lorg/jsoup/helper/HttpConnection$Response;->numRedirects:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/jsoup/helper/HttpConnection$Response;->numRedirects:I

    const/16 p2, 0x14

    if-ge p1, p2, :cond_2

    goto :goto_1

    .line 1095
    :cond_2
    new-instance p1, Ljava/io/IOException;

    invoke-virtual {p3}, Lorg/jsoup/helper/HttpConnection$Response;->url()Ljava/net/URL;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "Too many redirects occurred trying to load URL %s"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method private static createConnection(Lorg/jsoup/helper/HttpConnection$Request;)Ljava/net/HttpURLConnection;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1023
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->proxy()Ljava/net/Proxy;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1026
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->url()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    goto :goto_0

    .line 1027
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->url()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    :goto_0
    check-cast v0, Ljava/net/HttpURLConnection;

    .line 1030
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->method()Lorg/jsoup/Connection$Method;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/Connection$Method;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1031
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 1032
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->timeout()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1033
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->timeout()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1035
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v1, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_1

    .line 1036
    move-object v1, v0

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 1037
    :cond_1
    invoke-static {p0}, Lorg/jsoup/helper/HttpConnection$Request;->access$500(Lorg/jsoup/helper/HttpConnection$Request;)Lorg/jsoup/helper/RequestAuthenticator;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1038
    sget-object v1, Lorg/jsoup/helper/AuthenticationHandler;->handler:Lorg/jsoup/helper/AuthenticationHandler$AuthShim;

    invoke-static {p0}, Lorg/jsoup/helper/HttpConnection$Request;->access$500(Lorg/jsoup/helper/HttpConnection$Request;)Lorg/jsoup/helper/RequestAuthenticator;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/jsoup/helper/AuthenticationHandler$AuthShim;->enable(Lorg/jsoup/helper/RequestAuthenticator;Ljava/net/HttpURLConnection;)V

    .line 1039
    :cond_2
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->method()Lorg/jsoup/Connection$Method;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/Connection$Method;->hasBody()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    .line 1040
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 1041
    :cond_3
    invoke-static {p0, v0}, Lorg/jsoup/helper/CookieUtil;->applyCookiesToRequest(Lorg/jsoup/helper/HttpConnection$Request;Ljava/net/HttpURLConnection;)V

    .line 1042
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->multiHeaders()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1043
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1044
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    return-object v0
.end method

.method private static createHeaderMap(Ljava/net/HttpURLConnection;)Ljava/util/LinkedHashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            ")",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1101
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v1, 0x0

    .line 1104
    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v2

    .line 1105
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_1

    if-nez v3, :cond_1

    return-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    if-eqz v2, :cond_0

    if-nez v3, :cond_2

    goto :goto_0

    .line 1112
    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1113
    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1115
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1116
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1117
    invoke-virtual {v0, v2, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static execute(Lorg/jsoup/helper/HttpConnection$Request;)Lorg/jsoup/helper/HttpConnection$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 818
    invoke-static {p0, v0}, Lorg/jsoup/helper/HttpConnection$Response;->execute(Lorg/jsoup/helper/HttpConnection$Request;Lorg/jsoup/helper/HttpConnection$Response;)Lorg/jsoup/helper/HttpConnection$Response;

    move-result-object p0

    return-object p0
.end method

.method static execute(Lorg/jsoup/helper/HttpConnection$Request;Lorg/jsoup/helper/HttpConnection$Response;)Lorg/jsoup/helper/HttpConnection$Response;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 822
    monitor-enter p0

    .line 823
    :try_start_0
    invoke-static {p0}, Lorg/jsoup/helper/HttpConnection$Request;->access$300(Lorg/jsoup/helper/HttpConnection$Request;)Z

    move-result v0

    const-string v1, "Multiple threads were detected trying to execute the same request concurrently. Make sure to use Connection#newRequest() and do not share an executing request between threads."

    invoke-static {v0, v1}, Lorg/jsoup/helper/Validate;->isFalse(ZLjava/lang/String;)V

    const/4 v0, 0x1

    .line 824
    invoke-static {p0, v0}, Lorg/jsoup/helper/HttpConnection$Request;->access$302(Lorg/jsoup/helper/HttpConnection$Request;Z)Z

    .line 825
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 826
    const-string v1, "req"

    invoke-static {p0, v1}, Lorg/jsoup/helper/Validate;->notNullParam(Ljava/lang/Object;Ljava/lang/String;)V

    .line 827
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->url()Ljava/net/URL;

    move-result-object v1

    .line 828
    const-string v2, "URL must be specified to connect"

    invoke-static {v1, v2}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 829
    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    .line 830
    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 831
    :cond_0
    new-instance p0, Ljava/net/MalformedURLException;

    const-string p1, "Only http & https protocols supported"

    invoke-direct {p0, p1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 832
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->method()Lorg/jsoup/Connection$Method;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/Connection$Method;->hasBody()Z

    move-result v1

    .line 833
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->requestBody()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    move v2, v0

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    if-nez v1, :cond_3

    .line 835
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Cannot set a request body for HTTP method "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->method()Lorg/jsoup/Connection$Method;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lorg/jsoup/helper/Validate;->isFalse(ZLjava/lang/String;)V

    .line 839
    :cond_3
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->data()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    const/4 v5, 0x0

    if-lez v4, :cond_5

    if-eqz v1, :cond_4

    if-eqz v2, :cond_5

    .line 840
    :cond_4
    invoke-static {p0}, Lorg/jsoup/helper/HttpConnection$Response;->serialiseRequestUrl(Lorg/jsoup/Connection$Request;)V

    goto :goto_2

    :cond_5
    if-eqz v1, :cond_6

    .line 842
    invoke-static {p0}, Lorg/jsoup/helper/HttpConnection$Response;->setOutputContentType(Lorg/jsoup/Connection$Request;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_6
    :goto_2
    move-object v1, v5

    .line 844
    :goto_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 845
    invoke-static {p0}, Lorg/jsoup/helper/HttpConnection$Response;->createConnection(Lorg/jsoup/helper/HttpConnection$Request;)Ljava/net/HttpURLConnection;

    move-result-object v2

    .line 848
    :try_start_1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 849
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getDoOutput()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 850
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 851
    :try_start_2
    invoke-static {p0, v4, v1}, Lorg/jsoup/helper/HttpConnection$Response;->writePost(Lorg/jsoup/Connection$Request;Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 853
    :try_start_3
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_5

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 852
    :try_start_4
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 853
    :goto_4
    :try_start_5
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    throw p1

    .line 856
    :cond_7
    :goto_5
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 857
    new-instance v4, Lorg/jsoup/helper/HttpConnection$Response;

    invoke-direct {v4, v2, p0, p1}, Lorg/jsoup/helper/HttpConnection$Response;-><init>(Ljava/net/HttpURLConnection;Lorg/jsoup/helper/HttpConnection$Request;Lorg/jsoup/helper/HttpConnection$Response;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 860
    :try_start_6
    const-string p1, "Location"

    invoke-virtual {v4, p1}, Lorg/jsoup/helper/HttpConnection$Response;->hasHeader(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->followRedirects()Z

    move-result p1

    if-eqz p1, :cond_b

    const/16 p1, 0x133

    if-eq v1, p1, :cond_8

    .line 862
    sget-object p1, Lorg/jsoup/Connection$Method;->GET:Lorg/jsoup/Connection$Method;

    invoke-virtual {p0, p1}, Lorg/jsoup/helper/HttpConnection$Request;->method(Lorg/jsoup/Connection$Method;)Lorg/jsoup/Connection$Base;

    .line 863
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->data()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    .line 864
    invoke-virtual {p0, v5}, Lorg/jsoup/helper/HttpConnection$Request;->requestBody(Ljava/lang/String;)Lorg/jsoup/Connection$Request;

    .line 865
    const-string p1, "Content-Type"

    invoke-virtual {p0, p1}, Lorg/jsoup/helper/HttpConnection$Request;->removeHeader(Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    .line 868
    :cond_8
    const-string p1, "Location"

    invoke-virtual {v4, p1}, Lorg/jsoup/helper/HttpConnection$Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 869
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 870
    const-string v0, "http:/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_9

    .line 871
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 872
    :cond_9
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->url()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/jsoup/internal/StringUtil;->resolve(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    .line 873
    invoke-virtual {p0, p1}, Lorg/jsoup/helper/HttpConnection$Request;->url(Ljava/net/URL;)Lorg/jsoup/Connection$Base;

    .line 875
    invoke-static {p0, v3}, Lorg/jsoup/helper/HttpConnection$Request;->access$302(Lorg/jsoup/helper/HttpConnection$Request;Z)Z

    .line 876
    invoke-static {p0, v4}, Lorg/jsoup/helper/HttpConnection$Response;->execute(Lorg/jsoup/helper/HttpConnection$Request;Lorg/jsoup/helper/HttpConnection$Response;)Lorg/jsoup/helper/HttpConnection$Response;

    move-result-object p1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 914
    invoke-static {p0, v3}, Lorg/jsoup/helper/HttpConnection$Request;->access$302(Lorg/jsoup/helper/HttpConnection$Request;Z)Z

    .line 917
    invoke-static {p0}, Lorg/jsoup/helper/HttpConnection$Request;->access$500(Lorg/jsoup/helper/HttpConnection$Request;)Lorg/jsoup/helper/RequestAuthenticator;

    move-result-object p0

    if-eqz p0, :cond_a

    .line 918
    sget-object p0, Lorg/jsoup/helper/AuthenticationHandler;->handler:Lorg/jsoup/helper/AuthenticationHandler$AuthShim;

    invoke-interface {p0}, Lorg/jsoup/helper/AuthenticationHandler$AuthShim;->remove()V

    :cond_a
    return-object p1

    :cond_b
    const/16 p1, 0xc8

    if-lt v1, p1, :cond_c

    const/16 p1, 0x190

    if-lt v1, p1, :cond_d

    .line 878
    :cond_c
    :try_start_7
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->ignoreHttpErrors()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 882
    :cond_d
    invoke-virtual {v4}, Lorg/jsoup/helper/HttpConnection$Response;->contentType()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 884
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->ignoreContentType()Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "text/"

    .line 885
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    sget-object v1, Lorg/jsoup/helper/HttpConnection$Response;->xmlContentTypeRxp:Ljava/util/regex/Pattern;

    .line 886
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_6

    .line 888
    :cond_e
    new-instance v0, Lorg/jsoup/UnsupportedMimeTypeException;

    const-string v1, "Unhandled content type. Must be text/*, */xml, or */*+xml"

    .line 889
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->url()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lorg/jsoup/UnsupportedMimeTypeException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_f
    :goto_6
    if-eqz p1, :cond_10

    .line 892
    sget-object v1, Lorg/jsoup/helper/HttpConnection$Response;->xmlContentTypeRxp:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 893
    invoke-static {p0}, Lorg/jsoup/helper/HttpConnection$Request;->access$400(Lorg/jsoup/helper/HttpConnection$Request;)Z

    move-result p1

    if-nez p1, :cond_10

    invoke-static {}, Lorg/jsoup/parser/Parser;->xmlParser()Lorg/jsoup/parser/Parser;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/helper/HttpConnection$Request;->parser(Lorg/jsoup/parser/Parser;)Lorg/jsoup/helper/HttpConnection$Request;

    .line 896
    :cond_10
    iget-object p1, v4, Lorg/jsoup/helper/HttpConnection$Response;->contentType:Ljava/lang/String;

    invoke-static {p1}, Lorg/jsoup/helper/DataUtil;->getCharsetFromContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v4, Lorg/jsoup/helper/HttpConnection$Response;->charset:Ljava/lang/String;

    .line 897
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result p1

    if-eqz p1, :cond_14

    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->method()Lorg/jsoup/Connection$Method;

    move-result-object p1

    sget-object v1, Lorg/jsoup/Connection$Method;->HEAD:Lorg/jsoup/Connection$Method;

    if-eq p1, v1, :cond_14

    .line 898
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_11

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    goto :goto_7

    :cond_11
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 899
    :goto_7
    const-string v1, "Content-Encoding"

    const-string v2, "gzip"

    invoke-virtual {v4, v1, v2}, Lorg/jsoup/helper/HttpConnection$Response;->hasHeaderWithValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 900
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_8
    move-object p1, v1

    goto :goto_9

    .line 901
    :cond_12
    const-string v1, "Content-Encoding"

    const-string v2, "deflate"

    invoke-virtual {v4, v1, v2}, Lorg/jsoup/helper/HttpConnection$Response;->hasHeaderWithValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 902
    new-instance v1, Ljava/util/zip/InflaterInputStream;

    new-instance v2, Ljava/util/zip/Inflater;

    invoke-direct {v2, v0}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {v1, p1, v2}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    goto :goto_8

    .line 905
    :cond_13
    :goto_9
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->maxBodySize()I

    move-result v1

    const v2, 0x8000

    .line 904
    invoke-static {p1, v2, v1}, Lorg/jsoup/internal/ControllableInputStream;->wrap(Ljava/io/InputStream;II)Lorg/jsoup/internal/ControllableInputStream;

    move-result-object p1

    .line 906
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->timeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v6, v7, v1, v2}, Lorg/jsoup/internal/ControllableInputStream;->timeout(JJ)Lorg/jsoup/internal/ControllableInputStream;

    move-result-object p1

    iput-object p1, v4, Lorg/jsoup/helper/HttpConnection$Response;->bodyStream:Lorg/jsoup/internal/ControllableInputStream;

    goto :goto_a

    .line 908
    :cond_14
    invoke-static {}, Lorg/jsoup/helper/DataUtil;->emptyByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, v4, Lorg/jsoup/helper/HttpConnection$Response;->byteData:Ljava/nio/ByteBuffer;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 914
    :goto_a
    invoke-static {p0, v3}, Lorg/jsoup/helper/HttpConnection$Request;->access$302(Lorg/jsoup/helper/HttpConnection$Request;Z)Z

    .line 917
    invoke-static {p0}, Lorg/jsoup/helper/HttpConnection$Request;->access$500(Lorg/jsoup/helper/HttpConnection$Request;)Lorg/jsoup/helper/RequestAuthenticator;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 918
    sget-object p0, Lorg/jsoup/helper/AuthenticationHandler;->handler:Lorg/jsoup/helper/AuthenticationHandler$AuthShim;

    invoke-interface {p0}, Lorg/jsoup/helper/AuthenticationHandler$AuthShim;->remove()V

    .line 921
    :cond_15
    iput-boolean v0, v4, Lorg/jsoup/helper/HttpConnection$Response;->executed:Z

    return-object v4

    .line 879
    :cond_16
    :try_start_8
    new-instance p1, Lorg/jsoup/HttpStatusException;

    const-string v0, "HTTP error fetching URL"

    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->url()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lorg/jsoup/HttpStatusException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    throw p1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catch_1
    move-exception p1

    move-object v5, v4

    goto :goto_b

    :catchall_1
    move-exception p1

    goto :goto_c

    :catch_2
    move-exception p1

    :goto_b
    if-eqz v5, :cond_17

    .line 911
    :try_start_9
    invoke-direct {v5}, Lorg/jsoup/helper/HttpConnection$Response;->safeClose()V

    .line 912
    :cond_17
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 914
    :goto_c
    invoke-static {p0, v3}, Lorg/jsoup/helper/HttpConnection$Request;->access$302(Lorg/jsoup/helper/HttpConnection$Request;Z)Z

    .line 917
    invoke-static {p0}, Lorg/jsoup/helper/HttpConnection$Request;->access$500(Lorg/jsoup/helper/HttpConnection$Request;)Lorg/jsoup/helper/RequestAuthenticator;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 918
    sget-object p0, Lorg/jsoup/helper/AuthenticationHandler;->handler:Lorg/jsoup/helper/AuthenticationHandler$AuthShim;

    invoke-interface {p0}, Lorg/jsoup/helper/AuthenticationHandler$AuthShim;->remove()V

    .line 919
    :cond_18
    throw p1

    :catchall_2
    move-exception p1

    .line 825
    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw p1
.end method

.method private static fixHeaderEncoding(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    return-object p0

    .line 1158
    :cond_0
    invoke-static {}, Lorg/jsoup/helper/HttpConnection;->access$700()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 1159
    invoke-static {v0}, Lorg/jsoup/helper/HttpConnection$Response;->looksLikeUtf8([B)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1160
    new-instance p0, Ljava/lang/String;

    sget-object v1, Lorg/jsoup/helper/DataUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    :cond_1
    return-object p0
.end method

.method private static looksLikeUtf8([B)Z
    .locals 8

    .line 1168
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-lt v0, v3, :cond_0

    aget-byte v0, p0, v2

    and-int/lit16 v0, v0, 0xff

    const/16 v4, 0xef

    if-ne v0, v4, :cond_0

    aget-byte v0, p0, v1

    and-int/lit16 v0, v0, 0xff

    const/16 v4, 0xbb

    if-ne v0, v4, :cond_0

    const/4 v0, 0x2

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v4, 0xbf

    if-ne v0, v4, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    .line 1177
    :goto_0
    array-length v0, p0

    move v4, v2

    :goto_1
    if-ge v3, v0, :cond_7

    .line 1178
    aget-byte v5, p0, v3

    and-int/lit16 v6, v5, 0x80

    if-nez v6, :cond_1

    goto :goto_3

    :cond_1
    and-int/lit16 v4, v5, 0xe0

    const/16 v6, 0xc0

    if-ne v4, v6, :cond_2

    add-int/lit8 v4, v3, 0x1

    goto :goto_2

    :cond_2
    and-int/lit16 v4, v5, 0xf0

    const/16 v7, 0xe0

    if-ne v4, v7, :cond_3

    add-int/lit8 v4, v3, 0x2

    goto :goto_2

    :cond_3
    and-int/lit16 v4, v5, 0xf8

    const/16 v5, 0xf0

    if-ne v4, v5, :cond_6

    add-int/lit8 v4, v3, 0x3

    .line 1195
    :goto_2
    array-length v5, p0

    if-lt v4, v5, :cond_4

    return v2

    :cond_4
    if-ge v3, v4, :cond_5

    add-int/lit8 v3, v3, 0x1

    .line 1200
    aget-byte v5, p0, v3

    and-int/2addr v5, v6

    const/16 v7, 0x80

    if-eq v5, v7, :cond_4

    return v2

    :cond_5
    move v4, v1

    :goto_3
    add-int/2addr v3, v1

    goto :goto_1

    :cond_6
    return v2

    :cond_7
    return v4
.end method

.method private prepareByteData()V
    .locals 3

    .line 968
    iget-boolean v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->executed:Z

    const-string v1, "Request must be executed (with .execute(), .get(), or .post() before getting response body"

    invoke-static {v0, v1}, Lorg/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    .line 969
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->bodyStream:Lorg/jsoup/internal/ControllableInputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->byteData:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    .line 970
    iget-boolean v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->inputStreamRead:Z

    const-string v1, "Request has already been read (with .parse())"

    invoke-static {v0, v1}, Lorg/jsoup/helper/Validate;->isFalse(ZLjava/lang/String;)V

    const/4 v0, 0x1

    .line 972
    :try_start_0
    iget-object v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->bodyStream:Lorg/jsoup/internal/ControllableInputStream;

    iget-object v2, p0, Lorg/jsoup/helper/HttpConnection$Response;->req:Lorg/jsoup/helper/HttpConnection$Request;

    invoke-virtual {v2}, Lorg/jsoup/helper/HttpConnection$Request;->maxBodySize()I

    move-result v2

    invoke-static {v1, v2}, Lorg/jsoup/helper/DataUtil;->readToByteBuffer(Ljava/io/InputStream;I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->byteData:Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 976
    iput-boolean v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->inputStreamRead:Z

    .line 977
    invoke-direct {p0}, Lorg/jsoup/helper/HttpConnection$Response;->safeClose()V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 974
    :try_start_1
    new-instance v2, Lorg/jsoup/UncheckedIOException;

    invoke-direct {v2, v1}, Lorg/jsoup/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 976
    :goto_0
    iput-boolean v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->inputStreamRead:Z

    .line 977
    invoke-direct {p0}, Lorg/jsoup/helper/HttpConnection$Response;->safeClose()V

    .line 978
    throw v1

    :cond_0
    :goto_1
    return-void
.end method

.method private safeClose()V
    .locals 2

    .line 1055
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->bodyStream:Lorg/jsoup/internal/ControllableInputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1057
    :try_start_0
    invoke-virtual {v0}, Lorg/jsoup/internal/ControllableInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1061
    iput-object v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->bodyStream:Lorg/jsoup/internal/ControllableInputStream;

    .line 1062
    throw v0

    .line 1061
    :catch_0
    :goto_0
    iput-object v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->bodyStream:Lorg/jsoup/internal/ControllableInputStream;

    .line 1064
    :cond_0
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->conn:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_1

    .line 1065
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1066
    iput-object v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->conn:Ljava/net/HttpURLConnection;

    :cond_1
    return-void
.end method

.method private static serialiseRequestUrl(Lorg/jsoup/Connection$Request;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1291
    new-instance v0, Lorg/jsoup/helper/UrlBuilder;

    invoke-interface {p0}, Lorg/jsoup/Connection$Request;->url()Ljava/net/URL;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jsoup/helper/UrlBuilder;-><init>(Ljava/net/URL;)V

    .line 1293
    invoke-interface {p0}, Lorg/jsoup/Connection$Request;->data()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/Connection$KeyVal;

    .line 1294
    invoke-interface {v2}, Lorg/jsoup/Connection$KeyVal;->hasInputStream()Z

    move-result v3

    const-string v4, "InputStream data not supported in URL query string."

    invoke-static {v3, v4}, Lorg/jsoup/helper/Validate;->isFalse(ZLjava/lang/String;)V

    .line 1295
    invoke-virtual {v0, v2}, Lorg/jsoup/helper/UrlBuilder;->appendKeyVal(Lorg/jsoup/Connection$KeyVal;)V

    goto :goto_0

    .line 1297
    :cond_0
    invoke-virtual {v0}, Lorg/jsoup/helper/UrlBuilder;->build()Ljava/net/URL;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/jsoup/Connection$Request;->url(Ljava/net/URL;)Lorg/jsoup/Connection$Base;

    .line 1298
    invoke-interface {p0}, Lorg/jsoup/Connection$Request;->data()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->clear()V

    return-void
.end method

.method private static setOutputContentType(Lorg/jsoup/Connection$Request;)Ljava/lang/String;
    .locals 4

    .line 1210
    const-string v0, "Content-Type"

    invoke-interface {p0, v0}, Lorg/jsoup/Connection$Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1212
    const-string v2, "multipart/form-data; boundary="

    if-eqz v1, :cond_0

    .line 1217
    const-string v3, "multipart/form-data"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "boundary"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1218
    invoke-static {}, Lorg/jsoup/helper/DataUtil;->mimeBoundary()Ljava/lang/String;

    move-result-object v1

    .line 1219
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v2}, Lorg/jsoup/Connection$Request;->header(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    goto :goto_0

    .line 1223
    :cond_0
    invoke-static {p0}, Lorg/jsoup/helper/HttpConnection;->access$800(Lorg/jsoup/Connection$Request;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1224
    invoke-static {}, Lorg/jsoup/helper/DataUtil;->mimeBoundary()Ljava/lang/String;

    move-result-object v1

    .line 1225
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v2}, Lorg/jsoup/Connection$Request;->header(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    goto :goto_0

    .line 1227
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "application/x-www-form-urlencoded; charset="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/jsoup/Connection$Request;->postDataCharset()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lorg/jsoup/Connection$Request;->header(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method private static writePost(Lorg/jsoup/Connection$Request;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1233
    invoke-interface {p0}, Lorg/jsoup/Connection$Request;->data()Ljava/util/Collection;

    move-result-object v0

    .line 1234
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-interface {p0}, Lorg/jsoup/Connection$Request;->postDataCharset()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    if-eqz p2, :cond_3

    .line 1238
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v2, "--"

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/Connection$KeyVal;

    .line 1239
    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1240
    invoke-virtual {v1, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1241
    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1242
    const-string v3, "Content-Disposition: form-data; name=\""

    invoke-virtual {v1, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1243
    invoke-interface {v0}, Lorg/jsoup/Connection$KeyVal;->key()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/jsoup/helper/HttpConnection;->access$900(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1244
    const-string v3, "\""

    invoke-virtual {v1, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1245
    invoke-interface {v0}, Lorg/jsoup/Connection$KeyVal;->inputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 1246
    const-string v4, "\r\n\r\n"

    if-eqz v3, :cond_1

    .line 1247
    const-string v5, "; filename=\""

    invoke-virtual {v1, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1248
    invoke-interface {v0}, Lorg/jsoup/Connection$KeyVal;->value()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/jsoup/helper/HttpConnection;->access$900(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1249
    const-string v5, "\"\r\nContent-Type: "

    invoke-virtual {v1, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1250
    invoke-interface {v0}, Lorg/jsoup/Connection$KeyVal;->contentType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1251
    :cond_0
    const-string v0, "application/octet-stream"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1252
    invoke-virtual {v1, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1253
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 1254
    invoke-static {v3, p1}, Lorg/jsoup/helper/DataUtil;->crossStreams(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 1255
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    goto :goto_2

    .line 1257
    :cond_1
    invoke-virtual {v1, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1258
    invoke-interface {v0}, Lorg/jsoup/Connection$KeyVal;->value()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1260
    :goto_2
    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 1262
    :cond_2
    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1263
    invoke-virtual {v1, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1264
    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_5

    .line 1266
    :cond_3
    invoke-interface {p0}, Lorg/jsoup/Connection$Request;->requestBody()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1269
    invoke-virtual {v1, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_5

    .line 1274
    :cond_4
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/Connection$KeyVal;

    if-nez p2, :cond_5

    const/16 v2, 0x26

    .line 1276
    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->append(C)Ljava/io/Writer;

    goto :goto_4

    :cond_5
    const/4 p2, 0x0

    .line 1280
    :goto_4
    invoke-interface {v0}, Lorg/jsoup/Connection$KeyVal;->key()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lorg/jsoup/Connection$Request;->postDataCharset()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const/16 v2, 0x3d

    .line 1281
    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 1282
    invoke-interface {v0}, Lorg/jsoup/Connection$KeyVal;->value()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lorg/jsoup/Connection$Request;->postDataCharset()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_3

    .line 1286
    :cond_6
    :goto_5
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    return-void
.end method


# virtual methods
.method public bridge synthetic addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;
    .locals 0

    .line 785
    invoke-super {p0, p1, p2}, Lorg/jsoup/helper/HttpConnection$Base;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    move-result-object p1

    return-object p1
.end method

.method public body()Ljava/lang/String;
    .locals 2

    .line 984
    invoke-direct {p0}, Lorg/jsoup/helper/HttpConnection$Response;->prepareByteData()V

    .line 985
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->byteData:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 987
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->charset:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lorg/jsoup/helper/DataUtil;->UTF_8:Ljava/nio/charset/Charset;

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->byteData:Ljava/nio/ByteBuffer;

    .line 988
    invoke-virtual {v0, v1}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 989
    iget-object v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->byteData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    return-object v0
.end method

.method public bodyAsBytes()[B
    .locals 1

    .line 995
    invoke-direct {p0}, Lorg/jsoup/helper/HttpConnection$Response;->prepareByteData()V

    .line 996
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->byteData:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 997
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->byteData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public bodyStream()Ljava/io/BufferedInputStream;
    .locals 3

    .line 1008
    iget-boolean v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->executed:Z

    const-string v1, "Request must be executed (with .execute(), .get(), or .post() before getting response body"

    invoke-static {v0, v1}, Lorg/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    .line 1011
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->byteData:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 1012
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lorg/jsoup/helper/HttpConnection$Response;->byteData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const v2, 0x8000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    return-object v0

    .line 1015
    :cond_0
    iget-boolean v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->inputStreamRead:Z

    const-string v1, "Request has already been read"

    invoke-static {v0, v1}, Lorg/jsoup/helper/Validate;->isFalse(ZLjava/lang/String;)V

    .line 1016
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->bodyStream:Lorg/jsoup/internal/ControllableInputStream;

    invoke-static {v0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 1017
    iput-boolean v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->inputStreamRead:Z

    .line 1018
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->bodyStream:Lorg/jsoup/internal/ControllableInputStream;

    invoke-virtual {v0}, Lorg/jsoup/internal/ControllableInputStream;->inputStream()Ljava/io/BufferedInputStream;

    move-result-object v0

    return-object v0
.end method

.method public bufferUp()Lorg/jsoup/Connection$Response;
    .locals 0

    .line 1002
    invoke-direct {p0}, Lorg/jsoup/helper/HttpConnection$Response;->prepareByteData()V

    return-object p0
.end method

.method public charset()Ljava/lang/String;
    .locals 1

    .line 937
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->charset:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic charset(Ljava/lang/String;)Lorg/jsoup/Connection$Response;
    .locals 0

    .line 785
    invoke-virtual {p0, p1}, Lorg/jsoup/helper/HttpConnection$Response;->charset(Ljava/lang/String;)Lorg/jsoup/helper/HttpConnection$Response;

    move-result-object p1

    return-object p1
.end method

.method public charset(Ljava/lang/String;)Lorg/jsoup/helper/HttpConnection$Response;
    .locals 0

    .line 942
    iput-object p1, p0, Lorg/jsoup/helper/HttpConnection$Response;->charset:Ljava/lang/String;

    return-object p0
.end method

.method public contentType()Ljava/lang/String;
    .locals 1

    .line 948
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic cookie(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 785
    invoke-super {p0, p1}, Lorg/jsoup/helper/HttpConnection$Base;->cookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic cookie(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;
    .locals 0

    .line 785
    invoke-super {p0, p1, p2}, Lorg/jsoup/helper/HttpConnection$Base;->cookie(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic cookies()Ljava/util/Map;
    .locals 1

    .line 785
    invoke-super {p0}, Lorg/jsoup/helper/HttpConnection$Base;->cookies()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hasCookie(Ljava/lang/String;)Z
    .locals 0

    .line 785
    invoke-super {p0, p1}, Lorg/jsoup/helper/HttpConnection$Base;->hasCookie(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic hasHeader(Ljava/lang/String;)Z
    .locals 0

    .line 785
    invoke-super {p0, p1}, Lorg/jsoup/helper/HttpConnection$Base;->hasHeader(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic hasHeaderWithValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 785
    invoke-super {p0, p1, p2}, Lorg/jsoup/helper/HttpConnection$Base;->hasHeaderWithValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic header(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 785
    invoke-super {p0, p1}, Lorg/jsoup/helper/HttpConnection$Base;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic header(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;
    .locals 0

    .line 785
    invoke-super {p0, p1, p2}, Lorg/jsoup/helper/HttpConnection$Base;->header(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic headers(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 785
    invoke-super {p0, p1}, Lorg/jsoup/helper/HttpConnection$Base;->headers(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic headers()Ljava/util/Map;
    .locals 1

    .line 785
    invoke-super {p0}, Lorg/jsoup/helper/HttpConnection$Base;->headers()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic method(Lorg/jsoup/Connection$Method;)Lorg/jsoup/Connection$Base;
    .locals 0

    .line 785
    invoke-super {p0, p1}, Lorg/jsoup/helper/HttpConnection$Base;->method(Lorg/jsoup/Connection$Method;)Lorg/jsoup/Connection$Base;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic method()Lorg/jsoup/Connection$Method;
    .locals 1

    .line 785
    invoke-super {p0}, Lorg/jsoup/helper/HttpConnection$Base;->method()Lorg/jsoup/Connection$Method;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic multiHeaders()Ljava/util/Map;
    .locals 1

    .line 785
    invoke-super {p0}, Lorg/jsoup/helper/HttpConnection$Base;->multiHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public parse()Lorg/jsoup/nodes/Document;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 952
    iget-boolean v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->executed:Z

    const-string v1, "Request must be executed (with .execute(), .get(), or .post() before parsing response"

    invoke-static {v0, v1}, Lorg/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    .line 953
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->bodyStream:Lorg/jsoup/internal/ControllableInputStream;

    .line 954
    iget-object v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->byteData:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_0

    .line 955
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->byteData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v1, 0x0

    .line 956
    iput-boolean v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->inputStreamRead:Z

    .line 958
    :cond_0
    iget-boolean v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->inputStreamRead:Z

    const-string v2, "Input stream already read and parsed, cannot re-read."

    invoke-static {v1, v2}, Lorg/jsoup/helper/Validate;->isFalse(ZLjava/lang/String;)V

    .line 959
    iget-object v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->charset:Ljava/lang/String;

    iget-object v2, p0, Lorg/jsoup/helper/HttpConnection$Response;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/jsoup/helper/HttpConnection$Response;->req:Lorg/jsoup/helper/HttpConnection$Request;

    invoke-virtual {v3}, Lorg/jsoup/helper/HttpConnection$Request;->parser()Lorg/jsoup/parser/Parser;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lorg/jsoup/helper/DataUtil;->parseInputStream(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    .line 960
    new-instance v1, Lorg/jsoup/helper/HttpConnection;

    iget-object v2, p0, Lorg/jsoup/helper/HttpConnection$Response;->req:Lorg/jsoup/helper/HttpConnection$Request;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Lorg/jsoup/helper/HttpConnection;-><init>(Lorg/jsoup/helper/HttpConnection$Request;Lorg/jsoup/helper/HttpConnection$Response;Lorg/jsoup/helper/HttpConnection$1;)V

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Document;->connection(Lorg/jsoup/Connection;)Lorg/jsoup/nodes/Document;

    .line 961
    invoke-virtual {v0}, Lorg/jsoup/nodes/Document;->outputSettings()Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/nodes/Document$OutputSettings;->charset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->charset:Ljava/lang/String;

    const/4 v1, 0x1

    .line 962
    iput-boolean v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->inputStreamRead:Z

    .line 963
    invoke-direct {p0}, Lorg/jsoup/helper/HttpConnection$Response;->safeClose()V

    return-object v0
.end method

.method processResponseHeaders(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1124
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1125
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_1

    goto :goto_0

    .line 1129
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1130
    const-string v2, "Set-Cookie"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1131
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_3

    goto :goto_1

    .line 1134
    :cond_3
    new-instance v4, Lorg/jsoup/parser/TokenQueue;

    invoke-direct {v4, v3}, Lorg/jsoup/parser/TokenQueue;-><init>(Ljava/lang/String;)V

    .line 1135
    const-string v3, "="

    invoke-virtual {v4, v3}, Lorg/jsoup/parser/TokenQueue;->chompTo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1136
    const-string v5, ";"

    invoke-virtual {v4, v5}, Lorg/jsoup/parser/TokenQueue;->consumeTo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 1139
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    iget-object v5, p0, Lorg/jsoup/helper/HttpConnection$Response;->cookies:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1140
    invoke-virtual {p0, v3, v4}, Lorg/jsoup/helper/HttpConnection$Response;->cookie(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    goto :goto_1

    .line 1143
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1144
    invoke-static {v2}, Lorg/jsoup/helper/HttpConnection$Response;->fixHeaderEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/jsoup/helper/HttpConnection$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    goto :goto_2

    :cond_5
    return-void
.end method

.method public bridge synthetic removeCookie(Ljava/lang/String;)Lorg/jsoup/Connection$Base;
    .locals 0

    .line 785
    invoke-super {p0, p1}, Lorg/jsoup/helper/HttpConnection$Base;->removeCookie(Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeHeader(Ljava/lang/String;)Lorg/jsoup/Connection$Base;
    .locals 0

    .line 785
    invoke-super {p0, p1}, Lorg/jsoup/helper/HttpConnection$Base;->removeHeader(Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    move-result-object p1

    return-object p1
.end method

.method public statusCode()I
    .locals 1

    .line 927
    iget v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->statusCode:I

    return v0
.end method

.method public statusMessage()Ljava/lang/String;
    .locals 1

    .line 932
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->statusMessage:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic url()Ljava/net/URL;
    .locals 1

    .line 785
    invoke-super {p0}, Lorg/jsoup/helper/HttpConnection$Base;->url()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic url(Ljava/net/URL;)Lorg/jsoup/Connection$Base;
    .locals 0

    .line 785
    invoke-super {p0, p1}, Lorg/jsoup/helper/HttpConnection$Base;->url(Ljava/net/URL;)Lorg/jsoup/Connection$Base;

    move-result-object p1

    return-object p1
.end method
