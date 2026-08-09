.class public final Landroidx/compose/material3/TopAppBarState;
.super Ljava/lang/Object;
.source "AppBar.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material3/TopAppBarState$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAppBar.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppBar.kt\nandroidx/compose/material3/TopAppBarState\n+ 2 SnapshotFloatState.kt\nandroidx/compose/runtime/PrimitiveSnapshotStateKt__SnapshotFloatStateKt\n*L\n1#1,2543:1\n76#2:2544\n109#2,2:2545\n76#2:2547\n109#2,2:2548\n*S KotlinDebug\n*F\n+ 1 AppBar.kt\nandroidx/compose/material3/TopAppBarState\n*L\n1322#1:2544\n1322#1:2545,2\n1347#1:2547\n1347#1:2548,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0016\u0008\u0007\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\t\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR+\u0010\r\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u00038F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u000e\u0010\u000b\"\u0004\u0008\u000f\u0010\u0010R$\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u00038F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0015\u0010\u000b\"\u0004\u0008\u0016\u0010\u0010R+\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u00038F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010\u0012\u001a\u0004\u0008\u0018\u0010\u000b\"\u0004\u0008\u0019\u0010\u0010R\u0011\u0010\u001b\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u000b\u00a8\u0006\u001e"
    }
    d2 = {
        "Landroidx/compose/material3/TopAppBarState;",
        "",
        "initialHeightOffsetLimit",
        "",
        "initialHeightOffset",
        "initialContentOffset",
        "(FFF)V",
        "_heightOffset",
        "Landroidx/compose/runtime/MutableFloatState;",
        "collapsedFraction",
        "getCollapsedFraction",
        "()F",
        "<set-?>",
        "contentOffset",
        "getContentOffset",
        "setContentOffset",
        "(F)V",
        "contentOffset$delegate",
        "Landroidx/compose/runtime/MutableFloatState;",
        "newOffset",
        "heightOffset",
        "getHeightOffset",
        "setHeightOffset",
        "heightOffsetLimit",
        "getHeightOffsetLimit",
        "setHeightOffsetLimit",
        "heightOffsetLimit$delegate",
        "overlappedFraction",
        "getOverlappedFraction",
        "Companion",
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

.field public static final Companion:Landroidx/compose/material3/TopAppBarState$Companion;

.field private static final Saver:Landroidx/compose/runtime/saveable/Saver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/saveable/Saver<",
            "Landroidx/compose/material3/TopAppBarState;",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private _heightOffset:Landroidx/compose/runtime/MutableFloatState;

.field private final contentOffset$delegate:Landroidx/compose/runtime/MutableFloatState;

.field private final heightOffsetLimit$delegate:Landroidx/compose/runtime/MutableFloatState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/material3/TopAppBarState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/material3/TopAppBarState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/material3/TopAppBarState;->Companion:Landroidx/compose/material3/TopAppBarState$Companion;

    .line 1385
    sget-object v0, Landroidx/compose/material3/TopAppBarState$Companion$Saver$1;->INSTANCE:Landroidx/compose/material3/TopAppBarState$Companion$Saver$1;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    sget-object v1, Landroidx/compose/material3/TopAppBarState$Companion$Saver$2;->INSTANCE:Landroidx/compose/material3/TopAppBarState$Companion$Saver$2;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Landroidx/compose/runtime/saveable/ListSaverKt;->listSaver(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/TopAppBarState;->Saver:Landroidx/compose/runtime/saveable/Saver;

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0

    .line 1308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1322
    invoke-static {p1}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->mutableFloatStateOf(F)Landroidx/compose/runtime/MutableFloatState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material3/TopAppBarState;->heightOffsetLimit$delegate:Landroidx/compose/runtime/MutableFloatState;

    .line 1347
    invoke-static {p3}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->mutableFloatStateOf(F)Landroidx/compose/runtime/MutableFloatState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material3/TopAppBarState;->contentOffset$delegate:Landroidx/compose/runtime/MutableFloatState;

    .line 1397
    invoke-static {p2}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->mutableFloatStateOf(F)Landroidx/compose/runtime/MutableFloatState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material3/TopAppBarState;->_heightOffset:Landroidx/compose/runtime/MutableFloatState;

    return-void
.end method

.method public static final synthetic access$getSaver$cp()Landroidx/compose/runtime/saveable/Saver;
    .locals 1

    .line 1308
    sget-object v0, Landroidx/compose/material3/TopAppBarState;->Saver:Landroidx/compose/runtime/saveable/Saver;

    return-object v0
.end method


# virtual methods
.method public final getCollapsedFraction()F
    .locals 2

    .line 1357
    invoke-virtual {p0}, Landroidx/compose/material3/TopAppBarState;->getHeightOffsetLimit()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    .line 1358
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/material3/TopAppBarState;->getHeightOffset()F

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/material3/TopAppBarState;->getHeightOffsetLimit()F

    move-result v1

    div-float v1, v0, v1

    :goto_0
    return v1
.end method

.method public final getContentOffset()F
    .locals 1

    .line 1347
    iget-object v0, p0, Landroidx/compose/material3/TopAppBarState;->contentOffset$delegate:Landroidx/compose/runtime/MutableFloatState;

    check-cast v0, Landroidx/compose/runtime/FloatState;

    .line 2547
    invoke-interface {v0}, Landroidx/compose/runtime/FloatState;->getFloatValue()F

    move-result v0

    return v0
.end method

.method public final getHeightOffset()F
    .locals 1

    .line 1331
    iget-object v0, p0, Landroidx/compose/material3/TopAppBarState;->_heightOffset:Landroidx/compose/runtime/MutableFloatState;

    invoke-interface {v0}, Landroidx/compose/runtime/MutableFloatState;->getFloatValue()F

    move-result v0

    return v0
.end method

.method public final getHeightOffsetLimit()F
    .locals 1

    .line 1322
    iget-object v0, p0, Landroidx/compose/material3/TopAppBarState;->heightOffsetLimit$delegate:Landroidx/compose/runtime/MutableFloatState;

    check-cast v0, Landroidx/compose/runtime/FloatState;

    .line 2544
    invoke-interface {v0}, Landroidx/compose/runtime/FloatState;->getFloatValue()F

    move-result v0

    return v0
.end method

.method public final getOverlappedFraction()F
    .locals 4

    .line 1372
    invoke-virtual {p0}, Landroidx/compose/material3/TopAppBarState;->getHeightOffsetLimit()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    int-to-float v0, v0

    .line 1374
    invoke-virtual {p0}, Landroidx/compose/material3/TopAppBarState;->getHeightOffsetLimit()F

    move-result v2

    invoke-virtual {p0}, Landroidx/compose/material3/TopAppBarState;->getContentOffset()F

    move-result v3

    sub-float/2addr v2, v3

    .line 1375
    invoke-virtual {p0}, Landroidx/compose/material3/TopAppBarState;->getHeightOffsetLimit()F

    move-result v3

    .line 1374
    invoke-static {v2, v3, v1}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v1

    .line 1377
    invoke-virtual {p0}, Landroidx/compose/material3/TopAppBarState;->getHeightOffsetLimit()F

    move-result v2

    div-float/2addr v1, v2

    sub-float v1, v0, v1

    :goto_0
    return v1
.end method

.method public final setContentOffset(F)V
    .locals 1

    .line 1347
    iget-object v0, p0, Landroidx/compose/material3/TopAppBarState;->contentOffset$delegate:Landroidx/compose/runtime/MutableFloatState;

    .line 2548
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableFloatState;->setFloatValue(F)V

    return-void
.end method

.method public final setHeightOffset(F)V
    .locals 3

    .line 1333
    iget-object v0, p0, Landroidx/compose/material3/TopAppBarState;->_heightOffset:Landroidx/compose/runtime/MutableFloatState;

    .line 1334
    invoke-virtual {p0}, Landroidx/compose/material3/TopAppBarState;->getHeightOffsetLimit()F

    move-result v1

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p1

    .line 1333
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableFloatState;->setFloatValue(F)V

    return-void
.end method

.method public final setHeightOffsetLimit(F)V
    .locals 1

    .line 1322
    iget-object v0, p0, Landroidx/compose/material3/TopAppBarState;->heightOffsetLimit$delegate:Landroidx/compose/runtime/MutableFloatState;

    .line 2545
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableFloatState;->setFloatValue(F)V

    return-void
.end method
