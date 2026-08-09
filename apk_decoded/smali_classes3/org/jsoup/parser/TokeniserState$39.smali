.class final enum Lorg/jsoup/parser/TokeniserState$39;
.super Lorg/jsoup/parser/TokeniserState;
.source "TokeniserState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/TokeniserState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 779
    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/TokeniserState;-><init>(Ljava/lang/String;ILorg/jsoup/parser/TokeniserState$1;)V

    return-void
.end method


# virtual methods
.method read(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;)V
    .locals 5

    .line 781
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->pos()I

    move-result v0

    const/4 v1, 0x1

    .line 782
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/CharacterReader;->consumeAttributeQuoted(Z)Ljava/lang/String;

    move-result-object v2

    .line 783
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 784
    iget-object v3, p1, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->pos()I

    move-result v4

    invoke-virtual {v3, v2, v0, v4}, Lorg/jsoup/parser/Token$Tag;->appendAttributeValue(Ljava/lang/String;II)V

    goto :goto_0

    .line 786
    :cond_0
    iget-object v0, p1, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    invoke-virtual {v0}, Lorg/jsoup/parser/Token$Tag;->setEmptyAttributeValue()V

    .line 788
    :goto_0
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->pos()I

    move-result v0

    .line 789
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->consume()C

    move-result v2

    if-eqz v2, :cond_5

    const v3, 0xffff

    if-eq v2, v3, :cond_4

    const/16 v3, 0x27

    const/16 v4, 0x26

    if-eq v2, v4, :cond_2

    if-eq v2, v3, :cond_1

    .line 810
    iget-object p1, p1, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->pos()I

    move-result p2

    invoke-virtual {p1, v2, v0, p2}, Lorg/jsoup/parser/Token$Tag;->appendAttributeValue(CII)V

    goto :goto_1

    .line 792
    :cond_1
    sget-object p2, Lorg/jsoup/parser/TokeniserState$39;->AfterAttributeValue_quoted:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_1

    .line 795
    :cond_2
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Lorg/jsoup/parser/Tokeniser;->consumeCharacterReference(Ljava/lang/Character;Z)[I

    move-result-object v1

    if-eqz v1, :cond_3

    .line 797
    iget-object p1, p1, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->pos()I

    move-result p2

    invoke-virtual {p1, v1, v0, p2}, Lorg/jsoup/parser/Token$Tag;->appendAttributeValue([III)V

    goto :goto_1

    .line 799
    :cond_3
    iget-object p1, p1, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->pos()I

    move-result p2

    invoke-virtual {p1, v4, v0, p2}, Lorg/jsoup/parser/Token$Tag;->appendAttributeValue(CII)V

    goto :goto_1

    .line 806
    :cond_4
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->eofError(Lorg/jsoup/parser/TokeniserState;)V

    .line 807
    sget-object p2, Lorg/jsoup/parser/TokeniserState$39;->Data:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_1

    .line 802
    :cond_5
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->error(Lorg/jsoup/parser/TokeniserState;)V

    .line 803
    iget-object p1, p1, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    const v1, 0xfffd

    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->pos()I

    move-result p2

    invoke-virtual {p1, v1, v0, p2}, Lorg/jsoup/parser/Token$Tag;->appendAttributeValue(CII)V

    :goto_1
    return-void
.end method
