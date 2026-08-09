.class public final Landroidx/compose/foundation/text/ValidatingOffsetMappingKt;
.super Ljava/lang/Object;
.source "ValidatingOffsetMapping.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a \u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0002\u001a \u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0002\u001a\u0014\u0010\r\u001a\u00020\u000e*\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0000\u001a\u001e\u0010\u0012\u001a\u00020\u0005*\u00020\u000e2\u0006\u0010\u000c\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0007H\u0001\"\u0014\u0010\u0000\u001a\u00020\u0001X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0014"
    }
    d2 = {
        "ValidatingEmptyOffsetMappingIdentity",
        "Landroidx/compose/ui/text/input/OffsetMapping;",
        "getValidatingEmptyOffsetMappingIdentity",
        "()Landroidx/compose/ui/text/input/OffsetMapping;",
        "validateOriginalToTransformed",
        "",
        "transformedOffset",
        "",
        "transformedLength",
        "offset",
        "validateTransformedToOriginal",
        "originalOffset",
        "originalLength",
        "filterWithValidation",
        "Landroidx/compose/ui/text/input/TransformedText;",
        "Landroidx/compose/ui/text/input/VisualTransformation;",
        "text",
        "Landroidx/compose/ui/text/AnnotatedString;",
        "throwIfNotValidTransform",
        "limit",
        "foundation_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final ValidatingEmptyOffsetMappingIdentity:Landroidx/compose/ui/text/input/OffsetMapping;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 26
    new-instance v0, Landroidx/compose/foundation/text/ValidatingOffsetMapping;

    .line 27
    sget-object v1, Landroidx/compose/ui/text/input/OffsetMapping;->Companion:Landroidx/compose/ui/text/input/OffsetMapping$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/text/input/OffsetMapping$Companion;->getIdentity()Landroidx/compose/ui/text/input/OffsetMapping;

    move-result-object v1

    const/4 v2, 0x0

    .line 26
    invoke-direct {v0, v1, v2, v2}, Landroidx/compose/foundation/text/ValidatingOffsetMapping;-><init>(Landroidx/compose/ui/text/input/OffsetMapping;II)V

    check-cast v0, Landroidx/compose/ui/text/input/OffsetMapping;

    sput-object v0, Landroidx/compose/foundation/text/ValidatingOffsetMappingKt;->ValidatingEmptyOffsetMappingIdentity:Landroidx/compose/ui/text/input/OffsetMapping;

    return-void
.end method

.method public static final synthetic access$validateOriginalToTransformed(III)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/text/ValidatingOffsetMappingKt;->validateOriginalToTransformed(III)V

    return-void
.end method

.method public static final synthetic access$validateTransformedToOriginal(III)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/text/ValidatingOffsetMappingKt;->validateTransformedToOriginal(III)V

    return-void
.end method

.method public static final filterWithValidation(Landroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/ui/text/AnnotatedString;)Landroidx/compose/ui/text/input/TransformedText;
    .locals 4

    .line 33
    invoke-interface {p0, p1}, Landroidx/compose/ui/text/input/VisualTransformation;->filter(Landroidx/compose/ui/text/AnnotatedString;)Landroidx/compose/ui/text/input/TransformedText;

    move-result-object p0

    .line 35
    invoke-virtual {p1}, Landroidx/compose/ui/text/AnnotatedString;->length()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v0, v3, v1, v2}, Landroidx/compose/foundation/text/ValidatingOffsetMappingKt;->throwIfNotValidTransform$default(Landroidx/compose/ui/text/input/TransformedText;IIILjava/lang/Object;)V

    .line 40
    new-instance v0, Landroidx/compose/ui/text/input/TransformedText;

    .line 41
    invoke-virtual {p0}, Landroidx/compose/ui/text/input/TransformedText;->getText()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v1

    .line 42
    new-instance v2, Landroidx/compose/foundation/text/ValidatingOffsetMapping;

    .line 43
    invoke-virtual {p0}, Landroidx/compose/ui/text/input/TransformedText;->getOffsetMapping()Landroidx/compose/ui/text/input/OffsetMapping;

    move-result-object v3

    .line 44
    invoke-virtual {p1}, Landroidx/compose/ui/text/AnnotatedString;->length()I

    move-result p1

    .line 45
    invoke-virtual {p0}, Landroidx/compose/ui/text/input/TransformedText;->getText()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/text/AnnotatedString;->length()I

    move-result p0

    .line 42
    invoke-direct {v2, v3, p1, p0}, Landroidx/compose/foundation/text/ValidatingOffsetMapping;-><init>(Landroidx/compose/ui/text/input/OffsetMapping;II)V

    check-cast v2, Landroidx/compose/ui/text/input/OffsetMapping;

    .line 40
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/text/input/TransformedText;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/input/OffsetMapping;)V

    return-object v0
.end method

.method public static final getValidatingEmptyOffsetMappingIdentity()Landroidx/compose/ui/text/input/OffsetMapping;
    .locals 1

    .line 26
    sget-object v0, Landroidx/compose/foundation/text/ValidatingOffsetMappingKt;->ValidatingEmptyOffsetMappingIdentity:Landroidx/compose/ui/text/input/OffsetMapping;

    return-object v0
.end method

.method public static final throwIfNotValidTransform(Landroidx/compose/ui/text/input/TransformedText;II)V
    .locals 5

    .line 62
    invoke-virtual {p0}, Landroidx/compose/ui/text/input/TransformedText;->getText()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/text/AnnotatedString;->length()I

    move-result v0

    .line 63
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    .line 64
    invoke-virtual {p0}, Landroidx/compose/ui/text/input/TransformedText;->getOffsetMapping()Landroidx/compose/ui/text/input/OffsetMapping;

    move-result-object v4

    invoke-interface {v4, v3}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    move-result v4

    .line 65
    invoke-static {v4, v0, v3}, Landroidx/compose/foundation/text/ValidatingOffsetMappingKt;->validateOriginalToTransformed(III)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/text/input/TransformedText;->getOffsetMapping()Landroidx/compose/ui/text/input/OffsetMapping;

    move-result-object v1

    invoke-interface {v1, p1}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    move-result v1

    .line 68
    invoke-static {v1, v0, p1}, Landroidx/compose/foundation/text/ValidatingOffsetMappingKt;->validateOriginalToTransformed(III)V

    .line 71
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_1
    if-ge v2, p2, :cond_1

    .line 72
    invoke-virtual {p0}, Landroidx/compose/ui/text/input/TransformedText;->getOffsetMapping()Landroidx/compose/ui/text/input/OffsetMapping;

    move-result-object v1

    invoke-interface {v1, v2}, Landroidx/compose/ui/text/input/OffsetMapping;->transformedToOriginal(I)I

    move-result v1

    .line 73
    invoke-static {v1, p1, v2}, Landroidx/compose/foundation/text/ValidatingOffsetMappingKt;->validateTransformedToOriginal(III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 76
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/text/input/TransformedText;->getOffsetMapping()Landroidx/compose/ui/text/input/OffsetMapping;

    move-result-object p0

    invoke-interface {p0, v0}, Landroidx/compose/ui/text/input/OffsetMapping;->transformedToOriginal(I)I

    move-result p0

    .line 77
    invoke-static {p0, p1, v0}, Landroidx/compose/foundation/text/ValidatingOffsetMappingKt;->validateTransformedToOriginal(III)V

    return-void
.end method

.method public static synthetic throwIfNotValidTransform$default(Landroidx/compose/ui/text/input/TransformedText;IIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/16 p2, 0x64

    .line 60
    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/text/ValidatingOffsetMappingKt;->throwIfNotValidTransform(Landroidx/compose/ui/text/input/TransformedText;II)V

    return-void
.end method

.method private static final validateOriginalToTransformed(III)V
    .locals 2

    if-ltz p0, :cond_0

    if-gt p0, p1, :cond_0

    return-void

    .line 129
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OffsetMapping.originalToTransformed returned invalid mapping: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 130
    const-string v0, " -> "

    .line 129
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 130
    const-string p2, " is not in range of transformed text [0, "

    .line 129
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 p1, 0x5d

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 128
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static final validateTransformedToOriginal(III)V
    .locals 2

    if-ltz p0, :cond_0

    if-gt p0, p1, :cond_0

    return-void

    .line 117
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OffsetMapping.transformedToOriginal returned invalid mapping: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 118
    const-string v0, " -> "

    .line 117
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 118
    const-string p2, " is not in range of original text [0, "

    .line 117
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 p1, 0x5d

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 116
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
