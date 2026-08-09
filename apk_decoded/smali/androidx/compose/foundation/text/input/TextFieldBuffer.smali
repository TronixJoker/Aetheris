.class public final Landroidx/compose/foundation/text/input/TextFieldBuffer;
.super Ljava/lang/Object;
.source "TextFieldBuffer.kt"

# interfaces
.implements Ljava/lang/Appendable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/text/input/TextFieldBuffer$ChangeList;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextFieldBuffer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextFieldBuffer.kt\nandroidx/compose/foundation/text/input/TextFieldBuffer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 TextFieldBuffer.kt\nandroidx/compose/foundation/text/input/TextFieldBufferKt\n*L\n1#1,552:1\n1#2:553\n509#3,43:554\n*S KotlinDebug\n*F\n+ 1 TextFieldBuffer.kt\nandroidx/compose/foundation/text/input/TextFieldBuffer\n*L\n182#1:554,43\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\r\n\u0002\u0008\r\n\u0002\u0010\u000c\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0015\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00060\u0001j\u0002`\u0002:\u0001TB1\u0008\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010\nJ\u0014\u0010/\u001a\u00060\u0001j\u0002`\u00022\u0006\u00100\u001a\u000201H\u0016J\u0016\u0010/\u001a\u00060\u0001j\u0002`\u00022\u0008\u00102\u001a\u0004\u0018\u00010#H\u0016J&\u0010/\u001a\u00060\u0001j\u0002`\u00022\u0008\u00102\u001a\u0004\u0018\u00010#2\u0006\u00103\u001a\u00020\u001b2\u0006\u00104\u001a\u00020\u001bH\u0016J\u0006\u00105\u001a\u00020#J\u000e\u00106\u001a\u0002012\u0006\u00107\u001a\u00020\u001bJ\u0008\u00108\u001a\u000209H\u0002J \u0010:\u001a\u0002092\u0006\u0010;\u001a\u00020\u001b2\u0006\u0010<\u001a\u00020\u001b2\u0006\u0010=\u001a\u00020\u001bH\u0002J\u000e\u0010>\u001a\u0002092\u0006\u00107\u001a\u00020\u001bJ\u000e\u0010?\u001a\u0002092\u0006\u00107\u001a\u00020\u001bJ\u001e\u0010@\u001a\u0002092\u0006\u00103\u001a\u00020\u001b2\u0006\u00104\u001a\u00020\u001b2\u0006\u00102\u001a\u00020#J9\u0010@\u001a\u0002092\u0006\u00103\u001a\u00020\u001b2\u0006\u00104\u001a\u00020\u001b2\u0006\u00102\u001a\u00020#2\u0008\u0008\u0002\u0010A\u001a\u00020\u001b2\u0008\u0008\u0002\u0010B\u001a\u00020\u001bH\u0000\u00a2\u0006\u0002\u0008CJ \u0010D\u001a\u0002092\u0006\u00107\u001a\u00020\u001b2\u0006\u0010E\u001a\u00020\u00182\u0006\u0010F\u001a\u00020\u0018H\u0002J\u001a\u0010G\u001a\u0002092\u0006\u0010H\u001a\u00020\u001fH\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008I\u0010,J\u0006\u0010J\u001a\u000209J\u0015\u0010K\u001a\u0002092\u0006\u0010L\u001a\u00020#H\u0000\u00a2\u0006\u0002\u0008MJ\u0008\u0010N\u001a\u00020OH\u0016J(\u0010P\u001a\u00020\u00042\u0008\u0008\u0002\u0010)\u001a\u00020\u001f2\n\u0008\u0002\u0010Q\u001a\u0004\u0018\u00010\u001fH\u0000\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008R\u0010SR\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u00020\u00068BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u00128FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016R\u0011\u0010\u0017\u001a\u00020\u00188G\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0019R\u0011\u0010\u001a\u001a\u00020\u001b8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u001dR\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u001e\u001a\u00020\u001f8F\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010!R\u0011\u0010\"\u001a\u00020#8F\u00a2\u0006\u0006\u001a\u0004\u0008$\u0010%R\u0014\u0010\u0007\u001a\u00020\u0004X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\'R*\u0010)\u001a\u00020\u001f2\u0006\u0010(\u001a\u00020\u001f8F@FX\u0086\u000e\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u000c\u001a\u0004\u0008*\u0010!\"\u0004\u0008+\u0010,R\u0016\u0010-\u001a\u00020\u001fX\u0082\u000e\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\n\u0002\u0010.\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006U"
    }
    d2 = {
        "Landroidx/compose/foundation/text/input/TextFieldBuffer;",
        "Ljava/lang/Appendable;",
        "Lkotlin/text/Appendable;",
        "initialValue",
        "Landroidx/compose/foundation/text/input/TextFieldCharSequence;",
        "initialChanges",
        "Landroidx/compose/foundation/text/input/internal/ChangeTracker;",
        "originalValue",
        "offsetMappingCalculator",
        "Landroidx/compose/foundation/text/input/internal/OffsetMappingCalculator;",
        "(Landroidx/compose/foundation/text/input/TextFieldCharSequence;Landroidx/compose/foundation/text/input/internal/ChangeTracker;Landroidx/compose/foundation/text/input/TextFieldCharSequence;Landroidx/compose/foundation/text/input/internal/OffsetMappingCalculator;)V",
        "backingChangeTracker",
        "buffer",
        "Landroidx/compose/foundation/text/input/internal/PartialGapBuffer;",
        "changeTracker",
        "getChangeTracker",
        "()Landroidx/compose/foundation/text/input/internal/ChangeTracker;",
        "changes",
        "Landroidx/compose/foundation/text/input/TextFieldBuffer$ChangeList;",
        "getChanges$annotations",
        "()V",
        "getChanges",
        "()Landroidx/compose/foundation/text/input/TextFieldBuffer$ChangeList;",
        "hasSelection",
        "",
        "()Z",
        "length",
        "",
        "getLength",
        "()I",
        "originalSelection",
        "Landroidx/compose/ui/text/TextRange;",
        "getOriginalSelection-d9O1mEE",
        "()J",
        "originalText",
        "",
        "getOriginalText",
        "()Ljava/lang/CharSequence;",
        "getOriginalValue$foundation_release",
        "()Landroidx/compose/foundation/text/input/TextFieldCharSequence;",
        "value",
        "selection",
        "getSelection-d9O1mEE",
        "setSelection-5zc-tL8",
        "(J)V",
        "selectionInChars",
        "J",
        "append",
        "char",
        "",
        "text",
        "start",
        "end",
        "asCharSequence",
        "charAt",
        "index",
        "clearChangeList",
        "",
        "onTextWillChange",
        "replaceStart",
        "replaceEnd",
        "newLength",
        "placeCursorAfterCharAt",
        "placeCursorBeforeCharAt",
        "replace",
        "textStart",
        "textEnd",
        "replace$foundation_release",
        "requireValidIndex",
        "startExclusive",
        "endExclusive",
        "requireValidRange",
        "range",
        "requireValidRange-5zc-tL8",
        "revertAllChanges",
        "setTextIfChanged",
        "newText",
        "setTextIfChanged$foundation_release",
        "toString",
        "",
        "toTextFieldCharSequence",
        "composition",
        "toTextFieldCharSequence-udt6zUU$foundation_release",
        "(JLandroidx/compose/ui/text/TextRange;)Landroidx/compose/foundation/text/input/TextFieldCharSequence;",
        "ChangeList",
        "foundation_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private backingChangeTracker:Landroidx/compose/foundation/text/input/internal/ChangeTracker;

.field private final buffer:Landroidx/compose/foundation/text/input/internal/PartialGapBuffer;

.field private final offsetMappingCalculator:Landroidx/compose/foundation/text/input/internal/OffsetMappingCalculator;

.field private final originalValue:Landroidx/compose/foundation/text/input/TextFieldCharSequence;

.field private selectionInChars:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/text/input/TextFieldCharSequence;Landroidx/compose/foundation/text/input/internal/ChangeTracker;Landroidx/compose/foundation/text/input/TextFieldCharSequence;Landroidx/compose/foundation/text/input/internal/OffsetMappingCalculator;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p3, p0, Landroidx/compose/foundation/text/input/TextFieldBuffer;->originalValue:Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    .line 53
    iput-object p4, p0, Landroidx/compose/foundation/text/input/TextFieldBuffer;->offsetMappingCalculator:Landroidx/compose/foundation/text/input/internal/OffsetMappingCalculator;

    .line 56
    new-instance p3, Landroidx/compose/foundation/text/input/internal/PartialGapBuffer;

    move-object p4, p1

    check-cast p4, Ljava/lang/CharSequence;

    invoke-direct {p3, p4}, Landroidx/compose/foundation/text/input/internal/PartialGapBuffer;-><init>(Ljava/lang/CharSequence;)V

    iput-object p3, p0, Landroidx/compose/foundation/text/input/TextFieldBuffer;->buffer:Landroidx/compose/foundation/text/input/internal/PartialGapBuffer;

    if-eqz p2, :cond_0

    .line 59
    new-instance p3, Landroidx/compose/foundation/text/input/internal/ChangeTracker;

    invoke-direct {p3, p2}, Landroidx/compose/foundation/text/input/internal/ChangeTracker;-><init>(Landroidx/compose/foundation/text/input/internal/ChangeTracker;)V

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 58
    :goto_0
    iput-object p3, p0, Landroidx/compose/foundation/text/input/TextFieldBuffer;->backingChangeTracker:Landroidx/compose/foundation/text/input/internal/ChangeTracker;

    .line 112
    invoke-virtual {p1}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->getSelection-d9O1mEE()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/compose/foundation/text/input/TextFieldBuffer;->selectionInChars:J

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/foundation/text/input/TextFieldCharSequence;Landroidx/compose/foundation/text/input/internal/ChangeTracker;Landroidx/compose/foundation/text/input/TextFieldCharSequence;Landroidx/compose/foundation/text/input/internal/OffsetMappingCalculator;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    move-object p3, p1

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move-object p4, v0

    .line 49
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/text/input/TextFieldBuffer;-><init>(Landroidx/compose/foundation/text/input/TextFieldCharSequence;Landroidx/compose/foundation/text/input/internal/ChangeTracker;Landroidx/compose/foundation/text/input/TextFieldCharSequence;Landroidx/compose/foundation/text/input/internal/OffsetMappingCalculator;)V

    return-void
.end method

.method private final clearChangeList()V
    .locals 1

    .line 279
    invoke-direct {p0}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->getChangeTracker()Landroidx/compose/foundation/text/input/internal/ChangeTracker;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/ChangeTracker;->clearChanges()V

    return-void
.end method

.method private final getChangeTracker()Landroidx/compose/foundation/text/input/internal/ChangeTracker;
    .locals 3

    .line 66
    iget-object v0, p0, Landroidx/compose/foundation/text/input/TextFieldBuffer;->backingChangeTracker:Landroidx/compose/foundation/text/input/internal/ChangeTracker;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/compose/foundation/text/input/internal/ChangeTracker;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Landroidx/compose/foundation/text/input/internal/ChangeTracker;-><init>(Landroidx/compose/foundation/text/input/internal/ChangeTracker;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Landroidx/compose/foundation/text/input/TextFieldBuffer;->backingChangeTracker:Landroidx/compose/foundation/text/input/internal/ChangeTracker;

    :cond_0
    return-object v0
.end method

.method public static synthetic getChanges$annotations()V
    .locals 0

    return-void
.end method

.method private final onTextWillChange(III)V
    .locals 3

    .line 221
    invoke-direct {p0}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->getChangeTracker()Landroidx/compose/foundation/text/input/internal/ChangeTracker;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroidx/compose/foundation/text/input/internal/ChangeTracker;->trackChange(III)V

    .line 222
    iget-object v0, p0, Landroidx/compose/foundation/text/input/TextFieldBuffer;->offsetMappingCalculator:Landroidx/compose/foundation/text/input/internal/OffsetMappingCalculator;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Landroidx/compose/foundation/text/input/internal/OffsetMappingCalculator;->recordEditOperation(III)V

    .line 225
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 226
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 227
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->getSelection-d9O1mEE()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result p2

    .line 228
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->getSelection-d9O1mEE()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v1

    if-ge v1, v0, :cond_1

    return-void

    :cond_1
    if-gt p2, v0, :cond_2

    if-gt p1, v1, :cond_2

    sub-int/2addr p1, v0

    sub-int/2addr p3, p1

    if-ne p2, v1, :cond_4

    goto :goto_0

    :cond_2
    if-le p2, v0, :cond_3

    if-ge v1, p1, :cond_3

    add-int/2addr v0, p3

    move p2, v0

    goto :goto_2

    :cond_3
    if-lt p2, p1, :cond_5

    sub-int/2addr p1, v0

    sub-int/2addr p3, p1

    :goto_0
    add-int/2addr p2, p3

    :cond_4
    :goto_1
    add-int v0, v1, p3

    goto :goto_2

    :cond_5
    if-ge v0, p2, :cond_6

    add-int p2, v0, p3

    sub-int/2addr p1, v0

    sub-int/2addr p3, p1

    goto :goto_1

    .line 262
    :cond_6
    :goto_2
    invoke-static {p2, v0}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/compose/foundation/text/input/TextFieldBuffer;->selectionInChars:J

    return-void
.end method

.method public static synthetic replace$foundation_release$default(Landroidx/compose/foundation/text/input/TextFieldBuffer;IILjava/lang/CharSequence;IIILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_0

    const/4 p4, 0x0

    :cond_0
    move v4, p4

    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    .line 169
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p5

    :cond_1
    move v5, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    .line 164
    invoke-virtual/range {v0 .. v5}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->replace$foundation_release(IILjava/lang/CharSequence;II)V

    return-void
.end method

.method private final requireValidIndex(IZZ)V
    .locals 2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    :goto_0
    if-eqz p3, :cond_1

    .line 359
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->getLength()I

    move-result p3

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->getLength()I

    move-result p3

    add-int/lit8 p3, p3, 0x1

    :goto_1
    if-gt p2, p1, :cond_2

    if-ge p1, p3, :cond_2

    return-void

    .line 362
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " to be in ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 p2, 0x29

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 361
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private final requireValidRange-5zc-tL8(J)V
    .locals 4

    const/4 v0, 0x0

    .line 367
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->getLength()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide v0

    .line 368
    invoke-static {v0, v1, p1, p2}, Landroidx/compose/ui/text/TextRange;->contains-5zc-tL8(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 369
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRange;->toString-impl(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " to be in "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->toString-impl(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 368
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static synthetic toTextFieldCharSequence-udt6zUU$foundation_release$default(Landroidx/compose/foundation/text/input/TextFieldBuffer;JLandroidx/compose/ui/text/TextRange;ILjava/lang/Object;)Landroidx/compose/foundation/text/input/TextFieldCharSequence;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 345
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->getSelection-d9O1mEE()J

    move-result-wide p1

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 344
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->toTextFieldCharSequence-udt6zUU$foundation_release(JLandroidx/compose/ui/text/TextRange;)Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public append(C)Ljava/lang/Appendable;
    .locals 11

    .line 208
    move-object v0, p0

    check-cast v0, Landroidx/compose/foundation/text/input/TextFieldBuffer;

    .line 209
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->getLength()I

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->getLength()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->onTextWillChange(III)V

    .line 210
    iget-object v3, p0, Landroidx/compose/foundation/text/input/TextFieldBuffer;->buffer:Landroidx/compose/foundation/text/input/internal/PartialGapBuffer;

    invoke-virtual {v3}, Landroidx/compose/foundation/text/input/internal/PartialGapBuffer;->length()I

    move-result v4

    iget-object v0, p0, Landroidx/compose/foundation/text/input/TextFieldBuffer;->buffer:Landroidx/compose/foundation/text/input/internal/PartialGapBuffer;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/PartialGapBuffer;->length()I

    move-result v5

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Ljava/lang/CharSequence;

    const/16 v9, 0x18

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v10}, Landroidx/compose/foundation/text/input/internal/PartialGapBuffer;->replace$default(Landroidx/compose/foundation/text/input/internal/PartialGapBuffer;IILjava/lang/CharSequence;IIILjava/lang/Object;)V

    .line 208
    move-object p1, p0

    check-cast p1, Ljava/lang/Appendable;

    return-object p1
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 11

    .line 190
    move-object v0, p0

    check-cast v0, Landroidx/compose/foundation/text/input/TextFieldBuffer;

    if-eqz p1, :cond_0

    .line 192
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->getLength()I

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->getLength()I

    move-result v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->onTextWillChange(III)V

    .line 193
    iget-object v3, p0, Landroidx/compose/foundation/text/input/TextFieldBuffer;->buffer:Landroidx/compose/foundation/text/input/internal/PartialGapBuffer;

    invoke-virtual {v3}, Landroidx/compose/foundation/text/input/internal/PartialGapBuffer;->length()I

    move-result v4

    iget-object v0, p0, Landroidx/compose/foundation/text/input/TextFieldBuffer;->buffer:Landroidx/compose/foundation/text/input/internal/PartialGapBuffer;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/PartialGapBuffer;->length()I

    move-result v5

    const/16 v9, 0x18

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, p1

    invoke-static/range {v3 .. v10}, Landroidx/compose/foundation/text/input/internal/PartialGapBuffer;->replace$default(Landroidx/compose/foundation/text/input/internal/PartialGapBuffer;IILjava/lang/CharSequence;IIILjava/lang/Object;)V

    .line 190
    :cond_0
    move-object p1, p0

    check-cast p1, Ljava/lang/Appendable;

    return-object p1
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 11

    .line 199
    move-object v0, p0

    check-cast v0, Landroidx/compose/foundation/text/input/TextFieldBuffer;

    if-eqz p1, :cond_0

    .line 201
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->getLength()I

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->getLength()I

    move-result v1

    sub-int v2, p3, p2

    invoke-direct {p0, v0, v1, v2}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->onTextWillChange(III)V

    .line 202
    iget-object v3, p0, Landroidx/compose/foundation/text/input/TextFieldBuffer;->buffer:Landroidx/compose/foundation/text/input/internal/PartialGapBuffer;

    invoke-virtual {v3}, Landroidx/compose/foundation/text/input/internal/PartialGapBuffer;->length()I

    move-result v4

    iget-object v0, p0, Landroidx/compose/foundation/text/input/TextFieldBuffer;->buffer:Landroidx/compose/foundation/text/input/internal/PartialGapBuffer;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/PartialGapBuffer;->length()I

    move-result v5

    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    const/16 v9, 0x18

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v10}, Landroidx/compose/foundation/text/input/internal/PartialGapBuffer;->replace$default(Landroidx/compose/foundation/text/input/internal/PartialGapBuffer;IILjava/lang/CharSequence;IIILjava/lang/Object;)V

    .line 199
    :cond_0
    move-object p1, p0

    check-cast p1, Ljava/lang/Appendable;

    return-object p1
.end method

.method public final asCharSequence()Ljava/lang/CharSequence;
    .locals 1

    .line 276
    iget-object v0, p0, Landroidx/compose/foundation/text/input/TextFieldBuffer;->buffer:Landroidx/compose/foundation/text/input/internal/PartialGapBuffer;

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final charAt(I)C
    .locals 1

    .line 268
    iget-object v0, p0, Landroidx/compose/foundation/text/input/TextFieldBuffer;->buffer:Landroidx/compose/foundation/text/input/internal/PartialGapBuffer;

    invoke-virtual {v0, p1}, Landroidx/compose/foundation/text/input/internal/PartialGapBuffer;->charAt(I)C

    move-result p1

    return p1
.end method

.method public final getChanges()Landroidx/compose/foundation/text/input/TextFieldBuffer$ChangeList;
    .locals 1

    .line 96
    invoke-direct {p0}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->getChangeTracker()Landroidx/compose/foundation/text/input/internal/ChangeTracker;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/text/input/TextFieldBuffer$ChangeList;

    return-object v0
.end method

.method public final getLength()I
    .locals 1

    .line 71
    iget-object v0, p0, Landroidx/compose/foundation/text/input/TextFieldBuffer;->buffer:Landroidx/compose/foundation/text/input/internal/PartialGapBuffer;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/PartialGapBuffer;->length()I

    move-result v0

    return v0
.end method

.method public final getOriginalSelection-d9O1mEE()J
    .locals 2

    .line 85
    iget-object v0, p0, Landroidx/compose/foundation/text/input/TextFieldBuffer;->originalValue:Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->getSelection-d9O1mEE()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getOriginalText()Ljava/lang/CharSequence;
    .locals 1

    .line 78
    iget-object v0, p0, Landroidx/compose/foundation/text/input/TextFieldBuffer;->originalValue:Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getOriginalValue$foundation_release()Landroidx/compose/foundation/text/input/TextFieldCharSequence;
    .locals 1

    .line 52
    iget-object v0, p0, Landroidx/compose/foundation/text/input/TextFieldBuffer;->originalValue:Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    return-object v0
.end method

.method public final getSelection-d9O1mEE()J
    .locals 2

    .line 128
    iget-wide v0, p0, Landroidx/compose/foundation/text/input/TextFieldBuffer;->selectionInChars:J

    return-wide v0
.end method

.method public final hasSelection()Z
    .locals 2

    .line 106
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->getSelection-d9O1mEE()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final placeCursorAfterCharAt(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 330
    invoke-direct {p0, p1, v0, v1}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->requireValidIndex(IZZ)V

    add-int/2addr p1, v1

    .line 332
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->getLength()I

    move-result v0

    invoke-static {p1, v0}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result p1

    invoke-static {p1}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/foundation/text/input/TextFieldBuffer;->selectionInChars:J

    return-void
.end method

.method public final placeCursorBeforeCharAt(I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 310
    invoke-direct {p0, p1, v0, v1}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->requireValidIndex(IZZ)V

    .line 312
    invoke-static {p1}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/foundation/text/input/TextFieldBuffer;->selectionInChars:J

    return-void
.end method

.method public final replace(IILjava/lang/CharSequence;)V
    .locals 6

    const/4 v4, 0x0

    .line 147
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->replace$foundation_release(IILjava/lang/CharSequence;II)V

    return-void
.end method

.method public final replace$foundation_release(IILjava/lang/CharSequence;II)V
    .locals 7

    if-gt p1, p2, :cond_1

    if-gt p4, p5, :cond_0

    sub-int v0, p5, p4

    .line 173
    invoke-direct {p0, p1, p2, v0}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->onTextWillChange(III)V

    .line 174
    iget-object v1, p0, Landroidx/compose/foundation/text/input/TextFieldBuffer;->buffer:Landroidx/compose/foundation/text/input/internal/PartialGapBuffer;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Landroidx/compose/foundation/text/input/internal/PartialGapBuffer;->replace(IILjava/lang/CharSequence;II)V

    return-void

    .line 172
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Expected textStart="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " <= textEnd="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 171
    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Expected start="

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " <= end="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final revertAllChanges()V
    .locals 3

    .line 289
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->getLength()I

    move-result v0

    iget-object v1, p0, Landroidx/compose/foundation/text/input/TextFieldBuffer;->originalValue:Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->replace(IILjava/lang/CharSequence;)V

    .line 290
    iget-object v0, p0, Landroidx/compose/foundation/text/input/TextFieldBuffer;->originalValue:Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->getSelection-d9O1mEE()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->setSelection-5zc-tL8(J)V

    .line 291
    invoke-direct {p0}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->clearChangeList()V

    return-void
.end method

.method public final setSelection-5zc-tL8(J)V
    .locals 0

    .line 130
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->requireValidRange-5zc-tL8(J)V

    .line 131
    iput-wide p1, p0, Landroidx/compose/foundation/text/input/TextFieldBuffer;->selectionInChars:J

    return-void
.end method

.method public final setTextIfChanged$foundation_release(Ljava/lang/CharSequence;)V
    .locals 13

    .line 182
    iget-object v0, p0, Landroidx/compose/foundation/text/input/TextFieldBuffer;->buffer:Landroidx/compose/foundation/text/input/internal/PartialGapBuffer;

    check-cast v0, Ljava/lang/CharSequence;

    .line 555
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 557
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 560
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_6

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_6

    move v3, v4

    move v5, v3

    move v6, v5

    :cond_0
    const/4 v7, 0x1

    if-nez v4, :cond_2

    .line 566
    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    if-ne v8, v9, :cond_1

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    move v4, v7

    :cond_2
    :goto_0
    if-nez v6, :cond_4

    add-int/lit8 v8, v1, -0x1

    .line 574
    invoke-interface {v0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    add-int/lit8 v9, v2, -0x1

    invoke-interface {p1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    if-ne v8, v9, :cond_3

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_3
    move v6, v7

    :cond_4
    :goto_1
    if-ge v3, v1, :cond_5

    if-ge v5, v2, :cond_5

    if-eqz v4, :cond_0

    if-eqz v6, :cond_0

    :cond_5
    move v9, v1

    move v12, v2

    move v8, v3

    move v11, v5

    goto :goto_2

    :cond_6
    move v9, v1

    move v12, v2

    move v8, v4

    move v11, v8

    :goto_2
    if-lt v8, v9, :cond_7

    if-lt v11, v12, :cond_7

    goto :goto_3

    :cond_7
    move-object v7, p0

    move-object v10, p1

    .line 183
    invoke-virtual/range {v7 .. v12}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->replace$foundation_release(IILjava/lang/CharSequence;II)V

    :goto_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 270
    iget-object v0, p0, Landroidx/compose/foundation/text/input/TextFieldBuffer;->buffer:Landroidx/compose/foundation/text/input/internal/PartialGapBuffer;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/PartialGapBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toTextFieldCharSequence-udt6zUU$foundation_release(JLandroidx/compose/ui/text/TextRange;)Landroidx/compose/foundation/text/input/TextFieldCharSequence;
    .locals 9

    .line 347
    new-instance v8, Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    .line 348
    iget-object v0, p0, Landroidx/compose/foundation/text/input/TextFieldBuffer;->buffer:Landroidx/compose/foundation/text/input/internal/PartialGapBuffer;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/PartialGapBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v0, v8

    move-wide v2, p1

    move-object v4, p3

    .line 347
    invoke-direct/range {v0 .. v7}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;-><init>(Ljava/lang/CharSequence;JLandroidx/compose/ui/text/TextRange;Lkotlin/Pair;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v8
.end method
