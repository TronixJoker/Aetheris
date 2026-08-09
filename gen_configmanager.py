#!/usr/bin/env python3
# 生成 ConfigManager 的 14 个 API 配置：getter/setter 内部类文件 + ConfigManager.smali 插入文本
import os

OUT_DIR = "/workspace/apk_decoded/smali_classes2/com/xiaozhi/android/config"

# (KEY字段名, key字符串, getter方法名, setter方法名, 默认URL, DebugMetadata行号hex)
APIS = [
    ("KEY_WEATHER_API_URL", "weather_api_url", "getWeatherApiUrl", "setWeatherApiUrl",
     "https://wttr.in/", "0x80"),
    ("KEY_WEATHER_CN_SEARCH_URL", "weather_cn_search_url", "getWeatherCnSearchUrl", "setWeatherCnSearchUrl",
     "https://so.weather.com.cn/wap/search.shtml?q=", "0x81"),
    ("KEY_NEWS_BAIDU_URL", "news_baidu_url", "getNewsBaiduUrl", "setNewsBaiduUrl",
     "https://news.baidu.com/ns?word=", "0x82"),
    ("KEY_STOCK_SINA_URL", "stock_sina_url", "getStockSinaUrl", "setStockSinaUrl",
     "https://hq.sinajs.cn/list=", "0x83"),
    ("KEY_STOCK_SUGGEST_URL", "stock_suggest_url", "getStockSuggestUrl", "setStockSuggestUrl",
     "https://suggest3.sinajs.cn/suggest/type=&key=", "0x84"),
    ("KEY_MUSIC_NETEASE_SEARCH_URL", "music_netease_search_url", "getMusicNeteaseSearchUrl", "setMusicNeteaseSearchUrl",
     "https://music.163.com/api/search/get?s=", "0x85"),
    ("KEY_MUSIC_NETEASE_PLAY_URL", "music_netease_play_url", "getMusicNeteasePlayUrl", "setMusicNeteasePlayUrl",
     "https://music.163.com/song/media/outer/url?id=", "0x86"),
    ("KEY_BILIBILI_SEARCH_URL", "bilibili_search_url", "getBilibiliSearchUrl", "setBilibiliSearchUrl",
     "https://api.bilibili.com/x/web-interface/search/type?search_type=video&keyword=", "0x87"),
    ("KEY_BILIBILI_VIEW_URL", "bilibili_view_url", "getBilibiliViewUrl", "setBilibiliViewUrl",
     "https://api.bilibili.com/x/web-interface/view?bvid=", "0x88"),
    ("KEY_BILIBILI_PLAYURL_URL", "bilibili_playurl_url", "getBilibiliPlayurlUrl", "setBilibiliPlayurlUrl",
     "https://api.bilibili.com/x/player/playurl?bvid=", "0x89"),
    ("KEY_SEARCH_BAIDU_URL", "search_baidu_url", "getSearchBaiduUrl", "setSearchBaiduUrl",
     "https://www.baidu.com/s?wd=", "0x8a"),
    ("KEY_SEARCH_DUCKDUCKGO_URL", "search_duckduckgo_url", "getSearchDuckDuckGoUrl", "setSearchDuckDuckGoUrl",
     "https://lite.duckduckgo.com/lite/?q=", "0x8b"),
    ("KEY_WIKI_URL", "wiki_url", "getWikiUrl", "setWikiUrl",
     "https://zh.wikipedia.org/w/api.php?action=query&prop=extracts&exintro=true&explaintext=true&titles=", "0x8c"),
    ("KEY_TRANSLATE_URL", "translate_url", "getTranslateUrl", "setTranslateUrl",
     "https://api.mymemory.translated.net/get?q=", "0x8d"),
]

# getter 内部类模板 (基于 ConfigManager$getOtaUrl$1.smali)
GETTER_TEMPLATE = r'''.class final Lcom/xiaozhi/android/config/ConfigManager${GETTER}$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "ConfigManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaozhi/android/config/ConfigManager;->{GETTER}(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.xiaozhi.android.config.ConfigManager"
    f = "ConfigManager.kt"
    i = {}
    l = {
        {LINE}
    }
    m = "{GETTER}"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/xiaozhi/android/config/ConfigManager;


# direct methods
.method constructor <init>(Lcom/xiaozhi/android/config/ConfigManager;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaozhi/android/config/ConfigManager;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/xiaozhi/android/config/ConfigManager${GETTER}$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaozhi/android/config/ConfigManager${GETTER}$1;->this$0:Lcom/xiaozhi/android/config/ConfigManager;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/xiaozhi/android/config/ConfigManager${GETTER}$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/xiaozhi/android/config/ConfigManager${GETTER}$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/xiaozhi/android/config/ConfigManager${GETTER}$1;->label:I

    iget-object p1, p0, Lcom/xiaozhi/android/config/ConfigManager${GETTER}$1;->this$0:Lcom/xiaozhi/android/config/ConfigManager;

    move-object v0, p0

    check-cast v0, Lkotlin/coroutines/Continuation;

    invoke-virtual {p1, v0}, Lcom/xiaozhi/android/config/ConfigManager;->{GETTER}(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
'''

# setter 内部类模板 (基于 ConfigManager$setOtaUrl$2.smali)
SETTER_TEMPLATE = r'''.class final Lcom/xiaozhi/android/config/ConfigManager${SETTER}$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ConfigManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaozhi/android/config/ConfigManager;->{SETTER}(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/datastore/preferences/core/MutablePreferences;",
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
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroidx/datastore/preferences/core/MutablePreferences;"
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
    c = "com.xiaozhi.android.config.ConfigManager${SETTER}$2"
    f = "ConfigManager.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $url:Ljava/lang/String;

.field synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/xiaozhi/android/config/ConfigManager${SETTER}$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaozhi/android/config/ConfigManager${SETTER}$2;->$url:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance v0, Lcom/xiaozhi/android/config/ConfigManager${SETTER}$2;

    iget-object v1, p0, Lcom/xiaozhi/android/config/ConfigManager${SETTER}$2;->$url:Ljava/lang/String;

    invoke-direct {v0, v1, p2}, Lcom/xiaozhi/android/config/ConfigManager${SETTER}$2;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/xiaozhi/android/config/ConfigManager${SETTER}$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public final invoke(Landroidx/datastore/preferences/core/MutablePreferences;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/datastore/preferences/core/MutablePreferences;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/xiaozhi/android/config/ConfigManager${SETTER}$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/xiaozhi/android/config/ConfigManager${SETTER}$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/xiaozhi/android/config/ConfigManager${SETTER}$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/datastore/preferences/core/MutablePreferences;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/xiaozhi/android/config/ConfigManager${SETTER}$2;->invoke(Landroidx/datastore/preferences/core/MutablePreferences;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    iget v0, p0, Lcom/xiaozhi/android/config/ConfigManager${SETTER}$2;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/xiaozhi/android/config/ConfigManager${SETTER}$2;->L$0:Ljava/lang/Object;

    check-cast p1, Landroidx/datastore/preferences/core/MutablePreferences;

    invoke-static {}, Lcom/xiaozhi/android/config/ConfigManager;->access${KEY_ACCESS}$cp()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaozhi/android/config/ConfigManager${SETTER}$2;->$url:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroidx/datastore/preferences/core/MutablePreferences;->set(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to 'resume' before 'invoke' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
'''

generated_files = []
for key_field, key_str, getter, setter, default_url, line_hex in APIS:
    key_access = "get" + key_field  # access$getKEY_XXX$cp
    getter_content = GETTER_TEMPLATE.replace("{GETTER}", getter).replace("{LINE}", line_hex)
    getter_path = os.path.join(OUT_DIR, "ConfigManager$" + getter + "$1.smali")
    with open(getter_path, "w") as f:
        f.write(getter_content)
    generated_files.append(getter_path)
    setter_content = SETTER_TEMPLATE.replace("{SETTER}", setter).replace("{KEY_ACCESS}", key_access)
    setter_path = os.path.join(OUT_DIR, "ConfigManager$" + setter + "$2.smali")
    with open(setter_path, "w") as f:
        f.write(setter_content)
    generated_files.append(setter_path)

print("Generated " + str(len(generated_files)) + " files")
for p in generated_files:
    print("  " + p)

# ====== 生成插入到 ConfigManager.smali 的文本块 ======
# 1. KEY 字段声明
key_fields = []
for key_field, key_str, getter, setter, default_url, line_hex in APIS:
    key_fields.append(
        ".field private static final " + key_field + ":Landroidx/datastore/preferences/core/Preferences$Key;\n"
        "    .annotation system Ldalvik/annotation/Signature;\n"
        "        value = {\n"
        "            \"Landroidx/datastore/preferences/core/Preferences$Key<\",\n"
        "            \"Ljava/lang/String;\",\n"
        "            \">;\"\n"
        "        }\n"
        "    .end annotation\n"
        ".end field\n"
    )
print("\n========== KEY FIELDS ==========")
print("\n\n".join(key_fields))

# 2. <clinit> 注册
clinit_regs = []
for key_field, key_str, getter, setter, default_url, line_hex in APIS:
    clinit_regs.append(
        "    const-string v0, \"" + key_str + "\"\n\n"
        "    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->stringKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;\n\n"
        "    move-result-object v0\n\n"
        "    sput-object v0, Lcom/xiaozhi/android/config/ConfigManager;->" + key_field + ":Landroidx/datastore/preferences/core/Preferences$Key;\n"
    )
print("\n========== CLINIT REGISTRATIONS ==========")
print("\n".join(clinit_regs))

# 3. access$ 桥接方法
access_bridges = []
for key_field, key_str, getter, setter, default_url, line_hex in APIS:
    access_bridges.append(
        ".method public static final synthetic access$" + "get" + key_field + "$cp()Landroidx/datastore/preferences/core/Preferences$Key;\n"
        "    .locals 1\n\n"
        "    sget-object v0, Lcom/xiaozhi/android/config/ConfigManager;->" + key_field + ":Landroidx/datastore/preferences/core/Preferences$Key;\n\n"
        "    return-object v0\n"
        ".end method\n"
    )
print("\n========== ACCESS BRIDGES ==========")
print("\n".join(access_bridges))

# 4. getter 方法 (基于 getOtaUrl 模板，改方法名/内部类/KEY/默认值)
GETTER_METHOD = r'''.method public final {GETTER}(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/xiaozhi/android/config/ConfigManager${GETTER}$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/xiaozhi/android/config/ConfigManager${GETTER}$1;

    iget v1, v0, Lcom/xiaozhi/android/config/ConfigManager${GETTER}$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/xiaozhi/android/config/ConfigManager${GETTER}$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/xiaozhi/android/config/ConfigManager${GETTER}$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/xiaozhi/android/config/ConfigManager${GETTER}$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaozhi/android/config/ConfigManager${GETTER}$1;-><init>(Lcom/xiaozhi/android/config/ConfigManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/xiaozhi/android/config/ConfigManager${GETTER}$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/xiaozhi/android/config/ConfigManager${GETTER}$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to 'resume' before 'invoke' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/xiaozhi/android/config/ConfigManager;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/xiaozhi/android/config/ConfigManagerKt;->access$getDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object p1

    invoke-interface {p1}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput v3, v0, Lcom/xiaozhi/android/config/ConfigManager${GETTER}$1;->label:I

    invoke-static {p1, v0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Landroidx/datastore/preferences/core/Preferences;

    sget-object v0, Lcom/xiaozhi/android/config/ConfigManager;->{KEY_FIELD}:Landroidx/datastore/preferences/core/Preferences$Key;

    invoke-virtual {p1, v0}, Landroidx/datastore/preferences/core/Preferences;->get(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_4

    const-string p1, "{DEFAULT_URL}"

    :cond_4
    return-object p1
.end method
'''

# 5. setter 方法 (基于 setOtaUrl 模板)
SETTER_METHOD = r'''.method public final {SETTER}(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaozhi/android/config/ConfigManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaozhi/android/config/ConfigManagerKt;->access$getDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object v0

    new-instance v1, Lcom/xiaozhi/android/config/ConfigManager${SETTER}$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/xiaozhi/android/config/ConfigManager${SETTER}$2;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Landroidx/datastore/preferences/core/PreferencesKt;->edit(Landroidx/datastore/core/DataStore;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
'''

getter_methods = []
setter_methods = []
for key_field, key_str, getter, setter, default_url, line_hex in APIS:
    gm = GETTER_METHOD.replace("{GETTER}", getter).replace("{KEY_FIELD}", key_field).replace("{DEFAULT_URL}", default_url)
    getter_methods.append(gm)
    sm = SETTER_METHOD.replace("{SETTER}", setter)
    setter_methods.append(sm)

print("\n========== GETTER METHODS ==========")
print("\n".join(getter_methods))
print("\n========== SETTER METHODS ==========")
print("\n".join(setter_methods))

# 写入汇总文件方便后续 Edit
with open("/workspace/_configmanager_inserts.txt", "w") as f:
    f.write("===== KEY_FIELDS =====\n")
    f.write("\n\n".join(key_fields))
    f.write("\n\n===== CLINIT_REGS =====\n")
    f.write("\n".join(clinit_regs))
    f.write("\n\n===== ACCESS_BRIDGES =====\n")
    f.write("\n".join(access_bridges))
    f.write("\n\n===== GETTER_METHODS =====\n")
    f.write("\n".join(getter_methods))
    f.write("\n\n===== SETTER_METHODS =====\n")
    f.write("\n".join(setter_methods))
print("\n\nWrote /workspace/_configmanager_inserts.txt")
