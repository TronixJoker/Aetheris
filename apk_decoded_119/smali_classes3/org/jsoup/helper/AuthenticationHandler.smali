.class Lorg/jsoup/helper/AuthenticationHandler;
.super Ljava/net/Authenticator;
.source "AuthenticationHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/helper/AuthenticationHandler$AuthShim;,
        Lorg/jsoup/helper/AuthenticationHandler$GlobalHandler;
    }
.end annotation


# static fields
.field static final MaxAttempts:I = 0x5

.field static handler:Lorg/jsoup/helper/AuthenticationHandler$AuthShim;


# instance fields
.field attemptCount:I

.field auth:Lorg/jsoup/helper/RequestAuthenticator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 22
    :try_start_0
    const-string v0, "org.jsoup.helper.RequestAuthHandler"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    .line 23
    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 24
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/helper/AuthenticationHandler$AuthShim;

    sput-object v0, Lorg/jsoup/helper/AuthenticationHandler;->handler:Lorg/jsoup/helper/AuthenticationHandler$AuthShim;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 28
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 26
    :catch_1
    new-instance v0, Lorg/jsoup/helper/AuthenticationHandler$GlobalHandler;

    invoke-direct {v0}, Lorg/jsoup/helper/AuthenticationHandler$GlobalHandler;-><init>()V

    sput-object v0, Lorg/jsoup/helper/AuthenticationHandler;->handler:Lorg/jsoup/helper/AuthenticationHandler$AuthShim;

    :goto_0
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/net/Authenticator;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lorg/jsoup/helper/AuthenticationHandler;->attemptCount:I

    return-void
.end method

.method constructor <init>(Lorg/jsoup/helper/RequestAuthenticator;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/net/Authenticator;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lorg/jsoup/helper/AuthenticationHandler;->attemptCount:I

    .line 38
    iput-object p1, p0, Lorg/jsoup/helper/AuthenticationHandler;->auth:Lorg/jsoup/helper/RequestAuthenticator;

    return-void
.end method


# virtual methods
.method public final getPasswordAuthentication()Ljava/net/PasswordAuthentication;
    .locals 5

    .line 46
    sget-object v0, Lorg/jsoup/helper/AuthenticationHandler;->handler:Lorg/jsoup/helper/AuthenticationHandler$AuthShim;

    invoke-interface {v0, p0}, Lorg/jsoup/helper/AuthenticationHandler$AuthShim;->get(Lorg/jsoup/helper/AuthenticationHandler;)Lorg/jsoup/helper/AuthenticationHandler;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 48
    :cond_0
    iget v2, v0, Lorg/jsoup/helper/AuthenticationHandler;->attemptCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lorg/jsoup/helper/AuthenticationHandler;->attemptCount:I

    const/4 v3, 0x5

    if-le v2, v3, :cond_1

    return-object v1

    .line 54
    :cond_1
    iget-object v2, v0, Lorg/jsoup/helper/AuthenticationHandler;->auth:Lorg/jsoup/helper/RequestAuthenticator;

    if-nez v2, :cond_2

    return-object v1

    .line 57
    :cond_2
    new-instance v1, Lorg/jsoup/helper/RequestAuthenticator$Context;

    .line 58
    invoke-virtual {p0}, Lorg/jsoup/helper/AuthenticationHandler;->getRequestingURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jsoup/helper/AuthenticationHandler;->getRequestorType()Ljava/net/Authenticator$RequestorType;

    move-result-object v3

    invoke-virtual {p0}, Lorg/jsoup/helper/AuthenticationHandler;->getRequestingPrompt()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/jsoup/helper/RequestAuthenticator$Context;-><init>(Ljava/net/URL;Ljava/net/Authenticator$RequestorType;Ljava/lang/String;)V

    .line 59
    iget-object v0, v0, Lorg/jsoup/helper/AuthenticationHandler;->auth:Lorg/jsoup/helper/RequestAuthenticator;

    invoke-interface {v0, v1}, Lorg/jsoup/helper/RequestAuthenticator;->authenticate(Lorg/jsoup/helper/RequestAuthenticator$Context;)Ljava/net/PasswordAuthentication;

    move-result-object v0

    return-object v0
.end method
