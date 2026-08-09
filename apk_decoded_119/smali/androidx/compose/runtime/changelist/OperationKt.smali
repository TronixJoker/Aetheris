.class public final Landroidx/compose/runtime/changelist/OperationKt;
.super Ljava/lang/Object;
.source "Operation.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOperation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Operation.kt\nandroidx/compose/runtime/changelist/OperationKt\n+ 2 SlotTable.kt\nandroidx/compose/runtime/SlotTable\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,992:1\n175#2,5:993\n181#2,3:999\n175#2,5:1002\n181#2,3:1008\n1#3:998\n1#3:1007\n*S KotlinDebug\n*F\n+ 1 Operation.kt\nandroidx/compose/runtime/changelist/OperationKt\n*L\n924#1:993,5\n924#1:999,3\n982#1:1002,5\n982#1:1008,3\n924#1:998\n982#1:1007\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0002\u001a(\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u000e\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0008H\u0002\u001a(\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0002\u001a\u00020\u00032\u000e\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u00082\u0006\u0010\u000c\u001a\u00020\u0001H\u0002\u001a(\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0002\u001a\u00020\u0003H\u0002\u00a8\u0006\u0014"
    }
    d2 = {
        "currentNodeIndex",
        "",
        "slots",
        "Landroidx/compose/runtime/SlotWriter;",
        "positionToInsert",
        "anchor",
        "Landroidx/compose/runtime/Anchor;",
        "applier",
        "Landroidx/compose/runtime/Applier;",
        "",
        "positionToParentOf",
        "",
        "index",
        "releaseMovableGroupAtCurrent",
        "composition",
        "Landroidx/compose/runtime/ControlledComposition;",
        "parentContext",
        "Landroidx/compose/runtime/CompositionContext;",
        "reference",
        "Landroidx/compose/runtime/MovableContentStateReference;",
        "runtime_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final synthetic access$positionToInsert(Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/Anchor;Landroidx/compose/runtime/Applier;)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/changelist/OperationKt;->positionToInsert(Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/Anchor;Landroidx/compose/runtime/Applier;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$positionToParentOf(Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/Applier;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/changelist/OperationKt;->positionToParentOf(Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/Applier;I)V

    return-void
.end method

.method public static final synthetic access$releaseMovableGroupAtCurrent(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/CompositionContext;Landroidx/compose/runtime/MovableContentStateReference;Landroidx/compose/runtime/SlotWriter;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/runtime/changelist/OperationKt;->releaseMovableGroupAtCurrent(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/CompositionContext;Landroidx/compose/runtime/MovableContentStateReference;Landroidx/compose/runtime/SlotWriter;)V

    return-void
.end method

.method private static final currentNodeIndex(Landroidx/compose/runtime/SlotWriter;)I
    .locals 6

    .line 852
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroup()I

    move-result v0

    .line 855
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getParent()I

    move-result v1

    :goto_0
    if-ltz v1, :cond_0

    .line 856
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/SlotWriter;->isNode(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 857
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/SlotWriter;->parent(I)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v1, v0, :cond_4

    .line 863
    invoke-virtual {p0, v0, v1}, Landroidx/compose/runtime/SlotWriter;->indexInGroup(II)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 864
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/SlotWriter;->isNode(I)Z

    move-result v5

    if-eqz v5, :cond_1

    move v4, v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 867
    :cond_2
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/SlotWriter;->isNode(I)Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v2

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/SlotWriter;->nodeCount(I)I

    move-result v5

    :goto_2
    add-int/2addr v4, v5

    .line 868
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/SlotWriter;->groupSize(I)I

    move-result v5

    add-int/2addr v1, v5

    goto :goto_1

    :cond_4
    return v4
.end method

.method private static final positionToInsert(Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/Anchor;Landroidx/compose/runtime/Applier;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/SlotWriter;",
            "Landroidx/compose/runtime/Anchor;",
            "Landroidx/compose/runtime/Applier<",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 879
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotWriter;->anchorIndex(Landroidx/compose/runtime/Anchor;)I

    move-result p1

    .line 880
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroup()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ge v0, p1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->runtimeCheck(Z)V

    .line 881
    invoke-static {p0, p2, p1}, Landroidx/compose/runtime/changelist/OperationKt;->positionToParentOf(Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/Applier;I)V

    .line 882
    invoke-static {p0}, Landroidx/compose/runtime/changelist/OperationKt;->currentNodeIndex(Landroidx/compose/runtime/SlotWriter;)I

    move-result v0

    .line 883
    :goto_1
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroup()I

    move-result v3

    if-ge v3, p1, :cond_3

    .line 885
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotWriter;->indexInCurrentGroup(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 886
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->isNode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 887
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroup()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/SlotWriter;->node(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Applier;->down(Ljava/lang/Object;)V

    move v0, v2

    .line 890
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->startGroup()V

    goto :goto_1

    .line 892
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->skipGroup()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_1

    .line 896
    :cond_3
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroup()I

    move-result p0

    if-ne p0, p1, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->runtimeCheck(Z)V

    return v0
.end method

.method private static final positionToParentOf(Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/Applier;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/SlotWriter;",
            "Landroidx/compose/runtime/Applier<",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .line 844
    :goto_0
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/SlotWriter;->indexInParent(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 845
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->skipToGroupEnd()V

    .line 846
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getParent()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/SlotWriter;->isNode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroidx/compose/runtime/Applier;->up()V

    .line 847
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->endGroup()I

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static final releaseMovableGroupAtCurrent(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/CompositionContext;Landroidx/compose/runtime/MovableContentStateReference;Landroidx/compose/runtime/SlotWriter;)V
    .locals 5

    .line 911
    new-instance v0, Landroidx/compose/runtime/SlotTable;

    invoke-direct {v0}, Landroidx/compose/runtime/SlotTable;-><init>()V

    .line 912
    invoke-virtual {p3}, Landroidx/compose/runtime/SlotWriter;->getCollectingSourceInformation()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 913
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->collectSourceInformation()V

    .line 915
    :cond_0
    invoke-virtual {p3}, Landroidx/compose/runtime/SlotWriter;->getCollectingCalledInformation()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 916
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->collectCalledByInformation()V

    .line 993
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->openWriter()Landroidx/compose/runtime/SlotWriter;

    move-result-object v1

    const/4 v2, 0x0

    .line 925
    :try_start_0
    invoke-virtual {v1}, Landroidx/compose/runtime/SlotWriter;->beginInsert()V

    .line 928
    invoke-virtual {p2}, Landroidx/compose/runtime/MovableContentStateReference;->getContent$runtime_release()Landroidx/compose/runtime/MovableContent;

    move-result-object v3

    const v4, 0x78cc281

    invoke-virtual {v1, v4, v3}, Landroidx/compose/runtime/SlotWriter;->startGroup(ILjava/lang/Object;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 929
    invoke-static {v1, v2, v4, v3}, Landroidx/compose/runtime/SlotWriter;->markGroup$default(Landroidx/compose/runtime/SlotWriter;IILjava/lang/Object;)V

    .line 930
    invoke-virtual {p2}, Landroidx/compose/runtime/MovableContentStateReference;->getParameter$runtime_release()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/compose/runtime/SlotWriter;->update(Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    invoke-virtual {p2}, Landroidx/compose/runtime/MovableContentStateReference;->getAnchor$runtime_release()Landroidx/compose/runtime/Anchor;

    move-result-object v3

    invoke-virtual {p3, v3, v4, v1}, Landroidx/compose/runtime/SlotWriter;->moveTo(Landroidx/compose/runtime/Anchor;ILandroidx/compose/runtime/SlotWriter;)Ljava/util/List;

    move-result-object p3

    .line 936
    invoke-virtual {v1}, Landroidx/compose/runtime/SlotWriter;->skipGroup()I

    .line 939
    invoke-virtual {v1}, Landroidx/compose/runtime/SlotWriter;->endGroup()I

    .line 941
    invoke-virtual {v1}, Landroidx/compose/runtime/SlotWriter;->endInsert()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 999
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/SlotWriter;->close(Z)V

    .line 946
    new-instance v1, Landroidx/compose/runtime/MovableContentState;

    invoke-direct {v1, v0}, Landroidx/compose/runtime/MovableContentState;-><init>(Landroidx/compose/runtime/SlotTable;)V

    .line 947
    sget-object v3, Landroidx/compose/runtime/RecomposeScopeImpl;->Companion:Landroidx/compose/runtime/RecomposeScopeImpl$Companion;

    invoke-virtual {v3, v0, p3}, Landroidx/compose/runtime/RecomposeScopeImpl$Companion;->hasAnchoredRecomposeScopes$runtime_release(Landroidx/compose/runtime/SlotTable;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 950
    new-instance v3, Landroidx/compose/runtime/changelist/OperationKt$releaseMovableGroupAtCurrent$movableContentRecomposeScopeOwner$1;

    invoke-direct {v3, p0, p2}, Landroidx/compose/runtime/changelist/OperationKt$releaseMovableGroupAtCurrent$movableContentRecomposeScopeOwner$1;-><init>(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/MovableContentStateReference;)V

    .line 1002
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->openWriter()Landroidx/compose/runtime/SlotWriter;

    move-result-object p0

    .line 983
    :try_start_1
    sget-object v0, Landroidx/compose/runtime/RecomposeScopeImpl;->Companion:Landroidx/compose/runtime/RecomposeScopeImpl$Companion;

    .line 986
    check-cast v3, Landroidx/compose/runtime/RecomposeScopeOwner;

    .line 983
    invoke-virtual {v0, p0, p3, v3}, Landroidx/compose/runtime/RecomposeScopeImpl$Companion;->adoptAnchoredScopes$runtime_release(Landroidx/compose/runtime/SlotWriter;Ljava/util/List;Landroidx/compose/runtime/RecomposeScopeOwner;)V

    .line 988
    sget-object p3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1008
    invoke-virtual {p0, v4}, Landroidx/compose/runtime/SlotWriter;->close(Z)V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v2}, Landroidx/compose/runtime/SlotWriter;->close(Z)V

    throw p1

    .line 990
    :cond_2
    :goto_0
    invoke-virtual {p1, p2, v1}, Landroidx/compose/runtime/CompositionContext;->movableContentStateReleased$runtime_release(Landroidx/compose/runtime/MovableContentStateReference;Landroidx/compose/runtime/MovableContentState;)V

    return-void

    :catchall_1
    move-exception p0

    .line 999
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/SlotWriter;->close(Z)V

    throw p0
.end method
