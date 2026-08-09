.class Lorg/concentus/StereoWidthState;
.super Ljava/lang/Object;
.source "StereoWidthState.java"


# instance fields
.field XX:I

.field XY:I

.field YY:I

.field max_follower:I

.field smoothed_width:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method Reset()V
    .locals 1

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lorg/concentus/StereoWidthState;->XX:I

    .line 47
    iput v0, p0, Lorg/concentus/StereoWidthState;->XY:I

    .line 48
    iput v0, p0, Lorg/concentus/StereoWidthState;->YY:I

    .line 49
    iput v0, p0, Lorg/concentus/StereoWidthState;->smoothed_width:I

    .line 50
    iput v0, p0, Lorg/concentus/StereoWidthState;->max_follower:I

    return-void
.end method
