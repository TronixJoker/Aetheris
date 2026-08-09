.class final Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "UpdateManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaozhi/android/update/UpdateManager;->checkForUpdates(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUpdateManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UpdateManager.kt\ncom/xiaozhi/android/update/UpdateManager$checkForUpdates$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,522:1\n1557#2:523\n1628#2,3:524\n1#3:527\n*S KotlinDebug\n*F\n+ 1 UpdateManager.kt\ncom/xiaozhi/android/update/UpdateManager$checkForUpdates$1\n*L\n138#1:523\n138#1:524,3\n*E\n"
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
    c = "com.xiaozhi.android.update.UpdateManager$checkForUpdates$1"
    f = "UpdateManager.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0
    }
    l = {
        0xc1
    }
    m = "invokeSuspend"
    n = {
        "sources",
        "bestReliableInfo",
        "bestCacheInfo",
        "outdatedCacheResults",
        "source",
        "currentVersionCode",
        "reliableSuccessCount",
        "cacheSuccessCount"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$5",
        "I$0",
        "I$1",
        "I$2"
    }
.end annotation


# instance fields
.field final synthetic $callback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/xiaozhi/android/update/UpdateManager$UpdateResult;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $updateUrl:Ljava/lang/String;

.field I$0:I

.field I$1:I

.field I$2:I

.field I$3:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/xiaozhi/android/update/UpdateManager;


# direct methods
.method constructor <init>(Lcom/xiaozhi/android/update/UpdateManager;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaozhi/android/update/UpdateManager;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/xiaozhi/android/update/UpdateManager$UpdateResult;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1;->this$0:Lcom/xiaozhi/android/update/UpdateManager;

    iput-object p2, p0, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1;->$updateUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1;->$callback:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
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

    new-instance v0, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1;

    iget-object v1, p0, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1;->this$0:Lcom/xiaozhi/android/update/UpdateManager;

    iget-object v2, p0, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1;->$updateUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1;->$callback:Lkotlin/jvm/functions/Function1;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1;-><init>(Lcom/xiaozhi/android/update/UpdateManager;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 117
    iget v2, v0, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1;->label:I

    const-string v3, "UpdateManager"

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v4, :cond_0

    iget v2, v0, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1;->I$3:I

    iget v5, v0, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1;->I$2:I

    iget v6, v0, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1;->I$1:I

    iget v7, v0, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1;->I$0:I

    iget-object v8, v0, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1;->L$5:Ljava/lang/Object;

    check-cast v8, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1$UpdateSource;

    iget-object v9, v0, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1;->L$4:Ljava/lang/Object;

    check-cast v9, Ljava/util/Iterator;

    iget-object v10, v0, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1;->L$3:Ljava/lang/Object;

    check-cast v10, Ljava/util/List;

    iget-object v11, v0, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1;->L$2:Ljava/lang/Object;

    check-cast v11, Lcom/xiaozhi/android/update/UpdateManager$UpdateInfo;

    iget-object v12, v0, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1;->L$1:Ljava/lang/Object;

    check-cast v12, Lcom/xiaozhi/android/update/UpdateManager$UpdateInfo;

    iget-object v13, v0, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1;->L$0:Ljava/lang/Object;

    check-cast v13, Ljava/util/List;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v14, p1

    move-object/from16 v18, v13

    move v13, v2

    move-object/from16 v2, v18

    goto/16 :goto_2

    :catch_0
    move-object/from16 v18, v13

    move v13, v2

    move-object/from16 v2, v18

    goto/16 :goto_4

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    .line 118
    iget-object v5, v0, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1;->this$0:Lcom/xiaozhi/android/update/UpdateManager;

    invoke-static {v5}, Lcom/xiaozhi/android/update/UpdateManager;->access$getCurrentVersionCode(Lcom/xiaozhi/android/update/UpdateManager;)I

    move-result v11

    .line 119
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Current versionCode="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v5

    check-cast v12, Ljava/util/List;

    .line 126
    new-instance v5, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1$UpdateSource;

    iget-object v6, v0, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1;->$updateUrl:Ljava/lang/String;

    invoke-direct {v5, v6, v4}, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1$UpdateSource;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    new-instance v5, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1$UpdateSource;

    invoke-static {}, Lcom/xiaozhi/android/update/UpdateManager;->access$getUPDATE_INFO_FALLBACK_URLS$cp()Ljava/util/List;

    move-result-object v6

    const/4 v13, 0x0

    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v5, v6, v4}, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1$UpdateSource;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    new-instance v5, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1$UpdateSource;

    invoke-static {}, Lcom/xiaozhi/android/update/UpdateManager;->access$getUPDATE_INFO_FALLBACK_URLS$cp()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v5, v6, v4}, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1$UpdateSource;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    new-instance v5, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1$UpdateSource;

    invoke-static {}, Lcom/xiaozhi/android/update/UpdateManager;->access$getUPDATE_INFO_FALLBACK_URLS$cp()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x2

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v5, v6, v4}, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1$UpdateSource;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    new-instance v5, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1$UpdateSource;

    invoke-static {}, Lcom/xiaozhi/android/update/UpdateManager;->access$getUPDATE_INFO_FALLBACK_URLS$cp()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v5, v6, v4}, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1$UpdateSource;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    new-instance v5, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1$UpdateSource;

    invoke-static {}, Lcom/xiaozhi/android/update/UpdateManager;->access$getUPDATE_INFO_FALLBACK_URLS$cp()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x4

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v5, v6, v13}, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1$UpdateSource;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    move-object v5, v12

    check-cast v5, Ljava/lang/Iterable;

    iget-object v14, v0, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1;->this$0:Lcom/xiaozhi/android/update/UpdateManager;

    .line 523
    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v5, v7}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    move-object v15, v6

    check-cast v15, Ljava/util/Collection;

    .line 524
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 525
    check-cast v5, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1$UpdateSource;

    .line 139
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v7

    check-cast v7, Lkotlin/coroutines/CoroutineContext;

    new-instance v8, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1$deferreds$1$1;

    invoke-direct {v8, v5, v14, v6}, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1$deferreds$1$1;-><init>(Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1$UpdateSource;Lcom/xiaozhi/android/update/UpdateManager;Lkotlin/coroutines/Continuation;)V

    check-cast v8, Lkotlin/jvm/functions/Function2;

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/16 v17, 0x0

    move-object v5, v2

    move-object v6, v7

    move-object/from16 v7, v17

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v5

    .line 525
    invoke-interface {v15, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 526
    :cond_2
    check-cast v15, Ljava/util/List;

    .line 188
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    .line 190
    check-cast v15, Ljava/lang/Iterable;

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v10, v2

    move-object v9, v5

    move v7, v11

    move-object v2, v12

    move v5, v13

    move-object v11, v6

    move-object v12, v11

    move v6, v5

    :cond_3
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    add-int/lit8 v8, v13, 0x1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lkotlinx/coroutines/Deferred;

    .line 191
    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1$UpdateSource;

    .line 193
    :try_start_1
    move-object v15, v0

    check-cast v15, Lkotlin/coroutines/Continuation;

    iput-object v2, v0, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1;->L$0:Ljava/lang/Object;

    iput-object v12, v0, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1;->L$1:Ljava/lang/Object;

    iput-object v11, v0, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1;->L$2:Ljava/lang/Object;

    iput-object v10, v0, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1;->L$3:Ljava/lang/Object;

    iput-object v9, v0, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1;->L$4:Ljava/lang/Object;

    iput-object v13, v0, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1;->L$5:Ljava/lang/Object;

    iput v7, v0, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1;->I$0:I

    iput v6, v0, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1;->I$1:I

    iput v5, v0, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1;->I$2:I

    iput v8, v0, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1;->I$3:I

    iput v4, v0, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1;->label:I

    invoke-interface {v14, v15}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v14
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v14, v1, :cond_4

    return-object v1

    :cond_4
    move-object/from16 v18, v13

    move v13, v8

    move-object/from16 v8, v18

    .line 117
    :goto_2
    :try_start_2
    check-cast v14, Lcom/xiaozhi/android/update/UpdateManager$UpdateInfo;

    if-eqz v14, :cond_3

    .line 196
    invoke-virtual {v8}, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1$UpdateSource;->isReliable()Z

    move-result v8

    if-eqz v8, :cond_7

    add-int/lit8 v6, v6, 0x1

    if-eqz v12, :cond_5

    .line 198
    invoke-virtual {v14}, Lcom/xiaozhi/android/update/UpdateManager$UpdateInfo;->getVersionCode()I

    move-result v8

    invoke-virtual {v12}, Lcom/xiaozhi/android/update/UpdateManager$UpdateInfo;->getVersionCode()I

    move-result v15

    if-le v8, v15, :cond_6

    :cond_5
    move-object v12, v14

    .line 199
    :cond_6
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1

    :cond_7
    add-int/lit8 v5, v5, 0x1

    .line 205
    invoke-virtual {v14}, Lcom/xiaozhi/android/update/UpdateManager$UpdateInfo;->getVersionCode()I

    move-result v8

    if-gt v8, v7, :cond_8

    .line 206
    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    invoke-virtual {v14}, Lcom/xiaozhi/android/update/UpdateManager$UpdateInfo;->getVersionCode()I

    move-result v8

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "CDN cached outdated version "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v14, " (<= current "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v14, "), ignoring"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_8
    if-eqz v11, :cond_9

    .line 208
    invoke-virtual {v14}, Lcom/xiaozhi/android/update/UpdateManager$UpdateInfo;->getVersionCode()I

    move-result v8

    invoke-virtual {v11}, Lcom/xiaozhi/android/update/UpdateManager$UpdateInfo;->getVersionCode()I

    move-result v15

    if-le v8, v15, :cond_a

    :cond_9
    move-object v11, v14

    .line 209
    :cond_a
    :goto_3
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    :catch_1
    move v13, v8

    .line 212
    :catch_2
    :goto_4
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_1

    .line 217
    :cond_b
    const-string v1, ")"

    if-eqz v12, :cond_c

    .line 218
    invoke-virtual {v12}, Lcom/xiaozhi/android/update/UpdateManager$UpdateInfo;->getVersionCode()I

    move-result v2

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Using reliable source result: versionCode="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v11, v12

    goto :goto_5

    :cond_c
    if-eqz v11, :cond_e

    .line 222
    invoke-virtual {v11}, Lcom/xiaozhi/android/update/UpdateManager$UpdateInfo;->getVersionCode()I

    move-result v2

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "No reliable source available, using CDN result: versionCode="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    add-int v2, v6, v5

    .line 248
    invoke-virtual {v11}, Lcom/xiaozhi/android/update/UpdateManager$UpdateInfo;->getVersionCode()I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Best versionCode="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " sources (current="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, ", reliable="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", cache="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-virtual {v11}, Lcom/xiaozhi/android/update/UpdateManager$UpdateInfo;->getVersionCode()I

    move-result v1

    if-le v1, v7, :cond_d

    .line 251
    iget-object v1, v0, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1;->this$0:Lcom/xiaozhi/android/update/UpdateManager;

    invoke-static {v1}, Lcom/xiaozhi/android/update/UpdateManager;->access$get_updateState$p(Lcom/xiaozhi/android/update/UpdateManager;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    sget-object v2, Lcom/xiaozhi/android/update/UpdateManager$UpdateState;->UPDATE_AVAILABLE:Lcom/xiaozhi/android/update/UpdateManager$UpdateState;

    invoke-interface {v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 252
    iget-object v1, v0, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1;->$callback:Lkotlin/jvm/functions/Function1;

    new-instance v2, Lcom/xiaozhi/android/update/UpdateManager$UpdateResult;

    .line 254
    invoke-virtual {v11}, Lcom/xiaozhi/android/update/UpdateManager$UpdateInfo;->getVersionName()Ljava/lang/String;

    move-result-object v3

    .line 255
    invoke-virtual {v11}, Lcom/xiaozhi/android/update/UpdateManager$UpdateInfo;->getChangelog()Ljava/lang/String;

    move-result-object v5

    .line 256
    invoke-virtual {v11}, Lcom/xiaozhi/android/update/UpdateManager$UpdateInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v6

    .line 252
    invoke-direct {v2, v4, v3, v5, v6}, Lcom/xiaozhi/android/update/UpdateManager$UpdateResult;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 259
    :cond_d
    iget-object v1, v0, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1;->this$0:Lcom/xiaozhi/android/update/UpdateManager;

    invoke-static {v1}, Lcom/xiaozhi/android/update/UpdateManager;->access$get_updateState$p(Lcom/xiaozhi/android/update/UpdateManager;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    sget-object v2, Lcom/xiaozhi/android/update/UpdateManager$UpdateState;->NO_UPDATE:Lcom/xiaozhi/android/update/UpdateManager$UpdateState;

    invoke-interface {v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 260
    iget-object v1, v0, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1;->$callback:Lkotlin/jvm/functions/Function1;

    new-instance v9, Lcom/xiaozhi/android/update/UpdateManager$UpdateResult;

    const/16 v7, 0xf

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/xiaozhi/android/update/UpdateManager$UpdateResult;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v1, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    :goto_6
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 225
    :cond_e
    move-object v5, v10

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    xor-int/2addr v4, v5

    if-eqz v4, :cond_12

    .line 228
    check-cast v10, Ljava/lang/Iterable;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaozhi/android/update/UpdateManager$UpdateInfo;

    invoke-virtual {v4}, Lcom/xiaozhi/android/update/UpdateManager$UpdateInfo;->getVersionCode()I

    move-result v4

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v4

    check-cast v4, Ljava/lang/Comparable;

    :cond_f
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaozhi/android/update/UpdateManager$UpdateInfo;

    invoke-virtual {v5}, Lcom/xiaozhi/android/update/UpdateManager$UpdateInfo;->getVersionCode()I

    move-result v5

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v5

    check-cast v5, Ljava/lang/Comparable;

    invoke-interface {v4, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v6

    if-gez v6, :cond_f

    move-object v4, v5

    goto :goto_7

    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "All sources returned outdated data (best outdated versionCode="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v1, v0, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1;->this$0:Lcom/xiaozhi/android/update/UpdateManager;

    invoke-static {v1}, Lcom/xiaozhi/android/update/UpdateManager;->access$get_updateState$p(Lcom/xiaozhi/android/update/UpdateManager;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    sget-object v2, Lcom/xiaozhi/android/update/UpdateManager$UpdateState;->ERROR:Lcom/xiaozhi/android/update/UpdateManager$UpdateState;

    invoke-interface {v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 230
    iget-object v1, v0, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1;->$callback:Lkotlin/jvm/functions/Function1;

    new-instance v9, Lcom/xiaozhi/android/update/UpdateManager$UpdateResult;

    const/16 v7, 0xf

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/xiaozhi/android/update/UpdateManager$UpdateResult;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v1, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 228
    :cond_11
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 234
    :cond_12
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Update check failed after trying "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " URLs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v1, v0, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1;->this$0:Lcom/xiaozhi/android/update/UpdateManager;

    invoke-static {v1}, Lcom/xiaozhi/android/update/UpdateManager;->access$get_updateState$p(Lcom/xiaozhi/android/update/UpdateManager;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    sget-object v2, Lcom/xiaozhi/android/update/UpdateManager$UpdateState;->ERROR:Lcom/xiaozhi/android/update/UpdateManager$UpdateState;

    invoke-interface {v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 236
    iget-object v1, v0, Lcom/xiaozhi/android/update/UpdateManager$checkForUpdates$1;->$callback:Lkotlin/jvm/functions/Function1;

    new-instance v9, Lcom/xiaozhi/android/update/UpdateManager$UpdateResult;

    const/16 v7, 0xf

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/xiaozhi/android/update/UpdateManager$UpdateResult;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v1, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method
