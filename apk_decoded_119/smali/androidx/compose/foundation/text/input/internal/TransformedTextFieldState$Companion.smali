.class final Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$Companion;
.super Ljava/lang/Object;
.source "TransformedTextFieldState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$Companion$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransformedTextFieldState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransformedTextFieldState.kt\nandroidx/compose/foundation/text/input/internal/TransformedTextFieldState$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,678:1\n1#2:679\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0082\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\"\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0003J\"\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\nH\u0003J\"\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u0011H\u0003\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J.\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u00112\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\nH\u0003\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0015\u0010\u0016\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\u0017"
    }
    d2 = {
        "Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$Companion;",
        "",
        "()V",
        "calculateTransformedText",
        "Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$TransformedText;",
        "untransformedValue",
        "Landroidx/compose/foundation/text/input/TextFieldCharSequence;",
        "outputTransformation",
        "Landroidx/compose/foundation/text/input/OutputTransformation;",
        "wedgeAffinity",
        "Landroidx/compose/foundation/text/input/internal/SelectionWedgeAffinity;",
        "codepointTransformation",
        "Landroidx/compose/foundation/text/input/internal/CodepointTransformation;",
        "mapFromTransformed",
        "Landroidx/compose/ui/text/TextRange;",
        "range",
        "mapping",
        "Landroidx/compose/foundation/text/input/internal/OffsetMappingCalculator;",
        "mapFromTransformed-xdX6-G0",
        "(JLandroidx/compose/foundation/text/input/internal/OffsetMappingCalculator;)J",
        "mapToTransformed",
        "mapToTransformed-XGyztTk",
        "(JLandroidx/compose/foundation/text/input/internal/OffsetMappingCalculator;Landroidx/compose/foundation/text/input/internal/SelectionWedgeAffinity;)J",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$calculateTransformedText(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$Companion;Landroidx/compose/foundation/text/input/TextFieldCharSequence;Landroidx/compose/foundation/text/input/OutputTransformation;Landroidx/compose/foundation/text/input/internal/SelectionWedgeAffinity;)Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$TransformedText;
    .locals 0

    .line 457
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$Companion;->calculateTransformedText(Landroidx/compose/foundation/text/input/TextFieldCharSequence;Landroidx/compose/foundation/text/input/OutputTransformation;Landroidx/compose/foundation/text/input/internal/SelectionWedgeAffinity;)Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$TransformedText;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$calculateTransformedText(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$Companion;Landroidx/compose/foundation/text/input/TextFieldCharSequence;Landroidx/compose/foundation/text/input/internal/CodepointTransformation;Landroidx/compose/foundation/text/input/internal/SelectionWedgeAffinity;)Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$TransformedText;
    .locals 0

    .line 457
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$Companion;->calculateTransformedText(Landroidx/compose/foundation/text/input/TextFieldCharSequence;Landroidx/compose/foundation/text/input/internal/CodepointTransformation;Landroidx/compose/foundation/text/input/internal/SelectionWedgeAffinity;)Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$TransformedText;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$mapFromTransformed-xdX6-G0(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$Companion;JLandroidx/compose/foundation/text/input/internal/OffsetMappingCalculator;)J
    .locals 0

    .line 457
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$Companion;->mapFromTransformed-xdX6-G0(JLandroidx/compose/foundation/text/input/internal/OffsetMappingCalculator;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$mapToTransformed-XGyztTk(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$Companion;JLandroidx/compose/foundation/text/input/internal/OffsetMappingCalculator;Landroidx/compose/foundation/text/input/internal/SelectionWedgeAffinity;)J
    .locals 0

    .line 457
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$Companion;->mapToTransformed-XGyztTk(JLandroidx/compose/foundation/text/input/internal/OffsetMappingCalculator;Landroidx/compose/foundation/text/input/internal/SelectionWedgeAffinity;)J

    move-result-wide p0

    return-wide p0
.end method

.method private final calculateTransformedText(Landroidx/compose/foundation/text/input/TextFieldCharSequence;Landroidx/compose/foundation/text/input/OutputTransformation;Landroidx/compose/foundation/text/input/internal/SelectionWedgeAffinity;)Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$TransformedText;
    .locals 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 474
    new-instance v7, Landroidx/compose/foundation/text/input/internal/OffsetMappingCalculator;

    invoke-direct {v7}, Landroidx/compose/foundation/text/input/internal/OffsetMappingCalculator;-><init>()V

    .line 475
    new-instance v8, Landroidx/compose/foundation/text/input/TextFieldBuffer;

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v8

    move-object v1, p1

    move-object v4, v7

    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/text/input/TextFieldBuffer;-><init>(Landroidx/compose/foundation/text/input/TextFieldCharSequence;Landroidx/compose/foundation/text/input/internal/ChangeTracker;Landroidx/compose/foundation/text/input/TextFieldCharSequence;Landroidx/compose/foundation/text/input/internal/OffsetMappingCalculator;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 481
    invoke-interface {p2, v8}, Landroidx/compose/foundation/text/input/OutputTransformation;->transformOutput(Landroidx/compose/foundation/text/input/TextFieldBuffer;)V

    .line 484
    invoke-virtual {v8}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->getChanges()Landroidx/compose/foundation/text/input/TextFieldBuffer$ChangeList;

    move-result-object p2

    invoke-interface {p2}, Landroidx/compose/foundation/text/input/TextFieldBuffer$ChangeList;->getChangeCount()I

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 492
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->getSelection-d9O1mEE()J

    move-result-wide v1

    .line 491
    invoke-direct {p0, v1, v2, v7, p3}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$Companion;->mapToTransformed-XGyztTk(JLandroidx/compose/foundation/text/input/internal/OffsetMappingCalculator;Landroidx/compose/foundation/text/input/internal/SelectionWedgeAffinity;)J

    move-result-wide v1

    .line 496
    invoke-virtual {p1}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->getComposition-MzsxiRA()Landroidx/compose/ui/text/TextRange;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/compose/ui/text/TextRange;->unbox-impl()J

    move-result-wide p1

    .line 497
    invoke-static {}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->access$getCompanion$p()Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$Companion;

    move-result-object v0

    invoke-direct {v0, p1, p2, v7, p3}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$Companion;->mapToTransformed-XGyztTk(JLandroidx/compose/foundation/text/input/internal/OffsetMappingCalculator;Landroidx/compose/foundation/text/input/internal/SelectionWedgeAffinity;)J

    move-result-wide p1

    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRange;->box-impl(J)Landroidx/compose/ui/text/TextRange;

    move-result-object v0

    .line 488
    :cond_1
    invoke-virtual {v8, v1, v2, v0}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->toTextFieldCharSequence-udt6zUU$foundation_release(JLandroidx/compose/ui/text/TextRange;)Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    move-result-object p1

    .line 504
    new-instance p2, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$TransformedText;

    invoke-direct {p2, p1, v7}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$TransformedText;-><init>(Landroidx/compose/foundation/text/input/TextFieldCharSequence;Landroidx/compose/foundation/text/input/internal/OffsetMappingCalculator;)V

    return-object p2
.end method

.method private final calculateTransformedText(Landroidx/compose/foundation/text/input/TextFieldCharSequence;Landroidx/compose/foundation/text/input/internal/CodepointTransformation;Landroidx/compose/foundation/text/input/internal/SelectionWedgeAffinity;)Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$TransformedText;
    .locals 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 522
    new-instance v0, Landroidx/compose/foundation/text/input/internal/OffsetMappingCalculator;

    invoke-direct {v0}, Landroidx/compose/foundation/text/input/internal/OffsetMappingCalculator;-><init>()V

    .line 526
    invoke-static {p1, p2, v0}, Landroidx/compose/foundation/text/input/internal/CodepointTransformationKt;->toVisualText(Landroidx/compose/foundation/text/input/TextFieldCharSequence;Landroidx/compose/foundation/text/input/internal/CodepointTransformation;Landroidx/compose/foundation/text/input/internal/OffsetMappingCalculator;)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 p2, 0x0

    if-ne v2, p1, :cond_0

    return-object p2

    .line 538
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->getSelection-d9O1mEE()J

    move-result-wide v3

    .line 537
    invoke-direct {p0, v3, v4, v0, p3}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$Companion;->mapToTransformed-XGyztTk(JLandroidx/compose/foundation/text/input/internal/OffsetMappingCalculator;Landroidx/compose/foundation/text/input/internal/SelectionWedgeAffinity;)J

    move-result-wide v3

    .line 542
    invoke-virtual {p1}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->getComposition-MzsxiRA()Landroidx/compose/ui/text/TextRange;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/compose/ui/text/TextRange;->unbox-impl()J

    move-result-wide p1

    .line 543
    invoke-static {}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;->access$getCompanion$p()Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$Companion;

    move-result-object v1

    invoke-direct {v1, p1, p2, v0, p3}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$Companion;->mapToTransformed-XGyztTk(JLandroidx/compose/foundation/text/input/internal/OffsetMappingCalculator;Landroidx/compose/foundation/text/input/internal/SelectionWedgeAffinity;)J

    move-result-wide p1

    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRange;->box-impl(J)Landroidx/compose/ui/text/TextRange;

    move-result-object p1

    move-object v5, p1

    goto :goto_0

    :cond_1
    move-object v5, p2

    .line 533
    :goto_0
    new-instance p1, Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;-><init>(Ljava/lang/CharSequence;JLandroidx/compose/ui/text/TextRange;Lkotlin/Pair;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 546
    new-instance p2, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$TransformedText;

    invoke-direct {p2, p1, v0}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$TransformedText;-><init>(Landroidx/compose/foundation/text/input/TextFieldCharSequence;Landroidx/compose/foundation/text/input/internal/OffsetMappingCalculator;)V

    return-object p2
.end method

.method private final mapFromTransformed-xdX6-G0(JLandroidx/compose/foundation/text/input/internal/OffsetMappingCalculator;)J
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 592
    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v0

    invoke-virtual {p3, v0}, Landroidx/compose/foundation/text/input/internal/OffsetMappingCalculator;->mapFromDest--jx7JFs(I)J

    move-result-wide v0

    .line 594
    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v2

    if-eqz v2, :cond_0

    move-wide v2, v0

    goto :goto_0

    .line 595
    :cond_0
    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v2

    invoke-virtual {p3, v2}, Landroidx/compose/foundation/text/input/internal/OffsetMappingCalculator;->mapFromDest--jx7JFs(I)J

    move-result-wide v2

    .line 598
    :goto_0
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result p3

    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v4

    invoke-static {p3, v4}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 599
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v0

    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 600
    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRange;->getReversed-impl(J)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 601
    invoke-static {v0, p3}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide p1

    goto :goto_1

    .line 603
    :cond_1
    invoke-static {p3, v0}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide p1

    :goto_1
    return-wide p1
.end method

.method private final mapToTransformed-XGyztTk(JLandroidx/compose/foundation/text/input/internal/OffsetMappingCalculator;Landroidx/compose/foundation/text/input/internal/SelectionWedgeAffinity;)J
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 561
    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v0

    invoke-virtual {p3, v0}, Landroidx/compose/foundation/text/input/internal/OffsetMappingCalculator;->mapFromSource--jx7JFs(I)J

    move-result-wide v0

    .line 563
    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v2

    if-eqz v2, :cond_0

    move-wide v2, v0

    goto :goto_0

    .line 564
    :cond_0
    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v2

    invoke-virtual {p3, v2}, Landroidx/compose/foundation/text/input/internal/OffsetMappingCalculator;->mapFromSource--jx7JFs(I)J

    move-result-wide v2

    .line 567
    :goto_0
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result p3

    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v4

    invoke-static {p3, v4}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 568
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v0

    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 569
    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRange;->getReversed-impl(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 570
    invoke-static {v0, p3}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide v0

    goto :goto_1

    .line 572
    :cond_1
    invoke-static {p3, v0}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide v0

    .line 575
    :goto_1
    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result p1

    if-nez p1, :cond_6

    if-eqz p4, :cond_2

    .line 577
    invoke-virtual {p4}, Landroidx/compose/foundation/text/input/internal/SelectionWedgeAffinity;->getStartAffinity()Landroidx/compose/foundation/text/input/internal/WedgeAffinity;

    move-result-object p1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    const/4 p2, -0x1

    if-nez p1, :cond_3

    move p1, p2

    goto :goto_3

    :cond_3
    sget-object p3, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Landroidx/compose/foundation/text/input/internal/WedgeAffinity;->ordinal()I

    move-result p1

    aget p1, p3, p1

    :goto_3
    if-eq p1, p2, :cond_6

    const/4 p2, 0x1

    if-eq p1, p2, :cond_5

    const/4 p2, 0x2

    if-ne p1, p2, :cond_4

    .line 579
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result p1

    invoke-static {p1}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(I)J

    move-result-wide v0

    goto :goto_4

    .line 580
    :cond_4
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 578
    :cond_5
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result p1

    invoke-static {p1}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(I)J

    move-result-wide v0

    :cond_6
    :goto_4
    return-wide v0
.end method

.method static synthetic mapToTransformed-XGyztTk$default(Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$Companion;JLandroidx/compose/foundation/text/input/internal/OffsetMappingCalculator;Landroidx/compose/foundation/text/input/internal/SelectionWedgeAffinity;ILjava/lang/Object;)J
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 556
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState$Companion;->mapToTransformed-XGyztTk(JLandroidx/compose/foundation/text/input/internal/OffsetMappingCalculator;Landroidx/compose/foundation/text/input/internal/SelectionWedgeAffinity;)J

    move-result-wide p0

    return-wide p0
.end method
