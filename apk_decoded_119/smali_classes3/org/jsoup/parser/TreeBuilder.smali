.class abstract Lorg/jsoup/parser/TreeBuilder;
.super Ljava/lang/Object;
.source "TreeBuilder.java"


# instance fields
.field baseUri:Ljava/lang/String;

.field currentToken:Lorg/jsoup/parser/Token;

.field doc:Lorg/jsoup/nodes/Document;

.field private final end:Lorg/jsoup/parser/Token$EndTag;

.field protected parser:Lorg/jsoup/parser/Parser;

.field reader:Lorg/jsoup/parser/CharacterReader;

.field seenTags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jsoup/parser/Tag;",
            ">;"
        }
    .end annotation
.end field

.field settings:Lorg/jsoup/parser/ParseSettings;

.field stack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/jsoup/nodes/Element;",
            ">;"
        }
    .end annotation
.end field

.field private start:Lorg/jsoup/parser/Token$StartTag;

.field tokeniser:Lorg/jsoup/parser/Tokeniser;

.field trackSourceRange:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lorg/jsoup/parser/Token$EndTag;

    invoke-direct {v0, p0}, Lorg/jsoup/parser/Token$EndTag;-><init>(Lorg/jsoup/parser/TreeBuilder;)V

    iput-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->end:Lorg/jsoup/parser/Token$EndTag;

    return-void
.end method

.method private trackNodePosition(Lorg/jsoup/nodes/Node;Z)V
    .locals 5

    .line 250
    iget-boolean v0, p0, Lorg/jsoup/parser/TreeBuilder;->trackSourceRange:Z

    if-nez v0, :cond_0

    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->currentToken:Lorg/jsoup/parser/Token;

    .line 253
    invoke-virtual {v0}, Lorg/jsoup/parser/Token;->startPos()I

    move-result v1

    .line 254
    invoke-virtual {v0}, Lorg/jsoup/parser/Token;->endPos()I

    move-result v2

    .line 257
    instance-of v3, p1, Lorg/jsoup/nodes/Element;

    if-eqz v3, :cond_5

    .line 258
    move-object v3, p1

    check-cast v3, Lorg/jsoup/nodes/Element;

    .line 259
    invoke-virtual {v0}, Lorg/jsoup/parser/Token;->isEOF()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 260
    invoke-virtual {v3}, Lorg/jsoup/nodes/Element;->endSourceRange()Lorg/jsoup/nodes/Range;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/Range;->isTracked()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 262
    :cond_1
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->reader:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->pos()I

    move-result v1

    :cond_2
    :goto_0
    move v2, v1

    goto :goto_2

    :cond_3
    if-eqz p2, :cond_4

    .line 264
    invoke-virtual {v0}, Lorg/jsoup/parser/Token;->isStartTag()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/jsoup/parser/Token;->asStartTag()Lorg/jsoup/parser/Token$StartTag;

    move-result-object v0

    iget-object v0, v0, Lorg/jsoup/parser/Token$StartTag;->normalName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    .line 268
    :cond_4
    invoke-virtual {v3}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jsoup/parser/Tag;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v3}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jsoup/parser/Tag;->isSelfClosing()Z

    move-result v4

    if-nez v4, :cond_5

    .line 269
    invoke-virtual {v0}, Lorg/jsoup/parser/Token;->isEndTag()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/jsoup/parser/Token;->asEndTag()Lorg/jsoup/parser/Token$EndTag;

    move-result-object v0

    iget-object v0, v0, Lorg/jsoup/parser/Token$EndTag;->normalName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :goto_1
    goto :goto_0

    .line 276
    :cond_5
    :goto_2
    new-instance v0, Lorg/jsoup/nodes/Range$Position;

    iget-object v3, p0, Lorg/jsoup/parser/TreeBuilder;->reader:Lorg/jsoup/parser/CharacterReader;

    .line 277
    invoke-virtual {v3, v1}, Lorg/jsoup/parser/CharacterReader;->lineNumber(I)I

    move-result v3

    iget-object v4, p0, Lorg/jsoup/parser/TreeBuilder;->reader:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v4, v1}, Lorg/jsoup/parser/CharacterReader;->columnNumber(I)I

    move-result v4

    invoke-direct {v0, v1, v3, v4}, Lorg/jsoup/nodes/Range$Position;-><init>(III)V

    .line 278
    new-instance v1, Lorg/jsoup/nodes/Range$Position;

    iget-object v3, p0, Lorg/jsoup/parser/TreeBuilder;->reader:Lorg/jsoup/parser/CharacterReader;

    .line 279
    invoke-virtual {v3, v2}, Lorg/jsoup/parser/CharacterReader;->lineNumber(I)I

    move-result v3

    iget-object v4, p0, Lorg/jsoup/parser/TreeBuilder;->reader:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v4, v2}, Lorg/jsoup/parser/CharacterReader;->columnNumber(I)I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lorg/jsoup/nodes/Range$Position;-><init>(III)V

    .line 280
    new-instance v2, Lorg/jsoup/nodes/Range;

    invoke-direct {v2, v0, v1}, Lorg/jsoup/nodes/Range;-><init>(Lorg/jsoup/nodes/Range$Position;Lorg/jsoup/nodes/Range$Position;)V

    .line 281
    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->attributes()Lorg/jsoup/nodes/Attributes;

    move-result-object p1

    if-eqz p2, :cond_6

    const-string p2, "jsoup.start"

    goto :goto_3

    :cond_6
    const-string p2, "jsoup.end"

    :goto_3
    invoke-virtual {p1, p2, v2}, Lorg/jsoup/nodes/Attributes;->userData(Ljava/lang/String;Ljava/lang/Object;)Lorg/jsoup/nodes/Attributes;

    return-void
.end method


# virtual methods
.method currentElement()Lorg/jsoup/nodes/Element;
    .locals 2

    .line 152
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 153
    iget-object v1, p0, Lorg/jsoup/parser/TreeBuilder;->stack:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->doc:Lorg/jsoup/nodes/Document;

    :goto_0
    return-object v0
.end method

.method currentElementIs(Ljava/lang/String;)Z
    .locals 3

    .line 162
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 164
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/parser/TreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 165
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 166
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jsoup/parser/Tag;->namespace()Ljava/lang/String;

    move-result-object p1

    const-string v0, "http://www.w3.org/1999/xhtml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method currentElementIs(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 176
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 178
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/parser/TreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 179
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 180
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jsoup/parser/Tag;->namespace()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method defaultNamespace()Ljava/lang/String;
    .locals 1

    .line 230
    const-string v0, "http://www.w3.org/1999/xhtml"

    return-object v0
.end method

.method abstract defaultSettings()Lorg/jsoup/parser/ParseSettings;
.end method

.method error(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 188
    move-object v1, v0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lorg/jsoup/parser/TreeBuilder;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .line 197
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->parser:Lorg/jsoup/parser/Parser;

    invoke-virtual {v0}, Lorg/jsoup/parser/Parser;->getErrors()Lorg/jsoup/parser/ParseErrorList;

    move-result-object v0

    .line 198
    invoke-virtual {v0}, Lorg/jsoup/parser/ParseErrorList;->canAddError()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    new-instance v1, Lorg/jsoup/parser/ParseError;

    iget-object v2, p0, Lorg/jsoup/parser/TreeBuilder;->reader:Lorg/jsoup/parser/CharacterReader;

    invoke-direct {v1, v2, p1, p2}, Lorg/jsoup/parser/ParseError;-><init>(Lorg/jsoup/parser/CharacterReader;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/ParseErrorList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method initialiseParse(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/parser/Parser;)V
    .locals 2

    .line 40
    const-string v0, "input"

    invoke-static {p1, v0}, Lorg/jsoup/helper/Validate;->notNullParam(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    const-string v0, "baseUri"

    invoke-static {p2, v0}, Lorg/jsoup/helper/Validate;->notNullParam(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-static {p3}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 44
    new-instance v0, Lorg/jsoup/nodes/Document;

    invoke-virtual {p3}, Lorg/jsoup/parser/Parser;->defaultNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lorg/jsoup/nodes/Document;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->doc:Lorg/jsoup/nodes/Document;

    .line 45
    invoke-virtual {v0, p3}, Lorg/jsoup/nodes/Document;->parser(Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;

    .line 46
    iput-object p3, p0, Lorg/jsoup/parser/TreeBuilder;->parser:Lorg/jsoup/parser/Parser;

    .line 47
    invoke-virtual {p3}, Lorg/jsoup/parser/Parser;->settings()Lorg/jsoup/parser/ParseSettings;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->settings:Lorg/jsoup/parser/ParseSettings;

    .line 48
    new-instance v0, Lorg/jsoup/parser/CharacterReader;

    invoke-direct {v0, p1}, Lorg/jsoup/parser/CharacterReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->reader:Lorg/jsoup/parser/CharacterReader;

    .line 49
    invoke-virtual {p3}, Lorg/jsoup/parser/Parser;->isTrackPosition()Z

    move-result p1

    iput-boolean p1, p0, Lorg/jsoup/parser/TreeBuilder;->trackSourceRange:Z

    .line 50
    iget-object p1, p0, Lorg/jsoup/parser/TreeBuilder;->reader:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {p3}, Lorg/jsoup/parser/Parser;->isTrackErrors()Z

    move-result p3

    if-nez p3, :cond_1

    iget-boolean p3, p0, Lorg/jsoup/parser/TreeBuilder;->trackSourceRange:Z

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p3, 0x1

    :goto_1
    invoke-virtual {p1, p3}, Lorg/jsoup/parser/CharacterReader;->trackNewlines(Z)V

    .line 51
    new-instance p1, Lorg/jsoup/parser/Tokeniser;

    invoke-direct {p1, p0}, Lorg/jsoup/parser/Tokeniser;-><init>(Lorg/jsoup/parser/TreeBuilder;)V

    iput-object p1, p0, Lorg/jsoup/parser/TreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    .line 52
    new-instance p1, Ljava/util/ArrayList;

    const/16 p3, 0x20

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lorg/jsoup/parser/TreeBuilder;->stack:Ljava/util/ArrayList;

    .line 53
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/jsoup/parser/TreeBuilder;->seenTags:Ljava/util/Map;

    .line 54
    new-instance p1, Lorg/jsoup/parser/Token$StartTag;

    invoke-direct {p1, p0}, Lorg/jsoup/parser/Token$StartTag;-><init>(Lorg/jsoup/parser/TreeBuilder;)V

    iput-object p1, p0, Lorg/jsoup/parser/TreeBuilder;->start:Lorg/jsoup/parser/Token$StartTag;

    .line 55
    iput-object p1, p0, Lorg/jsoup/parser/TreeBuilder;->currentToken:Lorg/jsoup/parser/Token;

    .line 56
    iput-object p2, p0, Lorg/jsoup/parser/TreeBuilder;->baseUri:Ljava/lang/String;

    return-void
.end method

.method isContentForTagData(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method abstract newInstance()Lorg/jsoup/parser/TreeBuilder;
.end method

.method onNodeClosed(Lorg/jsoup/nodes/Node;)V
    .locals 1

    const/4 v0, 0x0

    .line 246
    invoke-direct {p0, p1, v0}, Lorg/jsoup/parser/TreeBuilder;->trackNodePosition(Lorg/jsoup/nodes/Node;Z)V

    return-void
.end method

.method onNodeInserted(Lorg/jsoup/nodes/Node;)V
    .locals 1

    const/4 v0, 0x1

    .line 238
    invoke-direct {p0, p1, v0}, Lorg/jsoup/parser/TreeBuilder;->trackNodePosition(Lorg/jsoup/nodes/Node;Z)V

    return-void
.end method

.method parse(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;
    .locals 0

    .line 60
    invoke-virtual {p0, p1, p2, p3}, Lorg/jsoup/parser/TreeBuilder;->initialiseParse(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/parser/Parser;)V

    .line 61
    invoke-virtual {p0}, Lorg/jsoup/parser/TreeBuilder;->runParser()V

    .line 64
    iget-object p1, p0, Lorg/jsoup/parser/TreeBuilder;->reader:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {p1}, Lorg/jsoup/parser/CharacterReader;->close()V

    const/4 p1, 0x0

    .line 65
    iput-object p1, p0, Lorg/jsoup/parser/TreeBuilder;->reader:Lorg/jsoup/parser/CharacterReader;

    .line 66
    iput-object p1, p0, Lorg/jsoup/parser/TreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    .line 67
    iput-object p1, p0, Lorg/jsoup/parser/TreeBuilder;->stack:Ljava/util/ArrayList;

    .line 68
    iput-object p1, p0, Lorg/jsoup/parser/TreeBuilder;->seenTags:Ljava/util/Map;

    .line 70
    iget-object p1, p0, Lorg/jsoup/parser/TreeBuilder;->doc:Lorg/jsoup/nodes/Document;

    return-object p1
.end method

.method abstract parseFragment(Ljava/lang/String;Lorg/jsoup/nodes/Element;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Ljava/util/List;
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
.end method

.method final pop()Lorg/jsoup/nodes/Element;
    .locals 2

    .line 131
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 132
    iget-object v1, p0, Lorg/jsoup/parser/TreeBuilder;->stack:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    .line 133
    invoke-virtual {p0, v0}, Lorg/jsoup/parser/TreeBuilder;->onNodeClosed(Lorg/jsoup/nodes/Node;)V

    return-object v0
.end method

.method abstract process(Lorg/jsoup/parser/Token;)Z
.end method

.method processEndTag(Ljava/lang/String;)Z
    .locals 2

    .line 120
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->currentToken:Lorg/jsoup/parser/Token;

    iget-object v1, p0, Lorg/jsoup/parser/TreeBuilder;->end:Lorg/jsoup/parser/Token$EndTag;

    if-ne v0, v1, :cond_0

    .line 121
    new-instance v0, Lorg/jsoup/parser/Token$EndTag;

    invoke-direct {v0, p0}, Lorg/jsoup/parser/Token$EndTag;-><init>(Lorg/jsoup/parser/TreeBuilder;)V

    invoke-virtual {v0, p1}, Lorg/jsoup/parser/Token$EndTag;->name(Ljava/lang/String;)Lorg/jsoup/parser/Token$Tag;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/TreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result p1

    return p1

    .line 123
    :cond_0
    invoke-virtual {v1}, Lorg/jsoup/parser/Token$EndTag;->reset()Lorg/jsoup/parser/Token$Tag;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jsoup/parser/Token$Tag;->name(Ljava/lang/String;)Lorg/jsoup/parser/Token$Tag;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/TreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result p1

    return p1
.end method

.method processStartTag(Ljava/lang/String;)Z
    .locals 2

    .line 102
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->start:Lorg/jsoup/parser/Token$StartTag;

    .line 103
    iget-object v1, p0, Lorg/jsoup/parser/TreeBuilder;->currentToken:Lorg/jsoup/parser/Token;

    if-ne v1, v0, :cond_0

    .line 104
    new-instance v0, Lorg/jsoup/parser/Token$StartTag;

    invoke-direct {v0, p0}, Lorg/jsoup/parser/Token$StartTag;-><init>(Lorg/jsoup/parser/TreeBuilder;)V

    invoke-virtual {v0, p1}, Lorg/jsoup/parser/Token$StartTag;->name(Ljava/lang/String;)Lorg/jsoup/parser/Token$Tag;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/TreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result p1

    return p1

    .line 106
    :cond_0
    invoke-virtual {v0}, Lorg/jsoup/parser/Token$StartTag;->reset()Lorg/jsoup/parser/Token$Tag;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jsoup/parser/Token$Tag;->name(Ljava/lang/String;)Lorg/jsoup/parser/Token$Tag;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/TreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result p1

    return p1
.end method

.method processStartTag(Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)Z
    .locals 2

    .line 110
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->start:Lorg/jsoup/parser/Token$StartTag;

    .line 111
    iget-object v1, p0, Lorg/jsoup/parser/TreeBuilder;->currentToken:Lorg/jsoup/parser/Token;

    if-ne v1, v0, :cond_0

    .line 112
    new-instance v0, Lorg/jsoup/parser/Token$StartTag;

    invoke-direct {v0, p0}, Lorg/jsoup/parser/Token$StartTag;-><init>(Lorg/jsoup/parser/TreeBuilder;)V

    invoke-virtual {v0, p1, p2}, Lorg/jsoup/parser/Token$StartTag;->nameAttr(Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)Lorg/jsoup/parser/Token$StartTag;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/TreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result p1

    return p1

    .line 114
    :cond_0
    invoke-virtual {v0}, Lorg/jsoup/parser/Token$StartTag;->reset()Lorg/jsoup/parser/Token$Tag;

    .line 115
    invoke-virtual {v0, p1, p2}, Lorg/jsoup/parser/Token$StartTag;->nameAttr(Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)Lorg/jsoup/parser/Token$StartTag;

    .line 116
    invoke-virtual {p0, v0}, Lorg/jsoup/parser/TreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result p1

    return p1
.end method

.method final push(Lorg/jsoup/nodes/Element;)V
    .locals 1

    .line 142
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/TreeBuilder;->onNodeInserted(Lorg/jsoup/nodes/Node;)V

    return-void
.end method

.method runParser()V
    .locals 4

    .line 82
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    .line 83
    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->EOF:Lorg/jsoup/parser/Token$TokenType;

    .line 86
    :goto_0
    invoke-virtual {v0}, Lorg/jsoup/parser/Tokeniser;->read()Lorg/jsoup/parser/Token;

    move-result-object v2

    .line 87
    iput-object v2, p0, Lorg/jsoup/parser/TreeBuilder;->currentToken:Lorg/jsoup/parser/Token;

    .line 88
    invoke-virtual {p0, v2}, Lorg/jsoup/parser/TreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 89
    iget-object v3, v2, Lorg/jsoup/parser/Token;->type:Lorg/jsoup/parser/Token$TokenType;

    if-ne v3, v1, :cond_1

    .line 95
    :goto_1
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/jsoup/parser/TreeBuilder;->pop()Lorg/jsoup/nodes/Element;

    goto :goto_1

    :cond_0
    return-void

    .line 91
    :cond_1
    invoke-virtual {v2}, Lorg/jsoup/parser/Token;->reset()Lorg/jsoup/parser/Token;

    goto :goto_0
.end method

.method tagFor(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/ParseSettings;)Lorg/jsoup/parser/Tag;
    .locals 2

    .line 211
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->seenTags:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/parser/Tag;

    if-eqz v0, :cond_1

    .line 212
    invoke-virtual {v0}, Lorg/jsoup/parser/Tag;->namespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    .line 214
    :cond_1
    :goto_0
    invoke-static {p1, p2, p3}, Lorg/jsoup/parser/Tag;->valueOf(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/ParseSettings;)Lorg/jsoup/parser/Tag;

    move-result-object p2

    .line 215
    iget-object p3, p0, Lorg/jsoup/parser/TreeBuilder;->seenTags:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method tagFor(Ljava/lang/String;Lorg/jsoup/parser/ParseSettings;)Lorg/jsoup/parser/Tag;
    .locals 1

    .line 222
    invoke-virtual {p0}, Lorg/jsoup/parser/TreeBuilder;->defaultNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lorg/jsoup/parser/TreeBuilder;->tagFor(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/ParseSettings;)Lorg/jsoup/parser/Tag;

    move-result-object p1

    return-object p1
.end method
