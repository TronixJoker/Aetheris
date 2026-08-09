.class Lorg/concentus/VorbisLayout;
.super Ljava/lang/Object;
.source "VorbisLayout.java"


# static fields
.field static final vorbis_mappings:[Lorg/concentus/VorbisLayout;


# instance fields
.field mapping:[S

.field nb_coupled_streams:I

.field nb_streams:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 50
    new-instance v0, Lorg/concentus/VorbisLayout;

    const/4 v1, 0x1

    new-array v2, v1, [S

    const/4 v3, 0x0

    aput-short v3, v2, v3

    invoke-direct {v0, v1, v3, v2}, Lorg/concentus/VorbisLayout;-><init>(II[S)V

    new-instance v2, Lorg/concentus/VorbisLayout;

    const/4 v3, 0x2

    new-array v4, v3, [S

    fill-array-data v4, :array_0

    invoke-direct {v2, v1, v1, v4}, Lorg/concentus/VorbisLayout;-><init>(II[S)V

    new-instance v4, Lorg/concentus/VorbisLayout;

    const/4 v5, 0x3

    new-array v6, v5, [S

    fill-array-data v6, :array_1

    invoke-direct {v4, v3, v1, v6}, Lorg/concentus/VorbisLayout;-><init>(II[S)V

    new-instance v6, Lorg/concentus/VorbisLayout;

    const/4 v1, 0x4

    new-array v7, v1, [S

    fill-array-data v7, :array_2

    invoke-direct {v6, v3, v3, v7}, Lorg/concentus/VorbisLayout;-><init>(II[S)V

    new-instance v7, Lorg/concentus/VorbisLayout;

    const/4 v8, 0x5

    new-array v9, v8, [S

    fill-array-data v9, :array_3

    invoke-direct {v7, v5, v3, v9}, Lorg/concentus/VorbisLayout;-><init>(II[S)V

    new-instance v9, Lorg/concentus/VorbisLayout;

    const/4 v10, 0x6

    new-array v10, v10, [S

    fill-array-data v10, :array_4

    invoke-direct {v9, v1, v3, v10}, Lorg/concentus/VorbisLayout;-><init>(II[S)V

    new-instance v10, Lorg/concentus/VorbisLayout;

    const/4 v3, 0x7

    new-array v3, v3, [S

    fill-array-data v3, :array_5

    invoke-direct {v10, v1, v5, v3}, Lorg/concentus/VorbisLayout;-><init>(II[S)V

    new-instance v11, Lorg/concentus/VorbisLayout;

    const/16 v1, 0x8

    new-array v1, v1, [S

    fill-array-data v1, :array_6

    invoke-direct {v11, v8, v5, v1}, Lorg/concentus/VorbisLayout;-><init>(II[S)V

    move-object v1, v2

    move-object v2, v4

    move-object v3, v6

    move-object v4, v7

    move-object v5, v9

    move-object v6, v10

    move-object v7, v11

    filled-new-array/range {v0 .. v7}, [Lorg/concentus/VorbisLayout;

    move-result-object v0

    sput-object v0, Lorg/concentus/VorbisLayout;->vorbis_mappings:[Lorg/concentus/VorbisLayout;

    return-void

    nop

    :array_0
    .array-data 2
        0x0s
        0x1s
    .end array-data

    :array_1
    .array-data 2
        0x0s
        0x2s
        0x1s
    .end array-data

    nop

    :array_2
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x3s
    .end array-data

    :array_3
    .array-data 2
        0x0s
        0x4s
        0x1s
        0x2s
        0x3s
    .end array-data

    nop

    :array_4
    .array-data 2
        0x0s
        0x4s
        0x1s
        0x2s
        0x3s
        0x5s
    .end array-data

    :array_5
    .array-data 2
        0x0s
        0x4s
        0x1s
        0x2s
        0x3s
        0x5s
        0x6s
    .end array-data

    nop

    :array_6
    .array-data 2
        0x0s
        0x6s
        0x1s
        0x2s
        0x3s
        0x4s
        0x5s
        0x7s
    .end array-data
.end method

.method constructor <init>(II[S)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lorg/concentus/VorbisLayout;->nb_streams:I

    .line 41
    iput p2, p0, Lorg/concentus/VorbisLayout;->nb_coupled_streams:I

    .line 42
    iput-object p3, p0, Lorg/concentus/VorbisLayout;->mapping:[S

    return-void
.end method
