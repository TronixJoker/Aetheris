.class Lorg/jsoup/helper/AuthenticationHandler$GlobalHandler;
.super Ljava/lang/Object;
.source "AuthenticationHandler.java"

# interfaces
.implements Lorg/jsoup/helper/AuthenticationHandler$AuthShim;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/helper/AuthenticationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GlobalHandler"
.end annotation


# static fields
.field static authenticators:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lorg/jsoup/helper/AuthenticationHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/jsoup/helper/AuthenticationHandler$GlobalHandler;->authenticators:Ljava/lang/ThreadLocal;

    .line 76
    new-instance v0, Lorg/jsoup/helper/AuthenticationHandler;

    invoke-direct {v0}, Lorg/jsoup/helper/AuthenticationHandler;-><init>()V

    invoke-static {v0}, Ljava/net/Authenticator;->setDefault(Ljava/net/Authenticator;)V

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enable(Lorg/jsoup/helper/RequestAuthenticator;Ljava/net/HttpURLConnection;)V
    .locals 1

    .line 80
    sget-object p2, Lorg/jsoup/helper/AuthenticationHandler$GlobalHandler;->authenticators:Ljava/lang/ThreadLocal;

    new-instance v0, Lorg/jsoup/helper/AuthenticationHandler;

    invoke-direct {v0, p1}, Lorg/jsoup/helper/AuthenticationHandler;-><init>(Lorg/jsoup/helper/RequestAuthenticator;)V

    invoke-virtual {p2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public get(Lorg/jsoup/helper/AuthenticationHandler;)Lorg/jsoup/helper/AuthenticationHandler;
    .locals 0

    .line 88
    sget-object p1, Lorg/jsoup/helper/AuthenticationHandler$GlobalHandler;->authenticators:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jsoup/helper/AuthenticationHandler;

    return-object p1
.end method

.method public remove()V
    .locals 1

    .line 84
    sget-object v0, Lorg/jsoup/helper/AuthenticationHandler$GlobalHandler;->authenticators:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    return-void
.end method
