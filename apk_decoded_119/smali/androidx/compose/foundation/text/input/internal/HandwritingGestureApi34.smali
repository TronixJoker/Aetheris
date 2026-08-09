.class public final Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;
.super Ljava/lang/Object;
.source "HandwritingGesture.android.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHandwritingGesture.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HandwritingGesture.android.kt\nandroidx/compose/foundation/text/input/internal/HandwritingGestureApi34\n+ 2 TransformedTextFieldState.kt\nandroidx/compose/foundation/text/input/internal/TransformedTextFieldState\n+ 3 TextFieldState.kt\nandroidx/compose/foundation/text/input/TextFieldState\n*L\n1#1,1133:1\n314#2,6:1134\n323#2:1155\n314#2,6:1156\n323#2:1177\n314#2,6:1178\n323#2:1199\n261#3,15:1140\n261#3,15:1162\n261#3,15:1184\n*S KotlinDebug\n*F\n+ 1 HandwritingGesture.android.kt\nandroidx/compose/foundation/text/input/internal/HandwritingGestureApi34\n*L\n366#1:1134,6\n366#1:1155\n385#1:1156,6\n385#1:1177\n98#1:1178,6\n98#1:1199\n366#1:1140,15\n385#1:1162,15\n98#1:1184,15\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b2\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c1\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J$\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008H\u0003J>\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008H\u0003\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J,\u0010\u0014\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u00162\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008H\u0003J8\u0010\u0017\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008H\u0003\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0014\u0010\u001c\u001a\u00020\u0004*\u00020\u001d2\u0006\u0010\u0005\u001a\u00020\u0006H\u0003J&\u0010\u001e\u001a\u00020\n*\u00020\u001d2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u001f\u001a\u00020 H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008!\u0010\"J0\u0010#\u001a\u00020\u0004*\u00020$2\u0006\u0010\u0005\u001a\u00020%2\u0006\u0010\u000e\u001a\u00020\u000f2\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008H\u0003J\u001c\u0010#\u001a\u00020\u0004*\u00020\u001d2\u0006\u0010\u0005\u001a\u00020%2\u0006\u0010&\u001a\u00020\'H\u0003J0\u0010(\u001a\u00020\u0004*\u00020$2\u0006\u0010\u0005\u001a\u00020)2\u0006\u0010\u000e\u001a\u00020\u000f2\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008H\u0003J\u001c\u0010(\u001a\u00020\u0004*\u00020\u001d2\u0006\u0010\u0005\u001a\u00020)2\u0006\u0010&\u001a\u00020\'H\u0003J&\u0010*\u001a\u00020\n*\u00020\u001d2\u0006\u0010+\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u0011H\u0003\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008,\u0010-JA\u0010.\u001a\u00020\u0004*\u00020$2\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010/\u001a\u0004\u0018\u00010\u00192\u0008\u00100\u001a\u0004\u0018\u0001012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008H\u0001\u00a2\u0006\u0002\u00082J+\u0010.\u001a\u00020\u0004*\u00020\u001d2\u0006\u00103\u001a\u00020\u00062\u0006\u0010&\u001a\u00020\'2\u0008\u00100\u001a\u0004\u0018\u000101H\u0001\u00a2\u0006\u0002\u00082J2\u00104\u001a\u00020\u0004*\u00020$2\u0006\u0010\u0005\u001a\u0002052\u0008\u00100\u001a\u0004\u0018\u0001012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008H\u0003J&\u00104\u001a\u00020\u0004*\u00020\u001d2\u0006\u0010\u0005\u001a\u0002052\u0006\u0010&\u001a\u00020\'2\u0008\u00100\u001a\u0004\u0018\u000101H\u0003J:\u00106\u001a\u00020\u0004*\u00020$2\u0006\u0010\u0005\u001a\u0002072\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u00100\u001a\u0004\u0018\u0001012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008H\u0003J&\u00106\u001a\u00020\u0004*\u00020\u001d2\u0006\u0010\u0005\u001a\u0002072\u0006\u0010&\u001a\u00020\'2\u0008\u00100\u001a\u0004\u0018\u000101H\u0003J:\u00108\u001a\u00020\u0004*\u00020$2\u0006\u0010\u0005\u001a\u0002092\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u00100\u001a\u0004\u0018\u0001012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008H\u0003J&\u00108\u001a\u00020\u0004*\u00020\u001d2\u0006\u0010\u0005\u001a\u0002092\u0006\u0010&\u001a\u00020\'2\u0008\u00100\u001a\u0004\u0018\u000101H\u0003J2\u0010:\u001a\u00020\u0004*\u00020$2\u0006\u0010\u0005\u001a\u00020;2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008H\u0003J\u001c\u0010:\u001a\u00020\u0004*\u00020\u001d2\u0006\u0010\u0005\u001a\u00020;2\u0006\u0010&\u001a\u00020\'H\u0003J2\u0010<\u001a\u00020\u0004*\u00020$2\u0006\u0010\u0005\u001a\u00020=2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008H\u0003J\u001c\u0010<\u001a\u00020\u0004*\u00020\u001d2\u0006\u0010\u0005\u001a\u00020=2\u0006\u0010&\u001a\u00020\'H\u0003J\u001e\u0010>\u001a\u00020\n*\u00020$2\u0006\u0010\u0005\u001a\u00020%2\u0008\u0010/\u001a\u0004\u0018\u00010\u0019H\u0003J\u001c\u0010>\u001a\u00020\n*\u00020\u001d2\u0006\u0010\u0005\u001a\u00020%2\u0006\u0010&\u001a\u00020\'H\u0003J\u001e\u0010?\u001a\u00020\n*\u00020$2\u0006\u0010\u0005\u001a\u00020)2\u0008\u0010/\u001a\u0004\u0018\u00010\u0019H\u0003J\u001c\u0010?\u001a\u00020\n*\u00020\u001d2\u0006\u0010\u0005\u001a\u00020)2\u0006\u0010&\u001a\u00020\'H\u0003J-\u0010@\u001a\u00020\u0011*\u00020$2\u0006\u0010\u0005\u001a\u00020A2\u0008\u0010/\u001a\u0004\u0018\u00010\u00192\u0008\u0010B\u001a\u0004\u0018\u00010CH\u0001\u00a2\u0006\u0002\u0008DJ+\u0010@\u001a\u00020\u0011*\u00020\u001d2\u0006\u00103\u001a\u00020A2\u0006\u0010&\u001a\u00020\'2\u0008\u0010B\u001a\u0004\u0018\u00010CH\u0001\u00a2\u0006\u0002\u0008DJ\u001e\u0010E\u001a\u00020\n*\u00020$2\u0006\u0010\u0005\u001a\u00020;2\u0008\u0010/\u001a\u0004\u0018\u00010\u0019H\u0003J\u001c\u0010E\u001a\u00020\n*\u00020\u001d2\u0006\u0010\u0005\u001a\u00020;2\u0006\u0010&\u001a\u00020\'H\u0003J\u001e\u0010F\u001a\u00020\n*\u00020$2\u0006\u0010\u0005\u001a\u00020=2\u0008\u0010/\u001a\u0004\u0018\u00010\u0019H\u0003J\u001c\u0010F\u001a\u00020\n*\u00020\u001d2\u0006\u0010\u0005\u001a\u00020=2\u0006\u0010&\u001a\u00020\'H\u0003J\u0019\u0010G\u001a\u00020H*\u00020\u0004H\u0003\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008I\u0010J\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006K"
    }
    d2 = {
        "Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;",
        "",
        "()V",
        "fallbackOnLegacyTextField",
        "",
        "gesture",
        "Landroid/view/inputmethod/HandwritingGesture;",
        "editCommandConsumer",
        "Lkotlin/Function1;",
        "Landroidx/compose/ui/text/input/EditCommand;",
        "",
        "performDeletionOnLegacyTextField",
        "range",
        "Landroidx/compose/ui/text/TextRange;",
        "text",
        "Landroidx/compose/ui/text/AnnotatedString;",
        "adjustRange",
        "",
        "performDeletionOnLegacyTextField-vJH6DeI",
        "(JLandroidx/compose/ui/text/AnnotatedString;ZLkotlin/jvm/functions/Function1;)V",
        "performInsertionOnLegacyTextField",
        "offset",
        "",
        "performSelectionOnLegacyTextField",
        "textSelectionManager",
        "Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;",
        "performSelectionOnLegacyTextField-8ffj60Q",
        "(JLandroidx/compose/foundation/text/selection/TextFieldSelectionManager;Lkotlin/jvm/functions/Function1;)V",
        "fallback",
        "Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;",
        "highlightRange",
        "type",
        "Landroidx/compose/foundation/text/input/TextHighlightType;",
        "highlightRange-XJREzCE",
        "(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;JI)V",
        "performDeleteGesture",
        "Landroidx/compose/foundation/text/LegacyTextFieldState;",
        "Landroid/view/inputmethod/DeleteGesture;",
        "layoutState",
        "Landroidx/compose/foundation/text/input/internal/TextLayoutState;",
        "performDeleteRangeGesture",
        "Landroid/view/inputmethod/DeleteRangeGesture;",
        "performDeletion",
        "rangeInTransformedText",
        "performDeletion-Sb-Bc2M",
        "(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;JZ)V",
        "performHandwritingGesture",
        "textFieldSelectionManager",
        "viewConfiguration",
        "Landroidx/compose/ui/platform/ViewConfiguration;",
        "performHandwritingGesture$foundation_release",
        "handwritingGesture",
        "performInsertGesture",
        "Landroid/view/inputmethod/InsertGesture;",
        "performJoinOrSplitGesture",
        "Landroid/view/inputmethod/JoinOrSplitGesture;",
        "performRemoveSpaceGesture",
        "Landroid/view/inputmethod/RemoveSpaceGesture;",
        "performSelectGesture",
        "Landroid/view/inputmethod/SelectGesture;",
        "performSelectRangeGesture",
        "Landroid/view/inputmethod/SelectRangeGesture;",
        "previewDeleteGesture",
        "previewDeleteRangeGesture",
        "previewHandwritingGesture",
        "Landroid/view/inputmethod/PreviewableHandwritingGesture;",
        "cancellationSignal",
        "Landroid/os/CancellationSignal;",
        "previewHandwritingGesture$foundation_release",
        "previewSelectGesture",
        "previewSelectRangeGesture",
        "toTextGranularity",
        "Landroidx/compose/ui/text/TextGranularity;",
        "toTextGranularity-NUwxegE",
        "(I)I",
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

.field public static final INSTANCE:Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;


# direct methods
.method public static synthetic $r8$lambda$8nr13tCGwbbQRzAr0zojfE-zSzU(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)V
    .locals 0

    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->previewHandwritingGesture$lambda$9(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SyCjAwtO30unj_g9LamP0q_Tjjs(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;)V
    .locals 0

    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->previewHandwritingGesture$lambda$1(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;

    invoke-direct {v0}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;-><init>()V

    sput-object v0, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->INSTANCE:Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final fallback(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Landroid/view/inputmethod/HandwritingGesture;)I
    .locals 6

    .line 1138
    invoke-static {p1}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->access$getTextFieldState$p(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;)Landroidx/compose/foundation/text/input/TextFieldState;

    move-result-object v0

    .line 1139
    invoke-static {p1}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->access$getInputTransformation$p(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;)Landroidx/compose/foundation/text/input/InputTransformation;

    move-result-object v1

    .line 1143
    sget-object v2, Landroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;->MergeIfPossible:Landroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;

    .line 1146
    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text/input/internal/EditingBuffer;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/foundation/text/input/internal/EditingBuffer;->getChangeTracker()Landroidx/compose/foundation/text/input/internal/ChangeTracker;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/foundation/text/input/internal/ChangeTracker;->clearChanges()V

    .line 1147
    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text/input/internal/EditingBuffer;

    move-result-object v3

    .line 367
    invoke-virtual {v3}, Landroidx/compose/foundation/text/input/internal/EditingBuffer;->clearHighlight()V

    const/4 v3, 0x1

    .line 1149
    invoke-static {v0, v1, v3, v2}, Landroidx/compose/foundation/text/input/TextFieldState;->access$commitEditAsUser(Landroidx/compose/foundation/text/input/TextFieldState;Landroidx/compose/foundation/text/input/InputTransformation;ZLandroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;)V

    .line 370
    invoke-virtual {p2}, Landroid/view/inputmethod/HandwritingGesture;->getFallbackText()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x3

    return p1

    .line 374
    :cond_0
    move-object v1, p2

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p1

    .line 373
    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->replaceSelectedText$default(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Ljava/lang/CharSequence;ZLandroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;ILjava/lang/Object;)V

    const/4 p1, 0x5

    return p1
.end method

.method private final fallbackOnLegacyTextField(Landroid/view/inputmethod/HandwritingGesture;Lkotlin/jvm/functions/Function1;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/inputmethod/HandwritingGesture;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/text/input/EditCommand;",
            "Lkotlin/Unit;",
            ">;)I"
        }
    .end annotation

    .line 757
    invoke-virtual {p1}, Landroid/view/inputmethod/HandwritingGesture;->getFallbackText()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x3

    return p1

    .line 760
    :cond_0
    new-instance v0, Landroidx/compose/ui/text/input/CommitTextCommand;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Landroidx/compose/ui/text/input/CommitTextCommand;-><init>(Ljava/lang/String;I)V

    .line 759
    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x5

    return p1
.end method

.method private final highlightRange-XJREzCE(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;JI)V
    .locals 1

    .line 384
    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1160
    invoke-static {p1}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->access$getTextFieldState$p(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;)Landroidx/compose/foundation/text/input/TextFieldState;

    move-result-object p2

    .line 1161
    invoke-static {p1}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->access$getInputTransformation$p(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;)Landroidx/compose/foundation/text/input/InputTransformation;

    move-result-object p1

    .line 1165
    sget-object p3, Landroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;->MergeIfPossible:Landroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;

    .line 1168
    invoke-virtual {p2}, Landroidx/compose/foundation/text/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text/input/internal/EditingBuffer;

    move-result-object p4

    invoke-virtual {p4}, Landroidx/compose/foundation/text/input/internal/EditingBuffer;->getChangeTracker()Landroidx/compose/foundation/text/input/internal/ChangeTracker;

    move-result-object p4

    invoke-virtual {p4}, Landroidx/compose/foundation/text/input/internal/ChangeTracker;->clearChanges()V

    .line 1169
    invoke-virtual {p2}, Landroidx/compose/foundation/text/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text/input/internal/EditingBuffer;

    move-result-object p4

    .line 385
    invoke-virtual {p4}, Landroidx/compose/foundation/text/input/internal/EditingBuffer;->clearHighlight()V

    const/4 p4, 0x1

    .line 1171
    invoke-static {p2, p1, p4, p3}, Landroidx/compose/foundation/text/input/TextFieldState;->access$commitEditAsUser(Landroidx/compose/foundation/text/input/TextFieldState;Landroidx/compose/foundation/text/input/InputTransformation;ZLandroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;)V

    goto :goto_0

    .line 387
    :cond_0
    invoke-virtual {p1, p4, p2, p3}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->highlightCharsIn-7RAjNK8(IJ)V

    :goto_0
    return-void
.end method

.method private final performDeleteGesture(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroid/view/inputmethod/DeleteGesture;Landroidx/compose/ui/text/AnnotatedString;Lkotlin/jvm/functions/Function1;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/text/LegacyTextFieldState;",
            "Landroid/view/inputmethod/DeleteGesture;",
            "Landroidx/compose/ui/text/AnnotatedString;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/text/input/EditCommand;",
            "Lkotlin/Unit;",
            ">;)I"
        }
    .end annotation

    .line 485
    invoke-virtual {p2}, Landroid/view/inputmethod/DeleteGesture;->getGranularity()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->toTextGranularity-NUwxegE(I)I

    move-result v0

    .line 487
    invoke-virtual {p2}, Landroid/view/inputmethod/DeleteGesture;->getDeletionArea()Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->toComposeRect(Landroid/graphics/RectF;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v1

    .line 489
    sget-object v2, Landroidx/compose/ui/text/TextInclusionStrategy;->Companion:Landroidx/compose/ui/text/TextInclusionStrategy$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/text/TextInclusionStrategy$Companion;->getContainsCenter()Landroidx/compose/ui/text/TextInclusionStrategy;

    move-result-object v2

    .line 486
    invoke-static {p1, v1, v0, v2}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->access$getRangeForScreenRect-OH9lIzo(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/geometry/Rect;ILandroidx/compose/ui/text/TextInclusionStrategy;)J

    move-result-wide v4

    .line 491
    invoke-static {v4, v5}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->INSTANCE:Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;

    check-cast p2, Landroid/view/inputmethod/HandwritingGesture;

    invoke-direct {p1, p2, p4}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->fallbackOnLegacyTextField(Landroid/view/inputmethod/HandwritingGesture;Lkotlin/jvm/functions/Function1;)I

    move-result p1

    return p1

    .line 497
    :cond_0
    sget-object p1, Landroidx/compose/ui/text/TextGranularity;->Companion:Landroidx/compose/ui/text/TextGranularity$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/text/TextGranularity$Companion;->getWord-DRrd7Zo()I

    move-result p1

    invoke-static {v0, p1}, Landroidx/compose/ui/text/TextGranularity;->equals-impl0(II)Z

    move-result v7

    move-object v3, p0

    move-object v6, p3

    move-object v8, p4

    .line 494
    invoke-direct/range {v3 .. v8}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->performDeletionOnLegacyTextField-vJH6DeI(JLandroidx/compose/ui/text/AnnotatedString;ZLkotlin/jvm/functions/Function1;)V

    const/4 p1, 0x1

    return p1
.end method

.method private final performDeleteGesture(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Landroid/view/inputmethod/DeleteGesture;Landroidx/compose/foundation/text/input/internal/TextLayoutState;)I
    .locals 3

    .line 143
    invoke-virtual {p2}, Landroid/view/inputmethod/DeleteGesture;->getGranularity()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->toTextGranularity-NUwxegE(I)I

    move-result v0

    .line 145
    invoke-virtual {p2}, Landroid/view/inputmethod/DeleteGesture;->getDeletionArea()Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->toComposeRect(Landroid/graphics/RectF;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v1

    .line 147
    sget-object v2, Landroidx/compose/ui/text/TextInclusionStrategy;->Companion:Landroidx/compose/ui/text/TextInclusionStrategy$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/text/TextInclusionStrategy$Companion;->getContainsCenter()Landroidx/compose/ui/text/TextInclusionStrategy;

    move-result-object v2

    .line 144
    invoke-static {p3, v1, v0, v2}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->access$getRangeForScreenRect-OH9lIzo(Landroidx/compose/foundation/text/input/internal/TextLayoutState;Landroidx/compose/ui/geometry/Rect;ILandroidx/compose/ui/text/TextInclusionStrategy;)J

    move-result-wide v1

    .line 149
    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result p3

    if-eqz p3, :cond_0

    sget-object p3, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->INSTANCE:Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;

    check-cast p2, Landroid/view/inputmethod/HandwritingGesture;

    invoke-direct {p3, p1, p2}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->fallback(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Landroid/view/inputmethod/HandwritingGesture;)I

    move-result p1

    return p1

    .line 154
    :cond_0
    sget-object p2, Landroidx/compose/ui/text/TextGranularity;->Companion:Landroidx/compose/ui/text/TextGranularity$Companion;

    invoke-virtual {p2}, Landroidx/compose/ui/text/TextGranularity$Companion;->getWord-DRrd7Zo()I

    move-result p2

    invoke-static {v0, p2}, Landroidx/compose/ui/text/TextGranularity;->equals-impl0(II)Z

    move-result p2

    .line 152
    invoke-direct {p0, p1, v1, v2, p2}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->performDeletion-Sb-Bc2M(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;JZ)V

    const/4 p1, 0x1

    return p1
.end method

.method private final performDeleteRangeGesture(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroid/view/inputmethod/DeleteRangeGesture;Landroidx/compose/ui/text/AnnotatedString;Lkotlin/jvm/functions/Function1;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/text/LegacyTextFieldState;",
            "Landroid/view/inputmethod/DeleteRangeGesture;",
            "Landroidx/compose/ui/text/AnnotatedString;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/text/input/EditCommand;",
            "Lkotlin/Unit;",
            ">;)I"
        }
    .end annotation

    .line 561
    invoke-virtual {p2}, Landroid/view/inputmethod/DeleteRangeGesture;->getGranularity()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->toTextGranularity-NUwxegE(I)I

    move-result v0

    .line 563
    invoke-virtual {p2}, Landroid/view/inputmethod/DeleteRangeGesture;->getDeletionStartArea()Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->toComposeRect(Landroid/graphics/RectF;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v1

    .line 564
    invoke-virtual {p2}, Landroid/view/inputmethod/DeleteRangeGesture;->getDeletionEndArea()Landroid/graphics/RectF;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->toComposeRect(Landroid/graphics/RectF;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v2

    .line 566
    sget-object v3, Landroidx/compose/ui/text/TextInclusionStrategy;->Companion:Landroidx/compose/ui/text/TextInclusionStrategy$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/text/TextInclusionStrategy$Companion;->getContainsCenter()Landroidx/compose/ui/text/TextInclusionStrategy;

    move-result-object v3

    .line 562
    invoke-static {p1, v1, v2, v0, v3}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->access$getRangeForScreenRects-O048IG0(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;ILandroidx/compose/ui/text/TextInclusionStrategy;)J

    move-result-wide v5

    .line 568
    invoke-static {v5, v6}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->INSTANCE:Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;

    check-cast p2, Landroid/view/inputmethod/HandwritingGesture;

    invoke-direct {p1, p2, p4}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->fallbackOnLegacyTextField(Landroid/view/inputmethod/HandwritingGesture;Lkotlin/jvm/functions/Function1;)I

    move-result p1

    return p1

    .line 573
    :cond_0
    sget-object p1, Landroidx/compose/ui/text/TextGranularity;->Companion:Landroidx/compose/ui/text/TextGranularity$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/text/TextGranularity$Companion;->getWord-DRrd7Zo()I

    move-result p1

    invoke-static {v0, p1}, Landroidx/compose/ui/text/TextGranularity;->equals-impl0(II)Z

    move-result v8

    move-object v4, p0

    move-object v7, p3

    move-object v9, p4

    .line 570
    invoke-direct/range {v4 .. v9}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->performDeletionOnLegacyTextField-vJH6DeI(JLandroidx/compose/ui/text/AnnotatedString;ZLkotlin/jvm/functions/Function1;)V

    const/4 p1, 0x1

    return p1
.end method

.method private final performDeleteRangeGesture(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Landroid/view/inputmethod/DeleteRangeGesture;Landroidx/compose/foundation/text/input/internal/TextLayoutState;)I
    .locals 4

    .line 214
    invoke-virtual {p2}, Landroid/view/inputmethod/DeleteRangeGesture;->getGranularity()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->toTextGranularity-NUwxegE(I)I

    move-result v0

    .line 216
    invoke-virtual {p2}, Landroid/view/inputmethod/DeleteRangeGesture;->getDeletionStartArea()Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->toComposeRect(Landroid/graphics/RectF;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v1

    .line 217
    invoke-virtual {p2}, Landroid/view/inputmethod/DeleteRangeGesture;->getDeletionEndArea()Landroid/graphics/RectF;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->toComposeRect(Landroid/graphics/RectF;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v2

    .line 219
    sget-object v3, Landroidx/compose/ui/text/TextInclusionStrategy;->Companion:Landroidx/compose/ui/text/TextInclusionStrategy$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/text/TextInclusionStrategy$Companion;->getContainsCenter()Landroidx/compose/ui/text/TextInclusionStrategy;

    move-result-object v3

    .line 215
    invoke-static {p3, v1, v2, v0, v3}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->access$getRangeForScreenRects-O048IG0(Landroidx/compose/foundation/text/input/internal/TextLayoutState;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;ILandroidx/compose/ui/text/TextInclusionStrategy;)J

    move-result-wide v1

    .line 221
    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result p3

    if-eqz p3, :cond_0

    sget-object p3, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->INSTANCE:Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;

    check-cast p2, Landroid/view/inputmethod/HandwritingGesture;

    invoke-direct {p3, p1, p2}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->fallback(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Landroid/view/inputmethod/HandwritingGesture;)I

    move-result p1

    return p1

    .line 226
    :cond_0
    sget-object p2, Landroidx/compose/ui/text/TextGranularity;->Companion:Landroidx/compose/ui/text/TextGranularity$Companion;

    invoke-virtual {p2}, Landroidx/compose/ui/text/TextGranularity$Companion;->getWord-DRrd7Zo()I

    move-result p2

    invoke-static {v0, p2}, Landroidx/compose/ui/text/TextGranularity;->equals-impl0(II)Z

    move-result p2

    .line 224
    invoke-direct {p0, p1, v1, v2, p2}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->performDeletion-Sb-Bc2M(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;JZ)V

    const/4 p1, 0x1

    return p1
.end method

.method private final performDeletion-Sb-Bc2M(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;JZ)V
    .locals 8

    if-eqz p4, :cond_0

    .line 357
    invoke-virtual {p1}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->getVisualText()Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    move-result-object p4

    check-cast p4, Ljava/lang/CharSequence;

    invoke-static {p2, p3, p4}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->access$adjustHandwritingDeleteGestureRange-72CqOWE(JLjava/lang/CharSequence;)J

    move-result-wide p2

    :cond_0
    move-wide v2, p2

    .line 361
    const-string p2, ""

    move-object v1, p2

    check-cast v1, Ljava/lang/CharSequence;

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v7}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->replaceText-M8tDOmk$default(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Ljava/lang/CharSequence;JLandroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;ZILjava/lang/Object;)V

    return-void
.end method

.method private final performDeletionOnLegacyTextField-vJH6DeI(JLandroidx/compose/ui/text/AnnotatedString;ZLkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroidx/compose/ui/text/AnnotatedString;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/text/input/EditCommand;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    if-eqz p4, :cond_0

    .line 736
    check-cast p3, Ljava/lang/CharSequence;

    invoke-static {p1, p2, p3}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->access$adjustHandwritingDeleteGestureRange-72CqOWE(JLjava/lang/CharSequence;)J

    move-result-wide p1

    :cond_0
    const/4 p3, 0x2

    .line 743
    new-array p3, p3, [Landroidx/compose/ui/text/input/EditCommand;

    new-instance p4, Landroidx/compose/ui/text/input/SetSelectionCommand;

    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v0

    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v1

    invoke-direct {p4, v0, v1}, Landroidx/compose/ui/text/input/SetSelectionCommand;-><init>(II)V

    const/4 v0, 0x0

    aput-object p4, p3, v0

    .line 746
    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRange;->getLength-impl(J)I

    move-result p1

    .line 744
    new-instance p2, Landroidx/compose/ui/text/input/DeleteSurroundingTextCommand;

    invoke-direct {p2, p1, v0}, Landroidx/compose/ui/text/input/DeleteSurroundingTextCommand;-><init>(II)V

    const/4 p1, 0x1

    aput-object p2, p3, p1

    .line 742
    invoke-static {p3}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->access$compoundEditCommand([Landroidx/compose/ui/text/input/EditCommand;)Landroidx/compose/ui/text/input/EditCommand;

    move-result-object p1

    .line 741
    invoke-interface {p5, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final performInsertGesture(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroid/view/inputmethod/InsertGesture;Landroidx/compose/ui/platform/ViewConfiguration;Lkotlin/jvm/functions/Function1;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/text/LegacyTextFieldState;",
            "Landroid/view/inputmethod/InsertGesture;",
            "Landroidx/compose/ui/platform/ViewConfiguration;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/text/input/EditCommand;",
            "Lkotlin/Unit;",
            ">;)I"
        }
    .end annotation

    if-nez p3, :cond_0

    .line 636
    check-cast p2, Landroid/view/inputmethod/HandwritingGesture;

    invoke-direct {p0, p2, p4}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->fallbackOnLegacyTextField(Landroid/view/inputmethod/HandwritingGesture;Lkotlin/jvm/functions/Function1;)I

    move-result p1

    return p1

    .line 640
    :cond_0
    invoke-virtual {p2}, Landroid/view/inputmethod/InsertGesture;->getInsertionPoint()Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->access$toOffset(Landroid/graphics/PointF;)J

    move-result-wide v0

    .line 639
    invoke-static {p1, v0, v1, p3}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->access$getOffsetForHandwritingGesture-d-4ec7I(Landroidx/compose/foundation/text/LegacyTextFieldState;JLandroidx/compose/ui/platform/ViewConfiguration;)I

    move-result p3

    const/4 v0, -0x1

    if-eq p3, v0, :cond_2

    .line 644
    invoke-virtual {p1}, Landroidx/compose/foundation/text/LegacyTextFieldState;->getLayoutResult()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/compose/foundation/text/TextLayoutResultProxy;->getValue()Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1, p3}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->access$isBiDiBoundary(Landroidx/compose/ui/text/TextLayoutResult;I)Z

    move-result p1

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 648
    :cond_1
    invoke-virtual {p2}, Landroid/view/inputmethod/InsertGesture;->getTextToInsert()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p3, p1, p4}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->performInsertionOnLegacyTextField(ILjava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return v0

    .line 645
    :cond_2
    :goto_0
    check-cast p2, Landroid/view/inputmethod/HandwritingGesture;

    invoke-direct {p0, p2, p4}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->fallbackOnLegacyTextField(Landroid/view/inputmethod/HandwritingGesture;Lkotlin/jvm/functions/Function1;)I

    move-result p1

    return p1
.end method

.method private final performInsertGesture(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Landroid/view/inputmethod/InsertGesture;Landroidx/compose/foundation/text/input/internal/TextLayoutState;Landroidx/compose/ui/platform/ViewConfiguration;)I
    .locals 8

    .line 291
    invoke-virtual {p2}, Landroid/view/inputmethod/InsertGesture;->getInsertionPoint()Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->access$toOffset(Landroid/graphics/PointF;)J

    move-result-wide v0

    .line 290
    invoke-static {p3, v0, v1, p4}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->access$getOffsetForHandwritingGesture-d-4ec7I(Landroidx/compose/foundation/text/input/internal/TextLayoutState;JLandroidx/compose/ui/platform/ViewConfiguration;)I

    move-result p3

    const/4 p4, -0x1

    if-ne p3, p4, :cond_0

    .line 297
    check-cast p2, Landroid/view/inputmethod/HandwritingGesture;

    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->fallback(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Landroid/view/inputmethod/HandwritingGesture;)I

    move-result p1

    return p1

    .line 300
    :cond_0
    invoke-virtual {p2}, Landroid/view/inputmethod/InsertGesture;->getTextToInsert()Ljava/lang/String;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {p3}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(I)J

    move-result-wide v2

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v7}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->replaceText-M8tDOmk$default(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Ljava/lang/CharSequence;JLandroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;ZILjava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method private final performInsertionOnLegacyTextField(ILjava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/text/input/EditCommand;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 712
    new-array v0, v0, [Landroidx/compose/ui/text/input/EditCommand;

    new-instance v1, Landroidx/compose/ui/text/input/SetSelectionCommand;

    invoke-direct {v1, p1, p1}, Landroidx/compose/ui/text/input/SetSelectionCommand;-><init>(II)V

    const/4 p1, 0x0

    aput-object v1, v0, p1

    .line 713
    new-instance p1, Landroidx/compose/ui/text/input/CommitTextCommand;

    const/4 v1, 0x1

    invoke-direct {p1, p2, v1}, Landroidx/compose/ui/text/input/CommitTextCommand;-><init>(Ljava/lang/String;I)V

    aput-object p1, v0, v1

    .line 711
    invoke-static {v0}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->access$compoundEditCommand([Landroidx/compose/ui/text/input/EditCommand;)Landroidx/compose/ui/text/input/EditCommand;

    move-result-object p1

    .line 710
    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final performJoinOrSplitGesture(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroid/view/inputmethod/JoinOrSplitGesture;Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/platform/ViewConfiguration;Lkotlin/jvm/functions/Function1;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/text/LegacyTextFieldState;",
            "Landroid/view/inputmethod/JoinOrSplitGesture;",
            "Landroidx/compose/ui/text/AnnotatedString;",
            "Landroidx/compose/ui/platform/ViewConfiguration;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/text/input/EditCommand;",
            "Lkotlin/Unit;",
            ">;)I"
        }
    .end annotation

    if-nez p4, :cond_0

    .line 602
    check-cast p2, Landroid/view/inputmethod/HandwritingGesture;

    invoke-direct {p0, p2, p5}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->fallbackOnLegacyTextField(Landroid/view/inputmethod/HandwritingGesture;Lkotlin/jvm/functions/Function1;)I

    move-result p1

    return p1

    .line 606
    :cond_0
    invoke-virtual {p2}, Landroid/view/inputmethod/JoinOrSplitGesture;->getJoinOrSplitPoint()Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->access$toOffset(Landroid/graphics/PointF;)J

    move-result-wide v0

    .line 605
    invoke-static {p1, v0, v1, p4}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->access$getOffsetForHandwritingGesture-d-4ec7I(Landroidx/compose/foundation/text/LegacyTextFieldState;JLandroidx/compose/ui/platform/ViewConfiguration;)I

    move-result p4

    const/4 v0, -0x1

    if-eq p4, v0, :cond_3

    .line 610
    invoke-virtual {p1}, Landroidx/compose/foundation/text/LegacyTextFieldState;->getLayoutResult()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/compose/foundation/text/TextLayoutResultProxy;->getValue()Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1, p4}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->access$isBiDiBoundary(Landroidx/compose/ui/text/TextLayoutResult;I)Z

    move-result p1

    if-ne p1, v0, :cond_1

    goto :goto_1

    .line 614
    :cond_1
    move-object p1, p3

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1, p4}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->access$rangeOfWhitespaces(Ljava/lang/CharSequence;I)J

    move-result-wide v2

    .line 615
    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 616
    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result p1

    const-string p2, " "

    invoke-direct {p0, p1, p2, p5}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->performInsertionOnLegacyTextField(ILjava/lang/String;Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    move-object v1, p0

    move-object v4, p3

    move-object v6, p5

    .line 618
    invoke-direct/range {v1 .. v6}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->performDeletionOnLegacyTextField-vJH6DeI(JLandroidx/compose/ui/text/AnnotatedString;ZLkotlin/jvm/functions/Function1;)V

    :goto_0
    return v0

    .line 611
    :cond_3
    :goto_1
    check-cast p2, Landroid/view/inputmethod/HandwritingGesture;

    invoke-direct {p0, p2, p5}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->fallbackOnLegacyTextField(Landroid/view/inputmethod/HandwritingGesture;Lkotlin/jvm/functions/Function1;)I

    move-result p1

    return p1
.end method

.method private final performJoinOrSplitGesture(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Landroid/view/inputmethod/JoinOrSplitGesture;Landroidx/compose/foundation/text/input/internal/TextLayoutState;Landroidx/compose/ui/platform/ViewConfiguration;)I
    .locals 9

    .line 257
    invoke-virtual {p1}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->getOutputText()Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->getUntransformedText()Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 p1, 0x3

    return p1

    .line 262
    :cond_0
    invoke-virtual {p2}, Landroid/view/inputmethod/JoinOrSplitGesture;->getJoinOrSplitPoint()Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->access$toOffset(Landroid/graphics/PointF;)J

    move-result-wide v0

    .line 261
    invoke-static {p3, v0, v1, p4}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->access$getOffsetForHandwritingGesture-d-4ec7I(Landroidx/compose/foundation/text/input/internal/TextLayoutState;JLandroidx/compose/ui/platform/ViewConfiguration;)I

    move-result p4

    const/4 v0, -0x1

    if-eq p4, v0, :cond_3

    .line 267
    invoke-virtual {p3}, Landroidx/compose/foundation/text/input/internal/TextLayoutState;->getLayoutResult()Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object p3

    const/4 v0, 0x1

    if-eqz p3, :cond_1

    invoke-static {p3, p4}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->access$isBiDiBoundary(Landroidx/compose/ui/text/TextLayoutResult;I)Z

    move-result p3

    if-ne p3, v0, :cond_1

    goto :goto_1

    .line 271
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->getVisualText()Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p2, p4}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->access$rangeOfWhitespaces(Ljava/lang/CharSequence;I)J

    move-result-wide v3

    .line 273
    invoke-static {v3, v4}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 274
    const-string p2, " "

    move-object v2, p2

    check-cast v2, Ljava/lang/CharSequence;

    const/16 v7, 0xc

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->replaceText-M8tDOmk$default(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Ljava/lang/CharSequence;JLandroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;ZILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 276
    invoke-direct {p0, p1, v3, v4, p2}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->performDeletion-Sb-Bc2M(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;JZ)V

    :goto_0
    return v0

    .line 268
    :cond_3
    :goto_1
    check-cast p2, Landroid/view/inputmethod/HandwritingGesture;

    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->fallback(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Landroid/view/inputmethod/HandwritingGesture;)I

    move-result p1

    return p1
.end method

.method private final performRemoveSpaceGesture(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroid/view/inputmethod/RemoveSpaceGesture;Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/platform/ViewConfiguration;Lkotlin/jvm/functions/Function1;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/text/LegacyTextFieldState;",
            "Landroid/view/inputmethod/RemoveSpaceGesture;",
            "Landroidx/compose/ui/text/AnnotatedString;",
            "Landroidx/compose/ui/platform/ViewConfiguration;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/text/input/EditCommand;",
            "Lkotlin/Unit;",
            ">;)I"
        }
    .end annotation

    .line 659
    invoke-virtual {p1}, Landroidx/compose/foundation/text/LegacyTextFieldState;->getLayoutResult()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextLayoutResultProxy;->getValue()Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v1, v0

    .line 660
    invoke-virtual {p2}, Landroid/view/inputmethod/RemoveSpaceGesture;->getStartPoint()Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->access$toOffset(Landroid/graphics/PointF;)J

    move-result-wide v2

    .line 661
    invoke-virtual {p2}, Landroid/view/inputmethod/RemoveSpaceGesture;->getEndPoint()Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->access$toOffset(Landroid/graphics/PointF;)J

    move-result-wide v4

    .line 662
    invoke-virtual {p1}, Landroidx/compose/foundation/text/LegacyTextFieldState;->getLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v6

    move-object v7, p4

    .line 659
    invoke-static/range {v1 .. v7}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->access$getRangeForRemoveSpaceGesture-5iVPX68(Landroidx/compose/ui/text/TextLayoutResult;JJLandroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/platform/ViewConfiguration;)J

    move-result-wide v0

    .line 665
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->INSTANCE:Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;

    check-cast p2, Landroid/view/inputmethod/HandwritingGesture;

    invoke-direct {p1, p2, p5}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->fallbackOnLegacyTextField(Landroid/view/inputmethod/HandwritingGesture;Lkotlin/jvm/functions/Function1;)I

    move-result p1

    return p1

    .line 668
    :cond_1
    new-instance p1, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 p4, -0x1

    iput p4, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 669
    new-instance v2, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iput p4, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 670
    check-cast p3, Ljava/lang/CharSequence;

    invoke-static {p3, v0, v1}, Landroidx/compose/ui/text/TextRangeKt;->substring-FDrldGo(Ljava/lang/CharSequence;J)Ljava/lang/String;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    new-instance v3, Lkotlin/text/Regex;

    const-string/jumbo v4, "\\s+"

    invoke-direct {v3, v4}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    new-instance v4, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34$performRemoveSpaceGesture$newText$2;

    invoke-direct {v4, p1, v2}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34$performRemoveSpaceGesture$newText$2;-><init>(Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v3, p3, v4}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object p3

    .line 679
    iget v3, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-eq v3, p4, :cond_3

    iget v3, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-ne v3, p4, :cond_2

    goto :goto_1

    .line 686
    :cond_2
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result p2

    iget p4, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr p2, p4

    .line 687
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result p4

    iget v3, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr p4, v3

    .line 691
    iget p1, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 692
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getLength-impl(J)I

    move-result v0

    iget v1, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    sub-int/2addr v0, v1

    sub-int/2addr v3, v0

    invoke-virtual {p3, p1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p3, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x2

    .line 697
    new-array p3, p3, [Landroidx/compose/ui/text/input/EditCommand;

    new-instance v0, Landroidx/compose/ui/text/input/SetSelectionCommand;

    invoke-direct {v0, p2, p4}, Landroidx/compose/ui/text/input/SetSelectionCommand;-><init>(II)V

    const/4 p2, 0x0

    aput-object v0, p3, p2

    .line 698
    new-instance p2, Landroidx/compose/ui/text/input/CommitTextCommand;

    const/4 p4, 0x1

    invoke-direct {p2, p1, p4}, Landroidx/compose/ui/text/input/CommitTextCommand;-><init>(Ljava/lang/String;I)V

    aput-object p2, p3, p4

    .line 696
    invoke-static {p3}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->access$compoundEditCommand([Landroidx/compose/ui/text/input/EditCommand;)Landroidx/compose/ui/text/input/EditCommand;

    move-result-object p1

    .line 695
    invoke-interface {p5, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return p4

    .line 680
    :cond_3
    :goto_1
    check-cast p2, Landroid/view/inputmethod/HandwritingGesture;

    invoke-direct {p0, p2, p5}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->fallbackOnLegacyTextField(Landroid/view/inputmethod/HandwritingGesture;Lkotlin/jvm/functions/Function1;)I

    move-result p1

    return p1
.end method

.method private final performRemoveSpaceGesture(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Landroid/view/inputmethod/RemoveSpaceGesture;Landroidx/compose/foundation/text/input/internal/TextLayoutState;Landroidx/compose/ui/platform/ViewConfiguration;)I
    .locals 10

    .line 310
    invoke-virtual {p3}, Landroidx/compose/foundation/text/input/internal/TextLayoutState;->getLayoutResult()Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object v1

    .line 311
    invoke-virtual {p2}, Landroid/view/inputmethod/RemoveSpaceGesture;->getStartPoint()Landroid/graphics/PointF;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->access$toOffset(Landroid/graphics/PointF;)J

    move-result-wide v2

    .line 312
    invoke-virtual {p2}, Landroid/view/inputmethod/RemoveSpaceGesture;->getEndPoint()Landroid/graphics/PointF;

    move-result-object v4

    invoke-static {v4}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->access$toOffset(Landroid/graphics/PointF;)J

    move-result-wide v4

    .line 313
    invoke-virtual {p3}, Landroidx/compose/foundation/text/input/internal/TextLayoutState;->getTextLayoutNodeCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v6

    move-object v7, p4

    .line 310
    invoke-static/range {v1 .. v7}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->access$getRangeForRemoveSpaceGesture-5iVPX68(Landroidx/compose/ui/text/TextLayoutResult;JJLandroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/platform/ViewConfiguration;)J

    move-result-wide v1

    .line 316
    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v1, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->INSTANCE:Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;

    move-object v2, p2

    check-cast v2, Landroid/view/inputmethod/HandwritingGesture;

    invoke-direct {v1, p1, v2}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->fallback(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Landroid/view/inputmethod/HandwritingGesture;)I

    move-result v0

    return v0

    .line 319
    :cond_0
    new-instance v3, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v4, -0x1

    iput v4, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 320
    new-instance v5, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iput v4, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 321
    invoke-virtual {p1}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->getVisualText()Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6, v1, v2}, Landroidx/compose/ui/text/TextRangeKt;->substring-FDrldGo(Ljava/lang/CharSequence;J)Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    new-instance v7, Lkotlin/text/Regex;

    const-string/jumbo v8, "\\s+"

    invoke-direct {v7, v8}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    new-instance v8, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34$performRemoveSpaceGesture$newText$1;

    invoke-direct {v8, v3, v5}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34$performRemoveSpaceGesture$newText$1;-><init>(Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;)V

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v7, v6, v8}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object v6

    .line 330
    iget v7, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-eq v7, v4, :cond_2

    iget v7, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-ne v7, v4, :cond_1

    goto :goto_0

    .line 339
    :cond_1
    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v4

    iget v7, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr v4, v7

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v7

    iget v8, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr v7, v8

    invoke-static {v4, v7}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide v7

    .line 343
    iget v3, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 344
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getLength-impl(J)I

    move-result v1

    iget v2, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    sub-int/2addr v1, v2

    sub-int/2addr v4, v1

    invoke-virtual {v6, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 347
    check-cast v1, Ljava/lang/CharSequence;

    const/16 v6, 0xc

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-wide v2, v7

    move-object v7, v9

    invoke-static/range {v0 .. v7}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->replaceText-M8tDOmk$default(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Ljava/lang/CharSequence;JLandroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;ZILjava/lang/Object;)V

    const/4 v0, 0x1

    return v0

    .line 331
    :cond_2
    :goto_0
    move-object v1, p2

    check-cast v1, Landroid/view/inputmethod/HandwritingGesture;

    invoke-direct {p0, p1, v1}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->fallback(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Landroid/view/inputmethod/HandwritingGesture;)I

    move-result v0

    return v0
.end method

.method private final performSelectGesture(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroid/view/inputmethod/SelectGesture;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Lkotlin/jvm/functions/Function1;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/text/LegacyTextFieldState;",
            "Landroid/view/inputmethod/SelectGesture;",
            "Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/text/input/EditCommand;",
            "Lkotlin/Unit;",
            ">;)I"
        }
    .end annotation

    .line 454
    invoke-virtual {p2}, Landroid/view/inputmethod/SelectGesture;->getSelectionArea()Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->toComposeRect(Landroid/graphics/RectF;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    .line 455
    invoke-virtual {p2}, Landroid/view/inputmethod/SelectGesture;->getGranularity()I

    move-result v1

    invoke-direct {p0, v1}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->toTextGranularity-NUwxegE(I)I

    move-result v1

    .line 456
    sget-object v2, Landroidx/compose/ui/text/TextInclusionStrategy;->Companion:Landroidx/compose/ui/text/TextInclusionStrategy$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/text/TextInclusionStrategy$Companion;->getContainsCenter()Landroidx/compose/ui/text/TextInclusionStrategy;

    move-result-object v2

    .line 453
    invoke-static {p1, v0, v1, v2}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->access$getRangeForScreenRect-OH9lIzo(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/geometry/Rect;ILandroidx/compose/ui/text/TextInclusionStrategy;)J

    move-result-wide v0

    .line 458
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->INSTANCE:Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;

    check-cast p2, Landroid/view/inputmethod/HandwritingGesture;

    invoke-direct {p1, p2, p4}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->fallbackOnLegacyTextField(Landroid/view/inputmethod/HandwritingGesture;Lkotlin/jvm/functions/Function1;)I

    move-result p1

    return p1

    .line 461
    :cond_0
    invoke-direct {p0, v0, v1, p3, p4}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->performSelectionOnLegacyTextField-8ffj60Q(JLandroidx/compose/foundation/text/selection/TextFieldSelectionManager;Lkotlin/jvm/functions/Function1;)V

    const/4 p1, 0x1

    return p1
.end method

.method private final performSelectGesture(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Landroid/view/inputmethod/SelectGesture;Landroidx/compose/foundation/text/input/internal/TextLayoutState;)I
    .locals 3

    .line 111
    invoke-virtual {p2}, Landroid/view/inputmethod/SelectGesture;->getSelectionArea()Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->toComposeRect(Landroid/graphics/RectF;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    .line 112
    invoke-virtual {p2}, Landroid/view/inputmethod/SelectGesture;->getGranularity()I

    move-result v1

    invoke-direct {p0, v1}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->toTextGranularity-NUwxegE(I)I

    move-result v1

    .line 113
    sget-object v2, Landroidx/compose/ui/text/TextInclusionStrategy;->Companion:Landroidx/compose/ui/text/TextInclusionStrategy$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/text/TextInclusionStrategy$Companion;->getContainsCenter()Landroidx/compose/ui/text/TextInclusionStrategy;

    move-result-object v2

    .line 110
    invoke-static {p3, v0, v1, v2}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->access$getRangeForScreenRect-OH9lIzo(Landroidx/compose/foundation/text/input/internal/TextLayoutState;Landroidx/compose/ui/geometry/Rect;ILandroidx/compose/ui/text/TextInclusionStrategy;)J

    move-result-wide v0

    .line 115
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result p3

    if-eqz p3, :cond_0

    sget-object p3, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->INSTANCE:Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;

    check-cast p2, Landroid/view/inputmethod/HandwritingGesture;

    invoke-direct {p3, p1, p2}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->fallback(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Landroid/view/inputmethod/HandwritingGesture;)I

    move-result p1

    return p1

    .line 119
    :cond_0
    invoke-virtual {p1, v0, v1}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->selectCharsIn-5zc-tL8(J)V

    const/4 p1, 0x1

    return p1
.end method

.method private final performSelectRangeGesture(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroid/view/inputmethod/SelectRangeGesture;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Lkotlin/jvm/functions/Function1;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/text/LegacyTextFieldState;",
            "Landroid/view/inputmethod/SelectRangeGesture;",
            "Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/text/input/EditCommand;",
            "Lkotlin/Unit;",
            ">;)I"
        }
    .end annotation

    .line 524
    invoke-virtual {p2}, Landroid/view/inputmethod/SelectRangeGesture;->getSelectionStartArea()Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->toComposeRect(Landroid/graphics/RectF;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    .line 525
    invoke-virtual {p2}, Landroid/view/inputmethod/SelectRangeGesture;->getSelectionEndArea()Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->toComposeRect(Landroid/graphics/RectF;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v1

    .line 526
    invoke-virtual {p2}, Landroid/view/inputmethod/SelectRangeGesture;->getGranularity()I

    move-result v2

    invoke-direct {p0, v2}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->toTextGranularity-NUwxegE(I)I

    move-result v2

    .line 527
    sget-object v3, Landroidx/compose/ui/text/TextInclusionStrategy;->Companion:Landroidx/compose/ui/text/TextInclusionStrategy$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/text/TextInclusionStrategy$Companion;->getContainsCenter()Landroidx/compose/ui/text/TextInclusionStrategy;

    move-result-object v3

    .line 523
    invoke-static {p1, v0, v1, v2, v3}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->access$getRangeForScreenRects-O048IG0(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;ILandroidx/compose/ui/text/TextInclusionStrategy;)J

    move-result-wide v0

    .line 529
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->INSTANCE:Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;

    check-cast p2, Landroid/view/inputmethod/HandwritingGesture;

    invoke-direct {p1, p2, p4}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->fallbackOnLegacyTextField(Landroid/view/inputmethod/HandwritingGesture;Lkotlin/jvm/functions/Function1;)I

    move-result p1

    return p1

    .line 532
    :cond_0
    invoke-direct {p0, v0, v1, p3, p4}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->performSelectionOnLegacyTextField-8ffj60Q(JLandroidx/compose/foundation/text/selection/TextFieldSelectionManager;Lkotlin/jvm/functions/Function1;)V

    const/4 p1, 0x1

    return p1
.end method

.method private final performSelectRangeGesture(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Landroid/view/inputmethod/SelectRangeGesture;Landroidx/compose/foundation/text/input/internal/TextLayoutState;)I
    .locals 4

    .line 180
    invoke-virtual {p2}, Landroid/view/inputmethod/SelectRangeGesture;->getSelectionStartArea()Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->toComposeRect(Landroid/graphics/RectF;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    .line 181
    invoke-virtual {p2}, Landroid/view/inputmethod/SelectRangeGesture;->getSelectionEndArea()Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->toComposeRect(Landroid/graphics/RectF;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v1

    .line 182
    invoke-virtual {p2}, Landroid/view/inputmethod/SelectRangeGesture;->getGranularity()I

    move-result v2

    invoke-direct {p0, v2}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->toTextGranularity-NUwxegE(I)I

    move-result v2

    .line 183
    sget-object v3, Landroidx/compose/ui/text/TextInclusionStrategy;->Companion:Landroidx/compose/ui/text/TextInclusionStrategy$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/text/TextInclusionStrategy$Companion;->getContainsCenter()Landroidx/compose/ui/text/TextInclusionStrategy;

    move-result-object v3

    .line 179
    invoke-static {p3, v0, v1, v2, v3}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->access$getRangeForScreenRects-O048IG0(Landroidx/compose/foundation/text/input/internal/TextLayoutState;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;ILandroidx/compose/ui/text/TextInclusionStrategy;)J

    move-result-wide v0

    .line 185
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result p3

    if-eqz p3, :cond_0

    sget-object p3, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->INSTANCE:Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;

    check-cast p2, Landroid/view/inputmethod/HandwritingGesture;

    invoke-direct {p3, p1, p2}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->fallback(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Landroid/view/inputmethod/HandwritingGesture;)I

    move-result p1

    return p1

    .line 189
    :cond_0
    invoke-virtual {p1, v0, v1}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->selectCharsIn-5zc-tL8(J)V

    const/4 p1, 0x1

    return p1
.end method

.method private final performSelectionOnLegacyTextField-8ffj60Q(JLandroidx/compose/foundation/text/selection/TextFieldSelectionManager;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/text/input/EditCommand;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 724
    new-instance v0, Landroidx/compose/ui/text/input/SetSelectionCommand;

    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v1

    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroidx/compose/ui/text/input/SetSelectionCommand;-><init>(II)V

    invoke-interface {p4, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    .line 725
    invoke-virtual {p3, p1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->enterSelectionMode$foundation_release(Z)V

    :cond_0
    return-void
.end method

.method private final previewDeleteGesture(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroid/view/inputmethod/DeleteGesture;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)V
    .locals 2

    if-eqz p3, :cond_0

    .line 510
    invoke-virtual {p2}, Landroid/view/inputmethod/DeleteGesture;->getDeletionArea()Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->toComposeRect(Landroid/graphics/RectF;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    .line 511
    invoke-virtual {p2}, Landroid/view/inputmethod/DeleteGesture;->getGranularity()I

    move-result p2

    invoke-direct {p0, p2}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->toTextGranularity-NUwxegE(I)I

    move-result p2

    .line 512
    sget-object v1, Landroidx/compose/ui/text/TextInclusionStrategy;->Companion:Landroidx/compose/ui/text/TextInclusionStrategy$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/text/TextInclusionStrategy$Companion;->getContainsCenter()Landroidx/compose/ui/text/TextInclusionStrategy;

    move-result-object v1

    .line 509
    invoke-static {p1, v0, p2, v1}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->access$getRangeForScreenRect-OH9lIzo(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/geometry/Rect;ILandroidx/compose/ui/text/TextInclusionStrategy;)J

    move-result-wide p1

    .line 508
    invoke-virtual {p3, p1, p2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->setDeletionPreviewHighlight-5zc-tL8$foundation_release(J)V

    :cond_0
    return-void
.end method

.method private final previewDeleteGesture(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Landroid/view/inputmethod/DeleteGesture;Landroidx/compose/foundation/text/input/internal/TextLayoutState;)V
    .locals 2

    .line 166
    invoke-virtual {p2}, Landroid/view/inputmethod/DeleteGesture;->getDeletionArea()Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->toComposeRect(Landroid/graphics/RectF;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    .line 167
    invoke-virtual {p2}, Landroid/view/inputmethod/DeleteGesture;->getGranularity()I

    move-result p2

    invoke-direct {p0, p2}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->toTextGranularity-NUwxegE(I)I

    move-result p2

    .line 168
    sget-object v1, Landroidx/compose/ui/text/TextInclusionStrategy;->Companion:Landroidx/compose/ui/text/TextInclusionStrategy$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/text/TextInclusionStrategy$Companion;->getContainsCenter()Landroidx/compose/ui/text/TextInclusionStrategy;

    move-result-object v1

    .line 165
    invoke-static {p3, v0, p2, v1}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->access$getRangeForScreenRect-OH9lIzo(Landroidx/compose/foundation/text/input/internal/TextLayoutState;Landroidx/compose/ui/geometry/Rect;ILandroidx/compose/ui/text/TextInclusionStrategy;)J

    move-result-wide p2

    .line 170
    sget-object v0, Landroidx/compose/foundation/text/input/TextHighlightType;->Companion:Landroidx/compose/foundation/text/input/TextHighlightType$Companion;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/TextHighlightType$Companion;->getHandwritingDeletePreview-s-xJuwY()I

    move-result v0

    .line 164
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->highlightRange-XJREzCE(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;JI)V

    return-void
.end method

.method private final previewDeleteRangeGesture(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroid/view/inputmethod/DeleteRangeGesture;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)V
    .locals 3

    if-eqz p3, :cond_0

    .line 586
    invoke-virtual {p2}, Landroid/view/inputmethod/DeleteRangeGesture;->getDeletionStartArea()Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->toComposeRect(Landroid/graphics/RectF;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    .line 587
    invoke-virtual {p2}, Landroid/view/inputmethod/DeleteRangeGesture;->getDeletionEndArea()Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->toComposeRect(Landroid/graphics/RectF;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v1

    .line 588
    invoke-virtual {p2}, Landroid/view/inputmethod/DeleteRangeGesture;->getGranularity()I

    move-result p2

    invoke-direct {p0, p2}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->toTextGranularity-NUwxegE(I)I

    move-result p2

    .line 589
    sget-object v2, Landroidx/compose/ui/text/TextInclusionStrategy;->Companion:Landroidx/compose/ui/text/TextInclusionStrategy$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/text/TextInclusionStrategy$Companion;->getContainsCenter()Landroidx/compose/ui/text/TextInclusionStrategy;

    move-result-object v2

    .line 585
    invoke-static {p1, v0, v1, p2, v2}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->access$getRangeForScreenRects-O048IG0(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;ILandroidx/compose/ui/text/TextInclusionStrategy;)J

    move-result-wide p1

    .line 584
    invoke-virtual {p3, p1, p2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->setDeletionPreviewHighlight-5zc-tL8$foundation_release(J)V

    :cond_0
    return-void
.end method

.method private final previewDeleteRangeGesture(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Landroid/view/inputmethod/DeleteRangeGesture;Landroidx/compose/foundation/text/input/internal/TextLayoutState;)V
    .locals 3

    .line 238
    invoke-virtual {p2}, Landroid/view/inputmethod/DeleteRangeGesture;->getDeletionStartArea()Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->toComposeRect(Landroid/graphics/RectF;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    .line 239
    invoke-virtual {p2}, Landroid/view/inputmethod/DeleteRangeGesture;->getDeletionEndArea()Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->toComposeRect(Landroid/graphics/RectF;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v1

    .line 240
    invoke-virtual {p2}, Landroid/view/inputmethod/DeleteRangeGesture;->getGranularity()I

    move-result p2

    invoke-direct {p0, p2}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->toTextGranularity-NUwxegE(I)I

    move-result p2

    .line 241
    sget-object v2, Landroidx/compose/ui/text/TextInclusionStrategy;->Companion:Landroidx/compose/ui/text/TextInclusionStrategy$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/text/TextInclusionStrategy$Companion;->getContainsCenter()Landroidx/compose/ui/text/TextInclusionStrategy;

    move-result-object v2

    .line 237
    invoke-static {p3, v0, v1, p2, v2}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->access$getRangeForScreenRects-O048IG0(Landroidx/compose/foundation/text/input/internal/TextLayoutState;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;ILandroidx/compose/ui/text/TextInclusionStrategy;)J

    move-result-wide p2

    .line 243
    sget-object v0, Landroidx/compose/foundation/text/input/TextHighlightType;->Companion:Landroidx/compose/foundation/text/input/TextHighlightType$Companion;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/TextHighlightType$Companion;->getHandwritingDeletePreview-s-xJuwY()I

    move-result v0

    .line 236
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->highlightRange-XJREzCE(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;JI)V

    return-void
.end method

.method private static final previewHandwritingGesture$lambda$1(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;)V
    .locals 3

    .line 1182
    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->access$getTextFieldState$p(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;)Landroidx/compose/foundation/text/input/TextFieldState;

    move-result-object v0

    .line 1183
    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->access$getInputTransformation$p(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;)Landroidx/compose/foundation/text/input/InputTransformation;

    move-result-object p0

    .line 1187
    sget-object v1, Landroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;->MergeIfPossible:Landroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;

    .line 1190
    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text/input/internal/EditingBuffer;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/foundation/text/input/internal/EditingBuffer;->getChangeTracker()Landroidx/compose/foundation/text/input/internal/ChangeTracker;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/foundation/text/input/internal/ChangeTracker;->clearChanges()V

    .line 1191
    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text/input/internal/EditingBuffer;

    move-result-object v2

    .line 99
    invoke-virtual {v2}, Landroidx/compose/foundation/text/input/internal/EditingBuffer;->clearHighlight()V

    const/4 v2, 0x1

    .line 1193
    invoke-static {v0, p0, v2, v1}, Landroidx/compose/foundation/text/input/TextFieldState;->access$commitEditAsUser(Landroidx/compose/foundation/text/input/TextFieldState;Landroidx/compose/foundation/text/input/InputTransformation;ZLandroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;)V

    return-void
.end method

.method private static final previewHandwritingGesture$lambda$9(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 442
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->clearPreviewHighlight$foundation_release()V

    :cond_0
    return-void
.end method

.method private final previewSelectGesture(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroid/view/inputmethod/SelectGesture;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)V
    .locals 2

    if-eqz p3, :cond_0

    .line 472
    invoke-virtual {p2}, Landroid/view/inputmethod/SelectGesture;->getSelectionArea()Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->toComposeRect(Landroid/graphics/RectF;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    .line 473
    invoke-virtual {p2}, Landroid/view/inputmethod/SelectGesture;->getGranularity()I

    move-result p2

    invoke-direct {p0, p2}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->toTextGranularity-NUwxegE(I)I

    move-result p2

    .line 474
    sget-object v1, Landroidx/compose/ui/text/TextInclusionStrategy;->Companion:Landroidx/compose/ui/text/TextInclusionStrategy$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/text/TextInclusionStrategy$Companion;->getContainsCenter()Landroidx/compose/ui/text/TextInclusionStrategy;

    move-result-object v1

    .line 471
    invoke-static {p1, v0, p2, v1}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->access$getRangeForScreenRect-OH9lIzo(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/geometry/Rect;ILandroidx/compose/ui/text/TextInclusionStrategy;)J

    move-result-wide p1

    .line 470
    invoke-virtual {p3, p1, p2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->setSelectionPreviewHighlight-5zc-tL8$foundation_release(J)V

    :cond_0
    return-void
.end method

.method private final previewSelectGesture(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Landroid/view/inputmethod/SelectGesture;Landroidx/compose/foundation/text/input/internal/TextLayoutState;)V
    .locals 2

    .line 130
    invoke-virtual {p2}, Landroid/view/inputmethod/SelectGesture;->getSelectionArea()Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->toComposeRect(Landroid/graphics/RectF;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    .line 131
    invoke-virtual {p2}, Landroid/view/inputmethod/SelectGesture;->getGranularity()I

    move-result p2

    invoke-direct {p0, p2}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->toTextGranularity-NUwxegE(I)I

    move-result p2

    .line 132
    sget-object v1, Landroidx/compose/ui/text/TextInclusionStrategy;->Companion:Landroidx/compose/ui/text/TextInclusionStrategy$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/text/TextInclusionStrategy$Companion;->getContainsCenter()Landroidx/compose/ui/text/TextInclusionStrategy;

    move-result-object v1

    .line 129
    invoke-static {p3, v0, p2, v1}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->access$getRangeForScreenRect-OH9lIzo(Landroidx/compose/foundation/text/input/internal/TextLayoutState;Landroidx/compose/ui/geometry/Rect;ILandroidx/compose/ui/text/TextInclusionStrategy;)J

    move-result-wide p2

    .line 134
    sget-object v0, Landroidx/compose/foundation/text/input/TextHighlightType;->Companion:Landroidx/compose/foundation/text/input/TextHighlightType$Companion;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/TextHighlightType$Companion;->getHandwritingSelectPreview-s-xJuwY()I

    move-result v0

    .line 128
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->highlightRange-XJREzCE(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;JI)V

    return-void
.end method

.method private final previewSelectRangeGesture(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroid/view/inputmethod/SelectRangeGesture;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)V
    .locals 3

    if-eqz p3, :cond_0

    .line 547
    invoke-virtual {p2}, Landroid/view/inputmethod/SelectRangeGesture;->getSelectionStartArea()Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->toComposeRect(Landroid/graphics/RectF;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    .line 548
    invoke-virtual {p2}, Landroid/view/inputmethod/SelectRangeGesture;->getSelectionEndArea()Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->toComposeRect(Landroid/graphics/RectF;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v1

    .line 549
    invoke-virtual {p2}, Landroid/view/inputmethod/SelectRangeGesture;->getGranularity()I

    move-result p2

    invoke-direct {p0, p2}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->toTextGranularity-NUwxegE(I)I

    move-result p2

    .line 550
    sget-object v2, Landroidx/compose/ui/text/TextInclusionStrategy;->Companion:Landroidx/compose/ui/text/TextInclusionStrategy$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/text/TextInclusionStrategy$Companion;->getContainsCenter()Landroidx/compose/ui/text/TextInclusionStrategy;

    move-result-object v2

    .line 546
    invoke-static {p1, v0, v1, p2, v2}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->access$getRangeForScreenRects-O048IG0(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;ILandroidx/compose/ui/text/TextInclusionStrategy;)J

    move-result-wide p1

    .line 545
    invoke-virtual {p3, p1, p2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->setSelectionPreviewHighlight-5zc-tL8$foundation_release(J)V

    :cond_0
    return-void
.end method

.method private final previewSelectRangeGesture(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Landroid/view/inputmethod/SelectRangeGesture;Landroidx/compose/foundation/text/input/internal/TextLayoutState;)V
    .locals 3

    .line 200
    invoke-virtual {p2}, Landroid/view/inputmethod/SelectRangeGesture;->getSelectionStartArea()Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->toComposeRect(Landroid/graphics/RectF;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    .line 201
    invoke-virtual {p2}, Landroid/view/inputmethod/SelectRangeGesture;->getSelectionEndArea()Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->toComposeRect(Landroid/graphics/RectF;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v1

    .line 202
    invoke-virtual {p2}, Landroid/view/inputmethod/SelectRangeGesture;->getGranularity()I

    move-result p2

    invoke-direct {p0, p2}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->toTextGranularity-NUwxegE(I)I

    move-result p2

    .line 203
    sget-object v2, Landroidx/compose/ui/text/TextInclusionStrategy;->Companion:Landroidx/compose/ui/text/TextInclusionStrategy$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/text/TextInclusionStrategy$Companion;->getContainsCenter()Landroidx/compose/ui/text/TextInclusionStrategy;

    move-result-object v2

    .line 199
    invoke-static {p3, v0, v1, p2, v2}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->access$getRangeForScreenRects-O048IG0(Landroidx/compose/foundation/text/input/internal/TextLayoutState;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;ILandroidx/compose/ui/text/TextInclusionStrategy;)J

    move-result-wide p2

    .line 205
    sget-object v0, Landroidx/compose/foundation/text/input/TextHighlightType;->Companion:Landroidx/compose/foundation/text/input/TextHighlightType$Companion;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/TextHighlightType$Companion;->getHandwritingSelectPreview-s-xJuwY()I

    move-result v0

    .line 198
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->highlightRange-XJREzCE(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;JI)V

    return-void
.end method

.method private final toTextGranularity-NUwxegE(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 771
    sget-object p1, Landroidx/compose/ui/text/TextGranularity;->Companion:Landroidx/compose/ui/text/TextGranularity$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/text/TextGranularity$Companion;->getCharacter-DRrd7Zo()I

    move-result p1

    goto :goto_0

    .line 769
    :cond_0
    sget-object p1, Landroidx/compose/ui/text/TextGranularity;->Companion:Landroidx/compose/ui/text/TextGranularity$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/text/TextGranularity$Companion;->getCharacter-DRrd7Zo()I

    move-result p1

    goto :goto_0

    .line 770
    :cond_1
    sget-object p1, Landroidx/compose/ui/text/TextGranularity;->Companion:Landroidx/compose/ui/text/TextGranularity$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/text/TextGranularity$Companion;->getWord-DRrd7Zo()I

    move-result p1

    :goto_0
    return p1
.end method


# virtual methods
.method public final performHandwritingGesture$foundation_release(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroid/view/inputmethod/HandwritingGesture;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/platform/ViewConfiguration;Lkotlin/jvm/functions/Function1;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/text/LegacyTextFieldState;",
            "Landroid/view/inputmethod/HandwritingGesture;",
            "Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;",
            "Landroidx/compose/ui/platform/ViewConfiguration;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/text/input/EditCommand;",
            "Lkotlin/Unit;",
            ">;)I"
        }
    .end annotation

    .line 398
    invoke-virtual {p1}, Landroidx/compose/foundation/text/LegacyTextFieldState;->getUntransformedText()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v3

    const/4 v0, 0x3

    if-nez v3, :cond_0

    return v0

    .line 399
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/foundation/text/LegacyTextFieldState;->getLayoutResult()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/compose/foundation/text/TextLayoutResultProxy;->getValue()Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/compose/ui/text/TextLayoutResult;->getLayoutInput()Landroidx/compose/ui/text/TextLayoutInput;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/compose/ui/text/TextLayoutInput;->getText()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 404
    :cond_2
    instance-of v0, p2, Landroid/view/inputmethod/SelectGesture;

    if-eqz v0, :cond_3

    .line 405
    check-cast p2, Landroid/view/inputmethod/SelectGesture;

    invoke-direct {p0, p1, p2, p3, p5}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->performSelectGesture(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroid/view/inputmethod/SelectGesture;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Lkotlin/jvm/functions/Function1;)I

    move-result p1

    goto :goto_1

    .line 406
    :cond_3
    instance-of v0, p2, Landroid/view/inputmethod/DeleteGesture;

    if-eqz v0, :cond_4

    .line 407
    check-cast p2, Landroid/view/inputmethod/DeleteGesture;

    invoke-direct {p0, p1, p2, v3, p5}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->performDeleteGesture(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroid/view/inputmethod/DeleteGesture;Landroidx/compose/ui/text/AnnotatedString;Lkotlin/jvm/functions/Function1;)I

    move-result p1

    goto :goto_1

    .line 408
    :cond_4
    instance-of v0, p2, Landroid/view/inputmethod/SelectRangeGesture;

    if-eqz v0, :cond_5

    .line 409
    check-cast p2, Landroid/view/inputmethod/SelectRangeGesture;

    invoke-direct {p0, p1, p2, p3, p5}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->performSelectRangeGesture(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroid/view/inputmethod/SelectRangeGesture;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Lkotlin/jvm/functions/Function1;)I

    move-result p1

    goto :goto_1

    .line 410
    :cond_5
    instance-of p3, p2, Landroid/view/inputmethod/DeleteRangeGesture;

    if-eqz p3, :cond_6

    .line 411
    check-cast p2, Landroid/view/inputmethod/DeleteRangeGesture;

    invoke-direct {p0, p1, p2, v3, p5}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->performDeleteRangeGesture(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroid/view/inputmethod/DeleteRangeGesture;Landroidx/compose/ui/text/AnnotatedString;Lkotlin/jvm/functions/Function1;)I

    move-result p1

    goto :goto_1

    .line 412
    :cond_6
    instance-of p3, p2, Landroid/view/inputmethod/JoinOrSplitGesture;

    if-eqz p3, :cond_7

    .line 413
    move-object v2, p2

    check-cast v2, Landroid/view/inputmethod/JoinOrSplitGesture;

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->performJoinOrSplitGesture(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroid/view/inputmethod/JoinOrSplitGesture;Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/platform/ViewConfiguration;Lkotlin/jvm/functions/Function1;)I

    move-result p1

    goto :goto_1

    .line 414
    :cond_7
    instance-of p3, p2, Landroid/view/inputmethod/InsertGesture;

    if-eqz p3, :cond_8

    .line 415
    check-cast p2, Landroid/view/inputmethod/InsertGesture;

    invoke-direct {p0, p1, p2, p4, p5}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->performInsertGesture(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroid/view/inputmethod/InsertGesture;Landroidx/compose/ui/platform/ViewConfiguration;Lkotlin/jvm/functions/Function1;)I

    move-result p1

    goto :goto_1

    .line 416
    :cond_8
    instance-of p3, p2, Landroid/view/inputmethod/RemoveSpaceGesture;

    if-eqz p3, :cond_9

    .line 417
    move-object v2, p2

    check-cast v2, Landroid/view/inputmethod/RemoveSpaceGesture;

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->performRemoveSpaceGesture(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroid/view/inputmethod/RemoveSpaceGesture;Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/platform/ViewConfiguration;Lkotlin/jvm/functions/Function1;)I

    move-result p1

    goto :goto_1

    :cond_9
    const/4 p1, 0x2

    :goto_1
    return p1
.end method

.method public final performHandwritingGesture$foundation_release(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Landroid/view/inputmethod/HandwritingGesture;Landroidx/compose/foundation/text/input/internal/TextLayoutState;Landroidx/compose/ui/platform/ViewConfiguration;)I
    .locals 1

    .line 65
    instance-of v0, p2, Landroid/view/inputmethod/SelectGesture;

    if-eqz v0, :cond_0

    .line 66
    check-cast p2, Landroid/view/inputmethod/SelectGesture;

    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->performSelectGesture(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Landroid/view/inputmethod/SelectGesture;Landroidx/compose/foundation/text/input/internal/TextLayoutState;)I

    move-result p1

    goto :goto_0

    .line 67
    :cond_0
    instance-of v0, p2, Landroid/view/inputmethod/DeleteGesture;

    if-eqz v0, :cond_1

    .line 68
    check-cast p2, Landroid/view/inputmethod/DeleteGesture;

    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->performDeleteGesture(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Landroid/view/inputmethod/DeleteGesture;Landroidx/compose/foundation/text/input/internal/TextLayoutState;)I

    move-result p1

    goto :goto_0

    .line 69
    :cond_1
    instance-of v0, p2, Landroid/view/inputmethod/SelectRangeGesture;

    if-eqz v0, :cond_2

    .line 70
    check-cast p2, Landroid/view/inputmethod/SelectRangeGesture;

    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->performSelectRangeGesture(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Landroid/view/inputmethod/SelectRangeGesture;Landroidx/compose/foundation/text/input/internal/TextLayoutState;)I

    move-result p1

    goto :goto_0

    .line 71
    :cond_2
    instance-of v0, p2, Landroid/view/inputmethod/DeleteRangeGesture;

    if-eqz v0, :cond_3

    .line 72
    check-cast p2, Landroid/view/inputmethod/DeleteRangeGesture;

    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->performDeleteRangeGesture(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Landroid/view/inputmethod/DeleteRangeGesture;Landroidx/compose/foundation/text/input/internal/TextLayoutState;)I

    move-result p1

    goto :goto_0

    .line 73
    :cond_3
    instance-of v0, p2, Landroid/view/inputmethod/JoinOrSplitGesture;

    if-eqz v0, :cond_4

    .line 74
    check-cast p2, Landroid/view/inputmethod/JoinOrSplitGesture;

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->performJoinOrSplitGesture(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Landroid/view/inputmethod/JoinOrSplitGesture;Landroidx/compose/foundation/text/input/internal/TextLayoutState;Landroidx/compose/ui/platform/ViewConfiguration;)I

    move-result p1

    goto :goto_0

    .line 75
    :cond_4
    instance-of v0, p2, Landroid/view/inputmethod/InsertGesture;

    if-eqz v0, :cond_5

    .line 76
    check-cast p2, Landroid/view/inputmethod/InsertGesture;

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->performInsertGesture(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Landroid/view/inputmethod/InsertGesture;Landroidx/compose/foundation/text/input/internal/TextLayoutState;Landroidx/compose/ui/platform/ViewConfiguration;)I

    move-result p1

    goto :goto_0

    .line 77
    :cond_5
    instance-of v0, p2, Landroid/view/inputmethod/RemoveSpaceGesture;

    if-eqz v0, :cond_6

    .line 78
    check-cast p2, Landroid/view/inputmethod/RemoveSpaceGesture;

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->performRemoveSpaceGesture(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Landroid/view/inputmethod/RemoveSpaceGesture;Landroidx/compose/foundation/text/input/internal/TextLayoutState;Landroidx/compose/ui/platform/ViewConfiguration;)I

    move-result p1

    goto :goto_0

    :cond_6
    const/4 p1, 0x2

    :goto_0
    return p1
.end method

.method public final previewHandwritingGesture$foundation_release(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroid/view/inputmethod/PreviewableHandwritingGesture;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroid/os/CancellationSignal;)Z
    .locals 3

    .line 429
    invoke-virtual {p1}, Landroidx/compose/foundation/text/LegacyTextFieldState;->getUntransformedText()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 430
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/foundation/text/LegacyTextFieldState;->getLayoutResult()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroidx/compose/foundation/text/TextLayoutResultProxy;->getValue()Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroidx/compose/ui/text/TextLayoutResult;->getLayoutInput()Landroidx/compose/ui/text/TextLayoutInput;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroidx/compose/ui/text/TextLayoutInput;->getText()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 435
    :cond_2
    instance-of v0, p2, Landroid/view/inputmethod/SelectGesture;

    if-eqz v0, :cond_3

    check-cast p2, Landroid/view/inputmethod/SelectGesture;

    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->previewSelectGesture(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroid/view/inputmethod/SelectGesture;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)V

    goto :goto_1

    .line 436
    :cond_3
    instance-of v0, p2, Landroid/view/inputmethod/DeleteGesture;

    if-eqz v0, :cond_4

    check-cast p2, Landroid/view/inputmethod/DeleteGesture;

    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->previewDeleteGesture(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroid/view/inputmethod/DeleteGesture;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)V

    goto :goto_1

    .line 437
    :cond_4
    instance-of v0, p2, Landroid/view/inputmethod/SelectRangeGesture;

    if-eqz v0, :cond_5

    check-cast p2, Landroid/view/inputmethod/SelectRangeGesture;

    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->previewSelectRangeGesture(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroid/view/inputmethod/SelectRangeGesture;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)V

    goto :goto_1

    .line 438
    :cond_5
    instance-of v0, p2, Landroid/view/inputmethod/DeleteRangeGesture;

    if-eqz v0, :cond_7

    check-cast p2, Landroid/view/inputmethod/DeleteRangeGesture;

    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->previewDeleteRangeGesture(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroid/view/inputmethod/DeleteRangeGesture;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)V

    :goto_1
    if-eqz p4, :cond_6

    .line 441
    new-instance p1, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34$$ExternalSyntheticLambda0;

    invoke-direct {p1, p3}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)V

    invoke-virtual {p4, p1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    :cond_6
    const/4 p1, 0x1

    return p1

    :cond_7
    return v1
.end method

.method public final previewHandwritingGesture$foundation_release(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Landroid/view/inputmethod/PreviewableHandwritingGesture;Landroidx/compose/foundation/text/input/internal/TextLayoutState;Landroid/os/CancellationSignal;)Z
    .locals 1

    .line 91
    instance-of v0, p2, Landroid/view/inputmethod/SelectGesture;

    if-eqz v0, :cond_0

    check-cast p2, Landroid/view/inputmethod/SelectGesture;

    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->previewSelectGesture(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Landroid/view/inputmethod/SelectGesture;Landroidx/compose/foundation/text/input/internal/TextLayoutState;)V

    goto :goto_0

    .line 92
    :cond_0
    instance-of v0, p2, Landroid/view/inputmethod/DeleteGesture;

    if-eqz v0, :cond_1

    check-cast p2, Landroid/view/inputmethod/DeleteGesture;

    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->previewDeleteGesture(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Landroid/view/inputmethod/DeleteGesture;Landroidx/compose/foundation/text/input/internal/TextLayoutState;)V

    goto :goto_0

    .line 93
    :cond_1
    instance-of v0, p2, Landroid/view/inputmethod/SelectRangeGesture;

    if-eqz v0, :cond_2

    check-cast p2, Landroid/view/inputmethod/SelectRangeGesture;

    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->previewSelectRangeGesture(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Landroid/view/inputmethod/SelectRangeGesture;Landroidx/compose/foundation/text/input/internal/TextLayoutState;)V

    goto :goto_0

    .line 94
    :cond_2
    instance-of v0, p2, Landroid/view/inputmethod/DeleteRangeGesture;

    if-eqz v0, :cond_4

    check-cast p2, Landroid/view/inputmethod/DeleteRangeGesture;

    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34;->previewDeleteRangeGesture(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Landroid/view/inputmethod/DeleteRangeGesture;Landroidx/compose/foundation/text/input/internal/TextLayoutState;)V

    :goto_0
    if-eqz p4, :cond_3

    .line 97
    new-instance p2, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34$$ExternalSyntheticLambda1;

    invoke-direct {p2, p1}, Landroidx/compose/foundation/text/input/internal/HandwritingGestureApi34$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;)V

    invoke-virtual {p4, p2}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method
