.class public Lorg/jsoup/nodes/DataNode;
.super Lorg/jsoup/nodes/LeafNode;
.source "DataNode.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lorg/jsoup/nodes/LeafNode;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/jsoup/nodes/DataNode;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 9
    invoke-virtual {p0}, Lorg/jsoup/nodes/DataNode;->clone()Lorg/jsoup/nodes/DataNode;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/jsoup/nodes/DataNode;
    .locals 1

    .line 69
    invoke-super {p0}, Lorg/jsoup/nodes/LeafNode;->clone()Lorg/jsoup/nodes/Node;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/DataNode;

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/jsoup/nodes/Node;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lorg/jsoup/nodes/DataNode;->clone()Lorg/jsoup/nodes/DataNode;

    move-result-object v0

    return-object v0
.end method

.method public getWholeData()Ljava/lang/String;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lorg/jsoup/nodes/DataNode;->coreValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nodeName()Ljava/lang/String;
    .locals 1

    .line 20
    const-string v0, "#data"

    return-object v0
.end method

.method outerHtmlHead(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    invoke-virtual {p0}, Lorg/jsoup/nodes/DataNode;->getWholeData()Ljava/lang/String;

    move-result-object p2

    .line 46
    invoke-virtual {p3}, Lorg/jsoup/nodes/Document$OutputSettings;->syntax()Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    move-result-object p3

    sget-object v0, Lorg/jsoup/nodes/Document$OutputSettings$Syntax;->xml:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    if-ne p3, v0, :cond_2

    const-string p3, "<![CDATA["

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 47
    const-string v0, "script"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/DataNode;->parentNameIs(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    const-string p3, "//<![CDATA[\n"

    invoke-interface {p1, p3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p1

    const-string p2, "\n//]]>"

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_0

    .line 49
    :cond_0
    const-string v0, "style"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/DataNode;->parentNameIs(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    const-string p3, "/*<![CDATA[*/\n"

    invoke-interface {p1, p3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p1

    const-string p2, "\n/*]]>*/"

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_0

    .line 52
    :cond_1
    invoke-interface {p1, p3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p1

    const-string p2, "]]>"

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_0

    .line 55
    :cond_2
    invoke-virtual {p0}, Lorg/jsoup/nodes/DataNode;->getWholeData()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :goto_0
    return-void
.end method

.method outerHtmlTail(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 0

    return-void
.end method

.method public setWholeData(Ljava/lang/String;)Lorg/jsoup/nodes/DataNode;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/DataNode;->coreValue(Ljava/lang/String;)V

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lorg/jsoup/nodes/DataNode;->outerHtml()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
