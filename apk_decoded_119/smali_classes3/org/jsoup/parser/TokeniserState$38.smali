.class final enum Lorg/jsoup/parser/TokeniserState$38;
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

    .line 744
    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/TokeniserState;-><init>(Ljava/lang/String;ILorg/jsoup/parser/TokeniserState$1;)V

    return-void
.end method


# virtual methods
.method read(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;)V
    .locals 4

    .line 746
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->pos()I

    move-result v0

    const/4 v1, 0x0

    .line 747
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/CharacterReader;->consumeAttributeQuoted(Z)Ljava/lang/String;

    move-result-object v1

    .line 748
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 749
    iget-object v2, p1, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->pos()I

    move-result v3

    invoke-virtual {v2, v1, v0, v3}, Lorg/jsoup/parser/Token$Tag;->appendAttributeValue(Ljava/lang/String;II)V

    goto :goto_0

    .line 751
    :cond_0
    iget-object v0, p1, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    invoke-virtual {v0}, Lorg/jsoup/parser/Token$Tag;->setEmptyAttributeValue()V

    .line 753
    :goto_0
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->pos()I

    move-result v0

    .line 754
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->consume()C

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x22

    if-eq v1, v2, :cond_4

    const/16 v3, 0x26

    if-eq v1, v3, :cond_2

    const v2, 0xffff

    if-eq v1, v2, :cond_1

    .line 775
    iget-object p1, p1, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->pos()I

    move-result p2

    invoke-virtual {p1, v1, v0, p2}, Lorg/jsoup/parser/Token$Tag;->appendAttributeValue(CII)V

    goto :goto_1

    .line 771
    :cond_1
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->eofError(Lorg/jsoup/parser/TokeniserState;)V

    .line 772
    sget-object p2, Lorg/jsoup/parser/TokeniserState$38;->Data:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_1

    .line 760
    :cond_2
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lorg/jsoup/parser/Tokeniser;->consumeCharacterReference(Ljava/lang/Character;Z)[I

    move-result-object v1

    if-eqz v1, :cond_3

    .line 762
    iget-object p1, p1, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->pos()I

    move-result p2

    invoke-virtual {p1, v1, v0, p2}, Lorg/jsoup/parser/Token$Tag;->appendAttributeValue([III)V

    goto :goto_1

    .line 764
    :cond_3
    iget-object p1, p1, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->pos()I

    move-result p2

    invoke-virtual {p1, v3, v0, p2}, Lorg/jsoup/parser/Token$Tag;->appendAttributeValue(CII)V

    goto :goto_1

    .line 757
    :cond_4
    sget-object p2, Lorg/jsoup/parser/TokeniserState$38;->AfterAttributeValue_quoted:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_1

    .line 767
    :cond_5
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->error(Lorg/jsoup/parser/TokeniserState;)V

    .line 768
    iget-object p1, p1, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    const v1, 0xfffd

    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->pos()I

    move-result p2

    invoke-virtual {p1, v1, v0, p2}, Lorg/jsoup/parser/Token$Tag;->appendAttributeValue(CII)V

    :goto_1
    return-void
.end method
