.class public final Landroidx/compose/material3/SelectedRangeInfo$Companion;
.super Ljava/lang/Object;
.source "DateRangePicker.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/material3/SelectedRangeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0008\u00a8\u0006\n"
    }
    d2 = {
        "Landroidx/compose/material3/SelectedRangeInfo$Companion;",
        "",
        "()V",
        "calculateRangeInfo",
        "Landroidx/compose/material3/SelectedRangeInfo;",
        "month",
        "Landroidx/compose/material3/internal/CalendarMonth;",
        "startDate",
        "Landroidx/compose/material3/internal/CalendarDate;",
        "endDate",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 900
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/material3/SelectedRangeInfo$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final calculateRangeInfo(Landroidx/compose/material3/internal/CalendarMonth;Landroidx/compose/material3/internal/CalendarDate;Landroidx/compose/material3/internal/CalendarDate;)Landroidx/compose/material3/SelectedRangeInfo;
    .locals 11

    .line 914
    invoke-virtual {p2}, Landroidx/compose/material3/internal/CalendarDate;->getUtcTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Landroidx/compose/material3/internal/CalendarMonth;->getEndUtcTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_5

    .line 915
    invoke-virtual {p3}, Landroidx/compose/material3/internal/CalendarDate;->getUtcTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Landroidx/compose/material3/internal/CalendarMonth;->getStartUtcTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    goto :goto_4

    .line 919
    :cond_0
    invoke-virtual {p2}, Landroidx/compose/material3/internal/CalendarDate;->getUtcTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Landroidx/compose/material3/internal/CalendarMonth;->getStartUtcTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_1

    move v8, v2

    goto :goto_0

    :cond_1
    move v8, v1

    .line 920
    :goto_0
    invoke-virtual {p3}, Landroidx/compose/material3/internal/CalendarDate;->getUtcTimeMillis()J

    move-result-wide v3

    invoke-virtual {p1}, Landroidx/compose/material3/internal/CalendarMonth;->getEndUtcTimeMillis()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-gtz v0, :cond_2

    move v9, v2

    goto :goto_1

    :cond_2
    move v9, v1

    :goto_1
    if-eqz v8, :cond_3

    .line 923
    invoke-virtual {p1}, Landroidx/compose/material3/internal/CalendarMonth;->getDaysFromStartOfWeekToFirstOfMonth()I

    move-result v0

    invoke-virtual {p2}, Landroidx/compose/material3/internal/CalendarDate;->getDayOfMonth()I

    move-result p2

    add-int/2addr v0, p2

    sub-int/2addr v0, v2

    goto :goto_2

    .line 925
    :cond_3
    invoke-virtual {p1}, Landroidx/compose/material3/internal/CalendarMonth;->getDaysFromStartOfWeekToFirstOfMonth()I

    move-result v0

    :goto_2
    if-eqz v9, :cond_4

    .line 929
    invoke-virtual {p1}, Landroidx/compose/material3/internal/CalendarMonth;->getDaysFromStartOfWeekToFirstOfMonth()I

    move-result p1

    invoke-virtual {p3}, Landroidx/compose/material3/internal/CalendarDate;->getDayOfMonth()I

    move-result p2

    add-int/2addr p1, p2

    sub-int/2addr p1, v2

    goto :goto_3

    .line 931
    :cond_4
    invoke-virtual {p1}, Landroidx/compose/material3/internal/CalendarMonth;->getDaysFromStartOfWeekToFirstOfMonth()I

    move-result p2

    invoke-virtual {p1}, Landroidx/compose/material3/internal/CalendarMonth;->getNumberOfDays()I

    move-result p1

    add-int/2addr p2, p1

    add-int/lit8 p1, p2, -0x1

    .line 937
    :goto_3
    rem-int/lit8 p2, v0, 0x7

    .line 938
    div-int/lit8 v0, v0, 0x7

    .line 936
    invoke-static {p2, v0}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v4

    .line 941
    rem-int/lit8 p2, p1, 0x7

    div-int/lit8 p1, p1, 0x7

    invoke-static {p2, p1}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v6

    .line 942
    new-instance p1, Landroidx/compose/material3/SelectedRangeInfo;

    const/4 v10, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v10}, Landroidx/compose/material3/SelectedRangeInfo;-><init>(JJZZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1

    :cond_5
    :goto_4
    const/4 p1, 0x0

    return-object p1
.end method
