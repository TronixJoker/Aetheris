.class public final Landroidx/compose/ui/focus/FocusInvalidationManager;
.super Ljava/lang/Object;
.source "FocusInvalidationManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFocusInvalidationManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FocusInvalidationManager.kt\nandroidx/compose/ui/focus/FocusInvalidationManager\n+ 2 ScatterSet.kt\nandroidx/collection/ScatterSet\n+ 3 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n+ 4 NodeKind.kt\nandroidx/compose/ui/node/Nodes\n+ 5 DelegatableNode.kt\nandroidx/compose/ui/node/DelegatableNodeKt\n+ 6 Modifier.kt\nandroidx/compose/ui/Modifier$Node\n+ 7 DelegatingNode.kt\nandroidx/compose/ui/node/DelegatingNode\n+ 8 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n+ 9 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 10 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n+ 11 InlineClassHelper.kt\nandroidx/compose/ui/internal/InlineClassHelperKt\n*L\n1#1,154:1\n267#2,4:155\n237#2,7:159\n248#2,3:167\n251#2,2:171\n272#2:173\n273#2:284\n254#2,6:285\n274#2:291\n267#2,4:292\n237#2,7:296\n248#2,3:304\n251#2,2:308\n272#2:310\n273#2:421\n254#2,6:422\n274#2:428\n267#2,4:429\n237#2,7:433\n248#2,3:441\n251#2,2:445\n272#2,2:447\n254#2,6:449\n274#2:455\n1810#3:166\n1672#3:170\n1810#3:303\n1672#3:307\n1810#3:440\n1672#3:444\n96#4:174\n96#4:311\n303#5:175\n432#5,6:176\n442#5,2:183\n444#5,8:188\n452#5,9:199\n461#5,8:211\n304#5:219\n137#5:220\n138#5,8:222\n146#5,9:231\n432#5,37:240\n155#5,6:277\n305#5:283\n303#5:312\n432#5,6:313\n442#5,2:320\n444#5,8:325\n452#5,9:336\n461#5,8:348\n304#5:356\n137#5:357\n138#5,8:359\n146#5,9:368\n432#5,37:377\n155#5,6:414\n305#5:420\n249#6:182\n249#6:319\n245#7,3:185\n248#7,3:208\n245#7,3:322\n248#7,3:345\n1208#8:196\n1187#8,2:197\n1208#8:333\n1187#8,2:334\n1#9:221\n1#9:358\n48#10:230\n48#10:367\n42#11,7:456\n42#11,7:463\n42#11,7:470\n*S KotlinDebug\n*F\n+ 1 FocusInvalidationManager.kt\nandroidx/compose/ui/focus/FocusInvalidationManager\n*L\n70#1:155,4\n70#1:159,7\n70#1:167,3\n70#1:171,2\n70#1:173\n70#1:284\n70#1:285,6\n70#1:291\n82#1:292,4\n82#1:296,7\n82#1:304,3\n82#1:308,2\n82#1:310\n82#1:421\n82#1:422,6\n82#1:428\n130#1:429,4\n130#1:433,7\n130#1:441,3\n130#1:445,2\n130#1:447,2\n130#1:449,6\n130#1:455\n70#1:166\n70#1:170\n82#1:303\n82#1:307\n130#1:440\n130#1:444\n75#1:174\n96#1:311\n75#1:175\n75#1:176,6\n75#1:183,2\n75#1:188,8\n75#1:199,9\n75#1:211,8\n75#1:219\n75#1:220\n75#1:222,8\n75#1:231,9\n75#1:240,37\n75#1:277,6\n75#1:283\n96#1:312\n96#1:313,6\n96#1:320,2\n96#1:325,8\n96#1:336,9\n96#1:348,8\n96#1:356\n96#1:357\n96#1:359,8\n96#1:368,9\n96#1:377,37\n96#1:414,6\n96#1:420\n75#1:182\n96#1:319\n75#1:185,3\n75#1:208,3\n96#1:322,3\n96#1:345,3\n75#1:196\n75#1:197,2\n96#1:333\n96#1:334,2\n75#1:221\n96#1:358\n75#1:230\n96#1:367\n149#1:456,7\n150#1:463,7\n151#1:470,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u00020\u0001B-\u0012\u0018\u0010\u0002\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0002\u0010\u0007J\u0006\u0010\u0010\u001a\u00020\u0011J\u0008\u0010\u0012\u001a\u00020\u0005H\u0002J\u000e\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\nJ\u000e\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u000cJ\u000e\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u000eJ%\u0010\u0013\u001a\u00020\u0005\"\u0004\u0008\u0000\u0010\u0015*\u0008\u0012\u0004\u0012\u0002H\u00150\t2\u0006\u0010\u0014\u001a\u0002H\u0015H\u0002\u00a2\u0006\u0002\u0010\u0016R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R \u0010\u0002\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0004\u0012\u00020\u00050\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Landroidx/compose/ui/focus/FocusInvalidationManager;",
        "",
        "onRequestApplyChangesListener",
        "Lkotlin/Function1;",
        "Lkotlin/Function0;",
        "",
        "invalidateOwnerFocusState",
        "(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V",
        "focusEventNodes",
        "Landroidx/collection/MutableScatterSet;",
        "Landroidx/compose/ui/focus/FocusEventModifierNode;",
        "focusPropertiesNodes",
        "Landroidx/compose/ui/focus/FocusPropertiesModifierNode;",
        "focusTargetNodes",
        "Landroidx/compose/ui/focus/FocusTargetNode;",
        "focusTargetsWithInvalidatedFocusEvents",
        "hasPendingInvalidation",
        "",
        "invalidateNodes",
        "scheduleInvalidation",
        "node",
        "T",
        "(Landroidx/collection/MutableScatterSet;Ljava/lang/Object;)V",
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
.field private final focusEventNodes:Landroidx/collection/MutableScatterSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableScatterSet<",
            "Landroidx/compose/ui/focus/FocusEventModifierNode;",
            ">;"
        }
    .end annotation
.end field

.field private final focusPropertiesNodes:Landroidx/collection/MutableScatterSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableScatterSet<",
            "Landroidx/compose/ui/focus/FocusPropertiesModifierNode;",
            ">;"
        }
    .end annotation
.end field

.field private final focusTargetNodes:Landroidx/collection/MutableScatterSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableScatterSet<",
            "Landroidx/compose/ui/focus/FocusTargetNode;",
            ">;"
        }
    .end annotation
.end field

.field private final focusTargetsWithInvalidatedFocusEvents:Landroidx/collection/MutableScatterSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableScatterSet<",
            "Landroidx/compose/ui/focus/FocusTargetNode;",
            ">;"
        }
    .end annotation
.end field

.field private final invalidateOwnerFocusState:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final onRequestApplyChangesListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Landroidx/compose/ui/focus/FocusInvalidationManager;->onRequestApplyChangesListener:Lkotlin/jvm/functions/Function1;

    .line 33
    iput-object p2, p0, Landroidx/compose/ui/focus/FocusInvalidationManager;->invalidateOwnerFocusState:Lkotlin/jvm/functions/Function0;

    .line 35
    invoke-static {}, Landroidx/collection/ScatterSetKt;->mutableScatterSetOf()Landroidx/collection/MutableScatterSet;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusTargetNodes:Landroidx/collection/MutableScatterSet;

    .line 36
    invoke-static {}, Landroidx/collection/ScatterSetKt;->mutableScatterSetOf()Landroidx/collection/MutableScatterSet;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusEventNodes:Landroidx/collection/MutableScatterSet;

    .line 37
    invoke-static {}, Landroidx/collection/ScatterSetKt;->mutableScatterSetOf()Landroidx/collection/MutableScatterSet;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusPropertiesNodes:Landroidx/collection/MutableScatterSet;

    .line 38
    invoke-static {}, Landroidx/collection/ScatterSetKt;->mutableScatterSetOf()Landroidx/collection/MutableScatterSet;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusTargetsWithInvalidatedFocusEvents:Landroidx/collection/MutableScatterSet;

    return-void
.end method

.method public static final synthetic access$invalidateNodes(Landroidx/compose/ui/focus/FocusInvalidationManager;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroidx/compose/ui/focus/FocusInvalidationManager;->invalidateNodes()V

    return-void
.end method

.method private final invalidateNodes()V
    .locals 32

    move-object/from16 v0, p0

    .line 70
    iget-object v1, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusPropertiesNodes:Landroidx/collection/MutableScatterSet;

    check-cast v1, Landroidx/collection/ScatterSet;

    .line 156
    iget-object v2, v1, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 160
    iget-object v1, v1, Landroidx/collection/ScatterSet;->metadata:[J

    .line 161
    array-length v3, v1

    add-int/lit8 v3, v3, -0x2

    .line 163
    const-string/jumbo v4, "visitChildren called on an unattached node"

    const/4 v10, 0x7

    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/16 v15, 0x8

    const/4 v14, 0x1

    if-ltz v3, :cond_1d

    const/4 v11, 0x0

    .line 164
    :goto_0
    aget-wide v5, v1, v11

    not-long v8, v5

    shl-long v7, v8, v10

    and-long/2addr v7, v5

    and-long/2addr v7, v12

    cmp-long v7, v7, v12

    if-eqz v7, :cond_1c

    sub-int v7, v11, v3

    not-int v7, v7

    ushr-int/lit8 v7, v7, 0x1f

    rsub-int/lit8 v7, v7, 0x8

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_1b

    const-wide/16 v22, 0xff

    and-long v24, v5, v22

    const-wide/16 v20, 0x80

    cmp-long v9, v24, v20

    if-gez v9, :cond_1a

    shl-int/lit8 v9, v11, 0x3

    add-int/2addr v9, v8

    .line 173
    aget-object v9, v2, v9

    check-cast v9, Landroidx/compose/ui/focus/FocusPropertiesModifierNode;

    .line 73
    invoke-interface {v9}, Landroidx/compose/ui/focus/FocusPropertiesModifierNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v24

    if-eqz v24, :cond_18

    .line 75
    check-cast v9, Landroidx/compose/ui/node/DelegatableNode;

    const/16 v19, 0x400

    .line 174
    invoke-static/range {v19 .. v19}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v24

    .line 175
    invoke-interface {v9}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v25

    move-object/from16 v12, v25

    const/4 v13, 0x0

    :goto_2
    if-eqz v12, :cond_a

    .line 179
    instance-of v10, v12, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v10, :cond_1

    .line 180
    check-cast v12, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 76
    iget-object v10, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusTargetNodes:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v10, v12}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    :cond_0
    move-object/from16 v27, v1

    goto/16 :goto_6

    .line 182
    :cond_1
    invoke-virtual {v12}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v10

    and-int v10, v10, v24

    if-eqz v10, :cond_0

    .line 181
    instance-of v10, v12, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v10, :cond_0

    .line 184
    move-object v10, v12

    check-cast v10, Landroidx/compose/ui/node/DelegatingNode;

    .line 185
    invoke-virtual {v10}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    const/4 v15, 0x0

    :goto_3
    if-eqz v10, :cond_8

    .line 182
    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v26

    and-int v26, v26, v24

    if-eqz v26, :cond_6

    add-int/lit8 v15, v15, 0x1

    if-ne v15, v14, :cond_2

    move-object/from16 v27, v1

    move-object v12, v10

    goto :goto_5

    :cond_2
    if-nez v13, :cond_3

    .line 198
    new-instance v13, Landroidx/compose/runtime/collection/MutableVector;

    move-object/from16 v27, v1

    const/16 v14, 0x10

    new-array v1, v14, [Landroidx/compose/ui/Modifier$Node;

    const/4 v14, 0x0

    invoke-direct {v13, v1, v14}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    goto :goto_4

    :cond_3
    move-object/from16 v27, v1

    :goto_4
    if-eqz v12, :cond_5

    if-eqz v13, :cond_4

    .line 201
    invoke-virtual {v13, v12}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    :cond_4
    const/4 v12, 0x0

    :cond_5
    if-eqz v13, :cond_7

    .line 204
    invoke-virtual {v13, v10}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    goto :goto_5

    :cond_6
    move-object/from16 v27, v1

    .line 208
    :cond_7
    :goto_5
    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    move-object/from16 v1, v27

    const/4 v14, 0x1

    goto :goto_3

    :cond_8
    move-object/from16 v27, v1

    move v1, v14

    if-ne v15, v1, :cond_9

    move v14, v1

    move-object/from16 v1, v27

    const/4 v10, 0x7

    goto :goto_7

    .line 216
    :cond_9
    :goto_6
    invoke-static {v13}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v12

    move-object/from16 v1, v27

    const/4 v10, 0x7

    const/4 v14, 0x1

    :goto_7
    const/16 v15, 0x8

    goto :goto_2

    :cond_a
    move-object/from16 v27, v1

    .line 220
    invoke-interface {v9}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 198
    new-instance v1, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v10, 0x10

    new-array v12, v10, [Landroidx/compose/ui/Modifier$Node;

    const/4 v10, 0x0

    invoke-direct {v1, v12, v10}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 223
    invoke-interface {v9}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    if-nez v10, :cond_b

    .line 225
    invoke-interface {v9}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v9

    invoke-static {v1, v9}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    goto :goto_8

    .line 227
    :cond_b
    invoke-virtual {v1, v10}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 228
    :cond_c
    :goto_8
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->isNotEmpty()Z

    move-result v9

    if-eqz v9, :cond_19

    .line 230
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v9

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    .line 229
    invoke-virtual {v1, v9}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/Modifier$Node;

    .line 231
    invoke-virtual {v9}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v10

    and-int v10, v10, v24

    if-nez v10, :cond_d

    .line 232
    invoke-static {v1, v9}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    goto :goto_8

    :cond_d
    :goto_9
    if-eqz v9, :cond_c

    .line 238
    invoke-virtual {v9}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v10

    and-int v10, v10, v24

    if-eqz v10, :cond_16

    const/4 v10, 0x0

    :goto_a
    if-eqz v9, :cond_c

    .line 243
    instance-of v12, v9, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v12, :cond_e

    .line 244
    check-cast v9, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 76
    iget-object v12, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusTargetNodes:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v12, v9}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 182
    :cond_e
    invoke-virtual {v9}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v12

    and-int v12, v12, v24

    if-eqz v12, :cond_15

    .line 245
    instance-of v12, v9, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v12, :cond_15

    .line 251
    move-object v12, v9

    check-cast v12, Landroidx/compose/ui/node/DelegatingNode;

    .line 185
    invoke-virtual {v12}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v12

    const/4 v13, 0x0

    :goto_b
    if-eqz v12, :cond_14

    .line 182
    invoke-virtual {v12}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v14

    and-int v14, v14, v24

    if-eqz v14, :cond_13

    add-int/lit8 v13, v13, 0x1

    const/4 v14, 0x1

    if-ne v13, v14, :cond_f

    move-object v9, v12

    goto :goto_c

    :cond_f
    if-nez v10, :cond_10

    .line 198
    new-instance v10, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v14, 0x10

    new-array v15, v14, [Landroidx/compose/ui/Modifier$Node;

    const/4 v14, 0x0

    invoke-direct {v10, v15, v14}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_10
    if-eqz v9, :cond_12

    if-eqz v10, :cond_11

    .line 262
    invoke-virtual {v10, v9}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    :cond_11
    const/4 v9, 0x0

    :cond_12
    if-eqz v10, :cond_13

    .line 265
    invoke-virtual {v10, v12}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 208
    :cond_13
    :goto_c
    invoke-virtual {v12}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v12

    goto :goto_b

    :cond_14
    const/4 v12, 0x1

    if-ne v13, v12, :cond_15

    goto :goto_a

    .line 274
    :cond_15
    :goto_d
    invoke-static {v10}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v9

    goto :goto_a

    .line 279
    :cond_16
    invoke-virtual {v9}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v9

    goto :goto_9

    .line 220
    :cond_17
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_18
    move-object/from16 v27, v1

    :cond_19
    const/16 v1, 0x8

    goto :goto_e

    :cond_1a
    move-object/from16 v27, v1

    move v1, v15

    :goto_e
    shr-long/2addr v5, v1

    add-int/lit8 v8, v8, 0x1

    move v15, v1

    move-object/from16 v1, v27

    const/4 v10, 0x7

    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/4 v14, 0x1

    goto/16 :goto_1

    :cond_1b
    move-object/from16 v27, v1

    move v1, v15

    if-ne v7, v1, :cond_1d

    goto :goto_f

    :cond_1c
    move-object/from16 v27, v1

    :goto_f
    if-eq v11, v3, :cond_1d

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, v27

    const/4 v10, 0x7

    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/4 v14, 0x1

    const/16 v15, 0x8

    goto/16 :goto_0

    .line 79
    :cond_1d
    iget-object v1, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusPropertiesNodes:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v1}, Landroidx/collection/MutableScatterSet;->clear()V

    .line 82
    iget-object v1, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusEventNodes:Landroidx/collection/MutableScatterSet;

    check-cast v1, Landroidx/collection/ScatterSet;

    .line 293
    iget-object v2, v1, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 297
    iget-object v1, v1, Landroidx/collection/ScatterSet;->metadata:[J

    .line 298
    array-length v3, v1

    add-int/lit8 v3, v3, -0x2

    if-ltz v3, :cond_46

    const/4 v14, 0x0

    .line 301
    :goto_10
    aget-wide v5, v1, v14

    not-long v7, v5

    const/4 v9, 0x7

    shl-long/2addr v7, v9

    and-long/2addr v7, v5

    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v7, v9

    cmp-long v7, v7, v9

    if-eqz v7, :cond_45

    sub-int v7, v14, v3

    not-int v7, v7

    ushr-int/lit8 v7, v7, 0x1f

    const/16 v8, 0x8

    rsub-int/lit8 v15, v7, 0x8

    const/4 v7, 0x0

    :goto_11
    if-ge v7, v15, :cond_44

    const-wide/16 v8, 0xff

    and-long v10, v5, v8

    const-wide/16 v8, 0x80

    cmp-long v10, v10, v8

    if-gez v10, :cond_42

    shl-int/lit8 v8, v14, 0x3

    add-int/2addr v8, v7

    .line 310
    aget-object v8, v2, v8

    check-cast v8, Landroidx/compose/ui/focus/FocusEventModifierNode;

    .line 88
    invoke-interface {v8}, Landroidx/compose/ui/focus/FocusEventModifierNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v9

    if-nez v9, :cond_1e

    .line 89
    sget-object v9, Landroidx/compose/ui/focus/FocusStateImpl;->Inactive:Landroidx/compose/ui/focus/FocusStateImpl;

    check-cast v9, Landroidx/compose/ui/focus/FocusState;

    invoke-interface {v8, v9}, Landroidx/compose/ui/focus/FocusEventModifierNode;->onFocusEvent(Landroidx/compose/ui/focus/FocusState;)V

    goto/16 :goto_26

    .line 96
    :cond_1e
    move-object v9, v8

    check-cast v9, Landroidx/compose/ui/node/DelegatableNode;

    const/16 v10, 0x400

    .line 311
    invoke-static {v10}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v11

    .line 312
    invoke-interface {v9}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v12

    const/4 v13, 0x0

    const/16 v19, 0x1

    const/16 v24, 0x0

    const/16 v27, 0x0

    :goto_12
    if-eqz v12, :cond_2b

    .line 316
    instance-of v10, v12, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v10, :cond_21

    .line 317
    check-cast v12, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v24, :cond_1f

    const/4 v13, 0x1

    .line 110
    :cond_1f
    iget-object v10, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusTargetNodes:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v10, v12}, Landroidx/collection/MutableScatterSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_20

    .line 112
    iget-object v10, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusTargetsWithInvalidatedFocusEvents:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v10, v12}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    const/16 v19, 0x0

    :cond_20
    move-object/from16 v28, v1

    move-object/from16 v29, v2

    move-object/from16 v24, v12

    goto/16 :goto_17

    .line 319
    :cond_21
    invoke-virtual {v12}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v10

    and-int/2addr v10, v11

    if-eqz v10, :cond_29

    .line 318
    instance-of v10, v12, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v10, :cond_29

    .line 321
    move-object v10, v12

    check-cast v10, Landroidx/compose/ui/node/DelegatingNode;

    .line 322
    invoke-virtual {v10}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    move-object/from16 v28, v1

    const/4 v1, 0x0

    :goto_13
    if-eqz v10, :cond_28

    .line 319
    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v29

    and-int v29, v29, v11

    if-eqz v29, :cond_27

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v29, v2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_22

    move-object v12, v10

    goto :goto_15

    :cond_22
    if-nez v27, :cond_23

    .line 335
    new-instance v2, Landroidx/compose/runtime/collection/MutableVector;

    move/from16 v30, v1

    move/from16 v31, v13

    const/16 v1, 0x10

    new-array v13, v1, [Landroidx/compose/ui/Modifier$Node;

    const/4 v1, 0x0

    invoke-direct {v2, v13, v1}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    goto :goto_14

    :cond_23
    move/from16 v30, v1

    move/from16 v31, v13

    move-object/from16 v2, v27

    :goto_14
    if-eqz v12, :cond_25

    if-eqz v2, :cond_24

    .line 338
    invoke-virtual {v2, v12}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    :cond_24
    const/4 v12, 0x0

    :cond_25
    if-eqz v2, :cond_26

    .line 341
    invoke-virtual {v2, v10}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    :cond_26
    move-object/from16 v27, v2

    move/from16 v1, v30

    goto :goto_16

    :cond_27
    move-object/from16 v29, v2

    :goto_15
    move/from16 v31, v13

    .line 345
    :goto_16
    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    move-object/from16 v2, v29

    move/from16 v13, v31

    goto :goto_13

    :cond_28
    move-object/from16 v29, v2

    move/from16 v31, v13

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2a

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move/from16 v13, v31

    goto :goto_18

    :cond_29
    move-object/from16 v28, v1

    move-object/from16 v29, v2

    move/from16 v31, v13

    :cond_2a
    move/from16 v13, v31

    .line 353
    :goto_17
    invoke-static/range {v27 .. v27}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v12

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    :goto_18
    const/16 v10, 0x400

    goto/16 :goto_12

    :cond_2b
    move-object/from16 v28, v1

    move-object/from16 v29, v2

    move/from16 v31, v13

    .line 357
    invoke-interface {v9}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 335
    new-instance v1, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v2, 0x10

    new-array v10, v2, [Landroidx/compose/ui/Modifier$Node;

    const/4 v2, 0x0

    invoke-direct {v1, v10, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 360
    invoke-interface {v9}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    if-nez v2, :cond_2c

    .line 362
    invoke-interface {v9}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    goto :goto_19

    .line 364
    :cond_2c
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    :goto_19
    move/from16 v13, v31

    .line 365
    :cond_2d
    :goto_1a
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->isNotEmpty()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 367
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v2

    const/4 v9, 0x1

    sub-int/2addr v2, v9

    .line 366
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/Modifier$Node;

    .line 368
    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v9

    and-int/2addr v9, v11

    if-nez v9, :cond_2f

    .line 369
    invoke-static {v1, v2}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    :cond_2e
    move-object/from16 v27, v1

    move/from16 v17, v11

    const/4 v1, 0x0

    const/4 v10, 0x1

    goto/16 :goto_24

    :cond_2f
    :goto_1b
    if-eqz v2, :cond_2e

    .line 375
    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v9

    and-int/2addr v9, v11

    if-eqz v9, :cond_3c

    const/4 v9, 0x0

    :goto_1c
    if-eqz v2, :cond_2d

    .line 380
    instance-of v10, v2, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v10, :cond_32

    .line 381
    check-cast v2, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v24, :cond_30

    const/4 v13, 0x1

    .line 110
    :cond_30
    iget-object v10, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusTargetNodes:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v10, v2}, Landroidx/collection/MutableScatterSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_31

    .line 112
    iget-object v10, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusTargetsWithInvalidatedFocusEvents:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v10, v2}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    const/16 v19, 0x0

    :cond_31
    move-object/from16 v27, v1

    move-object/from16 v24, v2

    :goto_1d
    move/from16 v17, v11

    const/4 v1, 0x0

    const/4 v10, 0x1

    goto/16 :goto_22

    .line 319
    :cond_32
    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v10

    and-int/2addr v10, v11

    if-eqz v10, :cond_3a

    .line 382
    instance-of v10, v2, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v10, :cond_3a

    .line 388
    move-object v10, v2

    check-cast v10, Landroidx/compose/ui/node/DelegatingNode;

    .line 322
    invoke-virtual {v10}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    const/4 v12, 0x0

    :goto_1e
    if-eqz v10, :cond_39

    .line 319
    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v27

    and-int v27, v27, v11

    if-eqz v27, :cond_37

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v27, v1

    const/4 v1, 0x1

    if-ne v12, v1, :cond_33

    move-object v2, v10

    goto :goto_20

    :cond_33
    if-nez v9, :cond_34

    .line 335
    new-instance v9, Landroidx/compose/runtime/collection/MutableVector;

    move/from16 v17, v11

    const/16 v1, 0x10

    new-array v11, v1, [Landroidx/compose/ui/Modifier$Node;

    const/4 v1, 0x0

    invoke-direct {v9, v11, v1}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    goto :goto_1f

    :cond_34
    move/from16 v17, v11

    const/4 v1, 0x0

    :goto_1f
    if-eqz v2, :cond_36

    if-eqz v9, :cond_35

    .line 399
    invoke-virtual {v9, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    :cond_35
    const/4 v2, 0x0

    :cond_36
    if-eqz v9, :cond_38

    .line 402
    invoke-virtual {v9, v10}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    goto :goto_21

    :cond_37
    move-object/from16 v27, v1

    :goto_20
    move/from16 v17, v11

    const/4 v1, 0x0

    .line 345
    :cond_38
    :goto_21
    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    move/from16 v11, v17

    move-object/from16 v1, v27

    goto :goto_1e

    :cond_39
    move-object/from16 v27, v1

    move/from16 v17, v11

    const/4 v1, 0x0

    const/4 v10, 0x1

    if-ne v12, v10, :cond_3b

    goto :goto_23

    :cond_3a
    move-object/from16 v27, v1

    goto :goto_1d

    .line 411
    :cond_3b
    :goto_22
    invoke-static {v9}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    :goto_23
    move/from16 v11, v17

    move-object/from16 v1, v27

    goto/16 :goto_1c

    :cond_3c
    move-object/from16 v27, v1

    move/from16 v17, v11

    const/4 v1, 0x0

    const/4 v10, 0x1

    .line 416
    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    move-object/from16 v1, v27

    goto/16 :goto_1b

    :goto_24
    move/from16 v11, v17

    move-object/from16 v1, v27

    goto/16 :goto_1a

    :cond_3d
    const/4 v1, 0x0

    const/4 v10, 0x1

    if-eqz v19, :cond_43

    if-eqz v13, :cond_3e

    .line 120
    invoke-static {v8}, Landroidx/compose/ui/focus/FocusEventModifierNodeKt;->getFocusState(Landroidx/compose/ui/focus/FocusEventModifierNode;)Landroidx/compose/ui/focus/FocusState;

    move-result-object v2

    goto :goto_25

    :cond_3e
    if-eqz v24, :cond_3f

    .line 122
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v2

    if-nez v2, :cond_40

    :cond_3f
    sget-object v2, Landroidx/compose/ui/focus/FocusStateImpl;->Inactive:Landroidx/compose/ui/focus/FocusStateImpl;

    :cond_40
    check-cast v2, Landroidx/compose/ui/focus/FocusState;

    .line 118
    :goto_25
    invoke-interface {v8, v2}, Landroidx/compose/ui/focus/FocusEventModifierNode;->onFocusEvent(Landroidx/compose/ui/focus/FocusState;)V

    goto :goto_27

    .line 357
    :cond_41
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_42
    :goto_26
    move-object/from16 v28, v1

    move-object/from16 v29, v2

    const/4 v1, 0x0

    const/4 v10, 0x1

    :cond_43
    :goto_27
    const/16 v2, 0x8

    shr-long/2addr v5, v2

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    goto/16 :goto_11

    :cond_44
    move-object/from16 v28, v1

    move-object/from16 v29, v2

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v10, 0x1

    if-ne v15, v2, :cond_47

    goto :goto_28

    :cond_45
    move-object/from16 v28, v1

    move-object/from16 v29, v2

    const/4 v1, 0x0

    const/4 v10, 0x1

    :goto_28
    if-eq v14, v3, :cond_47

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    goto/16 :goto_10

    :cond_46
    const/4 v1, 0x0

    .line 127
    :cond_47
    iget-object v2, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusEventNodes:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v2}, Landroidx/collection/MutableScatterSet;->clear()V

    .line 130
    iget-object v2, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusTargetNodes:Landroidx/collection/MutableScatterSet;

    check-cast v2, Landroidx/collection/ScatterSet;

    .line 430
    iget-object v3, v2, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 434
    iget-object v2, v2, Landroidx/collection/ScatterSet;->metadata:[J

    .line 435
    array-length v4, v2

    add-int/lit8 v4, v4, -0x2

    if-ltz v4, :cond_4c

    move v14, v1

    .line 438
    :goto_29
    aget-wide v5, v2, v14

    not-long v7, v5

    const/4 v9, 0x7

    shl-long/2addr v7, v9

    and-long/2addr v7, v5

    const-wide v10, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v7, v10

    cmp-long v7, v7, v10

    if-eqz v7, :cond_4b

    sub-int v7, v14, v4

    not-int v7, v7

    ushr-int/lit8 v7, v7, 0x1f

    const/16 v8, 0x8

    rsub-int/lit8 v15, v7, 0x8

    move v7, v1

    :goto_2a
    if-ge v7, v15, :cond_4a

    const-wide/16 v12, 0xff

    and-long v16, v5, v12

    const-wide/16 v18, 0x80

    cmp-long v8, v16, v18

    if-gez v8, :cond_49

    shl-int/lit8 v8, v14, 0x3

    add-int/2addr v8, v7

    .line 447
    aget-object v8, v3, v8

    check-cast v8, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 133
    invoke-virtual {v8}, Landroidx/compose/ui/focus/FocusTargetNode;->isAttached()Z

    move-result v16

    if-eqz v16, :cond_49

    .line 135
    invoke-virtual {v8}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v1

    .line 136
    invoke-virtual {v8}, Landroidx/compose/ui/focus/FocusTargetNode;->invalidateFocus$ui_release()V

    .line 137
    invoke-virtual {v8}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v9

    if-ne v1, v9, :cond_48

    .line 138
    iget-object v1, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusTargetsWithInvalidatedFocusEvents:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v1, v8}, Landroidx/collection/MutableScatterSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 140
    :cond_48
    invoke-static {v8}, Landroidx/compose/ui/focus/FocusEventModifierNodeKt;->refreshFocusEventNodes(Landroidx/compose/ui/focus/FocusTargetNode;)V

    :cond_49
    const/16 v1, 0x8

    shr-long/2addr v5, v1

    add-int/lit8 v7, v7, 0x1

    const/4 v1, 0x0

    const/4 v9, 0x7

    goto :goto_2a

    :cond_4a
    const/16 v1, 0x8

    const-wide/16 v12, 0xff

    const-wide/16 v18, 0x80

    if-ne v15, v1, :cond_4c

    goto :goto_2b

    :cond_4b
    const/16 v1, 0x8

    const-wide/16 v12, 0xff

    const-wide/16 v18, 0x80

    :goto_2b
    if-eq v14, v4, :cond_4c

    add-int/lit8 v14, v14, 0x1

    const/4 v1, 0x0

    goto :goto_29

    .line 143
    :cond_4c
    iget-object v1, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusTargetNodes:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v1}, Landroidx/collection/MutableScatterSet;->clear()V

    .line 145
    iget-object v1, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusTargetsWithInvalidatedFocusEvents:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v1}, Landroidx/collection/MutableScatterSet;->clear()V

    .line 147
    iget-object v1, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->invalidateOwnerFocusState:Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 149
    iget-object v1, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusPropertiesNodes:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v1}, Landroidx/collection/MutableScatterSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4d

    const-string v1, "Unprocessed FocusProperties nodes"

    .line 460
    invoke-static {v1}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 150
    :cond_4d
    iget-object v1, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusEventNodes:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v1}, Landroidx/collection/MutableScatterSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4e

    const-string v1, "Unprocessed FocusEvent nodes"

    .line 467
    invoke-static {v1}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 151
    :cond_4e
    iget-object v1, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusTargetNodes:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v1}, Landroidx/collection/MutableScatterSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4f

    const-string v1, "Unprocessed FocusTarget nodes"

    .line 474
    invoke-static {v1}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_4f
    return-void
.end method

.method private final scheduleInvalidation(Landroidx/collection/MutableScatterSet;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/collection/MutableScatterSet<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 59
    invoke-virtual {p1, p2}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 62
    iget-object p1, p0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusTargetNodes:Landroidx/collection/MutableScatterSet;

    invoke-virtual {p1}, Landroidx/collection/MutableScatterSet;->getSize()I

    move-result p1

    iget-object p2, p0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusEventNodes:Landroidx/collection/MutableScatterSet;

    invoke-virtual {p2}, Landroidx/collection/MutableScatterSet;->getSize()I

    move-result p2

    add-int/2addr p1, p2

    iget-object p2, p0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusPropertiesNodes:Landroidx/collection/MutableScatterSet;

    invoke-virtual {p2}, Landroidx/collection/MutableScatterSet;->getSize()I

    move-result p2

    add-int/2addr p1, p2

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 63
    iget-object p1, p0, Landroidx/compose/ui/focus/FocusInvalidationManager;->onRequestApplyChangesListener:Lkotlin/jvm/functions/Function1;

    new-instance p2, Landroidx/compose/ui/focus/FocusInvalidationManager$scheduleInvalidation$1;

    invoke-direct {p2, p0}, Landroidx/compose/ui/focus/FocusInvalidationManager$scheduleInvalidation$1;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public final hasPendingInvalidation()Z
    .locals 1

    .line 53
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusTargetNodes:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v0}, Landroidx/collection/MutableScatterSet;->isNotEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 54
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusPropertiesNodes:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v0}, Landroidx/collection/MutableScatterSet;->isNotEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 55
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusEventNodes:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v0}, Landroidx/collection/MutableScatterSet;->isNotEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final scheduleInvalidation(Landroidx/compose/ui/focus/FocusEventModifierNode;)V
    .locals 1

    .line 45
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusEventNodes:Landroidx/collection/MutableScatterSet;

    invoke-direct {p0, v0, p1}, Landroidx/compose/ui/focus/FocusInvalidationManager;->scheduleInvalidation(Landroidx/collection/MutableScatterSet;Ljava/lang/Object;)V

    return-void
.end method

.method public final scheduleInvalidation(Landroidx/compose/ui/focus/FocusPropertiesModifierNode;)V
    .locals 1

    .line 49
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusPropertiesNodes:Landroidx/collection/MutableScatterSet;

    invoke-direct {p0, v0, p1}, Landroidx/compose/ui/focus/FocusInvalidationManager;->scheduleInvalidation(Landroidx/collection/MutableScatterSet;Ljava/lang/Object;)V

    return-void
.end method

.method public final scheduleInvalidation(Landroidx/compose/ui/focus/FocusTargetNode;)V
    .locals 1

    .line 41
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusTargetNodes:Landroidx/collection/MutableScatterSet;

    invoke-direct {p0, v0, p1}, Landroidx/compose/ui/focus/FocusInvalidationManager;->scheduleInvalidation(Landroidx/collection/MutableScatterSet;Ljava/lang/Object;)V

    return-void
.end method
