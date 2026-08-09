.class final Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1$deferreds$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "UpdateManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lcom/xiaozhi/android/update/UpdateManager$UpdateInfo;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "Lcom/xiaozhi/android/update/UpdateManager$UpdateInfo;",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.xiaozhi.android.update.UpdateManager$checkForUpdates$1$deferreds$1$1"
    f = "UpdateManager.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $source:Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1$UpdateSource;

.field label:I

.field final synthetic this$0:Lcom/xiaozhi/android/update/UpdateManager;


# direct methods
.method constructor <init>(Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1$UpdateSource;Lcom/xiaozhi/android/update/UpdateManager;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1$UpdateSource;",
            "Lcom/xiaozhi/android/update/UpdateManager;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1$deferreds$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1$deferreds$1$1;->$source:Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1$UpdateSource;

    iput-object p2, p0, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1$deferreds$1$1;->this$0:Lcom/xiaozhi/android/update/UpdateManager;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1$deferreds$1$1;

    iget-object v0, p0, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1$deferreds$1$1;->$source:Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1$UpdateSource;

    iget-object v1, p0, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1$deferreds$1$1;->this$0:Lcom/xiaozhi/android/update/UpdateManager;

    invoke-direct {p1, v0, v1, p2}, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1$deferreds$1$1;-><init>(Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1$UpdateSource;Lcom/xiaozhi/android/update/UpdateManager;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1$deferreds$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/xiaozhi/android/update/UpdateManager$UpdateInfo;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1$deferreds$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1$deferreds$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1$deferreds$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v1, p0

    const-string v2, "UpdateManager"

    const-string v3, "Got versionCode="

    const-string v4, "JSON parse failed: "

    const-string v0, "Update check HTTP "

    const-string v5, "Checking update from: "

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 139
    iget v6, v1, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1$deferreds$1$1;->label:I

    if-nez v6, :cond_7

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const/4 v6, 0x0

    .line 141
    :try_start_0
    iget-object v7, v1, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1$deferreds$1$1;->$source:Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1$UpdateSource;

    invoke-virtual {v7}, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1$UpdateSource;->isReliable()Z

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_0

    .line 143
    iget-object v7, v1, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1$deferreds$1$1;->$source:Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1$UpdateSource;

    invoke-virtual {v7}, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1$UpdateSource;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    new-instance v11, Lkotlin/ranges/IntRange;

    const/16 v12, 0x3e7

    invoke-direct {v11, v8, v12}, Lkotlin/ranges/IntRange;-><init>(II)V

    sget-object v12, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    check-cast v12, Lkotlin/random/Random;

    invoke-static {v11, v12}, Lkotlin/ranges/RangesKt;->random(Lkotlin/ranges/IntRange;Lkotlin/random/Random;)I

    move-result v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, "?t="

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "_"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 145
    :cond_0
    iget-object v7, v1, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1$deferreds$1$1;->$source:Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1$UpdateSource;

    invoke-virtual {v7}, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1$UpdateSource;->getUrl()Ljava/lang/String;

    move-result-object v7

    .line 147
    :goto_0
    iget-object v9, v1, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1$deferreds$1$1;->$source:Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1$UpdateSource;

    invoke-virtual {v9}, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1$UpdateSource;->isReliable()Z

    move-result v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " (reliable="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, ")"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance v5, Lokhttp3/Request$Builder;

    invoke-direct {v5}, Lokhttp3/Request$Builder;-><init>()V

    .line 149
    invoke-virtual {v5, v7}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v5

    .line 150
    const-string v7, "Cache-Control"

    const-string v9, "no-cache, no-store, must-revalidate"

    invoke-virtual {v5, v7, v9}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v5

    .line 151
    const-string v7, "Pragma"

    const-string v9, "no-cache"

    invoke-virtual {v5, v7, v9}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v5

    .line 152
    const-string v7, "Expires"

    const-string v9, "0"

    invoke-virtual {v5, v7, v9}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v5

    .line 153
    invoke-virtual {v5}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v5

    .line 154
    iget-object v7, v1, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1$deferreds$1$1;->this$0:Lcom/xiaozhi/android/update/UpdateManager;

    invoke-static {v7}, Lcom/xiaozhi/android/update/UpdateManager;->access$getCheckClient$p(Lcom/xiaozhi/android/update/UpdateManager;)Lokhttp3/OkHttpClient;

    move-result-object v7

    invoke-virtual {v7, v5}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v5

    invoke-interface {v5}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v5

    .line 155
    invoke-virtual {v5}, Lokhttp3/Response;->code()I

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/16 v9, 0xc8

    const-string v10, " from "

    if-eq v7, v9, :cond_1

    .line 156
    :try_start_1
    invoke-virtual {v5}, Lokhttp3/Response;->code()I

    move-result v3

    iget-object v4, v1, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1$deferreds$1$1;->$source:Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1$UpdateSource;

    invoke-virtual {v4}, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1$UpdateSource;->getUrl()Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual {v5}, Lokhttp3/Response;->close()V

    return-object v6

    .line 160
    :cond_1
    invoke-virtual {v5}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const-string v5, ""

    if-eqz v0, :cond_2

    :try_start_2
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v0, :cond_3

    :cond_2
    move-object v0, v5

    .line 162
    :cond_3
    :try_start_3
    invoke-static {}, Lcom/xiaozhi/android/update/UpdateManager;->access$getJson$cp()Lkotlinx/serialization/json/Json;

    move-result-object v7

    sget-object v9, Lcom/xiaozhi/android/update/UpdateManager$UpdateInfo;->Companion:Lcom/xiaozhi/android/update/UpdateManager$UpdateInfo$Companion;

    invoke-virtual {v9}, Lcom/xiaozhi/android/update/UpdateManager$UpdateInfo$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v9

    check-cast v9, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {v7, v9, v0}, Lkotlinx/serialization/json/Json;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/xiaozhi/android/update/UpdateManager$UpdateInfo;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_3

    .line 165
    :catch_0
    :try_start_4
    invoke-static {}, Lcom/xiaozhi/android/update/UpdateManager;->access$getJson$cp()Lkotlinx/serialization/json/Json;

    move-result-object v7

    invoke-virtual {v7, v0}, Lkotlinx/serialization/json/Json;->parseToJsonElement(Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/serialization/json/JsonElementKt;->getJsonObject(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonObject;

    move-result-object v0

    .line 166
    const-string v7, "content"

    invoke-virtual {v0, v7}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/json/JsonElement;

    if-eqz v0, :cond_5

    invoke-static {v0}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    move-object v11, v0

    goto :goto_2

    :cond_5
    :goto_1
    move-object v11, v5

    .line 167
    :goto_2
    const-string v12, "\n"

    const-string v13, ""

    const/4 v15, 0x4

    const/16 v16, 0x0

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    const-string v5, "decode(...)"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/String;

    sget-object v7, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v0, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 168
    invoke-static {}, Lcom/xiaozhi/android/update/UpdateManager;->access$getJson$cp()Lkotlinx/serialization/json/Json;

    move-result-object v0

    sget-object v7, Lcom/xiaozhi/android/update/UpdateManager$UpdateInfo;->Companion:Lcom/xiaozhi/android/update/UpdateManager$UpdateInfo$Companion;

    invoke-virtual {v7}, Lcom/xiaozhi/android/update/UpdateManager$UpdateInfo$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v7

    check-cast v7, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {v0, v7, v5}, Lkotlinx/serialization/json/Json;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaozhi/android/update/UpdateManager$UpdateInfo;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object v7, v0

    goto :goto_3

    :catch_1
    move-exception v0

    .line 170
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v6

    :goto_3
    if-eqz v7, :cond_6

    .line 174
    invoke-virtual {v7}, Lcom/xiaozhi/android/update/UpdateManager$UpdateInfo;->getVersionCode()I

    move-result v0

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_4

    :cond_6
    move-object v0, v6

    :goto_4
    iget-object v4, v1, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1$deferreds$1$1;->$source:Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1$UpdateSource;

    invoke-virtual {v4}, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1$UpdateSource;->getUrl()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-object v6, v7

    goto :goto_5

    :catch_2
    move-exception v0

    .line 177
    iget-object v3, v1, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1$deferreds$1$1;->$source:Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1$UpdateSource;

    invoke-virtual {v3}, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1$UpdateSource;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Update check failed from "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    return-object v6

    .line 139
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
