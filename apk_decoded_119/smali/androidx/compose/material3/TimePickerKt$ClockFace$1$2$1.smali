.class final Landroidx/compose/material3/TimePickerKt$ClockFace$1$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TimePicker.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/TimePickerKt$ClockFace$1$2;->invoke(Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTimePicker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TimePicker.kt\nandroidx/compose/material3/TimePickerKt$ClockFace$1$2$1\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,2008:1\n1223#2,6:2009\n*S KotlinDebug\n*F\n+ 1 TimePicker.kt\nandroidx/compose/material3/TimePickerKt$ClockFace$1$2$1\n*L\n1538#1:2009,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\u000b\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "(Landroidx/compose/runtime/Composer;I)V"
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
.field final synthetic $autoSwitchToMinute:Z

.field final synthetic $screen:Landroidx/collection/IntList;

.field final synthetic $state:Landroidx/compose/material3/AnalogTimePickerState;


# direct methods
.method constructor <init>(Landroidx/collection/IntList;Landroidx/compose/material3/AnalogTimePickerState;Z)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/TimePickerKt$ClockFace$1$2$1;->$screen:Landroidx/collection/IntList;

    iput-object p2, p0, Landroidx/compose/material3/TimePickerKt$ClockFace$1$2$1;->$state:Landroidx/compose/material3/AnalogTimePickerState;

    iput-boolean p3, p0, Landroidx/compose/material3/TimePickerKt$ClockFace$1$2$1;->$autoSwitchToMinute:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1529
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/TimePickerKt$ClockFace$1$2$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 11

    const-string v0, "C1551@61690L552,1545@61343L899:TimePicker.kt#uh7d8r"

    invoke-static {p1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v0, p2, 0x3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1530
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1564
    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_4

    .line 1530
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    const-string/jumbo v1, "androidx.compose.material3.ClockFace.<anonymous>.<anonymous>.<anonymous> (TimePicker.kt:1529)"

    const v2, 0x76c8d1d0

    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    const p2, 0x5c360fd6

    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string p2, "*1537@61008L36,1536@60943L271"

    invoke-static {p1, p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/compose/material3/TimePickerKt$ClockFace$1$2$1;->$screen:Landroidx/collection/IntList;

    invoke-virtual {p2}, Landroidx/collection/IntList;->getSize()I

    move-result p2

    iget-object v6, p0, Landroidx/compose/material3/TimePickerKt$ClockFace$1$2$1;->$state:Landroidx/compose/material3/AnalogTimePickerState;

    iget-object v7, p0, Landroidx/compose/material3/TimePickerKt$ClockFace$1$2$1;->$screen:Landroidx/collection/IntList;

    iget-boolean v8, p0, Landroidx/compose/material3/TimePickerKt$ClockFace$1$2$1;->$autoSwitchToMinute:Z

    const/4 v9, 0x0

    move v10, v9

    :goto_1
    const/4 v0, 0x1

    if-ge v10, p2, :cond_7

    .line 1532
    invoke-virtual {v6}, Landroidx/compose/material3/AnalogTimePickerState;->is24hour()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v6}, Landroidx/compose/material3/AnalogTimePickerState;->getSelection-yecRtBI()I

    move-result v1

    sget-object v2, Landroidx/compose/material3/TimePickerSelectionMode;->Companion:Landroidx/compose/material3/TimePickerSelectionMode$Companion;

    invoke-virtual {v2}, Landroidx/compose/material3/TimePickerSelectionMode$Companion;->getMinute-yecRtBI()I

    move-result v2

    invoke-static {v1, v2}, Landroidx/compose/material3/TimePickerSelectionMode;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    .line 1535
    :cond_3
    invoke-virtual {v7, v10}, Landroidx/collection/IntList;->get(I)I

    move-result v1

    rem-int/lit8 v1, v1, 0xc

    goto :goto_3

    .line 1533
    :cond_4
    :goto_2
    invoke-virtual {v7, v10}, Landroidx/collection/IntList;->get(I)I

    move-result v1

    :goto_3
    move v2, v1

    .line 1538
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    const v3, 0x2a2a6228

    const-string v4, "CC(remember):TimePicker.kt#9igjgp"

    invoke-static {p1, v3, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {p1, v10}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v3

    .line 2009
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_5

    .line 2010
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v4, v3, :cond_6

    .line 1538
    :cond_5
    new-instance v3, Landroidx/compose/material3/TimePickerKt$ClockFace$1$2$1$1$1$1;

    invoke-direct {v3, v10}, Landroidx/compose/material3/TimePickerKt$ClockFace$1$2$1$1$1$1;-><init>(I)V

    move-object v4, v3

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 2012
    invoke-interface {p1, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1538
    :cond_6
    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const/4 v3, 0x0

    invoke-static {v1, v9, v4, v0, v3}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/4 v5, 0x0

    move-object v1, v6

    move v3, v8

    move-object v4, p1

    .line 1537
    invoke-static/range {v0 .. v5}, Landroidx/compose/material3/TimePickerKt;->access$ClockText(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/AnalogTimePickerState;IZLandroidx/compose/runtime/Composer;I)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1530
    :cond_7
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 1545
    iget-object p2, p0, Landroidx/compose/material3/TimePickerKt$ClockFace$1$2$1;->$state:Landroidx/compose/material3/AnalogTimePickerState;

    invoke-virtual {p2}, Landroidx/compose/material3/AnalogTimePickerState;->getSelection-yecRtBI()I

    move-result p2

    sget-object v1, Landroidx/compose/material3/TimePickerSelectionMode;->Companion:Landroidx/compose/material3/TimePickerSelectionMode$Companion;

    invoke-virtual {v1}, Landroidx/compose/material3/TimePickerSelectionMode$Companion;->getHour-yecRtBI()I

    move-result v1

    invoke-static {p2, v1}, Landroidx/compose/material3/TimePickerSelectionMode;->equals-impl0(II)Z

    move-result p2

    if-eqz p2, :cond_8

    iget-object p2, p0, Landroidx/compose/material3/TimePickerKt$ClockFace$1$2$1;->$state:Landroidx/compose/material3/AnalogTimePickerState;

    invoke-virtual {p2}, Landroidx/compose/material3/AnalogTimePickerState;->is24hour()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 1548
    sget-object p2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast p2, Landroidx/compose/ui/Modifier;

    sget-object v1, Landroidx/compose/material3/LayoutId;->InnerCircle:Landroidx/compose/material3/LayoutId;

    invoke-static {p2, v1}, Landroidx/compose/ui/layout/LayoutIdKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object p2

    .line 1549
    sget-object v1, Landroidx/compose/material3/tokens/TimePickerTokens;->INSTANCE:Landroidx/compose/material3/tokens/TimePickerTokens;

    invoke-virtual {v1}, Landroidx/compose/material3/tokens/TimePickerTokens;->getClockDialContainerSize-D9Ej5fM()F

    move-result v1

    invoke-static {p2, v1}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object p2

    .line 1550
    invoke-static {}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->getCircleShape()Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v1

    sget-object v2, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color$Companion;->getTransparent-0d7_KjU()J

    move-result-wide v2

    check-cast v1, Landroidx/compose/ui/graphics/Shape;

    invoke-static {p2, v2, v3, v1}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .line 1551
    invoke-static {}, Landroidx/compose/material3/TimePickerKt;->access$getInnerCircleRadius$p()F

    move-result v5

    .line 1552
    new-instance p2, Landroidx/compose/material3/TimePickerKt$ClockFace$1$2$1$2;

    iget-object v1, p0, Landroidx/compose/material3/TimePickerKt$ClockFace$1$2$1;->$state:Landroidx/compose/material3/AnalogTimePickerState;

    iget-boolean v2, p0, Landroidx/compose/material3/TimePickerKt$ClockFace$1$2$1;->$autoSwitchToMinute:Z

    invoke-direct {p2, v1, v2}, Landroidx/compose/material3/TimePickerKt$ClockFace$1$2$1$2;-><init>(Landroidx/compose/material3/AnalogTimePickerState;Z)V

    const/16 v1, 0x36

    const v2, -0xc3f235d

    invoke-static {v2, v0, p2, p1, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object p2

    move-object v6, p2

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/16 v8, 0x1b0

    const/4 v9, 0x0

    move-object v7, p1

    .line 1546
    invoke-static/range {v4 .. v9}, Landroidx/compose/material3/TimePickerKt;->access$CircularLayout-uFdPcIQ(Landroidx/compose/ui/Modifier;FLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    :cond_8
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_9
    :goto_4
    return-void
.end method
