.class final Landroidx/compose/ui/viewinterop/FocusGroupPropertiesNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "FocusGroupNode.android.kt"

# interfaces
.implements Landroidx/compose/ui/focus/FocusPropertiesModifierNode;
.implements Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFocusGroupNode.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FocusGroupNode.android.kt\nandroidx/compose/ui/viewinterop/FocusGroupPropertiesNode\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 NodeKind.kt\nandroidx/compose/ui/node/Nodes\n+ 4 DelegatableNode.kt\nandroidx/compose/ui/node/DelegatableNodeKt\n+ 5 InlineClassHelper.kt\nandroidx/compose/ui/internal/InlineClassHelperKt\n+ 6 Modifier.kt\nandroidx/compose/ui/Modifier$Node\n+ 7 DelegatingNode.kt\nandroidx/compose/ui/node/DelegatingNode\n+ 8 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n+ 9 FocusTransactionManager.kt\nandroidx/compose/ui/focus/FocusTransactionManager\n+ 10 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n*L\n1#1,240:1\n1#2:241\n1#2:325\n96#3:242\n240#4:243\n193#4,12:244\n205#4,6:263\n241#4:269\n432#4,6:270\n442#4,2:277\n444#4,8:282\n452#4,9:293\n461#4,8:305\n242#4:313\n212#4,3:314\n197#4:317\n42#5,7:256\n249#6:276\n245#7,3:279\n248#7,3:302\n1208#8:290\n1187#8,2:291\n40#9,7:318\n47#9,4:328\n728#10,2:326\n*S KotlinDebug\n*F\n+ 1 FocusGroupNode.android.kt\nandroidx/compose/ui/viewinterop/FocusGroupPropertiesNode\n*L\n151#1:325\n125#1:242\n125#1:243\n125#1:244,12\n125#1:263,6\n125#1:269\n125#1:270,6\n125#1:277,2\n125#1:282,8\n125#1:293,9\n125#1:305,8\n125#1:313\n125#1:314,3\n125#1:317\n125#1:256,7\n125#1:276\n125#1:279,3\n125#1:302,3\n125#1:290\n125#1:291,2\n151#1:318,7\n151#1:328,4\n151#1:326,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B\u0005\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0008\u0010\u0010\u001a\u00020\u0011H\u0002J\u0008\u0010\u0012\u001a\u00020\rH\u0016J\u0008\u0010\u0013\u001a\u00020\rH\u0016J\u0018\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0018\u0010\u001a\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001b\u0010\u0019J\u001c\u0010\u001c\u001a\u00020\r2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0007H\u0016J\u0010\u0010\u001f\u001a\u00020\r2\u0006\u0010 \u001a\u00020\u0007H\u0016J\u0010\u0010!\u001a\u00020\r2\u0006\u0010 \u001a\u00020\u0007H\u0016R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000b\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\""
    }
    d2 = {
        "Landroidx/compose/ui/viewinterop/FocusGroupPropertiesNode;",
        "Landroidx/compose/ui/Modifier$Node;",
        "Landroidx/compose/ui/focus/FocusPropertiesModifierNode;",
        "Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;",
        "Landroid/view/View$OnAttachStateChangeListener;",
        "()V",
        "focusedChild",
        "Landroid/view/View;",
        "getFocusedChild",
        "()Landroid/view/View;",
        "setFocusedChild",
        "(Landroid/view/View;)V",
        "applyFocusProperties",
        "",
        "focusProperties",
        "Landroidx/compose/ui/focus/FocusProperties;",
        "getFocusTargetOfEmbeddedViewWrapper",
        "Landroidx/compose/ui/focus/FocusTargetNode;",
        "onAttach",
        "onDetach",
        "onEnter",
        "Landroidx/compose/ui/focus/FocusRequester;",
        "focusDirection",
        "Landroidx/compose/ui/focus/FocusDirection;",
        "onEnter-3ESFkO8",
        "(I)Landroidx/compose/ui/focus/FocusRequester;",
        "onExit",
        "onExit-3ESFkO8",
        "onGlobalFocusChanged",
        "oldFocus",
        "newFocus",
        "onViewAttachedToWindow",
        "v",
        "onViewDetachedFromWindow",
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


# instance fields
.field private focusedChild:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    return-void
.end method

.method private final getFocusTargetOfEmbeddedViewWrapper()Landroidx/compose/ui/focus/FocusTargetNode;
    .locals 11

    .line 125
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/node/DelegatableNode;

    const/16 v1, 0x400

    .line 242
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    .line 255
    invoke-interface {v0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "visitLocalDescendants called on an unattached node"

    .line 260
    invoke-static {v2}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 263
    :cond_0
    invoke-interface {v0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    .line 264
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v2

    and-int/2addr v2, v1

    if-eqz v2, :cond_b

    .line 265
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-eqz v0, :cond_b

    .line 267
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v4

    and-int/2addr v4, v1

    if-eqz v4, :cond_a

    const/4 v4, 0x0

    move-object v5, v0

    move-object v6, v4

    :goto_1
    if-eqz v5, :cond_a

    .line 273
    instance-of v7, v5, Landroidx/compose/ui/focus/FocusTargetNode;

    const/4 v8, 0x1

    if-eqz v7, :cond_2

    .line 274
    check-cast v5, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v3, :cond_1

    return-object v5

    :cond_1
    move v3, v8

    goto :goto_4

    .line 276
    :cond_2
    invoke-virtual {v5}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v7

    and-int/2addr v7, v1

    if-eqz v7, :cond_9

    .line 275
    instance-of v7, v5, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v7, :cond_9

    .line 278
    move-object v7, v5

    check-cast v7, Landroidx/compose/ui/node/DelegatingNode;

    .line 279
    invoke-virtual {v7}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    move v9, v2

    :goto_2
    if-eqz v7, :cond_8

    .line 276
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v10

    and-int/2addr v10, v1

    if-eqz v10, :cond_7

    add-int/lit8 v9, v9, 0x1

    if-ne v9, v8, :cond_3

    move-object v5, v7

    goto :goto_3

    :cond_3
    if-nez v6, :cond_4

    .line 292
    new-instance v6, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v10, 0x10

    new-array v10, v10, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v6, v10, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_4
    if-eqz v5, :cond_6

    if-eqz v6, :cond_5

    .line 295
    invoke-virtual {v6, v5}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    :cond_5
    move-object v5, v4

    :cond_6
    if-eqz v6, :cond_7

    .line 298
    invoke-virtual {v6, v7}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 302
    :cond_7
    :goto_3
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    goto :goto_2

    :cond_8
    if-ne v9, v8, :cond_9

    goto :goto_1

    .line 310
    :cond_9
    :goto_4
    invoke-static {v6}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    goto :goto_1

    .line 314
    :cond_a
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    goto :goto_0

    .line 313
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 129
    const-string v1, "Could not find focus target of embedded view wrapper"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public applyFocusProperties(Landroidx/compose/ui/focus/FocusProperties;)V
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-interface {p1, v0}, Landroidx/compose/ui/focus/FocusProperties;->setCanFocus(Z)V

    .line 69
    new-instance v0, Landroidx/compose/ui/viewinterop/FocusGroupPropertiesNode$applyFocusProperties$1;

    invoke-direct {v0, p0}, Landroidx/compose/ui/viewinterop/FocusGroupPropertiesNode$applyFocusProperties$1;-><init>(Ljava/lang/Object;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, v0}, Landroidx/compose/ui/focus/FocusProperties;->setEnter(Lkotlin/jvm/functions/Function1;)V

    .line 71
    new-instance v0, Landroidx/compose/ui/viewinterop/FocusGroupPropertiesNode$applyFocusProperties$2;

    invoke-direct {v0, p0}, Landroidx/compose/ui/viewinterop/FocusGroupPropertiesNode$applyFocusProperties$2;-><init>(Ljava/lang/Object;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, v0}, Landroidx/compose/ui/focus/FocusProperties;->setExit(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final getFocusedChild()Landroid/view/View;
    .locals 1

    .line 64
    iget-object v0, p0, Landroidx/compose/ui/viewinterop/FocusGroupPropertiesNode;->focusedChild:Landroid/view/View;

    return-object v0
.end method

.method public onAttach()V
    .locals 2

    .line 175
    invoke-super {p0}, Landroidx/compose/ui/Modifier$Node;->onAttach()V

    .line 176
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/Modifier$Node;

    invoke-static {v0}, Landroidx/compose/ui/viewinterop/FocusGroupNode_androidKt;->access$getView(Landroidx/compose/ui/Modifier$Node;)Landroid/view/View;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 180
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/Modifier$Node;

    invoke-static {v0}, Landroidx/compose/ui/viewinterop/FocusGroupNode_androidKt;->access$getView(Landroidx/compose/ui/Modifier$Node;)Landroid/view/View;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const/4 v0, 0x0

    .line 181
    iput-object v0, p0, Landroidx/compose/ui/viewinterop/FocusGroupPropertiesNode;->focusedChild:Landroid/view/View;

    .line 182
    invoke-super {p0}, Landroidx/compose/ui/Modifier$Node;->onDetach()V

    return-void
.end method

.method public final onEnter-3ESFkO8(I)Landroidx/compose/ui/focus/FocusRequester;
    .locals 4

    .line 77
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/Modifier$Node;

    invoke-static {v0}, Landroidx/compose/ui/viewinterop/FocusGroupNode_androidKt;->access$getView(Landroidx/compose/ui/Modifier$Node;)Landroid/view/View;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 80
    :cond_0
    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {v1}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v2

    invoke-interface {v2}, Landroidx/compose/ui/node/Owner;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object v2

    .line 81
    invoke-static {v1}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type android.view.View"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    .line 84
    invoke-static {p1}, Landroidx/compose/ui/focus/FocusInteropUtils_androidKt;->toAndroidFocusDirection-3ESFkO8(I)Ljava/lang/Integer;

    move-result-object p1

    .line 85
    invoke-static {v2, v1, v0}, Landroidx/compose/ui/viewinterop/FocusGroupNode_androidKt;->access$getCurrentlyFocusedRect(Landroidx/compose/ui/focus/FocusOwner;Landroid/view/View;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    .line 83
    invoke-static {v0, p1, v1}, Landroidx/compose/ui/focus/FocusInteropUtils_androidKt;->requestInteropFocus(Landroid/view/View;Ljava/lang/Integer;Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 87
    sget-object p1, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/focus/FocusRequester$Companion;->getDefault()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object p1

    goto :goto_0

    :cond_1
    sget-object p1, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/focus/FocusRequester$Companion;->getCancel()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object p1

    :goto_0
    return-object p1

    .line 78
    :cond_2
    :goto_1
    sget-object p1, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/focus/FocusRequester$Companion;->getDefault()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object p1

    return-object p1
.end method

.method public final onExit-3ESFkO8(I)Landroidx/compose/ui/focus/FocusRequester;
    .locals 7

    .line 91
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/Modifier$Node;

    invoke-static {v0}, Landroidx/compose/ui/viewinterop/FocusGroupNode_androidKt;->access$getView(Landroidx/compose/ui/Modifier$Node;)Landroid/view/View;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object p1, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/focus/FocusRequester$Companion;->getDefault()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object p1

    return-object p1

    .line 94
    :cond_0
    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {v1}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v2

    invoke-interface {v2}, Landroidx/compose/ui/node/Owner;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object v2

    .line 95
    invoke-static {v1}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type android.view.View"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    .line 98
    instance-of v3, v0, Landroid/view/ViewGroup;

    const-string v4, "host view did not take focus"

    if-nez v3, :cond_2

    .line 99
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 100
    sget-object p1, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/focus/FocusRequester$Companion;->getDefault()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object p1

    return-object p1

    .line 99
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 103
    :cond_2
    invoke-static {v2, v1, v0}, Landroidx/compose/ui/viewinterop/FocusGroupNode_androidKt;->access$getCurrentlyFocusedRect(Landroidx/compose/ui/focus/FocusOwner;Landroid/view/View;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    .line 104
    invoke-static {p1}, Landroidx/compose/ui/focus/FocusInteropUtils_androidKt;->toAndroidFocusDirection-3ESFkO8(I)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_3
    const/16 p1, 0x82

    .line 106
    :goto_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    .line 107
    iget-object v5, p0, Landroidx/compose/ui/viewinterop/FocusGroupPropertiesNode;->focusedChild:Landroid/view/View;

    if-eqz v5, :cond_4

    .line 108
    move-object v6, v1

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v3, v6, v5, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    goto :goto_1

    .line 110
    :cond_4
    move-object v5, v1

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v3, v5, v2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v3

    :goto_1
    if-eqz v3, :cond_5

    .line 113
    invoke-static {v0, v3}, Landroidx/compose/ui/viewinterop/FocusGroupNode_androidKt;->access$containsDescendant(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 114
    invoke-virtual {v3, p1, v2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    .line 116
    sget-object p1, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/focus/FocusRequester$Companion;->getCancel()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object p1

    return-object p1

    .line 118
    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 119
    sget-object p1, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/focus/FocusRequester$Companion;->getDefault()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object p1

    return-object p1

    .line 118
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onGlobalFocusChanged(Landroid/view/View;Landroid/view/View;)V
    .locals 6

    .line 133
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getOwner$ui_release()Landroidx/compose/ui/node/Owner;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 134
    :cond_0
    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/Modifier$Node;

    invoke-static {v1}, Landroidx/compose/ui/viewinterop/FocusGroupNode_androidKt;->access$getView(Landroidx/compose/ui/Modifier$Node;)Landroid/view/View;

    move-result-object v1

    .line 135
    invoke-static {v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v2

    invoke-interface {v2}, Landroidx/compose/ui/node/Owner;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object v2

    .line 136
    invoke-static {v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    .line 138
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v1, p1}, Landroidx/compose/ui/viewinterop/FocusGroupNode_androidKt;->access$containsDescendant(Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v3

    goto :goto_0

    :cond_1
    move p1, v4

    :goto_0
    if-eqz p2, :cond_2

    .line 140
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v1, p2}, Landroidx/compose/ui/viewinterop/FocusGroupNode_androidKt;->access$containsDescendant(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_1

    :cond_2
    move v0, v4

    :goto_1
    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    .line 144
    iput-object p2, p0, Landroidx/compose/ui/viewinterop/FocusGroupPropertiesNode;->focusedChild:Landroid/view/View;

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_5

    .line 148
    iput-object p2, p0, Landroidx/compose/ui/viewinterop/FocusGroupPropertiesNode;->focusedChild:Landroid/view/View;

    .line 149
    invoke-direct {p0}, Landroidx/compose/ui/viewinterop/FocusGroupPropertiesNode;->getFocusTargetOfEmbeddedViewWrapper()Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object p1

    .line 150
    invoke-virtual {p1}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/compose/ui/focus/FocusStateImpl;->getHasFocus()Z

    move-result p2

    if-nez p2, :cond_7

    .line 151
    invoke-interface {v2}, Landroidx/compose/ui/focus/FocusOwner;->getFocusTransactionManager()Landroidx/compose/ui/focus/FocusTransactionManager;

    move-result-object p2

    .line 322
    :try_start_0
    invoke-static {p2}, Landroidx/compose/ui/focus/FocusTransactionManager;->access$getOngoingTransaction$p(Landroidx/compose/ui/focus/FocusTransactionManager;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p2}, Landroidx/compose/ui/focus/FocusTransactionManager;->access$cancelTransaction(Landroidx/compose/ui/focus/FocusTransactionManager;)V

    .line 323
    :cond_4
    invoke-static {p2}, Landroidx/compose/ui/focus/FocusTransactionManager;->access$beginTransaction(Landroidx/compose/ui/focus/FocusTransactionManager;)V

    .line 152
    invoke-static {p1}, Landroidx/compose/ui/focus/FocusTransactionsKt;->performRequestFocus(Landroidx/compose/ui/focus/FocusTargetNode;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    invoke-static {p2}, Landroidx/compose/ui/focus/FocusTransactionManager;->access$commitTransaction(Landroidx/compose/ui/focus/FocusTransactionManager;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    invoke-static {p2}, Landroidx/compose/ui/focus/FocusTransactionManager;->access$commitTransaction(Landroidx/compose/ui/focus/FocusTransactionManager;)V

    throw p1

    :cond_5
    const/4 p2, 0x0

    if-eqz p1, :cond_6

    .line 156
    iput-object p2, p0, Landroidx/compose/ui/viewinterop/FocusGroupPropertiesNode;->focusedChild:Landroid/view/View;

    .line 157
    invoke-direct {p0}, Landroidx/compose/ui/viewinterop/FocusGroupPropertiesNode;->getFocusTargetOfEmbeddedViewWrapper()Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object p1

    .line 158
    invoke-virtual {p1}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/ui/focus/FocusStateImpl;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 163
    sget-object p1, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getExit-dhqQ-8s()I

    move-result p1

    .line 159
    invoke-interface {v2, v4, v3, v4, p1}, Landroidx/compose/ui/focus/FocusOwner;->clearFocus-I7lrPNg(ZZZI)Z

    goto :goto_2

    .line 169
    :cond_6
    iput-object p2, p0, Landroidx/compose/ui/viewinterop/FocusGroupPropertiesNode;->focusedChild:Landroid/view/View;

    :cond_7
    :goto_2
    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 186
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    move-object v0, p0

    check-cast v0, Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .line 190
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    move-object v0, p0

    check-cast v0, Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->removeOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    return-void
.end method

.method public final setFocusedChild(Landroid/view/View;)V
    .locals 0

    .line 64
    iput-object p1, p0, Landroidx/compose/ui/viewinterop/FocusGroupPropertiesNode;->focusedChild:Landroid/view/View;

    return-void
.end method
