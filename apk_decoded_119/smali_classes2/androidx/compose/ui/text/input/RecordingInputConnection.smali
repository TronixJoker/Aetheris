.class public final Landroidx/compose/ui/text/input/RecordingInputConnection;
.super Ljava/lang/Object;
.source "RecordingInputConnection.android.kt"

# interfaces
.implements Landroid/view/inputmethod/InputConnection;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRecordingInputConnection.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecordingInputConnection.android.kt\nandroidx/compose/ui/text/input/RecordingInputConnection\n*L\n1#1,459:1\n86#1,5:460\n86#1,5:465\n86#1,5:470\n86#1,5:475\n86#1,5:480\n86#1,5:485\n86#1,5:490\n86#1,5:495\n86#1,5:500\n86#1,5:505\n86#1,5:510\n86#1,5:515\n86#1,5:520\n86#1,5:525\n86#1,5:530\n86#1,5:535\n86#1,5:540\n*S KotlinDebug\n*F\n+ 1 RecordingInputConnection.android.kt\nandroidx/compose/ui/text/input/RecordingInputConnection\n*L\n146#1:460,5\n182#1:465,5\n187#1:470,5\n193#1:475,5\n201#1:480,5\n212#1:485,5\n218#1:490,5\n224#1:495,5\n230#1:500,5\n266#1:505,5\n350#1:510,5\n376#1:515,5\n399#1:520,5\n409#1:525,5\n421#1:530,5\n441#1:535,5\n450#1:540,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Deprecated;
    message = "Only exists to support the legacy TextInputService APIs. It is not used by any Compose code. A copy of this class in foundation is used by the legacy BasicTextField."
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\u0008\u0001\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0010H\u0002J\u0008\u0010\u001e\u001a\u00020\u0007H\u0016J\u0008\u0010\u001f\u001a\u00020\u0007H\u0002J\u0010\u0010 \u001a\u00020\u00072\u0006\u0010!\u001a\u00020\u000cH\u0016J\u0008\u0010\"\u001a\u00020\u001cH\u0016J\u0012\u0010#\u001a\u00020\u00072\u0008\u0010$\u001a\u0004\u0018\u00010%H\u0016J\"\u0010&\u001a\u00020\u00072\u0006\u0010\'\u001a\u00020(2\u0006\u0010)\u001a\u00020\u000c2\u0008\u0010*\u001a\u0004\u0018\u00010+H\u0016J\u0012\u0010,\u001a\u00020\u00072\u0008\u0010-\u001a\u0004\u0018\u00010.H\u0016J\u001a\u0010/\u001a\u00020\u00072\u0008\u0010$\u001a\u0004\u0018\u0001002\u0006\u00101\u001a\u00020\u000cH\u0016J\u0018\u00102\u001a\u00020\u00072\u0006\u00103\u001a\u00020\u000c2\u0006\u00104\u001a\u00020\u000cH\u0016J\u0018\u00105\u001a\u00020\u00072\u0006\u00103\u001a\u00020\u000c2\u0006\u00104\u001a\u00020\u000cH\u0016J\u0008\u00106\u001a\u00020\u0007H\u0016J\u0008\u00107\u001a\u00020\u0007H\u0002J\u0017\u00108\u001a\u00020\u00072\u000c\u00109\u001a\u0008\u0012\u0004\u0012\u00020\u001c0:H\u0082\u0008J\u0008\u0010;\u001a\u00020\u0007H\u0016J\u0010\u0010<\u001a\u00020\u000c2\u0006\u0010=\u001a\u00020\u000cH\u0016J\u001a\u0010>\u001a\u00020?2\u0008\u0010@\u001a\u0004\u0018\u00010A2\u0006\u0010)\u001a\u00020\u000cH\u0016J\n\u0010B\u001a\u0004\u0018\u00010CH\u0016J\u0012\u0010D\u001a\u0004\u0018\u0001002\u0006\u0010)\u001a\u00020\u000cH\u0016J\u0018\u0010E\u001a\u0002002\u0006\u0010F\u001a\u00020\u000c2\u0006\u0010)\u001a\u00020\u000cH\u0016J\u0018\u0010G\u001a\u0002002\u0006\u0010F\u001a\u00020\u000c2\u0006\u0010)\u001a\u00020\u000cH\u0016J\u0010\u0010H\u001a\u00020\u001c2\u0006\u0010I\u001a\u00020JH\u0002J\u0010\u0010K\u001a\u00020\u00072\u0006\u0010L\u001a\u00020\u000cH\u0016J\u0010\u0010M\u001a\u00020\u00072\u0006\u0010N\u001a\u00020\u000cH\u0016J\u001c\u0010O\u001a\u00020\u00072\u0008\u0010P\u001a\u0004\u0018\u00010J2\u0008\u0010Q\u001a\u0004\u0018\u00010+H\u0016J\u0010\u0010R\u001a\u00020\u00072\u0006\u0010S\u001a\u00020\u0007H\u0016J\u0010\u0010T\u001a\u00020\u00072\u0006\u0010U\u001a\u00020\u000cH\u0016J\u0010\u0010V\u001a\u00020\u00072\u0006\u0010W\u001a\u00020XH\u0016J\u0010\u0010Y\u001a\u00020\u001c2\u0006\u0010Z\u001a\u00020\u000cH\u0002J\u0018\u0010[\u001a\u00020\u00072\u0006\u0010\\\u001a\u00020\u000c2\u0006\u0010]\u001a\u00020\u000cH\u0016J\u001a\u0010^\u001a\u00020\u00072\u0008\u0010$\u001a\u0004\u0018\u0001002\u0006\u00101\u001a\u00020\u000cH\u0016J\u0018\u0010_\u001a\u00020\u00072\u0006\u0010\\\u001a\u00020\u000c2\u0006\u0010]\u001a\u00020\u000cH\u0016J\u0016\u0010`\u001a\u00020\u001c2\u0006\u0010a\u001a\u00020\u00032\u0006\u0010b\u001a\u00020cR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u000e\u0010\u0013\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u0003@@X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001a\u00a8\u0006d"
    }
    d2 = {
        "Landroidx/compose/ui/text/input/RecordingInputConnection;",
        "Landroid/view/inputmethod/InputConnection;",
        "initState",
        "Landroidx/compose/ui/text/input/TextFieldValue;",
        "eventCallback",
        "Landroidx/compose/ui/text/input/InputEventCallback2;",
        "autoCorrect",
        "",
        "(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/InputEventCallback2;Z)V",
        "getAutoCorrect",
        "()Z",
        "batchDepth",
        "",
        "currentExtractedTextRequestToken",
        "editCommands",
        "",
        "Landroidx/compose/ui/text/input/EditCommand;",
        "getEventCallback",
        "()Landroidx/compose/ui/text/input/InputEventCallback2;",
        "extractedTextMonitorMode",
        "isActive",
        "value",
        "mTextFieldValue",
        "getMTextFieldValue$ui_release",
        "()Landroidx/compose/ui/text/input/TextFieldValue;",
        "setMTextFieldValue$ui_release",
        "(Landroidx/compose/ui/text/input/TextFieldValue;)V",
        "addEditCommandWithBatch",
        "",
        "editCommand",
        "beginBatchEdit",
        "beginBatchEditInternal",
        "clearMetaKeyStates",
        "states",
        "closeConnection",
        "commitCompletion",
        "text",
        "Landroid/view/inputmethod/CompletionInfo;",
        "commitContent",
        "inputContentInfo",
        "Landroid/view/inputmethod/InputContentInfo;",
        "flags",
        "opts",
        "Landroid/os/Bundle;",
        "commitCorrection",
        "correctionInfo",
        "Landroid/view/inputmethod/CorrectionInfo;",
        "commitText",
        "",
        "newCursorPosition",
        "deleteSurroundingText",
        "beforeLength",
        "afterLength",
        "deleteSurroundingTextInCodePoints",
        "endBatchEdit",
        "endBatchEditInternal",
        "ensureActive",
        "block",
        "Lkotlin/Function0;",
        "finishComposingText",
        "getCursorCapsMode",
        "reqModes",
        "getExtractedText",
        "Landroid/view/inputmethod/ExtractedText;",
        "request",
        "Landroid/view/inputmethod/ExtractedTextRequest;",
        "getHandler",
        "Landroid/os/Handler;",
        "getSelectedText",
        "getTextAfterCursor",
        "maxChars",
        "getTextBeforeCursor",
        "logDebug",
        "message",
        "",
        "performContextMenuAction",
        "id",
        "performEditorAction",
        "editorAction",
        "performPrivateCommand",
        "action",
        "data",
        "reportFullscreenMode",
        "enabled",
        "requestCursorUpdates",
        "cursorUpdateMode",
        "sendKeyEvent",
        "event",
        "Landroid/view/KeyEvent;",
        "sendSynthesizedKeyEvent",
        "code",
        "setComposingRegion",
        "start",
        "end",
        "setComposingText",
        "setSelection",
        "updateInputState",
        "state",
        "inputMethodManager",
        "Landroidx/compose/ui/text/input/InputMethodManager;",
        "ui_release"
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
.field private final autoCorrect:Z

.field private batchDepth:I

.field private currentExtractedTextRequestToken:I

.field private final editCommands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/input/EditCommand;",
            ">;"
        }
    .end annotation
.end field

.field private final eventCallback:Landroidx/compose/ui/text/input/InputEventCallback2;

.field private extractedTextMonitorMode:Z

.field private isActive:Z

.field private mTextFieldValue:Landroidx/compose/ui/text/input/TextFieldValue;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/InputEventCallback2;Z)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p2, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->eventCallback:Landroidx/compose/ui/text/input/InputEventCallback2;

    .line 52
    iput-boolean p3, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->autoCorrect:Z

    .line 59
    iput-object p1, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->mTextFieldValue:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 81
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->editCommands:Ljava/util/List;

    const/4 p1, 0x1

    .line 83
    iput-boolean p1, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->isActive:Z

    return-void
.end method

.method private final addEditCommandWithBatch(Landroidx/compose/ui/text/input/EditCommand;)V
    .locals 1

    .line 134
    invoke-direct {p0}, Landroidx/compose/ui/text/input/RecordingInputConnection;->beginBatchEditInternal()Z

    .line 136
    :try_start_0
    iget-object v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->editCommands:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    invoke-direct {p0}, Landroidx/compose/ui/text/input/RecordingInputConnection;->endBatchEditInternal()Z

    return-void

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Landroidx/compose/ui/text/input/RecordingInputConnection;->endBatchEditInternal()Z

    throw p1
.end method

.method private final beginBatchEditInternal()Z
    .locals 2

    .line 152
    iget v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->batchDepth:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->batchDepth:I

    return v1
.end method

.method private final endBatchEditInternal()Z
    .locals 3

    .line 162
    iget v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->batchDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->batchDepth:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->editCommands:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->eventCallback:Landroidx/compose/ui/text/input/InputEventCallback2;

    iget-object v2, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->editCommands:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Landroidx/compose/ui/text/input/InputEventCallback2;->onEditCommands(Ljava/util/List;)V

    .line 165
    iget-object v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->editCommands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 167
    :cond_0
    iget v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->batchDepth:I

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private final ensureActive(Lkotlin/jvm/functions/Function0;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)Z"
        }
    .end annotation

    .line 86
    iget-boolean v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->isActive:Z

    if-eqz v0, :cond_0

    .line 88
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    return v0
.end method

.method private final logDebug(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private final sendSynthesizedKeyEvent(I)V
    .locals 2

    .line 372
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v0}, Landroidx/compose/ui/text/input/RecordingInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 373
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v0}, Landroidx/compose/ui/text/input/RecordingInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    return-void
.end method


# virtual methods
.method public beginBatchEdit()Z
    .locals 1

    .line 460
    iget-boolean v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->isActive:Z

    if-eqz v0, :cond_0

    .line 148
    invoke-direct {p0}, Landroidx/compose/ui/text/input/RecordingInputConnection;->beginBatchEditInternal()Z

    move-result v0

    :cond_0
    return v0
.end method

.method public clearMetaKeyStates(I)Z
    .locals 0

    .line 530
    iget-boolean p1, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->isActive:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    return p1
.end method

.method public closeConnection()V
    .locals 1

    .line 172
    iget-object v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->editCommands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 173
    iput v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->batchDepth:I

    .line 174
    iput-boolean v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->isActive:Z

    .line 175
    iget-object v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->eventCallback:Landroidx/compose/ui/text/input/InputEventCallback2;

    invoke-interface {v0, p0}, Landroidx/compose/ui/text/input/InputEventCallback2;->onConnectionClosed(Landroidx/compose/ui/text/input/RecordingInputConnection;)V

    return-void
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .locals 0

    .line 520
    iget-boolean p1, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->isActive:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    return p1
.end method

.method public commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z
    .locals 0

    .line 540
    iget-boolean p1, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->isActive:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    return p1
.end method

.method public commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
    .locals 0

    .line 525
    iget-boolean p1, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->isActive:Z

    if-eqz p1, :cond_0

    .line 413
    iget-boolean p1, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->autoCorrect:Z

    :cond_0
    return p1
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 2

    .line 465
    iget-boolean v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->isActive:Z

    if-eqz v0, :cond_0

    .line 184
    new-instance v1, Landroidx/compose/ui/text/input/CommitTextCommand;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Landroidx/compose/ui/text/input/CommitTextCommand;-><init>(Ljava/lang/String;I)V

    check-cast v1, Landroidx/compose/ui/text/input/EditCommand;

    invoke-direct {p0, v1}, Landroidx/compose/ui/text/input/RecordingInputConnection;->addEditCommandWithBatch(Landroidx/compose/ui/text/input/EditCommand;)V

    :cond_0
    return v0
.end method

.method public deleteSurroundingText(II)Z
    .locals 1

    .line 485
    iget-boolean v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->isActive:Z

    if-eqz v0, :cond_0

    .line 214
    new-instance v0, Landroidx/compose/ui/text/input/DeleteSurroundingTextCommand;

    invoke-direct {v0, p1, p2}, Landroidx/compose/ui/text/input/DeleteSurroundingTextCommand;-><init>(II)V

    check-cast v0, Landroidx/compose/ui/text/input/EditCommand;

    invoke-direct {p0, v0}, Landroidx/compose/ui/text/input/RecordingInputConnection;->addEditCommandWithBatch(Landroidx/compose/ui/text/input/EditCommand;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method public deleteSurroundingTextInCodePoints(II)Z
    .locals 1

    .line 480
    iget-boolean v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->isActive:Z

    if-eqz v0, :cond_0

    .line 206
    new-instance v0, Landroidx/compose/ui/text/input/DeleteSurroundingTextInCodePointsCommand;

    invoke-direct {v0, p1, p2}, Landroidx/compose/ui/text/input/DeleteSurroundingTextInCodePointsCommand;-><init>(II)V

    check-cast v0, Landroidx/compose/ui/text/input/EditCommand;

    .line 205
    invoke-direct {p0, v0}, Landroidx/compose/ui/text/input/RecordingInputConnection;->addEditCommandWithBatch(Landroidx/compose/ui/text/input/EditCommand;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method public endBatchEdit()Z
    .locals 1

    .line 158
    invoke-direct {p0}, Landroidx/compose/ui/text/input/RecordingInputConnection;->endBatchEditInternal()Z

    move-result v0

    return v0
.end method

.method public finishComposingText()Z
    .locals 1

    .line 495
    iget-boolean v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->isActive:Z

    if-eqz v0, :cond_0

    .line 226
    new-instance v0, Landroidx/compose/ui/text/input/FinishComposingTextCommand;

    invoke-direct {v0}, Landroidx/compose/ui/text/input/FinishComposingTextCommand;-><init>()V

    check-cast v0, Landroidx/compose/ui/text/input/EditCommand;

    invoke-direct {p0, v0}, Landroidx/compose/ui/text/input/RecordingInputConnection;->addEditCommandWithBatch(Landroidx/compose/ui/text/input/EditCommand;)V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final getAutoCorrect()Z
    .locals 1

    .line 52
    iget-boolean v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->autoCorrect:Z

    return v0
.end method

.method public getCursorCapsMode(I)I
    .locals 3

    .line 438
    iget-object v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->mTextFieldValue:Landroidx/compose/ui/text/input/TextFieldValue;

    invoke-virtual {v0}, Landroidx/compose/ui/text/input/TextFieldValue;->getText()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iget-object v1, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->mTextFieldValue:Landroidx/compose/ui/text/input/TextFieldValue;

    invoke-virtual {v1}, Landroidx/compose/ui/text/input/TextFieldValue;->getSelection-d9O1mEE()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result p1

    return p1
.end method

.method public final getEventCallback()Landroidx/compose/ui/text/input/InputEventCallback2;
    .locals 1

    .line 51
    iget-object v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->eventCallback:Landroidx/compose/ui/text/input/InputEventCallback2;

    return-object v0
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 2

    const/4 v0, 0x1

    and-int/2addr p2, v0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 322
    :goto_0
    iput-boolean v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->extractedTextMonitorMode:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 324
    iget v1, p1, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    :cond_1
    iput v1, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->currentExtractedTextRequestToken:I

    .line 327
    :cond_2
    iget-object p1, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->mTextFieldValue:Landroidx/compose/ui/text/input/TextFieldValue;

    invoke-static {p1}, Landroidx/compose/ui/text/input/InputState_androidKt;->toExtractedText(Landroidx/compose/ui/text/input/TextFieldValue;)Landroid/view/inputmethod/ExtractedText;

    move-result-object p1

    return-object p1
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getMTextFieldValue$ui_release()Landroidx/compose/ui/text/input/TextFieldValue;
    .locals 1

    .line 59
    iget-object v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->mTextFieldValue:Landroidx/compose/ui/text/input/TextFieldValue;

    return-object v0
.end method

.method public getSelectedText(I)Ljava/lang/CharSequence;
    .locals 2

    .line 256
    iget-object p1, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->mTextFieldValue:Landroidx/compose/ui/text/input/TextFieldValue;

    invoke-virtual {p1}, Landroidx/compose/ui/text/input/TextFieldValue;->getSelection-d9O1mEE()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 260
    :cond_0
    iget-object p1, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->mTextFieldValue:Landroidx/compose/ui/text/input/TextFieldValue;

    invoke-static {p1}, Landroidx/compose/ui/text/input/TextFieldValueKt;->getSelectedText(Landroidx/compose/ui/text/input/TextFieldValue;)Landroidx/compose/ui/text/AnnotatedString;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/ui/text/AnnotatedString;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    :goto_0
    return-object p1
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .locals 0

    .line 249
    iget-object p2, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->mTextFieldValue:Landroidx/compose/ui/text/input/TextFieldValue;

    invoke-static {p2, p1}, Landroidx/compose/ui/text/input/TextFieldValueKt;->getTextAfterSelection(Landroidx/compose/ui/text/input/TextFieldValue;I)Landroidx/compose/ui/text/AnnotatedString;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/ui/text/AnnotatedString;->toString()Ljava/lang/String;

    move-result-object p1

    .line 251
    check-cast p1, Ljava/lang/CharSequence;

    return-object p1
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .locals 0

    .line 242
    iget-object p2, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->mTextFieldValue:Landroidx/compose/ui/text/input/TextFieldValue;

    invoke-static {p2, p1}, Landroidx/compose/ui/text/input/TextFieldValueKt;->getTextBeforeSelection(Landroidx/compose/ui/text/input/TextFieldValue;I)Landroidx/compose/ui/text/AnnotatedString;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/ui/text/AnnotatedString;->toString()Ljava/lang/String;

    move-result-object p1

    .line 244
    check-cast p1, Ljava/lang/CharSequence;

    return-object p1
.end method

.method public performContextMenuAction(I)Z
    .locals 2

    .line 510
    iget-boolean v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->isActive:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 p1, 0x117

    .line 359
    invoke-direct {p0, p1}, Landroidx/compose/ui/text/input/RecordingInputConnection;->sendSynthesizedKeyEvent(I)V

    goto :goto_0

    :pswitch_1
    const/16 p1, 0x116

    .line 358
    invoke-direct {p0, p1}, Landroidx/compose/ui/text/input/RecordingInputConnection;->sendSynthesizedKeyEvent(I)V

    goto :goto_0

    :pswitch_2
    const/16 p1, 0x115

    .line 357
    invoke-direct {p0, p1}, Landroidx/compose/ui/text/input/RecordingInputConnection;->sendSynthesizedKeyEvent(I)V

    goto :goto_0

    .line 354
    :pswitch_3
    new-instance p1, Landroidx/compose/ui/text/input/SetSelectionCommand;

    iget-object v1, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->mTextFieldValue:Landroidx/compose/ui/text/input/TextFieldValue;

    invoke-virtual {v1}, Landroidx/compose/ui/text/input/TextFieldValue;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p1, v0, v1}, Landroidx/compose/ui/text/input/SetSelectionCommand;-><init>(II)V

    check-cast p1, Landroidx/compose/ui/text/input/EditCommand;

    invoke-direct {p0, p1}, Landroidx/compose/ui/text/input/RecordingInputConnection;->addEditCommandWithBatch(Landroidx/compose/ui/text/input/EditCommand;)V

    :cond_0
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x102001f
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public performEditorAction(I)Z
    .locals 2

    .line 515
    iget-boolean v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->isActive:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IME sends unsupported Editor Action: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RecordingIC"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    sget-object p1, Landroidx/compose/ui/text/input/ImeAction;->Companion:Landroidx/compose/ui/text/input/ImeAction$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/text/input/ImeAction$Companion;->getDefault-eUduSuo()I

    move-result p1

    goto :goto_0

    .line 383
    :pswitch_0
    sget-object p1, Landroidx/compose/ui/text/input/ImeAction;->Companion:Landroidx/compose/ui/text/input/ImeAction$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/text/input/ImeAction$Companion;->getPrevious-eUduSuo()I

    move-result p1

    goto :goto_0

    .line 380
    :pswitch_1
    sget-object p1, Landroidx/compose/ui/text/input/ImeAction;->Companion:Landroidx/compose/ui/text/input/ImeAction$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/text/input/ImeAction$Companion;->getDone-eUduSuo()I

    move-result p1

    goto :goto_0

    .line 384
    :pswitch_2
    sget-object p1, Landroidx/compose/ui/text/input/ImeAction;->Companion:Landroidx/compose/ui/text/input/ImeAction$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/text/input/ImeAction$Companion;->getNext-eUduSuo()I

    move-result p1

    goto :goto_0

    .line 381
    :pswitch_3
    sget-object p1, Landroidx/compose/ui/text/input/ImeAction;->Companion:Landroidx/compose/ui/text/input/ImeAction$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/text/input/ImeAction$Companion;->getSend-eUduSuo()I

    move-result p1

    goto :goto_0

    .line 382
    :pswitch_4
    sget-object p1, Landroidx/compose/ui/text/input/ImeAction;->Companion:Landroidx/compose/ui/text/input/ImeAction$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/text/input/ImeAction$Companion;->getSearch-eUduSuo()I

    move-result p1

    goto :goto_0

    .line 385
    :pswitch_5
    sget-object p1, Landroidx/compose/ui/text/input/ImeAction;->Companion:Landroidx/compose/ui/text/input/ImeAction$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/text/input/ImeAction$Companion;->getGo-eUduSuo()I

    move-result p1

    goto :goto_0

    .line 379
    :cond_0
    sget-object p1, Landroidx/compose/ui/text/input/ImeAction;->Companion:Landroidx/compose/ui/text/input/ImeAction$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/text/input/ImeAction$Companion;->getDefault-eUduSuo()I

    move-result p1

    .line 391
    :goto_0
    iget-object v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->eventCallback:Landroidx/compose/ui/text/input/InputEventCallback2;

    invoke-interface {v0, p1}, Landroidx/compose/ui/text/input/InputEventCallback2;->onImeAction-KlQnJC8(I)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 0

    .line 535
    iget-boolean p1, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->isActive:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    :cond_0
    return p1
.end method

.method public reportFullscreenMode(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public requestCursorUpdates(I)Z
    .locals 10

    .line 505
    iget-boolean v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->isActive:Z

    if-eqz v0, :cond_9

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    move v5, v1

    .line 281
    :goto_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    if-lt v0, v3, :cond_8

    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    and-int/lit8 v3, p1, 0x8

    if-eqz v3, :cond_3

    move v3, v2

    goto :goto_3

    :cond_3
    move v3, v1

    :goto_3
    and-int/lit8 v6, p1, 0x4

    if-eqz v6, :cond_4

    move v6, v2

    goto :goto_4

    :cond_4
    move v6, v1

    .line 288
    :goto_4
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x22

    if-lt v7, v8, :cond_5

    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_5

    move v1, v2

    :cond_5
    if-nez v0, :cond_7

    if-nez v3, :cond_7

    if-nez v6, :cond_7

    if-nez v1, :cond_7

    .line 303
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v8, :cond_6

    move v6, v2

    move v7, v6

    move v8, v7

    move v9, v8

    goto :goto_5

    :cond_6
    move v9, v1

    move v6, v2

    move v7, v6

    move v8, v7

    goto :goto_5

    :cond_7
    move v9, v1

    move v7, v3

    move v8, v6

    move v6, v0

    goto :goto_5

    :cond_8
    move v8, v1

    move v9, v8

    move v6, v2

    move v7, v6

    .line 309
    :goto_5
    iget-object v3, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->eventCallback:Landroidx/compose/ui/text/input/InputEventCallback2;

    invoke-interface/range {v3 .. v9}, Landroidx/compose/ui/text/input/InputEventCallback2;->onRequestCursorAnchorInfo(ZZZZZZ)V

    return v2

    :cond_9
    return v0
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 500
    iget-boolean v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->isActive:Z

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->eventCallback:Landroidx/compose/ui/text/input/InputEventCallback2;

    invoke-interface {v0, p1}, Landroidx/compose/ui/text/input/InputEventCallback2;->onKeyEvent(Landroid/view/KeyEvent;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method public setComposingRegion(II)Z
    .locals 2

    .line 470
    iget-boolean v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->isActive:Z

    if-eqz v0, :cond_0

    .line 189
    new-instance v1, Landroidx/compose/ui/text/input/SetComposingRegionCommand;

    invoke-direct {v1, p1, p2}, Landroidx/compose/ui/text/input/SetComposingRegionCommand;-><init>(II)V

    check-cast v1, Landroidx/compose/ui/text/input/EditCommand;

    invoke-direct {p0, v1}, Landroidx/compose/ui/text/input/RecordingInputConnection;->addEditCommandWithBatch(Landroidx/compose/ui/text/input/EditCommand;)V

    :cond_0
    return v0
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 2

    .line 475
    iget-boolean v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->isActive:Z

    if-eqz v0, :cond_0

    .line 197
    new-instance v1, Landroidx/compose/ui/text/input/SetComposingTextCommand;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Landroidx/compose/ui/text/input/SetComposingTextCommand;-><init>(Ljava/lang/String;I)V

    check-cast v1, Landroidx/compose/ui/text/input/EditCommand;

    invoke-direct {p0, v1}, Landroidx/compose/ui/text/input/RecordingInputConnection;->addEditCommandWithBatch(Landroidx/compose/ui/text/input/EditCommand;)V

    :cond_0
    return v0
.end method

.method public final setMTextFieldValue$ui_release(Landroidx/compose/ui/text/input/TextFieldValue;)V
    .locals 0

    .line 62
    iput-object p1, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->mTextFieldValue:Landroidx/compose/ui/text/input/TextFieldValue;

    return-void
.end method

.method public setSelection(II)Z
    .locals 1

    .line 490
    iget-boolean v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->isActive:Z

    if-eqz v0, :cond_0

    .line 220
    new-instance v0, Landroidx/compose/ui/text/input/SetSelectionCommand;

    invoke-direct {v0, p1, p2}, Landroidx/compose/ui/text/input/SetSelectionCommand;-><init>(II)V

    check-cast v0, Landroidx/compose/ui/text/input/EditCommand;

    invoke-direct {p0, v0}, Landroidx/compose/ui/text/input/RecordingInputConnection;->addEditCommandWithBatch(Landroidx/compose/ui/text/input/EditCommand;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method public final updateInputState(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/InputMethodManager;)V
    .locals 5

    .line 104
    iget-boolean v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->isActive:Z

    if-nez v0, :cond_0

    return-void

    .line 108
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/input/RecordingInputConnection;->setMTextFieldValue$ui_release(Landroidx/compose/ui/text/input/TextFieldValue;)V

    .line 110
    iget-boolean v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->extractedTextMonitorMode:Z

    if-eqz v0, :cond_1

    .line 112
    iget v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->currentExtractedTextRequestToken:I

    .line 113
    invoke-static {p1}, Landroidx/compose/ui/text/input/InputState_androidKt;->toExtractedText(Landroidx/compose/ui/text/input/TextFieldValue;)Landroid/view/inputmethod/ExtractedText;

    move-result-object v1

    .line 111
    invoke-interface {p2, v0, v1}, Landroidx/compose/ui/text/input/InputMethodManager;->updateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V

    .line 118
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/TextFieldValue;->getComposition-MzsxiRA()Landroidx/compose/ui/text/TextRange;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/compose/ui/text/TextRange;->unbox-impl()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 119
    :goto_0
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/TextFieldValue;->getComposition-MzsxiRA()Landroidx/compose/ui/text/TextRange;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroidx/compose/ui/text/TextRange;->unbox-impl()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v1

    .line 128
    :cond_3
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/TextFieldValue;->getSelection-d9O1mEE()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v2

    invoke-virtual {p1}, Landroidx/compose/ui/text/input/TextFieldValue;->getSelection-d9O1mEE()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result p1

    .line 127
    invoke-interface {p2, v2, p1, v0, v1}, Landroidx/compose/ui/text/input/InputMethodManager;->updateSelection(IIII)V

    return-void
.end method
