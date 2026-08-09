.class public Lorg/jsoup/parser/Tag;
.super Ljava/lang/Object;
.source "Tag.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final Tags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jsoup/parser/Tag;",
            ">;"
        }
    .end annotation
.end field

.field private static final blockTags:[Ljava/lang/String;

.field private static final emptyTags:[Ljava/lang/String;

.field private static final formListedTags:[Ljava/lang/String;

.field private static final formSubmitTags:[Ljava/lang/String;

.field private static final formatAsInlineTags:[Ljava/lang/String;

.field private static final inlineTags:[Ljava/lang/String;

.field private static final namespaces:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final preserveWhitespaceTags:[Ljava/lang/String;


# instance fields
.field private empty:Z

.field private formList:Z

.field private formSubmit:Z

.field private formatAsBlock:Z

.field private isBlock:Z

.field private namespace:Ljava/lang/String;

.field private final normalName:Ljava/lang/String;

.field private preserveWhitespace:Z

.field private selfClosing:Z

.field private tagName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 26

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jsoup/parser/Tag;->Tags:Ljava/util/Map;

    const/16 v0, 0x45

    .line 262
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "html"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "head"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "body"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "frameset"

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-string v1, "script"

    const/4 v6, 0x4

    aput-object v1, v0, v6

    const-string v1, "noscript"

    const/4 v7, 0x5

    aput-object v1, v0, v7

    const-string v1, "style"

    const/4 v8, 0x6

    aput-object v1, v0, v8

    const-string v1, "meta"

    const/4 v9, 0x7

    aput-object v1, v0, v9

    const-string v1, "link"

    const/16 v10, 0x8

    aput-object v1, v0, v10

    const-string v1, "title"

    const/16 v11, 0x9

    aput-object v1, v0, v11

    const-string v1, "frame"

    const/16 v12, 0xa

    aput-object v1, v0, v12

    const-string v1, "noframes"

    const/16 v13, 0xb

    aput-object v1, v0, v13

    const-string v1, "section"

    const/16 v14, 0xc

    aput-object v1, v0, v14

    const-string v1, "nav"

    const/16 v15, 0xd

    aput-object v1, v0, v15

    const-string v1, "aside"

    const/16 v16, 0xe

    aput-object v1, v0, v16

    const-string v1, "hgroup"

    const/16 v17, 0xf

    aput-object v1, v0, v17

    const-string v1, "header"

    const/16 v18, 0x10

    aput-object v1, v0, v18

    const-string v1, "footer"

    const/16 v19, 0x11

    aput-object v1, v0, v19

    const-string v1, "p"

    const/16 v20, 0x12

    aput-object v1, v0, v20

    const-string v1, "h1"

    const/16 v15, 0x13

    aput-object v1, v0, v15

    const/16 v1, 0x14

    const-string v22, "h2"

    aput-object v22, v0, v1

    const/16 v1, 0x15

    const-string v22, "h3"

    aput-object v22, v0, v1

    const/16 v1, 0x16

    const-string v22, "h4"

    aput-object v22, v0, v1

    const/16 v1, 0x17

    const-string v22, "h5"

    aput-object v22, v0, v1

    const/16 v1, 0x18

    const-string v22, "h6"

    aput-object v22, v0, v1

    const/16 v1, 0x19

    const-string v22, "ul"

    aput-object v22, v0, v1

    const/16 v1, 0x1a

    const-string v22, "ol"

    aput-object v22, v0, v1

    const/16 v1, 0x1b

    const-string v22, "pre"

    aput-object v22, v0, v1

    const/16 v1, 0x1c

    const-string v22, "div"

    aput-object v22, v0, v1

    const/16 v1, 0x1d

    const-string v22, "blockquote"

    aput-object v22, v0, v1

    const/16 v1, 0x1e

    const-string v22, "hr"

    aput-object v22, v0, v1

    const/16 v1, 0x1f

    const-string v22, "address"

    aput-object v22, v0, v1

    const/16 v1, 0x20

    const-string v22, "figure"

    aput-object v22, v0, v1

    const/16 v1, 0x21

    const-string v22, "figcaption"

    aput-object v22, v0, v1

    const/16 v1, 0x22

    const-string v22, "form"

    aput-object v22, v0, v1

    const/16 v1, 0x23

    const-string v22, "fieldset"

    aput-object v22, v0, v1

    const/16 v1, 0x24

    const-string v22, "ins"

    aput-object v22, v0, v1

    const/16 v1, 0x25

    const-string v22, "del"

    aput-object v22, v0, v1

    const/16 v1, 0x26

    const-string v22, "dl"

    aput-object v22, v0, v1

    const/16 v1, 0x27

    const-string v22, "dt"

    aput-object v22, v0, v1

    const/16 v1, 0x28

    const-string v22, "dd"

    aput-object v22, v0, v1

    const/16 v1, 0x29

    const-string v22, "li"

    aput-object v22, v0, v1

    const/16 v1, 0x2a

    const-string v22, "table"

    aput-object v22, v0, v1

    const/16 v1, 0x2b

    const-string v22, "caption"

    aput-object v22, v0, v1

    const/16 v1, 0x2c

    const-string v22, "thead"

    aput-object v22, v0, v1

    const/16 v1, 0x2d

    const-string v22, "tfoot"

    aput-object v22, v0, v1

    const/16 v1, 0x2e

    const-string v22, "tbody"

    aput-object v22, v0, v1

    const/16 v1, 0x2f

    const-string v22, "colgroup"

    aput-object v22, v0, v1

    const/16 v1, 0x30

    const-string v22, "col"

    aput-object v22, v0, v1

    const/16 v1, 0x31

    const-string v22, "tr"

    aput-object v22, v0, v1

    const/16 v1, 0x32

    const-string v22, "th"

    aput-object v22, v0, v1

    const/16 v1, 0x33

    const-string v22, "td"

    aput-object v22, v0, v1

    const/16 v1, 0x34

    const-string v22, "video"

    aput-object v22, v0, v1

    const/16 v1, 0x35

    const-string v22, "audio"

    aput-object v22, v0, v1

    const/16 v1, 0x36

    const-string v22, "canvas"

    aput-object v22, v0, v1

    const/16 v1, 0x37

    const-string v22, "details"

    aput-object v22, v0, v1

    const/16 v1, 0x38

    const-string v22, "menu"

    aput-object v22, v0, v1

    const/16 v1, 0x39

    const-string v22, "plaintext"

    aput-object v22, v0, v1

    const/16 v1, 0x3a

    const-string v22, "template"

    aput-object v22, v0, v1

    const/16 v1, 0x3b

    const-string v22, "article"

    aput-object v22, v0, v1

    const/16 v1, 0x3c

    const-string v22, "main"

    aput-object v22, v0, v1

    const/16 v1, 0x3d

    const-string v22, "svg"

    aput-object v22, v0, v1

    const/16 v1, 0x3e

    const-string v22, "math"

    aput-object v22, v0, v1

    const/16 v1, 0x3f

    const-string v22, "center"

    aput-object v22, v0, v1

    const/16 v1, 0x40

    const-string v22, "template"

    aput-object v22, v0, v1

    const/16 v1, 0x41

    const-string v22, "dir"

    aput-object v22, v0, v1

    const/16 v1, 0x42

    const-string v22, "applet"

    aput-object v22, v0, v1

    const/16 v1, 0x43

    const-string v22, "marquee"

    aput-object v22, v0, v1

    const/16 v1, 0x44

    const-string v22, "listing"

    aput-object v22, v0, v1

    sput-object v0, Lorg/jsoup/parser/Tag;->blockTags:[Ljava/lang/String;

    const/16 v1, 0x4c

    .line 271
    new-array v1, v1, [Ljava/lang/String;

    const-string v22, "object"

    aput-object v22, v1, v2

    const-string v22, "base"

    aput-object v22, v1, v3

    const-string v22, "font"

    aput-object v22, v1, v4

    const-string v22, "tt"

    aput-object v22, v1, v5

    const-string v22, "i"

    aput-object v22, v1, v6

    const-string v22, "b"

    aput-object v22, v1, v7

    const-string v22, "u"

    aput-object v22, v1, v8

    const-string v22, "big"

    aput-object v22, v1, v9

    const-string v22, "small"

    aput-object v22, v1, v10

    const-string v22, "em"

    aput-object v22, v1, v11

    const-string v22, "strong"

    aput-object v22, v1, v12

    const-string v22, "dfn"

    aput-object v22, v1, v13

    const-string v22, "code"

    aput-object v22, v1, v14

    const-string v22, "samp"

    const/16 v21, 0xd

    aput-object v22, v1, v21

    const-string v22, "kbd"

    aput-object v22, v1, v16

    const-string v22, "var"

    aput-object v22, v1, v17

    const-string v22, "cite"

    aput-object v22, v1, v18

    const-string v22, "abbr"

    aput-object v22, v1, v19

    const-string v22, "time"

    aput-object v22, v1, v20

    const-string v22, "acronym"

    aput-object v22, v1, v15

    const/16 v22, 0x14

    const-string v23, "mark"

    aput-object v23, v1, v22

    const/16 v22, 0x15

    const-string v23, "ruby"

    aput-object v23, v1, v22

    const/16 v22, 0x16

    const-string v23, "rt"

    aput-object v23, v1, v22

    const/16 v22, 0x17

    const-string v23, "rp"

    aput-object v23, v1, v22

    const/16 v22, 0x18

    const-string v23, "rtc"

    aput-object v23, v1, v22

    const/16 v22, 0x19

    const-string v23, "a"

    aput-object v23, v1, v22

    const/16 v22, 0x1a

    const-string v23, "img"

    aput-object v23, v1, v22

    const/16 v22, 0x1b

    const-string v23, "br"

    aput-object v23, v1, v22

    const/16 v22, 0x1c

    const-string v23, "wbr"

    aput-object v23, v1, v22

    const/16 v22, 0x1d

    const-string v23, "map"

    aput-object v23, v1, v22

    const/16 v22, 0x1e

    const-string v23, "q"

    aput-object v23, v1, v22

    const/16 v22, 0x1f

    const-string v23, "sub"

    aput-object v23, v1, v22

    const/16 v22, 0x20

    const-string v23, "sup"

    aput-object v23, v1, v22

    const/16 v22, 0x21

    const-string v23, "bdo"

    aput-object v23, v1, v22

    const/16 v22, 0x22

    const-string v23, "iframe"

    aput-object v23, v1, v22

    const/16 v22, 0x23

    const-string v23, "embed"

    aput-object v23, v1, v22

    const/16 v22, 0x24

    const-string v23, "span"

    aput-object v23, v1, v22

    const/16 v22, 0x25

    const-string v23, "input"

    aput-object v23, v1, v22

    const/16 v22, 0x26

    const-string v24, "select"

    aput-object v24, v1, v22

    const/16 v22, 0x27

    const-string v24, "textarea"

    aput-object v24, v1, v22

    const/16 v22, 0x28

    const-string v25, "label"

    aput-object v25, v1, v22

    const/16 v22, 0x29

    const-string v25, "button"

    aput-object v25, v1, v22

    const/16 v22, 0x2a

    const-string v25, "optgroup"

    aput-object v25, v1, v22

    const/16 v22, 0x2b

    const-string v25, "option"

    aput-object v25, v1, v22

    const/16 v22, 0x2c

    const-string v25, "legend"

    aput-object v25, v1, v22

    const/16 v22, 0x2d

    const-string v25, "datalist"

    aput-object v25, v1, v22

    const/16 v22, 0x2e

    const-string v25, "keygen"

    aput-object v25, v1, v22

    const/16 v22, 0x2f

    const-string v25, "output"

    aput-object v25, v1, v22

    const/16 v22, 0x30

    const-string v25, "progress"

    aput-object v25, v1, v22

    const/16 v22, 0x31

    const-string v25, "meter"

    aput-object v25, v1, v22

    const/16 v22, 0x32

    const-string v25, "area"

    aput-object v25, v1, v22

    const/16 v22, 0x33

    const-string v25, "param"

    aput-object v25, v1, v22

    const/16 v22, 0x34

    const-string v25, "source"

    aput-object v25, v1, v22

    const/16 v22, 0x35

    const-string v25, "track"

    aput-object v25, v1, v22

    const/16 v22, 0x36

    const-string v25, "summary"

    aput-object v25, v1, v22

    const/16 v22, 0x37

    const-string v25, "command"

    aput-object v25, v1, v22

    const/16 v22, 0x38

    const-string v25, "device"

    aput-object v25, v1, v22

    const/16 v22, 0x39

    const-string v25, "area"

    aput-object v25, v1, v22

    const/16 v22, 0x3a

    const-string v25, "basefont"

    aput-object v25, v1, v22

    const/16 v22, 0x3b

    const-string v25, "bgsound"

    aput-object v25, v1, v22

    const/16 v22, 0x3c

    const-string v25, "menuitem"

    aput-object v25, v1, v22

    const/16 v22, 0x3d

    const-string v25, "param"

    aput-object v25, v1, v22

    const/16 v22, 0x3e

    const-string v25, "source"

    aput-object v25, v1, v22

    const/16 v22, 0x3f

    const-string v25, "track"

    aput-object v25, v1, v22

    const/16 v22, 0x40

    const-string v25, "data"

    aput-object v25, v1, v22

    const/16 v22, 0x41

    const-string v25, "bdi"

    aput-object v25, v1, v22

    const/16 v22, 0x42

    const-string v25, "s"

    aput-object v25, v1, v22

    const/16 v22, 0x43

    const-string v25, "strike"

    aput-object v25, v1, v22

    const/16 v22, 0x44

    const-string v25, "nobr"

    aput-object v25, v1, v22

    const/16 v22, 0x45

    const-string v25, "rb"

    aput-object v25, v1, v22

    const/16 v22, 0x46

    const-string v25, "text"

    aput-object v25, v1, v22

    const/16 v22, 0x47

    const-string v25, "mi"

    aput-object v25, v1, v22

    const/16 v22, 0x48

    const-string v25, "mo"

    aput-object v25, v1, v22

    const/16 v22, 0x49

    const-string v25, "msup"

    aput-object v25, v1, v22

    const/16 v22, 0x4a

    const-string v25, "mn"

    aput-object v25, v1, v22

    const/16 v22, 0x4b

    const-string v25, "mtext"

    aput-object v25, v1, v22

    sput-object v1, Lorg/jsoup/parser/Tag;->inlineTags:[Ljava/lang/String;

    const/16 v15, 0x15

    .line 282
    new-array v15, v15, [Ljava/lang/String;

    const-string v25, "meta"

    aput-object v25, v15, v2

    const-string v25, "link"

    aput-object v25, v15, v3

    const-string v25, "base"

    aput-object v25, v15, v4

    const-string v25, "frame"

    aput-object v25, v15, v5

    const-string v25, "img"

    aput-object v25, v15, v6

    const-string v25, "br"

    aput-object v25, v15, v7

    const-string v25, "wbr"

    aput-object v25, v15, v8

    const-string v25, "embed"

    aput-object v25, v15, v9

    const-string v25, "hr"

    aput-object v25, v15, v10

    aput-object v23, v15, v11

    const-string v25, "keygen"

    aput-object v25, v15, v12

    const-string v25, "col"

    aput-object v25, v15, v13

    const-string v25, "command"

    aput-object v25, v15, v14

    const-string v25, "device"

    const/16 v21, 0xd

    aput-object v25, v15, v21

    const-string v25, "area"

    aput-object v25, v15, v16

    const-string v25, "basefont"

    aput-object v25, v15, v17

    const-string v25, "bgsound"

    aput-object v25, v15, v18

    const-string v25, "menuitem"

    aput-object v25, v15, v19

    const-string v25, "param"

    aput-object v25, v15, v20

    const-string v25, "source"

    const/16 v14, 0x13

    aput-object v25, v15, v14

    const/16 v22, 0x14

    const-string v25, "track"

    aput-object v25, v15, v22

    sput-object v15, Lorg/jsoup/parser/Tag;->emptyTags:[Ljava/lang/String;

    .line 287
    new-array v14, v14, [Ljava/lang/String;

    const-string v22, "title"

    aput-object v22, v14, v2

    const-string v22, "a"

    aput-object v22, v14, v3

    const-string v22, "p"

    aput-object v22, v14, v4

    const-string v22, "h1"

    aput-object v22, v14, v5

    const-string v22, "h2"

    aput-object v22, v14, v6

    const-string v22, "h3"

    aput-object v22, v14, v7

    const-string v22, "h4"

    aput-object v22, v14, v8

    const-string v22, "h5"

    aput-object v22, v14, v9

    const-string v22, "h6"

    aput-object v22, v14, v10

    const-string v22, "pre"

    aput-object v22, v14, v11

    const-string v11, "address"

    aput-object v11, v14, v12

    const-string v11, "li"

    aput-object v11, v14, v13

    const-string v11, "th"

    const/16 v12, 0xc

    aput-object v11, v14, v12

    const-string v11, "td"

    const/16 v12, 0xd

    aput-object v11, v14, v12

    const-string v11, "script"

    aput-object v11, v14, v16

    const-string v11, "style"

    aput-object v11, v14, v17

    const-string v11, "ins"

    aput-object v11, v14, v18

    const-string v11, "del"

    aput-object v11, v14, v19

    const-string v11, "s"

    aput-object v11, v14, v20

    sput-object v14, Lorg/jsoup/parser/Tag;->formatAsInlineTags:[Ljava/lang/String;

    .line 291
    new-array v11, v6, [Ljava/lang/String;

    const-string v12, "pre"

    aput-object v12, v11, v2

    const-string v12, "plaintext"

    aput-object v12, v11, v3

    const-string v12, "title"

    aput-object v12, v11, v4

    aput-object v24, v11, v5

    sput-object v11, Lorg/jsoup/parser/Tag;->preserveWhitespaceTags:[Ljava/lang/String;

    .line 296
    new-array v10, v10, [Ljava/lang/String;

    const-string v12, "button"

    aput-object v12, v10, v2

    const-string v12, "fieldset"

    aput-object v12, v10, v3

    aput-object v23, v10, v4

    const-string v12, "keygen"

    aput-object v12, v10, v5

    const-string v12, "object"

    aput-object v12, v10, v6

    const-string v12, "output"

    aput-object v12, v10, v7

    const-string v12, "select"

    aput-object v12, v10, v8

    aput-object v24, v10, v9

    sput-object v10, Lorg/jsoup/parser/Tag;->formListedTags:[Ljava/lang/String;

    .line 299
    new-array v9, v7, [Ljava/lang/String;

    aput-object v23, v9, v2

    const-string v12, "keygen"

    aput-object v12, v9, v3

    const-string v12, "object"

    aput-object v12, v9, v4

    const-string v12, "select"

    aput-object v12, v9, v5

    aput-object v24, v9, v6

    sput-object v9, Lorg/jsoup/parser/Tag;->formSubmitTags:[Ljava/lang/String;

    .line 303
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    sput-object v12, Lorg/jsoup/parser/Tag;->namespaces:Ljava/util/Map;

    .line 305
    new-array v8, v8, [Ljava/lang/String;

    const-string v13, "math"

    aput-object v13, v8, v2

    const-string v13, "mi"

    aput-object v13, v8, v3

    const-string v13, "mo"

    aput-object v13, v8, v4

    const-string v13, "msup"

    aput-object v13, v8, v5

    const-string v5, "mn"

    aput-object v5, v8, v6

    const-string v5, "mtext"

    aput-object v5, v8, v7

    const-string v5, "http://www.w3.org/1998/Math/MathML"

    invoke-interface {v12, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "svg"

    aput-object v5, v4, v2

    const-string v2, "text"

    aput-object v2, v4, v3

    const-string v2, "http://www.w3.org/2000/svg"

    invoke-interface {v12, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    new-instance v2, Lorg/jsoup/parser/Tag$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lorg/jsoup/parser/Tag$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v2}, Lorg/jsoup/parser/Tag;->setupTags([Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 327
    new-instance v0, Lorg/jsoup/parser/Tag$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/jsoup/parser/Tag$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v1, v0}, Lorg/jsoup/parser/Tag;->setupTags([Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 332
    new-instance v0, Lorg/jsoup/parser/Tag$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lorg/jsoup/parser/Tag$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v15, v0}, Lorg/jsoup/parser/Tag;->setupTags([Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 333
    new-instance v0, Lorg/jsoup/parser/Tag$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lorg/jsoup/parser/Tag$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v14, v0}, Lorg/jsoup/parser/Tag;->setupTags([Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 334
    new-instance v0, Lorg/jsoup/parser/Tag$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lorg/jsoup/parser/Tag$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v11, v0}, Lorg/jsoup/parser/Tag;->setupTags([Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 335
    new-instance v0, Lorg/jsoup/parser/Tag$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lorg/jsoup/parser/Tag$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v10, v0}, Lorg/jsoup/parser/Tag;->setupTags([Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 336
    new-instance v0, Lorg/jsoup/parser/Tag$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lorg/jsoup/parser/Tag$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {v9, v0}, Lorg/jsoup/parser/Tag;->setupTags([Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 337
    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 338
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    new-instance v3, Lorg/jsoup/parser/Tag$$ExternalSyntheticLambda7;

    invoke-direct {v3, v1}, Lorg/jsoup/parser/Tag$$ExternalSyntheticLambda7;-><init>(Ljava/util/Map$Entry;)V

    invoke-static {v2, v3}, Lorg/jsoup/parser/Tag;->setupTags([Ljava/lang/String;Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lorg/jsoup/parser/Tag;->isBlock:Z

    .line 22
    iput-boolean v0, p0, Lorg/jsoup/parser/Tag;->formatAsBlock:Z

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lorg/jsoup/parser/Tag;->empty:Z

    .line 24
    iput-boolean v0, p0, Lorg/jsoup/parser/Tag;->selfClosing:Z

    .line 25
    iput-boolean v0, p0, Lorg/jsoup/parser/Tag;->preserveWhitespace:Z

    .line 26
    iput-boolean v0, p0, Lorg/jsoup/parser/Tag;->formList:Z

    .line 27
    iput-boolean v0, p0, Lorg/jsoup/parser/Tag;->formSubmit:Z

    .line 30
    iput-object p1, p0, Lorg/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    .line 31
    invoke-static {p1}, Lorg/jsoup/internal/Normalizer;->lowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jsoup/parser/Tag;->normalName:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lorg/jsoup/parser/Tag;->namespace:Ljava/lang/String;

    return-void
.end method

.method public static isKnownTag(Ljava/lang/String;)Z
    .locals 1

    .line 183
    sget-object v0, Lorg/jsoup/parser/Tag;->Tags:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$static$0(Lorg/jsoup/parser/Tag;)V
    .locals 1

    const/4 v0, 0x1

    .line 323
    iput-boolean v0, p0, Lorg/jsoup/parser/Tag;->isBlock:Z

    .line 324
    iput-boolean v0, p0, Lorg/jsoup/parser/Tag;->formatAsBlock:Z

    return-void
.end method

.method static synthetic lambda$static$1(Lorg/jsoup/parser/Tag;)V
    .locals 1

    const/4 v0, 0x0

    .line 328
    iput-boolean v0, p0, Lorg/jsoup/parser/Tag;->isBlock:Z

    .line 329
    iput-boolean v0, p0, Lorg/jsoup/parser/Tag;->formatAsBlock:Z

    return-void
.end method

.method static synthetic lambda$static$2(Lorg/jsoup/parser/Tag;)V
    .locals 1

    const/4 v0, 0x1

    .line 332
    iput-boolean v0, p0, Lorg/jsoup/parser/Tag;->empty:Z

    return-void
.end method

.method static synthetic lambda$static$3(Lorg/jsoup/parser/Tag;)V
    .locals 1

    const/4 v0, 0x0

    .line 333
    iput-boolean v0, p0, Lorg/jsoup/parser/Tag;->formatAsBlock:Z

    return-void
.end method

.method static synthetic lambda$static$4(Lorg/jsoup/parser/Tag;)V
    .locals 1

    const/4 v0, 0x1

    .line 334
    iput-boolean v0, p0, Lorg/jsoup/parser/Tag;->preserveWhitespace:Z

    return-void
.end method

.method static synthetic lambda$static$5(Lorg/jsoup/parser/Tag;)V
    .locals 1

    const/4 v0, 0x1

    .line 335
    iput-boolean v0, p0, Lorg/jsoup/parser/Tag;->formList:Z

    return-void
.end method

.method static synthetic lambda$static$6(Lorg/jsoup/parser/Tag;)V
    .locals 1

    const/4 v0, 0x1

    .line 336
    iput-boolean v0, p0, Lorg/jsoup/parser/Tag;->formSubmit:Z

    return-void
.end method

.method static synthetic lambda$static$7(Ljava/util/Map$Entry;Lorg/jsoup/parser/Tag;)V
    .locals 0

    .line 338
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    iput-object p0, p1, Lorg/jsoup/parser/Tag;->namespace:Ljava/lang/String;

    return-void
.end method

.method private static setupTags([Ljava/lang/String;Ljava/util/function/Consumer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/function/Consumer<",
            "Lorg/jsoup/parser/Tag;",
            ">;)V"
        }
    .end annotation

    .line 311
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 312
    sget-object v3, Lorg/jsoup/parser/Tag;->Tags:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jsoup/parser/Tag;

    if-nez v4, :cond_0

    .line 314
    new-instance v4, Lorg/jsoup/parser/Tag;

    const-string v5, "http://www.w3.org/1999/xhtml"

    invoke-direct {v4, v2, v5}, Lorg/jsoup/parser/Tag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-object v2, v4, Lorg/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    :cond_0
    invoke-interface {p1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jsoup/parser/Tag;
    .locals 2

    .line 104
    const-string v0, "http://www.w3.org/1999/xhtml"

    sget-object v1, Lorg/jsoup/parser/ParseSettings;->preserveCase:Lorg/jsoup/parser/ParseSettings;

    invoke-static {p0, v0, v1}, Lorg/jsoup/parser/Tag;->valueOf(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/ParseSettings;)Lorg/jsoup/parser/Tag;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/ParseSettings;)Lorg/jsoup/parser/Tag;
    .locals 3

    .line 68
    invoke-static {p0}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 69
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 70
    sget-object v0, Lorg/jsoup/parser/Tag;->Tags:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/parser/Tag;

    if-eqz v1, :cond_0

    .line 71
    iget-object v2, v1, Lorg/jsoup/parser/Tag;->namespace:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 74
    :cond_0
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/ParseSettings;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 75
    invoke-static {p0}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 76
    invoke-static {p0}, Lorg/jsoup/internal/Normalizer;->lowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/parser/Tag;

    if-eqz v0, :cond_2

    .line 78
    iget-object v2, v0, Lorg/jsoup/parser/Tag;->namespace:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 79
    invoke-virtual {p2}, Lorg/jsoup/parser/ParseSettings;->preserveTagCase()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 80
    invoke-virtual {v0}, Lorg/jsoup/parser/Tag;->clone()Lorg/jsoup/parser/Tag;

    move-result-object v0

    .line 81
    iput-object p0, v0, Lorg/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    :cond_1
    return-object v0

    .line 87
    :cond_2
    new-instance p2, Lorg/jsoup/parser/Tag;

    invoke-direct {p2, p0, p1}, Lorg/jsoup/parser/Tag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 88
    iput-boolean p0, p2, Lorg/jsoup/parser/Tag;->isBlock:Z

    return-object p2
.end method

.method public static valueOf(Ljava/lang/String;Lorg/jsoup/parser/ParseSettings;)Lorg/jsoup/parser/Tag;
    .locals 1

    .line 119
    const-string v0, "http://www.w3.org/1999/xhtml"

    invoke-static {p0, v0, p1}, Lorg/jsoup/parser/Tag;->valueOf(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/ParseSettings;)Lorg/jsoup/parser/Tag;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 15
    invoke-virtual {p0}, Lorg/jsoup/parser/Tag;->clone()Lorg/jsoup/parser/Tag;

    move-result-object v0

    return-object v0
.end method

.method protected clone()Lorg/jsoup/parser/Tag;
    .locals 2

    .line 254
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/parser/Tag;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 256
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 219
    :cond_0
    instance-of v1, p1, Lorg/jsoup/parser/Tag;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 221
    :cond_1
    check-cast p1, Lorg/jsoup/parser/Tag;

    .line 223
    iget-object v1, p0, Lorg/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    iget-object v3, p1, Lorg/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 224
    :cond_2
    iget-boolean v1, p0, Lorg/jsoup/parser/Tag;->empty:Z

    iget-boolean v3, p1, Lorg/jsoup/parser/Tag;->empty:Z

    if-eq v1, v3, :cond_3

    return v2

    .line 225
    :cond_3
    iget-boolean v1, p0, Lorg/jsoup/parser/Tag;->formatAsBlock:Z

    iget-boolean v3, p1, Lorg/jsoup/parser/Tag;->formatAsBlock:Z

    if-eq v1, v3, :cond_4

    return v2

    .line 226
    :cond_4
    iget-boolean v1, p0, Lorg/jsoup/parser/Tag;->isBlock:Z

    iget-boolean v3, p1, Lorg/jsoup/parser/Tag;->isBlock:Z

    if-eq v1, v3, :cond_5

    return v2

    .line 227
    :cond_5
    iget-boolean v1, p0, Lorg/jsoup/parser/Tag;->preserveWhitespace:Z

    iget-boolean v3, p1, Lorg/jsoup/parser/Tag;->preserveWhitespace:Z

    if-eq v1, v3, :cond_6

    return v2

    .line 228
    :cond_6
    iget-boolean v1, p0, Lorg/jsoup/parser/Tag;->selfClosing:Z

    iget-boolean v3, p1, Lorg/jsoup/parser/Tag;->selfClosing:Z

    if-eq v1, v3, :cond_7

    return v2

    .line 229
    :cond_7
    iget-boolean v1, p0, Lorg/jsoup/parser/Tag;->formList:Z

    iget-boolean v3, p1, Lorg/jsoup/parser/Tag;->formList:Z

    if-eq v1, v3, :cond_8

    return v2

    .line 230
    :cond_8
    iget-boolean v1, p0, Lorg/jsoup/parser/Tag;->formSubmit:Z

    iget-boolean p1, p1, Lorg/jsoup/parser/Tag;->formSubmit:Z

    if-ne v1, p1, :cond_9

    goto :goto_0

    :cond_9
    move v0, v2

    :goto_0
    return v0
.end method

.method public formatAsBlock()Z
    .locals 1

    .line 137
    iget-boolean v0, p0, Lorg/jsoup/parser/Tag;->formatAsBlock:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 235
    iget-object v0, p0, Lorg/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 236
    iget-boolean v1, p0, Lorg/jsoup/parser/Tag;->isBlock:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 237
    iget-boolean v1, p0, Lorg/jsoup/parser/Tag;->formatAsBlock:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 238
    iget-boolean v1, p0, Lorg/jsoup/parser/Tag;->empty:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 239
    iget-boolean v1, p0, Lorg/jsoup/parser/Tag;->selfClosing:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 240
    iget-boolean v1, p0, Lorg/jsoup/parser/Tag;->preserveWhitespace:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 241
    iget-boolean v1, p0, Lorg/jsoup/parser/Tag;->formList:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 242
    iget-boolean v1, p0, Lorg/jsoup/parser/Tag;->formSubmit:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public isBlock()Z
    .locals 1

    .line 128
    iget-boolean v0, p0, Lorg/jsoup/parser/Tag;->isBlock:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 155
    iget-boolean v0, p0, Lorg/jsoup/parser/Tag;->empty:Z

    return v0
.end method

.method public isFormListed()Z
    .locals 1

    .line 200
    iget-boolean v0, p0, Lorg/jsoup/parser/Tag;->formList:Z

    return v0
.end method

.method public isFormSubmittable()Z
    .locals 1

    .line 208
    iget-boolean v0, p0, Lorg/jsoup/parser/Tag;->formSubmit:Z

    return v0
.end method

.method public isInline()Z
    .locals 1

    .line 146
    iget-boolean v0, p0, Lorg/jsoup/parser/Tag;->isBlock:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isKnownTag()Z
    .locals 2

    .line 173
    sget-object v0, Lorg/jsoup/parser/Tag;->Tags:Ljava/util/Map;

    iget-object v1, p0, Lorg/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSelfClosing()Z
    .locals 1

    .line 164
    iget-boolean v0, p0, Lorg/jsoup/parser/Tag;->empty:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/jsoup/parser/Tag;->selfClosing:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public namespace()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/jsoup/parser/Tag;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method public normalName()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/jsoup/parser/Tag;->normalName:Ljava/lang/String;

    return-object v0
.end method

.method public preserveWhitespace()Z
    .locals 1

    .line 192
    iget-boolean v0, p0, Lorg/jsoup/parser/Tag;->preserveWhitespace:Z

    return v0
.end method

.method setSelfClosing()Lorg/jsoup/parser/Tag;
    .locals 1

    const/4 v0, 0x1

    .line 212
    iput-boolean v0, p0, Lorg/jsoup/parser/Tag;->selfClosing:Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 248
    iget-object v0, p0, Lorg/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    return-object v0
.end method
