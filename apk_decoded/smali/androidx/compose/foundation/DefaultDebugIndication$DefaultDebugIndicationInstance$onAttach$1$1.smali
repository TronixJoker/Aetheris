.class final Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1$1;
.super Ljava/lang/Object;
.source "Indication.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u008a@\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "interaction",
        "Landroidx/compose/foundation/interaction/Interaction;",
        "emit",
        "(Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $focusCount:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic $hoverCount:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic $pressCount:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic this$0:Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1$1;->$pressCount:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p2, p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1$1;->$hoverCount:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p3, p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1$1;->$focusCount:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p4, p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1$1;->this$0:Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/interaction/Interaction;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 242
    instance-of p2, p1, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1$1;->$pressCount:Lkotlin/jvm/internal/Ref$IntRef;

    iget p1, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget-object p2, p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1$1;->$pressCount:Lkotlin/jvm/internal/Ref$IntRef;

    add-int/2addr p1, v0

    iput p1, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto :goto_0

    .line 243
    :cond_0
    instance-of p2, p1, Landroidx/compose/foundation/interaction/PressInteraction$Release;

    if-eqz p2, :cond_1

    iget-object p1, p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1$1;->$pressCount:Lkotlin/jvm/internal/Ref$IntRef;

    iget p1, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget-object p2, p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1$1;->$pressCount:Lkotlin/jvm/internal/Ref$IntRef;

    add-int/lit8 p1, p1, -0x1

    iput p1, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto :goto_0

    .line 244
    :cond_1
    instance-of p2, p1, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;

    if-eqz p2, :cond_2

    iget-object p1, p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1$1;->$pressCount:Lkotlin/jvm/internal/Ref$IntRef;

    iget p1, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget-object p2, p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1$1;->$pressCount:Lkotlin/jvm/internal/Ref$IntRef;

    add-int/lit8 p1, p1, -0x1

    iput p1, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto :goto_0

    .line 245
    :cond_2
    instance-of p2, p1, Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    if-eqz p2, :cond_3

    iget-object p1, p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1$1;->$hoverCount:Lkotlin/jvm/internal/Ref$IntRef;

    iget p1, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget-object p2, p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1$1;->$hoverCount:Lkotlin/jvm/internal/Ref$IntRef;

    add-int/2addr p1, v0

    iput p1, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto :goto_0

    .line 246
    :cond_3
    instance-of p2, p1, Landroidx/compose/foundation/interaction/HoverInteraction$Exit;

    if-eqz p2, :cond_4

    iget-object p1, p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1$1;->$hoverCount:Lkotlin/jvm/internal/Ref$IntRef;

    iget p1, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget-object p2, p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1$1;->$hoverCount:Lkotlin/jvm/internal/Ref$IntRef;

    add-int/lit8 p1, p1, -0x1

    iput p1, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto :goto_0

    .line 247
    :cond_4
    instance-of p2, p1, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    if-eqz p2, :cond_5

    iget-object p1, p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1$1;->$focusCount:Lkotlin/jvm/internal/Ref$IntRef;

    iget p1, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget-object p2, p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1$1;->$focusCount:Lkotlin/jvm/internal/Ref$IntRef;

    add-int/2addr p1, v0

    iput p1, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto :goto_0

    .line 248
    :cond_5
    instance-of p1, p1, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;

    if-eqz p1, :cond_6

    iget-object p1, p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1$1;->$focusCount:Lkotlin/jvm/internal/Ref$IntRef;

    iget p1, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget-object p2, p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1$1;->$focusCount:Lkotlin/jvm/internal/Ref$IntRef;

    add-int/lit8 p1, p1, -0x1

    iput p1, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 250
    :cond_6
    :goto_0
    iget-object p1, p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1$1;->$pressCount:Lkotlin/jvm/internal/Ref$IntRef;

    iget p1, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 p2, 0x0

    if-lez p1, :cond_7

    move p1, v0

    goto :goto_1

    :cond_7
    move p1, p2

    .line 251
    :goto_1
    iget-object v1, p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1$1;->$hoverCount:Lkotlin/jvm/internal/Ref$IntRef;

    iget v1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-lez v1, :cond_8

    move v1, v0

    goto :goto_2

    :cond_8
    move v1, p2

    .line 252
    :goto_2
    iget-object v2, p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1$1;->$focusCount:Lkotlin/jvm/internal/Ref$IntRef;

    iget v2, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-lez v2, :cond_9

    move v2, v0

    goto :goto_3

    :cond_9
    move v2, p2

    .line 254
    :goto_3
    iget-object v3, p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1$1;->this$0:Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;

    invoke-static {v3}, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;->access$isPressed$p(Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;)Z

    move-result v3

    if-eq v3, p1, :cond_a

    .line 255
    iget-object p2, p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1$1;->this$0:Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;

    invoke-static {p2, p1}, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;->access$setPressed$p(Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;Z)V

    move p2, v0

    .line 258
    :cond_a
    iget-object p1, p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1$1;->this$0:Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;

    invoke-static {p1}, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;->access$isHovered$p(Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;)Z

    move-result p1

    if-eq p1, v1, :cond_b

    .line 259
    iget-object p1, p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1$1;->this$0:Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;

    invoke-static {p1, v1}, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;->access$setHovered$p(Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;Z)V

    move p2, v0

    .line 262
    :cond_b
    iget-object p1, p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1$1;->this$0:Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;

    invoke-static {p1}, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;->access$isFocused$p(Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;)Z

    move-result p1

    if-eq p1, v2, :cond_c

    .line 263
    iget-object p1, p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1$1;->this$0:Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;

    invoke-static {p1, v2}, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;->access$setFocused$p(Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;Z)V

    goto :goto_4

    :cond_c
    move v0, p2

    :goto_4
    if-eqz v0, :cond_d

    .line 266
    iget-object p1, p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1$1;->this$0:Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;

    check-cast p1, Landroidx/compose/ui/node/DrawModifierNode;

    invoke-static {p1}, Landroidx/compose/ui/node/DrawModifierNodeKt;->invalidateDraw(Landroidx/compose/ui/node/DrawModifierNode;)V

    .line 267
    :cond_d
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 240
    check-cast p1, Landroidx/compose/foundation/interaction/Interaction;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1$1;->emit(Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
