.class abstract Lorg/jsoup/select/StructuralEvaluator;
.super Lorg/jsoup/select/Evaluator;
.source "StructuralEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/select/StructuralEvaluator$ImmediatePreviousSibling;,
        Lorg/jsoup/select/StructuralEvaluator$PreviousSibling;,
        Lorg/jsoup/select/StructuralEvaluator$ImmediateParentRun;,
        Lorg/jsoup/select/StructuralEvaluator$ImmediateParent;,
        Lorg/jsoup/select/StructuralEvaluator$Parent;,
        Lorg/jsoup/select/StructuralEvaluator$Not;,
        Lorg/jsoup/select/StructuralEvaluator$Is;,
        Lorg/jsoup/select/StructuralEvaluator$Has;,
        Lorg/jsoup/select/StructuralEvaluator$Root;
    }
.end annotation


# instance fields
.field final evaluator:Lorg/jsoup/select/Evaluator;

.field final threadMemo:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/IdentityHashMap<",
            "Lorg/jsoup/nodes/Element;",
            "Ljava/util/IdentityHashMap<",
            "Lorg/jsoup/nodes/Element;",
            "Ljava/lang/Boolean;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$g1bKX7VgjnMTK9HK56GvBI6Fqxo()Ljava/util/IdentityHashMap;
    .locals 1

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    return-object v0
.end method

.method public constructor <init>(Lorg/jsoup/select/Evaluator;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Lorg/jsoup/select/Evaluator;-><init>()V

    .line 22
    new-instance v0, Lorg/jsoup/select/StructuralEvaluator$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/jsoup/select/StructuralEvaluator$$ExternalSyntheticLambda0;-><init>()V

    .line 23
    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/select/StructuralEvaluator;->threadMemo:Ljava/lang/ThreadLocal;

    .line 17
    iput-object p1, p0, Lorg/jsoup/select/StructuralEvaluator;->evaluator:Lorg/jsoup/select/Evaluator;

    return-void
.end method


# virtual methods
.method memoMatches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z
    .locals 2

    .line 27
    iget-object v0, p0, Lorg/jsoup/select/StructuralEvaluator;->threadMemo:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/IdentityHashMap;

    .line 28
    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/IdentityHashMap;

    if-nez v1, :cond_0

    .line 30
    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    .line 31
    invoke-virtual {v0, p1, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    :cond_0
    invoke-virtual {v1, p2}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 35
    iget-object v0, p0, Lorg/jsoup/select/StructuralEvaluator;->evaluator:Lorg/jsoup/select/Evaluator;

    invoke-virtual {v0, p1, p2}, Lorg/jsoup/select/Evaluator;->matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 36
    invoke-virtual {v1, p2, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method protected reset()V
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/jsoup/select/StructuralEvaluator;->threadMemo:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->clear()V

    .line 43
    invoke-super {p0}, Lorg/jsoup/select/Evaluator;->reset()V

    return-void
.end method
