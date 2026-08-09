.class final Landroidx/compose/material3/DatePickerKt$YearPicker$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DatePicker.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/DatePickerKt;->YearPicker(Landroidx/compose/ui/Modifier;JLkotlin/jvm/functions/Function1;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/internal/CalendarModel;Lkotlin/ranges/IntRange;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/runtime/Composer;I)V
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
    value = "SMAP\nDatePicker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DatePicker.kt\nandroidx/compose/material3/DatePickerKt$YearPicker$1\n+ 2 Effects.kt\nandroidx/compose/runtime/EffectsKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 Effects.kt\nandroidx/compose/runtime/EffectsKt$rememberCoroutineScope$1\n+ 5 Strings.android.kt\nandroidx/compose/material3/internal/Strings$Companion\n*L\n1#1,2272:1\n488#2:2273\n487#2,4:2274\n491#2,2:2281\n495#2:2287\n1223#3,3:2278\n1226#3,3:2284\n1223#3,6:2290\n487#4:2283\n120#5:2288\n117#5:2289\n*S KotlinDebug\n*F\n+ 1 DatePicker.kt\nandroidx/compose/material3/DatePickerKt$YearPicker$1\n*L\n2016#1:2273\n2016#1:2274,4\n2016#1:2281,2\n2016#1:2287\n2016#1:2278,3\n2016#1:2284,3\n2033#1:2290,6\n2016#1:2283\n2017#1:2288\n2018#1:2289\n*E\n"
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
.field final synthetic $calendarModel:Landroidx/compose/material3/internal/CalendarModel;

.field final synthetic $colors:Landroidx/compose/material3/DatePickerColors;

.field final synthetic $displayedMonthMillis:J

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $onYearSelected:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $selectableDates:Landroidx/compose/material3/SelectableDates;

.field final synthetic $yearRange:Lkotlin/ranges/IntRange;


# direct methods
.method constructor <init>(Landroidx/compose/material3/internal/CalendarModel;JLkotlin/ranges/IntRange;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/SelectableDates;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/internal/CalendarModel;",
            "J",
            "Lkotlin/ranges/IntRange;",
            "Landroidx/compose/material3/DatePickerColors;",
            "Landroidx/compose/ui/Modifier;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/material3/SelectableDates;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/DatePickerKt$YearPicker$1;->$calendarModel:Landroidx/compose/material3/internal/CalendarModel;

    iput-wide p2, p0, Landroidx/compose/material3/DatePickerKt$YearPicker$1;->$displayedMonthMillis:J

    iput-object p4, p0, Landroidx/compose/material3/DatePickerKt$YearPicker$1;->$yearRange:Lkotlin/ranges/IntRange;

    iput-object p5, p0, Landroidx/compose/material3/DatePickerKt$YearPicker$1;->$colors:Landroidx/compose/material3/DatePickerColors;

    iput-object p6, p0, Landroidx/compose/material3/DatePickerKt$YearPicker$1;->$modifier:Landroidx/compose/ui/Modifier;

    iput-object p7, p0, Landroidx/compose/material3/DatePickerKt$YearPicker$1;->$onYearSelected:Lkotlin/jvm/functions/Function1;

    iput-object p8, p0, Landroidx/compose/material3/DatePickerKt$YearPicker$1;->$selectableDates:Landroidx/compose/material3/SelectableDates;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2005
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/DatePickerKt$YearPicker$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move/from16 v1, p2

    const-string v2, "C2008@90272L281,2015@90734L24,2016@90799L53,2017@90891L51,2032@91637L2661,2018@90951L3347:DatePicker.kt#uh7d8r"

    invoke-static {v11, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 2006
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 2083
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_1

    .line 2006
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, -0x1

    const-string/jumbo v4, "androidx.compose.material3.YearPicker.<anonymous> (DatePicker.kt:2005)"

    const v5, 0x4d99a88d    # 3.22245024E8f

    invoke-static {v5, v1, v2, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    iget-object v1, v0, Landroidx/compose/material3/DatePickerKt$YearPicker$1;->$calendarModel:Landroidx/compose/material3/internal/CalendarModel;

    invoke-virtual {v1}, Landroidx/compose/material3/internal/CalendarModel;->getToday()Landroidx/compose/material3/internal/CalendarDate;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/compose/material3/internal/CalendarModel;->getMonth(Landroidx/compose/material3/internal/CalendarDate;)Landroidx/compose/material3/internal/CalendarMonth;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/material3/internal/CalendarMonth;->getYear()I

    move-result v1

    .line 2007
    iget-object v2, v0, Landroidx/compose/material3/DatePickerKt$YearPicker$1;->$calendarModel:Landroidx/compose/material3/internal/CalendarModel;

    iget-wide v4, v0, Landroidx/compose/material3/DatePickerKt$YearPicker$1;->$displayedMonthMillis:J

    invoke-virtual {v2, v4, v5}, Landroidx/compose/material3/internal/CalendarModel;->getMonth(J)Landroidx/compose/material3/internal/CalendarMonth;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/material3/internal/CalendarMonth;->getYear()I

    move-result v2

    .line 2012
    iget-object v4, v0, Landroidx/compose/material3/DatePickerKt$YearPicker$1;->$yearRange:Lkotlin/ranges/IntRange;

    invoke-virtual {v4}, Lkotlin/ranges/IntRange;->getFirst()I

    move-result v4

    sub-int v4, v2, v4

    const/4 v5, 0x3

    sub-int/2addr v4, v5

    const/4 v6, 0x0

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 2009
    invoke-static {v4, v6, v11, v6, v3}, Landroidx/compose/foundation/lazy/grid/LazyGridStateKt;->rememberLazyGridState(IILandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/lazy/grid/LazyGridState;

    move-result-object v3

    .line 2015
    iget-object v4, v0, Landroidx/compose/material3/DatePickerKt$YearPicker$1;->$colors:Landroidx/compose/material3/DatePickerColors;

    invoke-virtual {v4}, Landroidx/compose/material3/DatePickerColors;->getContainerColor-0d7_KjU()J

    move-result-wide v13

    const v4, 0x2e20b340

    .line 2016
    const-string v7, "CC(rememberCoroutineScope)489@20472L144:Effects.kt#9igjgp"

    .line 2273
    invoke-static {v11, v4, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const v4, -0x38e26dd0

    .line 2276
    const-string v7, "CC(remember):Effects.kt#9igjgp"

    .line 2277
    invoke-static {v11, v4, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 2278
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .line 2279
    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v4, v7, :cond_3

    .line 2283
    sget-object v4, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 2282
    check-cast v4, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v4, v11}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v4

    .line 2281
    new-instance v7, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    invoke-direct {v7, v4}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;-><init>(Lkotlinx/coroutines/CoroutineScope;)V

    .line 2284
    invoke-interface {v11, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v4, v7

    .line 2277
    :cond_3
    check-cast v4, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 2287
    invoke-virtual {v4}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v4

    .line 2273
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 2017
    sget-object v7, Landroidx/compose/material3/internal/Strings;->Companion:Landroidx/compose/material3/internal/Strings$Companion;

    .line 2288
    sget v7, Landroidx/compose/material3/R$string;->m3c_date_picker_scroll_to_earlier_years:I

    invoke-static {v7}, Landroidx/compose/material3/internal/Strings;->constructor-impl(I)I

    move-result v7

    .line 2017
    invoke-static {v7, v11, v6}, Landroidx/compose/material3/internal/Strings_androidKt;->getString-2EP1pXo(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v7

    .line 2018
    sget-object v8, Landroidx/compose/material3/internal/Strings;->Companion:Landroidx/compose/material3/internal/Strings$Companion;

    .line 2289
    sget v8, Landroidx/compose/material3/R$string;->m3c_date_picker_scroll_to_later_years:I

    invoke-static {v8}, Landroidx/compose/material3/internal/Strings;->constructor-impl(I)I

    move-result v8

    .line 2018
    invoke-static {v8, v11, v6}, Landroidx/compose/material3/internal/Strings_androidKt;->getString-2EP1pXo(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v8

    .line 2020
    new-instance v9, Landroidx/compose/foundation/lazy/grid/GridCells$Fixed;

    invoke-direct {v9, v5}, Landroidx/compose/foundation/lazy/grid/GridCells$Fixed;-><init>(I)V

    .line 2022
    iget-object v12, v0, Landroidx/compose/material3/DatePickerKt$YearPicker$1;->$modifier:Landroidx/compose/ui/Modifier;

    const/16 v16, 0x2

    const/16 v17, 0x0

    const/4 v15, 0x0

    .line 2023
    invoke-static/range {v12 .. v17}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU$default(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    .line 2027
    sget-object v10, Landroidx/compose/material3/DatePickerKt$YearPicker$1$1;->INSTANCE:Landroidx/compose/material3/DatePickerKt$YearPicker$1$1;

    check-cast v10, Lkotlin/jvm/functions/Function1;

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-static {v5, v6, v10, v12, v13}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    .line 2031
    sget-object v6, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v6}, Landroidx/compose/foundation/layout/Arrangement;->getSpaceEvenly()Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v6

    .line 2032
    sget-object v10, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-static {}, Landroidx/compose/material3/DatePickerKt;->access$getYearsVerticalPadding$p()F

    move-result v12

    invoke-virtual {v10, v12}, Landroidx/compose/foundation/layout/Arrangement;->spacedBy-0680j_4(F)Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v10

    .line 2020
    check-cast v9, Landroidx/compose/foundation/lazy/grid/GridCells;

    .line 2032
    check-cast v10, Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 2031
    move-object/from16 v23, v6

    check-cast v23, Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    const v6, 0xf0dbd2

    const-string v12, "CC(remember):DatePicker.kt#9igjgp"

    .line 2033
    invoke-static {v11, v6, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    iget-object v6, v0, Landroidx/compose/material3/DatePickerKt$YearPicker$1;->$yearRange:Lkotlin/ranges/IntRange;

    invoke-interface {v11, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v6, v12

    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v6, v12

    invoke-interface {v11, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v6, v12

    invoke-interface {v11, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v6, v12

    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v12

    or-int/2addr v6, v12

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v12

    or-int/2addr v6, v12

    iget-object v12, v0, Landroidx/compose/material3/DatePickerKt$YearPicker$1;->$onYearSelected:Lkotlin/jvm/functions/Function1;

    invoke-interface {v11, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v6, v12

    iget-object v12, v0, Landroidx/compose/material3/DatePickerKt$YearPicker$1;->$selectableDates:Landroidx/compose/material3/SelectableDates;

    invoke-interface {v11, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v6, v12

    iget-object v12, v0, Landroidx/compose/material3/DatePickerKt$YearPicker$1;->$colors:Landroidx/compose/material3/DatePickerColors;

    invoke-interface {v11, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v6, v12

    iget-object v13, v0, Landroidx/compose/material3/DatePickerKt$YearPicker$1;->$yearRange:Lkotlin/ranges/IntRange;

    iget-object v15, v0, Landroidx/compose/material3/DatePickerKt$YearPicker$1;->$onYearSelected:Lkotlin/jvm/functions/Function1;

    iget-object v14, v0, Landroidx/compose/material3/DatePickerKt$YearPicker$1;->$selectableDates:Landroidx/compose/material3/SelectableDates;

    iget-object v12, v0, Landroidx/compose/material3/DatePickerKt$YearPicker$1;->$colors:Landroidx/compose/material3/DatePickerColors;

    .line 2290
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v6, :cond_4

    .line 2291
    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v0, v6, :cond_5

    .line 2033
    :cond_4
    new-instance v0, Landroidx/compose/material3/DatePickerKt$YearPicker$1$2$1;

    move-object v6, v12

    move-object v12, v0

    move-object/from16 v21, v14

    move-object v14, v3

    move-object/from16 v20, v15

    move-object v15, v4

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move/from16 v18, v2

    move/from16 v19, v1

    move-object/from16 v22, v6

    invoke-direct/range {v12 .. v22}, Landroidx/compose/material3/DatePickerKt$YearPicker$1$2$1;-><init>(Lkotlin/ranges/IntRange;Landroidx/compose/foundation/lazy/grid/LazyGridState;Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/functions/Function1;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/DatePickerColors;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 2293
    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 2033
    :cond_5
    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const/high16 v12, 0x1b0000

    const/16 v13, 0x198

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v14, 0x0

    move-object v1, v9

    move-object v2, v5

    move v5, v6

    move-object v6, v10

    move-object/from16 v7, v23

    move v9, v14

    move-object v10, v0

    move-object/from16 v11, p1

    .line 2019
    invoke-static/range {v1 .. v13}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt;->LazyVerticalGrid(Landroidx/compose/foundation/lazy/grid/GridCells;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_6
    :goto_1
    return-void
.end method
