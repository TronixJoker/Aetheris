.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$7;
.super Lorg/jsoup/parser/HtmlTreeBuilderState;
.source "HtmlTreeBuilderState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/HtmlTreeBuilderState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# static fields
.field private static final MaxStackScan:I = 0x18


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 279
    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilderState;-><init>(Ljava/lang/String;ILorg/jsoup/parser/HtmlTreeBuilderState$1;)V

    return-void
.end method

.method private inBodyEndTag(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 9

    .line 701
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asEndTag()Lorg/jsoup/parser/Token$EndTag;

    move-result-object v0

    .line 702
    invoke-virtual {v0}, Lorg/jsoup/parser/Token$EndTag;->normalName()Ljava/lang/String;

    move-result-object v1

    .line 704
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const-string v3, "br"

    const/4 v4, 0x1

    const-string v5, "template"

    const-string v6, "body"

    const/4 v7, 0x0

    const/4 v8, -0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "sarcasm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v8, 0x10

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "span"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v8, 0xf

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "html"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v8, 0xe

    goto/16 :goto_0

    :sswitch_3
    const-string v2, "form"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v8, 0xd

    goto/16 :goto_0

    :sswitch_4
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v8, 0xc

    goto/16 :goto_0

    :sswitch_5
    const-string v2, "li"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v8, 0xb

    goto/16 :goto_0

    :sswitch_6
    const-string v2, "h6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v8, 0xa

    goto/16 :goto_0

    :sswitch_7
    const-string v2, "h5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v8, 0x9

    goto/16 :goto_0

    :sswitch_8
    const-string v2, "h4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v8, 0x8

    goto/16 :goto_0

    :sswitch_9
    const-string v2, "h3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_0

    :cond_9
    const/4 v8, 0x7

    goto :goto_0

    :sswitch_a
    const-string v2, "h2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_0

    :cond_a
    const/4 v8, 0x6

    goto :goto_0

    :sswitch_b
    const-string v2, "h1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_0

    :cond_b
    const/4 v8, 0x5

    goto :goto_0

    :sswitch_c
    const-string v2, "dt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_0

    :cond_c
    const/4 v8, 0x4

    goto :goto_0

    :sswitch_d
    const-string v2, "dd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_0

    :cond_d
    const/4 v8, 0x3

    goto :goto_0

    :sswitch_e
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_0

    :cond_e
    const/4 v8, 0x2

    goto :goto_0

    :sswitch_f
    const-string v2, "p"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    goto :goto_0

    :cond_f
    move v8, v4

    goto :goto_0

    :sswitch_10
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    goto :goto_0

    :cond_10
    move v8, v7

    :goto_0
    packed-switch v8, :pswitch_data_0

    .line 814
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyEndAdoptionFormatters:[Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 815
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->inBodyEndTagAdoption(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result p1

    return p1

    .line 816
    :cond_11
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyEndClosers:[Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 817
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_12

    .line 819
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v7

    .line 822
    :cond_12
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags()V

    .line 823
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_13

    .line 824
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 825
    :cond_13
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_2

    .line 827
    :cond_14
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartApplets:[Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 828
    const-string p1, "name"

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2a

    .line 829
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_15

    .line 830
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v7

    .line 833
    :cond_15
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags()V

    .line 834
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_16

    .line 835
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 836
    :cond_16
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 837
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->clearFormattingElementsToLastMarker()V

    goto/16 :goto_2

    .line 840
    :cond_17
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->anyOtherEndTag(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result p1

    return p1

    .line 711
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->anyOtherEndTag(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result p1

    return p1

    .line 735
    :pswitch_1
    invoke-virtual {p2, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStack(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 736
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v7

    .line 739
    :cond_18
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyEndOtherErrors:[Ljava/lang/String;

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStackNot([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 740
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 741
    :cond_19
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->AfterBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 742
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result p1

    return p1

    .line 746
    :pswitch_2
    invoke-virtual {p2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStack(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1d

    .line 747
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getFormElement()Lorg/jsoup/nodes/FormElement;

    move-result-object p1

    const/4 v0, 0x0

    .line 748
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->setFormElement(Lorg/jsoup/nodes/FormElement;)V

    if-eqz p1, :cond_1c

    .line 749
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_1

    .line 753
    :cond_1a
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags()V

    .line 754
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 755
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 757
    :cond_1b
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromStack(Lorg/jsoup/nodes/Element;)Z

    goto/16 :goto_2

    .line 750
    :cond_1c
    :goto_1
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v7

    .line 759
    :cond_1d
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1e

    .line 760
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v7

    .line 763
    :cond_1e
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags()V

    .line 764
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1f

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 765
    :cond_1f
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_2

    .line 724
    :pswitch_3
    invoke-virtual {p2, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_20

    .line 725
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v7

    .line 728
    :cond_20
    sget-object p1, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyEndOtherErrors:[Ljava/lang/String;

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStackNot([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 729
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 730
    :cond_21
    invoke-virtual {p2, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->getFromStack(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->onNodeClosed(Lorg/jsoup/nodes/Node;)V

    .line 731
    sget-object p1, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->AfterBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_2

    .line 713
    :pswitch_4
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inListItemScope(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_22

    .line 714
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v7

    .line 717
    :cond_22
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Ljava/lang/String;)V

    .line 718
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_23

    .line 719
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 720
    :cond_23
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    goto :goto_2

    .line 798
    :pswitch_5
    sget-object p1, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->Headings:[Ljava/lang/String;

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope([Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_24

    .line 799
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v7

    .line 802
    :cond_24
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Ljava/lang/String;)V

    .line 803
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_25

    .line 804
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 805
    :cond_25
    sget-object p1, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->Headings:[Ljava/lang/String;

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose([Ljava/lang/String;)V

    goto :goto_2

    .line 782
    :pswitch_6
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_26

    .line 783
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v7

    .line 786
    :cond_26
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Ljava/lang/String;)V

    .line 787
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_27

    .line 788
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 789
    :cond_27
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    goto :goto_2

    .line 809
    :pswitch_7
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 810
    invoke-virtual {p2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->processStartTag(Ljava/lang/String;)Z

    return v7

    .line 769
    :pswitch_8
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_28

    .line 770
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 771
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->processStartTag(Ljava/lang/String;)Z

    .line 772
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result p1

    return p1

    .line 774
    :cond_28
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Ljava/lang/String;)V

    .line 775
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_29

    .line 776
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 777
    :cond_29
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    goto :goto_2

    .line 706
    :pswitch_9
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InHead:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, p1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    :cond_2a
    :goto_2
    return v4

    :sswitch_data_0
    .sparse-switch
        -0x4ec53386 -> :sswitch_10
        0x70 -> :sswitch_f
        0xc50 -> :sswitch_e
        0xc80 -> :sswitch_d
        0xc90 -> :sswitch_c
        0xcc9 -> :sswitch_b
        0xcca -> :sswitch_a
        0xccb -> :sswitch_9
        0xccc -> :sswitch_8
        0xccd -> :sswitch_7
        0xcce -> :sswitch_6
        0xd7d -> :sswitch_5
        0x2e39a2 -> :sswitch_4
        0x300cc4 -> :sswitch_3
        0x3107ab -> :sswitch_2
        0x35f74a -> :sswitch_1
        0x6f67a51c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private inBodyEndTagAdoption(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 877
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->asEndTag()Lorg/jsoup/parser/Token$EndTag;

    move-result-object v2

    .line 878
    invoke-virtual {v2}, Lorg/jsoup/parser/Token$EndTag;->normalName()Ljava/lang/String;

    move-result-object v2

    .line 880
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getStack()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/16 v6, 0x8

    const/4 v7, 0x1

    if-ge v5, v6, :cond_12

    .line 883
    invoke-virtual {v1, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getActiveFormattingElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v6

    if-nez v6, :cond_0

    .line 885
    invoke-virtual/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->anyOtherEndTag(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result v1

    return v1

    .line 886
    :cond_0
    invoke-virtual {v1, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStack(Lorg/jsoup/nodes/Element;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 887
    invoke-virtual {v1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 888
    invoke-virtual {v1, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    return v7

    .line 890
    :cond_1
    invoke-virtual {v6}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 891
    invoke-virtual {v1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v4

    .line 893
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v8

    if-eq v8, v6, :cond_3

    .line 894
    invoke-virtual {v1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 900
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, -0x1

    move v12, v4

    move v11, v7

    move-object v13, v9

    :goto_1
    if-ge v11, v8, :cond_6

    const/16 v14, 0x40

    if-ge v11, v14, :cond_6

    .line 904
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/jsoup/nodes/Element;

    if-ne v14, v6, :cond_4

    add-int/lit8 v10, v11, -0x1

    .line 906
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v13, v10

    check-cast v13, Lorg/jsoup/nodes/Element;

    .line 909
    invoke-virtual {v1, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->positionOfElement(Lorg/jsoup/nodes/Element;)I

    move-result v10

    move v12, v7

    goto :goto_2

    :cond_4
    if-eqz v12, :cond_5

    .line 910
    invoke-static {v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->isSpecial(Lorg/jsoup/nodes/Element;)Z

    move-result v15

    if-eqz v15, :cond_5

    move-object v9, v14

    goto :goto_3

    :cond_5
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_6
    :goto_3
    if-nez v9, :cond_7

    .line 916
    invoke-virtual {v6}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 917
    invoke-virtual {v1, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    return v7

    :cond_7
    move v8, v4

    move-object v11, v9

    move-object v12, v11

    :goto_4
    const/4 v14, 0x3

    if-ge v8, v14, :cond_d

    .line 924
    invoke-virtual {v1, v11}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStack(Lorg/jsoup/nodes/Element;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 925
    invoke-virtual {v1, v11}, Lorg/jsoup/parser/HtmlTreeBuilder;->aboveOnStack(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;

    move-result-object v11

    .line 926
    :cond_8
    invoke-virtual {v1, v11}, Lorg/jsoup/parser/HtmlTreeBuilder;->isInActiveFormattingElements(Lorg/jsoup/nodes/Element;)Z

    move-result v14

    if-nez v14, :cond_9

    .line 927
    invoke-virtual {v1, v11}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromStack(Lorg/jsoup/nodes/Element;)Z

    goto :goto_5

    :cond_9
    if-ne v11, v6, :cond_a

    goto :goto_6

    .line 932
    :cond_a
    new-instance v14, Lorg/jsoup/nodes/Element;

    invoke-virtual {v11}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v15

    sget-object v4, Lorg/jsoup/parser/ParseSettings;->preserveCase:Lorg/jsoup/parser/ParseSettings;

    invoke-virtual {v1, v15, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->tagFor(Ljava/lang/String;Lorg/jsoup/parser/ParseSettings;)Lorg/jsoup/parser/Tag;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getBaseUri()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v4, v15}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;)V

    .line 934
    invoke-virtual {v1, v11, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->replaceActiveFormattingElement(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)V

    .line 935
    invoke-virtual {v1, v11, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->replaceOnStack(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)V

    if-ne v12, v9, :cond_b

    .line 941
    invoke-virtual {v1, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->positionOfElement(Lorg/jsoup/nodes/Element;)I

    move-result v4

    add-int/lit8 v10, v4, 0x1

    .line 943
    :cond_b
    invoke-virtual {v12}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 944
    invoke-virtual {v12}, Lorg/jsoup/nodes/Element;->remove()V

    .line 945
    :cond_c
    invoke-virtual {v14, v12}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    move-object v11, v14

    move-object v12, v11

    :goto_5
    add-int/lit8 v8, v8, 0x1

    const/4 v4, 0x0

    goto :goto_4

    :cond_d
    :goto_6
    if-eqz v13, :cond_11

    .line 951
    invoke-virtual {v13}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v4

    sget-object v7, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyEndTableFosters:[Ljava/lang/String;

    invoke-static {v4, v7}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 952
    invoke-virtual {v12}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v4

    if-eqz v4, :cond_e

    .line 953
    invoke-virtual {v12}, Lorg/jsoup/nodes/Element;->remove()V

    .line 954
    :cond_e
    invoke-virtual {v1, v12}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertInFosterParent(Lorg/jsoup/nodes/Node;)V

    goto :goto_7

    .line 956
    :cond_f
    invoke-virtual {v12}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v4

    if-eqz v4, :cond_10

    .line 957
    invoke-virtual {v12}, Lorg/jsoup/nodes/Element;->remove()V

    .line 958
    :cond_10
    invoke-virtual {v13, v12}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    .line 962
    :cond_11
    :goto_7
    new-instance v4, Lorg/jsoup/nodes/Element;

    invoke-virtual {v6}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getBaseUri()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v7, v8}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;)V

    .line 963
    invoke-virtual {v4}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    move-result-object v7

    invoke-virtual {v6}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/jsoup/nodes/Attributes;->addAll(Lorg/jsoup/nodes/Attributes;)V

    .line 964
    invoke-virtual {v9}, Lorg/jsoup/nodes/Element;->childNodes()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/jsoup/nodes/Element;->appendChildren(Ljava/util/Collection;)Lorg/jsoup/nodes/Element;

    .line 965
    invoke-virtual {v9, v4}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    .line 966
    invoke-virtual {v1, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    .line 968
    invoke-virtual {v1, v4, v10}, Lorg/jsoup/parser/HtmlTreeBuilder;->pushWithBookmark(Lorg/jsoup/nodes/Element;I)V

    .line 969
    invoke-virtual {v1, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromStack(Lorg/jsoup/nodes/Element;)Z

    .line 970
    invoke-virtual {v1, v9, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertOnStackAfter(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)V

    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_12
    return v7
.end method

.method private inBodyStartTag(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 322
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->asStartTag()Lorg/jsoup/parser/Token$StartTag;

    move-result-object v2

    .line 323
    invoke-virtual {v2}, Lorg/jsoup/parser/Token$StartTag;->normalName()Ljava/lang/String;

    move-result-object v3

    .line 327
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const-string v5, "input"

    const-string v6, "svg"

    const-string v7, "img"

    const-string v10, "nobr"

    const-string v11, "form"

    const-string v12, "rtc"

    const-string v13, "li"

    const-string v14, "hr"

    const-string v15, "option"

    const-string v9, "button"

    const-string v8, "body"

    const-string v0, "a"

    const/16 v16, -0x1

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v4, "noembed"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_1

    :cond_0
    const/16 v4, 0x37

    goto/16 :goto_0

    :sswitch_1
    const-string v4, "isindex"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    :cond_1
    const/16 v4, 0x36

    goto/16 :goto_0

    :sswitch_2
    const-string v4, "plaintext"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto/16 :goto_1

    :cond_2
    const/16 v4, 0x35

    goto/16 :goto_0

    :sswitch_3
    const-string v4, "listing"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto/16 :goto_1

    :cond_3
    const/16 v4, 0x34

    goto/16 :goto_0

    :sswitch_4
    const-string v4, "table"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto/16 :goto_1

    :cond_4
    const/16 v4, 0x33

    goto/16 :goto_0

    :sswitch_5
    const-string v4, "small"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto/16 :goto_1

    :cond_5
    const/16 v4, 0x32

    goto/16 :goto_0

    :sswitch_6
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto/16 :goto_1

    :cond_6
    const/16 v4, 0x31

    goto/16 :goto_0

    :sswitch_7
    const-string v4, "image"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto/16 :goto_1

    :cond_7
    const/16 v4, 0x30

    goto/16 :goto_0

    :sswitch_8
    const-string v4, "embed"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    goto/16 :goto_1

    :cond_8
    const/16 v4, 0x2f

    goto/16 :goto_0

    :sswitch_9
    const-string v4, "span"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    goto/16 :goto_1

    :cond_9
    const/16 v4, 0x2e

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    goto/16 :goto_1

    :cond_a
    const/16 v4, 0x2d

    goto/16 :goto_0

    :sswitch_b
    const-string v4, "math"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    goto/16 :goto_1

    :cond_b
    const/16 v4, 0x2c

    goto/16 :goto_0

    :sswitch_c
    const-string v4, "html"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    goto/16 :goto_1

    :cond_c
    const/16 v4, 0x2b

    goto/16 :goto_0

    :sswitch_d
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    goto/16 :goto_1

    :cond_d
    const/16 v4, 0x2a

    goto/16 :goto_0

    :sswitch_e
    const-string v4, "font"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    goto/16 :goto_1

    :cond_e
    const/16 v4, 0x29

    goto/16 :goto_0

    :sswitch_f
    const-string v4, "code"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    goto/16 :goto_1

    :cond_f
    const/16 v4, 0x28

    goto/16 :goto_0

    :sswitch_10
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    goto/16 :goto_1

    :cond_10
    const/16 v4, 0x27

    goto/16 :goto_0

    :sswitch_11
    const-string v4, "area"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    goto/16 :goto_1

    :cond_11
    const/16 v4, 0x26

    goto/16 :goto_0

    :sswitch_12
    const-string v4, "xmp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    goto/16 :goto_1

    :cond_12
    const/16 v4, 0x25

    goto/16 :goto_0

    :sswitch_13
    const-string v4, "wbr"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    goto/16 :goto_1

    :cond_13
    const/16 v4, 0x24

    goto/16 :goto_0

    :sswitch_14
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    goto/16 :goto_1

    :cond_14
    const/16 v4, 0x23

    goto/16 :goto_0

    :sswitch_15
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    goto/16 :goto_1

    :cond_15
    const/16 v4, 0x22

    goto/16 :goto_0

    :sswitch_16
    const-string v4, "pre"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    goto/16 :goto_1

    :cond_16
    const/16 v4, 0x21

    goto/16 :goto_0

    :sswitch_17
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    goto/16 :goto_1

    :cond_17
    const/16 v4, 0x20

    goto/16 :goto_0

    :sswitch_18
    const-string v4, "big"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    goto/16 :goto_1

    :cond_18
    const/16 v4, 0x1f

    goto/16 :goto_0

    :sswitch_19
    const-string v4, "tt"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    goto/16 :goto_1

    :cond_19
    const/16 v4, 0x1e

    goto/16 :goto_0

    :sswitch_1a
    const-string v4, "rt"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    goto/16 :goto_1

    :cond_1a
    const/16 v4, 0x1d

    goto/16 :goto_0

    :sswitch_1b
    const-string v4, "rp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    goto/16 :goto_1

    :cond_1b
    const/16 v4, 0x1c

    goto/16 :goto_0

    :sswitch_1c
    const-string v4, "rb"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    goto/16 :goto_1

    :cond_1c
    const/16 v4, 0x1b

    goto/16 :goto_0

    :sswitch_1d
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d

    goto/16 :goto_1

    :cond_1d
    const/16 v4, 0x1a

    goto/16 :goto_0

    :sswitch_1e
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1e

    goto/16 :goto_1

    :cond_1e
    const/16 v16, 0x19

    goto/16 :goto_1

    :sswitch_1f
    const-string v4, "h6"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    goto/16 :goto_1

    :cond_1f
    const/16 v16, 0x18

    goto/16 :goto_1

    :sswitch_20
    const-string v4, "h5"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_20

    goto/16 :goto_1

    :cond_20
    const/16 v4, 0x17

    goto/16 :goto_0

    :sswitch_21
    const-string v4, "h4"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_21

    goto/16 :goto_1

    :cond_21
    const/16 v4, 0x16

    goto/16 :goto_0

    :sswitch_22
    const-string v4, "h3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_22

    goto/16 :goto_1

    :cond_22
    const/16 v4, 0x15

    goto/16 :goto_0

    :sswitch_23
    const-string v4, "h2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    goto/16 :goto_1

    :cond_23
    const/16 v4, 0x14

    goto/16 :goto_0

    :sswitch_24
    const-string v4, "h1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_24

    goto/16 :goto_1

    :cond_24
    const/16 v4, 0x13

    goto/16 :goto_0

    :sswitch_25
    const-string v4, "em"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_25

    goto/16 :goto_1

    :cond_25
    const/16 v4, 0x12

    goto/16 :goto_0

    :sswitch_26
    const-string v4, "dt"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_26

    goto/16 :goto_1

    :cond_26
    const/16 v4, 0x11

    goto/16 :goto_0

    :sswitch_27
    const-string v4, "dd"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_27

    goto/16 :goto_1

    :cond_27
    const/16 v4, 0x10

    goto/16 :goto_0

    :sswitch_28
    const-string v4, "br"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_28

    goto/16 :goto_1

    :cond_28
    const/16 v4, 0xf

    goto/16 :goto_0

    :sswitch_29
    const-string v4, "u"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_29

    goto/16 :goto_1

    :cond_29
    const/16 v4, 0xe

    goto/16 :goto_0

    :sswitch_2a
    const-string v4, "s"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2a

    goto/16 :goto_1

    :cond_2a
    const/16 v4, 0xd

    goto/16 :goto_0

    :sswitch_2b
    const-string v4, "i"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2b

    goto/16 :goto_1

    :cond_2b
    const/16 v4, 0xc

    goto/16 :goto_0

    :sswitch_2c
    const-string v4, "b"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2c

    goto/16 :goto_1

    :cond_2c
    const/16 v4, 0xb

    goto :goto_0

    :sswitch_2d
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2d

    goto/16 :goto_1

    :cond_2d
    const/16 v4, 0xa

    goto :goto_0

    :sswitch_2e
    const-string v4, "optgroup"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2e

    goto/16 :goto_1

    :cond_2e
    const/16 v4, 0x9

    goto :goto_0

    :sswitch_2f
    const-string v4, "strong"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2f

    goto/16 :goto_1

    :cond_2f
    const/16 v4, 0x8

    goto :goto_0

    :sswitch_30
    const-string v4, "strike"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_30

    goto :goto_1

    :cond_30
    const/4 v4, 0x7

    goto :goto_0

    :sswitch_31
    const-string v4, "select"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_31

    goto :goto_1

    :cond_31
    const/4 v4, 0x6

    goto :goto_0

    :sswitch_32
    const-string v4, "textarea"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_32

    goto :goto_1

    :cond_32
    const/4 v4, 0x5

    goto :goto_0

    :sswitch_33
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_33

    goto :goto_1

    :cond_33
    const/4 v4, 0x4

    goto :goto_0

    :sswitch_34
    const-string v4, "keygen"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_34

    goto :goto_1

    :cond_34
    const/4 v4, 0x3

    :goto_0
    move/from16 v16, v4

    goto :goto_1

    :sswitch_35
    const-string v4, "iframe"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_35

    goto :goto_1

    :cond_35
    const/16 v16, 0x2

    goto :goto_1

    :sswitch_36
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_36

    goto :goto_1

    :cond_36
    const/16 v16, 0x1

    goto :goto_1

    :sswitch_37
    const-string v4, "frameset"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_37

    goto :goto_1

    :cond_37
    const/16 v16, 0x0

    .line 672
    :goto_1
    const-string v4, "template"

    const-string v1, "ruby"

    move-object/from16 v17, v0

    const-string v0, "p"

    packed-switch v16, :pswitch_data_0

    invoke-static {v3}, Lorg/jsoup/parser/Tag;->isKnownTag(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_38

    move-object/from16 v9, p2

    const/4 v15, 0x1

    .line 673
    invoke-virtual {v9, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    :goto_2
    move-object/from16 v3, p0

    goto/16 :goto_5

    :cond_38
    move-object/from16 v9, p2

    const/4 v15, 0x1

    .line 674
    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartPClosers:[Ljava/lang/String;

    invoke-static {v3, v1}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 675
    invoke-virtual {v9, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 676
    invoke-virtual {v9, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 678
    :cond_39
    invoke-virtual {v9, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto :goto_2

    .line 679
    :cond_3a
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartToHead:[Ljava/lang/String;

    invoke-static {v3, v0}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 680
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InHead:Lorg/jsoup/parser/HtmlTreeBuilderState;

    move-object/from16 v1, p1

    invoke-virtual {v9, v1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    move-result v0

    return v0

    .line 681
    :cond_3b
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartApplets:[Ljava/lang/String;

    invoke-static {v3, v0}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 682
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 683
    invoke-virtual {v9, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 684
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertMarkerToFormattingElements()V

    const/4 v0, 0x0

    .line 685
    invoke-virtual {v9, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    goto :goto_2

    :cond_3c
    const/4 v0, 0x0

    .line 686
    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartMedia:[Ljava/lang/String;

    invoke-static {v3, v1}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 687
    invoke-virtual {v9, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertEmptyElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto :goto_2

    .line 688
    :cond_3d
    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartDrop:[Ljava/lang/String;

    invoke-static {v3, v1}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    move-object/from16 v3, p0

    .line 689
    invoke-virtual {v9, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v0

    :cond_3e
    move-object/from16 v3, p0

    .line 692
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 693
    invoke-virtual {v9, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_5

    :pswitch_0
    move-object/from16 v3, p0

    move-object/from16 v9, p2

    const/4 v15, 0x1

    .line 544
    invoke-static {v2, v9}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$300(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/HtmlTreeBuilder;)V

    goto/16 :goto_5

    :pswitch_1
    move-object/from16 v3, p0

    move-object/from16 v9, p2

    const/4 v0, 0x0

    const/4 v15, 0x1

    .line 486
    invoke-virtual {v9, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 487
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getFormElement()Lorg/jsoup/nodes/FormElement;

    move-result-object v1

    if-eqz v1, :cond_3f

    return v0

    .line 490
    :cond_3f
    invoke-virtual {v9, v11}, Lorg/jsoup/parser/HtmlTreeBuilder;->processStartTag(Ljava/lang/String;)Z

    .line 491
    const-string v0, "action"

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/Token$StartTag;->hasAttribute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 492
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getFormElement()Lorg/jsoup/nodes/FormElement;

    move-result-object v1

    if-eqz v1, :cond_40

    .line 493
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/Token$StartTag;->hasAttribute(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 494
    iget-object v4, v2, Lorg/jsoup/parser/Token$StartTag;->attributes:Lorg/jsoup/nodes/Attributes;

    invoke-virtual {v4, v0}, Lorg/jsoup/nodes/Attributes;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 495
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Lorg/jsoup/nodes/Attributes;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Attributes;

    .line 498
    :cond_40
    invoke-virtual {v9, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->processStartTag(Ljava/lang/String;)Z

    .line 499
    const-string v0, "label"

    invoke-virtual {v9, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->processStartTag(Ljava/lang/String;)Z

    .line 501
    const-string v0, "prompt"

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/Token$StartTag;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 502
    iget-object v0, v2, Lorg/jsoup/parser/Token$StartTag;->attributes:Lorg/jsoup/nodes/Attributes;

    const-string v1, "prompt"

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Attributes;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 503
    :cond_41
    const-string v0, "This is a searchable index. Enter search keywords: "

    .line 505
    :goto_3
    new-instance v1, Lorg/jsoup/parser/Token$Character;

    invoke-direct {v1}, Lorg/jsoup/parser/Token$Character;-><init>()V

    invoke-virtual {v1, v0}, Lorg/jsoup/parser/Token$Character;->data(Ljava/lang/String;)Lorg/jsoup/parser/Token$Character;

    move-result-object v0

    invoke-virtual {v9, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 508
    new-instance v0, Lorg/jsoup/nodes/Attributes;

    invoke-direct {v0}, Lorg/jsoup/nodes/Attributes;-><init>()V

    .line 509
    invoke-virtual {v2}, Lorg/jsoup/parser/Token$StartTag;->hasAttributes()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 510
    iget-object v1, v2, Lorg/jsoup/parser/Token$StartTag;->attributes:Lorg/jsoup/nodes/Attributes;

    invoke-virtual {v1}, Lorg/jsoup/nodes/Attributes;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_42
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/Attribute;

    .line 511
    invoke-virtual {v2}, Lorg/jsoup/nodes/Attribute;->getKey()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartInputAttribs:[Ljava/lang/String;

    invoke-static {v4, v6}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_42

    .line 512
    invoke-virtual {v0, v2}, Lorg/jsoup/nodes/Attributes;->put(Lorg/jsoup/nodes/Attribute;)Lorg/jsoup/nodes/Attributes;

    goto :goto_4

    .line 515
    :cond_43
    const-string v1, "name"

    const-string v2, "isindex"

    invoke-virtual {v0, v1, v2}, Lorg/jsoup/nodes/Attributes;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Attributes;

    .line 516
    invoke-virtual {v9, v5, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->processStartTag(Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)Z

    .line 517
    const-string v0, "label"

    invoke-virtual {v9, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 518
    invoke-virtual {v9, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->processStartTag(Ljava/lang/String;)Z

    .line 519
    invoke-virtual {v9, v11}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    goto/16 :goto_5

    :pswitch_2
    move-object/from16 v3, p0

    move-object/from16 v9, p2

    const/4 v15, 0x1

    .line 429
    invoke-virtual {v9, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 430
    invoke-virtual {v9, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 432
    :cond_44
    invoke-virtual {v9, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 433
    iget-object v0, v9, Lorg/jsoup/parser/HtmlTreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->PLAINTEXT:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_5

    :pswitch_3
    move-object/from16 v3, p0

    move-object/from16 v9, p2

    const/4 v15, 0x1

    .line 458
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getDocument()Lorg/jsoup/nodes/Document;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/nodes/Document;->quirksMode()Lorg/jsoup/nodes/Document$QuirksMode;

    move-result-object v1

    sget-object v4, Lorg/jsoup/nodes/Document$QuirksMode;->quirks:Lorg/jsoup/nodes/Document$QuirksMode;

    if-eq v1, v4, :cond_45

    invoke-virtual {v9, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 459
    invoke-virtual {v9, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 461
    :cond_45
    invoke-virtual {v9, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    const/4 v0, 0x0

    .line 462
    invoke-virtual {v9, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    .line 463
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InTable:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v9, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto :goto_5

    :pswitch_4
    move-object/from16 v3, p0

    move-object/from16 v9, p2

    const/4 v0, 0x0

    const/4 v15, 0x1

    .line 466
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 467
    invoke-virtual {v9, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertEmptyElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    .line 468
    const-string v2, "type"

    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "hidden"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_47

    .line 469
    invoke-virtual {v9, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    goto :goto_5

    :pswitch_5
    move-object/from16 v3, p0

    move-object/from16 v9, p2

    const/4 v15, 0x1

    .line 479
    invoke-virtual {v9, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->getFromStack(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    if-nez v0, :cond_46

    .line 480
    invoke-virtual {v2, v7}, Lorg/jsoup/parser/Token$StartTag;->name(Ljava/lang/String;)Lorg/jsoup/parser/Token$Tag;

    move-result-object v0

    invoke-virtual {v9, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result v0

    return v0

    .line 482
    :cond_46
    invoke-virtual {v9, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto :goto_5

    :pswitch_6
    move-object/from16 v3, p0

    move-object/from16 v9, p2

    const/4 v15, 0x1

    .line 346
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 347
    invoke-virtual {v9, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    :cond_47
    :goto_5
    move v0, v15

    goto/16 :goto_f

    :pswitch_7
    move-object/from16 v3, p0

    move-object/from16 v9, p2

    const/4 v15, 0x1

    .line 448
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 449
    invoke-virtual {v9, v10}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 450
    invoke-virtual {v9, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 451
    invoke-virtual {v9, v10}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 452
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 454
    :cond_48
    invoke-virtual {v9, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    .line 455
    invoke-virtual {v9, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->pushActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    goto :goto_5

    :pswitch_8
    move-object/from16 v3, p0

    move-object/from16 v9, p2

    const/4 v15, 0x1

    .line 559
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 560
    const-string v0, "http://www.w3.org/1998/Math/MathML"

    invoke-virtual {v9, v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertForeignElementFor(Lorg/jsoup/parser/Token$StartTag;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    goto :goto_5

    :pswitch_9
    move-object/from16 v3, p0

    move-object/from16 v9, p2

    const/4 v15, 0x1

    .line 367
    invoke-virtual {v9, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 368
    invoke-virtual {v9, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStack(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    const/4 v0, 0x0

    return v0

    :cond_49
    const/4 v0, 0x0

    .line 370
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getStack()Ljava/util/ArrayList;

    move-result-object v1

    .line 371
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_47

    .line 372
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getStack()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    .line 373
    invoke-virtual {v2}, Lorg/jsoup/parser/Token$StartTag;->hasAttributes()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 374
    iget-object v1, v2, Lorg/jsoup/parser/Token$StartTag;->attributes:Lorg/jsoup/nodes/Attributes;

    invoke-virtual {v1}, Lorg/jsoup/nodes/Attributes;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4a
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/Attribute;

    .line 375
    invoke-virtual {v2}, Lorg/jsoup/nodes/Attribute;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/jsoup/nodes/Element;->hasAttr(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4a

    .line 376
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/jsoup/nodes/Attributes;->put(Lorg/jsoup/nodes/Attribute;)Lorg/jsoup/nodes/Attributes;

    goto :goto_6

    :pswitch_a
    move-object/from16 v3, p0

    move-object/from16 v9, p2

    const/4 v15, 0x1

    .line 419
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getFormElement()Lorg/jsoup/nodes/FormElement;

    move-result-object v1

    if-eqz v1, :cond_4b

    invoke-virtual {v9, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStack(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4b

    .line 420
    invoke-virtual {v9, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    const/4 v0, 0x0

    return v0

    .line 423
    :cond_4b
    invoke-virtual {v9, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 424
    invoke-virtual {v9, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->closeElement(Ljava/lang/String;)V

    .line 426
    :cond_4c
    invoke-virtual {v9, v2, v15, v15}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertFormElement(Lorg/jsoup/parser/Token$StartTag;ZZ)Lorg/jsoup/nodes/FormElement;

    goto/16 :goto_5

    :pswitch_b
    move-object/from16 v3, p0

    move-object/from16 v9, p2

    const/4 v15, 0x1

    .line 382
    invoke-virtual {v9, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 383
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getStack()Ljava/util/ArrayList;

    move-result-object v0

    .line 384
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v1, v15, :cond_50

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v5, 0x2

    if-le v1, v5, :cond_4d

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    invoke-virtual {v0, v8}, Lorg/jsoup/nodes/Element;->nameIs(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_50

    :cond_4d
    invoke-virtual {v9, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStack(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e

    goto :goto_8

    :cond_4e
    const/4 v0, 0x0

    .line 388
    invoke-virtual {v9, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    .line 391
    invoke-virtual {v2}, Lorg/jsoup/parser/Token$StartTag;->hasAttributes()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-virtual {v9, v8}, Lorg/jsoup/parser/HtmlTreeBuilder;->getFromStack(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    if-eqz v0, :cond_47

    .line 392
    iget-object v1, v2, Lorg/jsoup/parser/Token$StartTag;->attributes:Lorg/jsoup/nodes/Attributes;

    invoke-virtual {v1}, Lorg/jsoup/nodes/Attributes;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4f
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/Attribute;

    .line 393
    invoke-virtual {v2}, Lorg/jsoup/nodes/Attribute;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/jsoup/nodes/Element;->hasAttr(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4f

    .line 394
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/jsoup/nodes/Attributes;->put(Lorg/jsoup/nodes/Attribute;)Lorg/jsoup/nodes/Attributes;

    goto :goto_7

    :cond_50
    :goto_8
    const/4 v1, 0x0

    return v1

    :pswitch_c
    move-object/from16 v3, p0

    move-object/from16 v9, p2

    const/4 v1, 0x0

    const/4 v15, 0x1

    .line 531
    invoke-virtual {v9, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_51

    .line 532
    invoke-virtual {v9, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 534
    :cond_51
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 535
    invoke-virtual {v9, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    .line 536
    invoke-static {v2, v9}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$300(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/HtmlTreeBuilder;)V

    goto/16 :goto_5

    :pswitch_d
    move-object/from16 v3, p0

    move-object/from16 v9, p2

    const/4 v15, 0x1

    .line 563
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 564
    const-string v0, "http://www.w3.org/2000/svg"

    invoke-virtual {v9, v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertForeignElementFor(Lorg/jsoup/parser/Token$StartTag;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_5

    :pswitch_e
    move-object/from16 v3, p0

    move-object/from16 v9, p2

    const/4 v15, 0x1

    .line 585
    invoke-virtual {v9, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 586
    invoke-virtual {v9, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 588
    :cond_52
    invoke-virtual {v9, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 589
    iget-object v0, v9, Lorg/jsoup/parser/HtmlTreeBuilder;->reader:Lorg/jsoup/parser/CharacterReader;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/CharacterReader;->matchConsume(Ljava/lang/String;)Z

    const/4 v0, 0x0

    .line 590
    invoke-virtual {v9, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    goto/16 :goto_5

    :pswitch_f
    move-object/from16 v3, p0

    move-object/from16 v9, p2

    const/4 v15, 0x1

    .line 634
    invoke-virtual {v9, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 635
    invoke-virtual {v9, v12}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Ljava/lang/String;)V

    .line 636
    invoke-virtual {v9, v12}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_53

    invoke-virtual {v9, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_53

    .line 637
    invoke-virtual {v9, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 639
    :cond_53
    invoke-virtual {v9, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_5

    :pswitch_10
    move-object/from16 v3, p0

    move-object/from16 v9, p2

    const/4 v15, 0x1

    .line 624
    invoke-virtual {v9, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 625
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags()V

    .line 626
    invoke-virtual {v9, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_54

    .line 627
    invoke-virtual {v9, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 629
    :cond_54
    invoke-virtual {v9, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_5

    :pswitch_11
    move-object/from16 v3, p0

    move-object/from16 v9, p2

    const/4 v1, 0x0

    const/4 v15, 0x1

    .line 350
    invoke-virtual {v9, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    .line 351
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getStack()Ljava/util/ArrayList;

    move-result-object v1

    .line 352
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v15

    :goto_9
    if-lez v4, :cond_57

    .line 353
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jsoup/nodes/Element;

    .line 354
    invoke-virtual {v5, v13}, Lorg/jsoup/nodes/Element;->nameIs(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_55

    .line 355
    invoke-virtual {v9, v13}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    goto :goto_a

    .line 358
    :cond_55
    invoke-static {v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->isSpecial(Lorg/jsoup/nodes/Element;)Z

    move-result v6

    if-eqz v6, :cond_56

    invoke-virtual {v5}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartLiBreakers:[Ljava/lang/String;

    invoke-static {v5, v6}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_56

    goto :goto_a

    :cond_56
    add-int/lit8 v4, v4, -0x1

    goto :goto_9

    .line 361
    :cond_57
    :goto_a
    invoke-virtual {v9, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 362
    invoke-virtual {v9, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 364
    :cond_58
    invoke-virtual {v9, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_5

    :pswitch_12
    move-object/from16 v3, p0

    move-object/from16 v9, p2

    const/4 v15, 0x1

    .line 472
    invoke-virtual {v9, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 473
    invoke-virtual {v9, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 475
    :cond_59
    invoke-virtual {v9, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertEmptyElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    const/4 v0, 0x0

    .line 476
    invoke-virtual {v9, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    goto/16 :goto_5

    :pswitch_13
    move-object/from16 v3, p0

    move-object/from16 v9, p2

    const/4 v15, 0x1

    .line 573
    invoke-virtual {v9, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 574
    invoke-virtual {v9, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 576
    :cond_5a
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->Headings:[Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 577
    invoke-virtual {v9, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 578
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->pop()Lorg/jsoup/nodes/Element;

    .line 580
    :cond_5b
    invoke-virtual {v9, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_5

    :pswitch_14
    move-object/from16 v3, p0

    move-object/from16 v9, p2

    const/4 v1, 0x0

    const/4 v15, 0x1

    .line 595
    invoke-virtual {v9, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    .line 596
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getStack()Ljava/util/ArrayList;

    move-result-object v1

    .line 597
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v5, v4, -0x1

    const/16 v6, 0x18

    if-lt v5, v6, :cond_5c

    const/16 v6, 0x19

    sub-int/2addr v4, v6

    goto :goto_b

    :cond_5c
    const/4 v4, 0x0

    :goto_b
    if-lt v5, v4, :cond_5f

    .line 600
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jsoup/nodes/Element;

    .line 601
    invoke-virtual {v6}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->DdDt:[Ljava/lang/String;

    invoke-static {v7, v8}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5d

    .line 602
    invoke-virtual {v6}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    goto :goto_c

    .line 605
    :cond_5d
    invoke-static {v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->isSpecial(Lorg/jsoup/nodes/Element;)Z

    move-result v7

    if-eqz v7, :cond_5e

    invoke-virtual {v6}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartLiBreakers:[Ljava/lang/String;

    invoke-static {v6, v7}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5e

    goto :goto_c

    :cond_5e
    add-int/lit8 v5, v5, -0x1

    goto :goto_b

    .line 608
    :cond_5f
    :goto_c
    invoke-virtual {v9, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 609
    invoke-virtual {v9, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 611
    :cond_60
    invoke-virtual {v9, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_5

    :pswitch_15
    move-object/from16 v3, p0

    move-object/from16 v9, p2

    move-object/from16 v0, v17

    const/4 v15, 0x1

    .line 329
    invoke-virtual {v9, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->getActiveFormattingElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    if-eqz v1, :cond_61

    .line 330
    invoke-virtual {v9, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 331
    invoke-virtual {v9, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 334
    invoke-virtual {v9, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->getFromStack(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    if-eqz v0, :cond_61

    .line 336
    invoke-virtual {v9, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    .line 337
    invoke-virtual {v9, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromStack(Lorg/jsoup/nodes/Element;)Z

    .line 340
    :cond_61
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 341
    invoke-virtual {v9, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    .line 342
    invoke-virtual {v9, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->pushActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    goto/16 :goto_5

    :pswitch_16
    move-object/from16 v3, p0

    move-object/from16 v9, p2

    const/4 v15, 0x1

    .line 666
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 667
    invoke-virtual {v9, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    .line 668
    invoke-virtual {v9, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->pushActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    goto/16 :goto_5

    :pswitch_17
    move-object/from16 v3, p0

    move-object/from16 v9, p2

    const/4 v15, 0x1

    .line 547
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 548
    invoke-virtual {v9, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    const/4 v0, 0x0

    .line 549
    invoke-virtual {v9, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    .line 550
    iget-boolean v0, v2, Lorg/jsoup/parser/Token$StartTag;->selfClosing:Z

    if-eqz v0, :cond_62

    goto/16 :goto_5

    .line 552
    :cond_62
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->state()Lorg/jsoup/parser/HtmlTreeBuilderState;

    move-result-object v0

    .line 553
    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InTable:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_64

    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InCaption:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_64

    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InTableBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_64

    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InRow:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_64

    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InCell:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    goto :goto_d

    .line 556
    :cond_63
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InSelect:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v9, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_5

    .line 554
    :cond_64
    :goto_d
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InSelectInTable:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v9, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_5

    :pswitch_18
    move-object/from16 v3, p0

    move-object/from16 v9, p2

    const/4 v15, 0x1

    .line 522
    invoke-virtual {v9, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 523
    invoke-virtual {v2}, Lorg/jsoup/parser/Token$StartTag;->isSelfClosing()Z

    move-result v0

    if-nez v0, :cond_47

    .line 524
    iget-object v0, v9, Lorg/jsoup/parser/HtmlTreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->Rcdata:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 525
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->markInsertionMode()V

    const/4 v0, 0x0

    .line 526
    invoke-virtual {v9, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    .line 527
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->Text:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v9, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_5

    :pswitch_19
    move-object/from16 v3, p0

    move-object/from16 v9, p2

    const/4 v0, 0x1

    .line 616
    invoke-virtual {v9, v15}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 617
    invoke-virtual {v9, v15}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 618
    :cond_65
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 619
    invoke-virtual {v9, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_f

    :pswitch_1a
    move-object/from16 v3, p0

    move-object/from16 v9, p2

    const/4 v0, 0x1

    .line 649
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 650
    invoke-virtual {v9, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertEmptyElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    const/4 v1, 0x0

    .line 651
    invoke-virtual {v9, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    goto/16 :goto_f

    :pswitch_1b
    move-object/from16 v3, p0

    move-object/from16 v9, p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 539
    invoke-virtual {v9, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    .line 540
    invoke-static {v2, v9}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$300(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/HtmlTreeBuilder;)V

    goto/16 :goto_f

    :pswitch_1c
    move-object/from16 v3, p0

    move-object/from16 v4, p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 436
    invoke-virtual {v4, v9}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_66

    .line 438
    invoke-virtual {v4, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 439
    invoke-virtual {v4, v9}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 440
    invoke-virtual {v4, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    goto :goto_f

    .line 442
    :cond_66
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 443
    invoke-virtual {v4, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 444
    invoke-virtual {v4, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    goto :goto_f

    :pswitch_1d
    move-object/from16 v3, p0

    move-object/from16 v4, p2

    const/4 v0, 0x1

    .line 400
    invoke-virtual {v4, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 401
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getStack()Ljava/util/ArrayList;

    move-result-object v1

    .line 402
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v5, v0, :cond_6b

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_67

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jsoup/nodes/Element;

    invoke-virtual {v5, v8}, Lorg/jsoup/nodes/Element;->nameIs(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_67

    goto :goto_10

    .line 405
    :cond_67
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk()Z

    move-result v5

    if-nez v5, :cond_68

    const/4 v5, 0x0

    return v5

    .line 408
    :cond_68
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jsoup/nodes/Element;

    .line 409
    invoke-virtual {v5}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v6

    if-eqz v6, :cond_69

    .line 410
    invoke-virtual {v5}, Lorg/jsoup/nodes/Element;->remove()V

    .line 412
    :cond_69
    :goto_e
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v0, :cond_6a

    .line 413
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v0

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_e

    .line 414
    :cond_6a
    invoke-virtual {v4, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 415
    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InFrameset:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v4, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    :goto_f
    return v0

    :cond_6b
    :goto_10
    const/4 v0, 0x0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x620c002b -> :sswitch_37
        -0x521dd8ce -> :sswitch_36
        -0x47007d5c -> :sswitch_35
        -0x43a19f6f -> :sswitch_34
        -0x3c35778b -> :sswitch_33
        -0x3bcc48c6 -> :sswitch_32
        -0x3600cb04 -> :sswitch_31
        -0x352aa04e -> :sswitch_30
        -0x352a8969 -> :sswitch_2f
        -0x4d08054 -> :sswitch_2e
        0x61 -> :sswitch_2d
        0x62 -> :sswitch_2c
        0x69 -> :sswitch_2b
        0x73 -> :sswitch_2a
        0x75 -> :sswitch_29
        0xc50 -> :sswitch_28
        0xc80 -> :sswitch_27
        0xc90 -> :sswitch_26
        0xca8 -> :sswitch_25
        0xcc9 -> :sswitch_24
        0xcca -> :sswitch_23
        0xccb -> :sswitch_22
        0xccc -> :sswitch_21
        0xccd -> :sswitch_20
        0xcce -> :sswitch_1f
        0xd0a -> :sswitch_1e
        0xd7d -> :sswitch_1d
        0xe30 -> :sswitch_1c
        0xe3e -> :sswitch_1b
        0xe42 -> :sswitch_1a
        0xe80 -> :sswitch_19
        0x17d00 -> :sswitch_18
        0x197c3 -> :sswitch_17
        0x1b2a3 -> :sswitch_16
        0x1ba61 -> :sswitch_15
        0x1be64 -> :sswitch_14
        0x1cb07 -> :sswitch_13
        0x1d01b -> :sswitch_12
        0x2dd08d -> :sswitch_11
        0x2e39a2 -> :sswitch_10
        0x2eaded -> :sswitch_f
        0x300c4f -> :sswitch_e
        0x300cc4 -> :sswitch_d
        0x3107ab -> :sswitch_c
        0x330708 -> :sswitch_b
        0x33add1 -> :sswitch_a
        0x35f74a -> :sswitch_9
        0x5c24ed9 -> :sswitch_8
        0x5faa95b -> :sswitch_7
        0x5fb57ca -> :sswitch_6
        0x6879507 -> :sswitch_5
        0x6903bce -> :sswitch_4
        0xad8ba84 -> :sswitch_3
        0x759d29f7 -> :sswitch_2
        0x7ca6c5e8 -> :sswitch_1
        0x7e19b1b8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_16
        :pswitch_19
        :pswitch_15
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_1a
        :pswitch_14
        :pswitch_14
        :pswitch_16
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_16
        :pswitch_16
        :pswitch_1a
        :pswitch_e
        :pswitch_10
        :pswitch_d
        :pswitch_1a
        :pswitch_c
        :pswitch_1a
        :pswitch_b
        :pswitch_16
        :pswitch_16
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_1a
        :pswitch_5
        :pswitch_4
        :pswitch_16
        :pswitch_3
        :pswitch_e
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method anyOtherEndTag(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 6

    .line 847
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asEndTag()Lorg/jsoup/parser/Token$EndTag;

    move-result-object p1

    iget-object p1, p1, Lorg/jsoup/parser/Token$EndTag;->normalName:Ljava/lang/String;

    .line 848
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getStack()Ljava/util/ArrayList;

    move-result-object v0

    .line 851
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->getFromStack(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 853
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v2

    .line 857
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    :goto_0
    if-ltz v1, :cond_4

    .line 858
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jsoup/nodes/Element;

    .line 859
    invoke-virtual {v4, p1}, Lorg/jsoup/nodes/Element;->nameIs(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 860
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Ljava/lang/String;)V

    .line 861
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 862
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 863
    :cond_1
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    goto :goto_1

    .line 866
    :cond_2
    invoke-static {v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->isSpecial(Lorg/jsoup/nodes/Element;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 867
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v2

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    :goto_1
    return v3
.end method

.method process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 3

    .line 281
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$25;->$SwitchMap$org$jsoup$parser$Token$TokenType:[I

    iget-object v1, p1, Lorg/jsoup/parser/Token;->type:Lorg/jsoup/parser/Token$TokenType;

    invoke-virtual {v1}, Lorg/jsoup/parser/Token$TokenType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 311
    :pswitch_0
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->templateModeSize()I

    move-result v0

    if-lez v0, :cond_0

    .line 312
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InTemplate:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, p1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    move-result p1

    return p1

    .line 313
    :cond_0
    sget-object p1, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyEndOtherErrors:[Ljava/lang/String;

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStackNot([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 314
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto :goto_0

    .line 283
    :pswitch_1
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asCharacter()Lorg/jsoup/parser/Token$Character;

    move-result-object p1

    .line 284
    invoke-virtual {p1}, Lorg/jsoup/parser/Token$Character;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$400()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 286
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v1

    .line 288
    :cond_1
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$100(Lorg/jsoup/parser/Token;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 289
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 290
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertCharacterNode(Lorg/jsoup/parser/Token$Character;)V

    goto :goto_0

    .line 292
    :cond_2
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 293
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertCharacterNode(Lorg/jsoup/parser/Token$Character;)V

    .line 294
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    goto :goto_0

    .line 309
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->inBodyEndTag(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result p1

    return p1

    .line 307
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->inBodyStartTag(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result p1

    return p1

    .line 303
    :pswitch_4
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v1

    .line 299
    :pswitch_5
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asComment()Lorg/jsoup/parser/Token$Comment;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertCommentNode(Lorg/jsoup/parser/Token$Comment;)V

    :cond_3
    :goto_0
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
