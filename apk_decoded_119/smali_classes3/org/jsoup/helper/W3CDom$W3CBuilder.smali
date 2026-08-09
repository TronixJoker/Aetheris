.class public Lorg/jsoup/helper/W3CDom$W3CBuilder;
.super Ljava/lang/Object;
.source "W3CDom.java"

# interfaces
.implements Lorg/jsoup/select/NodeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/helper/W3CDom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "W3CBuilder"
.end annotation


# static fields
.field private static final xmlnsKey:Ljava/lang/String; = "xmlns"

.field private static final xmlnsPrefix:Ljava/lang/String; = "xmlns:"


# instance fields
.field private final contextElement:Lorg/jsoup/nodes/Element;

.field private dest:Lorg/w3c/dom/Node;

.field private final doc:Lorg/w3c/dom/Document;

.field private namespaceAware:Z

.field private final namespacesStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private syntax:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Document;)V
    .locals 2

    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 352
    iput-boolean v0, p0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->namespaceAware:Z

    .line 353
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->namespacesStack:Ljava/util/Stack;

    .line 355
    sget-object v1, Lorg/jsoup/nodes/Document$OutputSettings$Syntax;->xml:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    iput-object v1, p0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->syntax:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    .line 359
    iput-object p1, p0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->doc:Lorg/w3c/dom/Document;

    .line 360
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    iput-object p1, p0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->dest:Lorg/w3c/dom/Node;

    .line 362
    const-string v1, "jsoupContextSource"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Document;->getUserData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jsoup/nodes/Element;

    iput-object p1, p0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->contextElement:Lorg/jsoup/nodes/Element;

    .line 363
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->ownerDocument()Lorg/jsoup/nodes/Document;

    move-result-object p1

    .line 364
    iget-boolean v1, p0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->namespaceAware:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/jsoup/nodes/Document;->parser()Lorg/jsoup/parser/Parser;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jsoup/parser/Parser;->getTreeBuilder()Lorg/jsoup/parser/TreeBuilder;

    move-result-object p1

    instance-of p1, p1, Lorg/jsoup/parser/HtmlTreeBuilder;

    if-eqz p1, :cond_0

    .line 366
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    const-string v0, ""

    const-string v1, "http://www.w3.org/1999/xhtml"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method static synthetic access$002(Lorg/jsoup/helper/W3CDom$W3CBuilder;Z)Z
    .locals 0

    .line 346
    iput-boolean p1, p0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->namespaceAware:Z

    return p1
.end method

.method static synthetic access$102(Lorg/jsoup/helper/W3CDom$W3CBuilder;Lorg/jsoup/nodes/Document$OutputSettings$Syntax;)Lorg/jsoup/nodes/Document$OutputSettings$Syntax;
    .locals 0

    .line 346
    iput-object p1, p0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->syntax:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    return-object p1
.end method

.method private append(Lorg/w3c/dom/Node;Lorg/jsoup/nodes/Node;)V
    .locals 2

    .line 413
    const-string v0, "jsoupSource"

    const/4 v1, 0x0

    invoke-interface {p1, v0, p2, v1}, Lorg/w3c/dom/Node;->setUserData(Ljava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)Ljava/lang/Object;

    .line 414
    iget-object p2, p0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->dest:Lorg/w3c/dom/Node;

    invoke-interface {p2, p1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method private copyAttributes(Lorg/jsoup/nodes/Node;Lorg/w3c/dom/Element;)V
    .locals 3

    .line 425
    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->attributes()Lorg/jsoup/nodes/Attributes;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jsoup/nodes/Attributes;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Attribute;

    .line 426
    invoke-virtual {v0}, Lorg/jsoup/nodes/Attribute;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->syntax:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    invoke-static {v1, v2}, Lorg/jsoup/nodes/Attribute;->getValidKey(Ljava/lang/String;Lorg/jsoup/nodes/Document$OutputSettings$Syntax;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 428
    invoke-virtual {v0}, Lorg/jsoup/nodes/Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateNamespaces(Lorg/jsoup/nodes/Element;)Ljava/lang/String;
    .locals 5

    .line 439
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    move-result-object v0

    .line 440
    invoke-virtual {v0}, Lorg/jsoup/nodes/Attributes;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Attribute;

    .line 441
    invoke-virtual {v1}, Lorg/jsoup/nodes/Attribute;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 443
    const-string v4, "xmlns"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 445
    :cond_1
    const-string v2, "xmlns:"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x6

    .line 446
    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 450
    :goto_1
    iget-object v3, p0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->namespacesStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v1}, Lorg/jsoup/nodes/Attribute;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 454
    :cond_2
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_3

    .line 455
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_3
    return-object v2
.end method


# virtual methods
.method public head(Lorg/jsoup/nodes/Node;I)V
    .locals 4

    .line 371
    iget-object p2, p0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->namespacesStack:Ljava/util/Stack;

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->namespacesStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {p2, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    instance-of p2, p1, Lorg/jsoup/nodes/Element;

    if-eqz p2, :cond_3

    .line 373
    check-cast p1, Lorg/jsoup/nodes/Element;

    .line 375
    invoke-direct {p0, p1}, Lorg/jsoup/helper/W3CDom$W3CBuilder;->updateNamespaces(Lorg/jsoup/nodes/Element;)Ljava/lang/String;

    move-result-object p2

    .line 376
    iget-boolean v0, p0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->namespaceAware:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->namespacesStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p2, v1

    .line 377
    :goto_0
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v0

    if-nez p2, :cond_1

    .line 385
    :try_start_0
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p2, ""

    .line 386
    :cond_1
    iget-object v2, p0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->doc:Lorg/w3c/dom/Document;

    invoke-interface {v2, p2, v0}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    .line 387
    invoke-direct {p0, p1, p2}, Lorg/jsoup/helper/W3CDom$W3CBuilder;->copyAttributes(Lorg/jsoup/nodes/Node;Lorg/w3c/dom/Element;)V

    .line 388
    invoke-direct {p0, p2, p1}, Lorg/jsoup/helper/W3CDom$W3CBuilder;->append(Lorg/w3c/dom/Node;Lorg/jsoup/nodes/Node;)V

    .line 389
    iget-object v2, p0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->contextElement:Lorg/jsoup/nodes/Element;

    if-ne p1, v2, :cond_2

    .line 390
    iget-object v2, p0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->doc:Lorg/w3c/dom/Document;

    const-string v3, "jsoupContextNode"

    invoke-interface {v2, v3, p2, v1}, Lorg/w3c/dom/Document;->setUserData(Ljava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)Ljava/lang/Object;

    .line 391
    :cond_2
    iput-object p2, p0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->dest:Lorg/w3c/dom/Node;
    :try_end_0
    .catch Lorg/w3c/dom/DOMException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 393
    :catch_0
    iget-object p2, p0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->doc:Lorg/w3c/dom/Document;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lorg/jsoup/helper/W3CDom$W3CBuilder;->append(Lorg/w3c/dom/Node;Lorg/jsoup/nodes/Node;)V

    goto :goto_1

    .line 395
    :cond_3
    instance-of p2, p1, Lorg/jsoup/nodes/TextNode;

    if-eqz p2, :cond_4

    .line 396
    check-cast p1, Lorg/jsoup/nodes/TextNode;

    .line 397
    iget-object p2, p0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->doc:Lorg/w3c/dom/Document;

    invoke-virtual {p1}, Lorg/jsoup/nodes/TextNode;->getWholeText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object p2

    .line 398
    invoke-direct {p0, p2, p1}, Lorg/jsoup/helper/W3CDom$W3CBuilder;->append(Lorg/w3c/dom/Node;Lorg/jsoup/nodes/Node;)V

    goto :goto_1

    .line 399
    :cond_4
    instance-of p2, p1, Lorg/jsoup/nodes/Comment;

    if-eqz p2, :cond_5

    .line 400
    check-cast p1, Lorg/jsoup/nodes/Comment;

    .line 401
    iget-object p2, p0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->doc:Lorg/w3c/dom/Document;

    invoke-virtual {p1}, Lorg/jsoup/nodes/Comment;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/w3c/dom/Document;->createComment(Ljava/lang/String;)Lorg/w3c/dom/Comment;

    move-result-object p2

    .line 402
    invoke-direct {p0, p2, p1}, Lorg/jsoup/helper/W3CDom$W3CBuilder;->append(Lorg/w3c/dom/Node;Lorg/jsoup/nodes/Node;)V

    goto :goto_1

    .line 403
    :cond_5
    instance-of p2, p1, Lorg/jsoup/nodes/DataNode;

    if-eqz p2, :cond_6

    .line 404
    check-cast p1, Lorg/jsoup/nodes/DataNode;

    .line 405
    iget-object p2, p0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->doc:Lorg/w3c/dom/Document;

    invoke-virtual {p1}, Lorg/jsoup/nodes/DataNode;->getWholeData()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object p2

    .line 406
    invoke-direct {p0, p2, p1}, Lorg/jsoup/helper/W3CDom$W3CBuilder;->append(Lorg/w3c/dom/Node;Lorg/jsoup/nodes/Node;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public tail(Lorg/jsoup/nodes/Node;I)V
    .locals 0

    .line 418
    instance-of p1, p1, Lorg/jsoup/nodes/Element;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->dest:Lorg/w3c/dom/Node;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    instance-of p1, p1, Lorg/w3c/dom/Element;

    if-eqz p1, :cond_0

    .line 419
    iget-object p1, p0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->dest:Lorg/w3c/dom/Node;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    iput-object p1, p0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->dest:Lorg/w3c/dom/Node;

    .line 421
    :cond_0
    iget-object p1, p0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->namespacesStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method
