.class public final Landroidx/compose/material3/carousel/CarouselStateKt;
.super Ljava/lang/Object;
.source "CarouselState.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCarouselState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CarouselState.kt\nandroidx/compose/material3/carousel/CarouselStateKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,163:1\n1223#2,6:164\n1#3:170\n*S KotlinDebug\n*F\n+ 1 CarouselState.kt\nandroidx/compose/material3/carousel/CarouselStateKt\n*L\n104#1:164,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a%\u0010\u0000\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005H\u0007\u00a2\u0006\u0002\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "rememberCarouselState",
        "Landroidx/compose/material3/carousel/CarouselState;",
        "initialItem",
        "",
        "itemCount",
        "Lkotlin/Function0;",
        "(ILkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material3/carousel/CarouselState;",
        "material3_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final rememberCarouselState(ILkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material3/carousel/CarouselState;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/material3/carousel/CarouselState;"
        }
    .end annotation

    const-string v0, "C(rememberCarouselState)*103@3725L181,103@3679L227:CarouselState.kt#dcf9yb"

    const v1, -0xcf38434

    .line 103
    invoke-static {p2, v1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v0, 0x1

    and-int/2addr p4, v0

    const/4 v2, 0x0

    if-eqz p4, :cond_0

    move p0, v2

    .line 101
    :cond_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p4

    if-eqz p4, :cond_1

    const/4 p4, -0x1

    const-string/jumbo v3, "androidx.compose.material3.carousel.rememberCarouselState (CarouselState.kt:102)"

    .line 103
    invoke-static {v1, p3, p4, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_1
    new-array v4, v2, [Ljava/lang/Object;

    .line 104
    sget-object p4, Landroidx/compose/material3/carousel/CarouselState;->Companion:Landroidx/compose/material3/carousel/CarouselState$Companion;

    invoke-virtual {p4}, Landroidx/compose/material3/carousel/CarouselState$Companion;->getSaver()Landroidx/compose/runtime/saveable/Saver;

    move-result-object v5

    const p4, -0x5b9625f2

    const-string v1, "CC(remember):CarouselState.kt#9igjgp"

    invoke-static {p2, p4, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 p4, p3, 0xe

    xor-int/lit8 p4, p4, 0x6

    const/4 v1, 0x4

    if-le p4, v1, :cond_2

    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result p4

    if-nez p4, :cond_3

    :cond_2
    and-int/lit8 p4, p3, 0x6

    if-ne p4, v1, :cond_4

    :cond_3
    move p4, v0

    goto :goto_0

    :cond_4
    move p4, v2

    :goto_0
    and-int/lit8 v1, p3, 0x70

    xor-int/lit8 v1, v1, 0x30

    const/16 v3, 0x20

    if-le v1, v3, :cond_5

    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_5
    and-int/lit8 p3, p3, 0x30

    if-ne p3, v3, :cond_6

    goto :goto_1

    :cond_6
    move v0, v2

    :cond_7
    :goto_1
    or-int p3, p4, v0

    .line 164
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object p4

    if-nez p3, :cond_8

    .line 165
    sget-object p3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p3

    if-ne p4, p3, :cond_9

    .line 104
    :cond_8
    new-instance p3, Landroidx/compose/material3/carousel/CarouselStateKt$rememberCarouselState$1$1;

    invoke-direct {p3, p0, p1}, Landroidx/compose/material3/carousel/CarouselStateKt$rememberCarouselState$1$1;-><init>(ILkotlin/jvm/functions/Function0;)V

    move-object p4, p3

    check-cast p4, Lkotlin/jvm/functions/Function0;

    .line 167
    invoke-interface {p2, p4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 104
    :cond_9
    move-object v7, p4

    check-cast v7, Lkotlin/jvm/functions/Function0;

    invoke-static {p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v6, 0x0

    move-object v8, p2

    invoke-static/range {v4 .. v10}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    move-result-object p0

    .line 111
    check-cast p0, Landroidx/compose/material3/carousel/CarouselState;

    invoke-virtual {p0}, Landroidx/compose/material3/carousel/CarouselState;->getItemCountState()Landroidx/compose/runtime/MutableState;

    move-result-object p3

    invoke-interface {p3, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 103
    :cond_a
    invoke-static {p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    return-object p0
.end method
