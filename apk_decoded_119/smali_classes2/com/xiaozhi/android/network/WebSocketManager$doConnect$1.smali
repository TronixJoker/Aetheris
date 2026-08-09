.class public final Lcom/xiaozhi/android/network/WebSocketManager$doConnect$1;
.super Lokhttp3/WebSocketListener;
.source "WebSocketManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaozhi/android/network/WebSocketManager;->doConnect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000;\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0003\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nH\u0016J\u0018\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J \u0010\r\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\nH\u0016J \u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\nH\u0016J\"\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016\u00a8\u0006\u0015"
    }
    d2 = {
        "com/xiaozhi/android/network/WebSocketManager$doConnect$1",
        "Lokhttp3/WebSocketListener;",
        "onOpen",
        "",
        "ws",
        "Lokhttp3/WebSocket;",
        "response",
        "Lokhttp3/Response;",
        "onMessage",
        "text",
        "",
        "bytes",
        "Lokio/ByteString;",
        "onClosing",
        "code",
        "",
        "reason",
        "onClosed",
        "onFailure",
        "t",
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


# instance fields
.field final synthetic this$0:Lcom/xiaozhi/android/network/WebSocketManager;


# direct methods
.method constructor <init>(Lcom/xiaozhi/android/network/WebSocketManager;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaozhi/android/network/WebSocketManager$doConnect$1;->this$0:Lcom/xiaozhi/android/network/WebSocketManager;

    .line 91
    invoke-direct {p0}, Lokhttp3/WebSocketListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Lokhttp3/WebSocket;ILjava/lang/String;)V
    .locals 2

    const-string v0, "ws"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "reason"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    iget-object p1, p0, Lcom/xiaozhi/android/network/WebSocketManager$doConnect$1;->this$0:Lcom/xiaozhi/android/network/WebSocketManager;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Connection closed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaozhi/android/network/WebSocketManager;->access$handleDisconnect(Lcom/xiaozhi/android/network/WebSocketManager;Ljava/lang/String;)V

    return-void
.end method

.method public onClosing(Lokhttp3/WebSocket;ILjava/lang/String;)V
    .locals 2

    const-string v0, "ws"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reason"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x3e8

    const/4 v1, 0x0

    .line 115
    invoke-interface {p1, v0, v1}, Lokhttp3/WebSocket;->close(ILjava/lang/String;)Z

    .line 116
    iget-object p1, p0, Lcom/xiaozhi/android/network/WebSocketManager$doConnect$1;->this$0:Lcom/xiaozhi/android/network/WebSocketManager;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Connection closing: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaozhi/android/network/WebSocketManager;->access$handleDisconnect(Lcom/xiaozhi/android/network/WebSocketManager;Ljava/lang/String;)V

    return-void
.end method

.method public onFailure(Lokhttp3/WebSocket;Ljava/lang/Throwable;Lokhttp3/Response;)V
    .locals 1

    const-string p3, "ws"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "t"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    iget-object p1, p0, Lcom/xiaozhi/android/network/WebSocketManager$doConnect$1;->this$0:Lcom/xiaozhi/android/network/WebSocketManager;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Connection failed: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaozhi/android/network/WebSocketManager;->access$handleDisconnect(Lcom/xiaozhi/android/network/WebSocketManager;Ljava/lang/String;)V

    return-void
.end method

.method public onMessage(Lokhttp3/WebSocket;Ljava/lang/String;)V
    .locals 6

    const-string v0, "ws"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "text"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    iget-object p1, p0, Lcom/xiaozhi/android/network/WebSocketManager$doConnect$1;->this$0:Lcom/xiaozhi/android/network/WebSocketManager;

    invoke-static {p1}, Lcom/xiaozhi/android/network/WebSocketManager;->access$getScope$p(Lcom/xiaozhi/android/network/WebSocketManager;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    new-instance p1, Lcom/xiaozhi/android/network/WebSocketManager$doConnect$1$onMessage$1;

    iget-object v1, p0, Lcom/xiaozhi/android/network/WebSocketManager$doConnect$1;->this$0:Lcom/xiaozhi/android/network/WebSocketManager;

    const/4 v2, 0x0

    invoke-direct {p1, v1, p2, v2}, Lcom/xiaozhi/android/network/WebSocketManager$doConnect$1$onMessage$1;-><init>(Lcom/xiaozhi/android/network/WebSocketManager;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public onMessage(Lokhttp3/WebSocket;Lokio/ByteString;)V
    .locals 6

    const-string v0, "ws"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "bytes"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iget-object p1, p0, Lcom/xiaozhi/android/network/WebSocketManager$doConnect$1;->this$0:Lcom/xiaozhi/android/network/WebSocketManager;

    invoke-static {p1}, Lcom/xiaozhi/android/network/WebSocketManager;->access$getScope$p(Lcom/xiaozhi/android/network/WebSocketManager;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    new-instance p1, Lcom/xiaozhi/android/network/WebSocketManager$doConnect$1$onMessage$2;

    iget-object v1, p0, Lcom/xiaozhi/android/network/WebSocketManager$doConnect$1;->this$0:Lcom/xiaozhi/android/network/WebSocketManager;

    const/4 v2, 0x0

    invoke-direct {p1, v1, p2, v2}, Lcom/xiaozhi/android/network/WebSocketManager$doConnect$1$onMessage$2;-><init>(Lcom/xiaozhi/android/network/WebSocketManager;Lokio/ByteString;Lkotlin/coroutines/Continuation;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public onOpen(Lokhttp3/WebSocket;Lokhttp3/Response;)V
    .locals 9

    const-string v0, "ws"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    const-string p2, "WebSocketManager"

    const-string v0, "WebSocket connected"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object p2, p0, Lcom/xiaozhi/android/network/WebSocketManager$doConnect$1;->this$0:Lcom/xiaozhi/android/network/WebSocketManager;

    invoke-static {p2}, Lcom/xiaozhi/android/network/WebSocketManager;->access$get_connectionState$p(Lcom/xiaozhi/android/network/WebSocketManager;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p2

    sget-object v0, Lcom/xiaozhi/android/network/WebSocketManager$ConnectionState;->CONNECTED:Lcom/xiaozhi/android/network/WebSocketManager$ConnectionState;

    invoke-interface {p2, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 95
    iget-object p2, p0, Lcom/xiaozhi/android/network/WebSocketManager$doConnect$1;->this$0:Lcom/xiaozhi/android/network/WebSocketManager;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/xiaozhi/android/network/WebSocketManager;->access$setReconnectAttempts$p(Lcom/xiaozhi/android/network/WebSocketManager;I)V

    .line 98
    new-instance p2, Lcom/xiaozhi/android/model/HelloMessage;

    const/16 v7, 0x1f

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p2

    invoke-direct/range {v1 .. v8}, Lcom/xiaozhi/android/model/HelloMessage;-><init>(Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;Lcom/xiaozhi/android/model/AudioParams;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 99
    invoke-static {}, Lcom/xiaozhi/android/network/WebSocketManager;->access$getJson$cp()Lkotlinx/serialization/json/Json;

    move-result-object v0

    sget-object v1, Lcom/xiaozhi/android/model/HelloMessage;->Companion:Lcom/xiaozhi/android/model/HelloMessage$Companion;

    invoke-virtual {v1}, Lcom/xiaozhi/android/model/HelloMessage$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    invoke-virtual {v0, v1, p2}, Lkotlinx/serialization/json/Json;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lokhttp3/WebSocket;->send(Ljava/lang/String;)Z

    return-void
.end method
