.class public final synthetic Lcom/xiaozhi/android/audio/LocalAudioProxyServer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaozhi/android/audio/LocalAudioProxyServer;

.field public final synthetic f$1:Ljava/net/Socket;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaozhi/android/audio/LocalAudioProxyServer;Ljava/net/Socket;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaozhi/android/audio/LocalAudioProxyServer$$ExternalSyntheticLambda1;->f$0:Lcom/xiaozhi/android/audio/LocalAudioProxyServer;

    iput-object p2, p0, Lcom/xiaozhi/android/audio/LocalAudioProxyServer$$ExternalSyntheticLambda1;->f$1:Ljava/net/Socket;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/xiaozhi/android/audio/LocalAudioProxyServer$$ExternalSyntheticLambda1;->f$0:Lcom/xiaozhi/android/audio/LocalAudioProxyServer;

    iget-object v1, p0, Lcom/xiaozhi/android/audio/LocalAudioProxyServer$$ExternalSyntheticLambda1;->f$1:Ljava/net/Socket;

    invoke-static {v0, v1}, Lcom/xiaozhi/android/audio/LocalAudioProxyServer;->$r8$lambda$CtLnjxpLV9tKmsRfkH8fjkv0hYo(Lcom/xiaozhi/android/audio/LocalAudioProxyServer;Ljava/net/Socket;)V

    return-void
.end method
