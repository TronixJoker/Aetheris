.class public Lorg/jsoup/parser/HtmlTreeBuilder;
.super Lorg/jsoup/parser/TreeBuilder;
.source "HtmlTreeBuilder.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final MaxScopeSearchDepth:I = 0x64

.field static final TagMathMlTextIntegration:[Ljava/lang/String;

.field static final TagSearchButton:[Ljava/lang/String;

.field static final TagSearchEndTags:[Ljava/lang/String;

.field static final TagSearchList:[Ljava/lang/String;

.field static final TagSearchSelectScope:[Ljava/lang/String;

.field static final TagSearchSpecial:[Ljava/lang/String;

.field static final TagSearchTableScope:[Ljava/lang/String;

.field static final TagSvgHtmlIntegration:[Ljava/lang/String;

.field static final TagThoroughSearchEndTags:[Ljava/lang/String;

.field static final TagsSearchInScope:[Ljava/lang/String;

.field private static final maxQueueDepth:I = 0x100

.field private static final maxUsedFormattingElements:I = 0xc


# instance fields
.field private baseUriSetFromDoc:Z

.field private contextElement:Lorg/jsoup/nodes/Element;

.field private emptyEnd:Lorg/jsoup/parser/Token$EndTag;

.field private formElement:Lorg/jsoup/nodes/FormElement;

.field private formattingElements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/jsoup/nodes/Element;",
            ">;"
        }
    .end annotation
.end field

.field private fosterInserts:Z

.field private fragmentParsing:Z

.field private framesetOk:Z

.field private headElement:Lorg/jsoup/nodes/Element;

.field private originalState:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field private pendingTableCharacters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jsoup/parser/Token$Character;",
            ">;"
        }
    .end annotation
.end field

.field private final specificScopeTarget:[Ljava/lang/String;

.field private state:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field private tmplInsertMode:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/jsoup/parser/HtmlTreeBuilderState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 24

    const/16 v0, 0x8

    .line 32
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "applet"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v4, "caption"

    aput-object v4, v1, v2

    const/4 v5, 0x2

    const-string v6, "html"

    aput-object v6, v1, v5

    const-string v7, "marquee"

    const/4 v8, 0x3

    aput-object v7, v1, v8

    const-string v7, "object"

    const/4 v9, 0x4

    aput-object v7, v1, v9

    const/4 v7, 0x5

    const-string v10, "table"

    aput-object v10, v1, v7

    const/4 v11, 0x6

    const-string v12, "td"

    aput-object v12, v1, v11

    const/4 v13, 0x7

    const-string v14, "th"

    aput-object v14, v1, v13

    sput-object v1, Lorg/jsoup/parser/HtmlTreeBuilder;->TagsSearchInScope:[Ljava/lang/String;

    .line 33
    new-array v1, v5, [Ljava/lang/String;

    const-string v15, "ol"

    aput-object v15, v1, v3

    const-string v15, "ul"

    aput-object v15, v1, v2

    sput-object v1, Lorg/jsoup/parser/HtmlTreeBuilder;->TagSearchList:[Ljava/lang/String;

    .line 34
    new-array v1, v2, [Ljava/lang/String;

    const-string v15, "button"

    aput-object v15, v1, v3

    sput-object v1, Lorg/jsoup/parser/HtmlTreeBuilder;->TagSearchButton:[Ljava/lang/String;

    .line 35
    new-array v1, v5, [Ljava/lang/String;

    aput-object v6, v1, v3

    aput-object v10, v1, v2

    sput-object v1, Lorg/jsoup/parser/HtmlTreeBuilder;->TagSearchTableScope:[Ljava/lang/String;

    .line 36
    new-array v1, v5, [Ljava/lang/String;

    const-string v15, "optgroup"

    aput-object v15, v1, v3

    const-string v16, "option"

    aput-object v16, v1, v2

    sput-object v1, Lorg/jsoup/parser/HtmlTreeBuilder;->TagSearchSelectScope:[Ljava/lang/String;

    const/16 v1, 0xa

    .line 37
    new-array v0, v1, [Ljava/lang/String;

    const-string v18, "dd"

    aput-object v18, v0, v3

    const-string v19, "dt"

    aput-object v19, v0, v2

    const-string v20, "li"

    aput-object v20, v0, v5

    aput-object v15, v0, v8

    aput-object v16, v0, v9

    const-string v21, "p"

    aput-object v21, v0, v7

    const-string v22, "rb"

    aput-object v22, v0, v11

    const-string v22, "rp"

    aput-object v22, v0, v13

    const-string v22, "rt"

    const/16 v17, 0x8

    aput-object v22, v0, v17

    const-string v22, "rtc"

    const/16 v23, 0x9

    aput-object v22, v0, v23

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilder;->TagSearchEndTags:[Ljava/lang/String;

    const/16 v0, 0x12

    .line 38
    new-array v0, v0, [Ljava/lang/String;

    aput-object v4, v0, v3

    const-string v22, "colgroup"

    aput-object v22, v0, v2

    aput-object v18, v0, v5

    aput-object v19, v0, v8

    aput-object v20, v0, v9

    aput-object v15, v0, v7

    aput-object v16, v0, v11

    aput-object v21, v0, v13

    const-string v15, "rb"

    const/16 v16, 0x8

    aput-object v15, v0, v16

    const-string v15, "rp"

    aput-object v15, v0, v23

    const-string v15, "rt"

    aput-object v15, v0, v1

    const/16 v15, 0xb

    const-string v16, "rtc"

    aput-object v16, v0, v15

    const/16 v15, 0xc

    const-string v16, "tbody"

    aput-object v16, v0, v15

    const/16 v15, 0xd

    aput-object v12, v0, v15

    const/16 v15, 0xe

    const-string v16, "tfoot"

    aput-object v16, v0, v15

    const/16 v15, 0xf

    aput-object v14, v0, v15

    const/16 v15, 0x10

    const-string v16, "thead"

    aput-object v16, v0, v15

    const/16 v15, 0x11

    const-string v16, "tr"

    aput-object v16, v0, v15

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilder;->TagThoroughSearchEndTags:[Ljava/lang/String;

    const/16 v0, 0x4f

    .line 39
    new-array v0, v0, [Ljava/lang/String;

    const-string v15, "address"

    aput-object v15, v0, v3

    const-string v15, "applet"

    aput-object v15, v0, v2

    const-string v15, "area"

    aput-object v15, v0, v5

    const-string v15, "article"

    aput-object v15, v0, v8

    const-string v15, "aside"

    aput-object v15, v0, v9

    const-string v15, "base"

    aput-object v15, v0, v7

    const-string v15, "basefont"

    aput-object v15, v0, v11

    const-string v11, "bgsound"

    aput-object v11, v0, v13

    const-string v11, "blockquote"

    const/16 v13, 0x8

    aput-object v11, v0, v13

    const-string v11, "body"

    aput-object v11, v0, v23

    const-string v11, "br"

    aput-object v11, v0, v1

    const/16 v1, 0xb

    const-string v11, "button"

    aput-object v11, v0, v1

    const/16 v1, 0xc

    aput-object v4, v0, v1

    const/16 v1, 0xd

    const-string v4, "center"

    aput-object v4, v0, v1

    const/16 v1, 0xe

    const-string v4, "col"

    aput-object v4, v0, v1

    const/16 v1, 0xf

    const-string v4, "colgroup"

    aput-object v4, v0, v1

    const/16 v1, 0x10

    const-string v4, "command"

    aput-object v4, v0, v1

    const/16 v1, 0x11

    aput-object v18, v0, v1

    const/16 v1, 0x12

    const-string v4, "details"

    aput-object v4, v0, v1

    const/16 v1, 0x13

    const-string v4, "dir"

    aput-object v4, v0, v1

    const/16 v1, 0x14

    const-string v4, "div"

    aput-object v4, v0, v1

    const/16 v1, 0x15

    const-string v4, "dl"

    aput-object v4, v0, v1

    const/16 v1, 0x16

    aput-object v19, v0, v1

    const/16 v1, 0x17

    const-string v4, "embed"

    aput-object v4, v0, v1

    const/16 v1, 0x18

    const-string v4, "fieldset"

    aput-object v4, v0, v1

    const/16 v1, 0x19

    const-string v4, "figcaption"

    aput-object v4, v0, v1

    const/16 v1, 0x1a

    const-string v4, "figure"

    aput-object v4, v0, v1

    const/16 v1, 0x1b

    const-string v4, "footer"

    aput-object v4, v0, v1

    const/16 v1, 0x1c

    const-string v4, "form"

    aput-object v4, v0, v1

    const/16 v1, 0x1d

    const-string v4, "frame"

    aput-object v4, v0, v1

    const/16 v1, 0x1e

    const-string v4, "frameset"

    aput-object v4, v0, v1

    const/16 v1, 0x1f

    const-string v4, "h1"

    aput-object v4, v0, v1

    const/16 v1, 0x20

    const-string v4, "h2"

    aput-object v4, v0, v1

    const/16 v1, 0x21

    const-string v4, "h3"

    aput-object v4, v0, v1

    const/16 v1, 0x22

    const-string v4, "h4"

    aput-object v4, v0, v1

    const/16 v1, 0x23

    const-string v4, "h5"

    aput-object v4, v0, v1

    const/16 v1, 0x24

    const-string v4, "h6"

    aput-object v4, v0, v1

    const/16 v1, 0x25

    const-string v4, "head"

    aput-object v4, v0, v1

    const/16 v1, 0x26

    const-string v4, "header"

    aput-object v4, v0, v1

    const/16 v1, 0x27

    const-string v4, "hgroup"

    aput-object v4, v0, v1

    const/16 v1, 0x28

    const-string v4, "hr"

    aput-object v4, v0, v1

    const/16 v1, 0x29

    aput-object v6, v0, v1

    const/16 v1, 0x2a

    const-string v4, "iframe"

    aput-object v4, v0, v1

    const/16 v1, 0x2b

    const-string v4, "img"

    aput-object v4, v0, v1

    const/16 v1, 0x2c

    const-string v4, "input"

    aput-object v4, v0, v1

    const/16 v1, 0x2d

    const-string v4, "isindex"

    aput-object v4, v0, v1

    const/16 v1, 0x2e

    aput-object v20, v0, v1

    const/16 v1, 0x2f

    const-string v4, "link"

    aput-object v4, v0, v1

    const/16 v1, 0x30

    const-string v4, "listing"

    aput-object v4, v0, v1

    const/16 v1, 0x31

    const-string v4, "marquee"

    aput-object v4, v0, v1

    const/16 v1, 0x32

    const-string v4, "menu"

    aput-object v4, v0, v1

    const/16 v1, 0x33

    const-string v4, "meta"

    aput-object v4, v0, v1

    const/16 v1, 0x34

    const-string v4, "nav"

    aput-object v4, v0, v1

    const/16 v1, 0x35

    const-string v4, "noembed"

    aput-object v4, v0, v1

    const/16 v1, 0x36

    const-string v4, "noframes"

    aput-object v4, v0, v1

    const/16 v1, 0x37

    const-string v4, "noscript"

    aput-object v4, v0, v1

    const/16 v1, 0x38

    const-string v4, "object"

    aput-object v4, v0, v1

    const/16 v1, 0x39

    const-string v4, "ol"

    aput-object v4, v0, v1

    const/16 v1, 0x3a

    aput-object v21, v0, v1

    const/16 v1, 0x3b

    const-string v4, "param"

    aput-object v4, v0, v1

    const/16 v1, 0x3c

    const-string v4, "plaintext"

    aput-object v4, v0, v1

    const/16 v1, 0x3d

    const-string v4, "pre"

    aput-object v4, v0, v1

    const/16 v1, 0x3e

    const-string v4, "script"

    aput-object v4, v0, v1

    const/16 v1, 0x3f

    const-string v4, "section"

    aput-object v4, v0, v1

    const/16 v1, 0x40

    const-string v4, "select"

    aput-object v4, v0, v1

    const/16 v1, 0x41

    const-string v4, "style"

    aput-object v4, v0, v1

    const/16 v1, 0x42

    const-string v4, "summary"

    aput-object v4, v0, v1

    const/16 v1, 0x43

    aput-object v10, v0, v1

    const/16 v1, 0x44

    const-string v4, "tbody"

    aput-object v4, v0, v1

    const/16 v1, 0x45

    aput-object v12, v0, v1

    const/16 v1, 0x46

    const-string v4, "textarea"

    aput-object v4, v0, v1

    const/16 v1, 0x47

    const-string v4, "tfoot"

    aput-object v4, v0, v1

    const/16 v1, 0x48

    aput-object v14, v0, v1

    const/16 v1, 0x49

    const-string v4, "thead"

    aput-object v4, v0, v1

    const/16 v1, 0x4a

    const-string v4, "title"

    aput-object v4, v0, v1

    const/16 v1, 0x4b

    const-string v4, "tr"

    aput-object v4, v0, v1

    const/16 v1, 0x4c

    const-string v4, "ul"

    aput-object v4, v0, v1

    const/16 v1, 0x4d

    const-string v4, "wbr"

    aput-object v4, v0, v1

    const/16 v1, 0x4e

    const-string v4, "xmp"

    aput-object v4, v0, v1

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilder;->TagSearchSpecial:[Ljava/lang/String;

    .line 47
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "mi"

    aput-object v1, v0, v3

    const-string v1, "mn"

    aput-object v1, v0, v2

    const-string v1, "mo"

    aput-object v1, v0, v5

    const-string v1, "ms"

    aput-object v1, v0, v8

    const-string v1, "mtext"

    aput-object v1, v0, v9

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilder;->TagMathMlTextIntegration:[Ljava/lang/String;

    .line 48
    new-array v0, v8, [Ljava/lang/String;

    const-string v1, "desc"

    aput-object v1, v0, v3

    const-string v1, "foreignObject"

    aput-object v1, v0, v2

    const-string v1, "title"

    aput-object v1, v0, v5

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilder;->TagSvgHtmlIntegration:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 30
    invoke-direct {p0}, Lorg/jsoup/parser/TreeBuilder;-><init>()V

    const/4 v0, 0x1

    .line 665
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->specificScopeTarget:[Ljava/lang/String;

    return-void
.end method

.method private varargs clearStackToContext([Ljava/lang/String;)V
    .locals 4

    .line 534
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 535
    iget-object v1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Element;

    .line 536
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jsoup/parser/Tag;->namespace()Ljava/lang/String;

    move-result-object v2

    const-string v3, "http://www.w3.org/1999/xhtml"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 537
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lorg/jsoup/internal/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "html"

    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/Element;->nameIs(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 540
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->pop()Lorg/jsoup/nodes/Element;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private doInsertElement(Lorg/jsoup/nodes/Element;Lorg/jsoup/parser/Token;)V
    .locals 2

    .line 391
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    move-result-object p2

    invoke-virtual {p2}, Lorg/jsoup/parser/Tag;->isFormListed()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->formElement:Lorg/jsoup/nodes/FormElement;

    if-eqz p2, :cond_0

    .line 392
    invoke-virtual {p2, p1}, Lorg/jsoup/nodes/FormElement;->addElement(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/FormElement;

    .line 395
    :cond_0
    const-string p2, "xmlns"

    invoke-virtual {p1, p2}, Lorg/jsoup/nodes/Element;->hasAttr(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, p2}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/parser/Tag;->namespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 396
    invoke-virtual {p1, p2}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p2, v0}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "Invalid xmlns attribute [%s] on tag [%s]"

    invoke-virtual {p0, v0, p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 398
    :cond_1
    invoke-virtual {p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->isFosterInserts()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object p2

    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InTableFoster:[Ljava/lang/String;

    invoke-static {p2, v0}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 399
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertInFosterParent(Lorg/jsoup/nodes/Node;)V

    goto :goto_0

    .line 401
    :cond_2
    invoke-virtual {p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    .line 403
    :goto_0
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->push(Lorg/jsoup/nodes/Element;)V

    return-void
.end method

.method private inSpecificScope(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 2

    .line 668
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->specificScopeTarget:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 669
    invoke-direct {p0, v0, p2, p3}, Lorg/jsoup/parser/HtmlTreeBuilder;->inSpecificScope([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private inSpecificScope([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 6

    .line 674
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/16 v2, 0x64

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    add-int/lit8 v0, v0, -0x65

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-lt v1, v0, :cond_5

    .line 679
    iget-object v2, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/Element;

    .line 680
    invoke-virtual {v2}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jsoup/parser/Tag;->namespace()Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://www.w3.org/1999/xhtml"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 682
    :cond_1
    invoke-virtual {v2}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v2

    .line 683
    invoke-static {v2, p1}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 p1, 0x1

    return p1

    .line 685
    :cond_2
    invoke-static {v2, p2}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    return v3

    :cond_3
    if-eqz p3, :cond_4

    .line 687
    invoke-static {v2, p3}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    return v3

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_5
    return v3
.end method

.method static isHtmlIntegration(Lorg/jsoup/nodes/Element;)Z
    .locals 3

    .line 233
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/parser/Tag;->namespace()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://www.w3.org/1998/Math/MathML"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const-string v0, "annotation-xml"

    .line 234
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->nameIs(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    const-string v0, "encoding"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jsoup/internal/Normalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 236
    const-string v2, "text/html"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "application/xhtml+xml"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return v1

    .line 239
    :cond_1
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/parser/Tag;->namespace()Ljava/lang/String;

    move-result-object v0

    const-string v2, "http://www.w3.org/2000/svg"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 240
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilder;->TagSvgHtmlIntegration:[Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/jsoup/internal/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method static isMathmlTextIntegration(Lorg/jsoup/nodes/Element;)Z
    .locals 2

    .line 220
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/parser/Tag;->namespace()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://www.w3.org/1998/Math/MathML"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilder;->TagMathMlTextIntegration:[Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isSameFormattingElement(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z
    .locals 2

    .line 891
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 893
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    move-result-object p0

    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Attributes;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static isSpecial(Lorg/jsoup/nodes/Element;)Z
    .locals 1

    .line 829
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object p0

    .line 830
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilder;->TagSearchSpecial:[Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static onStack(Ljava/util/ArrayList;Lorg/jsoup/nodes/Element;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/jsoup/nodes/Element;",
            ">;",
            "Lorg/jsoup/nodes/Element;",
            ")Z"
        }
    .end annotation

    .line 449
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/16 v2, 0x100

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    add-int/lit16 v0, v0, -0x101

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-lt v1, v0, :cond_2

    .line 452
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/Element;

    if-ne v2, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method private static replaceInQueue(Ljava/util/ArrayList;Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/jsoup/nodes/Element;",
            ">;",
            "Lorg/jsoup/nodes/Element;",
            "Lorg/jsoup/nodes/Element;",
            ")V"
        }
    .end annotation

    .line 566
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 567
    :goto_0
    invoke-static {v0}, Lorg/jsoup/helper/Validate;->isTrue(Z)V

    .line 568
    invoke-virtual {p0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method aboveOnStack(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;
    .locals 2

    .line 546
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 547
    iget-object v1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Element;

    if-ne v1, p1, :cond_0

    .line 549
    iget-object p1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jsoup/nodes/Element;

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method addPendingTableCharacters(Lorg/jsoup/parser/Token$Character;)V
    .locals 1

    .line 781
    invoke-virtual {p1}, Lorg/jsoup/parser/Token$Character;->clone()Lorg/jsoup/parser/Token$Character;

    move-result-object p1

    .line 782
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->pendingTableCharacters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method checkActiveFormattingElements(Lorg/jsoup/nodes/Element;)V
    .locals 4

    .line 871
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    add-int/lit8 v0, v0, -0xd

    const/4 v2, 0x0

    if-gez v0, :cond_0

    move v0, v2

    :cond_0
    :goto_0
    if-lt v1, v0, :cond_4

    .line 875
    iget-object v3, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jsoup/nodes/Element;

    if-nez v3, :cond_1

    goto :goto_1

    .line 879
    :cond_1
    invoke-static {p1, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->isSameFormattingElement(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 883
    iget-object p1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method clearFormattingElementsToLastMarker()V
    .locals 1

    .line 939
    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 940
    invoke-virtual {p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeLastFormattingElement()Lorg/jsoup/nodes/Element;

    move-result-object v0

    if-nez v0, :cond_0

    :cond_1
    return-void
.end method

.method clearStackToTableBodyContext()V
    .locals 3

    const/4 v0, 0x4

    .line 525
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "tbody"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "tfoot"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "thead"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "template"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->clearStackToContext([Ljava/lang/String;)V

    return-void
.end method

.method clearStackToTableContext()V
    .locals 3

    const/4 v0, 0x2

    .line 521
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "table"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "template"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->clearStackToContext([Ljava/lang/String;)V

    return-void
.end method

.method clearStackToTableRowContext()V
    .locals 3

    const/4 v0, 0x2

    .line 529
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "tr"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "template"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->clearStackToContext([Ljava/lang/String;)V

    return-void
.end method

.method closeElement(Ljava/lang/String;)V
    .locals 1

    .line 821
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Ljava/lang/String;)V

    .line 822
    invoke-virtual {p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->state()Lorg/jsoup/parser/HtmlTreeBuilderState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 823
    :cond_0
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    return-void
.end method

.method createElementFor(Lorg/jsoup/parser/Token$StartTag;Ljava/lang/String;Z)Lorg/jsoup/nodes/Element;
    .locals 3

    .line 306
    iget-object v0, p1, Lorg/jsoup/parser/Token$StartTag;->attributes:Lorg/jsoup/nodes/Attributes;

    if-nez p3, :cond_0

    .line 308
    iget-object v1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->settings:Lorg/jsoup/parser/ParseSettings;

    invoke-virtual {v1, v0}, Lorg/jsoup/parser/ParseSettings;->normalizeAttributes(Lorg/jsoup/nodes/Attributes;)Lorg/jsoup/nodes/Attributes;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 309
    invoke-virtual {v0}, Lorg/jsoup/nodes/Attributes;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 310
    iget-object v1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->settings:Lorg/jsoup/parser/ParseSettings;

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Attributes;->deduplicate(Lorg/jsoup/parser/ParseSettings;)I

    move-result v1

    if-lez v1, :cond_1

    .line 312
    iget-object v1, p1, Lorg/jsoup/parser/Token$StartTag;->normalName:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Dropped duplicate attribute(s) in tag [%s]"

    invoke-virtual {p0, v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 316
    :cond_1
    iget-object p1, p1, Lorg/jsoup/parser/Token$StartTag;->tagName:Ljava/lang/String;

    if-eqz p3, :cond_2

    .line 317
    sget-object p3, Lorg/jsoup/parser/ParseSettings;->preserveCase:Lorg/jsoup/parser/ParseSettings;

    goto :goto_0

    :cond_2
    iget-object p3, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->settings:Lorg/jsoup/parser/ParseSettings;

    .line 316
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/jsoup/parser/HtmlTreeBuilder;->tagFor(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/ParseSettings;)Lorg/jsoup/parser/Tag;

    move-result-object p1

    .line 319
    invoke-virtual {p1}, Lorg/jsoup/parser/Tag;->normalName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "form"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_3

    .line 320
    new-instance p2, Lorg/jsoup/nodes/FormElement;

    invoke-direct {p2, p1, p3, v0}, Lorg/jsoup/nodes/FormElement;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V

    goto :goto_1

    .line 321
    :cond_3
    new-instance p2, Lorg/jsoup/nodes/Element;

    invoke-direct {p2, p1, p3, v0}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V

    :goto_1
    return-object p2
.end method

.method currentTemplateMode()Lorg/jsoup/parser/HtmlTreeBuilderState;
    .locals 2

    .line 1020
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->tmplInsertMode:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->tmplInsertMode:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/parser/HtmlTreeBuilderState;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method defaultSettings()Lorg/jsoup/parser/ParseSettings;
    .locals 1

    .line 69
    sget-object v0, Lorg/jsoup/parser/ParseSettings;->htmlDefault:Lorg/jsoup/parser/ParseSettings;

    return-object v0
.end method

.method error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V
    .locals 5

    .line 299
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->parser:Lorg/jsoup/parser/Parser;

    invoke-virtual {v0}, Lorg/jsoup/parser/Parser;->getErrors()Lorg/jsoup/parser/ParseErrorList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/parser/ParseErrorList;->canAddError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->parser:Lorg/jsoup/parser/Parser;

    invoke-virtual {v0}, Lorg/jsoup/parser/Parser;->getErrors()Lorg/jsoup/parser/ParseErrorList;

    move-result-object v0

    new-instance v1, Lorg/jsoup/parser/ParseError;

    iget-object v2, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->reader:Lorg/jsoup/parser/CharacterReader;

    iget-object v3, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->currentToken:Lorg/jsoup/parser/Token;

    .line 301
    invoke-virtual {v3}, Lorg/jsoup/parser/Token;->tokenType()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->currentToken:Lorg/jsoup/parser/Token;

    filled-new-array {v3, v4, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v3, "Unexpected %s token [%s] when in state [%s]"

    invoke-direct {v1, v2, v3, p1}, Lorg/jsoup/parser/ParseError;-><init>(Lorg/jsoup/parser/CharacterReader;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 300
    invoke-virtual {v0, v1}, Lorg/jsoup/parser/ParseErrorList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method framesetOk(Z)V
    .locals 0

    .line 267
    iput-boolean p1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk:Z

    return-void
.end method

.method framesetOk()Z
    .locals 1

    .line 271
    iget-boolean v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk:Z

    return v0
.end method

.method generateImpliedEndTags()V
    .locals 1

    const/4 v0, 0x0

    .line 805
    invoke-virtual {p0, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Z)V

    return-void
.end method

.method generateImpliedEndTags(Ljava/lang/String;)V
    .locals 2

    .line 797
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilder;->TagSearchEndTags:[Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 798
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 800
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->pop()Lorg/jsoup/nodes/Element;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method generateImpliedEndTags(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 813
    sget-object p1, Lorg/jsoup/parser/HtmlTreeBuilder;->TagThoroughSearchEndTags:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/jsoup/parser/HtmlTreeBuilder;->TagSearchEndTags:[Ljava/lang/String;

    .line 814
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/parser/Tag;->namespace()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://www.w3.org/1999/xhtml"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 815
    invoke-virtual {p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 816
    invoke-virtual {p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->pop()Lorg/jsoup/nodes/Element;

    goto :goto_0

    :cond_1
    return-void
.end method

.method getActiveFormattingElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 3

    .line 962
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 963
    iget-object v1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Element;

    if-nez v1, :cond_0

    goto :goto_1

    .line 966
    :cond_0
    invoke-virtual {v1, p1}, Lorg/jsoup/nodes/Element;->nameIs(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method getBaseUri()Ljava/lang/String;
    .locals 1

    .line 279
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->baseUri:Ljava/lang/String;

    return-object v0
.end method

.method getDocument()Lorg/jsoup/nodes/Document;
    .locals 1

    .line 275
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->doc:Lorg/jsoup/nodes/Document;

    return-object v0
.end method

.method getFormElement()Lorg/jsoup/nodes/FormElement;
    .locals 1

    .line 764
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->formElement:Lorg/jsoup/nodes/FormElement;

    return-object v0
.end method

.method getFromStack(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 4

    .line 463
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/16 v2, 0x100

    if-lt v1, v2, :cond_0

    add-int/lit16 v0, v0, -0x101

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-lt v1, v0, :cond_2

    .line 466
    iget-object v2, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/Element;

    .line 467
    const-string v3, "http://www.w3.org/1999/xhtml"

    invoke-virtual {v2, p1, v3}, Lorg/jsoup/nodes/Element;->elementIs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method getHeadElement()Lorg/jsoup/nodes/Element;
    .locals 1

    .line 752
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->headElement:Lorg/jsoup/nodes/Element;

    return-object v0
.end method

.method getPendingTableCharacters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jsoup/parser/Token$Character;",
            ">;"
        }
    .end annotation

    .line 776
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->pendingTableCharacters:Ljava/util/List;

    return-object v0
.end method

.method getStack()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/jsoup/nodes/Element;",
            ">;"
        }
    .end annotation

    .line 435
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    return-object v0
.end method

.method inButtonScope(Ljava/lang/String;)Z
    .locals 1

    .line 713
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilder;->TagSearchButton:[Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method inListItemScope(Ljava/lang/String;)Z
    .locals 1

    .line 709
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilder;->TagSearchList:[Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method inScope(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 699
    invoke-virtual {p0, p1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method inScope(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 1

    .line 703
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilder;->TagsSearchInScope:[Ljava/lang/String;

    invoke-direct {p0, p1, v0, p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->inSpecificScope(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method inScope([Ljava/lang/String;)Z
    .locals 2

    .line 695
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilder;->TagsSearchInScope:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inSpecificScope([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method inSelectScope(Ljava/lang/String;)Z
    .locals 5

    .line 721
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    const/4 v2, 0x0

    if-ltz v0, :cond_2

    .line 722
    iget-object v3, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jsoup/nodes/Element;

    .line 723
    invoke-virtual {v3}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v3

    .line 724
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v1

    .line 726
    :cond_0
    sget-object v4, Lorg/jsoup/parser/HtmlTreeBuilder;->TagSearchSelectScope:[Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 729
    :cond_2
    const-string p1, "Should not be reachable"

    invoke-static {p1}, Lorg/jsoup/helper/Validate;->fail(Ljava/lang/String;)V

    return v2
.end method

.method inTableScope(Ljava/lang/String;)Z
    .locals 2

    .line 717
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilder;->TagSearchTableScope:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inSpecificScope(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected initialiseParse(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/parser/Parser;)V
    .locals 0

    .line 79
    invoke-super {p0, p1, p2, p3}, Lorg/jsoup/parser/TreeBuilder;->initialiseParse(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/parser/Parser;)V

    .line 82
    sget-object p1, Lorg/jsoup/parser/HtmlTreeBuilderState;->Initial:Lorg/jsoup/parser/HtmlTreeBuilderState;

    iput-object p1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->state:Lorg/jsoup/parser/HtmlTreeBuilderState;

    const/4 p1, 0x0

    .line 83
    iput-object p1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->originalState:Lorg/jsoup/parser/HtmlTreeBuilderState;

    const/4 p2, 0x0

    .line 84
    iput-boolean p2, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->baseUriSetFromDoc:Z

    .line 85
    iput-object p1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->headElement:Lorg/jsoup/nodes/Element;

    .line 86
    iput-object p1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->formElement:Lorg/jsoup/nodes/FormElement;

    .line 87
    iput-object p1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->contextElement:Lorg/jsoup/nodes/Element;

    .line 88
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    .line 89
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->tmplInsertMode:Ljava/util/ArrayList;

    .line 90
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->pendingTableCharacters:Ljava/util/List;

    .line 91
    new-instance p1, Lorg/jsoup/parser/Token$EndTag;

    invoke-direct {p1, p0}, Lorg/jsoup/parser/Token$EndTag;-><init>(Lorg/jsoup/parser/TreeBuilder;)V

    iput-object p1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->emptyEnd:Lorg/jsoup/parser/Token$EndTag;

    const/4 p1, 0x1

    .line 92
    iput-boolean p1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk:Z

    .line 93
    iput-boolean p2, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->fosterInserts:Z

    .line 94
    iput-boolean p2, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->fragmentParsing:Z

    return-void
.end method

.method insertCharacterNode(Lorg/jsoup/parser/Token$Character;)V
    .locals 1

    .line 414
    invoke-virtual {p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v0

    .line 415
    invoke-virtual {p0, p1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertCharacterToElement(Lorg/jsoup/parser/Token$Character;Lorg/jsoup/nodes/Element;)V

    return-void
.end method

.method insertCharacterToElement(Lorg/jsoup/parser/Token$Character;Lorg/jsoup/nodes/Element;)V
    .locals 2

    .line 421
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v0

    .line 422
    invoke-virtual {p1}, Lorg/jsoup/parser/Token$Character;->getData()Ljava/lang/String;

    move-result-object v1

    .line 424
    invoke-virtual {p1}, Lorg/jsoup/parser/Token$Character;->isCData()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 425
    new-instance p1, Lorg/jsoup/nodes/CDataNode;

    invoke-direct {p1, v1}, Lorg/jsoup/nodes/CDataNode;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 426
    :cond_0
    invoke-virtual {p0, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->isContentForTagData(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 427
    new-instance p1, Lorg/jsoup/nodes/DataNode;

    invoke-direct {p1, v1}, Lorg/jsoup/nodes/DataNode;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 429
    :cond_1
    new-instance p1, Lorg/jsoup/nodes/TextNode;

    invoke-direct {p1, v1}, Lorg/jsoup/nodes/TextNode;-><init>(Ljava/lang/String;)V

    .line 430
    :goto_0
    invoke-virtual {p2, p1}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    .line 431
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->onNodeInserted(Lorg/jsoup/nodes/Node;)V

    return-void
.end method

.method insertCommentNode(Lorg/jsoup/parser/Token$Comment;)V
    .locals 1

    .line 407
    new-instance v0, Lorg/jsoup/nodes/Comment;

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$Comment;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jsoup/nodes/Comment;-><init>(Ljava/lang/String;)V

    .line 408
    invoke-virtual {p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    .line 409
    invoke-virtual {p0, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->onNodeInserted(Lorg/jsoup/nodes/Node;)V

    return-void
.end method

.method insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;
    .locals 3

    .line 326
    const-string v0, "http://www.w3.org/1999/xhtml"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->createElementFor(Lorg/jsoup/parser/Token$StartTag;Ljava/lang/String;Z)Lorg/jsoup/nodes/Element;

    move-result-object v0

    .line 327
    invoke-direct {p0, v0, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->doInsertElement(Lorg/jsoup/nodes/Element;Lorg/jsoup/parser/Token;)V

    .line 330
    invoke-virtual {p1}, Lorg/jsoup/parser/Token$StartTag;->isSelfClosing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 331
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    move-result-object p1

    .line 332
    invoke-virtual {p1}, Lorg/jsoup/parser/Tag;->isKnownTag()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 333
    invoke-virtual {p1}, Lorg/jsoup/parser/Tag;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 334
    iget-object v1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    invoke-virtual {p1}, Lorg/jsoup/parser/Tag;->normalName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Tag [%s] cannot be self closing; not a void tag"

    invoke-virtual {v1, v2, p1}, Lorg/jsoup/parser/Tokeniser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 338
    :cond_0
    invoke-virtual {p1}, Lorg/jsoup/parser/Tag;->setSelfClosing()Lorg/jsoup/parser/Tag;

    .line 342
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, v1}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 343
    iget-object p1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    iget-object v1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->emptyEnd:Lorg/jsoup/parser/Token$EndTag;

    invoke-virtual {v1}, Lorg/jsoup/parser/Token$EndTag;->reset()Lorg/jsoup/parser/Token$Tag;

    move-result-object v1

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jsoup/parser/Token$Tag;->name(Ljava/lang/String;)Lorg/jsoup/parser/Token$Tag;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/jsoup/parser/Tokeniser;->emit(Lorg/jsoup/parser/Token;)V

    :cond_2
    return-object v0
.end method

.method insertEmptyElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;
    .locals 2

    .line 365
    const-string v0, "http://www.w3.org/1999/xhtml"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->createElementFor(Lorg/jsoup/parser/Token$StartTag;Ljava/lang/String;Z)Lorg/jsoup/nodes/Element;

    move-result-object v0

    .line 366
    invoke-direct {p0, v0, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->doInsertElement(Lorg/jsoup/nodes/Element;Lorg/jsoup/parser/Token;)V

    .line 367
    invoke-virtual {p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->pop()Lorg/jsoup/nodes/Element;

    return-object v0
.end method

.method insertForeignElementFor(Lorg/jsoup/parser/Token$StartTag;Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 1

    const/4 v0, 0x1

    .line 353
    invoke-virtual {p0, p1, p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->createElementFor(Lorg/jsoup/parser/Token$StartTag;Ljava/lang/String;Z)Lorg/jsoup/nodes/Element;

    move-result-object p2

    .line 354
    invoke-direct {p0, p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->doInsertElement(Lorg/jsoup/nodes/Element;Lorg/jsoup/parser/Token;)V

    .line 356
    invoke-virtual {p1}, Lorg/jsoup/parser/Token$StartTag;->isSelfClosing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 357
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jsoup/parser/Tag;->setSelfClosing()Lorg/jsoup/parser/Tag;

    .line 358
    invoke-virtual {p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->pop()Lorg/jsoup/nodes/Element;

    :cond_0
    return-object p2
.end method

.method insertFormElement(Lorg/jsoup/parser/Token$StartTag;ZZ)Lorg/jsoup/nodes/FormElement;
    .locals 2

    .line 372
    const-string v0, "http://www.w3.org/1999/xhtml"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->createElementFor(Lorg/jsoup/parser/Token$StartTag;Ljava/lang/String;Z)Lorg/jsoup/nodes/Element;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/FormElement;

    if-eqz p3, :cond_0

    .line 375
    const-string p3, "template"

    invoke-virtual {p0, p3}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStack(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 376
    invoke-virtual {p0, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->setFormElement(Lorg/jsoup/nodes/FormElement;)V

    goto :goto_0

    .line 378
    :cond_0
    invoke-virtual {p0, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->setFormElement(Lorg/jsoup/nodes/FormElement;)V

    .line 380
    :cond_1
    :goto_0
    invoke-direct {p0, v0, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->doInsertElement(Lorg/jsoup/nodes/Element;Lorg/jsoup/parser/Token;)V

    if-nez p2, :cond_2

    .line 381
    invoke-virtual {p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->pop()Lorg/jsoup/nodes/Element;

    :cond_2
    return-object v0
.end method

.method insertInFosterParent(Lorg/jsoup/nodes/Node;)V
    .locals 4

    .line 982
    const-string v0, "table"

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->getFromStack(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 985
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 986
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v1

    const/4 v2, 0x1

    move v3, v2

    move-object v2, v1

    move v1, v3

    goto :goto_0

    .line 989
    :cond_0
    invoke-virtual {p0, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->aboveOnStack(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;

    move-result-object v2

    goto :goto_0

    .line 991
    :cond_1
    iget-object v2, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/Element;

    :goto_0
    if-eqz v1, :cond_2

    .line 995
    invoke-static {v0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 996
    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/Element;->before(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    goto :goto_1

    .line 999
    :cond_2
    invoke-virtual {v2, p1}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    :goto_1
    return-void
.end method

.method insertMarkerToFormattingElements()V
    .locals 2

    .line 977
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method insertOnStackAfter(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)V
    .locals 2

    .line 556
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 557
    :goto_0
    invoke-static {v0}, Lorg/jsoup/helper/Validate;->isTrue(Z)V

    .line 558
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    add-int/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method protected isContentForTagData(Ljava/lang/String;)Z
    .locals 1

    .line 1033
    const-string v0, "script"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "style"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method isFosterInserts()Z
    .locals 1

    .line 756
    iget-boolean v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->fosterInserts:Z

    return v0
.end method

.method isFragmentParsing()Z
    .locals 1

    .line 295
    iget-boolean v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->fragmentParsing:Z

    return v0
.end method

.method isInActiveFormattingElements(Lorg/jsoup/nodes/Element;)Z
    .locals 1

    .line 957
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStack(Ljava/util/ArrayList;Lorg/jsoup/nodes/Element;)Z

    move-result p1

    return p1
.end method

.method lastFormattingElement()Lorg/jsoup/nodes/Element;
    .locals 2

    .line 834
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method markInsertionMode()V
    .locals 1

    .line 259
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->state:Lorg/jsoup/parser/HtmlTreeBuilderState;

    iput-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->originalState:Lorg/jsoup/parser/HtmlTreeBuilderState;

    return-void
.end method

.method maybeSetBaseUri(Lorg/jsoup/nodes/Element;)V
    .locals 1

    .line 283
    iget-boolean v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->baseUriSetFromDoc:Z

    if-eqz v0, :cond_0

    return-void

    .line 286
    :cond_0
    const-string v0, "href"

    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Element;->absUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 287
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    iput-object p1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->baseUri:Ljava/lang/String;

    const/4 v0, 0x1

    .line 289
    iput-boolean v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->baseUriSetFromDoc:Z

    .line 290
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->doc:Lorg/jsoup/nodes/Document;

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/Document;->setBaseUri(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method newInstance()Lorg/jsoup/parser/HtmlTreeBuilder;
    .locals 1

    .line 74
    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilder;

    invoke-direct {v0}, Lorg/jsoup/parser/HtmlTreeBuilder;-><init>()V

    return-object v0
.end method

.method bridge synthetic newInstance()Lorg/jsoup/parser/TreeBuilder;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->newInstance()Lorg/jsoup/parser/HtmlTreeBuilder;

    move-result-object v0

    return-object v0
.end method

.method onStack(Ljava/lang/String;)Z
    .locals 0

    .line 444
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->getFromStack(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method onStack(Lorg/jsoup/nodes/Element;)Z
    .locals 1

    .line 439
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStack(Ljava/util/ArrayList;Lorg/jsoup/nodes/Element;)Z

    move-result p1

    return p1
.end method

.method onStackNot([Ljava/lang/String;)Z
    .locals 4

    .line 735
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/16 v2, 0x64

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    add-int/lit8 v0, v0, -0x65

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-lt v1, v0, :cond_2

    .line 740
    iget-object v2, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/Element;

    invoke-virtual {v2}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v2

    .line 741
    invoke-static {v2, p1}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method originalState()Lorg/jsoup/parser/HtmlTreeBuilderState;
    .locals 1

    .line 263
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->originalState:Lorg/jsoup/parser/HtmlTreeBuilderState;

    return-object v0
.end method

.method parseFragment(Ljava/lang/String;Lorg/jsoup/nodes/Element;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Ljava/util/List;
    .locals 2
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

    .line 99
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->Initial:Lorg/jsoup/parser/HtmlTreeBuilderState;

    iput-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->state:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 100
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p3, p4}, Lorg/jsoup/parser/HtmlTreeBuilder;->initialiseParse(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/parser/Parser;)V

    .line 101
    iput-object p2, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->contextElement:Lorg/jsoup/nodes/Element;

    const/4 p1, 0x1

    .line 102
    iput-boolean p1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->fragmentParsing:Z

    const/4 p4, -0x1

    if-eqz p2, :cond_c

    .line 106
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->ownerDocument()Lorg/jsoup/nodes/Document;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->doc:Lorg/jsoup/nodes/Document;

    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->ownerDocument()Lorg/jsoup/nodes/Document;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/nodes/Document;->quirksMode()Lorg/jsoup/nodes/Document$QuirksMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Document;->quirksMode(Lorg/jsoup/nodes/Document$QuirksMode;)Lorg/jsoup/nodes/Document;

    .line 110
    :cond_0
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    move p1, p4

    goto/16 :goto_1

    :sswitch_0
    const-string p1, "noembed"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/16 p1, 0x9

    goto/16 :goto_1

    :sswitch_1
    const-string p1, "plaintext"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/16 p1, 0x8

    goto :goto_1

    :sswitch_2
    const-string p1, "noframes"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x7

    goto :goto_1

    :sswitch_3
    const-string p1, "title"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x6

    goto :goto_1

    :sswitch_4
    const-string p1, "style"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 p1, 0x5

    goto :goto_1

    :sswitch_5
    const-string p1, "xmp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 p1, 0x4

    goto :goto_1

    :sswitch_6
    const-string p1, "script"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 p1, 0x3

    goto :goto_1

    :sswitch_7
    const-string p1, "textarea"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 p1, 0x2

    goto :goto_1

    :sswitch_8
    const-string v1, "iframe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_0

    :sswitch_9
    const-string p1, "template"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    const/4 p1, 0x0

    :cond_a
    :goto_1
    packed-switch p1, :pswitch_data_0

    .line 134
    iget-object p1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, v1}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_2

    .line 127
    :pswitch_0
    iget-object p1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->PLAINTEXT:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, v1}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_2

    .line 124
    :pswitch_1
    iget-object p1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->ScriptData:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, v1}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_2

    .line 114
    :pswitch_2
    iget-object p1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->Rcdata:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, v1}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_2

    .line 121
    :pswitch_3
    iget-object p1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->Rawtext:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, v1}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_2

    .line 130
    :pswitch_4
    iget-object p1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, v1}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 131
    sget-object p1, Lorg/jsoup/parser/HtmlTreeBuilderState;->InTemplate:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->pushTemplateMode(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 136
    :goto_2
    new-instance p1, Lorg/jsoup/nodes/Element;

    iget-object v1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->settings:Lorg/jsoup/parser/ParseSettings;

    invoke-virtual {p0, v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->tagFor(Ljava/lang/String;Lorg/jsoup/parser/ParseSettings;)Lorg/jsoup/parser/Tag;

    move-result-object v0

    invoke-direct {p1, v0, p3}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;)V

    .line 137
    iget-object p3, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->doc:Lorg/jsoup/nodes/Document;

    invoke-virtual {p3, p1}, Lorg/jsoup/nodes/Document;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    .line 138
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->push(Lorg/jsoup/nodes/Element;)V

    .line 139
    invoke-virtual {p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->resetInsertionMode()Z

    move-object p3, p2

    :goto_3
    if-eqz p3, :cond_d

    .line 145
    instance-of v0, p3, Lorg/jsoup/nodes/FormElement;

    if-eqz v0, :cond_b

    .line 146
    check-cast p3, Lorg/jsoup/nodes/FormElement;

    iput-object p3, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->formElement:Lorg/jsoup/nodes/FormElement;

    goto :goto_4

    .line 149
    :cond_b
    invoke-virtual {p3}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object p3

    goto :goto_3

    :cond_c
    const/4 p1, 0x0

    .line 153
    :cond_d
    :goto_4
    invoke-virtual {p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->runParser()V

    if-eqz p2, :cond_f

    .line 157
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->siblingNodes()Ljava/util/List;

    move-result-object p2

    .line 158
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_e

    .line 159
    invoke-virtual {p1, p4, p2}, Lorg/jsoup/nodes/Element;->insertChildren(ILjava/util/Collection;)Lorg/jsoup/nodes/Element;

    .line 160
    :cond_e
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->childNodes()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 163
    :cond_f
    iget-object p1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->doc:Lorg/jsoup/nodes/Document;

    invoke-virtual {p1}, Lorg/jsoup/nodes/Document;->childNodes()Ljava/util/List;

    move-result-object p1

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4ec53386 -> :sswitch_9
        -0x47007d5c -> :sswitch_8
        -0x3bcc48c6 -> :sswitch_7
        -0x361a2f35 -> :sswitch_6
        0x1d01b -> :sswitch_5
        0x68b1db1 -> :sswitch_4
        0x6942258 -> :sswitch_3
        0x47177da7 -> :sswitch_2
        0x759d29f7 -> :sswitch_1
        0x7e19b1b8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method popStackToClose(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 3

    .line 489
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 490
    invoke-virtual {p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->pop()Lorg/jsoup/nodes/Element;

    move-result-object v1

    .line 491
    const-string v2, "http://www.w3.org/1999/xhtml"

    invoke-virtual {v1, p1, v2}, Lorg/jsoup/nodes/Element;->elementIs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method varargs popStackToClose([Ljava/lang/String;)V
    .locals 3

    .line 512
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 513
    invoke-virtual {p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->pop()Lorg/jsoup/nodes/Element;

    move-result-object v1

    .line 514
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/parser/Tag;->namespace()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http://www.w3.org/1999/xhtml"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method popStackToCloseAnyNamespace(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 3

    .line 501
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 502
    invoke-virtual {p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->pop()Lorg/jsoup/nodes/Element;

    move-result-object v1

    .line 503
    invoke-virtual {v1, p1}, Lorg/jsoup/nodes/Element;->nameIs(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method popTemplateMode()Lorg/jsoup/parser/HtmlTreeBuilderState;
    .locals 2

    .line 1008
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->tmplInsertMode:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1009
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->tmplInsertMode:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/parser/HtmlTreeBuilderState;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method positionOfElement(Lorg/jsoup/nodes/Element;)I
    .locals 2

    const/4 v0, 0x0

    .line 838
    :goto_0
    iget-object v1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 839
    iget-object v1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method protected process(Lorg/jsoup/parser/Token;)Z
    .locals 1

    .line 168
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->useCurrentOrForeignInsert(Lorg/jsoup/parser/Token;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->state:Lorg/jsoup/parser/HtmlTreeBuilderState;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->ForeignContent:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 169
    :goto_0
    invoke-virtual {v0, p1, p0}, Lorg/jsoup/parser/HtmlTreeBuilderState;->process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result p1

    return p1
.end method

.method process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z
    .locals 0

    .line 247
    invoke-virtual {p2, p1, p0}, Lorg/jsoup/parser/HtmlTreeBuilderState;->process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result p1

    return p1
.end method

.method pushActiveFormattingElements(Lorg/jsoup/nodes/Element;)V
    .locals 1

    .line 855
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->checkActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    .line 856
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method pushTemplateMode(Lorg/jsoup/parser/HtmlTreeBuilderState;)V
    .locals 1

    .line 1004
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->tmplInsertMode:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method pushWithBookmark(Lorg/jsoup/nodes/Element;I)V
    .locals 1

    .line 860
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->checkActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    .line 863
    :try_start_0
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 865
    :catch_0
    iget-object p2, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method reconstructFormattingElements()V
    .locals 8

    .line 898
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x100

    if-le v0, v1, :cond_0

    return-void

    .line 900
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->lastFormattingElement()Lorg/jsoup/nodes/Element;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 901
    invoke-virtual {p0, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStack(Lorg/jsoup/nodes/Element;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 905
    :cond_1
    iget-object v1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v2, v1, -0xc

    const/4 v3, 0x0

    if-gez v2, :cond_2

    move v2, v3

    :cond_2
    const/4 v4, 0x1

    sub-int/2addr v1, v4

    move v5, v1

    :cond_3
    if-ne v5, v2, :cond_4

    goto :goto_0

    .line 914
    :cond_4
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    if-eqz v0, :cond_5

    .line 915
    invoke-virtual {p0, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStack(Lorg/jsoup/nodes/Element;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_5
    move v4, v3

    :goto_0
    if-nez v4, :cond_6

    .line 920
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    .line 921
    :cond_6
    invoke-static {v0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 925
    new-instance v2, Lorg/jsoup/nodes/Element;

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->settings:Lorg/jsoup/parser/ParseSettings;

    invoke-virtual {p0, v4, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->tagFor(Ljava/lang/String;Lorg/jsoup/parser/ParseSettings;)Lorg/jsoup/parser/Tag;

    move-result-object v4

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    move-result-object v6

    invoke-virtual {v6}, Lorg/jsoup/nodes/Attributes;->clone()Lorg/jsoup/nodes/Attributes;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v2, v4, v7, v6}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V

    .line 926
    invoke-direct {p0, v2, v7}, Lorg/jsoup/parser/HtmlTreeBuilder;->doInsertElement(Lorg/jsoup/nodes/Element;Lorg/jsoup/parser/Token;)V

    .line 929
    iget-object v4, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    invoke-virtual {v4, v5, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    if-ne v5, v1, :cond_5

    :cond_7
    :goto_1
    return-void
.end method

.method removeFromActiveFormattingElements(Lorg/jsoup/nodes/Element;)V
    .locals 2

    .line 947
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 948
    iget-object v1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Element;

    if-ne v1, p1, :cond_0

    .line 950
    iget-object p1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method removeFromStack(Lorg/jsoup/nodes/Element;)Z
    .locals 3

    .line 475
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 476
    iget-object v2, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/Element;

    if-ne v2, p1, :cond_0

    .line 478
    iget-object v2, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 479
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->onNodeClosed(Lorg/jsoup/nodes/Node;)V

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method removeLastFormattingElement()Lorg/jsoup/nodes/Element;
    .locals 2

    .line 846
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 848
    iget-object v1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method replaceActiveFormattingElement(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)V
    .locals 1

    .line 973
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    invoke-static {v0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->replaceInQueue(Ljava/util/ArrayList;Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)V

    return-void
.end method

.method replaceOnStack(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)V
    .locals 1

    .line 562
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-static {v0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->replaceInQueue(Ljava/util/ArrayList;Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)V

    return-void
.end method

.method resetBody()V
    .locals 2

    .line 658
    const-string v0, "body"

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStack(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 659
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->doc:Lorg/jsoup/nodes/Document;

    invoke-virtual {v1}, Lorg/jsoup/nodes/Document;->body()Lorg/jsoup/nodes/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 661
    :cond_0
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return-void
.end method

.method resetInsertionMode()Z
    .locals 9

    .line 579
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/16 v2, 0x100

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    add-int/lit16 v0, v0, -0x101

    goto :goto_0

    :cond_0
    move v0, v3

    .line 581
    :goto_0
    iget-object v2, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->state:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 583
    iget-object v4, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 584
    sget-object v4, Lorg/jsoup/parser/HtmlTreeBuilderState;->InBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p0, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    :cond_1
    move v4, v3

    :goto_1
    const/4 v5, 0x1

    if-lt v1, v0, :cond_18

    .line 588
    iget-object v6, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jsoup/nodes/Element;

    if-ne v1, v0, :cond_3

    .line 591
    iget-boolean v4, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->fragmentParsing:Z

    if-eqz v4, :cond_2

    .line 592
    iget-object v6, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->contextElement:Lorg/jsoup/nodes/Element;

    :cond_2
    move v4, v5

    :cond_3
    if-eqz v6, :cond_4

    .line 594
    invoke-virtual {v6}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_4
    const-string v7, ""

    .line 595
    :goto_2
    invoke-virtual {v6}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    move-result-object v6

    invoke-virtual {v6}, Lorg/jsoup/parser/Tag;->namespace()Ljava/lang/String;

    move-result-object v6

    const-string v8, "http://www.w3.org/1999/xhtml"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto/16 :goto_6

    .line 598
    :cond_5
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v8, -0x1

    sparse-switch v6, :sswitch_data_0

    goto/16 :goto_3

    :sswitch_0
    const-string v6, "caption"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    goto/16 :goto_3

    :cond_6
    const/16 v8, 0xe

    goto/16 :goto_3

    :sswitch_1
    const-string v6, "thead"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    goto/16 :goto_3

    :cond_7
    const/16 v8, 0xd

    goto/16 :goto_3

    :sswitch_2
    const-string v6, "tfoot"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    goto/16 :goto_3

    :cond_8
    const/16 v8, 0xc

    goto/16 :goto_3

    :sswitch_3
    const-string v6, "tbody"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    goto/16 :goto_3

    :cond_9
    const/16 v8, 0xb

    goto/16 :goto_3

    :sswitch_4
    const-string v6, "table"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    goto/16 :goto_3

    :cond_a
    const/16 v8, 0xa

    goto/16 :goto_3

    :sswitch_5
    const-string v6, "html"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    goto/16 :goto_3

    :cond_b
    const/16 v8, 0x9

    goto/16 :goto_3

    :sswitch_6
    const-string v6, "head"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    goto/16 :goto_3

    :cond_c
    const/16 v8, 0x8

    goto/16 :goto_3

    :sswitch_7
    const-string v6, "body"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    goto :goto_3

    :cond_d
    const/4 v8, 0x7

    goto :goto_3

    :sswitch_8
    const-string v6, "tr"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    goto :goto_3

    :cond_e
    const/4 v8, 0x6

    goto :goto_3

    :sswitch_9
    const-string v6, "th"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    goto :goto_3

    :cond_f
    const/4 v8, 0x5

    goto :goto_3

    :sswitch_a
    const-string v6, "td"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    goto :goto_3

    :cond_10
    const/4 v8, 0x4

    goto :goto_3

    :sswitch_b
    const-string v6, "colgroup"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    goto :goto_3

    :cond_11
    const/4 v8, 0x3

    goto :goto_3

    :sswitch_c
    const-string v6, "select"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_12

    goto :goto_3

    :cond_12
    const/4 v8, 0x2

    goto :goto_3

    :sswitch_d
    const-string v6, "template"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_13

    goto :goto_3

    :cond_13
    move v8, v5

    goto :goto_3

    :sswitch_e
    const-string v6, "frameset"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_14

    goto :goto_3

    :cond_14
    move v8, v3

    :goto_3
    packed-switch v8, :pswitch_data_0

    goto :goto_5

    .line 619
    :pswitch_0
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InCaption:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto :goto_7

    .line 616
    :pswitch_1
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InTableBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto :goto_7

    .line 625
    :pswitch_2
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InTable:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto :goto_7

    .line 645
    :pswitch_3
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->headElement:Lorg/jsoup/nodes/Element;

    if-nez v0, :cond_15

    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->BeforeHead:Lorg/jsoup/parser/HtmlTreeBuilderState;

    goto :goto_4

    :cond_15
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->AfterHead:Lorg/jsoup/parser/HtmlTreeBuilderState;

    :goto_4
    invoke-virtual {p0, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto :goto_7

    :pswitch_4
    if-nez v4, :cond_16

    .line 634
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InHead:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto :goto_7

    .line 639
    :pswitch_5
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto :goto_7

    .line 611
    :pswitch_6
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InRow:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto :goto_7

    :pswitch_7
    if-nez v4, :cond_16

    .line 606
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InCell:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto :goto_7

    :cond_16
    :goto_5
    if-eqz v4, :cond_17

    .line 649
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto :goto_7

    :cond_17
    :goto_6
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_1

    .line 622
    :pswitch_8
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InColumnGroup:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto :goto_7

    .line 600
    :pswitch_9
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InSelect:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto :goto_7

    .line 628
    :pswitch_a
    invoke-virtual {p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentTemplateMode()Lorg/jsoup/parser/HtmlTreeBuilderState;

    move-result-object v0

    .line 629
    const-string v1, "Bug: no template insertion mode on stack!"

    invoke-static {v0, v1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 630
    invoke-virtual {p0, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto :goto_7

    .line 642
    :pswitch_b
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InFrameset:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 653
    :cond_18
    :goto_7
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->state:Lorg/jsoup/parser/HtmlTreeBuilderState;

    if-eq v0, v2, :cond_19

    move v3, v5

    :cond_19
    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x620c002b -> :sswitch_e
        -0x4ec53386 -> :sswitch_d
        -0x3600cb04 -> :sswitch_c
        -0x25eb9b01 -> :sswitch_b
        0xe70 -> :sswitch_a
        0xe74 -> :sswitch_9
        0xe7e -> :sswitch_8
        0x2e39a2 -> :sswitch_7
        0x30cde0 -> :sswitch_6
        0x3107ab -> :sswitch_5
        0x6903bce -> :sswitch_4
        0x690e016 -> :sswitch_3
        0x692b2e2 -> :sswitch_2
        0x6937454 -> :sswitch_1
        0x20ef99e6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method resetPendingTableCharacters()V
    .locals 1

    .line 772
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->pendingTableCharacters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method setFormElement(Lorg/jsoup/nodes/FormElement;)V
    .locals 0

    .line 768
    iput-object p1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->formElement:Lorg/jsoup/nodes/FormElement;

    return-void
.end method

.method setFosterInserts(Z)V
    .locals 0

    .line 760
    iput-boolean p1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->fosterInserts:Z

    return-void
.end method

.method setHeadElement(Lorg/jsoup/nodes/Element;)V
    .locals 0

    .line 748
    iput-object p1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->headElement:Lorg/jsoup/nodes/Element;

    return-void
.end method

.method state()Lorg/jsoup/parser/HtmlTreeBuilderState;
    .locals 1

    .line 255
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->state:Lorg/jsoup/parser/HtmlTreeBuilderState;

    return-object v0
.end method

.method templateModeSize()I
    .locals 1

    .line 1016
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->tmplInsertMode:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1025
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TreeBuilder{currentToken="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->currentToken:Lorg/jsoup/parser/Token;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->state:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currentElement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1028
    invoke-virtual {p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->state:Lorg/jsoup/parser/HtmlTreeBuilderState;

    return-void
.end method

.method useCurrentOrForeignInsert(Lorg/jsoup/parser/Token;)Z
    .locals 5

    .line 175
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 177
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v0

    .line 178
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jsoup/parser/Tag;->namespace()Ljava/lang/String;

    move-result-object v2

    .line 181
    const-string v3, "http://www.w3.org/1999/xhtml"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v1

    .line 186
    :cond_1
    invoke-static {v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->isMathmlTextIntegration(Lorg/jsoup/nodes/Element;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 187
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->isStartTag()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 188
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asStartTag()Lorg/jsoup/parser/Token$StartTag;

    move-result-object v3

    iget-object v3, v3, Lorg/jsoup/parser/Token$StartTag;->normalName:Ljava/lang/String;

    const-string v4, "mglyph"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 189
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asStartTag()Lorg/jsoup/parser/Token$StartTag;

    move-result-object v3

    iget-object v3, v3, Lorg/jsoup/parser/Token$StartTag;->normalName:Ljava/lang/String;

    const-string v4, "malignmark"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v1

    .line 191
    :cond_2
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->isCharacter()Z

    move-result v3

    if-eqz v3, :cond_3

    return v1

    .line 195
    :cond_3
    const-string v3, "http://www.w3.org/1998/Math/MathML"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "annotation-xml"

    .line 196
    invoke-virtual {v0, v2}, Lorg/jsoup/nodes/Element;->nameIs(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 197
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->isStartTag()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 198
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asStartTag()Lorg/jsoup/parser/Token$StartTag;

    move-result-object v2

    iget-object v2, v2, Lorg/jsoup/parser/Token$StartTag;->normalName:Ljava/lang/String;

    const-string v3, "svg"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    return v1

    .line 203
    :cond_4
    invoke-static {v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->isHtmlIntegration(Lorg/jsoup/nodes/Element;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 204
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->isStartTag()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->isCharacter()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    return v1

    .line 208
    :cond_6
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->isEOF()Z

    move-result p1

    return p1
.end method
