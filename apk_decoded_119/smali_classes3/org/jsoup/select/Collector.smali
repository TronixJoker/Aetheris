.class public Lorg/jsoup/select/Collector;
.super Ljava/lang/Object;
.source "Collector.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collect(Lorg/jsoup/select/Evaluator;Lorg/jsoup/nodes/Element;)Lorg/jsoup/select/Elements;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lorg/jsoup/select/Evaluator;->reset()V

    .line 27
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    .line 28
    invoke-virtual {p0, p1}, Lorg/jsoup/select/Evaluator;->asPredicate(Lorg/jsoup/nodes/Element;)Ljava/util/function/Predicate;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lorg/jsoup/select/Collector$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lorg/jsoup/select/Collector$$ExternalSyntheticLambda0;-><init>()V

    .line 29
    invoke-static {p1}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jsoup/select/Elements;

    return-object p0
.end method

.method public static findFirst(Lorg/jsoup/select/Evaluator;Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lorg/jsoup/select/Evaluator;->reset()V

    .line 42
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/jsoup/select/Evaluator;->asPredicate(Lorg/jsoup/nodes/Element;)Ljava/util/function/Predicate;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    const/4 p1, 0x0

    .line 43
    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jsoup/nodes/Element;

    return-object p0
.end method
