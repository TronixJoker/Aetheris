.class Lorg/concentus/RegularizeCorrelations;
.super Ljava/lang/Object;
.source "RegularizeCorrelations.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static silk_regularize_correlations([II[IIII)V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p5, :cond_0

    .line 47
    invoke-static {p0, p1, v0, v0, p5}, Lorg/concentus/Inlines;->MatrixGet([IIIII)I

    move-result v1

    invoke-static {v1, p4}, Lorg/concentus/Inlines;->silk_ADD32(II)I

    move-result v6

    move-object v1, p0

    move v2, p1

    move v3, v0

    move v4, v0

    move v5, p5

    invoke-static/range {v1 .. v6}, Lorg/concentus/Inlines;->MatrixSet([IIIIII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    :cond_0
    aget p0, p2, p3

    add-int/2addr p0, p4

    aput p0, p2, p3

    return-void
.end method
