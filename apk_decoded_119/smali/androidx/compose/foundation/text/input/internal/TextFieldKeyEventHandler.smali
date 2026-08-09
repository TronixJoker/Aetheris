.class public abstract Landroidx/compose/foundation/text/input/internal/TextFieldKeyEventHandler;
.super Ljava/lang/Object;
.source "TextFieldKeyEventHandler.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/text/input/internal/TextFieldKeyEventHandler$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextFieldKeyEventHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextFieldKeyEventHandler.kt\nandroidx/compose/foundation/text/input/internal/TextFieldKeyEventHandler\n+ 2 TransformedTextFieldState.kt\nandroidx/compose/foundation/text/input/internal/TransformedTextFieldState\n+ 3 TextFieldState.kt\nandroidx/compose/foundation/text/input/TextFieldState\n+ 4 TextPreparedSelection.kt\nandroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,265:1\n237#1,10:284\n247#1,5:435\n318#2,2:266\n323#2:283\n314#2,6:391\n323#2:412\n314#2,6:413\n323#2:434\n261#3,15:268\n261#3,15:397\n261#3,15:419\n115#4,8:294\n123#4,8:303\n115#4,16:311\n115#4,16:327\n115#4,16:343\n115#4,16:359\n115#4,16:375\n1#5:302\n*S KotlinDebug\n*F\n+ 1 TextFieldKeyEventHandler.kt\nandroidx/compose/foundation/text/input/internal/TextFieldKeyEventHandler\n*L\n112#1:284,10\n112#1:435,5\n93#1:266,2\n93#1:283\n177#1:391,6\n177#1:412\n188#1:413,6\n188#1:434\n93#1:268,15\n177#1:397,15\n188#1:419,15\n134#1:294,8\n134#1:303,8\n144#1:311,16\n152#1:327,16\n158#1:343,16\n164#1:359,16\n170#1:375,16\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\u0008 \u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002JP\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\n2\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0016H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J:\u0010\u001a\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eH\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001f\u0010 J:\u0010!\u001a\u00020\u00172\u0006\u0010\"\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010#\u001a\u00020\n2\u0017\u0010$\u001a\u0013\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020\u00170%\u00a2\u0006\u0002\u0008\'H\u0082\u0008J\u000c\u0010(\u001a\u00020)*\u00020\u0010H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006*"
    }
    d2 = {
        "Landroidx/compose/foundation/text/input/internal/TextFieldKeyEventHandler;",
        "",
        "()V",
        "deadKeyCombiner",
        "Landroidx/compose/foundation/text/DeadKeyCombiner;",
        "keyMapping",
        "Landroidx/compose/foundation/text/KeyMapping;",
        "preparedSelectionState",
        "Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;",
        "onKeyEvent",
        "",
        "event",
        "Landroidx/compose/ui/input/key/KeyEvent;",
        "textFieldState",
        "Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;",
        "textLayoutState",
        "Landroidx/compose/foundation/text/input/internal/TextLayoutState;",
        "textFieldSelectionState",
        "Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;",
        "editable",
        "singleLine",
        "onSubmit",
        "Lkotlin/Function0;",
        "",
        "onKeyEvent-6ptp14s",
        "(Landroid/view/KeyEvent;Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Landroidx/compose/foundation/text/input/internal/TextLayoutState;Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;ZZLkotlin/jvm/functions/Function0;)Z",
        "onPreKeyEvent",
        "focusManager",
        "Landroidx/compose/ui/focus/FocusManager;",
        "keyboardController",
        "Landroidx/compose/ui/platform/SoftwareKeyboardController;",
        "onPreKeyEvent-MyFupTE",
        "(Landroid/view/KeyEvent;Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Landroidx/compose/ui/focus/FocusManager;Landroidx/compose/ui/platform/SoftwareKeyboardController;)Z",
        "preparedSelectionContext",
        "state",
        "isFromSoftKeyboard",
        "block",
        "Lkotlin/Function1;",
        "Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;",
        "Lkotlin/ExtensionFunctionType;",
        "getVisibleTextLayoutHeight",
        "",
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
.field private final deadKeyCombiner:Landroidx/compose/foundation/text/DeadKeyCombiner;

.field private final keyMapping:Landroidx/compose/foundation/text/KeyMapping;

.field private final preparedSelectionState:Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;

    invoke-direct {v0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;-><init>()V

    iput-object v0, p0, Landroidx/compose/foundation/text/input/internal/TextFieldKeyEventHandler;->preparedSelectionState:Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;

    .line 56
    new-instance v0, Landroidx/compose/foundation/text/DeadKeyCombiner;

    invoke-direct {v0}, Landroidx/compose/foundation/text/DeadKeyCombiner;-><init>()V

    iput-object v0, p0, Landroidx/compose/foundation/text/input/internal/TextFieldKeyEventHandler;->deadKeyCombiner:Landroidx/compose/foundation/text/DeadKeyCombiner;

    .line 57
    invoke-static {}, Landroidx/compose/foundation/text/KeyMapping_androidKt;->getPlatformDefaultKeyMapping()Landroidx/compose/foundation/text/KeyMapping;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/text/input/internal/TextFieldKeyEventHandler;->keyMapping:Landroidx/compose/foundation/text/KeyMapping;

    return-void
.end method

.method private final getVisibleTextLayoutHeight(Landroidx/compose/foundation/text/input/internal/TextLayoutState;)F
    .locals 4

    .line 259
    invoke-virtual {p1}, Landroidx/compose/foundation/text/input/internal/TextLayoutState;->getTextLayoutNodeCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_3

    .line 260
    invoke-virtual {p1}, Landroidx/compose/foundation/text/input/internal/TextLayoutState;->getDecoratorNodeCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, v2

    :goto_1
    if-eqz p1, :cond_2

    const/4 v1, 0x0

    const/4 v3, 0x2

    .line 261
    invoke-static {p1, v0, v1, v3, v2}, Landroidx/compose/ui/layout/LayoutCoordinates;->localBoundingBoxOf$default(Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/layout/LayoutCoordinates;ZILjava/lang/Object;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v2

    :cond_2
    if-eqz v2, :cond_3

    .line 262
    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Rect;->getSize-NH-jbRc()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result p1

    goto :goto_2

    :cond_3
    const/high16 p1, 0x7fc00000    # Float.NaN

    :goto_2
    return p1
.end method

.method private final preparedSelectionContext(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Landroidx/compose/foundation/text/input/internal/TextLayoutState;ZLkotlin/jvm/functions/Function1;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;",
            "Landroidx/compose/foundation/text/input/internal/TextLayoutState;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 237
    invoke-virtual {p2}, Landroidx/compose/foundation/text/input/internal/TextLayoutState;->getLayoutResult()Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object v2

    .line 238
    invoke-direct {p0, p2}, Landroidx/compose/foundation/text/input/internal/TextFieldKeyEventHandler;->getVisibleTextLayoutHeight(Landroidx/compose/foundation/text/input/internal/TextLayoutState;)F

    move-result v4

    .line 239
    new-instance p2, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    .line 244
    iget-object v5, p0, Landroidx/compose/foundation/text/input/internal/TextFieldKeyEventHandler;->preparedSelectionState:Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;

    move-object v0, p2

    move-object v1, p1

    move v3, p3

    .line 239
    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;-><init>(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Landroidx/compose/ui/text/TextLayoutResult;ZFLandroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;)V

    .line 246
    invoke-interface {p4, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    invoke-virtual {p2}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->getSelection-d9O1mEE()J

    move-result-wide p3

    invoke-virtual {p2}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->getInitialValue()Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->getSelection-d9O1mEE()J

    move-result-wide v0

    invoke-static {p3, p4, v0, v1}, Landroidx/compose/ui/text/TextRange;->equals-impl0(JJ)Z

    move-result p3

    if-nez p3, :cond_0

    .line 249
    invoke-virtual {p2}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->getSelection-d9O1mEE()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->selectCharsIn-5zc-tL8(J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onKeyEvent-6ptp14s(Landroid/view/KeyEvent;Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Landroidx/compose/foundation/text/input/internal/TextLayoutState;Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;ZZLkotlin/jvm/functions/Function0;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/KeyEvent;",
            "Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;",
            "Landroidx/compose/foundation/text/input/internal/TextLayoutState;",
            "Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;",
            "ZZ",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 84
    invoke-static/range {p1 .. p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->getType-ZmokQxo(Landroid/view/KeyEvent;)I

    move-result v2

    sget-object v3, Landroidx/compose/ui/input/key/KeyEventType;->Companion:Landroidx/compose/ui/input/key/KeyEventType$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/input/key/KeyEventType$Companion;->getKeyDown-CS__XNY()I

    move-result v3

    invoke-static {v2, v3}, Landroidx/compose/ui/input/key/KeyEventType;->equals-impl0(II)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 88
    :cond_0
    invoke-static/range {p1 .. p1}, Landroidx/compose/foundation/text/TextFieldKeyInput_androidKt;->isTypedEvent-ZmokQxo(Landroid/view/KeyEvent;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    .line 89
    iget-object v2, v0, Landroidx/compose/foundation/text/input/internal/TextFieldKeyEventHandler;->deadKeyCombiner:Landroidx/compose/foundation/text/DeadKeyCombiner;

    invoke-virtual {v2, v1}, Landroidx/compose/foundation/text/DeadKeyCombiner;->consume-ZmokQxo(Landroid/view/KeyEvent;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 91
    new-instance v5, Ljava/lang/StringBuilder;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v5, v2}, Landroidx/compose/foundation/text/StringHelpers_jvmKt;->appendCodePointX(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz p5, :cond_1

    .line 94
    invoke-static/range {p1 .. p1}, Landroidx/compose/foundation/text/input/internal/TextFieldKeyEventHandler_androidKt;->isFromSoftKeyboard-ZmokQxo(Landroid/view/KeyEvent;)Z

    move-result v1

    xor-int/2addr v1, v4

    .line 266
    invoke-static/range {p2 .. p2}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->access$getTextFieldState$p(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;)Landroidx/compose/foundation/text/input/TextFieldState;

    move-result-object v3

    .line 267
    invoke-static/range {p2 .. p2}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->access$getInputTransformation$p(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;)Landroidx/compose/foundation/text/input/InputTransformation;

    move-result-object v5

    .line 271
    sget-object v6, Landroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;->MergeIfPossible:Landroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;

    .line 274
    invoke-virtual {v3}, Landroidx/compose/foundation/text/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text/input/internal/EditingBuffer;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/compose/foundation/text/input/internal/EditingBuffer;->getChangeTracker()Landroidx/compose/foundation/text/input/internal/ChangeTracker;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/compose/foundation/text/input/internal/ChangeTracker;->clearChanges()V

    .line 275
    invoke-virtual {v3}, Landroidx/compose/foundation/text/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text/input/internal/EditingBuffer;

    move-result-object v7

    .line 96
    invoke-virtual {v7}, Landroidx/compose/foundation/text/input/internal/EditingBuffer;->commitComposition()V

    .line 97
    invoke-static {v7, v2, v4}, Landroidx/compose/foundation/text/input/internal/EditCommandKt;->commitText(Landroidx/compose/foundation/text/input/internal/EditingBuffer;Ljava/lang/String;I)V

    .line 277
    invoke-static {v3, v5, v1, v6}, Landroidx/compose/foundation/text/input/TextFieldState;->access$commitEditAsUser(Landroidx/compose/foundation/text/input/TextFieldState;Landroidx/compose/foundation/text/input/InputTransformation;ZLandroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;)V

    .line 99
    iget-object v1, v0, Landroidx/compose/foundation/text/input/internal/TextFieldKeyEventHandler;->preparedSelectionState:Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;

    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;->resetCachedX()V

    move v3, v4

    :cond_1
    return v3

    .line 107
    :cond_2
    iget-object v2, v0, Landroidx/compose/foundation/text/input/internal/TextFieldKeyEventHandler;->keyMapping:Landroidx/compose/foundation/text/KeyMapping;

    invoke-interface {v2, v1}, Landroidx/compose/foundation/text/KeyMapping;->map-ZmokQxo(Landroid/view/KeyEvent;)Landroidx/compose/foundation/text/KeyCommand;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 108
    invoke-virtual {v2}, Landroidx/compose/foundation/text/KeyCommand;->getEditsText()Z

    move-result v5

    if-eqz v5, :cond_3

    if-nez p5, :cond_3

    goto/16 :goto_3

    .line 112
    :cond_3
    invoke-static/range {p1 .. p1}, Landroidx/compose/foundation/text/input/internal/TextFieldKeyEventHandler_androidKt;->isFromSoftKeyboard-ZmokQxo(Landroid/view/KeyEvent;)Z

    move-result v9

    .line 284
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/foundation/text/input/internal/TextLayoutState;->getLayoutResult()Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object v8

    move-object/from16 v1, p3

    .line 285
    invoke-direct {v0, v1}, Landroidx/compose/foundation/text/input/internal/TextFieldKeyEventHandler;->getVisibleTextLayoutHeight(Landroidx/compose/foundation/text/input/internal/TextLayoutState;)F

    move-result v10

    .line 286
    new-instance v1, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    .line 291
    iget-object v11, v0, Landroidx/compose/foundation/text/input/internal/TextFieldKeyEventHandler;->preparedSelectionState:Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;

    move-object v6, v1

    move-object/from16 v7, p2

    .line 286
    invoke-direct/range {v6 .. v11}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;-><init>(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Landroidx/compose/ui/text/TextLayoutResult;ZFLandroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelectionState;)V

    .line 113
    sget-object v5, Landroidx/compose/foundation/text/input/internal/TextFieldKeyEventHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Landroidx/compose/foundation/text/KeyCommand;->ordinal()I

    move-result v2

    aget v2, v5, v2

    const/4 v5, -0x1

    const/4 v6, 0x0

    const-string v7, ""

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    .line 224
    :pswitch_0
    invoke-static {}, Landroidx/compose/foundation/text/KeyEventHelpers_androidKt;->showCharacterPalette()V

    goto/16 :goto_2

    .line 220
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->redo()V

    goto/16 :goto_2

    .line 216
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->undo()V

    goto/16 :goto_2

    .line 214
    :pswitch_3
    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->deselect()Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    goto/16 :goto_2

    .line 213
    :pswitch_4
    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->moveCursorToEnd()Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->selectMovement()Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    goto/16 :goto_2

    .line 212
    :pswitch_5
    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->moveCursorToHome()Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->selectMovement()Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    goto/16 :goto_2

    .line 211
    :pswitch_6
    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->moveCursorDownByPage()Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->selectMovement()Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    goto/16 :goto_2

    .line 210
    :pswitch_7
    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->moveCursorUpByPage()Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->selectMovement()Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    goto/16 :goto_2

    .line 209
    :pswitch_8
    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->moveCursorDownByLine()Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->selectMovement()Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    goto/16 :goto_2

    .line 208
    :pswitch_9
    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->moveCursorUpByLine()Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->selectMovement()Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    goto/16 :goto_2

    .line 207
    :pswitch_a
    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->moveCursorToLineRightSide()Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->selectMovement()Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    goto/16 :goto_2

    .line 206
    :pswitch_b
    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->moveCursorToLineLeftSide()Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->selectMovement()Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    goto/16 :goto_2

    .line 205
    :pswitch_c
    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->moveCursorToLineEnd()Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->selectMovement()Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    goto/16 :goto_2

    .line 204
    :pswitch_d
    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->moveCursorToLineStart()Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->selectMovement()Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    goto/16 :goto_2

    .line 203
    :pswitch_e
    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->moveCursorNextByParagraph()Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->selectMovement()Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    goto/16 :goto_2

    .line 202
    :pswitch_f
    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->moveCursorPrevByParagraph()Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->selectMovement()Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    goto/16 :goto_2

    .line 201
    :pswitch_10
    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->moveCursorRightByWord()Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->selectMovement()Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    goto/16 :goto_2

    .line 200
    :pswitch_11
    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->moveCursorLeftByWord()Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->selectMovement()Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    goto/16 :goto_2

    .line 199
    :pswitch_12
    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->moveCursorRight()Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->selectMovement()Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    goto/16 :goto_2

    .line 198
    :pswitch_13
    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->moveCursorLeft()Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->selectMovement()Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    goto/16 :goto_2

    .line 197
    :pswitch_14
    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->selectAll()Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    goto/16 :goto_2

    :pswitch_15
    if-nez p6, :cond_10

    .line 417
    invoke-static/range {p2 .. p2}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->access$getTextFieldState$p(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;)Landroidx/compose/foundation/text/input/TextFieldState;

    move-result-object v2

    .line 418
    invoke-static/range {p2 .. p2}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->access$getInputTransformation$p(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;)Landroidx/compose/foundation/text/input/InputTransformation;

    move-result-object v3

    .line 422
    sget-object v5, Landroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;->MergeIfPossible:Landroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;

    .line 425
    invoke-virtual {v2}, Landroidx/compose/foundation/text/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text/input/internal/EditingBuffer;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/foundation/text/input/internal/EditingBuffer;->getChangeTracker()Landroidx/compose/foundation/text/input/internal/ChangeTracker;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/foundation/text/input/internal/ChangeTracker;->clearChanges()V

    .line 426
    invoke-virtual {v2}, Landroidx/compose/foundation/text/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text/input/internal/EditingBuffer;

    move-result-object v6

    .line 189
    invoke-virtual {v6}, Landroidx/compose/foundation/text/input/internal/EditingBuffer;->commitComposition()V

    .line 190
    const-string v7, "\t"

    invoke-static {v6, v7, v4}, Landroidx/compose/foundation/text/input/internal/EditCommandKt;->commitText(Landroidx/compose/foundation/text/input/internal/EditingBuffer;Ljava/lang/String;I)V

    .line 428
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/foundation/text/input/TextFieldState;->access$commitEditAsUser(Landroidx/compose/foundation/text/input/TextFieldState;Landroidx/compose/foundation/text/input/InputTransformation;ZLandroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;)V

    goto/16 :goto_2

    :pswitch_16
    if-nez p6, :cond_4

    .line 395
    invoke-static/range {p2 .. p2}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->access$getTextFieldState$p(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;)Landroidx/compose/foundation/text/input/TextFieldState;

    move-result-object v2

    .line 396
    invoke-static/range {p2 .. p2}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->access$getInputTransformation$p(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;)Landroidx/compose/foundation/text/input/InputTransformation;

    move-result-object v3

    .line 400
    sget-object v5, Landroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;->MergeIfPossible:Landroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;

    .line 403
    invoke-virtual {v2}, Landroidx/compose/foundation/text/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text/input/internal/EditingBuffer;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/foundation/text/input/internal/EditingBuffer;->getChangeTracker()Landroidx/compose/foundation/text/input/internal/ChangeTracker;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/foundation/text/input/internal/ChangeTracker;->clearChanges()V

    .line 404
    invoke-virtual {v2}, Landroidx/compose/foundation/text/input/TextFieldState;->getMainBuffer$foundation_release()Landroidx/compose/foundation/text/input/internal/EditingBuffer;

    move-result-object v6

    .line 178
    invoke-virtual {v6}, Landroidx/compose/foundation/text/input/internal/EditingBuffer;->commitComposition()V

    .line 179
    const-string v7, "\n"

    invoke-static {v6, v7, v4}, Landroidx/compose/foundation/text/input/internal/EditCommandKt;->commitText(Landroidx/compose/foundation/text/input/internal/EditingBuffer;Ljava/lang/String;I)V

    .line 406
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/foundation/text/input/TextFieldState;->access$commitEditAsUser(Landroidx/compose/foundation/text/input/TextFieldState;Landroidx/compose/foundation/text/input/InputTransformation;ZLandroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;)V

    goto/16 :goto_2

    .line 182
    :cond_4
    invoke-interface/range {p7 .. p7}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto/16 :goto_2

    .line 375
    :pswitch_17
    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->getSelection-d9O1mEE()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v2

    if-nez v2, :cond_5

    .line 376
    invoke-static {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->access$getState$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;)Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    move-result-object v8

    .line 377
    move-object v9, v7

    check-cast v9, Ljava/lang/CharSequence;

    .line 378
    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->getSelection-d9O1mEE()J

    move-result-wide v10

    .line 379
    invoke-static {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->access$isFromSoftKeyboard$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;)Z

    move-result v2

    xor-int/lit8 v13, v2, 0x1

    const/4 v14, 0x4

    const/4 v15, 0x0

    const/4 v12, 0x0

    .line 376
    invoke-static/range {v8 .. v15}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->replaceText-M8tDOmk$default(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Ljava/lang/CharSequence;JLandroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;ZILjava/lang/Object;)V

    goto/16 :goto_2

    .line 171
    :cond_5
    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->getSelection-d9O1mEE()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v2

    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->getLineEndByOffset()I

    move-result v3

    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide v10

    .line 383
    invoke-static {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->access$getState$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;)Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    move-result-object v8

    .line 384
    move-object v9, v7

    check-cast v9, Ljava/lang/CharSequence;

    .line 386
    invoke-static {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->access$isFromSoftKeyboard$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;)Z

    move-result v2

    xor-int/lit8 v13, v2, 0x1

    const/4 v14, 0x4

    const/4 v15, 0x0

    const/4 v12, 0x0

    .line 383
    invoke-static/range {v8 .. v15}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->replaceText-M8tDOmk$default(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Ljava/lang/CharSequence;JLandroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;ZILjava/lang/Object;)V

    goto/16 :goto_2

    .line 359
    :pswitch_18
    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->getSelection-d9O1mEE()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v2

    if-nez v2, :cond_6

    .line 360
    invoke-static {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->access$getState$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;)Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    move-result-object v8

    .line 361
    move-object v9, v7

    check-cast v9, Ljava/lang/CharSequence;

    .line 362
    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->getSelection-d9O1mEE()J

    move-result-wide v10

    .line 363
    invoke-static {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->access$isFromSoftKeyboard$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;)Z

    move-result v2

    xor-int/lit8 v13, v2, 0x1

    const/4 v14, 0x4

    const/4 v15, 0x0

    const/4 v12, 0x0

    .line 360
    invoke-static/range {v8 .. v15}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->replaceText-M8tDOmk$default(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Ljava/lang/CharSequence;JLandroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;ZILjava/lang/Object;)V

    goto/16 :goto_2

    .line 165
    :cond_6
    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->getLineStartByOffset()I

    move-result v2

    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->getSelection-d9O1mEE()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v3

    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide v10

    .line 367
    invoke-static {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->access$getState$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;)Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    move-result-object v8

    .line 368
    move-object v9, v7

    check-cast v9, Ljava/lang/CharSequence;

    .line 370
    invoke-static {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->access$isFromSoftKeyboard$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;)Z

    move-result v2

    xor-int/lit8 v13, v2, 0x1

    const/4 v14, 0x4

    const/4 v15, 0x0

    const/4 v12, 0x0

    .line 367
    invoke-static/range {v8 .. v15}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->replaceText-M8tDOmk$default(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Ljava/lang/CharSequence;JLandroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;ZILjava/lang/Object;)V

    goto/16 :goto_2

    .line 343
    :pswitch_19
    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->getSelection-d9O1mEE()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v2

    if-nez v2, :cond_7

    .line 344
    invoke-static {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->access$getState$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;)Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    move-result-object v8

    .line 345
    move-object v9, v7

    check-cast v9, Ljava/lang/CharSequence;

    .line 346
    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->getSelection-d9O1mEE()J

    move-result-wide v10

    .line 347
    invoke-static {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->access$isFromSoftKeyboard$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;)Z

    move-result v2

    xor-int/lit8 v13, v2, 0x1

    const/4 v14, 0x4

    const/4 v15, 0x0

    const/4 v12, 0x0

    .line 344
    invoke-static/range {v8 .. v15}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->replaceText-M8tDOmk$default(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Ljava/lang/CharSequence;JLandroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;ZILjava/lang/Object;)V

    goto/16 :goto_2

    .line 159
    :cond_7
    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->getSelection-d9O1mEE()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v2

    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->getNextWordOffset()I

    move-result v3

    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide v10

    .line 351
    invoke-static {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->access$getState$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;)Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    move-result-object v8

    .line 352
    move-object v9, v7

    check-cast v9, Ljava/lang/CharSequence;

    .line 354
    invoke-static {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->access$isFromSoftKeyboard$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;)Z

    move-result v2

    xor-int/lit8 v13, v2, 0x1

    const/4 v14, 0x4

    const/4 v15, 0x0

    const/4 v12, 0x0

    .line 351
    invoke-static/range {v8 .. v15}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->replaceText-M8tDOmk$default(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Ljava/lang/CharSequence;JLandroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;ZILjava/lang/Object;)V

    goto/16 :goto_2

    .line 327
    :pswitch_1a
    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->getSelection-d9O1mEE()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v2

    if-nez v2, :cond_8

    .line 328
    invoke-static {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->access$getState$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;)Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    move-result-object v8

    .line 329
    move-object v9, v7

    check-cast v9, Ljava/lang/CharSequence;

    .line 330
    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->getSelection-d9O1mEE()J

    move-result-wide v10

    .line 331
    invoke-static {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->access$isFromSoftKeyboard$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;)Z

    move-result v2

    xor-int/lit8 v13, v2, 0x1

    const/4 v14, 0x4

    const/4 v15, 0x0

    const/4 v12, 0x0

    .line 328
    invoke-static/range {v8 .. v15}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->replaceText-M8tDOmk$default(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Ljava/lang/CharSequence;JLandroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;ZILjava/lang/Object;)V

    goto/16 :goto_2

    .line 153
    :cond_8
    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->getPreviousWordOffset()I

    move-result v2

    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->getSelection-d9O1mEE()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v3

    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide v10

    .line 335
    invoke-static {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->access$getState$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;)Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    move-result-object v8

    .line 336
    move-object v9, v7

    check-cast v9, Ljava/lang/CharSequence;

    .line 338
    invoke-static {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->access$isFromSoftKeyboard$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;)Z

    move-result v2

    xor-int/lit8 v13, v2, 0x1

    const/4 v14, 0x4

    const/4 v15, 0x0

    const/4 v12, 0x0

    .line 335
    invoke-static/range {v8 .. v15}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->replaceText-M8tDOmk$default(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Ljava/lang/CharSequence;JLandroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;ZILjava/lang/Object;)V

    goto/16 :goto_2

    .line 311
    :pswitch_1b
    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->getSelection-d9O1mEE()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v2

    if-nez v2, :cond_9

    .line 312
    invoke-static {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->access$getState$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;)Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    move-result-object v8

    .line 313
    move-object v9, v7

    check-cast v9, Ljava/lang/CharSequence;

    .line 314
    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->getSelection-d9O1mEE()J

    move-result-wide v10

    .line 315
    invoke-static {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->access$isFromSoftKeyboard$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;)Z

    move-result v2

    xor-int/lit8 v13, v2, 0x1

    const/4 v14, 0x4

    const/4 v15, 0x0

    const/4 v12, 0x0

    .line 312
    invoke-static/range {v8 .. v15}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->replaceText-M8tDOmk$default(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Ljava/lang/CharSequence;JLandroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;ZILjava/lang/Object;)V

    goto/16 :goto_2

    .line 145
    :cond_9
    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->getNextCharacterIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-eq v3, v5, :cond_a

    goto :goto_0

    :cond_a
    move-object v2, v6

    :goto_0
    if-eqz v2, :cond_b

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 146
    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->getSelection-d9O1mEE()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v3

    invoke-static {v3, v2}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->box-impl(J)Landroidx/compose/ui/text/TextRange;

    move-result-object v6

    :cond_b
    if-eqz v6, :cond_f

    .line 318
    invoke-virtual {v6}, Landroidx/compose/ui/text/TextRange;->unbox-impl()J

    move-result-wide v10

    .line 319
    invoke-static {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->access$getState$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;)Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    move-result-object v8

    .line 320
    move-object v9, v7

    check-cast v9, Ljava/lang/CharSequence;

    .line 322
    invoke-static {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->access$isFromSoftKeyboard$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;)Z

    move-result v2

    xor-int/lit8 v13, v2, 0x1

    const/4 v14, 0x4

    const/4 v15, 0x0

    const/4 v12, 0x0

    .line 319
    invoke-static/range {v8 .. v15}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->replaceText-M8tDOmk$default(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Ljava/lang/CharSequence;JLandroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;ZILjava/lang/Object;)V

    goto/16 :goto_2

    .line 294
    :pswitch_1c
    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->getSelection-d9O1mEE()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v2

    if-nez v2, :cond_c

    .line 295
    invoke-static {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->access$getState$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;)Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    move-result-object v8

    .line 296
    move-object v9, v7

    check-cast v9, Ljava/lang/CharSequence;

    .line 297
    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->getSelection-d9O1mEE()J

    move-result-wide v10

    .line 298
    invoke-static {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->access$isFromSoftKeyboard$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;)Z

    move-result v2

    xor-int/lit8 v13, v2, 0x1

    const/4 v14, 0x4

    const/4 v15, 0x0

    const/4 v12, 0x0

    .line 295
    invoke-static/range {v8 .. v15}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->replaceText-M8tDOmk$default(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Ljava/lang/CharSequence;JLandroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;ZILjava/lang/Object;)V

    goto/16 :goto_2

    .line 135
    :cond_c
    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->getPrecedingCharacterIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-eq v3, v5, :cond_d

    goto :goto_1

    :cond_d
    move-object v2, v6

    :goto_1
    if-eqz v2, :cond_e

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 136
    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->getSelection-d9O1mEE()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v3

    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->box-impl(J)Landroidx/compose/ui/text/TextRange;

    move-result-object v6

    :cond_e
    if-eqz v6, :cond_f

    .line 301
    invoke-virtual {v6}, Landroidx/compose/ui/text/TextRange;->unbox-impl()J

    move-result-wide v10

    .line 303
    invoke-static {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->access$getState$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;)Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    move-result-object v8

    .line 304
    move-object v9, v7

    check-cast v9, Ljava/lang/CharSequence;

    .line 306
    invoke-static {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->access$isFromSoftKeyboard$p(Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;)Z

    move-result v2

    xor-int/lit8 v13, v2, 0x1

    const/4 v14, 0x4

    const/4 v15, 0x0

    const/4 v12, 0x0

    .line 303
    invoke-static/range {v8 .. v15}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->replaceText-M8tDOmk$default(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Ljava/lang/CharSequence;JLandroidx/compose/foundation/text/input/internal/undo/TextFieldEditUndoBehavior;ZILjava/lang/Object;)V

    goto :goto_2

    .line 132
    :pswitch_1d
    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->moveCursorToEnd()Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    goto :goto_2

    .line 131
    :pswitch_1e
    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->moveCursorToHome()Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    goto :goto_2

    .line 130
    :pswitch_1f
    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->moveCursorToLineRightSide()Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    goto :goto_2

    .line 129
    :pswitch_20
    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->moveCursorToLineLeftSide()Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    goto :goto_2

    .line 128
    :pswitch_21
    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->moveCursorToLineEnd()Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    goto :goto_2

    .line 127
    :pswitch_22
    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->moveCursorToLineStart()Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    goto :goto_2

    .line 126
    :pswitch_23
    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->moveCursorDownByPage()Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    goto :goto_2

    .line 125
    :pswitch_24
    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->moveCursorUpByPage()Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    goto :goto_2

    .line 124
    :pswitch_25
    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->moveCursorDownByLine()Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    goto :goto_2

    .line 123
    :pswitch_26
    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->moveCursorUpByLine()Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    goto :goto_2

    .line 122
    :pswitch_27
    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->moveCursorNextByParagraph()Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    goto :goto_2

    .line 121
    :pswitch_28
    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->moveCursorPrevByParagraph()Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    goto :goto_2

    .line 120
    :pswitch_29
    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->moveCursorRightByWord()Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    goto :goto_2

    .line 119
    :pswitch_2a
    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->moveCursorLeftByWord()Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    goto :goto_2

    .line 118
    :pswitch_2b
    sget-object v2, Landroidx/compose/foundation/text/input/internal/TextFieldKeyEventHandler$onKeyEvent$2$2;->INSTANCE:Landroidx/compose/foundation/text/input/internal/TextFieldKeyEventHandler$onKeyEvent$2$2;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v1, v2}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->collapseRightOr(Lkotlin/jvm/functions/Function1;)Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    goto :goto_2

    .line 117
    :pswitch_2c
    sget-object v2, Landroidx/compose/foundation/text/input/internal/TextFieldKeyEventHandler$onKeyEvent$2$1;->INSTANCE:Landroidx/compose/foundation/text/input/internal/TextFieldKeyEventHandler$onKeyEvent$2$1;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v1, v2}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->collapseLeftOr(Lkotlin/jvm/functions/Function1;)Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;

    goto :goto_2

    .line 116
    :pswitch_2d
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->cut()V

    goto :goto_2

    .line 115
    :pswitch_2e
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->paste()V

    goto :goto_2

    :pswitch_2f
    move-object/from16 v2, p4

    .line 114
    invoke-virtual {v2, v3}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->copy(Z)V

    :cond_f
    :goto_2
    move v3, v4

    .line 435
    :cond_10
    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->getSelection-d9O1mEE()J

    move-result-wide v4

    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->getInitialValue()Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->getSelection-d9O1mEE()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Landroidx/compose/ui/text/TextRange;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_11

    .line 437
    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldPreparedSelection;->getSelection-d9O1mEE()J

    move-result-wide v1

    move-object/from16 v4, p2

    invoke-virtual {v4, v1, v2}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->selectCharsIn-5zc-tL8(J)V

    :cond_11
    :goto_3
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPreKeyEvent-MyFupTE(Landroid/view/KeyEvent;Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Landroidx/compose/ui/focus/FocusManager;Landroidx/compose/ui/platform/SoftwareKeyboardController;)Z
    .locals 0

    .line 66
    invoke-virtual {p2}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->getVisualText()Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->getSelection-d9O1mEE()J

    move-result-wide p4

    .line 67
    invoke-static {p4, p5}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {p1}, Landroidx/compose/foundation/text/KeyEventHelpers_androidKt;->cancelsTextSelection-ZmokQxo(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 68
    invoke-virtual {p3}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->deselect()V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
