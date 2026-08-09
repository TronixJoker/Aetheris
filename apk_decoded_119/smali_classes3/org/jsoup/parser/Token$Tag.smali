.class abstract Lorg/jsoup/parser/Token$Tag;
.super Lorg/jsoup/parser/Token;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Tag"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final MaxAttributes:I = 0x200


# instance fields
.field private attrName:Ljava/lang/String;

.field attrNameEnd:I

.field private final attrNameSb:Ljava/lang/StringBuilder;

.field attrNameStart:I

.field attrValEnd:I

.field attrValStart:I

.field private attrValue:Ljava/lang/String;

.field private final attrValueSb:Ljava/lang/StringBuilder;

.field attributes:Lorg/jsoup/nodes/Attributes;

.field private hasAttrName:Z

.field private hasAttrValue:Z

.field private hasEmptyAttrValue:Z

.field protected normalName:Ljava/lang/String;

.field selfClosing:Z

.field protected tagName:Ljava/lang/String;

.field final trackSource:Z

.field final treeBuilder:Lorg/jsoup/parser/TreeBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 111
    const-class v0, Lorg/jsoup/parser/Token;

    return-void
.end method

.method constructor <init>(Lorg/jsoup/parser/Token$TokenType;Lorg/jsoup/parser/TreeBuilder;)V
    .locals 1

    const/4 v0, 0x0

    .line 132
    invoke-direct {p0, p1, v0}, Lorg/jsoup/parser/Token;-><init>(Lorg/jsoup/parser/Token$TokenType;Lorg/jsoup/parser/Token$1;)V

    const/4 p1, 0x0

    .line 114
    iput-boolean p1, p0, Lorg/jsoup/parser/Token$Tag;->selfClosing:Z

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrNameSb:Ljava/lang/StringBuilder;

    .line 119
    iput-boolean p1, p0, Lorg/jsoup/parser/Token$Tag;->hasAttrName:Z

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrValueSb:Ljava/lang/StringBuilder;

    .line 123
    iput-boolean p1, p0, Lorg/jsoup/parser/Token$Tag;->hasAttrValue:Z

    .line 124
    iput-boolean p1, p0, Lorg/jsoup/parser/Token$Tag;->hasEmptyAttrValue:Z

    .line 133
    iput-object p2, p0, Lorg/jsoup/parser/Token$Tag;->treeBuilder:Lorg/jsoup/parser/TreeBuilder;

    .line 134
    iget-boolean p1, p2, Lorg/jsoup/parser/TreeBuilder;->trackSourceRange:Z

    iput-boolean p1, p0, Lorg/jsoup/parser/Token$Tag;->trackSource:Z

    return-void
.end method

.method private ensureAttrName(II)V
    .locals 2

    const/4 v0, 0x1

    .line 325
    iput-boolean v0, p0, Lorg/jsoup/parser/Token$Tag;->hasAttrName:Z

    .line 327
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 328
    iget-object v1, p0, Lorg/jsoup/parser/Token$Tag;->attrNameSb:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 329
    iput-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrName:Ljava/lang/String;

    .line 331
    :cond_0
    iget-boolean v0, p0, Lorg/jsoup/parser/Token$Tag;->trackSource:Z

    if-eqz v0, :cond_2

    .line 332
    iget v0, p0, Lorg/jsoup/parser/Token$Tag;->attrNameStart:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    move p1, v0

    :cond_1
    iput p1, p0, Lorg/jsoup/parser/Token$Tag;->attrNameStart:I

    .line 333
    iput p2, p0, Lorg/jsoup/parser/Token$Tag;->attrNameEnd:I

    :cond_2
    return-void
.end method

.method private ensureAttrValue(II)V
    .locals 2

    const/4 v0, 0x1

    .line 338
    iput-boolean v0, p0, Lorg/jsoup/parser/Token$Tag;->hasAttrValue:Z

    .line 340
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 341
    iget-object v1, p0, Lorg/jsoup/parser/Token$Tag;->attrValueSb:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 342
    iput-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrValue:Ljava/lang/String;

    .line 344
    :cond_0
    iget-boolean v0, p0, Lorg/jsoup/parser/Token$Tag;->trackSource:Z

    if-eqz v0, :cond_2

    .line 345
    iget v0, p0, Lorg/jsoup/parser/Token$Tag;->attrValStart:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    move p1, v0

    :cond_1
    iput p1, p0, Lorg/jsoup/parser/Token$Tag;->attrValStart:I

    .line 346
    iput p2, p0, Lorg/jsoup/parser/Token$Tag;->attrValEnd:I

    :cond_2
    return-void
.end method

.method private resetPendingAttr()V
    .locals 3

    .line 149
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrNameSb:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/jsoup/parser/Token$Tag;->reset(Ljava/lang/StringBuilder;)V

    const/4 v0, 0x0

    .line 150
    iput-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrName:Ljava/lang/String;

    const/4 v1, 0x0

    .line 151
    iput-boolean v1, p0, Lorg/jsoup/parser/Token$Tag;->hasAttrName:Z

    .line 153
    iget-object v2, p0, Lorg/jsoup/parser/Token$Tag;->attrValueSb:Ljava/lang/StringBuilder;

    invoke-static {v2}, Lorg/jsoup/parser/Token$Tag;->reset(Ljava/lang/StringBuilder;)V

    .line 154
    iput-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrValue:Ljava/lang/String;

    .line 155
    iput-boolean v1, p0, Lorg/jsoup/parser/Token$Tag;->hasEmptyAttrValue:Z

    .line 156
    iput-boolean v1, p0, Lorg/jsoup/parser/Token$Tag;->hasAttrValue:Z

    .line 158
    iget-boolean v0, p0, Lorg/jsoup/parser/Token$Tag;->trackSource:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 159
    iput v0, p0, Lorg/jsoup/parser/Token$Tag;->attrValEnd:I

    iput v0, p0, Lorg/jsoup/parser/Token$Tag;->attrValStart:I

    iput v0, p0, Lorg/jsoup/parser/Token$Tag;->attrNameEnd:I

    iput v0, p0, Lorg/jsoup/parser/Token$Tag;->attrNameStart:I

    :cond_0
    return-void
.end method

.method private trackAttributeRange(Ljava/lang/String;)V
    .locals 10

    .line 193
    iget-boolean v0, p0, Lorg/jsoup/parser/Token$Tag;->trackSource:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lorg/jsoup/parser/Token$Tag;->isStartTag()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 194
    invoke-virtual {p0}, Lorg/jsoup/parser/Token$Tag;->asStartTag()Lorg/jsoup/parser/Token$StartTag;

    move-result-object v0

    .line 195
    iget-object v1, v0, Lorg/jsoup/parser/Token$StartTag;->treeBuilder:Lorg/jsoup/parser/TreeBuilder;

    iget-object v1, v1, Lorg/jsoup/parser/TreeBuilder;->reader:Lorg/jsoup/parser/CharacterReader;

    .line 196
    iget-object v0, v0, Lorg/jsoup/parser/Token$StartTag;->treeBuilder:Lorg/jsoup/parser/TreeBuilder;

    iget-object v0, v0, Lorg/jsoup/parser/TreeBuilder;->settings:Lorg/jsoup/parser/ParseSettings;

    invoke-virtual {v0}, Lorg/jsoup/parser/ParseSettings;->preserveAttributeCase()Z

    move-result v0

    .line 200
    iget-object v2, p0, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    .line 201
    const-string v3, "jsoup.attrs"

    invoke-virtual {v2, v3}, Lorg/jsoup/nodes/Attributes;->userData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-nez v2, :cond_0

    .line 203
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 204
    iget-object v4, p0, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    invoke-virtual {v4, v3, v2}, Lorg/jsoup/nodes/Attributes;->userData(Ljava/lang/String;Ljava/lang/Object;)Lorg/jsoup/nodes/Attributes;

    :cond_0
    if-nez v0, :cond_1

    .line 207
    invoke-static {p1}, Lorg/jsoup/internal/Normalizer;->lowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 208
    :cond_1
    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 211
    :cond_2
    iget-boolean v0, p0, Lorg/jsoup/parser/Token$Tag;->hasAttrValue:Z

    if-nez v0, :cond_3

    iget v0, p0, Lorg/jsoup/parser/Token$Tag;->attrNameEnd:I

    iput v0, p0, Lorg/jsoup/parser/Token$Tag;->attrValEnd:I

    iput v0, p0, Lorg/jsoup/parser/Token$Tag;->attrValStart:I

    .line 213
    :cond_3
    new-instance v0, Lorg/jsoup/nodes/Range$AttributeRange;

    new-instance v3, Lorg/jsoup/nodes/Range;

    new-instance v4, Lorg/jsoup/nodes/Range$Position;

    iget v5, p0, Lorg/jsoup/parser/Token$Tag;->attrNameStart:I

    .line 215
    invoke-virtual {v1, v5}, Lorg/jsoup/parser/CharacterReader;->lineNumber(I)I

    move-result v6

    iget v7, p0, Lorg/jsoup/parser/Token$Tag;->attrNameStart:I

    invoke-virtual {v1, v7}, Lorg/jsoup/parser/CharacterReader;->columnNumber(I)I

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Lorg/jsoup/nodes/Range$Position;-><init>(III)V

    new-instance v5, Lorg/jsoup/nodes/Range$Position;

    iget v6, p0, Lorg/jsoup/parser/Token$Tag;->attrNameEnd:I

    .line 216
    invoke-virtual {v1, v6}, Lorg/jsoup/parser/CharacterReader;->lineNumber(I)I

    move-result v7

    iget v8, p0, Lorg/jsoup/parser/Token$Tag;->attrNameEnd:I

    invoke-virtual {v1, v8}, Lorg/jsoup/parser/CharacterReader;->columnNumber(I)I

    move-result v8

    invoke-direct {v5, v6, v7, v8}, Lorg/jsoup/nodes/Range$Position;-><init>(III)V

    invoke-direct {v3, v4, v5}, Lorg/jsoup/nodes/Range;-><init>(Lorg/jsoup/nodes/Range$Position;Lorg/jsoup/nodes/Range$Position;)V

    new-instance v4, Lorg/jsoup/nodes/Range;

    new-instance v5, Lorg/jsoup/nodes/Range$Position;

    iget v6, p0, Lorg/jsoup/parser/Token$Tag;->attrValStart:I

    .line 218
    invoke-virtual {v1, v6}, Lorg/jsoup/parser/CharacterReader;->lineNumber(I)I

    move-result v7

    iget v8, p0, Lorg/jsoup/parser/Token$Tag;->attrValStart:I

    invoke-virtual {v1, v8}, Lorg/jsoup/parser/CharacterReader;->columnNumber(I)I

    move-result v8

    invoke-direct {v5, v6, v7, v8}, Lorg/jsoup/nodes/Range$Position;-><init>(III)V

    new-instance v6, Lorg/jsoup/nodes/Range$Position;

    iget v7, p0, Lorg/jsoup/parser/Token$Tag;->attrValEnd:I

    .line 219
    invoke-virtual {v1, v7}, Lorg/jsoup/parser/CharacterReader;->lineNumber(I)I

    move-result v8

    iget v9, p0, Lorg/jsoup/parser/Token$Tag;->attrValEnd:I

    invoke-virtual {v1, v9}, Lorg/jsoup/parser/CharacterReader;->columnNumber(I)I

    move-result v1

    invoke-direct {v6, v7, v8, v1}, Lorg/jsoup/nodes/Range$Position;-><init>(III)V

    invoke-direct {v4, v5, v6}, Lorg/jsoup/nodes/Range;-><init>(Lorg/jsoup/nodes/Range$Position;Lorg/jsoup/nodes/Range$Position;)V

    invoke-direct {v0, v3, v4}, Lorg/jsoup/nodes/Range$AttributeRange;-><init>(Lorg/jsoup/nodes/Range;Lorg/jsoup/nodes/Range;)V

    .line 221
    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method


# virtual methods
.method final appendAttributeName(CII)V
    .locals 0

    .line 295
    invoke-direct {p0, p2, p3}, Lorg/jsoup/parser/Token$Tag;->ensureAttrName(II)V

    .line 296
    iget-object p2, p0, Lorg/jsoup/parser/Token$Tag;->attrNameSb:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method final appendAttributeName(Ljava/lang/String;II)V
    .locals 2

    const/4 v0, 0x0

    const v1, 0xfffd

    .line 284
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 286
    invoke-direct {p0, p2, p3}, Lorg/jsoup/parser/Token$Tag;->ensureAttrName(II)V

    .line 287
    iget-object p2, p0, Lorg/jsoup/parser/Token$Tag;->attrNameSb:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-nez p2, :cond_0

    .line 288
    iput-object p1, p0, Lorg/jsoup/parser/Token$Tag;->attrName:Ljava/lang/String;

    goto :goto_0

    .line 290
    :cond_0
    iget-object p2, p0, Lorg/jsoup/parser/Token$Tag;->attrNameSb:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method final appendAttributeValue(CII)V
    .locals 0

    .line 309
    invoke-direct {p0, p2, p3}, Lorg/jsoup/parser/Token$Tag;->ensureAttrValue(II)V

    .line 310
    iget-object p2, p0, Lorg/jsoup/parser/Token$Tag;->attrValueSb:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method final appendAttributeValue(Ljava/lang/String;II)V
    .locals 0

    .line 300
    invoke-direct {p0, p2, p3}, Lorg/jsoup/parser/Token$Tag;->ensureAttrValue(II)V

    .line 301
    iget-object p2, p0, Lorg/jsoup/parser/Token$Tag;->attrValueSb:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-nez p2, :cond_0

    .line 302
    iput-object p1, p0, Lorg/jsoup/parser/Token$Tag;->attrValue:Ljava/lang/String;

    goto :goto_0

    .line 304
    :cond_0
    iget-object p2, p0, Lorg/jsoup/parser/Token$Tag;->attrValueSb:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method final appendAttributeValue([III)V
    .locals 2

    .line 314
    invoke-direct {p0, p2, p3}, Lorg/jsoup/parser/Token$Tag;->ensureAttrValue(II)V

    .line 315
    array-length p2, p1

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_0

    aget v0, p1, p3

    .line 316
    iget-object v1, p0, Lorg/jsoup/parser/Token$Tag;->attrValueSb:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method final appendTagName(C)V
    .locals 0

    .line 279
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/Token$Tag;->appendTagName(Ljava/lang/String;)V

    return-void
.end method

.method final appendTagName(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const v1, 0xfffd

    .line 273
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 274
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    .line 275
    invoke-static {p1}, Lorg/jsoup/parser/ParseSettings;->normalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jsoup/parser/Token$Tag;->normalName:Ljava/lang/String;

    return-void
.end method

.method final finaliseTag()V
    .locals 1

    .line 240
    iget-boolean v0, p0, Lorg/jsoup/parser/Token$Tag;->hasAttrName:Z

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {p0}, Lorg/jsoup/parser/Token$Tag;->newAttribute()V

    :cond_0
    return-void
.end method

.method final hasAttribute(Ljava/lang/String;)Z
    .locals 1

    .line 231
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/Attributes;->hasKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method final hasAttributeIgnoreCase(Ljava/lang/String;)Z
    .locals 1

    .line 235
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/Attributes;->hasKeyIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method final hasAttributes()Z
    .locals 1

    .line 226
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method final isSelfClosing()Z
    .locals 1

    .line 267
    iget-boolean v0, p0, Lorg/jsoup/parser/Token$Tag;->selfClosing:Z

    return v0
.end method

.method final name()Ljava/lang/String;
    .locals 1

    .line 247
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lorg/jsoup/helper/Validate;->isFalse(Z)V

    .line 248
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    return-object v0
.end method

.method final name(Ljava/lang/String;)Lorg/jsoup/parser/Token$Tag;
    .locals 0

    .line 261
    iput-object p1, p0, Lorg/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    .line 262
    invoke-static {p1}, Lorg/jsoup/parser/ParseSettings;->normalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jsoup/parser/Token$Tag;->normalName:Ljava/lang/String;

    return-object p0
.end method

.method final newAttribute()V
    .locals 3

    .line 168
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Lorg/jsoup/nodes/Attributes;

    invoke-direct {v0}, Lorg/jsoup/nodes/Attributes;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    .line 171
    :cond_0
    iget-boolean v0, p0, Lorg/jsoup/parser/Token$Tag;->hasAttrName:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    invoke-virtual {v0}, Lorg/jsoup/nodes/Attributes;->size()I

    move-result v0

    const/16 v1, 0x200

    if-ge v0, v1, :cond_5

    .line 173
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrNameSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrNameSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrName:Ljava/lang/String;

    .line 174
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 177
    iget-boolean v1, p0, Lorg/jsoup/parser/Token$Tag;->hasAttrValue:Z

    if-eqz v1, :cond_3

    .line 178
    iget-object v1, p0, Lorg/jsoup/parser/Token$Tag;->attrValueSb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lorg/jsoup/parser/Token$Tag;->attrValueSb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lorg/jsoup/parser/Token$Tag;->attrValue:Ljava/lang/String;

    goto :goto_1

    .line 179
    :cond_3
    iget-boolean v1, p0, Lorg/jsoup/parser/Token$Tag;->hasEmptyAttrValue:Z

    if-eqz v1, :cond_4

    .line 180
    const-string v1, ""

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    .line 184
    :goto_1
    iget-object v2, p0, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    invoke-virtual {v2, v0, v1}, Lorg/jsoup/nodes/Attributes;->add(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Attributes;

    .line 186
    invoke-direct {p0, v0}, Lorg/jsoup/parser/Token$Tag;->trackAttributeRange(Ljava/lang/String;)V

    .line 189
    :cond_5
    invoke-direct {p0}, Lorg/jsoup/parser/Token$Tag;->resetPendingAttr()V

    return-void
.end method

.method final normalName()Ljava/lang/String;
    .locals 1

    .line 253
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->normalName:Ljava/lang/String;

    return-object v0
.end method

.method reset()Lorg/jsoup/parser/Token$Tag;
    .locals 2

    .line 139
    invoke-super {p0}, Lorg/jsoup/parser/Token;->reset()Lorg/jsoup/parser/Token;

    const/4 v0, 0x0

    .line 140
    iput-object v0, p0, Lorg/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    .line 141
    iput-object v0, p0, Lorg/jsoup/parser/Token$Tag;->normalName:Ljava/lang/String;

    const/4 v1, 0x0

    .line 142
    iput-boolean v1, p0, Lorg/jsoup/parser/Token$Tag;->selfClosing:Z

    .line 143
    iput-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    .line 144
    invoke-direct {p0}, Lorg/jsoup/parser/Token$Tag;->resetPendingAttr()V

    return-object p0
.end method

.method bridge synthetic reset()Lorg/jsoup/parser/Token;
    .locals 1

    .line 111
    invoke-virtual {p0}, Lorg/jsoup/parser/Token$Tag;->reset()Lorg/jsoup/parser/Token$Tag;

    move-result-object v0

    return-object v0
.end method

.method final setEmptyAttributeValue()V
    .locals 1

    const/4 v0, 0x1

    .line 321
    iput-boolean v0, p0, Lorg/jsoup/parser/Token$Tag;->hasEmptyAttrValue:Z

    return-void
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method final toStringName()Ljava/lang/String;
    .locals 1

    .line 257
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "[unset]"

    :goto_0
    return-object v0
.end method
