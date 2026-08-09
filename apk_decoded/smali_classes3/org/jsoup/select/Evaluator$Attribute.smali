.class public final Lorg/jsoup/select/Evaluator$Attribute;
.super Lorg/jsoup/select/Evaluator;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/Evaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Attribute"
.end annotation


# instance fields
.field private final key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 168
    invoke-direct {p0}, Lorg/jsoup/select/Evaluator;-><init>()V

    .line 169
    iput-object p1, p0, Lorg/jsoup/select/Evaluator$Attribute;->key:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected cost()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z
    .locals 0

    .line 174
    iget-object p1, p0, Lorg/jsoup/select/Evaluator$Attribute;->key:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lorg/jsoup/nodes/Element;->hasAttr(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 183
    iget-object v0, p0, Lorg/jsoup/select/Evaluator$Attribute;->key:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "[%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
