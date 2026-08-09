.class public final Lorg/jsoup/internal/StringUtil;
.super Ljava/lang/Object;
.source "StringUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/internal/StringUtil$StringJoiner;
    }
.end annotation


# static fields
.field private static final MaxCachedBuilderSize:I = 0x2000

.field private static final MaxIdleBuilders:I = 0x8

.field private static final controlChars:Ljava/util/regex/Pattern;

.field private static final extraDotSegmentsPattern:Ljava/util/regex/Pattern;

.field static final padding:[Ljava/lang/String;

.field private static final threadLocalBuilders:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Stack<",
            "Ljava/lang/StringBuilder;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final validUriScheme:Ljava/util/regex/Pattern;


# direct methods
.method public static synthetic $r8$lambda$cmRHdJWHKGETwOWOynUcYviDZyQ()Ljava/util/Stack;
    .locals 1

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x15

    .line 20
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, " "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "  "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "   "

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "    "

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "     "

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "      "

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "       "

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "        "

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "         "

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "          "

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "           "

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "            "

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "             "

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "              "

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "               "

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "                "

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "                 "

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "                  "

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "                   "

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "                    "

    aput-object v2, v0, v1

    sput-object v0, Lorg/jsoup/internal/StringUtil;->padding:[Ljava/lang/String;

    .line 284
    const-string v0, "^/((\\.{1,2}/)+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jsoup/internal/StringUtil;->extraDotSegmentsPattern:Ljava/util/regex/Pattern;

    .line 331
    const-string v0, "^[a-zA-Z][a-zA-Z0-9+-.]*:"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jsoup/internal/StringUtil;->validUriScheme:Ljava/util/regex/Pattern;

    .line 333
    const-string v0, "[\\x00-\\x1f]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jsoup/internal/StringUtil;->controlChars:Ljava/util/regex/Pattern;

    .line 338
    new-instance v0, Lorg/jsoup/internal/StringUtil$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/jsoup/internal/StringUtil$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Lorg/jsoup/internal/StringUtil;->threadLocalBuilders:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendNormalisedWhitespace(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V
    .locals 8

    .line 237
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v2, v0, :cond_4

    .line 240
    invoke-virtual {p1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    .line 241
    invoke-static {v5}, Lorg/jsoup/internal/StringUtil;->isActuallyWhitespace(I)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_2

    if-eqz p2, :cond_0

    if-eqz v3, :cond_3

    :cond_0
    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/16 v4, 0x20

    .line 244
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v4, v7

    goto :goto_1

    .line 247
    :cond_2
    invoke-static {v5}, Lorg/jsoup/internal/StringUtil;->isInvisibleChar(I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 248
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    move v4, v1

    move v3, v7

    .line 239
    :cond_3
    :goto_1
    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v2, v5

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static borrowBuilder()Ljava/lang/StringBuilder;
    .locals 2

    .line 348
    sget-object v0, Lorg/jsoup/internal/StringUtil;->threadLocalBuilders:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    .line 349
    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x2000

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    goto :goto_0

    .line 351
    :cond_0
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    :goto_0
    return-object v0
.end method

.method public static varargs in(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4

    .line 256
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 258
    aget-object v3, p1, v2

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static inSorted(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 0

    .line 265
    invoke-static {p1, p0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isActuallyWhitespace(I)Z
    .locals 1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isAscii(Ljava/lang/String;)Z
    .locals 4

    .line 274
    invoke-static {p0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    move v1, v0

    .line 275
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 276
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x7f

    if-le v2, v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static isBlank(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    .line 151
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 154
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    .line 156
    invoke-virtual {p0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    invoke-static {v4}, Lorg/jsoup/internal/StringUtil;->isWhitespace(I)Z

    move-result v4

    if-nez v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public static isInvisibleChar(I)Z
    .locals 1

    const/16 v0, 0x200b

    if-eq p0, v0, :cond_1

    const/16 v0, 0xad

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 179
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 182
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 184
    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(I)Z

    move-result v3

    if-nez v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    return v0
.end method

.method public static isWhitespace(I)Z
    .locals 1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 31
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/jsoup/internal/StringUtil;->join(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static join(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 41
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    const-string p0, ""

    return-object p0

    .line 44
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 48
    :cond_1
    new-instance v1, Lorg/jsoup/internal/StringUtil$StringJoiner;

    invoke-direct {v1, p1}, Lorg/jsoup/internal/StringUtil$StringJoiner;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v1, v0}, Lorg/jsoup/internal/StringUtil$StringJoiner;->add(Ljava/lang/Object;)Lorg/jsoup/internal/StringUtil$StringJoiner;

    .line 50
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 51
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/jsoup/internal/StringUtil$StringJoiner;->add(Ljava/lang/Object;)Lorg/jsoup/internal/StringUtil$StringJoiner;

    goto :goto_0

    .line 53
    :cond_2
    invoke-virtual {v1}, Lorg/jsoup/internal/StringUtil$StringJoiner;->complete()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static join([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 63
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/jsoup/internal/StringUtil;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static normaliseWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 222
    invoke-static {}, Lorg/jsoup/internal/StringUtil;->borrowBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    .line 223
    invoke-static {v0, p0, v1}, Lorg/jsoup/internal/StringUtil;->appendNormalisedWhitespace(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 224
    invoke-static {v0}, Lorg/jsoup/internal/StringUtil;->releaseBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static padding(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x1e

    .line 123
    invoke-static {p0, v0}, Lorg/jsoup/internal/StringUtil;->padding(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static padding(II)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 133
    :goto_0
    const-string v3, "width must be >= 0"

    invoke-static {v2, v3}, Lorg/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    const/4 v2, -0x1

    if-lt p1, v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 134
    :goto_1
    invoke-static {v0}, Lorg/jsoup/helper/Validate;->isTrue(Z)V

    if-eq p1, v2, :cond_2

    .line 136
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 137
    :cond_2
    sget-object p1, Lorg/jsoup/internal/StringUtil;->padding:[Ljava/lang/String;

    array-length v0, p1

    if-ge p0, v0, :cond_3

    .line 138
    aget-object p0, p1, p0

    return-object p0

    .line 139
    :cond_3
    new-array p1, p0, [C

    :goto_2
    if-ge v1, p0, :cond_4

    const/16 v0, 0x20

    .line 141
    aput-char v0, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 142
    :cond_4
    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static releaseBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 3

    .line 361
    invoke-static {p0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 362
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 364
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/16 v2, 0x2000

    if-le v1, v2, :cond_0

    .line 365
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 367
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 369
    :goto_0
    sget-object v1, Lorg/jsoup/internal/StringUtil;->threadLocalBuilders:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Stack;

    .line 370
    invoke-virtual {v1, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    :goto_1
    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result p0

    const/16 v2, 0x8

    if-le p0, v2, :cond_1

    .line 373
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public static resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 314
    invoke-static {p0}, Lorg/jsoup/internal/StringUtil;->stripControlChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lorg/jsoup/internal/StringUtil;->stripControlChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 318
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    :try_start_1
    invoke-static {v0, p1}, Lorg/jsoup/internal/StringUtil;->resolve(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 321
    :catch_0
    new-instance p0, Ljava/net/URL;

    invoke-direct {p0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    .line 328
    :catch_1
    sget-object p0, Lorg/jsoup/internal/StringUtil;->validUriScheme:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public static resolve(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 293
    invoke-static {p1}, Lorg/jsoup/internal/StringUtil;->stripControlChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 295
    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 298
    :cond_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 299
    sget-object p0, Lorg/jsoup/internal/StringUtil;->extraDotSegmentsPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 300
    invoke-virtual {v0}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 301
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "#"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 303
    :cond_1
    new-instance p1, Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v0

    invoke-direct {p1, v1, v2, v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object p1
.end method

.method public static startsWithNewline(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 168
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 170
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v1, 0xa

    if-ne p0, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method private static stripControlChars(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 335
    sget-object v0, Lorg/jsoup/internal/StringUtil;->controlChars:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
