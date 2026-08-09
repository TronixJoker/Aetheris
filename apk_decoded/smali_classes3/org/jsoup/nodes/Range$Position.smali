.class public Lorg/jsoup/nodes/Range$Position;
.super Ljava/lang/Object;
.source "Range.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/nodes/Range;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Position"
.end annotation


# instance fields
.field private final columnNumber:I

.field private final lineNumber:I

.field private final pos:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput p1, p0, Lorg/jsoup/nodes/Range$Position;->pos:I

    .line 148
    iput p2, p0, Lorg/jsoup/nodes/Range$Position;->lineNumber:I

    .line 149
    iput p3, p0, Lorg/jsoup/nodes/Range$Position;->columnNumber:I

    return-void
.end method

.method static synthetic access$000(Lorg/jsoup/nodes/Range$Position;)I
    .locals 0

    .line 137
    iget p0, p0, Lorg/jsoup/nodes/Range$Position;->pos:I

    return p0
.end method


# virtual methods
.method public columnNumber()I
    .locals 1

    .line 175
    iget v0, p0, Lorg/jsoup/nodes/Range$Position;->columnNumber:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 198
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 199
    :cond_1
    check-cast p1, Lorg/jsoup/nodes/Range$Position;

    .line 200
    iget v2, p0, Lorg/jsoup/nodes/Range$Position;->pos:I

    iget v3, p1, Lorg/jsoup/nodes/Range$Position;->pos:I

    if-eq v2, v3, :cond_2

    return v1

    .line 201
    :cond_2
    iget v2, p0, Lorg/jsoup/nodes/Range$Position;->lineNumber:I

    iget v3, p1, Lorg/jsoup/nodes/Range$Position;->lineNumber:I

    if-eq v2, v3, :cond_3

    return v1

    .line 202
    :cond_3
    iget v2, p0, Lorg/jsoup/nodes/Range$Position;->columnNumber:I

    iget p1, p1, Lorg/jsoup/nodes/Range$Position;->columnNumber:I

    if-ne v2, p1, :cond_4

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_0
    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 207
    iget v0, p0, Lorg/jsoup/nodes/Range$Position;->pos:I

    mul-int/lit8 v0, v0, 0x1f

    .line 208
    iget v1, p0, Lorg/jsoup/nodes/Range$Position;->lineNumber:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 209
    iget v1, p0, Lorg/jsoup/nodes/Range$Position;->columnNumber:I

    add-int/2addr v0, v1

    return v0
.end method

.method public isTracked()Z
    .locals 1

    .line 183
    invoke-static {}, Lorg/jsoup/nodes/Range;->access$100()Lorg/jsoup/nodes/Range$Position;

    move-result-object v0

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lineNumber()I
    .locals 1

    .line 166
    iget v0, p0, Lorg/jsoup/nodes/Range$Position;->lineNumber:I

    return v0
.end method

.method public pos()I
    .locals 1

    .line 158
    iget v0, p0, Lorg/jsoup/nodes/Range$Position;->pos:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/jsoup/nodes/Range$Position;->lineNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/jsoup/nodes/Range$Position;->columnNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/jsoup/nodes/Range$Position;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
