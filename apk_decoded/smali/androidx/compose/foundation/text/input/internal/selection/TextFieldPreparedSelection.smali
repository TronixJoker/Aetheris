.class public final Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;
.super Ljava/lang/Object;
.source "TextPreparedSelection.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextPreparedSelection.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextPreparedSelection.kt\nandroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection\n+ 2 Snapshot.kt\nandroidx/compose/runtime/snapshots/Snapshot$Companion\n*L\n1#1,545:1\n181#1,7:554\n181#1,7:561\n177#1,11:568\n177#1,11:579\n177#1,11:590\n177#1,11:601\n177#1,11:612\n177#1,11:623\n177#1,11:634\n177#1,11:645\n177#1,11:656\n177#1,11:667\n177#1,11:678\n177#1,11:689\n177#1,11:700\n177#1,11:711\n177#1,11:722\n177#1,11:733\n181#1,7:744\n181#1,7:751\n177#1,11:758\n177#1,11:769\n177#1,11:780\n177#1,11:791\n181#1,7:802\n602#2,8:546\n*S KotlinDebug\n*F\n+ 1 TextPreparedSelection.kt\nandroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection\n*L\n135#1:554,7\n142#1:561,7\n197#1:568,11\n201#1:579,11\n205#1:590,11\n213#1:601,11\n224#1:612,11\n239#1:623,11\n262#1:634,11\n270#1:645,11\n278#1:656,11\n282#1:667,11\n286#1:678,11\n294#1:689,11\n305#1:700,11\n311#1:711,11\n315#1:722,11\n323#1:733,11\n333#1:744,7\n340#1:751,7\n347#1:758,11\n354#1:769,11\n358#1:780,11\n366#1:791,11\n375#1:802,7\n98#1:546,8\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008*\u0008\u0000\u0018\u0000 P2\u00020\u0001:\u0001PB/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ,\u0010\u001a\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u00072\u0017\u0010\u001c\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u001e0\u001d\u00a2\u0006\u0002\u0008\u001fH\u0082\u0008J\u0010\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020!H\u0002J\u001f\u0010#\u001a\u00020\u00002\u0017\u0010$\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u001e0\u001d\u00a2\u0006\u0002\u0008\u001fJ\u001f\u0010%\u001a\u00020\u00002\u0017\u0010$\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u001e0\u001d\u00a2\u0006\u0002\u0008\u001fJ\u0019\u0010&\u001a\u00020\u001e2\u000e\u0010\u001c\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\'H\u0086\u0008J\u0006\u0010(\u001a\u00020\u0000J\u0006\u0010)\u001a\u00020!J\u0006\u0010*\u001a\u00020!J\u0006\u0010+\u001a\u00020!J\u0006\u0010,\u001a\u00020!J\u0006\u0010-\u001a\u00020!J\u0006\u0010.\u001a\u00020!J\u0008\u0010/\u001a\u00020\u0007H\u0002J\u0010\u00100\u001a\u00020!2\u0006\u00101\u001a\u00020!H\u0002J\u0006\u00102\u001a\u00020\u0000J\u0006\u00103\u001a\u00020\u0000J\u0006\u00104\u001a\u00020\u0000J\u0006\u00105\u001a\u00020\u0000J\u0008\u00106\u001a\u00020\u0000H\u0002J\u0006\u00107\u001a\u00020\u0000J\u0008\u00108\u001a\u00020\u0000H\u0002J\u0008\u00109\u001a\u00020\u0000H\u0002J\u0006\u0010:\u001a\u00020\u0000J\u0008\u0010;\u001a\u00020\u0000H\u0002J\u0006\u0010<\u001a\u00020\u0000J\u0006\u0010=\u001a\u00020\u0000J\u0006\u0010>\u001a\u00020\u0000J\u0006\u0010?\u001a\u00020\u0000J\u0006\u0010@\u001a\u00020\u0000J\u0006\u0010A\u001a\u00020\u0000J\u0006\u0010B\u001a\u00020\u0000J\u0006\u0010C\u001a\u00020\u0000J\u0006\u0010D\u001a\u00020\u0000J\u0006\u0010E\u001a\u00020\u0000J\u0006\u0010F\u001a\u00020\u0000J\u0006\u0010G\u001a\u00020\u0000J\u0010\u0010H\u001a\u00020\u001e2\u0006\u0010\"\u001a\u00020!H\u0002J\u0016\u0010I\u001a\u00020!*\u00020\u00052\u0008\u0008\u0002\u0010J\u001a\u00020!H\u0002J\u0016\u0010K\u001a\u00020!*\u00020\u00052\u0008\u0008\u0002\u0010J\u001a\u00020!H\u0002J\u0017\u0010L\u001a\u00020!*\u00020\u00052\u0008\u0008\u0002\u0010J\u001a\u00020!H\u0082\u0010J\u0017\u0010M\u001a\u00020!*\u00020\u00052\u0008\u0008\u0002\u0010J\u001a\u00020!H\u0082\u0010J\u0014\u0010N\u001a\u00020!*\u00020\u00052\u0006\u0010O\u001a\u00020!H\u0002R\u0011\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\"\u0010\u0011\u001a\u00020\u0012X\u0086\u000e\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0010\n\u0002\u0010\u0017\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006Q"
    }
    d2 = {
        "Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;",
        "",
        "state",
        "Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;",
        "textLayoutResult",
        "Landroidx/compose/ui/text/TextLayoutResult;",
        "isFromSoftKeyboard",
        "",
        "visibleTextLayoutHeight",
        "",
        "textPreparedSelectionState",
        "Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;",
        "(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Landroidx/compose/ui/text/TextLayoutResult;ZFLandroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;)V",
        "initialValue",
        "Landroidx/compose/foundation/text/input/TextFieldCharSequence;",
        "getInitialValue",
        "()Landroidx/compose/foundation/text/input/TextFieldCharSequence;",
        "selection",
        "Landroidx/compose/ui/text/TextRange;",
        "getSelection-d9O1mEE",
        "()J",
        "setSelection-5zc-tL8",
        "(J)V",
        "J",
        "text",
        "",
        "applyIfNotEmpty",
        "resetCachedX",
        "block",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "charOffset",
        "",
        "offset",
        "collapseLeftOr",
        "or",
        "collapseRightOr",
        "deleteIfSelectedOr",
        "Lkotlin/Function0;",
        "deselect",
        "getLineEndByOffset",
        "getLineStartByOffset",
        "getNextCharacterIndex",
        "getNextWordOffset",
        "getPrecedingCharacterIndex",
        "getPreviousWordOffset",
        "isLtr",
        "jumpByPagesOffset",
        "pagesAmount",
        "moveCursorDownByLine",
        "moveCursorDownByPage",
        "moveCursorLeft",
        "moveCursorLeftByWord",
        "moveCursorNext",
        "moveCursorNextByParagraph",
        "moveCursorNextByWord",
        "moveCursorPrev",
        "moveCursorPrevByParagraph",
        "moveCursorPrevByWord",
        "moveCursorRight",
        "moveCursorRightByWord",
        "moveCursorToEnd",
        "moveCursorToHome",
        "moveCursorToLineEnd",
        "moveCursorToLineLeftSide",
        "moveCursorToLineRightSide",
        "moveCursorToLineStart",
        "moveCursorUpByLine",
        "moveCursorUpByPage",
        "selectAll",
        "selectMovement",
        "setCursor",
        "getLineEndByOffsetForLayout",
        "currentOffset",
        "getLineStartByOffsetForLayout",
        "getNextWordOffsetForLayout",
        "getPrevWordOffsetForLayout",
        "jumpByLinesOffset",
        "linesAmount",
        "Companion",
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
.field public static final $stable:I

.field public static final Companion:Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection$Companion;

.field public static final NoCharacterFound:I = -0x1


# instance fields
.field private final initialValue:Landroidx/compose/foundation/text/input/TextFieldCharSequence;

.field private final isFromSoftKeyboard:Z

.field private selection:J

.field private final state:Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

.field private final text:Ljava/lang/String;

.field private final textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

.field private final textPreparedSelectionState:Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;

.field private final visibleTextLayoutHeight:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->Companion:Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection$Companion;

    const/16 v0, 0x8

    sput v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Landroidx/compose/ui/text/TextLayoutResult;ZFLandroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->state:Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    .line 87
    iput-object p2, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    .line 88
    iput-boolean p3, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->isFromSoftKeyboard:Z

    .line 89
    iput p4, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->visibleTextLayoutHeight:F

    .line 90
    iput-object p5, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->textPreparedSelectionState:Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;

    .line 98
    sget-object p2, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .line 547
    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->getCurrentThreadSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 548
    invoke-virtual {p3}, Landroidx/compose/runtime/snapshots/Snapshot;->getReadObserver()Lkotlin/jvm/functions/Function1;

    move-result-object p4

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    .line 549
    :goto_0
    invoke-virtual {p2, p3}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->makeCurrentNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object p5

    .line 98
    :try_start_0
    invoke-virtual {p1}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->getVisualText()Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 553
    invoke-virtual {p2, p3, p5, p4}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 98
    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->initialValue:Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    .line 103
    invoke-virtual {p1}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->getSelection-d9O1mEE()J

    move-result-wide p2

    iput-wide p2, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->selection:J

    .line 108
    invoke-virtual {p1}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->text:Ljava/lang/String;

    return-void

    :catchall_0
    move-exception p1

    .line 553
    invoke-virtual {p2, p3, p5, p4}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    throw p1
.end method

.method public static final synthetic access$getState$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;)Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;
    .locals 0

    .line 85
    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->state:Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    return-object p0
.end method

.method public static final synthetic access$getText$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;)Ljava/lang/String;
    .locals 0

    .line 85
    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->text:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;)Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;
    .locals 0

    .line 85
    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->textPreparedSelectionState:Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;

    return-object p0
.end method

.method public static final synthetic access$isFromSoftKeyboard$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;)Z
    .locals 0

    .line 85
    iget-boolean p0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->isFromSoftKeyboard:Z

    return p0
.end method

.method private final applyIfNotEmpty(ZLkotlin/jvm/functions/Function1;)Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 182
    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;)Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 184
    :cond_0
    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->access$getText$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_1

    .line 185
    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p0
.end method

.method static synthetic applyIfNotEmpty$default(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;
    .locals 0

    const/4 p4, 0x1

    and-int/2addr p3, p4

    if-eqz p3, :cond_0

    move p1, p4

    :cond_0
    if-eqz p1, :cond_1

    .line 182
    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;)Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 184
    :cond_1
    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->access$getText$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_2

    .line 185
    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object p0
.end method

.method private final charOffset(I)I
    .locals 1

    .line 456
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result p1

    return p1
.end method

.method private final getLineEndByOffsetForLayout(Landroidx/compose/ui/text/TextLayoutResult;I)I
    .locals 1

    .line 422
    invoke-virtual {p1, p2}, Landroidx/compose/ui/text/TextLayoutResult;->getLineForOffset(I)I

    move-result p2

    const/4 v0, 0x1

    .line 423
    invoke-virtual {p1, p2, v0}, Landroidx/compose/ui/text/TextLayoutResult;->getLineEnd(IZ)I

    move-result p1

    return p1
.end method

.method static synthetic getLineEndByOffsetForLayout$default(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;Landroidx/compose/ui/text/TextLayoutResult;IILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 420
    iget-wide p2, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->selection:J

    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result p2

    .line 419
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->getLineEndByOffsetForLayout(Landroidx/compose/ui/text/TextLayoutResult;I)I

    move-result p0

    return p0
.end method

.method private final getLineStartByOffsetForLayout(Landroidx/compose/ui/text/TextLayoutResult;I)I
    .locals 0

    .line 415
    invoke-virtual {p1, p2}, Landroidx/compose/ui/text/TextLayoutResult;->getLineForOffset(I)I

    move-result p2

    .line 416
    invoke-virtual {p1, p2}, Landroidx/compose/ui/text/TextLayoutResult;->getLineStart(I)I

    move-result p1

    return p1
.end method

.method static synthetic getLineStartByOffsetForLayout$default(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;Landroidx/compose/ui/text/TextLayoutResult;IILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 413
    iget-wide p2, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->selection:J

    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result p2

    .line 412
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->getLineStartByOffsetForLayout(Landroidx/compose/ui/text/TextLayoutResult;I)I

    move-result p0

    return p0
.end method

.method private final getNextWordOffsetForLayout(Landroidx/compose/ui/text/TextLayoutResult;I)I
    .locals 3

    .line 387
    :goto_0
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->initialValue:Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->length()I

    move-result v0

    if-lt p2, v0, :cond_0

    .line 388
    iget-object p1, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->initialValue:Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    invoke-virtual {p1}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->length()I

    move-result p1

    return p1

    .line 390
    :cond_0
    invoke-direct {p0, p2}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->charOffset(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/compose/ui/text/TextLayoutResult;->getWordBoundary--jx7JFs(I)J

    move-result-wide v0

    .line 391
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v2

    if-gt v2, p2, :cond_1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 394
    :cond_1
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result p1

    return p1
.end method

.method static synthetic getNextWordOffsetForLayout$default(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;Landroidx/compose/ui/text/TextLayoutResult;IILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 385
    iget-wide p2, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->selection:J

    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result p2

    .line 384
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->getNextWordOffsetForLayout(Landroidx/compose/ui/text/TextLayoutResult;I)I

    move-result p0

    return p0
.end method

.method private final getPrevWordOffsetForLayout(Landroidx/compose/ui/text/TextLayoutResult;I)I
    .locals 3

    :goto_0
    if-gtz p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 404
    :cond_0
    invoke-direct {p0, p2}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->charOffset(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/compose/ui/text/TextLayoutResult;->getWordBoundary--jx7JFs(I)J

    move-result-wide v0

    .line 405
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v2

    if-lt v2, p2, :cond_1

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 408
    :cond_1
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result p1

    return p1
.end method

.method static synthetic getPrevWordOffsetForLayout$default(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;Landroidx/compose/ui/text/TextLayoutResult;IILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 399
    iget-wide p2, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->selection:J

    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result p2

    .line 398
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->getPrevWordOffsetForLayout(Landroidx/compose/ui/text/TextLayoutResult;I)I

    move-result p0

    return p0
.end method

.method private final isLtr()Z
    .locals 4

    .line 380
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-wide v2, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->selection:J

    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/compose/ui/text/TextLayoutResult;->getParagraphDirection(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 381
    :cond_0
    sget-object v2, Landroidx/compose/ui/text/style/ResolvedTextDirection;->Ltr:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method private final jumpByLinesOffset(Landroidx/compose/ui/text/TextLayoutResult;I)I
    .locals 4

    .line 427
    iget-wide v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->selection:J

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v0

    .line 429
    iget-object v1, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->textPreparedSelectionState:Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;

    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;->getCachedX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 430
    iget-object v1, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->textPreparedSelectionState:Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;

    invoke-virtual {p1, v0}, Landroidx/compose/ui/text/TextLayoutResult;->getCursorRect(I)Landroidx/compose/ui/geometry/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;->setCachedX(F)V

    .line 433
    :cond_0
    invoke-virtual {p1, v0}, Landroidx/compose/ui/text/TextLayoutResult;->getLineForOffset(I)I

    move-result v0

    add-int/2addr v0, p2

    if-gez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 439
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/ui/text/TextLayoutResult;->getLineCount()I

    move-result p2

    if-lt v0, p2, :cond_2

    .line 440
    iget-object p1, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->text:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    return p1

    .line 444
    :cond_2
    invoke-virtual {p1, v0}, Landroidx/compose/ui/text/TextLayoutResult;->getLineBottom(I)F

    move-result p2

    const/4 v1, 0x1

    int-to-float v2, v1

    sub-float/2addr p2, v2

    .line 445
    iget-object v2, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->textPreparedSelectionState:Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;

    invoke-virtual {v2}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;->getCachedX()F

    move-result v2

    .line 446
    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->isLtr()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1, v0}, Landroidx/compose/ui/text/TextLayoutResult;->getLineRight(I)F

    move-result v3

    cmpl-float v3, v2, v3

    if-gez v3, :cond_4

    .line 447
    :cond_3
    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->isLtr()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p1, v0}, Landroidx/compose/ui/text/TextLayoutResult;->getLineLeft(I)F

    move-result v3

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_5

    .line 449
    :cond_4
    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/text/TextLayoutResult;->getLineEnd(IZ)I

    move-result p1

    return p1

    .line 453
    :cond_5
    invoke-static {v2, p2}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/text/TextLayoutResult;->getOffsetForPosition-k-4lQ0M(J)I

    move-result p1

    return p1
.end method

.method private final jumpByPagesOffset(I)I
    .locals 3

    .line 153
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->initialValue:Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->getSelection-d9O1mEE()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v0

    .line 154
    iget-object v1, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    if-eqz v1, :cond_2

    iget v1, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->visibleTextLayoutHeight:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 155
    :cond_0
    iget-object v1, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    invoke-virtual {v1, v0}, Landroidx/compose/ui/text/TextLayoutResult;->getCursorRect(I)Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    .line 158
    iget v1, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->visibleTextLayoutHeight:F

    int-to-float p1, p1

    mul-float/2addr v1, p1

    const/4 p1, 0x0

    .line 156
    invoke-virtual {v0, p1, v1}, Landroidx/compose/ui/geometry/Rect;->translate(FF)Landroidx/compose/ui/geometry/Rect;

    move-result-object p1

    .line 161
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/text/TextLayoutResult;->getLineForVerticalPosition(F)I

    move-result v0

    .line 162
    iget-object v1, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    invoke-virtual {v1, v0}, Landroidx/compose/ui/text/TextLayoutResult;->getLineBottom(I)F

    move-result v0

    .line 163
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v1

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result v2

    sub-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_1

    .line 165
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getTopLeft-F1C5BW0()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/text/TextLayoutResult;->getOffsetForPosition-k-4lQ0M(J)I

    move-result p1

    goto :goto_0

    .line 168
    :cond_1
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getBottomLeft-F1C5BW0()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/text/TextLayoutResult;->getOffsetForPosition-k-4lQ0M(J)I

    move-result p1

    :goto_0
    return p1

    :cond_2
    :goto_1
    return v0
.end method

.method private final moveCursorNext()Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;
    .locals 4

    .line 650
    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;)Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 652
    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->access$getText$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 653
    move-object v0, p0

    check-cast v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    .line 271
    iget-wide v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->selection:J

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v0

    .line 272
    iget-object v1, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->text:Ljava/lang/String;

    const/4 v2, 0x1

    iget-object v3, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->state:Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    invoke-static {v1, v0, v2, v3}, Landroidx/compose/foundation/text/input/internal/selection/TextPreparedSelectionKt;->calculateAdjacentCursorPosition(Ljava/lang/String;IZLandroidx/compose/foundation/text/input/internal/TransformedTextFieldState;)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 274
    invoke-direct {p0, v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->setCursor(I)V

    :cond_0
    return-object p0
.end method

.method private final moveCursorNextByWord()Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;
    .locals 1

    .line 705
    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;)Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 707
    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->access$getText$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 708
    move-object v0, p0

    check-cast v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    .line 306
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->getNextWordOffset()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->setCursor(I)V

    :cond_0
    return-object p0
.end method

.method private final moveCursorPrev()Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;
    .locals 4

    .line 639
    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;)Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 641
    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->access$getText$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 642
    move-object v0, p0

    check-cast v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    .line 263
    iget-wide v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->selection:J

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v0

    .line 264
    iget-object v1, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->text:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->state:Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    invoke-static {v1, v0, v2, v3}, Landroidx/compose/foundation/text/input/internal/selection/TextPreparedSelectionKt;->calculateAdjacentCursorPosition(Ljava/lang/String;IZLandroidx/compose/foundation/text/input/internal/TransformedTextFieldState;)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 266
    invoke-direct {p0, v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->setCursor(I)V

    :cond_0
    return-object p0
.end method

.method private final moveCursorPrevByWord()Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;
    .locals 1

    .line 716
    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;)Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 718
    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->access$getText$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 719
    move-object v0, p0

    check-cast v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    .line 312
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->getPreviousWordOffset()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->setCursor(I)V

    :cond_0
    return-object p0
.end method

.method private final setCursor(I)V
    .locals 2

    .line 194
    invoke-static {p1, p1}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->selection:J

    return-void
.end method


# virtual methods
.method public final collapseLeftOr(Lkotlin/jvm/functions/Function1;)Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;"
        }
    .end annotation

    .line 617
    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;)Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 619
    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->access$getText$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 620
    move-object v0, p0

    check-cast v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    .line 225
    iget-wide v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->selection:J

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 228
    :cond_0
    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->isLtr()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 229
    iget-wide v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->selection:J

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->setCursor(I)V

    goto :goto_0

    .line 231
    :cond_1
    iget-wide v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->selection:J

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->setCursor(I)V

    :cond_2
    :goto_0
    return-object p0
.end method

.method public final collapseRightOr(Lkotlin/jvm/functions/Function1;)Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;"
        }
    .end annotation

    .line 628
    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;)Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 630
    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->access$getText$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 631
    move-object v0, p0

    check-cast v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    .line 240
    iget-wide v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->selection:J

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 243
    :cond_0
    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->isLtr()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 244
    iget-wide v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->selection:J

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->setCursor(I)V

    goto :goto_0

    .line 246
    :cond_1
    iget-wide v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->selection:J

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->setCursor(I)V

    :cond_2
    :goto_0
    return-object p0
.end method

.method public final deleteIfSelectedOr(Lkotlin/jvm/functions/Function0;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/compose/ui/text/TextRange;",
            ">;)V"
        }
    .end annotation

    .line 115
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->getSelection-d9O1mEE()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    .line 116
    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->access$getState$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;)Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    move-result-object v2

    .line 117
    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    .line 118
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->getSelection-d9O1mEE()J

    move-result-wide v4

    .line 119
    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->access$isFromSoftKeyboard$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;)Z

    move-result p1

    xor-int/lit8 v7, p1, 0x1

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v6, 0x0

    .line 116
    invoke-static/range {v2 .. v9}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->replaceText-M8tDOmk$default(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Ljava/lang/CharSequence;JLandroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;ZILjava/lang/Object;)V

    goto :goto_0

    .line 122
    :cond_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/text/TextRange;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/compose/ui/text/TextRange;->unbox-impl()J

    move-result-wide v4

    .line 123
    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->access$getState$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;)Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    move-result-object v2

    .line 124
    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    .line 126
    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->access$isFromSoftKeyboard$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;)Z

    move-result p1

    xor-int/lit8 v7, p1, 0x1

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v6, 0x0

    .line 123
    invoke-static/range {v2 .. v9}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->replaceText-M8tDOmk$default(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Ljava/lang/CharSequence;JLandroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;ZILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final deselect()Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;
    .locals 2

    .line 584
    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;)Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 586
    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->access$getText$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 587
    move-object v0, p0

    check-cast v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    .line 202
    iget-wide v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->selection:J

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->setCursor(I)V

    :cond_0
    return-object p0
.end method

.method public final getInitialValue()Landroidx/compose/foundation/text/input/TextFieldCharSequence;
    .locals 1

    .line 98
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->initialValue:Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    return-object v0
.end method

.method public final getLineEndByOffset()I
    .locals 4

    .line 352
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v0, v3, v1, v2}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->getLineEndByOffsetForLayout$default(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;Landroidx/compose/ui/text/TextLayoutResult;IILjava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    return v0
.end method

.method public final getLineStartByOffset()I
    .locals 4

    .line 345
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->getLineStartByOffsetForLayout$default(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;Landroidx/compose/ui/text/TextLayoutResult;IILjava/lang/Object;)I

    move-result v1

    :cond_0
    return v1
.end method

.method public final getNextCharacterIndex()I
    .locals 3

    .line 260
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->text:Ljava/lang/String;

    iget-wide v1, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->selection:J

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/foundation/text/StringHelpers_androidKt;->findFollowingBreak(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getNextWordOffset()I
    .locals 4

    .line 303
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v0, v3, v1, v2}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->getNextWordOffsetForLayout$default(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;Landroidx/compose/ui/text/TextLayoutResult;IILjava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    return v0
.end method

.method public final getPrecedingCharacterIndex()I
    .locals 3

    .line 254
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->text:Ljava/lang/String;

    iget-wide v1, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->selection:J

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/foundation/text/StringHelpers_androidKt;->findPrecedingBreak(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getPreviousWordOffset()I
    .locals 4

    .line 309
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->getPrevWordOffsetForLayout$default(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;Landroidx/compose/ui/text/TextLayoutResult;IILjava/lang/Object;)I

    move-result v1

    :cond_0
    return v1
.end method

.method public final getSelection-d9O1mEE()J
    .locals 2

    .line 103
    iget-wide v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->selection:J

    return-wide v0
.end method

.method public final moveCursorDownByLine()Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;
    .locals 2

    .line 339
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    if-nez v0, :cond_0

    return-object p0

    .line 754
    :cond_0
    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->access$getText$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 755
    move-object v0, p0

    check-cast v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    .line 341
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->jumpByLinesOffset(Landroidx/compose/ui/text/TextLayoutResult;I)I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->setCursor(I)V

    :cond_1
    return-object p0
.end method

.method public final moveCursorDownByPage()Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;
    .locals 1

    .line 564
    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->access$getText$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 565
    move-object v0, p0

    check-cast v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    const/4 v0, 0x1

    .line 143
    invoke-direct {p0, v0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->jumpByPagesOffset(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->setCursor(I)V

    :cond_0
    return-object p0
.end method

.method public final moveCursorLeft()Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;
    .locals 1

    .line 595
    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;)Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 597
    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->access$getText$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 598
    move-object v0, p0

    check-cast v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    .line 206
    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->isLtr()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->moveCursorPrev()Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    goto :goto_0

    .line 209
    :cond_0
    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->moveCursorNext()Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    :cond_1
    :goto_0
    return-object p0
.end method

.method public final moveCursorLeftByWord()Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;
    .locals 1

    .line 683
    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;)Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 685
    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->access$getText$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 686
    move-object v0, p0

    check-cast v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    .line 287
    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->isLtr()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->moveCursorPrevByWord()Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    goto :goto_0

    .line 290
    :cond_0
    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->moveCursorNextByWord()Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    :cond_1
    :goto_0
    return-object p0
.end method

.method public final moveCursorNextByParagraph()Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;
    .locals 3

    .line 738
    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;)Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 740
    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->access$getText$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 741
    move-object v0, p0

    check-cast v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    .line 324
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->text:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    iget-wide v1, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->selection:J

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/foundation/text/StringHelpersKt;->findParagraphEnd(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 325
    iget-wide v1, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->selection:J

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 326
    iget-object v1, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->text:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v0}, Landroidx/compose/foundation/text/StringHelpersKt;->findParagraphEnd(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 328
    :cond_0
    invoke-direct {p0, v0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->setCursor(I)V

    :cond_1
    return-object p0
.end method

.method public final moveCursorPrevByParagraph()Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;
    .locals 3

    .line 727
    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;)Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 729
    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->access$getText$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 730
    move-object v0, p0

    check-cast v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    .line 316
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->text:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    iget-wide v1, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->selection:J

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/foundation/text/StringHelpersKt;->findParagraphStart(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 317
    iget-wide v1, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->selection:J

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v1

    if-ne v0, v1, :cond_0

    if-eqz v0, :cond_0

    .line 318
    iget-object v1, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->text:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v0}, Landroidx/compose/foundation/text/StringHelpersKt;->findParagraphStart(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 320
    :cond_0
    invoke-direct {p0, v0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->setCursor(I)V

    :cond_1
    return-object p0
.end method

.method public final moveCursorRight()Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;
    .locals 1

    .line 606
    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;)Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 608
    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->access$getText$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 609
    move-object v0, p0

    check-cast v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    .line 214
    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->isLtr()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->moveCursorNext()Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    goto :goto_0

    .line 217
    :cond_0
    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->moveCursorPrev()Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    :cond_1
    :goto_0
    return-object p0
.end method

.method public final moveCursorRightByWord()Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;
    .locals 1

    .line 694
    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;)Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 696
    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->access$getText$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 697
    move-object v0, p0

    check-cast v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    .line 295
    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->isLtr()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->moveCursorNextByWord()Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    goto :goto_0

    .line 298
    :cond_0
    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->moveCursorPrevByWord()Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    :cond_1
    :goto_0
    return-object p0
.end method

.method public final moveCursorToEnd()Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;
    .locals 1

    .line 672
    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;)Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 674
    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->access$getText$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 675
    move-object v0, p0

    check-cast v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    .line 283
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->setCursor(I)V

    :cond_0
    return-object p0
.end method

.method public final moveCursorToHome()Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;
    .locals 1

    .line 661
    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;)Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 663
    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->access$getText$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 664
    move-object v0, p0

    check-cast v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    const/4 v0, 0x0

    .line 279
    invoke-direct {p0, v0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->setCursor(I)V

    :cond_0
    return-object p0
.end method

.method public final moveCursorToLineEnd()Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;
    .locals 1

    .line 774
    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;)Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 776
    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->access$getText$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 777
    move-object v0, p0

    check-cast v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    .line 355
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->getLineEndByOffset()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->setCursor(I)V

    :cond_0
    return-object p0
.end method

.method public final moveCursorToLineLeftSide()Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;
    .locals 1

    .line 785
    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;)Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 787
    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->access$getText$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 788
    move-object v0, p0

    check-cast v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    .line 359
    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->isLtr()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->moveCursorToLineStart()Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    goto :goto_0

    .line 362
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->moveCursorToLineEnd()Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    :cond_1
    :goto_0
    return-object p0
.end method

.method public final moveCursorToLineRightSide()Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;
    .locals 1

    .line 796
    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;)Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 798
    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->access$getText$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 799
    move-object v0, p0

    check-cast v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    .line 367
    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->isLtr()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->moveCursorToLineEnd()Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    goto :goto_0

    .line 370
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->moveCursorToLineStart()Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    :cond_1
    :goto_0
    return-object p0
.end method

.method public final moveCursorToLineStart()Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;
    .locals 1

    .line 763
    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;)Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 765
    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->access$getText$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 766
    move-object v0, p0

    check-cast v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    .line 348
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->getLineStartByOffset()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->setCursor(I)V

    :cond_0
    return-object p0
.end method

.method public final moveCursorUpByLine()Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;
    .locals 2

    .line 332
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    if-nez v0, :cond_0

    return-object p0

    .line 747
    :cond_0
    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->access$getText$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 748
    move-object v0, p0

    check-cast v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    .line 334
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->jumpByLinesOffset(Landroidx/compose/ui/text/TextLayoutResult;I)I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->setCursor(I)V

    :cond_1
    return-object p0
.end method

.method public final moveCursorUpByPage()Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;
    .locals 1

    .line 557
    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->access$getText$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 558
    move-object v0, p0

    check-cast v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    const/4 v0, -0x1

    .line 136
    invoke-direct {p0, v0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->jumpByPagesOffset(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->setCursor(I)V

    :cond_0
    return-object p0
.end method

.method public final selectAll()Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;
    .locals 2

    .line 573
    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->access$getTextPreparedSelectionState$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;)Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;->resetCachedX()V

    .line 575
    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->access$getText$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 576
    move-object v0, p0

    check-cast v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    .line 198
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->selection:J

    :cond_0
    return-object p0
.end method

.method public final selectMovement()Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;
    .locals 3

    .line 805
    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->access$getText$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 806
    move-object v0, p0

    check-cast v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    .line 376
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->initialValue:Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->getSelection-d9O1mEE()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v0

    iget-wide v1, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->selection:J

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->selection:J

    :cond_0
    return-object p0
.end method

.method public final setSelection-5zc-tL8(J)V
    .locals 0

    .line 103
    iput-wide p1, p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->selection:J

    return-void
.end method
