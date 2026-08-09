.class Lorg/jsoup/select/StructuralEvaluator$Parent;
.super Lorg/jsoup/select/StructuralEvaluator;
.source "StructuralEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/StructuralEvaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Parent"
.end annotation


# direct methods
.method public constructor <init>(Lorg/jsoup/select/Evaluator;)V
    .locals 0

    .line 137
    invoke-direct {p0, p1}, Lorg/jsoup/select/StructuralEvaluator;-><init>(Lorg/jsoup/select/Evaluator;)V

    return-void
.end method


# virtual methods
.method protected cost()I
    .locals 1

    .line 157
    iget-object v0, p0, Lorg/jsoup/select/StructuralEvaluator$Parent;->evaluator:Lorg/jsoup/select/Evaluator;

    invoke-virtual {v0}, Lorg/jsoup/select/Evaluator;->cost()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z
    .locals 2

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    return v0

    .line 145
    :cond_0
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_3

    .line 147
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/select/StructuralEvaluator$Parent;->memoMatches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    if-ne p2, p1, :cond_2

    goto :goto_1

    .line 151
    :cond_2
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object p2

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 162
    iget-object v0, p0, Lorg/jsoup/select/StructuralEvaluator$Parent;->evaluator:Lorg/jsoup/select/Evaluator;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s "

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
