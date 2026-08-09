.class public final Landroidx/compose/material3/DateInputKt;
.super Ljava/lang/Object;
.source "DateInput.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDateInput.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DateInput.kt\nandroidx/compose/material3/DateInputKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 Strings.android.kt\nandroidx/compose/material3/internal/Strings$Companion\n+ 4 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 5 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,386:1\n1223#2,6:387\n1223#2,6:396\n1223#2,6:403\n1223#2,6:409\n1223#2,6:416\n141#3:393\n144#3:394\n138#3:395\n129#3:402\n148#4:415\n148#4:425\n148#4:426\n81#5:422\n107#5,2:423\n*S KotlinDebug\n*F\n+ 1 DateInput.kt\nandroidx/compose/material3/DateInputKt\n*L\n65#1:387,6\n70#1:396,6\n125#1:403,6\n143#1:409,6\n189#1:416,6\n66#1:393\n67#1:394\n68#1:395\n83#1:402\n184#1:415\n381#1:425\n385#1:426\n125#1:422\n125#1:423,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0080\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\u001ad\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\n2#\u0010\u000b\u001a\u001f\u0012\u0015\u0012\u0013\u0018\u00010\n\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\u000f\u0012\u0004\u0012\u00020\u00080\u000c2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0001\u00a2\u0006\u0002\u0010\u001a\u001a\u0098\u0001\u0010\u001b\u001a\u00020\u00082\u0006\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\n2\u0014\u0010\u000b\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\n\u0012\u0004\u0012\u00020\u00080\u000c2\u0006\u0010\u0010\u001a\u00020\u00112\u0013\u0010\u001f\u001a\u000f\u0012\u0004\u0012\u00020\u0008\u0018\u00010 \u00a2\u0006\u0002\u0008!2\u0013\u0010\"\u001a\u000f\u0012\u0004\u0012\u00020\u0008\u0018\u00010 \u00a2\u0006\u0002\u0008!2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020(2\n\u0010)\u001a\u00060*j\u0002`+2\u0006\u0010\u0018\u001a\u00020\u0019H\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008,\u0010-\"\u0014\u0010\u0000\u001a\u00020\u0001X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0003\"\u0010\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0006\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006.\u00b2\u0006\n\u0010/\u001a\u000200X\u008a\u008e\u0002"
    }
    d2 = {
        "InputTextFieldPadding",
        "Landroidx/compose/foundation/layout/PaddingValues;",
        "getInputTextFieldPadding",
        "()Landroidx/compose/foundation/layout/PaddingValues;",
        "InputTextNonErroneousBottomPadding",
        "Landroidx/compose/ui/unit/Dp;",
        "F",
        "DateInputContent",
        "",
        "selectedDateMillis",
        "",
        "onDateSelectionChange",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "dateInMillis",
        "calendarModel",
        "Landroidx/compose/material3/internal/CalendarModel;",
        "yearRange",
        "Lkotlin/ranges/IntRange;",
        "dateFormatter",
        "Landroidx/compose/material3/DatePickerFormatter;",
        "selectableDates",
        "Landroidx/compose/material3/SelectableDates;",
        "colors",
        "Landroidx/compose/material3/DatePickerColors;",
        "(Ljava/lang/Long;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/internal/CalendarModel;Lkotlin/ranges/IntRange;Landroidx/compose/material3/DatePickerFormatter;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/runtime/Composer;I)V",
        "DateInputTextField",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "initialDateMillis",
        "label",
        "Lkotlin/Function0;",
        "Landroidx/compose/runtime/Composable;",
        "placeholder",
        "inputIdentifier",
        "Landroidx/compose/material3/InputIdentifier;",
        "dateInputValidator",
        "Landroidx/compose/material3/DateInputValidator;",
        "dateInputFormat",
        "Landroidx/compose/material3/internal/DateInputFormat;",
        "locale",
        "Ljava/util/Locale;",
        "Landroidx/compose/material3/CalendarLocale;",
        "DateInputTextField-tQNruF0",
        "(Landroidx/compose/ui/Modifier;Ljava/lang/Long;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/internal/CalendarModel;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ILandroidx/compose/material3/DateInputValidator;Landroidx/compose/material3/internal/DateInputFormat;Ljava/util/Locale;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/runtime/Composer;II)V",
        "material3_release",
        "text",
        "Landroidx/compose/ui/text/input/TextFieldValue;"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final InputTextFieldPadding:Landroidx/compose/foundation/layout/PaddingValues;

.field private static final InputTextNonErroneousBottomPadding:F


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v0, 0x18

    int-to-float v0, v0

    .line 425
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    const/16 v0, 0xa

    int-to-float v0, v0

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 381
    invoke-static/range {v1 .. v6}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-a9UjIt4$default(FFFFILjava/lang/Object;)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/DateInputKt;->InputTextFieldPadding:Landroidx/compose/foundation/layout/PaddingValues;

    const/16 v0, 0x10

    int-to-float v0, v0

    .line 426
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 385
    sput v0, Landroidx/compose/material3/DateInputKt;->InputTextNonErroneousBottomPadding:F

    return-void
.end method

.method public static final DateInputContent(Ljava/lang/Long;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/internal/CalendarModel;Lkotlin/ranges/IntRange;Landroidx/compose/material3/DatePickerFormatter;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/runtime/Composer;I)V
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/material3/internal/CalendarModel;",
            "Lkotlin/ranges/IntRange;",
            "Landroidx/compose/material3/DatePickerFormatter;",
            "Landroidx/compose/material3/SelectableDates;",
            "Landroidx/compose/material3/DatePickerColors;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    move-object/from16 v14, p0

    move-object/from16 v15, p2

    move-object/from16 v13, p4

    move/from16 v12, p8

    const v0, 0x26585ea9

    move-object/from16 v1, p7

    .line 61
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v11

    const-string v1, "C(DateInputContent)P(5,3!1,6,2,4)62@2605L15,64@2655L75,65@2758L45,66@2838L44,67@2916L45,69@2999L551,82@3639L42,86@3836L164,92@4024L62,83@3686L901:DateInput.kt#uh7d8r"

    invoke-static {v11, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, v12, 0x6

    if-nez v1, :cond_1

    invoke-interface {v11, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v12

    goto :goto_1

    :cond_1
    move v1, v12

    :goto_1
    and-int/lit8 v2, v12, 0x30

    move-object/from16 v10, p1

    if-nez v2, :cond_3

    invoke-interface {v11, v10}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x20

    goto :goto_2

    :cond_2
    const/16 v2, 0x10

    :goto_2
    or-int/2addr v1, v2

    :cond_3
    and-int/lit16 v2, v12, 0x180

    if-nez v2, :cond_5

    invoke-interface {v11, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x100

    goto :goto_3

    :cond_4
    const/16 v2, 0x80

    :goto_3
    or-int/2addr v1, v2

    :cond_5
    and-int/lit16 v2, v12, 0xc00

    move-object/from16 v9, p3

    if-nez v2, :cond_7

    invoke-interface {v11, v9}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v2, 0x800

    goto :goto_4

    :cond_6
    const/16 v2, 0x400

    :goto_4
    or-int/2addr v1, v2

    :cond_7
    and-int/lit16 v2, v12, 0x6000

    const/16 v3, 0x4000

    const v4, 0x8000

    if-nez v2, :cond_a

    and-int v2, v12, v4

    if-nez v2, :cond_8

    invoke-interface {v11, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_5

    :cond_8
    invoke-interface {v11, v13}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    :goto_5
    if-eqz v2, :cond_9

    move v2, v3

    goto :goto_6

    :cond_9
    const/16 v2, 0x2000

    :goto_6
    or-int/2addr v1, v2

    :cond_a
    const/high16 v2, 0x30000

    and-int/2addr v2, v12

    move-object/from16 v8, p5

    if-nez v2, :cond_c

    invoke-interface {v11, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/high16 v2, 0x20000

    goto :goto_7

    :cond_b
    const/high16 v2, 0x10000

    :goto_7
    or-int/2addr v1, v2

    :cond_c
    const/high16 v2, 0x180000

    and-int/2addr v2, v12

    move-object/from16 v7, p6

    if-nez v2, :cond_e

    invoke-interface {v11, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/high16 v2, 0x100000

    goto :goto_8

    :cond_d
    const/high16 v2, 0x80000

    :goto_8
    or-int/2addr v1, v2

    :cond_e
    move v6, v1

    const v1, 0x92493

    and-int/2addr v1, v6

    const v2, 0x92492

    if-ne v1, v2, :cond_10

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_9

    .line 106
    :cond_f
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v17, v11

    goto/16 :goto_e

    .line 61
    :cond_10
    :goto_9
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v1, -0x1

    const-string/jumbo v2, "androidx.compose.material3.DateInputContent (DateInput.kt:60)"

    invoke-static {v0, v6, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_11
    const/4 v5, 0x0

    .line 63
    invoke-static {v11, v5}, Landroidx/compose/material3/CalendarLocale_androidKt;->defaultLocale(Landroidx/compose/runtime/Composer;I)Ljava/util/Locale;

    move-result-object v2

    const v0, 0x6cc9a82b

    .line 65
    const-string v1, "CC(remember):DateInput.kt#9igjgp"

    invoke-static {v11, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    .line 387
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v0, :cond_12

    .line 388
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v4, v0, :cond_13

    .line 65
    :cond_12
    invoke-virtual {v15, v2}, Landroidx/compose/material3/internal/CalendarModel;->getDateInputFormat(Ljava/util/Locale;)Landroidx/compose/material3/internal/DateInputFormat;

    move-result-object v4

    .line 390
    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 65
    :cond_13
    check-cast v4, Landroidx/compose/material3/internal/DateInputFormat;

    invoke-static {v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 66
    sget-object v0, Landroidx/compose/material3/internal/Strings;->Companion:Landroidx/compose/material3/internal/Strings$Companion;

    .line 393
    sget v0, Landroidx/compose/material3/R$string;->m3c_date_input_invalid_for_pattern:I

    invoke-static {v0}, Landroidx/compose/material3/internal/Strings;->constructor-impl(I)I

    move-result v0

    .line 66
    invoke-static {v0, v11, v5}, Landroidx/compose/material3/internal/Strings_androidKt;->getString-2EP1pXo(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v16

    .line 67
    sget-object v0, Landroidx/compose/material3/internal/Strings;->Companion:Landroidx/compose/material3/internal/Strings$Companion;

    .line 394
    sget v0, Landroidx/compose/material3/R$string;->m3c_date_input_invalid_year_range:I

    invoke-static {v0}, Landroidx/compose/material3/internal/Strings;->constructor-impl(I)I

    move-result v0

    .line 67
    invoke-static {v0, v11, v5}, Landroidx/compose/material3/internal/Strings_androidKt;->getString-2EP1pXo(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v17

    .line 68
    sget-object v0, Landroidx/compose/material3/internal/Strings;->Companion:Landroidx/compose/material3/internal/Strings$Companion;

    .line 395
    sget v0, Landroidx/compose/material3/R$string;->m3c_date_input_invalid_not_allowed:I

    invoke-static {v0}, Landroidx/compose/material3/internal/Strings;->constructor-impl(I)I

    move-result v0

    .line 68
    invoke-static {v0, v11, v5}, Landroidx/compose/material3/internal/Strings_androidKt;->getString-2EP1pXo(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v18

    const v0, 0x6cc9d507    # 1.9520007E27f

    .line 70
    invoke-static {v11, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0xe000

    and-int/2addr v1, v6

    const/4 v12, 0x1

    if-eq v1, v3, :cond_15

    const v1, 0x8000

    and-int/2addr v1, v6

    if-eqz v1, :cond_14

    invoke-interface {v11, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_a

    :cond_14
    move v1, v5

    goto :goto_b

    :cond_15
    :goto_a
    move v1, v12

    :goto_b
    or-int/2addr v0, v1

    .line 396
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_17

    .line 397
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v1, v0, :cond_16

    goto :goto_c

    :cond_16
    move-object/from16 v24, v2

    move-object/from16 v26, v4

    move/from16 v16, v6

    move v13, v12

    move-object v12, v11

    goto :goto_d

    .line 71
    :cond_17
    :goto_c
    new-instance v3, Landroidx/compose/material3/DateInputValidator;

    const/16 v19, 0x300

    const/16 v20, 0x0

    const-string v21, ""

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object v0, v3

    move-object/from16 v1, p3

    move-object/from16 v24, v2

    move-object/from16 v2, p5

    move-object/from16 v25, v3

    move-object v3, v4

    move-object/from16 v26, v4

    move-object/from16 v4, p4

    move-object/from16 v5, v16

    move/from16 v16, v6

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    move-object/from16 v8, v21

    move-object/from16 v9, v22

    move-object/from16 v10, v23

    move-object/from16 v27, v11

    move/from16 v11, v19

    move v13, v12

    move-object/from16 v12, v20

    invoke-direct/range {v0 .. v12}, Landroidx/compose/material3/DateInputValidator;-><init>(Lkotlin/ranges/IntRange;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/internal/DateInputFormat;Landroidx/compose/material3/DatePickerFormatter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, v25

    move-object/from16 v12, v27

    .line 399
    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v1, v0

    .line 70
    :goto_d
    move-object v7, v1

    check-cast v7, Landroidx/compose/material3/DateInputValidator;

    invoke-static {v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 82
    invoke-virtual/range {v26 .. v26}, Landroidx/compose/material3/internal/DateInputFormat;->getPatternWithDelimiters()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "this as java.lang.String).toUpperCase(Locale.ROOT)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    sget-object v1, Landroidx/compose/material3/internal/Strings;->Companion:Landroidx/compose/material3/internal/Strings$Companion;

    .line 402
    sget v1, Landroidx/compose/material3/R$string;->m3c_date_input_label:I

    invoke-static {v1}, Landroidx/compose/material3/internal/Strings;->constructor-impl(I)I

    move-result v1

    const/4 v2, 0x0

    .line 83
    invoke-static {v1, v12, v2}, Landroidx/compose/material3/internal/Strings_androidKt;->getString-2EP1pXo(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v1

    .line 85
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v13, v4}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v3, Landroidx/compose/material3/DateInputKt;->InputTextFieldPadding:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-static {v2, v3}, Landroidx/compose/foundation/layout/PaddingKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 96
    sget-object v3, Landroidx/compose/material3/InputIdentifier;->Companion:Landroidx/compose/material3/InputIdentifier$Companion;

    invoke-virtual {v3}, Landroidx/compose/material3/InputIdentifier$Companion;->getSingleDateInput-J2x2o4M()I

    move-result v6

    .line 100
    invoke-virtual {v7, v14}, Landroidx/compose/material3/DateInputValidator;->setCurrentStartDateMillis$material3_release(Ljava/lang/Long;)V

    .line 87
    new-instance v3, Landroidx/compose/material3/DateInputKt$DateInputContent$2;

    invoke-direct {v3, v1, v0}, Landroidx/compose/material3/DateInputKt$DateInputContent$2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const v1, -0x6c6bf7d5

    const/16 v4, 0x36

    invoke-static {v1, v13, v3, v12, v4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 93
    new-instance v1, Landroidx/compose/material3/DateInputKt$DateInputContent$3;

    invoke-direct {v1, v0}, Landroidx/compose/material3/DateInputKt$DateInputContent$3;-><init>(Ljava/lang/String;)V

    const v0, -0x21a18394

    invoke-static {v0, v13, v1, v12, v4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lkotlin/jvm/functions/Function2;

    shl-int/lit8 v0, v16, 0x3

    and-int/lit8 v1, v0, 0x70

    const v3, 0x1b6006

    or-int/2addr v1, v3

    and-int/lit16 v3, v0, 0x380

    or-int/2addr v1, v3

    and-int/lit16 v0, v0, 0x1c00

    or-int v13, v1, v0

    shr-int/lit8 v0, v16, 0x12

    and-int/lit8 v16, v0, 0xe

    move-object v0, v2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v5

    move-object v5, v8

    move-object/from16 v8, v26

    move-object/from16 v9, v24

    move-object/from16 v10, p6

    move-object v11, v12

    move-object/from16 v17, v12

    move v12, v13

    move/from16 v13, v16

    .line 84
    invoke-static/range {v0 .. v13}, Landroidx/compose/material3/DateInputKt;->DateInputTextField-tQNruF0(Landroidx/compose/ui/Modifier;Ljava/lang/Long;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/internal/CalendarModel;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ILandroidx/compose/material3/DateInputValidator;Landroidx/compose/material3/internal/DateInputFormat;Ljava/util/Locale;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 106
    :cond_18
    :goto_e
    invoke-interface/range {v17 .. v17}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v9

    if-eqz v9, :cond_19

    new-instance v10, Landroidx/compose/material3/DateInputKt$DateInputContent$4;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Landroidx/compose/material3/DateInputKt$DateInputContent$4;-><init>(Ljava/lang/Long;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/internal/CalendarModel;Lkotlin/ranges/IntRange;Landroidx/compose/material3/DatePickerFormatter;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/DatePickerColors;I)V

    check-cast v10, Lkotlin/jvm/functions/Function2;

    invoke-interface {v9, v10}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_19
    return-void
.end method

.method public static final DateInputTextField-tQNruF0(Landroidx/compose/ui/Modifier;Ljava/lang/Long;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/internal/CalendarModel;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ILandroidx/compose/material3/DateInputValidator;Landroidx/compose/material3/internal/DateInputFormat;Ljava/util/Locale;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/runtime/Composer;II)V
    .locals 47
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Ljava/lang/Long;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/material3/internal/CalendarModel;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;I",
            "Landroidx/compose/material3/DateInputValidator;",
            "Landroidx/compose/material3/internal/DateInputFormat;",
            "Ljava/util/Locale;",
            "Landroidx/compose/material3/DatePickerColors;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    move-object/from16 v2, p1

    move-object/from16 v12, p3

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    move/from16 v15, p12

    const v0, -0x3314e9cd

    move-object/from16 v1, p11

    .line 122
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v1

    const-string v3, "C(DateInputTextField)P(8,4,9!1,6,10,5:c#material3.InputIdentifier,3,2,7)122@5091L39,124@5207L488,124@5155L540,142@5766L1458,188@7730L60,191@7875L59,140@5701L2642:DateInput.kt#uh7d8r"

    invoke-static {v1, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v3, v15, 0x6

    const/4 v4, 0x4

    move-object/from16 v11, p0

    if-nez v3, :cond_1

    invoke-interface {v1, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v15

    goto :goto_1

    :cond_1
    move v3, v15

    :goto_1
    and-int/lit8 v6, v15, 0x30

    if-nez v6, :cond_3

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x20

    goto :goto_2

    :cond_2
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v3, v6

    :cond_3
    and-int/lit16 v6, v15, 0x180

    move-object/from16 v8, p2

    if-nez v6, :cond_5

    invoke-interface {v1, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x100

    goto :goto_3

    :cond_4
    const/16 v6, 0x80

    :goto_3
    or-int/2addr v3, v6

    :cond_5
    and-int/lit16 v6, v15, 0xc00

    if-nez v6, :cond_7

    invoke-interface {v1, v12}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/16 v6, 0x800

    goto :goto_4

    :cond_6
    const/16 v6, 0x400

    :goto_4
    or-int/2addr v3, v6

    :cond_7
    and-int/lit16 v6, v15, 0x6000

    move-object/from16 v7, p4

    if-nez v6, :cond_9

    invoke-interface {v1, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/16 v6, 0x4000

    goto :goto_5

    :cond_8
    const/16 v6, 0x2000

    :goto_5
    or-int/2addr v3, v6

    :cond_9
    const/high16 v6, 0x30000

    and-int/2addr v6, v15

    if-nez v6, :cond_b

    move-object/from16 v6, p5

    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    const/high16 v16, 0x20000

    goto :goto_6

    :cond_a
    const/high16 v16, 0x10000

    :goto_6
    or-int v3, v3, v16

    goto :goto_7

    :cond_b
    move-object/from16 v6, p5

    :goto_7
    const/high16 v16, 0x180000

    and-int v16, v15, v16

    move/from16 v10, p6

    if-nez v16, :cond_d

    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v17

    if-eqz v17, :cond_c

    const/high16 v17, 0x100000

    goto :goto_8

    :cond_c
    const/high16 v17, 0x80000

    :goto_8
    or-int v3, v3, v17

    :cond_d
    const/high16 v17, 0xc00000

    and-int v17, v15, v17

    move-object/from16 v9, p7

    if-nez v17, :cond_f

    invoke-interface {v1, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_e

    const/high16 v19, 0x800000

    goto :goto_9

    :cond_e
    const/high16 v19, 0x400000

    :goto_9
    or-int v3, v3, v19

    :cond_f
    const/high16 v19, 0x6000000

    and-int v19, v15, v19

    if-nez v19, :cond_11

    invoke-interface {v1, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_10

    const/high16 v19, 0x4000000

    goto :goto_a

    :cond_10
    const/high16 v19, 0x2000000

    :goto_a
    or-int v3, v3, v19

    :cond_11
    const/high16 v19, 0x30000000

    and-int v19, v15, v19

    if-nez v19, :cond_13

    invoke-interface {v1, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_12

    const/high16 v19, 0x20000000

    goto :goto_b

    :cond_12
    const/high16 v19, 0x10000000

    :goto_b
    or-int v3, v3, v19

    :cond_13
    and-int/lit8 v19, p13, 0x6

    move-object/from16 v9, p10

    if-nez v19, :cond_15

    invoke-interface {v1, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_14

    goto :goto_c

    :cond_14
    const/4 v4, 0x2

    :goto_c
    or-int v4, p13, v4

    goto :goto_d

    :cond_15
    move/from16 v4, p13

    :goto_d
    const v20, 0x12492493

    and-int v0, v3, v20

    const v5, 0x12492492

    if-ne v0, v5, :cond_17

    and-int/lit8 v0, v4, 0x3

    const/4 v5, 0x2

    if-ne v0, v5, :cond_17

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_e

    .line 204
    :cond_16
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_18

    .line 122
    :cond_17
    :goto_e
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_18

    const-string/jumbo v0, "androidx.compose.material3.DateInputTextField (DateInput.kt:121)"

    const v5, -0x3314e9cd

    invoke-static {v5, v3, v4, v0}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_18
    const/4 v0, 0x0

    new-array v4, v0, [Ljava/lang/Object;

    .line 123
    sget-object v5, Landroidx/compose/material3/DateInputKt$DateInputTextField$errorText$1;->INSTANCE:Landroidx/compose/material3/DateInputKt$DateInputTextField$errorText$1;

    move-object/from16 v20, v5

    check-cast v20, Lkotlin/jvm/functions/Function0;

    const/16 v21, 0xc00

    const/16 v22, 0x6

    const/4 v5, 0x0

    const/16 v23, 0x0

    move/from16 v44, v3

    move-object v3, v4

    move-object v4, v5

    move-object/from16 v5, v23

    move-object/from16 v6, v20

    move-object v7, v1

    move/from16 v8, v21

    move/from16 v9, v22

    invoke-static/range {v3 .. v9}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Landroidx/compose/runtime/MutableState;

    new-array v3, v0, [Ljava/lang/Object;

    .line 125
    sget-object v4, Landroidx/compose/ui/text/input/TextFieldValue;->Companion:Landroidx/compose/ui/text/input/TextFieldValue$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/text/input/TextFieldValue$Companion;->getSaver()Landroidx/compose/runtime/saveable/Saver;

    move-result-object v4

    const v5, 0xe17795c

    const-string v8, "CC(remember):DateInput.kt#9igjgp"

    invoke-static {v1, v5, v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    move/from16 v7, v44

    and-int/lit8 v5, v7, 0x70

    const/16 v6, 0x20

    if-ne v5, v6, :cond_19

    const/4 v5, 0x1

    goto :goto_f

    :cond_19
    move v5, v0

    :goto_f
    invoke-interface {v1, v12}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v5, v6

    const/high16 v6, 0xe000000

    and-int/2addr v6, v7

    const/high16 v0, 0x4000000

    if-ne v6, v0, :cond_1a

    const/16 v18, 0x1

    goto :goto_10

    :cond_1a
    const/16 v18, 0x0

    :goto_10
    or-int v5, v5, v18

    invoke-interface {v1, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v18

    or-int v5, v5, v18

    .line 403
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v5, :cond_1b

    .line 404
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v0, v5, :cond_1c

    .line 125
    :cond_1b
    new-instance v0, Landroidx/compose/material3/DateInputKt$DateInputTextField$text$2$1;

    invoke-direct {v0, v2, v12, v13, v14}, Landroidx/compose/material3/DateInputKt$DateInputTextField$text$2$1;-><init>(Ljava/lang/Long;Landroidx/compose/material3/internal/CalendarModel;Landroidx/compose/material3/internal/DateInputFormat;Ljava/util/Locale;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 406
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 125
    :cond_1c
    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const/16 v18, 0x0

    const/16 v19, 0x4

    const/4 v5, 0x0

    move/from16 v45, v6

    move-object v6, v0

    move v0, v7

    move-object v7, v1

    move-object/from16 v46, v8

    move/from16 v8, v18

    move-object v2, v9

    move/from16 v9, v19

    invoke-static/range {v3 .. v9}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    move-result-object v9

    .line 142
    invoke-static {v9}, Landroidx/compose/material3/DateInputKt;->DateInputTextField_tQNruF0$lambda$4(Landroidx/compose/runtime/MutableState;)Landroidx/compose/ui/text/input/TextFieldValue;

    move-result-object v23

    const v3, 0xe17c306

    move-object/from16 v8, v46

    .line 143
    invoke-static {v1, v3, v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    move/from16 v3, v45

    const/high16 v4, 0x4000000

    if-ne v3, v4, :cond_1d

    const/4 v6, 0x1

    goto :goto_11

    :cond_1d
    const/4 v6, 0x0

    :goto_11
    invoke-interface {v1, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v3, v6

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    and-int/lit16 v4, v0, 0x380

    const/16 v5, 0x100

    if-ne v4, v5, :cond_1e

    const/4 v6, 0x1

    goto :goto_12

    :cond_1e
    const/4 v6, 0x0

    :goto_12
    or-int/2addr v3, v6

    invoke-interface {v1, v12}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    const/high16 v4, 0x1c00000

    and-int/2addr v4, v0

    const/high16 v5, 0x800000

    if-ne v4, v5, :cond_1f

    const/4 v6, 0x1

    goto :goto_13

    :cond_1f
    const/4 v6, 0x0

    :goto_13
    or-int/2addr v3, v6

    const/high16 v4, 0x380000

    and-int/2addr v4, v0

    const/high16 v5, 0x100000

    if-ne v4, v5, :cond_20

    const/4 v6, 0x1

    goto :goto_14

    :cond_20
    const/4 v6, 0x0

    :goto_14
    or-int/2addr v3, v6

    invoke-interface {v1, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 409
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_22

    .line 410
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v4, v3, :cond_21

    goto :goto_15

    :cond_21
    move-object v12, v8

    goto :goto_16

    .line 143
    :cond_22
    :goto_15
    new-instance v16, Landroidx/compose/material3/DateInputKt$DateInputTextField$1$1;

    move-object/from16 v3, v16

    move-object/from16 v4, p8

    move-object v5, v2

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object v12, v8

    move-object/from16 v8, p7

    move-object/from16 v17, v9

    move/from16 v9, p6

    move-object/from16 v10, p9

    move-object/from16 v11, v17

    invoke-direct/range {v3 .. v11}, Landroidx/compose/material3/DateInputKt$DateInputTextField$1$1;-><init>(Landroidx/compose/material3/internal/DateInputFormat;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/internal/CalendarModel;Landroidx/compose/material3/DateInputValidator;ILjava/util/Locale;Landroidx/compose/runtime/MutableState;)V

    move-object/from16 v4, v16

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 412
    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 143
    :goto_16
    move-object v3, v4

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 183
    invoke-interface {v2}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    if-eqz v4, :cond_23

    const/4 v4, 0x0

    int-to-float v6, v4

    .line 415
    invoke-static {v6}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    goto :goto_17

    .line 186
    :cond_23
    sget v4, Landroidx/compose/material3/DateInputKt;->InputTextNonErroneousBottomPadding:F

    :goto_17
    move/from16 v20, v4

    const/16 v21, 0x7

    const/16 v22, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, p0

    .line 181
    invoke-static/range {v16 .. v22}, Landroidx/compose/foundation/layout/PaddingKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    const v6, 0xe18b310

    .line 189
    invoke-static {v1, v6, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    .line 416
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    if-nez v6, :cond_24

    .line 417
    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v7, v6, :cond_25

    .line 189
    :cond_24
    new-instance v6, Landroidx/compose/material3/DateInputKt$DateInputTextField$2$1;

    invoke-direct {v6, v2}, Landroidx/compose/material3/DateInputKt$DateInputTextField$2$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    move-object v7, v6

    check-cast v7, Lkotlin/jvm/functions/Function1;

    .line 419
    invoke-interface {v1, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 189
    :cond_25
    check-cast v7, Lkotlin/jvm/functions/Function1;

    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-static {v4, v8, v7, v5, v6}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v18

    .line 192
    new-instance v4, Landroidx/compose/material3/DateInputKt$DateInputTextField$3;

    invoke-direct {v4, v2}, Landroidx/compose/material3/DateInputKt$DateInputTextField$3;-><init>(Landroidx/compose/runtime/MutableState;)V

    const/16 v6, 0x36

    const v7, -0x234914a6

    invoke-static {v7, v5, v4, v1, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v4

    move-object/from16 v28, v4

    check-cast v28, Lkotlin/jvm/functions/Function2;

    .line 193
    invoke-interface {v2}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v29, v2, 0x1

    .line 194
    new-instance v2, Landroidx/compose/material3/DateVisualTransformation;

    invoke-direct {v2, v13}, Landroidx/compose/material3/DateVisualTransformation;-><init>(Landroidx/compose/material3/internal/DateInputFormat;)V

    move-object/from16 v30, v2

    check-cast v30, Landroidx/compose/ui/text/input/VisualTransformation;

    .line 196
    new-instance v32, Landroidx/compose/foundation/text/KeyboardOptions;

    move-object/from16 v31, v32

    const/4 v2, 0x0

    .line 197
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v34

    .line 198
    sget-object v2, Landroidx/compose/ui/text/input/KeyboardType;->Companion:Landroidx/compose/ui/text/input/KeyboardType$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/text/input/KeyboardType$Companion;->getNumber-PjHm6EE()I

    move-result v35

    .line 199
    sget-object v2, Landroidx/compose/ui/text/input/ImeAction;->Companion:Landroidx/compose/ui/text/input/ImeAction$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/text/input/ImeAction$Companion;->getDone-eUduSuo()I

    move-result v36

    const/16 v40, 0x71

    const/16 v41, 0x0

    const/16 v33, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    .line 196
    invoke-direct/range {v32 .. v41}, Landroidx/compose/foundation/text/KeyboardOptions;-><init>(ILjava/lang/Boolean;IILandroidx/compose/ui/text/input/PlatformImeOptions;Ljava/lang/Boolean;Landroidx/compose/ui/text/intl/LocaleList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 202
    invoke-virtual/range {p10 .. p10}, Landroidx/compose/material3/DatePickerColors;->getDateTextFieldColors()Landroidx/compose/material3/TextFieldColors;

    move-result-object v38

    shl-int/lit8 v0, v0, 0x6

    const/high16 v2, 0x1f80000

    and-int v40, v0, v2

    const/16 v42, 0x0

    const v43, 0x3d0f38

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x1

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const v41, 0xc30180

    move-object/from16 v16, v23

    move-object/from16 v17, v3

    move-object/from16 v22, p4

    move-object/from16 v23, p5

    move-object/from16 v39, v1

    .line 141
    invoke-static/range {v16 .. v43}, Landroidx/compose/material3/OutlinedTextFieldKt;->OutlinedTextField(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/runtime/Composer;IIII)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 204
    :cond_26
    :goto_18
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v12

    if-eqz v12, :cond_27

    new-instance v16, Landroidx/compose/material3/DateInputKt$DateInputTextField$4;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object v14, v12

    move/from16 v12, p12

    move/from16 v13, p13

    invoke-direct/range {v0 .. v13}, Landroidx/compose/material3/DateInputKt$DateInputTextField$4;-><init>(Landroidx/compose/ui/Modifier;Ljava/lang/Long;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/internal/CalendarModel;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ILandroidx/compose/material3/DateInputValidator;Landroidx/compose/material3/internal/DateInputFormat;Ljava/util/Locale;Landroidx/compose/material3/DatePickerColors;II)V

    move-object/from16 v0, v16

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v14, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_27
    return-void
.end method

.method private static final DateInputTextField_tQNruF0$lambda$4(Landroidx/compose/runtime/MutableState;)Landroidx/compose/ui/text/input/TextFieldValue;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/ui/text/input/TextFieldValue;",
            ">;)",
            "Landroidx/compose/ui/text/input/TextFieldValue;"
        }
    .end annotation

    .line 124
    check-cast p0, Landroidx/compose/runtime/State;

    .line 422
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/text/input/TextFieldValue;

    return-object p0
.end method

.method private static final DateInputTextField_tQNruF0$lambda$5(Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/text/input/TextFieldValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/ui/text/input/TextFieldValue;",
            ">;",
            "Landroidx/compose/ui/text/input/TextFieldValue;",
            ")V"
        }
    .end annotation

    .line 423
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$DateInputTextField_tQNruF0$lambda$5(Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/text/input/TextFieldValue;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/material3/DateInputKt;->DateInputTextField_tQNruF0$lambda$5(Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/text/input/TextFieldValue;)V

    return-void
.end method

.method public static final getInputTextFieldPadding()Landroidx/compose/foundation/layout/PaddingValues;
    .locals 1

    .line 381
    sget-object v0, Landroidx/compose/material3/DateInputKt;->InputTextFieldPadding:Landroidx/compose/foundation/layout/PaddingValues;

    return-object v0
.end method
