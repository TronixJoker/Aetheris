.class public final Landroidx/compose/ui/modifier/ModifierLocalManager;
.super Ljava/lang/Object;
.source "ModifierLocalManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nModifierLocalManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModifierLocalManager.kt\nandroidx/compose/ui/modifier/ModifierLocalManager\n+ 2 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n+ 3 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 NodeKind.kt\nandroidx/compose/ui/node/Nodes\n+ 6 DelegatableNode.kt\nandroidx/compose/ui/node/DelegatableNodeKt\n+ 7 InlineClassHelper.kt\nandroidx/compose/ui/internal/InlineClassHelperKt\n+ 8 Modifier.kt\nandroidx/compose/ui/Modifier$Node\n+ 9 DelegatingNode.kt\nandroidx/compose/ui/node/DelegatingNode\n*L\n1#1,122:1\n1208#2:123\n1187#2,2:124\n1208#2:126\n1187#2,2:127\n1208#2:129\n1187#2,2:130\n1208#2:132\n1187#2,2:133\n1208#2:172\n1187#2,2:173\n476#3,7:135\n523#3:142\n483#3,4:143\n476#3,7:147\n523#3:154\n483#3,4:155\n728#3,2:240\n728#3,2:242\n728#3,2:244\n728#3,2:246\n728#3,2:248\n728#3,2:250\n1855#4,2:159\n86#5:161\n310#6:162\n167#6:163\n168#6:171\n169#6,12:175\n311#6:187\n432#6,5:188\n312#6,2:193\n437#6:195\n442#6,2:197\n444#6,17:202\n461#6,8:222\n314#6:230\n181#6,8:231\n315#6:239\n42#7,7:164\n249#8:196\n245#9,3:199\n248#9,3:219\n*S KotlinDebug\n*F\n+ 1 ModifierLocalManager.kt\nandroidx/compose/ui/modifier/ModifierLocalManager\n*L\n44#1:123\n44#1:124,2\n45#1:126\n45#1:127,2\n46#1:129\n46#1:130,2\n47#1:132\n47#1:133,2\n93#1:172\n93#1:173,2\n64#1:135,7\n65#1:142\n64#1:143,4\n77#1:147,7\n78#1:154\n77#1:155,4\n105#1:240,2\n106#1:242,2\n111#1:244,2\n112#1:246,2\n117#1:248,2\n118#1:250,2\n85#1:159,2\n93#1:161\n93#1:162\n93#1:163\n93#1:171\n93#1:175,12\n93#1:187\n93#1:188,5\n93#1:193,2\n93#1:195\n93#1:197,2\n93#1:202,17\n93#1:222,8\n93#1:230\n93#1:231,8\n93#1:239\n93#1:164,7\n93#1:196\n93#1:199,3\n93#1:219,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u001a\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00072\n\u0010\u0014\u001a\u0006\u0012\u0002\u0008\u00030\tJ\u0006\u0010\u0015\u001a\u00020\u0012J*\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00172\n\u0010\u0014\u001a\u0006\u0012\u0002\u0008\u00030\t2\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0019H\u0002J\u001a\u0010\u001a\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00072\n\u0010\u0014\u001a\u0006\u0012\u0002\u0008\u00030\tJ\u0006\u0010\u001b\u001a\u00020\u0012J\u001a\u0010\u001c\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00072\n\u0010\u0014\u001a\u0006\u0012\u0002\u0008\u00030\tR\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0008\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\t0\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0014\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0010\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\t0\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Landroidx/compose/ui/modifier/ModifierLocalManager;",
        "",
        "owner",
        "Landroidx/compose/ui/node/Owner;",
        "(Landroidx/compose/ui/node/Owner;)V",
        "inserted",
        "Landroidx/compose/runtime/collection/MutableVector;",
        "Landroidx/compose/ui/node/BackwardsCompatNode;",
        "insertedLocal",
        "Landroidx/compose/ui/modifier/ModifierLocal;",
        "invalidated",
        "",
        "getOwner",
        "()Landroidx/compose/ui/node/Owner;",
        "removed",
        "Landroidx/compose/ui/node/LayoutNode;",
        "removedLocal",
        "insertedProvider",
        "",
        "node",
        "key",
        "invalidate",
        "invalidateConsumersOfNodeForKey",
        "Landroidx/compose/ui/Modifier$Node;",
        "set",
        "",
        "removedProvider",
        "triggerUpdates",
        "updatedProvider",
        "ui_release"
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
.field public static final $stable:I = 0x8


# instance fields
.field private final inserted:Landroidx/compose/runtime/collection/MutableVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/node/BackwardsCompatNode;",
            ">;"
        }
    .end annotation
.end field

.field private final insertedLocal:Landroidx/compose/runtime/collection/MutableVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/modifier/ModifierLocal<",
            "*>;>;"
        }
    .end annotation
.end field

.field private invalidated:Z

.field private final owner:Landroidx/compose/ui/node/Owner;

.field private final removed:Landroidx/compose/runtime/collection/MutableVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/node/LayoutNode;",
            ">;"
        }
    .end annotation
.end field

.field private final removedLocal:Landroidx/compose/runtime/collection/MutableVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/modifier/ModifierLocal<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/node/Owner;)V
    .locals 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Landroidx/compose/ui/modifier/ModifierLocalManager;->owner:Landroidx/compose/ui/node/Owner;

    .line 125
    new-instance p1, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v0, 0x10

    new-array v1, v0, [Landroidx/compose/ui/node/BackwardsCompatNode;

    const/4 v2, 0x0

    invoke-direct {p1, v1, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 44
    iput-object p1, p0, Landroidx/compose/ui/modifier/ModifierLocalManager;->inserted:Landroidx/compose/runtime/collection/MutableVector;

    .line 128
    new-instance p1, Landroidx/compose/runtime/collection/MutableVector;

    new-array v1, v0, [Landroidx/compose/ui/modifier/ModifierLocal;

    invoke-direct {p1, v1, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 45
    iput-object p1, p0, Landroidx/compose/ui/modifier/ModifierLocalManager;->insertedLocal:Landroidx/compose/runtime/collection/MutableVector;

    .line 131
    new-instance p1, Landroidx/compose/runtime/collection/MutableVector;

    new-array v1, v0, [Landroidx/compose/ui/node/LayoutNode;

    invoke-direct {p1, v1, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 46
    iput-object p1, p0, Landroidx/compose/ui/modifier/ModifierLocalManager;->removed:Landroidx/compose/runtime/collection/MutableVector;

    .line 134
    new-instance p1, Landroidx/compose/runtime/collection/MutableVector;

    new-array v0, v0, [Landroidx/compose/ui/modifier/ModifierLocal;

    invoke-direct {p1, v0, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 47
    iput-object p1, p0, Landroidx/compose/ui/modifier/ModifierLocalManager;->removedLocal:Landroidx/compose/runtime/collection/MutableVector;

    return-void
.end method

.method private final invalidateConsumersOfNodeForKey(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/modifier/ModifierLocal;Ljava/util/Set;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier$Node;",
            "Landroidx/compose/ui/modifier/ModifierLocal<",
            "*>;",
            "Ljava/util/Set<",
            "Landroidx/compose/ui/node/BackwardsCompatNode;",
            ">;)V"
        }
    .end annotation

    .line 93
    check-cast p1, Landroidx/compose/ui/node/DelegatableNode;

    const/16 v0, 0x20

    .line 161
    invoke-static {v0}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v0

    .line 163
    invoke-interface {p1}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "visitSubtreeIf called on an unattached node"

    .line 168
    invoke-static {v1}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 174
    :cond_0
    new-instance v1, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v2, 0x10

    new-array v3, v2, [Landroidx/compose/ui/Modifier$Node;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 175
    invoke-interface {p1}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v3

    if-nez v3, :cond_1

    .line 177
    invoke-interface {p1}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object p1

    invoke-static {v1, p1}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    goto :goto_0

    .line 179
    :cond_1
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 180
    :goto_0
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->isNotEmpty()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 181
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result p1

    const/4 v3, 0x1

    sub-int/2addr p1, v3

    invoke-virtual {v1, p1}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/Modifier$Node;

    .line 182
    invoke-virtual {p1}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v5

    and-int/2addr v5, v0

    if-eqz v5, :cond_c

    move-object v5, p1

    :goto_1
    if-eqz v5, :cond_c

    .line 185
    invoke-virtual {v5}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v6

    and-int/2addr v6, v0

    if-eqz v6, :cond_b

    const/4 v6, 0x0

    move-object v7, v5

    move-object v8, v6

    :goto_2
    if-eqz v7, :cond_b

    .line 191
    instance-of v9, v7, Landroidx/compose/ui/modifier/ModifierLocalModifierNode;

    if-eqz v9, :cond_3

    .line 193
    check-cast v7, Landroidx/compose/ui/modifier/ModifierLocalModifierNode;

    .line 94
    instance-of v9, v7, Landroidx/compose/ui/node/BackwardsCompatNode;

    if-eqz v9, :cond_2

    move-object v9, v7

    check-cast v9, Landroidx/compose/ui/node/BackwardsCompatNode;

    invoke-virtual {v9}, Landroidx/compose/ui/node/BackwardsCompatNode;->getElement()Landroidx/compose/ui/Modifier$Element;

    move-result-object v10

    instance-of v10, v10, Landroidx/compose/ui/modifier/ModifierLocalConsumer;

    if-eqz v10, :cond_2

    .line 95
    invoke-virtual {v9}, Landroidx/compose/ui/node/BackwardsCompatNode;->getReadValues()Ljava/util/HashSet;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 96
    invoke-interface {p3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_2
    invoke-interface {v7}, Landroidx/compose/ui/modifier/ModifierLocalModifierNode;->getProvidedValues()Landroidx/compose/ui/modifier/ModifierLocalMap;

    move-result-object v7

    invoke-virtual {v7, p2}, Landroidx/compose/ui/modifier/ModifierLocalMap;->contains$ui_release(Landroidx/compose/ui/modifier/ModifierLocal;)Z

    move-result v7

    xor-int/2addr v7, v3

    if-nez v7, :cond_a

    goto :goto_0

    .line 196
    :cond_3
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v9

    and-int/2addr v9, v0

    if-eqz v9, :cond_a

    .line 195
    instance-of v9, v7, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v9, :cond_a

    .line 198
    move-object v9, v7

    check-cast v9, Landroidx/compose/ui/node/DelegatingNode;

    .line 199
    invoke-virtual {v9}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v9

    move v10, v4

    :goto_3
    if-eqz v9, :cond_9

    .line 196
    invoke-virtual {v9}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v11

    and-int/2addr v11, v0

    if-eqz v11, :cond_8

    add-int/lit8 v10, v10, 0x1

    if-ne v10, v3, :cond_4

    move-object v7, v9

    goto :goto_4

    :cond_4
    if-nez v8, :cond_5

    .line 174
    new-instance v8, Landroidx/compose/runtime/collection/MutableVector;

    new-array v11, v2, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v8, v11, v4}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_5
    if-eqz v7, :cond_7

    if-eqz v8, :cond_6

    .line 212
    invoke-virtual {v8, v7}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    :cond_6
    move-object v7, v6

    :cond_7
    if-eqz v8, :cond_8

    .line 215
    invoke-virtual {v8, v9}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 219
    :cond_8
    :goto_4
    invoke-virtual {v9}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v9

    goto :goto_3

    :cond_9
    if-ne v10, v3, :cond_a

    goto :goto_2

    .line 227
    :cond_a
    invoke-static {v8}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    goto :goto_2

    .line 233
    :cond_b
    invoke-virtual {v5}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    goto/16 :goto_1

    .line 236
    :cond_c
    invoke-static {v1, p1}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    goto/16 :goto_0

    :cond_d
    return-void
.end method


# virtual methods
.method public final getOwner()Landroidx/compose/ui/node/Owner;
    .locals 1

    .line 43
    iget-object v0, p0, Landroidx/compose/ui/modifier/ModifierLocalManager;->owner:Landroidx/compose/ui/node/Owner;

    return-object v0
.end method

.method public final insertedProvider(Landroidx/compose/ui/node/BackwardsCompatNode;Landroidx/compose/ui/modifier/ModifierLocal;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/node/BackwardsCompatNode;",
            "Landroidx/compose/ui/modifier/ModifierLocal<",
            "*>;)V"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Landroidx/compose/ui/modifier/ModifierLocalManager;->inserted:Landroidx/compose/runtime/collection/MutableVector;

    .line 244
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object p1, p0, Landroidx/compose/ui/modifier/ModifierLocalManager;->insertedLocal:Landroidx/compose/runtime/collection/MutableVector;

    .line 246
    invoke-virtual {p1, p2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 113
    invoke-virtual {p0}, Landroidx/compose/ui/modifier/ModifierLocalManager;->invalidate()V

    return-void
.end method

.method public final invalidate()V
    .locals 2

    .line 51
    iget-boolean v0, p0, Landroidx/compose/ui/modifier/ModifierLocalManager;->invalidated:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Landroidx/compose/ui/modifier/ModifierLocalManager;->invalidated:Z

    .line 53
    iget-object v0, p0, Landroidx/compose/ui/modifier/ModifierLocalManager;->owner:Landroidx/compose/ui/node/Owner;

    new-instance v1, Landroidx/compose/ui/modifier/ModifierLocalManager$invalidate$1;

    invoke-direct {v1, p0}, Landroidx/compose/ui/modifier/ModifierLocalManager$invalidate$1;-><init>(Landroidx/compose/ui/modifier/ModifierLocalManager;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0, v1}, Landroidx/compose/ui/node/Owner;->registerOnEndApplyChangesListener(Lkotlin/jvm/functions/Function0;)V

    :cond_0
    return-void
.end method

.method public final removedProvider(Landroidx/compose/ui/node/BackwardsCompatNode;Landroidx/compose/ui/modifier/ModifierLocal;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/node/BackwardsCompatNode;",
            "Landroidx/compose/ui/modifier/ModifierLocal<",
            "*>;)V"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Landroidx/compose/ui/modifier/ModifierLocalManager;->removed:Landroidx/compose/runtime/collection/MutableVector;

    check-cast p1, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {p1}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object p1

    .line 248
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object p1, p0, Landroidx/compose/ui/modifier/ModifierLocalManager;->removedLocal:Landroidx/compose/runtime/collection/MutableVector;

    .line 250
    invoke-virtual {p1, p2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-virtual {p0}, Landroidx/compose/ui/modifier/ModifierLocalManager;->invalidate()V

    return-void
.end method

.method public final triggerUpdates()V
    .locals 8

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Landroidx/compose/ui/modifier/ModifierLocalManager;->invalidated:Z

    .line 63
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 64
    iget-object v2, p0, Landroidx/compose/ui/modifier/ModifierLocalManager;->removed:Landroidx/compose/runtime/collection/MutableVector;

    .line 136
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v3

    if-lez v3, :cond_2

    .line 139
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v2

    move v4, v0

    .line 141
    :cond_0
    aget-object v5, v2, v4

    check-cast v5, Landroidx/compose/ui/node/LayoutNode;

    .line 65
    iget-object v6, p0, Landroidx/compose/ui/modifier/ModifierLocalManager;->removedLocal:Landroidx/compose/runtime/collection/MutableVector;

    .line 142
    invoke-virtual {v6}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v6

    aget-object v6, v6, v4

    .line 65
    check-cast v6, Landroidx/compose/ui/modifier/ModifierLocal;

    .line 66
    invoke-virtual {v5}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui_release()Landroidx/compose/ui/node/NodeChain;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/compose/ui/node/NodeChain;->getHead$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 69
    invoke-virtual {v5}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui_release()Landroidx/compose/ui/node/NodeChain;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/ui/node/NodeChain;->getHead$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    move-object v7, v1

    check-cast v7, Ljava/util/Set;

    invoke-direct {p0, v5, v6, v7}, Landroidx/compose/ui/modifier/ModifierLocalManager;->invalidateConsumersOfNodeForKey(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/modifier/ModifierLocal;Ljava/util/Set;)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    if-lt v4, v3, :cond_0

    .line 72
    :cond_2
    iget-object v2, p0, Landroidx/compose/ui/modifier/ModifierLocalManager;->removed:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v2}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    .line 73
    iget-object v2, p0, Landroidx/compose/ui/modifier/ModifierLocalManager;->removedLocal:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v2}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    .line 77
    iget-object v2, p0, Landroidx/compose/ui/modifier/ModifierLocalManager;->inserted:Landroidx/compose/runtime/collection/MutableVector;

    .line 148
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v3

    if-lez v3, :cond_5

    .line 151
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v2

    .line 153
    :cond_3
    aget-object v4, v2, v0

    check-cast v4, Landroidx/compose/ui/node/BackwardsCompatNode;

    .line 78
    iget-object v5, p0, Landroidx/compose/ui/modifier/ModifierLocalManager;->insertedLocal:Landroidx/compose/runtime/collection/MutableVector;

    .line 154
    invoke-virtual {v5}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v5

    aget-object v5, v5, v0

    .line 78
    check-cast v5, Landroidx/compose/ui/modifier/ModifierLocal;

    .line 79
    invoke-virtual {v4}, Landroidx/compose/ui/node/BackwardsCompatNode;->isAttached()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 80
    check-cast v4, Landroidx/compose/ui/Modifier$Node;

    move-object v6, v1

    check-cast v6, Ljava/util/Set;

    invoke-direct {p0, v4, v5, v6}, Landroidx/compose/ui/modifier/ModifierLocalManager;->invalidateConsumersOfNodeForKey(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/modifier/ModifierLocal;Ljava/util/Set;)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    if-lt v0, v3, :cond_3

    .line 83
    :cond_5
    iget-object v0, p0, Landroidx/compose/ui/modifier/ModifierLocalManager;->inserted:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    .line 84
    iget-object v0, p0, Landroidx/compose/ui/modifier/ModifierLocalManager;->insertedLocal:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    .line 85
    check-cast v1, Ljava/lang/Iterable;

    .line 159
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/node/BackwardsCompatNode;

    .line 85
    invoke-virtual {v1}, Landroidx/compose/ui/node/BackwardsCompatNode;->updateModifierLocalConsumer()V

    goto :goto_0

    :cond_6
    return-void
.end method

.method public final updatedProvider(Landroidx/compose/ui/node/BackwardsCompatNode;Landroidx/compose/ui/modifier/ModifierLocal;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/node/BackwardsCompatNode;",
            "Landroidx/compose/ui/modifier/ModifierLocal<",
            "*>;)V"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Landroidx/compose/ui/modifier/ModifierLocalManager;->inserted:Landroidx/compose/runtime/collection/MutableVector;

    .line 240
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object p1, p0, Landroidx/compose/ui/modifier/ModifierLocalManager;->insertedLocal:Landroidx/compose/runtime/collection/MutableVector;

    .line 242
    invoke-virtual {p1, p2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-virtual {p0}, Landroidx/compose/ui/modifier/ModifierLocalManager;->invalidate()V

    return-void
.end method
