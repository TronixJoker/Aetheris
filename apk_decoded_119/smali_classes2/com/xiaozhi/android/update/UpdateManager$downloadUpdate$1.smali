.class final Lcom/xiaozhi/android/update/UpdateManager$downloadUpdate$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "UpdateManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaozhi/android/update/UpdateManager;->downloadUpdate(Ljava/lang/String;)V
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
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
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
    c = "com.xiaozhi.android.update.UpdateManager$downloadUpdate$1"
    f = "UpdateManager.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0x11a
    }
    m = "invokeSuspend"
    n = {
        "downloadUrls",
        "url"
    }
    s = {
        "L$0",
        "L$2"
    }
.end annotation


# instance fields
.field final synthetic $downloadUrl:Ljava/lang/String;

.field I$0:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/xiaozhi/android/update/UpdateManager;


# direct methods
.method constructor <init>(Lcom/xiaozhi/android/update/UpdateManager;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaozhi/android/update/UpdateManager;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/xiaozhi/android/update/UpdateManager$downloadUpdate$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaozhi/android/update/UpdateManager$downloadUpdate$1;->this$0:Lcom/xiaozhi/android/update/UpdateManager;

    iput-object p2, p0, Lcom/xiaozhi/android/update/UpdateManager$downloadUpdate$1;->$downloadUrl:Ljava/lang/String;

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

    new-instance p1, Lcom/xiaozhi/android/update/UpdateManager$downloadUpdate$1;

    iget-object v0, p0, Lcom/xiaozhi/android/update/UpdateManager$downloadUpdate$1;->this$0:Lcom/xiaozhi/android/update/UpdateManager;

    iget-object v1, p0, Lcom/xiaozhi/android/update/UpdateManager$downloadUpdate$1;->$downloadUrl:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Lcom/xiaozhi/android/update/UpdateManager$downloadUpdate$1;-><init>(Lcom/xiaozhi/android/update/UpdateManager;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/xiaozhi/android/update/UpdateManager$downloadUpdate$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/xiaozhi/android/update/UpdateManager$downloadUpdate$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/xiaozhi/android/update/UpdateManager$downloadUpdate$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/xiaozhi/android/update/UpdateManager$downloadUpdate$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 37

    move-object/from16 v1, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 269
    iget v0, v1, Lcom/xiaozhi/android/update/UpdateManager$downloadUpdate$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "UpdateManager"

    const/4 v6, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v6, :cond_0

    iget v7, v1, Lcom/xiaozhi/android/update/UpdateManager$downloadUpdate$1;->I$0:I

    iget-object v0, v1, Lcom/xiaozhi/android/update/UpdateManager$downloadUpdate$1;->L$2:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    iget-object v0, v1, Lcom/xiaozhi/android/update/UpdateManager$downloadUpdate$1;->L$1:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Ljava/util/Iterator;

    iget-object v0, v1, Lcom/xiaozhi/android/update/UpdateManager$downloadUpdate$1;->L$0:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Ljava/util/List;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, p1

    goto/16 :goto_3

    :catch_0
    move-exception v0

    move-object/from16 v17, v2

    move-object v3, v4

    :goto_0
    move-object v4, v1

    goto/16 :goto_10

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 271
    iget-object v0, v1, Lcom/xiaozhi/android/update/UpdateManager$downloadUpdate$1;->this$0:Lcom/xiaozhi/android/update/UpdateManager;

    iget-object v7, v1, Lcom/xiaozhi/android/update/UpdateManager$downloadUpdate$1;->$downloadUrl:Ljava/lang/String;

    invoke-static {v0, v7}, Lcom/xiaozhi/android/update/UpdateManager;->access$buildDownloadUrlCandidates(Lcom/xiaozhi/android/update/UpdateManager;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 274
    move-object v7, v0

    check-cast v7, Ljava/lang/Iterable;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v10, v0

    move-object v0, v4

    move-object v9, v7

    move v7, v3

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    add-int/lit8 v8, v7, 0x1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/lang/String;

    .line 276
    :try_start_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Download attempt "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, " from: "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    if-lez v7, :cond_2

    .line 278
    :try_start_2
    iget-object v0, v1, Lcom/xiaozhi/android/update/UpdateManager$downloadUpdate$1;->this$0:Lcom/xiaozhi/android/update/UpdateManager;

    invoke-static {v0}, Lcom/xiaozhi/android/update/UpdateManager;->access$get_downloadProgress$p(Lcom/xiaozhi/android/update/UpdateManager;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 279
    iget-object v0, v1, Lcom/xiaozhi/android/update/UpdateManager$downloadUpdate$1;->this$0:Lcom/xiaozhi/android/update/UpdateManager;

    invoke-static {v0}, Lcom/xiaozhi/android/update/UpdateManager;->access$get_downloadSize$p(Lcom/xiaozhi/android/update/UpdateManager;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    const-string v7, "0 MB"

    invoke-interface {v0, v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v17, v2

    move-object v3, v4

    move v7, v8

    move-object v8, v11

    goto :goto_0

    .line 281
    :cond_2
    :goto_2
    :try_start_3
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, v11}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 282
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v7

    check-cast v7, Lkotlin/coroutines/CoroutineContext;

    new-instance v12, Lcom/xiaozhi/android/update/UpdateManager$downloadUpdate$1$response$1;

    iget-object v13, v1, Lcom/xiaozhi/android/update/UpdateManager$downloadUpdate$1;->this$0:Lcom/xiaozhi/android/update/UpdateManager;

    invoke-direct {v12, v13, v0, v4}, Lcom/xiaozhi/android/update/UpdateManager$downloadUpdate$1$response$1;-><init>(Lcom/xiaozhi/android/update/UpdateManager;Lokhttp3/Request;Lkotlin/coroutines/Continuation;)V

    check-cast v12, Lkotlin/jvm/functions/Function2;

    move-object v0, v1

    check-cast v0, Lkotlin/coroutines/Continuation;

    iput-object v10, v1, Lcom/xiaozhi/android/update/UpdateManager$downloadUpdate$1;->L$0:Ljava/lang/Object;

    iput-object v9, v1, Lcom/xiaozhi/android/update/UpdateManager$downloadUpdate$1;->L$1:Ljava/lang/Object;

    iput-object v11, v1, Lcom/xiaozhi/android/update/UpdateManager$downloadUpdate$1;->L$2:Ljava/lang/Object;

    iput v8, v1, Lcom/xiaozhi/android/update/UpdateManager$downloadUpdate$1;->I$0:I

    iput v6, v1, Lcom/xiaozhi/android/update/UpdateManager$downloadUpdate$1;->label:I

    invoke-static {v7, v12, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    if-ne v0, v2, :cond_3

    return-object v2

    :cond_3
    move v7, v8

    move-object v8, v11

    .line 269
    :goto_3
    :try_start_4
    check-cast v0, Lokhttp3/Response;

    .line 285
    invoke-virtual {v0}, Lokhttp3/Response;->isSuccessful()Z

    move-result v11
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    if-nez v11, :cond_4

    .line 286
    :try_start_5
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Download HTTP "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " from "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    new-instance v11, Ljava/lang/Exception;

    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "HTTP "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v0}, Lokhttp3/Response;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_4

    .line 292
    :cond_4
    :try_start_6
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v11
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    if-nez v11, :cond_5

    .line 294
    :try_start_7
    new-instance v11, Ljava/lang/Exception;

    const-string v12, "Empty response body"

    invoke-direct {v11, v12}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 295
    invoke-virtual {v0}, Lokhttp3/Response;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :goto_4
    move-object v0, v11

    goto/16 :goto_1

    .line 299
    :cond_5
    :try_start_8
    invoke-virtual {v11}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v12

    .line 300
    new-instance v14, Ljava/io/File;

    iget-object v15, v1, Lcom/xiaozhi/android/update/UpdateManager$downloadUpdate$1;->this$0:Lcom/xiaozhi/android/update/UpdateManager;

    invoke-static {v15}, Lcom/xiaozhi/android/update/UpdateManager;->access$getContext$p(Lcom/xiaozhi/android/update/UpdateManager;)Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v15

    const-string v3, "update.apk"

    invoke-direct {v14, v15, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 302
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Download started, totalBytes="

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v15, ", url="

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-virtual {v11}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v3

    .line 305
    new-instance v11, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    const/4 v15, 0x0

    .line 306
    invoke-static {v14, v15, v6, v4}, Lokio/Okio;->sink$default(Ljava/io/File;ZILjava/lang/Object;)Lokio/Sink;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v16

    move-object/from16 v15, v16

    check-cast v15, Ljava/io/Closeable;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    :try_start_9
    iget-object v4, v1, Lcom/xiaozhi/android/update/UpdateManager$downloadUpdate$1;->this$0:Lcom/xiaozhi/android/update/UpdateManager;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    :try_start_a
    move-object v6, v15

    check-cast v6, Lokio/BufferedSink;

    .line 309
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    move-object/from16 v17, v2

    .line 310
    :try_start_b
    new-instance v2, Lokio/Buffer;

    invoke-direct {v2}, Lokio/Buffer;-><init>()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    const-wide/16 v18, 0x0

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    move-wide/from16 v20, v18

    move-wide/from16 v22, v20

    :goto_5
    const-wide/16 v9, 0x2000

    .line 312
    :try_start_c
    invoke-interface {v3, v2, v9, v10}, Lokio/BufferedSource;->read(Lokio/Buffer;J)J

    move-result-wide v9
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    const-wide/16 v26, -0x1

    cmp-long v26, v9, v26

    move-object/from16 v27, v3

    .line 313
    const-string v3, "format(...)"

    const-wide/high16 v28, 0x4130000000000000L    # 1048576.0

    move/from16 v30, v7

    const-string v7, "%.1f MB"

    if-eqz v26, :cond_a

    .line 314
    :try_start_d
    invoke-interface {v6, v2, v9, v10}, Lokio/BufferedSink;->write(Lokio/Buffer;J)V

    add-long v9, v20, v9

    .line 316
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v31, v9, v22

    const-wide/32 v33, 0x10000

    cmp-long v26, v31, v33

    if-gez v26, :cond_7

    cmp-long v26, v12, v18

    if-lez v26, :cond_6

    cmp-long v26, v9, v12

    if-nez v26, :cond_6

    goto :goto_6

    :cond_6
    move-wide/from16 v35, v22

    move-object/from16 v22, v2

    move-object v2, v14

    move-object/from16 v23, v15

    move-wide/from16 v14, v35

    goto :goto_8

    .line 322
    :cond_7
    :goto_6
    sget-object v22, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    move-object/from16 v22, v2

    long-to-double v1, v9

    div-double v1, v1, v28

    invoke-static {v1, v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxDouble(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v7, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 323
    invoke-static {v4}, Lcom/xiaozhi/android/update/UpdateManager;->access$get_downloadSize$p(Lcom/xiaozhi/android/update/UpdateManager;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    invoke-interface {v2, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    cmp-long v1, v12, v18

    if-lez v1, :cond_8

    move-object v2, v14

    move-object/from16 v23, v15

    const/16 v1, 0x64

    int-to-long v14, v1

    mul-long/2addr v14, v9

    .line 326
    :try_start_e
    div-long/2addr v14, v12

    long-to-int v1, v14

    .line 327
    invoke-static {v4}, Lcom/xiaozhi/android/update/UpdateManager;->access$get_downloadProgress$p(Lcom/xiaozhi/android/update/UpdateManager;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v14

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v14, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    goto :goto_7

    :cond_8
    move-object v2, v14

    move-object/from16 v23, v15

    .line 330
    invoke-static {v4}, Lcom/xiaozhi/android/update/UpdateManager;->access$get_downloadProgress$p(Lcom/xiaozhi/android/update/UpdateManager;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    const/4 v14, -0x1

    invoke-static {v14}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v1, v14}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :goto_7
    move-wide v14, v9

    .line 335
    :goto_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v31

    sub-long v31, v31, v20

    const-wide/16 v20, 0x7530

    cmp-long v1, v31, v20

    if-lez v1, :cond_9

    .line 336
    const-string v1, "Download stalled for 30000ms, switching source"

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 337
    iput-boolean v1, v11, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_a

    :cond_9
    move-object/from16 v1, p0

    move-wide/from16 v20, v9

    move-object/from16 v3, v27

    move/from16 v7, v30

    move-wide/from16 v35, v14

    move-object v14, v2

    move-object/from16 v2, v22

    move-object/from16 v15, v23

    move-wide/from16 v22, v35

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    goto :goto_9

    :catchall_1
    move-exception v0

    move-object/from16 v23, v15

    :goto_9
    move-object v2, v0

    move-object/from16 v1, v23

    const/4 v3, 0x0

    const/4 v6, 0x1

    move-object/from16 v4, p0

    goto/16 :goto_e

    :cond_a
    move-object v2, v14

    move-object/from16 v23, v15

    move-wide/from16 v9, v20

    .line 342
    :goto_a
    :try_start_f
    invoke-static {v4}, Lcom/xiaozhi/android/update/UpdateManager;->access$get_downloadSize$p(Lcom/xiaozhi/android/update/UpdateManager;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    sget-object v4, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    long-to-double v9, v9

    div-double v9, v9, v28

    invoke-static {v9, v10}, Lkotlin/coroutines/jvm/internal/Boxing;->boxDouble(D)Ljava/lang/Double;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    const/4 v6, 0x1

    :try_start_10
    invoke-static {v4, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 343
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    move-object/from16 v1, v23

    const/4 v3, 0x0

    .line 306
    :try_start_11
    invoke-static {v1, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 345
    iget-boolean v1, v11, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v1, :cond_b

    .line 346
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Download stalled"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 347
    invoke-virtual {v0}, Lokhttp3/Response;->close()V

    move-object v0, v1

    move-object v4, v3

    move-object/from16 v2, v17

    move-object/from16 v9, v24

    move-object/from16 v10, v25

    move/from16 v7, v30

    const/4 v3, 0x0

    move-object/from16 v1, p0

    goto/16 :goto_1

    .line 351
    :cond_b
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Download complete, file size="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_2

    move-object/from16 v4, p0

    .line 352
    :try_start_12
    iget-object v0, v4, Lcom/xiaozhi/android/update/UpdateManager$downloadUpdate$1;->this$0:Lcom/xiaozhi/android/update/UpdateManager;

    invoke-static {v0}, Lcom/xiaozhi/android/update/UpdateManager;->access$get_downloadProgress$p(Lcom/xiaozhi/android/update/UpdateManager;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    const/16 v1, 0x64

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 353
    iget-object v0, v4, Lcom/xiaozhi/android/update/UpdateManager$downloadUpdate$1;->this$0:Lcom/xiaozhi/android/update/UpdateManager;

    invoke-static {v0}, Lcom/xiaozhi/android/update/UpdateManager;->access$get_updateState$p(Lcom/xiaozhi/android/update/UpdateManager;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    sget-object v1, Lcom/xiaozhi/android/update/UpdateManager$UpdateState;->DOWNLOAD_COMPLETE:Lcom/xiaozhi/android/update/UpdateManager$UpdateState;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 354
    iget-object v0, v4, Lcom/xiaozhi/android/update/UpdateManager$downloadUpdate$1;->this$0:Lcom/xiaozhi/android/update/UpdateManager;

    invoke-static {v0, v8}, Lcom/xiaozhi/android/update/UpdateManager;->access$setLastDownloadedUrl$p(Lcom/xiaozhi/android/update/UpdateManager;Ljava/lang/String;)V

    .line 355
    iget-object v0, v4, Lcom/xiaozhi/android/update/UpdateManager$downloadUpdate$1;->this$0:Lcom/xiaozhi/android/update/UpdateManager;

    invoke-static {v0, v2}, Lcom/xiaozhi/android/update/UpdateManager;->access$installApk(Lcom/xiaozhi/android/update/UpdateManager;Ljava/io/File;)V

    .line 356
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_3

    return-object v0

    :catch_2
    move-exception v0

    move-object/from16 v4, p0

    goto :goto_f

    :catchall_2
    move-exception v0

    const/4 v3, 0x0

    move-object/from16 v4, p0

    move-object/from16 v1, v23

    goto :goto_d

    :catchall_3
    move-exception v0

    move-object/from16 v1, v23

    const/4 v3, 0x0

    const/4 v6, 0x1

    move-object/from16 v4, p0

    goto :goto_d

    :catchall_4
    move-exception v0

    move-object v4, v1

    move/from16 v30, v7

    goto :goto_c

    :catchall_5
    move-exception v0

    move-object v4, v1

    goto :goto_b

    :catchall_6
    move-exception v0

    move-object v4, v1

    move-object/from16 v17, v2

    :goto_b
    move/from16 v30, v7

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    :goto_c
    move-object v1, v15

    const/4 v3, 0x0

    const/4 v6, 0x1

    :goto_d
    move-object v2, v0

    .line 306
    :goto_e
    :try_start_13
    throw v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    :catchall_7
    move-exception v0

    move-object v7, v0

    :try_start_14
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v7
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_3

    :catch_3
    move-exception v0

    :goto_f
    move-object/from16 v9, v24

    move-object/from16 v10, v25

    move/from16 v7, v30

    goto :goto_10

    :catch_4
    move-exception v0

    move-object v4, v1

    move-object/from16 v17, v2

    move/from16 v30, v7

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    const/4 v3, 0x0

    goto :goto_10

    :catch_5
    move-exception v0

    move-object/from16 v17, v2

    move-object v3, v4

    move/from16 v30, v7

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    goto/16 :goto_0

    :catch_6
    move-exception v0

    move-object/from16 v17, v2

    move-object v3, v4

    move-object v4, v1

    move v7, v8

    move-object v8, v11

    .line 358
    :goto_10
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v11, "Download failed from "

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, ": "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v4

    move-object/from16 v2, v17

    move-object v4, v3

    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_c
    move-object v3, v4

    move-object v4, v1

    .line 362
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_d
    move-object v0, v3

    :goto_11
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Download failed after trying "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " URLs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v0, v4, Lcom/xiaozhi/android/update/UpdateManager$downloadUpdate$1;->this$0:Lcom/xiaozhi/android/update/UpdateManager;

    invoke-static {v0}, Lcom/xiaozhi/android/update/UpdateManager;->access$get_updateState$p(Lcom/xiaozhi/android/update/UpdateManager;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    sget-object v1, Lcom/xiaozhi/android/update/UpdateManager$UpdateState;->ERROR:Lcom/xiaozhi/android/update/UpdateManager$UpdateState;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 364
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
