.class public final Lorg/jsoup/select/Evaluator$IsRoot;
.super Lorg/jsoup/select/Evaluator;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/Evaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IsRoot"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 667
    invoke-direct {p0}, Lorg/jsoup/select/Evaluator;-><init>()V

    return-void
.end method


# virtual methods
.method protected cost()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z
    .locals 1

    .line 670
    instance-of v0, p1, Lorg/jsoup/nodes/Document;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->firstElementChild()Lorg/jsoup/nodes/Element;

    move-result-object p1

    :cond_0
    if-ne p2, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 680
    const-string v0, ":root"

    return-object v0
.end method
