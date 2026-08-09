.class Lorg/jsoup/select/StructuralEvaluator$Has;
.super Lorg/jsoup/select/StructuralEvaluator;
.source "StructuralEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/StructuralEvaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Has"
.end annotation


# static fields
.field static final ThreadElementIter:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lorg/jsoup/nodes/NodeIterator<",
            "Lorg/jsoup/nodes/Element;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    new-instance v0, Lorg/jsoup/select/StructuralEvaluator$Has$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/jsoup/select/StructuralEvaluator$Has$$ExternalSyntheticLambda0;-><init>()V

    .line 63
    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Lorg/jsoup/select/StructuralEvaluator$Has;->ThreadElementIter:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Lorg/jsoup/select/Evaluator;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lorg/jsoup/select/StructuralEvaluator;-><init>(Lorg/jsoup/select/Evaluator;)V

    return-void
.end method

.method static synthetic lambda$static$0()Lorg/jsoup/nodes/NodeIterator;
    .locals 3

    .line 63
    new-instance v0, Lorg/jsoup/nodes/NodeIterator;

    new-instance v1, Lorg/jsoup/nodes/Element;

    const-string v2, "html"

    invoke-direct {v1, v2}, Lorg/jsoup/nodes/Element;-><init>(Ljava/lang/String;)V

    const-class v2, Lorg/jsoup/nodes/Element;

    invoke-direct {v0, v1, v2}, Lorg/jsoup/nodes/NodeIterator;-><init>(Lorg/jsoup/nodes/Node;Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method protected cost()I
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/jsoup/select/StructuralEvaluator$Has;->evaluator:Lorg/jsoup/select/Evaluator;

    invoke-virtual {v0}, Lorg/jsoup/select/Evaluator;->cost()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z
    .locals 2

    .line 72
    sget-object p1, Lorg/jsoup/select/StructuralEvaluator$Has;->ThreadElementIter:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jsoup/nodes/NodeIterator;

    .line 74
    invoke-virtual {p1, p2}, Lorg/jsoup/nodes/NodeIterator;->restart(Lorg/jsoup/nodes/Node;)V

    .line 75
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lorg/jsoup/nodes/NodeIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    invoke-virtual {p1}, Lorg/jsoup/nodes/NodeIterator;->next()Lorg/jsoup/nodes/Node;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    if-ne v0, p2, :cond_1

    goto :goto_0

    .line 78
    :cond_1
    iget-object v1, p0, Lorg/jsoup/select/StructuralEvaluator$Has;->evaluator:Lorg/jsoup/select/Evaluator;

    invoke-virtual {v1, p2, v0}, Lorg/jsoup/select/Evaluator;->matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 90
    iget-object v0, p0, Lorg/jsoup/select/StructuralEvaluator$Has;->evaluator:Lorg/jsoup/select/Evaluator;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, ":has(%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
