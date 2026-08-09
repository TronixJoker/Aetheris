.class public final Landroidx/compose/material3/DateInputValidator;
.super Ljava/lang/Object;
.source "DateInput.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0001\u0018\u00002\u00020\u0001B]\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0006\u0010\r\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0002\u0010\u0012J.\u0010\u001a\u001a\u00020\u000b2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\n\u0010\u001f\u001a\u00060 j\u0002`!\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\"\u0010#R\u001e\u0010\u0011\u001a\u0004\u0018\u00010\u0010X\u0080\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0017\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001e\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0080\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0014\"\u0004\u0008\u0019\u0010\u0016R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006$"
    }
    d2 = {
        "Landroidx/compose/material3/DateInputValidator;",
        "",
        "yearRange",
        "Lkotlin/ranges/IntRange;",
        "selectableDates",
        "Landroidx/compose/material3/SelectableDates;",
        "dateInputFormat",
        "Landroidx/compose/material3/internal/DateInputFormat;",
        "dateFormatter",
        "Landroidx/compose/material3/DatePickerFormatter;",
        "errorDatePattern",
        "",
        "errorDateOutOfYearRange",
        "errorInvalidNotAllowed",
        "errorInvalidRangeInput",
        "currentStartDateMillis",
        "",
        "currentEndDateMillis",
        "(Lkotlin/ranges/IntRange;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/internal/DateInputFormat;Landroidx/compose/material3/DatePickerFormatter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V",
        "getCurrentEndDateMillis$material3_release",
        "()Ljava/lang/Long;",
        "setCurrentEndDateMillis$material3_release",
        "(Ljava/lang/Long;)V",
        "Ljava/lang/Long;",
        "getCurrentStartDateMillis$material3_release",
        "setCurrentStartDateMillis$material3_release",
        "validate",
        "dateToValidate",
        "Landroidx/compose/material3/internal/CalendarDate;",
        "inputIdentifier",
        "Landroidx/compose/material3/InputIdentifier;",
        "locale",
        "Ljava/util/Locale;",
        "Landroidx/compose/material3/CalendarLocale;",
        "validate-XivgLIo",
        "(Landroidx/compose/material3/internal/CalendarDate;ILjava/util/Locale;)Ljava/lang/String;",
        "material3_release"
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


# instance fields
.field private currentEndDateMillis:Ljava/lang/Long;

.field private currentStartDateMillis:Ljava/lang/Long;

.field private final dateFormatter:Landroidx/compose/material3/DatePickerFormatter;

.field private final dateInputFormat:Landroidx/compose/material3/internal/DateInputFormat;

.field private final errorDateOutOfYearRange:Ljava/lang/String;

.field private final errorDatePattern:Ljava/lang/String;

.field private final errorInvalidNotAllowed:Ljava/lang/String;

.field private final errorInvalidRangeInput:Ljava/lang/String;

.field private final selectableDates:Landroidx/compose/material3/SelectableDates;

.field private final yearRange:Lkotlin/ranges/IntRange;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lkotlin/ranges/IntRange;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/internal/DateInputFormat;Landroidx/compose/material3/DatePickerFormatter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    iput-object p1, p0, Landroidx/compose/material3/DateInputValidator;->yearRange:Lkotlin/ranges/IntRange;

    .line 234
    iput-object p2, p0, Landroidx/compose/material3/DateInputValidator;->selectableDates:Landroidx/compose/material3/SelectableDates;

    .line 235
    iput-object p3, p0, Landroidx/compose/material3/DateInputValidator;->dateInputFormat:Landroidx/compose/material3/internal/DateInputFormat;

    .line 236
    iput-object p4, p0, Landroidx/compose/material3/DateInputValidator;->dateFormatter:Landroidx/compose/material3/DatePickerFormatter;

    .line 237
    iput-object p5, p0, Landroidx/compose/material3/DateInputValidator;->errorDatePattern:Ljava/lang/String;

    .line 238
    iput-object p6, p0, Landroidx/compose/material3/DateInputValidator;->errorDateOutOfYearRange:Ljava/lang/String;

    .line 239
    iput-object p7, p0, Landroidx/compose/material3/DateInputValidator;->errorInvalidNotAllowed:Ljava/lang/String;

    .line 240
    iput-object p8, p0, Landroidx/compose/material3/DateInputValidator;->errorInvalidRangeInput:Ljava/lang/String;

    .line 241
    iput-object p9, p0, Landroidx/compose/material3/DateInputValidator;->currentStartDateMillis:Ljava/lang/Long;

    .line 242
    iput-object p10, p0, Landroidx/compose/material3/DateInputValidator;->currentEndDateMillis:Ljava/lang/Long;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/ranges/IntRange;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/internal/DateInputFormat;Landroidx/compose/material3/DatePickerFormatter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 14

    move/from16 v0, p11

    and-int/lit16 v1, v0, 0x100

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v12, v2

    goto :goto_0

    :cond_0
    move-object/from16 v12, p9

    :goto_0
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_1

    move-object v13, v2

    goto :goto_1

    :cond_1
    move-object/from16 v13, p10

    :goto_1
    move-object v3, p0

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    .line 232
    invoke-direct/range {v3 .. v13}, Landroidx/compose/material3/DateInputValidator;-><init>(Lkotlin/ranges/IntRange;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/internal/DateInputFormat;Landroidx/compose/material3/DatePickerFormatter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    return-void
.end method


# virtual methods
.method public final getCurrentEndDateMillis$material3_release()Ljava/lang/Long;
    .locals 1

    .line 242
    iget-object v0, p0, Landroidx/compose/material3/DateInputValidator;->currentEndDateMillis:Ljava/lang/Long;

    return-object v0
.end method

.method public final getCurrentStartDateMillis$material3_release()Ljava/lang/Long;
    .locals 1

    .line 241
    iget-object v0, p0, Landroidx/compose/material3/DateInputValidator;->currentStartDateMillis:Ljava/lang/Long;

    return-object v0
.end method

.method public final setCurrentEndDateMillis$material3_release(Ljava/lang/Long;)V
    .locals 0

    .line 242
    iput-object p1, p0, Landroidx/compose/material3/DateInputValidator;->currentEndDateMillis:Ljava/lang/Long;

    return-void
.end method

.method public final setCurrentStartDateMillis$material3_release(Ljava/lang/Long;)V
    .locals 0

    .line 241
    iput-object p1, p0, Landroidx/compose/material3/DateInputValidator;->currentStartDateMillis:Ljava/lang/Long;

    return-void
.end method

.method public final validate-XivgLIo(Landroidx/compose/material3/internal/CalendarDate;ILjava/util/Locale;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x1

    .line 259
    const-string/jumbo v1, "format(this, *args)"

    if-nez p1, :cond_0

    .line 260
    iget-object p1, p0, Landroidx/compose/material3/DateInputValidator;->errorDatePattern:Ljava/lang/String;

    iget-object p2, p0, Landroidx/compose/material3/DateInputValidator;->dateInputFormat:Landroidx/compose/material3/internal/DateInputFormat;

    invoke-virtual {p2}, Landroidx/compose/material3/internal/DateInputFormat;->getPatternWithDelimiters()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, p3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "this as java.lang.String).toUpperCase(Locale.ROOT)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 263
    :cond_0
    iget-object v2, p0, Landroidx/compose/material3/DateInputValidator;->yearRange:Lkotlin/ranges/IntRange;

    invoke-virtual {p1}, Landroidx/compose/material3/internal/CalendarDate;->getYear()I

    move-result v3

    invoke-virtual {v2, v3}, Lkotlin/ranges/IntRange;->contains(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 264
    iget-object p1, p0, Landroidx/compose/material3/DateInputValidator;->errorDateOutOfYearRange:Ljava/lang/String;

    .line 265
    iget-object p2, p0, Landroidx/compose/material3/DateInputValidator;->yearRange:Lkotlin/ranges/IntRange;

    invoke-virtual {p2}, Lkotlin/ranges/IntRange;->getFirst()I

    move-result v2

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Landroidx/compose/material3/CalendarLocale_jvmKt;->toLocalString$default(IIIZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 266
    iget-object p3, p0, Landroidx/compose/material3/DateInputValidator;->yearRange:Lkotlin/ranges/IntRange;

    invoke-virtual {p3}, Lkotlin/ranges/IntRange;->getLast()I

    move-result v2

    invoke-static/range {v2 .. v7}, Landroidx/compose/material3/CalendarLocale_jvmKt;->toLocalString$default(IIIZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    const/4 p3, 0x2

    .line 264
    invoke-static {p2, p3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 270
    :cond_1
    iget-object v2, p0, Landroidx/compose/material3/DateInputValidator;->selectableDates:Landroidx/compose/material3/SelectableDates;

    .line 272
    invoke-virtual {p1}, Landroidx/compose/material3/internal/CalendarDate;->getYear()I

    move-result v3

    invoke-interface {v2, v3}, Landroidx/compose/material3/SelectableDates;->isSelectableYear(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 273
    invoke-virtual {p1}, Landroidx/compose/material3/internal/CalendarDate;->getUtcTimeMillis()J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Landroidx/compose/material3/SelectableDates;->isSelectableDate(J)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    .line 286
    :cond_2
    sget-object p3, Landroidx/compose/material3/InputIdentifier;->Companion:Landroidx/compose/material3/InputIdentifier$Companion;

    invoke-virtual {p3}, Landroidx/compose/material3/InputIdentifier$Companion;->getStartDateInput-J2x2o4M()I

    move-result p3

    invoke-static {p2, p3}, Landroidx/compose/material3/InputIdentifier;->equals-impl0(II)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 287
    invoke-virtual {p1}, Landroidx/compose/material3/internal/CalendarDate;->getUtcTimeMillis()J

    move-result-wide v0

    iget-object p3, p0, Landroidx/compose/material3/DateInputValidator;->currentEndDateMillis:Ljava/lang/Long;

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0

    :cond_3
    const-wide v2, 0x7fffffffffffffffL

    :goto_0
    cmp-long p3, v0, v2

    if-gez p3, :cond_6

    .line 288
    :cond_4
    sget-object p3, Landroidx/compose/material3/InputIdentifier;->Companion:Landroidx/compose/material3/InputIdentifier$Companion;

    invoke-virtual {p3}, Landroidx/compose/material3/InputIdentifier$Companion;->getEndDateInput-J2x2o4M()I

    move-result p3

    invoke-static {p2, p3}, Landroidx/compose/material3/InputIdentifier;->equals-impl0(II)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 289
    invoke-virtual {p1}, Landroidx/compose/material3/internal/CalendarDate;->getUtcTimeMillis()J

    move-result-wide p1

    iget-object p3, p0, Landroidx/compose/material3/DateInputValidator;->currentStartDateMillis:Ljava/lang/Long;

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_1

    :cond_5
    const-wide/high16 v0, -0x8000000000000000L

    :goto_1
    cmp-long p1, p1, v0

    if-gez p1, :cond_7

    .line 292
    :cond_6
    iget-object p1, p0, Landroidx/compose/material3/DateInputValidator;->errorInvalidRangeInput:Ljava/lang/String;

    return-object p1

    .line 295
    :cond_7
    const-string p1, ""

    return-object p1

    .line 275
    :cond_8
    :goto_2
    iget-object p2, p0, Landroidx/compose/material3/DateInputValidator;->errorInvalidNotAllowed:Ljava/lang/String;

    .line 276
    iget-object v2, p0, Landroidx/compose/material3/DateInputValidator;->dateFormatter:Landroidx/compose/material3/DatePickerFormatter;

    .line 277
    invoke-virtual {p1}, Landroidx/compose/material3/internal/CalendarDate;->getUtcTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v4, p3

    .line 276
    invoke-static/range {v2 .. v7}, Landroidx/compose/material3/DatePickerFormatter;->formatDate$default(Landroidx/compose/material3/DatePickerFormatter;Ljava/lang/Long;Ljava/util/Locale;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 275
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
