.class public final Landroidx/collection/LongFloatMapKt;
.super Ljava/lang/Object;
.source "LongFloatMap.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\n\u001a\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u0006\u0010\u0004\u001a\u00020\u0003\u001a\u0016\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008\u001a&\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u0008\u001a6\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u0008\u001aF\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u0008\u001aV\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0008\u001a\u0006\u0010\u0011\u001a\u00020\u0001\u001a\u0016\u0010\u0011\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008\u001a&\u0010\u0011\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u0008\u001a6\u0010\u0011\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u0008\u001aF\u0010\u0011\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u0008\u001aV\u0010\u0011\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0008\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "EmptyLongFloatMap",
        "Landroidx/collection/MutableLongFloatMap;",
        "emptyLongFloatMap",
        "Landroidx/collection/LongFloatMap;",
        "longFloatMapOf",
        "key1",
        "",
        "value1",
        "",
        "key2",
        "value2",
        "key3",
        "value3",
        "key4",
        "value4",
        "key5",
        "value5",
        "mutableLongFloatMapOf",
        "collection"
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
.field private static final EmptyLongFloatMap:Landroidx/collection/MutableLongFloatMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Landroidx/collection/MutableLongFloatMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/collection/MutableLongFloatMap;-><init>(I)V

    sput-object v0, Landroidx/collection/LongFloatMapKt;->EmptyLongFloatMap:Landroidx/collection/MutableLongFloatMap;

    return-void
.end method

.method public static final emptyLongFloatMap()Landroidx/collection/LongFloatMap;
    .locals 1

    .line 46
    sget-object v0, Landroidx/collection/LongFloatMapKt;->EmptyLongFloatMap:Landroidx/collection/MutableLongFloatMap;

    check-cast v0, Landroidx/collection/LongFloatMap;

    return-object v0
.end method

.method public static final longFloatMapOf()Landroidx/collection/LongFloatMap;
    .locals 1

    .line 51
    sget-object v0, Landroidx/collection/LongFloatMapKt;->EmptyLongFloatMap:Landroidx/collection/MutableLongFloatMap;

    check-cast v0, Landroidx/collection/LongFloatMap;

    return-object v0
.end method

.method public static final longFloatMapOf(JF)Landroidx/collection/LongFloatMap;
    .locals 4

    .line 59
    new-instance v0, Landroidx/collection/MutableLongFloatMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableLongFloatMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 60
    invoke-virtual {v0, p0, p1, p2}, Landroidx/collection/MutableLongFloatMap;->set(JF)V

    .line 59
    check-cast v0, Landroidx/collection/LongFloatMap;

    return-object v0
.end method

.method public static final longFloatMapOf(JFJF)Landroidx/collection/LongFloatMap;
    .locals 4

    .line 72
    new-instance v0, Landroidx/collection/MutableLongFloatMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableLongFloatMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 73
    invoke-virtual {v0, p0, p1, p2}, Landroidx/collection/MutableLongFloatMap;->set(JF)V

    .line 74
    invoke-virtual {v0, p3, p4, p5}, Landroidx/collection/MutableLongFloatMap;->set(JF)V

    .line 72
    check-cast v0, Landroidx/collection/LongFloatMap;

    return-object v0
.end method

.method public static final longFloatMapOf(JFJFJF)Landroidx/collection/LongFloatMap;
    .locals 4

    .line 88
    new-instance v0, Landroidx/collection/MutableLongFloatMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableLongFloatMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 89
    invoke-virtual {v0, p0, p1, p2}, Landroidx/collection/MutableLongFloatMap;->set(JF)V

    .line 90
    invoke-virtual {v0, p3, p4, p5}, Landroidx/collection/MutableLongFloatMap;->set(JF)V

    .line 91
    invoke-virtual {v0, p6, p7, p8}, Landroidx/collection/MutableLongFloatMap;->set(JF)V

    .line 88
    check-cast v0, Landroidx/collection/LongFloatMap;

    return-object v0
.end method

.method public static final longFloatMapOf(JFJFJFJF)Landroidx/collection/LongFloatMap;
    .locals 4

    .line 107
    new-instance v0, Landroidx/collection/MutableLongFloatMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableLongFloatMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 108
    invoke-virtual {v0, p0, p1, p2}, Landroidx/collection/MutableLongFloatMap;->set(JF)V

    .line 109
    invoke-virtual {v0, p3, p4, p5}, Landroidx/collection/MutableLongFloatMap;->set(JF)V

    .line 110
    invoke-virtual {v0, p6, p7, p8}, Landroidx/collection/MutableLongFloatMap;->set(JF)V

    .line 111
    invoke-virtual {v0, p9, p10, p11}, Landroidx/collection/MutableLongFloatMap;->set(JF)V

    .line 107
    check-cast v0, Landroidx/collection/LongFloatMap;

    return-object v0
.end method

.method public static final longFloatMapOf(JFJFJFJFJF)Landroidx/collection/LongFloatMap;
    .locals 4

    .line 129
    new-instance v0, Landroidx/collection/MutableLongFloatMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableLongFloatMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-wide v1, p0

    move v3, p2

    .line 130
    invoke-virtual {v0, p0, p1, p2}, Landroidx/collection/MutableLongFloatMap;->set(JF)V

    move-wide v1, p3

    move v3, p5

    .line 131
    invoke-virtual {v0, p3, p4, p5}, Landroidx/collection/MutableLongFloatMap;->set(JF)V

    move-wide v1, p6

    move v3, p8

    .line 132
    invoke-virtual {v0, p6, p7, p8}, Landroidx/collection/MutableLongFloatMap;->set(JF)V

    move-wide v1, p9

    move v3, p11

    .line 133
    invoke-virtual {v0, p9, p10, p11}, Landroidx/collection/MutableLongFloatMap;->set(JF)V

    move-wide/from16 v1, p12

    move/from16 v3, p14

    .line 134
    invoke-virtual {v0, v1, v2, v3}, Landroidx/collection/MutableLongFloatMap;->set(JF)V

    .line 129
    check-cast v0, Landroidx/collection/LongFloatMap;

    return-object v0
.end method

.method public static final mutableLongFloatMapOf()Landroidx/collection/MutableLongFloatMap;
    .locals 4

    .line 140
    new-instance v0, Landroidx/collection/MutableLongFloatMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableLongFloatMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static final mutableLongFloatMapOf(JF)Landroidx/collection/MutableLongFloatMap;
    .locals 4

    .line 148
    new-instance v0, Landroidx/collection/MutableLongFloatMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableLongFloatMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 149
    invoke-virtual {v0, p0, p1, p2}, Landroidx/collection/MutableLongFloatMap;->set(JF)V

    return-object v0
.end method

.method public static final mutableLongFloatMapOf(JFJF)Landroidx/collection/MutableLongFloatMap;
    .locals 4

    .line 161
    new-instance v0, Landroidx/collection/MutableLongFloatMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableLongFloatMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 162
    invoke-virtual {v0, p0, p1, p2}, Landroidx/collection/MutableLongFloatMap;->set(JF)V

    .line 163
    invoke-virtual {v0, p3, p4, p5}, Landroidx/collection/MutableLongFloatMap;->set(JF)V

    return-object v0
.end method

.method public static final mutableLongFloatMapOf(JFJFJF)Landroidx/collection/MutableLongFloatMap;
    .locals 4

    .line 177
    new-instance v0, Landroidx/collection/MutableLongFloatMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableLongFloatMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 178
    invoke-virtual {v0, p0, p1, p2}, Landroidx/collection/MutableLongFloatMap;->set(JF)V

    .line 179
    invoke-virtual {v0, p3, p4, p5}, Landroidx/collection/MutableLongFloatMap;->set(JF)V

    .line 180
    invoke-virtual {v0, p6, p7, p8}, Landroidx/collection/MutableLongFloatMap;->set(JF)V

    return-object v0
.end method

.method public static final mutableLongFloatMapOf(JFJFJFJF)Landroidx/collection/MutableLongFloatMap;
    .locals 4

    .line 196
    new-instance v0, Landroidx/collection/MutableLongFloatMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableLongFloatMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 197
    invoke-virtual {v0, p0, p1, p2}, Landroidx/collection/MutableLongFloatMap;->set(JF)V

    .line 198
    invoke-virtual {v0, p3, p4, p5}, Landroidx/collection/MutableLongFloatMap;->set(JF)V

    .line 199
    invoke-virtual {v0, p6, p7, p8}, Landroidx/collection/MutableLongFloatMap;->set(JF)V

    .line 200
    invoke-virtual {v0, p9, p10, p11}, Landroidx/collection/MutableLongFloatMap;->set(JF)V

    return-object v0
.end method

.method public static final mutableLongFloatMapOf(JFJFJFJFJF)Landroidx/collection/MutableLongFloatMap;
    .locals 4

    .line 218
    new-instance v0, Landroidx/collection/MutableLongFloatMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableLongFloatMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-wide v1, p0

    move v3, p2

    .line 219
    invoke-virtual {v0, p0, p1, p2}, Landroidx/collection/MutableLongFloatMap;->set(JF)V

    move-wide v1, p3

    move v3, p5

    .line 220
    invoke-virtual {v0, p3, p4, p5}, Landroidx/collection/MutableLongFloatMap;->set(JF)V

    move-wide v1, p6

    move v3, p8

    .line 221
    invoke-virtual {v0, p6, p7, p8}, Landroidx/collection/MutableLongFloatMap;->set(JF)V

    move-wide v1, p9

    move v3, p11

    .line 222
    invoke-virtual {v0, p9, p10, p11}, Landroidx/collection/MutableLongFloatMap;->set(JF)V

    move-wide/from16 v1, p12

    move/from16 v3, p14

    .line 223
    invoke-virtual {v0, v1, v2, v3}, Landroidx/collection/MutableLongFloatMap;->set(JF)V

    return-object v0
.end method
