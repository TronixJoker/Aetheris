.class public Lorg/jsoup/parser/XmlTreeBuilder;
.super Lorg/jsoup/parser/TreeBuilder;
.source "XmlTreeBuilder.java"


# static fields
.field private static final maxQueueDepth:I = 0x100


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lorg/jsoup/parser/TreeBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public defaultNamespace()Ljava/lang/String;
    .locals 1

    .line 57
    const-string v0, "http://www.w3.org/XML/1998/namespace"

    return-object v0
.end method

.method defaultSettings()Lorg/jsoup/parser/ParseSettings;
    .locals 1

    .line 30
    sget-object v0, Lorg/jsoup/parser/ParseSettings;->preserveCase:Lorg/jsoup/parser/ParseSettings;

    return-object v0
.end method

.method protected initialiseParse(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/parser/Parser;)V
    .locals 0

    .line 35
    invoke-super {p0, p1, p2, p3}, Lorg/jsoup/parser/TreeBuilder;->initialiseParse(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/parser/Parser;)V

    .line 36
    iget-object p1, p0, Lorg/jsoup/parser/XmlTreeBuilder;->stack:Ljava/util/ArrayList;

    iget-object p2, p0, Lorg/jsoup/parser/XmlTreeBuilder;->doc:Lorg/jsoup/nodes/Document;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object p1, p0, Lorg/jsoup/parser/XmlTreeBuilder;->doc:Lorg/jsoup/nodes/Document;

    invoke-virtual {p1}, Lorg/jsoup/nodes/Document;->outputSettings()Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object p1

    sget-object p2, Lorg/jsoup/nodes/Document$OutputSettings$Syntax;->xml:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    .line 38
    invoke-virtual {p1, p2}, Lorg/jsoup/nodes/Document$OutputSettings;->syntax(Lorg/jsoup/nodes/Document$OutputSettings$Syntax;)Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object p1

    sget-object p2, Lorg/jsoup/nodes/Entities$EscapeMode;->xhtml:Lorg/jsoup/nodes/Entities$EscapeMode;

    .line 39
    invoke-virtual {p1, p2}, Lorg/jsoup/nodes/Document$OutputSettings;->escapeMode(Lorg/jsoup/nodes/Entities$EscapeMode;)Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object p1

    const/4 p2, 0x0

    .line 40
    invoke-virtual {p1, p2}, Lorg/jsoup/nodes/Document$OutputSettings;->prettyPrint(Z)Lorg/jsoup/nodes/Document$OutputSettings;

    return-void
.end method

.method insertCharacterFor(Lorg/jsoup/parser/Token$Character;)V
    .locals 1

    .line 124
    invoke-virtual {p1}, Lorg/jsoup/parser/Token$Character;->getData()Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-virtual {p1}, Lorg/jsoup/parser/Token$Character;->isCData()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lorg/jsoup/nodes/CDataNode;

    invoke-direct {p1, v0}, Lorg/jsoup/nodes/CDataNode;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/jsoup/nodes/TextNode;

    invoke-direct {p1, v0}, Lorg/jsoup/nodes/TextNode;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/XmlTreeBuilder;->insertLeafNode(Lorg/jsoup/nodes/LeafNode;)V

    return-void
.end method

.method insertCommentFor(Lorg/jsoup/parser/Token$Comment;)V
    .locals 2

    .line 110
    new-instance v0, Lorg/jsoup/nodes/Comment;

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$Comment;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jsoup/nodes/Comment;-><init>(Ljava/lang/String;)V

    .line 112
    iget-boolean p1, p1, Lorg/jsoup/parser/Token$Comment;->bogus:Z

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lorg/jsoup/nodes/Comment;->isXmlDeclaration()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 116
    invoke-virtual {v0}, Lorg/jsoup/nodes/Comment;->asXmlDeclaration()Lorg/jsoup/nodes/XmlDeclaration;

    move-result-object p1

    if-eqz p1, :cond_0

    move-object v0, p1

    .line 120
    :cond_0
    invoke-virtual {p0, v0}, Lorg/jsoup/parser/XmlTreeBuilder;->insertLeafNode(Lorg/jsoup/nodes/LeafNode;)V

    return-void
.end method

.method insertDoctypeFor(Lorg/jsoup/parser/Token$Doctype;)V
    .locals 4

    .line 129
    new-instance v0, Lorg/jsoup/nodes/DocumentType;

    iget-object v1, p0, Lorg/jsoup/parser/XmlTreeBuilder;->settings:Lorg/jsoup/parser/ParseSettings;

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$Doctype;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jsoup/parser/ParseSettings;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$Doctype;->getPublicIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$Doctype;->getSystemIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/jsoup/nodes/DocumentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-virtual {p1}, Lorg/jsoup/parser/Token$Doctype;->getPubSysKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/DocumentType;->setPubSysKey(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0, v0}, Lorg/jsoup/parser/XmlTreeBuilder;->insertLeafNode(Lorg/jsoup/nodes/LeafNode;)V

    return-void
.end method

.method insertElementFor(Lorg/jsoup/parser/Token$StartTag;)V
    .locals 4

    .line 90
    invoke-virtual {p1}, Lorg/jsoup/parser/Token$StartTag;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/jsoup/parser/XmlTreeBuilder;->settings:Lorg/jsoup/parser/ParseSettings;

    invoke-virtual {p0, v0, v1}, Lorg/jsoup/parser/XmlTreeBuilder;->tagFor(Ljava/lang/String;Lorg/jsoup/parser/ParseSettings;)Lorg/jsoup/parser/Tag;

    move-result-object v0

    .line 91
    iget-object v1, p1, Lorg/jsoup/parser/Token$StartTag;->attributes:Lorg/jsoup/nodes/Attributes;

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p1, Lorg/jsoup/parser/Token$StartTag;->attributes:Lorg/jsoup/nodes/Attributes;

    iget-object v2, p0, Lorg/jsoup/parser/XmlTreeBuilder;->settings:Lorg/jsoup/parser/ParseSettings;

    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/Attributes;->deduplicate(Lorg/jsoup/parser/ParseSettings;)I

    .line 94
    :cond_0
    new-instance v1, Lorg/jsoup/nodes/Element;

    iget-object v2, p0, Lorg/jsoup/parser/XmlTreeBuilder;->settings:Lorg/jsoup/parser/ParseSettings;

    iget-object v3, p1, Lorg/jsoup/parser/Token$StartTag;->attributes:Lorg/jsoup/nodes/Attributes;

    invoke-virtual {v2, v3}, Lorg/jsoup/parser/ParseSettings;->normalizeAttributes(Lorg/jsoup/nodes/Attributes;)Lorg/jsoup/nodes/Attributes;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3, v2}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V

    .line 95
    invoke-virtual {p0}, Lorg/jsoup/parser/XmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    .line 96
    invoke-virtual {p0, v1}, Lorg/jsoup/parser/XmlTreeBuilder;->push(Lorg/jsoup/nodes/Element;)V

    .line 98
    invoke-virtual {p1}, Lorg/jsoup/parser/Token$StartTag;->isSelfClosing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 99
    invoke-virtual {v0}, Lorg/jsoup/parser/Tag;->setSelfClosing()Lorg/jsoup/parser/Tag;

    .line 100
    invoke-virtual {p0}, Lorg/jsoup/parser/XmlTreeBuilder;->pop()Lorg/jsoup/nodes/Element;

    :cond_1
    return-void
.end method

.method insertLeafNode(Lorg/jsoup/nodes/LeafNode;)V
    .locals 1

    .line 105
    invoke-virtual {p0}, Lorg/jsoup/parser/XmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    .line 106
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/XmlTreeBuilder;->onNodeInserted(Lorg/jsoup/nodes/Node;)V

    return-void
.end method

.method protected insertNode(Lorg/jsoup/nodes/Node;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 137
    invoke-virtual {p0}, Lorg/jsoup/parser/XmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    .line 138
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/XmlTreeBuilder;->onNodeInserted(Lorg/jsoup/nodes/Node;)V

    return-void
.end method

.method protected insertNode(Lorg/jsoup/nodes/Node;Lorg/jsoup/parser/Token;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 144
    invoke-virtual {p0}, Lorg/jsoup/parser/XmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    .line 145
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/XmlTreeBuilder;->onNodeInserted(Lorg/jsoup/nodes/Node;)V

    return-void
.end method

.method bridge synthetic newInstance()Lorg/jsoup/parser/TreeBuilder;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lorg/jsoup/parser/XmlTreeBuilder;->newInstance()Lorg/jsoup/parser/XmlTreeBuilder;

    move-result-object v0

    return-object v0
.end method

.method newInstance()Lorg/jsoup/parser/XmlTreeBuilder;
    .locals 1

    .line 53
    new-instance v0, Lorg/jsoup/parser/XmlTreeBuilder;

    invoke-direct {v0}, Lorg/jsoup/parser/XmlTreeBuilder;-><init>()V

    return-object v0
.end method

.method parse(Ljava/io/Reader;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 1

    .line 44
    new-instance v0, Lorg/jsoup/parser/Parser;

    invoke-direct {v0, p0}, Lorg/jsoup/parser/Parser;-><init>(Lorg/jsoup/parser/TreeBuilder;)V

    invoke-virtual {p0, p1, p2, v0}, Lorg/jsoup/parser/XmlTreeBuilder;->parse(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;

    move-result-object p1

    return-object p1
.end method

.method parse(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 1

    .line 48
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance p1, Lorg/jsoup/parser/Parser;

    invoke-direct {p1, p0}, Lorg/jsoup/parser/Parser;-><init>(Lorg/jsoup/parser/TreeBuilder;)V

    invoke-virtual {p0, v0, p2, p1}, Lorg/jsoup/parser/XmlTreeBuilder;->parse(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;

    move-result-object p1

    return-object p1
.end method

.method parseFragment(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/jsoup/parser/Parser;",
            ")",
            "Ljava/util/List<",
            "Lorg/jsoup/nodes/Node;",
            ">;"
        }
    .end annotation

    .line 182
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lorg/jsoup/parser/XmlTreeBuilder;->initialiseParse(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/parser/Parser;)V

    .line 183
    invoke-virtual {p0}, Lorg/jsoup/parser/XmlTreeBuilder;->runParser()V

    .line 184
    iget-object p1, p0, Lorg/jsoup/parser/XmlTreeBuilder;->doc:Lorg/jsoup/nodes/Document;

    invoke-virtual {p1}, Lorg/jsoup/nodes/Document;->childNodes()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method parseFragment(Ljava/lang/String;Lorg/jsoup/nodes/Element;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/jsoup/nodes/Element;",
            "Ljava/lang/String;",
            "Lorg/jsoup/parser/Parser;",
            ")",
            "Ljava/util/List<",
            "Lorg/jsoup/nodes/Node;",
            ">;"
        }
    .end annotation

    .line 188
    invoke-virtual {p0, p1, p3, p4}, Lorg/jsoup/parser/XmlTreeBuilder;->parseFragment(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected popStackToClose(Lorg/jsoup/parser/Token$EndTag;)V
    .locals 4

    .line 156
    iget-object v0, p0, Lorg/jsoup/parser/XmlTreeBuilder;->settings:Lorg/jsoup/parser/ParseSettings;

    iget-object p1, p1, Lorg/jsoup/parser/Token$EndTag;->tagName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/jsoup/parser/ParseSettings;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 159
    iget-object v0, p0, Lorg/jsoup/parser/XmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/16 v2, 0x100

    if-lt v1, v2, :cond_0

    add-int/lit16 v0, v0, -0x101

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 162
    :goto_0
    iget-object v1, p0, Lorg/jsoup/parser/XmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-lt v1, v0, :cond_2

    .line 163
    iget-object v2, p0, Lorg/jsoup/parser/XmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/Element;

    .line 164
    invoke-virtual {v2}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_2
    if-nez v2, :cond_3

    return-void

    .line 172
    :cond_3
    iget-object p1, p0, Lorg/jsoup/parser/XmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_3
    if-ltz p1, :cond_5

    .line 173
    invoke-virtual {p0}, Lorg/jsoup/parser/XmlTreeBuilder;->pop()Lorg/jsoup/nodes/Element;

    move-result-object v0

    if-ne v0, v2, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 p1, p1, -0x1

    goto :goto_3

    :cond_5
    :goto_4
    return-void
.end method

.method protected process(Lorg/jsoup/parser/Token;)Z
    .locals 2

    .line 62
    iput-object p1, p0, Lorg/jsoup/parser/XmlTreeBuilder;->currentToken:Lorg/jsoup/parser/Token;

    .line 65
    sget-object v0, Lorg/jsoup/parser/XmlTreeBuilder$1;->$SwitchMap$org$jsoup$parser$Token$TokenType:[I

    iget-object v1, p1, Lorg/jsoup/parser/Token;->type:Lorg/jsoup/parser/Token$TokenType;

    invoke-virtual {v1}, Lorg/jsoup/parser/Token$TokenType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected token type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lorg/jsoup/parser/Token;->type:Lorg/jsoup/parser/Token$TokenType;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/jsoup/helper/Validate;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :pswitch_0
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asDoctype()Lorg/jsoup/parser/Token$Doctype;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/XmlTreeBuilder;->insertDoctypeFor(Lorg/jsoup/parser/Token$Doctype;)V

    goto :goto_0

    .line 76
    :pswitch_1
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asCharacter()Lorg/jsoup/parser/Token$Character;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/XmlTreeBuilder;->insertCharacterFor(Lorg/jsoup/parser/Token$Character;)V

    goto :goto_0

    .line 73
    :pswitch_2
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asComment()Lorg/jsoup/parser/Token$Comment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/XmlTreeBuilder;->insertCommentFor(Lorg/jsoup/parser/Token$Comment;)V

    goto :goto_0

    .line 70
    :pswitch_3
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asEndTag()Lorg/jsoup/parser/Token$EndTag;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/XmlTreeBuilder;->popStackToClose(Lorg/jsoup/parser/Token$EndTag;)V

    goto :goto_0

    .line 67
    :pswitch_4
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asStartTag()Lorg/jsoup/parser/Token$StartTag;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/XmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)V

    :goto_0
    :pswitch_5
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
