.class Lorg/concentus/Arrays;
.super Ljava/lang/Object;
.source "Arrays.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static InitThreeDimensionalArrayByte(III)[[[B
    .locals 6

    .line 70
    new-array v0, p0, [[[B

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p0, :cond_1

    .line 72
    new-array v3, p1, [[B

    aput-object v3, v0, v2

    move v3, v1

    :goto_1
    if-ge v3, p1, :cond_0

    .line 74
    aget-object v4, v0, v2

    new-array v5, p2, [B

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method static InitTwoDimensionalArrayByte(II)[[B
    .locals 3

    .line 62
    new-array v0, p0, [[B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    .line 64
    new-array v2, p1, [B

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static InitTwoDimensionalArrayFloat(II)[[F
    .locals 3

    .line 46
    new-array v0, p0, [[F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    .line 48
    new-array v2, p1, [F

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static InitTwoDimensionalArrayInt(II)[[I
    .locals 3

    .line 38
    new-array v0, p0, [[I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    .line 40
    new-array v2, p1, [I

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static InitTwoDimensionalArrayShort(II)[[S
    .locals 3

    .line 54
    new-array v0, p0, [[S

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    .line 56
    new-array v2, p1, [S

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static MemMove([BIII)V
    .locals 3

    if-eq p1, p2, :cond_4

    if-nez p3, :cond_0

    goto :goto_3

    :cond_0
    add-int v0, p1, p3

    if-gt v0, p2, :cond_2

    add-int v0, p2, p3

    if-le v0, p1, :cond_1

    goto :goto_0

    .line 168
    :cond_1
    invoke-static {p0, p1, p0, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    :cond_2
    :goto_0
    if-ge p2, p1, :cond_3

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_4

    add-int v1, v0, p2

    add-int v2, v0, p1

    .line 158
    aget-byte v2, p0, v2

    aput-byte v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 p3, p3, -0x1

    :goto_2
    if-ltz p3, :cond_4

    add-int v0, p3, p2

    add-int v1, p3, p1

    .line 163
    aget-byte v1, p0, v1

    aput-byte v1, p0, v0

    add-int/lit8 p3, p3, -0x1

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method

.method static MemMove([IIII)V
    .locals 3

    if-eq p1, p2, :cond_4

    if-nez p3, :cond_0

    goto :goto_3

    :cond_0
    add-int v0, p1, p3

    if-gt v0, p2, :cond_2

    add-int v0, p2, p3

    if-le v0, p1, :cond_1

    goto :goto_0

    .line 218
    :cond_1
    invoke-static {p0, p1, p0, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    :cond_2
    :goto_0
    if-ge p2, p1, :cond_3

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_4

    add-int v1, v0, p2

    add-int v2, v0, p1

    .line 208
    aget v2, p0, v2

    aput v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 p3, p3, -0x1

    :goto_2
    if-ltz p3, :cond_4

    add-int v0, p3, p2

    add-int v1, p3, p1

    .line 213
    aget v1, p0, v1

    aput v1, p0, v0

    add-int/lit8 p3, p3, -0x1

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method

.method static MemMove([SIII)V
    .locals 3

    if-eq p1, p2, :cond_4

    if-nez p3, :cond_0

    goto :goto_3

    :cond_0
    add-int v0, p1, p3

    if-gt v0, p2, :cond_2

    add-int v0, p2, p3

    if-le v0, p1, :cond_1

    goto :goto_0

    .line 193
    :cond_1
    invoke-static {p0, p1, p0, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    :cond_2
    :goto_0
    if-ge p2, p1, :cond_3

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_4

    add-int v1, v0, p2

    add-int v2, v0, p1

    .line 183
    aget-short v2, p0, v2

    aput-short v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 p3, p3, -0x1

    :goto_2
    if-ltz p3, :cond_4

    add-int v0, p3, p2

    add-int v1, p3, p1

    .line 188
    aget-short v1, p0, v1

    aput-short v1, p0, v0

    add-int/lit8 p3, p3, -0x1

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method

.method static MemSet([BB)V
    .locals 2

    const/4 v0, 0x0

    .line 81
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 82
    aput-byte p1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static MemSet([BBI)V
    .locals 1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 106
    aput-byte p1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static MemSet([FF)V
    .locals 2

    const/4 v0, 0x0

    .line 99
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 100
    aput p1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static MemSet([FFI)V
    .locals 1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 124
    aput p1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static MemSet([II)V
    .locals 2

    const/4 v0, 0x0

    .line 93
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 94
    aput p1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static MemSet([III)V
    .locals 1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 118
    aput p1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static MemSet([SS)V
    .locals 2

    const/4 v0, 0x0

    .line 87
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 88
    aput-short p1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static MemSet([SSI)V
    .locals 1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 112
    aput-short p1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static MemSetWithOffset([BBII)V
    .locals 2

    move v0, p2

    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_0

    .line 130
    aput-byte p1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static MemSetWithOffset([IIII)V
    .locals 2

    move v0, p2

    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_0

    .line 142
    aput p1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static MemSetWithOffset([SSII)V
    .locals 2

    move v0, p2

    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_0

    .line 136
    aput-short p1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
