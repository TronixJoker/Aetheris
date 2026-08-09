.class public Lorg/jsoup/nodes/Document;
.super Lorg/jsoup/nodes/Element;
.source "Document.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/nodes/Document$OutputSettings;,
        Lorg/jsoup/nodes/Document$QuirksMode;
    }
.end annotation


# static fields
.field private static final titleEval:Lorg/jsoup/select/Evaluator;


# instance fields
.field private connection:Lorg/jsoup/Connection;

.field private final location:Ljava/lang/String;

.field private outputSettings:Lorg/jsoup/nodes/Document$OutputSettings;

.field private parser:Lorg/jsoup/parser/Parser;

.field private quirksMode:Lorg/jsoup/nodes/Document$QuirksMode;

.field private updateMetaCharset:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 202
    new-instance v0, Lorg/jsoup/select/Evaluator$Tag;

    const-string v1, "title"

    invoke-direct {v0, v1}, Lorg/jsoup/select/Evaluator$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jsoup/nodes/Document;->titleEval:Lorg/jsoup/select/Evaluator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 54
    const-string v0, "http://www.w3.org/1999/xhtml"

    invoke-direct {p0, v0, p1}, Lorg/jsoup/nodes/Document;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 42
    const-string v0, "#root"

    sget-object v1, Lorg/jsoup/parser/ParseSettings;->htmlDefault:Lorg/jsoup/parser/ParseSettings;

    invoke-static {v0, p1, v1}, Lorg/jsoup/parser/Tag;->valueOf(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/ParseSettings;)Lorg/jsoup/parser/Tag;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;)V

    .line 28
    new-instance p1, Lorg/jsoup/nodes/Document$OutputSettings;

    invoke-direct {p1}, Lorg/jsoup/nodes/Document$OutputSettings;-><init>()V

    iput-object p1, p0, Lorg/jsoup/nodes/Document;->outputSettings:Lorg/jsoup/nodes/Document$OutputSettings;

    .line 30
    sget-object p1, Lorg/jsoup/nodes/Document$QuirksMode;->noQuirks:Lorg/jsoup/nodes/Document$QuirksMode;

    iput-object p1, p0, Lorg/jsoup/nodes/Document;->quirksMode:Lorg/jsoup/nodes/Document$QuirksMode;

    const/4 p1, 0x0

    .line 32
    iput-boolean p1, p0, Lorg/jsoup/nodes/Document;->updateMetaCharset:Z

    .line 43
    iput-object p2, p0, Lorg/jsoup/nodes/Document;->location:Ljava/lang/String;

    .line 44
    invoke-static {}, Lorg/jsoup/parser/Parser;->htmlParser()Lorg/jsoup/parser/Parser;

    move-result-object p1

    iput-object p1, p0, Lorg/jsoup/nodes/Document;->parser:Lorg/jsoup/parser/Parser;

    return-void
.end method

.method public static createShell(Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 2

    .line 63
    invoke-static {p0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 65
    new-instance v0, Lorg/jsoup/nodes/Document;

    invoke-direct {v0, p0}, Lorg/jsoup/nodes/Document;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0}, Lorg/jsoup/nodes/Document;->parser()Lorg/jsoup/parser/Parser;

    move-result-object p0

    iput-object p0, v0, Lorg/jsoup/nodes/Document;->parser:Lorg/jsoup/parser/Parser;

    .line 67
    const-string p0, "html"

    invoke-virtual {v0, p0}, Lorg/jsoup/nodes/Document;->appendElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object p0

    .line 68
    const-string v1, "head"

    invoke-virtual {p0, v1}, Lorg/jsoup/nodes/Element;->appendElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 69
    const-string v1, "body"

    invoke-virtual {p0, v1}, Lorg/jsoup/nodes/Element;->appendElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    return-object v0
.end method

.method private ensureMetaCharsetElement()V
    .locals 7

    .line 354
    iget-boolean v0, p0, Lorg/jsoup/nodes/Document;->updateMetaCharset:Z

    if-eqz v0, :cond_4

    .line 355
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->outputSettings()Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/Document$OutputSettings;->syntax()Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    move-result-object v0

    .line 357
    sget-object v1, Lorg/jsoup/nodes/Document$OutputSettings$Syntax;->html:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    if-ne v0, v1, :cond_1

    .line 358
    const-string v0, "meta[charset]"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Document;->selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    .line 359
    const-string v1, "charset"

    if-eqz v0, :cond_0

    .line 360
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->charset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->displayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    goto :goto_0

    .line 362
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->head()Lorg/jsoup/nodes/Element;

    move-result-object v0

    const-string v2, "meta"

    invoke-virtual {v0, v2}, Lorg/jsoup/nodes/Element;->appendElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->charset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->displayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 364
    :goto_0
    const-string v0, "meta[name=charset]"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/select/Elements;->remove()Lorg/jsoup/select/Elements;

    goto :goto_1

    .line 365
    :cond_1
    sget-object v1, Lorg/jsoup/nodes/Document$OutputSettings$Syntax;->xml:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    if-ne v0, v1, :cond_4

    .line 366
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->ensureChildNodes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Node;

    .line 367
    instance-of v2, v0, Lorg/jsoup/nodes/XmlDeclaration;

    const-string v3, "encoding"

    const-string v4, "1.0"

    const-string v5, "xml"

    const-string v6, "version"

    if-eqz v2, :cond_3

    .line 368
    check-cast v0, Lorg/jsoup/nodes/XmlDeclaration;

    .line 369
    invoke-virtual {v0}, Lorg/jsoup/nodes/XmlDeclaration;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 370
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->charset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->displayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/jsoup/nodes/XmlDeclaration;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Node;

    .line 371
    invoke-virtual {v0, v6}, Lorg/jsoup/nodes/XmlDeclaration;->hasAttr(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 372
    invoke-virtual {v0, v6, v4}, Lorg/jsoup/nodes/XmlDeclaration;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Node;

    goto :goto_1

    .line 374
    :cond_2
    new-instance v0, Lorg/jsoup/nodes/XmlDeclaration;

    invoke-direct {v0, v5, v1}, Lorg/jsoup/nodes/XmlDeclaration;-><init>(Ljava/lang/String;Z)V

    .line 375
    invoke-virtual {v0, v6, v4}, Lorg/jsoup/nodes/XmlDeclaration;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Node;

    .line 376
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->charset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->displayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/jsoup/nodes/XmlDeclaration;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Node;

    .line 377
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Document;->prependChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    goto :goto_1

    .line 380
    :cond_3
    new-instance v0, Lorg/jsoup/nodes/XmlDeclaration;

    invoke-direct {v0, v5, v1}, Lorg/jsoup/nodes/XmlDeclaration;-><init>(Ljava/lang/String;Z)V

    .line 381
    invoke-virtual {v0, v6, v4}, Lorg/jsoup/nodes/XmlDeclaration;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Node;

    .line 382
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->charset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->displayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/jsoup/nodes/XmlDeclaration;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Node;

    .line 383
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Document;->prependChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    :cond_4
    :goto_1
    return-void
.end method

.method private htmlEl()Lorg/jsoup/nodes/Element;
    .locals 2

    .line 117
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->firstElementChild()Lorg/jsoup/nodes/Element;

    move-result-object v0

    .line 118
    :goto_0
    const-string v1, "html"

    if-eqz v0, :cond_1

    .line 119
    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Element;->nameIs(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 121
    :cond_0
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->nextElementSibling()Lorg/jsoup/nodes/Element;

    move-result-object v0

    goto :goto_0

    .line 123
    :cond_1
    invoke-virtual {p0, v1}, Lorg/jsoup/nodes/Document;->appendElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public body()Lorg/jsoup/nodes/Element;
    .locals 3

    .line 155
    invoke-direct {p0}, Lorg/jsoup/nodes/Document;->htmlEl()Lorg/jsoup/nodes/Element;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->firstElementChild()Lorg/jsoup/nodes/Element;

    move-result-object v1

    .line 157
    :goto_0
    const-string v2, "body"

    if-eqz v1, :cond_2

    .line 158
    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/Element;->nameIs(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "frameset"

    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/Element;->nameIs(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 160
    :cond_0
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->nextElementSibling()Lorg/jsoup/nodes/Element;

    move-result-object v1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v1

    .line 162
    :cond_2
    invoke-virtual {v0, v2}, Lorg/jsoup/nodes/Element;->appendElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    return-object v0
.end method

.method public charset()Ljava/nio/charset/Charset;
    .locals 1

    .line 286
    iget-object v0, p0, Lorg/jsoup/nodes/Document;->outputSettings:Lorg/jsoup/nodes/Document$OutputSettings;

    invoke-virtual {v0}, Lorg/jsoup/nodes/Document$OutputSettings;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0
.end method

.method public charset(Ljava/nio/charset/Charset;)V
    .locals 1

    const/4 v0, 0x1

    .line 272
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Document;->updateMetaCharsetElement(Z)V

    .line 273
    iget-object v0, p0, Lorg/jsoup/nodes/Document;->outputSettings:Lorg/jsoup/nodes/Document$OutputSettings;

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/Document$OutputSettings;->charset(Ljava/nio/charset/Charset;)Lorg/jsoup/nodes/Document$OutputSettings;

    .line 274
    invoke-direct {p0}, Lorg/jsoup/nodes/Document;->ensureMetaCharsetElement()V

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 26
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->clone()Lorg/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/jsoup/nodes/Document;
    .locals 2

    .line 320
    invoke-super {p0}, Lorg/jsoup/nodes/Element;->clone()Lorg/jsoup/nodes/Element;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Document;

    .line 321
    iget-object v1, p0, Lorg/jsoup/nodes/Document;->outputSettings:Lorg/jsoup/nodes/Document$OutputSettings;

    invoke-virtual {v1}, Lorg/jsoup/nodes/Document$OutputSettings;->clone()Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object v1

    iput-object v1, v0, Lorg/jsoup/nodes/Document;->outputSettings:Lorg/jsoup/nodes/Document$OutputSettings;

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/jsoup/nodes/Element;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->clone()Lorg/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/jsoup/nodes/Node;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->clone()Lorg/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public connection()Lorg/jsoup/Connection;
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/jsoup/nodes/Document;->connection:Lorg/jsoup/Connection;

    if-nez v0, :cond_0

    .line 92
    invoke-static {}, Lorg/jsoup/Jsoup;->newSession()Lorg/jsoup/Connection;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public connection(Lorg/jsoup/Connection;)Lorg/jsoup/nodes/Document;
    .locals 0

    .line 659
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 660
    iput-object p1, p0, Lorg/jsoup/nodes/Document;->connection:Lorg/jsoup/Connection;

    return-object p0
.end method

.method public createElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 3

    .line 223
    new-instance v0, Lorg/jsoup/nodes/Element;

    iget-object v1, p0, Lorg/jsoup/nodes/Document;->parser:Lorg/jsoup/parser/Parser;

    invoke-virtual {v1}, Lorg/jsoup/parser/Parser;->defaultNamespace()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/jsoup/parser/ParseSettings;->preserveCase:Lorg/jsoup/parser/ParseSettings;

    invoke-static {p1, v1, v2}, Lorg/jsoup/parser/Tag;->valueOf(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/ParseSettings;)Lorg/jsoup/parser/Tag;

    move-result-object p1

    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->baseUri()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;)V

    return-object v0
.end method

.method public documentType()Lorg/jsoup/nodes/DocumentType;
    .locals 3

    .line 102
    iget-object v0, p0, Lorg/jsoup/nodes/Document;->childNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Node;

    .line 103
    instance-of v2, v1, Lorg/jsoup/nodes/DocumentType;

    if-eqz v2, :cond_1

    .line 104
    check-cast v1, Lorg/jsoup/nodes/DocumentType;

    return-object v1

    .line 105
    :cond_1
    instance-of v1, v1, Lorg/jsoup/nodes/LeafNode;

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public expectForm(Ljava/lang/String;)Lorg/jsoup/nodes/FormElement;
    .locals 3

    .line 185
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v0

    .line 186
    invoke-virtual {v0}, Lorg/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Element;

    .line 187
    instance-of v2, v1, Lorg/jsoup/nodes/FormElement;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/jsoup/nodes/FormElement;

    return-object v1

    .line 189
    :cond_1
    const-string v0, "No form elements matched the query \'%s\' in the document."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/jsoup/helper/Validate;->fail(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public forms()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jsoup/nodes/FormElement;",
            ">;"
        }
    .end annotation

    .line 173
    const-string v0, "form"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/select/Elements;->forms()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public head()Lorg/jsoup/nodes/Element;
    .locals 3

    .line 135
    invoke-direct {p0}, Lorg/jsoup/nodes/Document;->htmlEl()Lorg/jsoup/nodes/Element;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->firstElementChild()Lorg/jsoup/nodes/Element;

    move-result-object v1

    .line 137
    :goto_0
    const-string v2, "head"

    if-eqz v1, :cond_1

    .line 138
    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/Element;->nameIs(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 140
    :cond_0
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->nextElementSibling()Lorg/jsoup/nodes/Element;

    move-result-object v1

    goto :goto_0

    .line 142
    :cond_1
    invoke-virtual {v0, v2}, Lorg/jsoup/nodes/Element;->prependElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    return-object v0
.end method

.method public location()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/jsoup/nodes/Document;->location:Ljava/lang/String;

    return-object v0
.end method

.method public nodeName()Ljava/lang/String;
    .locals 1

    .line 244
    const-string v0, "#document"

    return-object v0
.end method

.method public outerHtml()Ljava/lang/String;
    .locals 1

    .line 228
    invoke-super {p0}, Lorg/jsoup/nodes/Element;->html()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public outputSettings()Lorg/jsoup/nodes/Document$OutputSettings;
    .locals 1

    .line 603
    iget-object v0, p0, Lorg/jsoup/nodes/Document;->outputSettings:Lorg/jsoup/nodes/Document$OutputSettings;

    return-object v0
.end method

.method public outputSettings(Lorg/jsoup/nodes/Document$OutputSettings;)Lorg/jsoup/nodes/Document;
    .locals 0

    .line 612
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 613
    iput-object p1, p0, Lorg/jsoup/nodes/Document;->outputSettings:Lorg/jsoup/nodes/Document$OutputSettings;

    return-object p0
.end method

.method public parser(Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;
    .locals 0

    .line 645
    iput-object p1, p0, Lorg/jsoup/nodes/Document;->parser:Lorg/jsoup/parser/Parser;

    return-object p0
.end method

.method public parser()Lorg/jsoup/parser/Parser;
    .locals 1

    .line 635
    iget-object v0, p0, Lorg/jsoup/nodes/Document;->parser:Lorg/jsoup/parser/Parser;

    return-object v0
.end method

.method public quirksMode()Lorg/jsoup/nodes/Document$QuirksMode;
    .locals 1

    .line 622
    iget-object v0, p0, Lorg/jsoup/nodes/Document;->quirksMode:Lorg/jsoup/nodes/Document$QuirksMode;

    return-object v0
.end method

.method public quirksMode(Lorg/jsoup/nodes/Document$QuirksMode;)Lorg/jsoup/nodes/Document;
    .locals 0

    .line 626
    iput-object p1, p0, Lorg/jsoup/nodes/Document;->quirksMode:Lorg/jsoup/nodes/Document$QuirksMode;

    return-object p0
.end method

.method public shallowClone()Lorg/jsoup/nodes/Document;
    .locals 3

    .line 327
    new-instance v0, Lorg/jsoup/nodes/Document;

    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->tag()Lorg/jsoup/parser/Tag;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/parser/Tag;->namespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->baseUri()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/jsoup/nodes/Document;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-object v1, p0, Lorg/jsoup/nodes/Document;->attributes:Lorg/jsoup/nodes/Attributes;

    if-eqz v1, :cond_0

    .line 329
    iget-object v1, p0, Lorg/jsoup/nodes/Document;->attributes:Lorg/jsoup/nodes/Attributes;

    invoke-virtual {v1}, Lorg/jsoup/nodes/Attributes;->clone()Lorg/jsoup/nodes/Attributes;

    move-result-object v1

    iput-object v1, v0, Lorg/jsoup/nodes/Document;->attributes:Lorg/jsoup/nodes/Attributes;

    .line 330
    :cond_0
    iget-object v1, p0, Lorg/jsoup/nodes/Document;->outputSettings:Lorg/jsoup/nodes/Document$OutputSettings;

    invoke-virtual {v1}, Lorg/jsoup/nodes/Document$OutputSettings;->clone()Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object v1

    iput-object v1, v0, Lorg/jsoup/nodes/Document;->outputSettings:Lorg/jsoup/nodes/Document$OutputSettings;

    return-object v0
.end method

.method public bridge synthetic shallowClone()Lorg/jsoup/nodes/Element;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->shallowClone()Lorg/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic shallowClone()Lorg/jsoup/nodes/Node;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->shallowClone()Lorg/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public text(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 1

    .line 238
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->body()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/Element;->text(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    return-object p0
.end method

.method public title()Ljava/lang/String;
    .locals 2

    .line 199
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->head()Lorg/jsoup/nodes/Element;

    move-result-object v0

    sget-object v1, Lorg/jsoup/nodes/Document;->titleEval:Lorg/jsoup/select/Evaluator;

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Element;->selectFirst(Lorg/jsoup/select/Evaluator;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jsoup/internal/StringUtil;->normaliseWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public title(Ljava/lang/String;)V
    .locals 2

    .line 210
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 211
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->head()Lorg/jsoup/nodes/Element;

    move-result-object v0

    sget-object v1, Lorg/jsoup/nodes/Document;->titleEval:Lorg/jsoup/select/Evaluator;

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Element;->selectFirst(Lorg/jsoup/select/Evaluator;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    if-nez v0, :cond_0

    .line 213
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->head()Lorg/jsoup/nodes/Element;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Element;->appendElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    .line 214
    :cond_0
    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/Element;->text(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    return-void
.end method

.method public updateMetaCharsetElement(Z)V
    .locals 0

    .line 303
    iput-boolean p1, p0, Lorg/jsoup/nodes/Document;->updateMetaCharset:Z

    return-void
.end method

.method public updateMetaCharsetElement()Z
    .locals 1

    .line 315
    iget-boolean v0, p0, Lorg/jsoup/nodes/Document;->updateMetaCharset:Z

    return v0
.end method
