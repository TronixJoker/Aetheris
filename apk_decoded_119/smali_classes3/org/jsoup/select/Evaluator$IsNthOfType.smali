.class public Lorg/jsoup/select/Evaluator$IsNthOfType;
.super Lorg/jsoup/select/Evaluator$CssNthEvaluator;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/Evaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IsNthOfType"
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 594
    invoke-direct {p0, p1, p2}, Lorg/jsoup/select/Evaluator$CssNthEvaluator;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected calculatePosition(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)I
    .locals 6

    .line 598
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 603
    :cond_0
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->childNodeSize()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v0, v1, :cond_3

    .line 605
    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Element;->childNode(I)Lorg/jsoup/nodes/Node;

    move-result-object v3

    .line 606
    invoke-virtual {v3}, Lorg/jsoup/nodes/Node;->normalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    if-ne v3, p2, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v2
.end method

.method protected getPseudoClass()Ljava/lang/String;
    .locals 1

    .line 614
    const-string v0, "nth-of-type"

    return-object v0
.end method
