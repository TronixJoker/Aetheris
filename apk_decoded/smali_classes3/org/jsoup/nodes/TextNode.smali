.class public Lorg/jsoup/nodes/TextNode;
.super Lorg/jsoup/nodes/LeafNode;
.source "TextNode.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lorg/jsoup/nodes/LeafNode;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/jsoup/nodes/TextNode;->value:Ljava/lang/Object;

    return-void
.end method

.method public static createFromEncoded(Ljava/lang/String;)Lorg/jsoup/nodes/TextNode;
    .locals 1

    .line 135
    invoke-static {p0}, Lorg/jsoup/nodes/Entities;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 136
    new-instance v0, Lorg/jsoup/nodes/TextNode;

    invoke-direct {v0, p0}, Lorg/jsoup/nodes/TextNode;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static lastCharIsWhitespace(Ljava/lang/StringBuilder;)Z
    .locals 2

    .line 149
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p0

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static normaliseWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 140
    invoke-static {p0}, Lorg/jsoup/internal/StringUtil;->normaliseWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static stripLeadingWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 145
    const-string v0, "^\\s+"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 12
    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->clone()Lorg/jsoup/nodes/TextNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/jsoup/nodes/Node;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->clone()Lorg/jsoup/nodes/TextNode;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/jsoup/nodes/TextNode;
    .locals 1

    .line 126
    invoke-super {p0}, Lorg/jsoup/nodes/LeafNode;->clone()Lorg/jsoup/nodes/Node;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/TextNode;

    return-object v0
.end method

.method public getWholeText()Ljava/lang/String;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->coreValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isBlank()Z
    .locals 1

    .line 59
    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->coreValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jsoup/internal/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public nodeName()Ljava/lang/String;
    .locals 1

    .line 24
    const-string v0, "#text"

    return-object v0
.end method

.method outerHtmlHead(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    invoke-virtual {p3}, Lorg/jsoup/nodes/Document$OutputSettings;->prettyPrint()Z

    move-result v0

    .line 86
    iget-object v1, p0, Lorg/jsoup/nodes/TextNode;->parentNode:Lorg/jsoup/nodes/Node;

    instance-of v1, v1, Lorg/jsoup/nodes/Element;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/jsoup/nodes/TextNode;->parentNode:Lorg/jsoup/nodes/Node;

    check-cast v1, Lorg/jsoup/nodes/Element;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lorg/jsoup/nodes/TextNode;->parentNode:Lorg/jsoup/nodes/Node;

    invoke-static {v0}, Lorg/jsoup/nodes/Element;->preserveWhitespace(Lorg/jsoup/nodes/Node;)Z

    move-result v0

    if-nez v0, :cond_1

    move v8, v2

    goto :goto_1

    :cond_1
    move v8, v3

    :goto_1
    if-eqz v1, :cond_3

    .line 88
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/parser/Tag;->isBlock()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/parser/Tag;->formatAsBlock()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v3

    :goto_2
    if-eqz v8, :cond_10

    if-eqz v0, :cond_4

    .line 92
    iget v4, p0, Lorg/jsoup/nodes/TextNode;->siblingIndex:I

    if-eqz v4, :cond_5

    :cond_4
    iget-object v4, p0, Lorg/jsoup/nodes/TextNode;->parentNode:Lorg/jsoup/nodes/Node;

    instance-of v4, v4, Lorg/jsoup/nodes/Document;

    if-eqz v4, :cond_6

    :cond_5
    move v4, v2

    goto :goto_3

    :cond_6
    move v4, v3

    :goto_3
    if-eqz v0, :cond_7

    .line 93
    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->nextSibling()Lorg/jsoup/nodes/Node;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_4

    :cond_7
    move v2, v3

    .line 96
    :goto_4
    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->nextSibling()Lorg/jsoup/nodes/Node;

    move-result-object v0

    .line 97
    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->previousSibling()Lorg/jsoup/nodes/Node;

    move-result-object v3

    .line 98
    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->isBlank()Z

    move-result v5

    .line 99
    instance-of v6, v0, Lorg/jsoup/nodes/Element;

    const-string v7, "br"

    if-eqz v6, :cond_8

    move-object v6, v0

    check-cast v6, Lorg/jsoup/nodes/Element;

    invoke-virtual {v6, p3}, Lorg/jsoup/nodes/Element;->shouldIndent(Lorg/jsoup/nodes/Document$OutputSettings;)Z

    move-result v6

    if-nez v6, :cond_a

    :cond_8
    instance-of v6, v0, Lorg/jsoup/nodes/TextNode;

    if-eqz v6, :cond_9

    check-cast v0, Lorg/jsoup/nodes/TextNode;

    .line 100
    invoke-virtual {v0}, Lorg/jsoup/nodes/TextNode;->isBlank()Z

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    instance-of v0, v3, Lorg/jsoup/nodes/Element;

    if-eqz v0, :cond_b

    move-object v0, v3

    check-cast v0, Lorg/jsoup/nodes/Element;

    .line 101
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->isBlock()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v3, v7}, Lorg/jsoup/nodes/Node;->nameIs(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    if-eqz v5, :cond_b

    return-void

    :cond_b
    if-nez v3, :cond_c

    if-eqz v1, :cond_c

    .line 106
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/parser/Tag;->formatAsBlock()Z

    move-result v0

    if-eqz v0, :cond_c

    if-eqz v5, :cond_e

    .line 107
    :cond_c
    invoke-virtual {p3}, Lorg/jsoup/nodes/Document$OutputSettings;->outline()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->siblingNodes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_d

    if-eqz v5, :cond_e

    :cond_d
    if-eqz v3, :cond_f

    .line 108
    invoke-virtual {v3, v7}, Lorg/jsoup/nodes/Node;->nameIs(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 110
    :cond_e
    invoke-virtual {p0, p1, p2, p3}, Lorg/jsoup/nodes/TextNode;->indent(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V

    :cond_f
    move v10, v2

    move v9, v4

    goto :goto_5

    :cond_10
    move v9, v3

    move v10, v9

    .line 113
    :goto_5
    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->coreValue()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    move-object v4, p1

    move-object v6, p3

    invoke-static/range {v4 .. v10}, Lorg/jsoup/nodes/Entities;->escape(Ljava/lang/Appendable;Ljava/lang/String;Lorg/jsoup/nodes/Document$OutputSettings;ZZZZ)V

    return-void
.end method

.method outerHtmlTail(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public splitText(I)Lorg/jsoup/nodes/TextNode;
    .locals 5

    .line 69
    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->coreValue()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 70
    :goto_0
    const-string v4, "Split offset must be not be negative"

    invoke-static {v3, v4}, Lorg/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    .line 71
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge p1, v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    const-string v4, "Split offset must not be greater than current text length"

    invoke-static {v3, v4}, Lorg/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    .line 73
    invoke-virtual {v0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 74
    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 75
    invoke-virtual {p0, v3}, Lorg/jsoup/nodes/TextNode;->text(Ljava/lang/String;)Lorg/jsoup/nodes/TextNode;

    .line 76
    new-instance v0, Lorg/jsoup/nodes/TextNode;

    invoke-direct {v0, p1}, Lorg/jsoup/nodes/TextNode;-><init>(Ljava/lang/String;)V

    .line 77
    iget-object p1, p0, Lorg/jsoup/nodes/TextNode;->parentNode:Lorg/jsoup/nodes/Node;

    if-eqz p1, :cond_2

    .line 78
    iget-object p1, p0, Lorg/jsoup/nodes/TextNode;->parentNode:Lorg/jsoup/nodes/Node;

    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->siblingIndex()I

    move-result v3

    add-int/2addr v3, v1

    new-array v1, v1, [Lorg/jsoup/nodes/Node;

    aput-object v0, v1, v2

    invoke-virtual {p1, v3, v1}, Lorg/jsoup/nodes/Node;->addChildren(I[Lorg/jsoup/nodes/Node;)V

    :cond_2
    return-object v0
.end method

.method public text()Ljava/lang/String;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->getWholeText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jsoup/internal/StringUtil;->normaliseWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public text(Ljava/lang/String;)Lorg/jsoup/nodes/TextNode;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/TextNode;->coreValue(Ljava/lang/String;)V

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 121
    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->outerHtml()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
