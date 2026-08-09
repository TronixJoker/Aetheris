.class public final Landroidx/compose/ui/node/NodeChain;
.super Ljava/lang/Object;
.source "NodeChain.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/node/NodeChain$Differ;,
        Landroidx/compose/ui/node/NodeChain$Logger;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNodeChain.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NodeChain.kt\nandroidx/compose/ui/node/NodeChain\n+ 2 InlineClassHelper.kt\nandroidx/compose/ui/internal/InlineClassHelperKt\n+ 3 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n+ 4 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 NodeKind.kt\nandroidx/compose/ui/node/Nodes\n+ 7 Modifier.kt\nandroidx/compose/ui/Modifier$Node\n+ 8 DelegatableNode.kt\nandroidx/compose/ui/node/DelegatableNodeKt\n+ 9 DelegatingNode.kt\nandroidx/compose/ui/node/DelegatingNode\n*L\n1#1,843:1\n751#1,6:911\n720#1,6:917\n720#1,6:923\n728#1,3:930\n731#1,3:936\n751#1,6:939\n751#1,6:945\n697#1,8:967\n720#1,3:975\n705#1,2:978\n698#1:980\n699#1,11:1024\n723#1,3:1035\n710#1:1038\n700#1:1039\n703#1,2:1040\n720#1,3:1042\n705#1,2:1045\n708#1,2:1090\n723#1,3:1092\n710#1:1095\n720#1,6:1096\n742#1,12:1102\n754#1,3:1157\n748#1:1160\n751#1,6:1161\n736#1,18:1167\n754#1,3:1228\n748#1:1231\n739#1:1232\n697#1,8:1233\n720#1,3:1241\n705#1,2:1244\n698#1:1246\n699#1,11:1290\n723#1,3:1301\n710#1:1304\n700#1:1305\n728#1,6:1306\n42#2,7:844\n42#2,7:851\n42#2,7:858\n66#2,9:868\n66#2,9:879\n66#2,9:888\n66#2,9:898\n42#2,7:953\n42#2,7:960\n1208#3:865\n1187#3,2:866\n1187#3,2:908\n1188#3:929\n1208#3:1001\n1187#3,2:1002\n1208#3:1067\n1187#3,2:1068\n1208#3:1134\n1187#3,2:1135\n1208#3:1205\n1187#3,2:1206\n1208#3:1267\n1187#3,2:1268\n523#4:877\n523#4:878\n523#4:897\n523#4:907\n523#4:933\n728#4,2:934\n1#5:910\n78#6:951\n249#7:952\n249#7:987\n249#7:1053\n249#7:1120\n249#7:1191\n249#7:1253\n432#8,6:981\n442#8,2:988\n444#8,8:993\n452#8,9:1004\n461#8,8:1016\n432#8,6:1047\n442#8,2:1054\n444#8,8:1059\n452#8,9:1070\n461#8,8:1082\n432#8,6:1114\n442#8,2:1121\n444#8,8:1126\n452#8,9:1137\n461#8,8:1149\n432#8,6:1185\n442#8,2:1192\n444#8,8:1197\n452#8,9:1208\n461#8,8:1220\n432#8,6:1247\n442#8,2:1254\n444#8,8:1259\n452#8,9:1270\n461#8,8:1282\n245#9,3:990\n248#9,3:1013\n245#9,3:1056\n248#9,3:1079\n245#9,3:1123\n248#9,3:1146\n245#9,3:1194\n248#9,3:1217\n245#9,3:1256\n248#9,3:1279\n*S KotlinDebug\n*F\n+ 1 NodeChain.kt\nandroidx/compose/ui/node/NodeChain\n*L\n222#1:911,6\n282#1:917,6\n292#1:923,6\n318#1:930,3\n318#1:936,3\n352#1:939,6\n358#1:945,6\n690#1:967,8\n690#1:975,3\n690#1:978,2\n690#1:980\n690#1:1024,11\n690#1:1035,3\n690#1:1038\n690#1:1039\n697#1:1040,2\n697#1:1042,3\n697#1:1045,2\n697#1:1090,2\n697#1:1092,3\n697#1:1095\n704#1:1096,6\n736#1:1102,12\n736#1:1157,3\n736#1:1160\n743#1:1161,6\n759#1:1167,18\n759#1:1228,3\n759#1:1231\n759#1:1232\n766#1:1233,8\n766#1:1241,3\n766#1:1244,2\n766#1:1246\n766#1:1290,11\n766#1:1301,3\n766#1:1304\n766#1:1305\n782#1:1306,6\n65#1:844,7\n73#1:851,7\n81#1:858,7\n127#1:868,9\n157#1:879,9\n158#1:888,9\n187#1:898,9\n584#1:953,7\n624#1:960,7\n117#1:865\n117#1:866,2\n199#1:908,2\n316#1:929\n690#1:1001\n690#1:1002,2\n698#1:1067\n698#1:1068,2\n737#1:1134\n737#1:1135,2\n759#1:1205\n759#1:1206,2\n766#1:1267\n766#1:1268,2\n128#1:877\n129#1:878\n179#1:897\n191#1:907\n346#1:933\n346#1:934,2\n400#1:951\n400#1:952\n690#1:987\n698#1:1053\n737#1:1120\n759#1:1191\n766#1:1253\n690#1:981,6\n690#1:988,2\n690#1:993,8\n690#1:1004,9\n690#1:1016,8\n698#1:1047,6\n698#1:1054,2\n698#1:1059,8\n698#1:1070,9\n698#1:1082,8\n737#1:1114,6\n737#1:1121,2\n737#1:1126,8\n737#1:1137,9\n737#1:1149,8\n759#1:1185,6\n759#1:1192,2\n759#1:1197,8\n759#1:1208,9\n759#1:1220,8\n766#1:1247,6\n766#1:1254,2\n766#1:1259,8\n766#1:1270,9\n766#1:1282,8\n690#1:990,3\n690#1:1013,3\n698#1:1056,3\n698#1:1079,3\n737#1:1123,3\n737#1:1146,3\n759#1:1194,3\n759#1:1217,3\n766#1:1256,3\n766#1:1279,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u001c\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0000\u0018\u00002\u00020\u0001:\u0002mnB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010%\u001a\u00020\u00102\u0006\u0010&\u001a\u00020\u000b2\u0006\u0010\'\u001a\u00020\u0010H\u0002J\u0018\u0010(\u001a\u00020\u00102\u0006\u0010&\u001a\u00020\u000b2\u0006\u0010)\u001a\u00020\u0010H\u0002J\u0010\u0010*\u001a\u00020\u00102\u0006\u0010+\u001a\u00020\u0010H\u0002J?\u0010,\u001a\u0004\u0018\u0001H-\"\u0006\u0008\u0000\u0010-\u0018\u00012\u000c\u0010.\u001a\u0008\u0012\u0004\u0012\u0002H-0/2\u0012\u00100\u001a\u000e\u0012\u0004\u0012\u0002H-\u0012\u0004\u0012\u00020\u001901H\u0080\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u00082\u00103J@\u00104\u001a\u00060\rR\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u00105\u001a\u00020\u00062\u000c\u00106\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u000c\u00107\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u00108\u001a\u00020\u0019H\u0002J\u000c\u00109\u001a\u0008\u0012\u0004\u0012\u00020;0:J\u001e\u0010<\u001a\u00020\u00192\n\u0010.\u001a\u0006\u0012\u0002\u0008\u00030/H\u0000\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008=\u0010>J\u0015\u0010<\u001a\u00020\u00192\u0006\u0010?\u001a\u00020\u0006H\u0000\u00a2\u0006\u0002\u0008@J+\u0010\u0011\u001a\u0004\u0018\u0001H-\"\u0006\u0008\u0000\u0010-\u0018\u00012\u000c\u0010.\u001a\u0008\u0012\u0004\u0012\u0002H-0/H\u0080\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008A\u0010BJ\"\u0010C\u001a\u00020D2\u0012\u00100\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020D01H\u0080\u0008\u00a2\u0006\u0002\u0008EJ=\u0010C\u001a\u00020D\"\u0006\u0008\u0000\u0010-\u0018\u00012\u000c\u0010.\u001a\u0008\u0012\u0004\u0012\u0002H-0/2\u0012\u00100\u001a\u000e\u0012\u0004\u0012\u0002H-\u0012\u0004\u0012\u00020D01H\u0080\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008F\u0010GJ*\u0010C\u001a\u00020D2\u0006\u0010?\u001a\u00020\u00062\u0012\u00100\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020D01H\u0080\u0008\u00a2\u0006\u0002\u0008EJ\"\u0010H\u001a\u00020D2\u0012\u00100\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020D01H\u0080\u0008\u00a2\u0006\u0002\u0008IJ\u0018\u0010J\u001a\u00020\u00102\u0006\u0010+\u001a\u00020\u00102\u0006\u0010\'\u001a\u00020\u0010H\u0002J\u0018\u0010K\u001a\u00020\u00102\u0006\u0010+\u001a\u00020\u00102\u0006\u0010)\u001a\u00020\u0010H\u0002J\u0006\u0010L\u001a\u00020DJ\r\u0010M\u001a\u00020DH\u0000\u00a2\u0006\u0002\u0008NJ\u0008\u0010O\u001a\u00020\u0010H\u0002J\u0018\u0010P\u001a\u00020D2\u0006\u0010Q\u001a\u00020\u00102\u0006\u0010R\u001a\u00020\u001fH\u0002J\u0010\u0010S\u001a\u00020\u00102\u0006\u0010+\u001a\u00020\u0010H\u0002J\r\u0010T\u001a\u00020DH\u0000\u00a2\u0006\u0002\u0008UJ\u0006\u0010V\u001a\u00020DJ\r\u0010W\u001a\u00020DH\u0000\u00a2\u0006\u0002\u0008XJ<\u0010Y\u001a\u00020D2\u0006\u00105\u001a\u00020\u00062\u000c\u00106\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u000c\u00107\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010#\u001a\u00020\u00102\u0006\u00108\u001a\u00020\u0019H\u0002J\u0008\u0010Z\u001a\u00020DH\u0002J\u0006\u0010[\u001a\u00020DJ+\u0010#\u001a\u0004\u0018\u0001H-\"\u0006\u0008\u0000\u0010-\u0018\u00012\u000c\u0010.\u001a\u0008\u0012\u0004\u0012\u0002H-0/H\u0080\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\\\u0010BJ\"\u0010]\u001a\u00020D2\u0012\u00100\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020D01H\u0080\u0008\u00a2\u0006\u0002\u0008^J=\u0010]\u001a\u00020D\"\u0006\u0008\u0000\u0010-\u0018\u00012\u000c\u0010.\u001a\u0008\u0012\u0004\u0012\u0002H-0/2\u0012\u00100\u001a\u000e\u0012\u0004\u0012\u0002H-\u0012\u0004\u0012\u00020D01H\u0080\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008_\u0010GJ*\u0010]\u001a\u00020D2\u0006\u0010?\u001a\u00020\u00062\u0012\u00100\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020D01H\u0080\u0008\u00a2\u0006\u0002\u0008^J\u0008\u0010`\u001a\u00020aH\u0016J\u0010\u0010b\u001a\u00020\u00102\u0006\u0010c\u001a\u00020\u0010H\u0002J\u0015\u0010d\u001a\u00020D2\u0006\u0010e\u001a\u00020fH\u0000\u00a2\u0006\u0002\u0008gJ \u0010h\u001a\u00020D2\u0006\u0010i\u001a\u00020\u000b2\u0006\u0010j\u001a\u00020\u000b2\u0006\u0010+\u001a\u00020\u0010H\u0002J\u0017\u0010k\u001a\u00020D2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0000\u00a2\u0006\u0002\u0008lR\u0014\u0010\u0005\u001a\u00020\u00068BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0016\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0008\u0018\u00010\rR\u00020\u0000X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u0010@BX\u0080\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0014\u001a\u00020\u0015X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0014\u0010\u0018\u001a\u00020\u00198BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u001aR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010 \u001a\u00020\u001f2\u0006\u0010\u000f\u001a\u00020\u001f@BX\u0080\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\"R\u0014\u0010#\u001a\u00020\u0010X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010\u0013\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006o"
    }
    d2 = {
        "Landroidx/compose/ui/node/NodeChain;",
        "",
        "layoutNode",
        "Landroidx/compose/ui/node/LayoutNode;",
        "(Landroidx/compose/ui/node/LayoutNode;)V",
        "aggregateChildKindSet",
        "",
        "getAggregateChildKindSet",
        "()I",
        "buffer",
        "Landroidx/compose/runtime/collection/MutableVector;",
        "Landroidx/compose/ui/Modifier$Element;",
        "cachedDiffer",
        "Landroidx/compose/ui/node/NodeChain$Differ;",
        "current",
        "<set-?>",
        "Landroidx/compose/ui/Modifier$Node;",
        "head",
        "getHead$ui_release",
        "()Landroidx/compose/ui/Modifier$Node;",
        "innerCoordinator",
        "Landroidx/compose/ui/node/InnerNodeCoordinator;",
        "getInnerCoordinator$ui_release",
        "()Landroidx/compose/ui/node/InnerNodeCoordinator;",
        "isUpdating",
        "",
        "()Z",
        "getLayoutNode",
        "()Landroidx/compose/ui/node/LayoutNode;",
        "logger",
        "Landroidx/compose/ui/node/NodeChain$Logger;",
        "Landroidx/compose/ui/node/NodeCoordinator;",
        "outerCoordinator",
        "getOuterCoordinator$ui_release",
        "()Landroidx/compose/ui/node/NodeCoordinator;",
        "tail",
        "getTail$ui_release",
        "createAndInsertNodeAsChild",
        "element",
        "parent",
        "createAndInsertNodeAsParent",
        "child",
        "detachAndRemoveNode",
        "node",
        "firstFromHead",
        "T",
        "type",
        "Landroidx/compose/ui/node/NodeKind;",
        "block",
        "Lkotlin/Function1;",
        "firstFromHead-aLcG6gQ$ui_release",
        "(ILkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "getDiffer",
        "offset",
        "before",
        "after",
        "shouldAttachOnInsert",
        "getModifierInfo",
        "",
        "Landroidx/compose/ui/layout/ModifierInfo;",
        "has",
        "has-H91voCI$ui_release",
        "(I)Z",
        "mask",
        "has$ui_release",
        "head-H91voCI$ui_release",
        "(I)Ljava/lang/Object;",
        "headToTail",
        "",
        "headToTail$ui_release",
        "headToTail-aLcG6gQ$ui_release",
        "(ILkotlin/jvm/functions/Function1;)V",
        "headToTailExclusive",
        "headToTailExclusive$ui_release",
        "insertChild",
        "insertParent",
        "markAsAttached",
        "markAsDetached",
        "markAsDetached$ui_release",
        "padChain",
        "propagateCoordinator",
        "start",
        "coordinator",
        "removeNode",
        "resetState",
        "resetState$ui_release",
        "runAttachLifecycle",
        "runDetachLifecycle",
        "runDetachLifecycle$ui_release",
        "structuralUpdate",
        "syncAggregateChildKindSet",
        "syncCoordinators",
        "tail-H91voCI$ui_release",
        "tailToHead",
        "tailToHead$ui_release",
        "tailToHead-aLcG6gQ$ui_release",
        "toString",
        "",
        "trimChain",
        "paddedHead",
        "updateFrom",
        "m",
        "Landroidx/compose/ui/Modifier;",
        "updateFrom$ui_release",
        "updateNode",
        "prev",
        "next",
        "useLogger",
        "useLogger$ui_release",
        "Differ",
        "Logger",
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
.field private buffer:Landroidx/compose/runtime/collection/MutableVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/Modifier$Element;",
            ">;"
        }
    .end annotation
.end field

.field private cachedDiffer:Landroidx/compose/ui/node/NodeChain$Differ;

.field private current:Landroidx/compose/runtime/collection/MutableVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/Modifier$Element;",
            ">;"
        }
    .end annotation
.end field

.field private head:Landroidx/compose/ui/Modifier$Node;

.field private final innerCoordinator:Landroidx/compose/ui/node/InnerNodeCoordinator;

.field private final layoutNode:Landroidx/compose/ui/node/LayoutNode;

.field private logger:Landroidx/compose/ui/node/NodeChain$Logger;

.field private outerCoordinator:Landroidx/compose/ui/node/NodeCoordinator;

.field private final tail:Landroidx/compose/ui/Modifier$Node;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/node/NodeChain;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 37
    new-instance v0, Landroidx/compose/ui/node/InnerNodeCoordinator;

    invoke-direct {v0, p1}, Landroidx/compose/ui/node/InnerNodeCoordinator;-><init>(Landroidx/compose/ui/node/LayoutNode;)V

    iput-object v0, p0, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Landroidx/compose/ui/node/InnerNodeCoordinator;

    .line 38
    move-object p1, v0

    check-cast p1, Landroidx/compose/ui/node/NodeCoordinator;

    iput-object p1, p0, Landroidx/compose/ui/node/NodeChain;->outerCoordinator:Landroidx/compose/ui/node/NodeCoordinator;

    .line 40
    invoke-virtual {v0}, Landroidx/compose/ui/node/InnerNodeCoordinator;->getTail()Landroidx/compose/ui/node/TailModifierNode;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/Modifier$Node;

    iput-object p1, p0, Landroidx/compose/ui/node/NodeChain;->tail:Landroidx/compose/ui/Modifier$Node;

    .line 41
    iput-object p1, p0, Landroidx/compose/ui/node/NodeChain;->head:Landroidx/compose/ui/Modifier$Node;

    return-void
.end method

.method public static final synthetic access$createAndInsertNodeAsChild(Landroidx/compose/ui/node/NodeChain;Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/Modifier$Node;
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/node/NodeChain;->createAndInsertNodeAsChild(Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/Modifier$Node;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$detachAndRemoveNode(Landroidx/compose/ui/node/NodeChain;Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/Modifier$Node;
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Landroidx/compose/ui/node/NodeChain;->detachAndRemoveNode(Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/Modifier$Node;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getAggregateChildKindSet(Landroidx/compose/ui/node/NodeChain;)I
    .locals 0

    .line 36
    invoke-direct {p0}, Landroidx/compose/ui/node/NodeChain;->getAggregateChildKindSet()I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getLogger$p(Landroidx/compose/ui/node/NodeChain;)Landroidx/compose/ui/node/NodeChain$Logger;
    .locals 0

    .line 36
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain;->logger:Landroidx/compose/ui/node/NodeChain$Logger;

    return-object p0
.end method

.method public static final synthetic access$propagateCoordinator(Landroidx/compose/ui/node/NodeChain;Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/node/NodeChain;->propagateCoordinator(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator;)V

    return-void
.end method

.method public static final synthetic access$updateNode(Landroidx/compose/ui/node/NodeChain;Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/node/NodeChain;->updateNode(Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Node;)V

    return-void
.end method

.method private final createAndInsertNodeAsChild(Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/Modifier$Node;
    .locals 2

    .line 619
    instance-of v0, p1, Landroidx/compose/ui/node/ModifierNodeElement;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/compose/ui/node/ModifierNodeElement;

    invoke-virtual {p1}, Landroidx/compose/ui/node/ModifierNodeElement;->create()Landroidx/compose/ui/Modifier$Node;

    move-result-object p1

    .line 620
    invoke-static {p1}, Landroidx/compose/ui/node/NodeKindKt;->calculateNodeKindSetFromIncludingDelegates(Landroidx/compose/ui/Modifier$Node;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/compose/ui/Modifier$Node;->setKindSet$ui_release(I)V

    goto :goto_0

    .line 622
    :cond_0
    new-instance v0, Landroidx/compose/ui/node/BackwardsCompatNode;

    invoke-direct {v0, p1}, Landroidx/compose/ui/node/BackwardsCompatNode;-><init>(Landroidx/compose/ui/Modifier$Element;)V

    move-object p1, v0

    check-cast p1, Landroidx/compose/ui/Modifier$Node;

    .line 624
    :goto_0
    invoke-virtual {p1}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 625
    const-string v0, "A ModifierNodeElement cannot return an already attached node from create() "

    .line 964
    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 627
    :cond_1
    invoke-virtual {p1, v1}, Landroidx/compose/ui/Modifier$Node;->setInsertedNodeAwaitingAttachForInvalidation$ui_release(Z)V

    .line 628
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/node/NodeChain;->insertChild(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/Modifier$Node;

    move-result-object p1

    return-object p1
.end method

.method private final createAndInsertNodeAsParent(Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/Modifier$Node;
    .locals 2

    .line 579
    instance-of v0, p1, Landroidx/compose/ui/node/ModifierNodeElement;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/compose/ui/node/ModifierNodeElement;

    invoke-virtual {p1}, Landroidx/compose/ui/node/ModifierNodeElement;->create()Landroidx/compose/ui/Modifier$Node;

    move-result-object p1

    .line 580
    invoke-static {p1}, Landroidx/compose/ui/node/NodeKindKt;->calculateNodeKindSetFromIncludingDelegates(Landroidx/compose/ui/Modifier$Node;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/compose/ui/Modifier$Node;->setKindSet$ui_release(I)V

    goto :goto_0

    .line 582
    :cond_0
    new-instance v0, Landroidx/compose/ui/node/BackwardsCompatNode;

    invoke-direct {v0, p1}, Landroidx/compose/ui/node/BackwardsCompatNode;-><init>(Landroidx/compose/ui/Modifier$Element;)V

    move-object p1, v0

    check-cast p1, Landroidx/compose/ui/Modifier$Node;

    .line 584
    :goto_0
    invoke-virtual {p1}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 585
    const-string v0, "createAndInsertNodeAsParent called on an attached node"

    .line 957
    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 587
    :cond_1
    invoke-virtual {p1, v1}, Landroidx/compose/ui/Modifier$Node;->setInsertedNodeAwaitingAttachForInvalidation$ui_release(Z)V

    .line 588
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/node/NodeChain;->insertParent(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/Modifier$Node;

    move-result-object p1

    return-object p1
.end method

.method private final detachAndRemoveNode(Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/Modifier$Node;
    .locals 1

    .line 537
    invoke-virtual {p1}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    invoke-static {p1}, Landroidx/compose/ui/node/NodeKindKt;->autoInvalidateRemovedNode(Landroidx/compose/ui/Modifier$Node;)V

    .line 542
    invoke-virtual {p1}, Landroidx/compose/ui/Modifier$Node;->runDetachLifecycle$ui_release()V

    .line 543
    invoke-virtual {p1}, Landroidx/compose/ui/Modifier$Node;->markAsDetached$ui_release()V

    .line 545
    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/ui/node/NodeChain;->removeNode(Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/Modifier$Node;

    move-result-object p1

    return-object p1
.end method

.method private final getAggregateChildKindSet()I
    .locals 1

    .line 44
    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain;->head:Landroidx/compose/ui/Modifier$Node;

    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v0

    return v0
.end method

.method private final getDiffer(Landroidx/compose/ui/Modifier$Node;ILandroidx/compose/runtime/collection/MutableVector;Landroidx/compose/runtime/collection/MutableVector;Z)Landroidx/compose/ui/node/NodeChain$Differ;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier$Node;",
            "I",
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/Modifier$Element;",
            ">;",
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/Modifier$Element;",
            ">;Z)",
            "Landroidx/compose/ui/node/NodeChain$Differ;"
        }
    .end annotation

    .line 370
    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain;->cachedDiffer:Landroidx/compose/ui/node/NodeChain$Differ;

    if-nez v0, :cond_0

    .line 373
    new-instance v0, Landroidx/compose/ui/node/NodeChain$Differ;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Landroidx/compose/ui/node/NodeChain$Differ;-><init>(Landroidx/compose/ui/node/NodeChain;Landroidx/compose/ui/Modifier$Node;ILandroidx/compose/runtime/collection/MutableVector;Landroidx/compose/runtime/collection/MutableVector;Z)V

    .line 380
    iput-object v0, p0, Landroidx/compose/ui/node/NodeChain;->cachedDiffer:Landroidx/compose/ui/node/NodeChain$Differ;

    goto :goto_0

    .line 383
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/NodeChain$Differ;->setNode(Landroidx/compose/ui/Modifier$Node;)V

    .line 384
    invoke-virtual {v0, p2}, Landroidx/compose/ui/node/NodeChain$Differ;->setOffset(I)V

    .line 385
    invoke-virtual {v0, p3}, Landroidx/compose/ui/node/NodeChain$Differ;->setBefore(Landroidx/compose/runtime/collection/MutableVector;)V

    .line 386
    invoke-virtual {v0, p4}, Landroidx/compose/ui/node/NodeChain$Differ;->setAfter(Landroidx/compose/runtime/collection/MutableVector;)V

    .line 387
    invoke-virtual {v0, p5}, Landroidx/compose/ui/node/NodeChain$Differ;->setShouldAttachOnInsert(Z)V

    :goto_0
    return-object v0
.end method

.method private final insertChild(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/Modifier$Node;
    .locals 1

    .line 644
    invoke-virtual {p2}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 646
    invoke-virtual {v0, p1}, Landroidx/compose/ui/Modifier$Node;->setParent$ui_release(Landroidx/compose/ui/Modifier$Node;)V

    .line 647
    invoke-virtual {p1, v0}, Landroidx/compose/ui/Modifier$Node;->setChild$ui_release(Landroidx/compose/ui/Modifier$Node;)V

    .line 649
    :cond_0
    invoke-virtual {p2, p1}, Landroidx/compose/ui/Modifier$Node;->setChild$ui_release(Landroidx/compose/ui/Modifier$Node;)V

    .line 650
    invoke-virtual {p1, p2}, Landroidx/compose/ui/Modifier$Node;->setParent$ui_release(Landroidx/compose/ui/Modifier$Node;)V

    return-object p1
.end method

.method private final insertParent(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/Modifier$Node;
    .locals 1

    .line 604
    invoke-virtual {p2}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 606
    invoke-virtual {v0, p1}, Landroidx/compose/ui/Modifier$Node;->setChild$ui_release(Landroidx/compose/ui/Modifier$Node;)V

    .line 607
    invoke-virtual {p1, v0}, Landroidx/compose/ui/Modifier$Node;->setParent$ui_release(Landroidx/compose/ui/Modifier$Node;)V

    .line 609
    :cond_0
    invoke-virtual {p2, p1}, Landroidx/compose/ui/Modifier$Node;->setParent$ui_release(Landroidx/compose/ui/Modifier$Node;)V

    .line 610
    invoke-virtual {p1, p2}, Landroidx/compose/ui/Modifier$Node;->setChild$ui_release(Landroidx/compose/ui/Modifier$Node;)V

    return-object p1
.end method

.method private final isUpdating()Z
    .locals 2

    .line 43
    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain;->head:Landroidx/compose/ui/Modifier$Node;

    invoke-static {}, Landroidx/compose/ui/node/NodeChainKt;->access$getSentinelHead$p()Landroidx/compose/ui/node/NodeChainKt$SentinelHead$1;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final padChain()Landroidx/compose/ui/Modifier$Node;
    .locals 2

    .line 65
    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain;->head:Landroidx/compose/ui/Modifier$Node;

    invoke-static {}, Landroidx/compose/ui/node/NodeChainKt;->access$getSentinelHead$p()Landroidx/compose/ui/node/NodeChainKt$SentinelHead$1;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "padChain called on already padded chain"

    .line 848
    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 66
    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain;->head:Landroidx/compose/ui/Modifier$Node;

    .line 67
    invoke-static {}, Landroidx/compose/ui/node/NodeChainKt;->access$getSentinelHead$p()Landroidx/compose/ui/node/NodeChainKt$SentinelHead$1;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/Modifier$Node;

    invoke-virtual {v0, v1}, Landroidx/compose/ui/Modifier$Node;->setParent$ui_release(Landroidx/compose/ui/Modifier$Node;)V

    .line 68
    invoke-static {}, Landroidx/compose/ui/node/NodeChainKt;->access$getSentinelHead$p()Landroidx/compose/ui/node/NodeChainKt$SentinelHead$1;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/compose/ui/node/NodeChainKt$SentinelHead$1;->setChild$ui_release(Landroidx/compose/ui/Modifier$Node;)V

    .line 69
    invoke-static {}, Landroidx/compose/ui/node/NodeChainKt;->access$getSentinelHead$p()Landroidx/compose/ui/node/NodeChainKt$SentinelHead$1;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/Modifier$Node;

    return-object v0
.end method

.method private final propagateCoordinator(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator;)V
    .locals 2

    .line 393
    invoke-virtual {p1}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_3

    .line 395
    invoke-static {}, Landroidx/compose/ui/node/NodeChainKt;->access$getSentinelHead$p()Landroidx/compose/ui/node/NodeChainKt$SentinelHead$1;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 396
    iget-object p1, p0, Landroidx/compose/ui/node/NodeChain;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getInnerCoordinator$ui_release()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p2, p1}, Landroidx/compose/ui/node/NodeCoordinator;->setWrappedBy$ui_release(Landroidx/compose/ui/node/NodeCoordinator;)V

    .line 397
    iput-object p2, p0, Landroidx/compose/ui/node/NodeChain;->outerCoordinator:Landroidx/compose/ui/node/NodeCoordinator;

    goto :goto_2

    :cond_1
    const/4 v0, 0x2

    .line 951
    invoke-static {v0}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v0

    .line 952
    invoke-virtual {p1}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    goto :goto_2

    .line 401
    :cond_2
    invoke-virtual {p1, p2}, Landroidx/compose/ui/Modifier$Node;->updateCoordinator$ui_release(Landroidx/compose/ui/node/NodeCoordinator;)V

    .line 402
    invoke-virtual {p1}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object p1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method private final removeNode(Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/Modifier$Node;
    .locals 3

    .line 561
    invoke-virtual {p1}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    .line 562
    invoke-virtual {p1}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 564
    invoke-virtual {v0, v1}, Landroidx/compose/ui/Modifier$Node;->setParent$ui_release(Landroidx/compose/ui/Modifier$Node;)V

    .line 565
    invoke-virtual {p1, v2}, Landroidx/compose/ui/Modifier$Node;->setChild$ui_release(Landroidx/compose/ui/Modifier$Node;)V

    :cond_0
    if-eqz v1, :cond_1

    .line 568
    invoke-virtual {v1, v0}, Landroidx/compose/ui/Modifier$Node;->setChild$ui_release(Landroidx/compose/ui/Modifier$Node;)V

    .line 569
    invoke-virtual {p1, v2}, Landroidx/compose/ui/Modifier$Node;->setParent$ui_release(Landroidx/compose/ui/Modifier$Node;)V

    .line 571
    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v1
.end method

.method private final structuralUpdate(ILandroidx/compose/runtime/collection/MutableVector;Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/Modifier$Element;",
            ">;",
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/Modifier$Element;",
            ">;",
            "Landroidx/compose/ui/Modifier$Node;",
            "Z)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p4

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p5

    .line 531
    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/node/NodeChain;->getDiffer(Landroidx/compose/ui/Modifier$Node;ILandroidx/compose/runtime/collection/MutableVector;Landroidx/compose/runtime/collection/MutableVector;Z)Landroidx/compose/ui/node/NodeChain$Differ;

    move-result-object p4

    .line 532
    invoke-virtual {p2}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result p2

    sub-int/2addr p2, p1

    invoke-virtual {p3}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result p3

    sub-int/2addr p3, p1

    check-cast p4, Landroidx/compose/ui/node/DiffCallback;

    invoke-static {p2, p3, p4}, Landroidx/compose/ui/node/MyersDiffKt;->executeDiff(IILandroidx/compose/ui/node/DiffCallback;)V

    .line 533
    invoke-direct {p0}, Landroidx/compose/ui/node/NodeChain;->syncAggregateChildKindSet()V

    return-void
.end method

.method private final syncAggregateChildKindSet()V
    .locals 3

    .line 265
    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain;->tail:Landroidx/compose/ui/Modifier$Node;

    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_0

    .line 267
    invoke-static {}, Landroidx/compose/ui/node/NodeChainKt;->access$getSentinelHead$p()Landroidx/compose/ui/node/NodeChainKt$SentinelHead$1;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 268
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v2

    or-int/2addr v1, v2

    .line 269
    invoke-virtual {v0, v1}, Landroidx/compose/ui/Modifier$Node;->setAggregateChildKindSet$ui_release(I)V

    .line 270
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final trimChain(Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/Modifier$Node;
    .locals 5

    .line 73
    invoke-static {}, Landroidx/compose/ui/node/NodeChainKt;->access$getSentinelHead$p()Landroidx/compose/ui/node/NodeChainKt$SentinelHead$1;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    if-nez p1, :cond_1

    .line 74
    const-string p1, "trimChain called on already trimmed chain"

    .line 855
    invoke-static {p1}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 76
    :cond_1
    invoke-static {}, Landroidx/compose/ui/node/NodeChainKt;->access$getSentinelHead$p()Landroidx/compose/ui/node/NodeChainKt$SentinelHead$1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/ui/node/NodeChainKt$SentinelHead$1;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object p1

    if-nez p1, :cond_2

    iget-object p1, p0, Landroidx/compose/ui/node/NodeChain;->tail:Landroidx/compose/ui/Modifier$Node;

    :cond_2
    const/4 v0, 0x0

    .line 77
    invoke-virtual {p1, v0}, Landroidx/compose/ui/Modifier$Node;->setParent$ui_release(Landroidx/compose/ui/Modifier$Node;)V

    .line 78
    invoke-static {}, Landroidx/compose/ui/node/NodeChainKt;->access$getSentinelHead$p()Landroidx/compose/ui/node/NodeChainKt$SentinelHead$1;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroidx/compose/ui/node/NodeChainKt$SentinelHead$1;->setChild$ui_release(Landroidx/compose/ui/Modifier$Node;)V

    .line 79
    invoke-static {}, Landroidx/compose/ui/node/NodeChainKt;->access$getSentinelHead$p()Landroidx/compose/ui/node/NodeChainKt$SentinelHead$1;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroidx/compose/ui/node/NodeChainKt$SentinelHead$1;->setAggregateChildKindSet$ui_release(I)V

    .line 80
    invoke-static {}, Landroidx/compose/ui/node/NodeChainKt;->access$getSentinelHead$p()Landroidx/compose/ui/node/NodeChainKt$SentinelHead$1;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroidx/compose/ui/node/NodeChainKt$SentinelHead$1;->updateCoordinator$ui_release(Landroidx/compose/ui/node/NodeCoordinator;)V

    .line 81
    invoke-static {}, Landroidx/compose/ui/node/NodeChainKt;->access$getSentinelHead$p()Landroidx/compose/ui/node/NodeChainKt$SentinelHead$1;

    move-result-object v0

    if-eq p1, v0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    if-nez v1, :cond_4

    const-string v0, "trimChain did not update the head"

    .line 862
    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_4
    return-object p1
.end method

.method private final updateNode(Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Node;)V
    .locals 1

    .line 660
    instance-of p1, p1, Landroidx/compose/ui/node/ModifierNodeElement;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    instance-of p1, p2, Landroidx/compose/ui/node/ModifierNodeElement;

    if-eqz p1, :cond_1

    .line 661
    check-cast p2, Landroidx/compose/ui/node/ModifierNodeElement;

    invoke-static {p2, p3}, Landroidx/compose/ui/node/NodeChainKt;->access$updateUnsafe(Landroidx/compose/ui/node/ModifierNodeElement;Landroidx/compose/ui/Modifier$Node;)V

    .line 662
    invoke-virtual {p3}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 666
    invoke-static {p3}, Landroidx/compose/ui/node/NodeKindKt;->autoInvalidateUpdatedNode(Landroidx/compose/ui/Modifier$Node;)V

    goto :goto_0

    .line 668
    :cond_0
    invoke-virtual {p3, v0}, Landroidx/compose/ui/Modifier$Node;->setUpdatedNodeAwaitingAttachForInvalidation$ui_release(Z)V

    goto :goto_0

    .line 671
    :cond_1
    instance-of p1, p3, Landroidx/compose/ui/node/BackwardsCompatNode;

    if-eqz p1, :cond_3

    .line 672
    move-object p1, p3

    check-cast p1, Landroidx/compose/ui/node/BackwardsCompatNode;

    invoke-virtual {p1, p2}, Landroidx/compose/ui/node/BackwardsCompatNode;->setElement(Landroidx/compose/ui/Modifier$Element;)V

    .line 674
    invoke-virtual {p3}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 675
    invoke-static {p3}, Landroidx/compose/ui/node/NodeKindKt;->autoInvalidateUpdatedNode(Landroidx/compose/ui/Modifier$Node;)V

    goto :goto_0

    .line 677
    :cond_2
    invoke-virtual {p3, v0}, Landroidx/compose/ui/Modifier$Node;->setUpdatedNodeAwaitingAttachForInvalidation$ui_release(Z)V

    :goto_0
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 680
    const-string p2, "Unknown Modifier.Node type"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final synthetic firstFromHead-aLcG6gQ$ui_release(ILkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)TT;"
        }
    .end annotation

    .line 973
    invoke-static {p0}, Landroidx/compose/ui/node/NodeChain;->access$getAggregateChildKindSet(Landroidx/compose/ui/node/NodeChain;)I

    move-result v0

    and-int/2addr v0, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 975
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeChain;->getHead$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_9

    .line 977
    move-object v2, v0

    check-cast v2, Landroidx/compose/ui/Modifier$Node;

    .line 978
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v2

    and-int/2addr v2, p1

    if-eqz v2, :cond_8

    .line 979
    move-object v2, v0

    check-cast v2, Landroidx/compose/ui/Modifier$Node;

    move-object v2, v0

    move-object v3, v1

    :goto_1
    if-eqz v2, :cond_8

    const/4 v4, 0x3

    .line 984
    const-string v5, "T"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    instance-of v4, v2, Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 691
    invoke-interface {p2, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_7

    return-object v2

    .line 986
    :cond_0
    move-object v4, v2

    check-cast v4, Landroidx/compose/ui/Modifier$Node;

    .line 987
    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v4

    and-int/2addr v4, p1

    if-eqz v4, :cond_7

    .line 986
    instance-of v4, v2, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v4, :cond_7

    .line 989
    move-object v4, v2

    check-cast v4, Landroidx/compose/ui/node/DelegatingNode;

    .line 990
    invoke-virtual {v4}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    const/4 v5, 0x0

    move v6, v5

    :goto_2
    const/4 v7, 0x1

    if-eqz v4, :cond_6

    .line 992
    move-object v8, v4

    check-cast v8, Landroidx/compose/ui/Modifier$Node;

    .line 987
    invoke-virtual {v4}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v8

    and-int/2addr v8, p1

    if-eqz v8, :cond_5

    add-int/lit8 v6, v6, 0x1

    if-ne v6, v7, :cond_1

    move-object v2, v4

    goto :goto_3

    .line 1000
    :cond_1
    move-object v7, v3

    check-cast v7, Landroidx/compose/runtime/collection/MutableVector;

    if-nez v3, :cond_2

    .line 1003
    new-instance v3, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v7, 0x10

    new-array v7, v7, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v3, v7, v5}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 1001
    move-object v7, v3

    check-cast v7, Landroidx/compose/runtime/collection/MutableVector;

    .line 1004
    :cond_2
    move-object v7, v2

    check-cast v7, Landroidx/compose/ui/Modifier$Node;

    if-eqz v2, :cond_4

    .line 1006
    move-object v7, v3

    check-cast v7, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v3, :cond_3

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    :cond_3
    move-object v2, v1

    .line 1009
    :cond_4
    move-object v7, v3

    check-cast v7, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v3, :cond_5

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1013
    :cond_5
    :goto_3
    invoke-virtual {v4}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    goto :goto_2

    :cond_6
    if-ne v6, v7, :cond_7

    goto :goto_1

    .line 1021
    :cond_7
    move-object v2, v3

    check-cast v2, Landroidx/compose/runtime/collection/MutableVector;

    invoke-static {v3}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    goto :goto_1

    .line 1033
    :cond_8
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v2

    and-int/2addr v2, p1

    if-eqz v2, :cond_9

    .line 1035
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    return-object v1
.end method

.method public final getHead$ui_release()Landroidx/compose/ui/Modifier$Node;
    .locals 1

    .line 41
    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain;->head:Landroidx/compose/ui/Modifier$Node;

    return-object v0
.end method

.method public final getInnerCoordinator$ui_release()Landroidx/compose/ui/node/InnerNodeCoordinator;
    .locals 1

    .line 37
    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Landroidx/compose/ui/node/InnerNodeCoordinator;

    return-object v0
.end method

.method public final getLayoutNode()Landroidx/compose/ui/node/LayoutNode;
    .locals 1

    .line 36
    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    return-object v0
.end method

.method public final getModifierInfo()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/ui/layout/ModifierInfo;",
            ">;"
        }
    .end annotation

    .line 315
    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain;->current:Landroidx/compose/runtime/collection/MutableVector;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 316
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v1

    .line 929
    new-instance v2, Landroidx/compose/runtime/collection/MutableVector;

    new-array v1, v1, [Landroidx/compose/ui/layout/ModifierInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 930
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeChain;->getHead$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_4

    .line 931
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeChain;->getTail$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    if-eq v1, v4, :cond_4

    .line 319
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getCoordinator$ui_release()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 330
    invoke-virtual {v4}, Landroidx/compose/ui/node/NodeCoordinator;->getLayer()Landroidx/compose/ui/node/OwnedLayer;

    move-result-object v5

    .line 331
    iget-object v6, p0, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Landroidx/compose/ui/node/InnerNodeCoordinator;

    invoke-virtual {v6}, Landroidx/compose/ui/node/InnerNodeCoordinator;->getLayer()Landroidx/compose/ui/node/OwnedLayer;

    move-result-object v6

    .line 342
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    .line 343
    iget-object v8, p0, Landroidx/compose/ui/node/NodeChain;->tail:Landroidx/compose/ui/Modifier$Node;

    if-ne v7, v8, :cond_1

    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getCoordinator$ui_release()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v8

    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getCoordinator$ui_release()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v7

    if-eq v8, v7, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    if-nez v5, :cond_2

    move-object v5, v6

    .line 346
    :cond_2
    new-instance v6, Landroidx/compose/ui/layout/ModifierInfo;

    add-int/lit8 v7, v3, 0x1

    .line 933
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v8

    aget-object v3, v8, v3

    check-cast v3, Landroidx/compose/ui/Modifier;

    .line 346
    check-cast v4, Landroidx/compose/ui/layout/LayoutCoordinates;

    invoke-direct {v6, v3, v4, v5}, Landroidx/compose/ui/layout/ModifierInfo;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/layout/LayoutCoordinates;Ljava/lang/Object;)V

    .line 934
    invoke-virtual {v2, v6}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 936
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    move v3, v7

    goto :goto_0

    .line 319
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getModifierInfo called on node with no coordinator"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :cond_4
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/MutableVector;->asMutableList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getOuterCoordinator$ui_release()Landroidx/compose/ui/node/NodeCoordinator;
    .locals 1

    .line 38
    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain;->outerCoordinator:Landroidx/compose/ui/node/NodeCoordinator;

    return-object v0
.end method

.method public final getTail$ui_release()Landroidx/compose/ui/Modifier$Node;
    .locals 1

    .line 40
    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain;->tail:Landroidx/compose/ui/Modifier$Node;

    return-object v0
.end method

.method public final has$ui_release(I)Z
    .locals 1

    .line 774
    invoke-direct {p0}, Landroidx/compose/ui/node/NodeChain;->getAggregateChildKindSet()I

    move-result v0

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final has-H91voCI$ui_release(I)Z
    .locals 1

    .line 772
    invoke-direct {p0}, Landroidx/compose/ui/node/NodeChain;->getAggregateChildKindSet()I

    move-result v0

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final synthetic head-H91voCI$ui_release(I)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)TT;"
        }
    .end annotation

    .line 1239
    invoke-static {p0}, Landroidx/compose/ui/node/NodeChain;->access$getAggregateChildKindSet(Landroidx/compose/ui/node/NodeChain;)I

    move-result v0

    and-int/2addr v0, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 1241
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeChain;->getHead$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_9

    .line 1243
    move-object v2, v0

    check-cast v2, Landroidx/compose/ui/Modifier$Node;

    .line 1244
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v2

    and-int/2addr v2, p1

    if-eqz v2, :cond_8

    .line 1245
    move-object v2, v0

    check-cast v2, Landroidx/compose/ui/Modifier$Node;

    move-object v2, v0

    move-object v3, v1

    :goto_1
    if-eqz v2, :cond_8

    const/4 v4, 0x3

    .line 1250
    const-string v5, "T"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    instance-of v4, v2, Ljava/lang/Object;

    if-eqz v4, :cond_0

    return-object v2

    .line 1252
    :cond_0
    move-object v4, v2

    check-cast v4, Landroidx/compose/ui/Modifier$Node;

    .line 1253
    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v4

    and-int/2addr v4, p1

    if-eqz v4, :cond_7

    .line 1252
    instance-of v4, v2, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v4, :cond_7

    .line 1255
    move-object v4, v2

    check-cast v4, Landroidx/compose/ui/node/DelegatingNode;

    .line 1256
    invoke-virtual {v4}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    const/4 v5, 0x0

    move v6, v5

    :goto_2
    const/4 v7, 0x1

    if-eqz v4, :cond_6

    .line 1258
    move-object v8, v4

    check-cast v8, Landroidx/compose/ui/Modifier$Node;

    .line 1253
    invoke-virtual {v4}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v8

    and-int/2addr v8, p1

    if-eqz v8, :cond_5

    add-int/lit8 v6, v6, 0x1

    if-ne v6, v7, :cond_1

    move-object v2, v4

    goto :goto_3

    .line 1266
    :cond_1
    move-object v7, v3

    check-cast v7, Landroidx/compose/runtime/collection/MutableVector;

    if-nez v3, :cond_2

    .line 1269
    new-instance v3, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v7, 0x10

    new-array v7, v7, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v3, v7, v5}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 1267
    move-object v7, v3

    check-cast v7, Landroidx/compose/runtime/collection/MutableVector;

    .line 1270
    :cond_2
    move-object v7, v2

    check-cast v7, Landroidx/compose/ui/Modifier$Node;

    if-eqz v2, :cond_4

    .line 1272
    move-object v7, v3

    check-cast v7, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v3, :cond_3

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    :cond_3
    move-object v2, v1

    .line 1275
    :cond_4
    move-object v7, v3

    check-cast v7, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v3, :cond_5

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1279
    :cond_5
    :goto_3
    invoke-virtual {v4}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    goto :goto_2

    :cond_6
    if-ne v6, v7, :cond_7

    goto :goto_1

    .line 1287
    :cond_7
    move-object v2, v3

    check-cast v2, Landroidx/compose/runtime/collection/MutableVector;

    invoke-static {v3}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    goto :goto_1

    .line 1299
    :cond_8
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v2

    and-int/2addr v2, p1

    if-eqz v2, :cond_9

    .line 1301
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    return-object v1
.end method

.method public final headToTail$ui_release(ILkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/Modifier$Node;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 703
    invoke-static {p0}, Landroidx/compose/ui/node/NodeChain;->access$getAggregateChildKindSet(Landroidx/compose/ui/node/NodeChain;)I

    move-result v0

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    return-void

    .line 1096
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeChain;->getHead$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    .line 705
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_1

    .line 706
    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v1

    and-int/2addr v1, p1

    if-nez v1, :cond_2

    return-void

    .line 1099
    :cond_2
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final headToTail$ui_release(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/Modifier$Node;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 720
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeChain;->getHead$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    .line 722
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final synthetic headToTail-aLcG6gQ$ui_release(ILkotlin/jvm/functions/Function1;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1040
    invoke-static {p0}, Landroidx/compose/ui/node/NodeChain;->access$getAggregateChildKindSet(Landroidx/compose/ui/node/NodeChain;)I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_9

    .line 1042
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeChain;->getHead$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_9

    .line 1044
    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/Modifier$Node;

    .line 1045
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_8

    .line 1046
    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/Modifier$Node;

    const/4 v1, 0x0

    move-object v2, v0

    move-object v3, v1

    :goto_1
    if-eqz v2, :cond_8

    const/4 v4, 0x3

    .line 1050
    const-string v5, "T"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    instance-of v4, v2, Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 1051
    invoke-interface {p2, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 1052
    :cond_0
    move-object v4, v2

    check-cast v4, Landroidx/compose/ui/Modifier$Node;

    .line 1053
    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v4

    and-int/2addr v4, p1

    if-eqz v4, :cond_7

    .line 1052
    instance-of v4, v2, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v4, :cond_7

    .line 1055
    move-object v4, v2

    check-cast v4, Landroidx/compose/ui/node/DelegatingNode;

    .line 1056
    invoke-virtual {v4}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    const/4 v5, 0x0

    move v6, v5

    :goto_2
    const/4 v7, 0x1

    if-eqz v4, :cond_6

    .line 1058
    move-object v8, v4

    check-cast v8, Landroidx/compose/ui/Modifier$Node;

    .line 1053
    invoke-virtual {v4}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v8

    and-int/2addr v8, p1

    if-eqz v8, :cond_5

    add-int/lit8 v6, v6, 0x1

    if-ne v6, v7, :cond_1

    move-object v2, v4

    goto :goto_3

    .line 1066
    :cond_1
    move-object v7, v3

    check-cast v7, Landroidx/compose/runtime/collection/MutableVector;

    if-nez v3, :cond_2

    .line 1069
    new-instance v3, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v7, 0x10

    new-array v7, v7, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v3, v7, v5}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 1067
    move-object v7, v3

    check-cast v7, Landroidx/compose/runtime/collection/MutableVector;

    .line 1070
    :cond_2
    move-object v7, v2

    check-cast v7, Landroidx/compose/ui/Modifier$Node;

    if-eqz v2, :cond_4

    .line 1072
    move-object v7, v3

    check-cast v7, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v3, :cond_3

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    :cond_3
    move-object v2, v1

    .line 1075
    :cond_4
    move-object v7, v3

    check-cast v7, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v3, :cond_5

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1079
    :cond_5
    :goto_3
    invoke-virtual {v4}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    goto :goto_2

    :cond_6
    if-ne v6, v7, :cond_7

    goto :goto_1

    .line 1087
    :cond_7
    :goto_4
    move-object v2, v3

    check-cast v2, Landroidx/compose/runtime/collection/MutableVector;

    invoke-static {v3}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    goto :goto_1

    .line 1090
    :cond_8
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_9

    .line 1092
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method public final headToTailExclusive$ui_release(Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/Modifier$Node;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 728
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeChain;->getHead$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    .line 729
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeChain;->getTail$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 730
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final markAsAttached()V
    .locals 1

    .line 917
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeChain;->getHead$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->markAsAttached$ui_release()V

    .line 920
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final markAsDetached$ui_release()V
    .locals 2

    .line 939
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeChain;->getTail$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 353
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->markAsDetached$ui_release()V

    .line 942
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final resetState$ui_release()V
    .locals 2

    .line 911
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeChain;->getTail$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 223
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->reset$ui_release()V

    .line 914
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    goto :goto_0

    .line 225
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeChain;->runDetachLifecycle$ui_release()V

    .line 226
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeChain;->markAsDetached$ui_release()V

    return-void
.end method

.method public final runAttachLifecycle()V
    .locals 2

    .line 923
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeChain;->getHead$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 293
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->runAttachLifecycle$ui_release()V

    .line 294
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getInsertedNodeAwaitingAttachForInvalidation$ui_release()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 295
    invoke-static {v0}, Landroidx/compose/ui/node/NodeKindKt;->autoInvalidateInsertedNode(Landroidx/compose/ui/Modifier$Node;)V

    .line 297
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getUpdatedNodeAwaitingAttachForInvalidation$ui_release()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 298
    invoke-static {v0}, Landroidx/compose/ui/node/NodeKindKt;->autoInvalidateUpdatedNode(Landroidx/compose/ui/Modifier$Node;)V

    :cond_1
    const/4 v1, 0x0

    .line 304
    invoke-virtual {v0, v1}, Landroidx/compose/ui/Modifier$Node;->setInsertedNodeAwaitingAttachForInvalidation$ui_release(Z)V

    .line 305
    invoke-virtual {v0, v1}, Landroidx/compose/ui/Modifier$Node;->setUpdatedNodeAwaitingAttachForInvalidation$ui_release(Z)V

    .line 926
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final runDetachLifecycle$ui_release()V
    .locals 2

    .line 945
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeChain;->getTail$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 359
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->runDetachLifecycle$ui_release()V

    .line 948
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final syncCoordinators()V
    .locals 5

    .line 230
    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Landroidx/compose/ui/node/InnerNodeCoordinator;

    check-cast v0, Landroidx/compose/ui/node/NodeCoordinator;

    .line 231
    iget-object v1, p0, Landroidx/compose/ui/node/NodeChain;->tail:Landroidx/compose/ui/Modifier$Node;

    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_3

    .line 233
    invoke-static {v1}, Landroidx/compose/ui/node/DelegatableNodeKt;->asLayoutModifierNode(Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/node/LayoutModifierNode;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 235
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getCoordinator$ui_release()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 236
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getCoordinator$ui_release()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type androidx.compose.ui.node.LayoutModifierNodeCoordinator"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;

    .line 237
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;->getLayoutModifierNode()Landroidx/compose/ui/node/LayoutModifierNode;

    move-result-object v4

    .line 238
    invoke-virtual {v3, v2}, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;->setLayoutModifierNode$ui_release(Landroidx/compose/ui/node/LayoutModifierNode;)V

    if-eq v4, v1, :cond_1

    .line 239
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;->onLayoutModifierNodeChanged()V

    goto :goto_1

    .line 242
    :cond_0
    new-instance v3, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;

    iget-object v4, p0, Landroidx/compose/ui/node/NodeChain;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-direct {v3, v4, v2}, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;-><init>(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/node/LayoutModifierNode;)V

    .line 243
    move-object v2, v3

    check-cast v2, Landroidx/compose/ui/node/NodeCoordinator;

    invoke-virtual {v1, v2}, Landroidx/compose/ui/Modifier$Node;->updateCoordinator$ui_release(Landroidx/compose/ui/node/NodeCoordinator;)V

    .line 246
    :cond_1
    :goto_1
    move-object v2, v3

    check-cast v2, Landroidx/compose/ui/node/NodeCoordinator;

    invoke-virtual {v0, v2}, Landroidx/compose/ui/node/NodeCoordinator;->setWrappedBy$ui_release(Landroidx/compose/ui/node/NodeCoordinator;)V

    .line 247
    invoke-virtual {v3, v0}, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;->setWrapped$ui_release(Landroidx/compose/ui/node/NodeCoordinator;)V

    move-object v0, v2

    goto :goto_2

    .line 250
    :cond_2
    invoke-virtual {v1, v0}, Landroidx/compose/ui/Modifier$Node;->updateCoordinator$ui_release(Landroidx/compose/ui/node/NodeCoordinator;)V

    .line 252
    :goto_2
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    goto :goto_0

    .line 254
    :cond_3
    iget-object v1, p0, Landroidx/compose/ui/node/NodeChain;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getInnerCoordinator$ui_release()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v0, v1}, Landroidx/compose/ui/node/NodeCoordinator;->setWrappedBy$ui_release(Landroidx/compose/ui/node/NodeCoordinator;)V

    .line 255
    iput-object v0, p0, Landroidx/compose/ui/node/NodeChain;->outerCoordinator:Landroidx/compose/ui/node/NodeCoordinator;

    return-void
.end method

.method public final synthetic tail-H91voCI$ui_release(I)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)TT;"
        }
    .end annotation

    .line 1173
    invoke-static {p0}, Landroidx/compose/ui/node/NodeChain;->access$getAggregateChildKindSet(Landroidx/compose/ui/node/NodeChain;)I

    move-result v0

    and-int/2addr v0, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 1182
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeChain;->getTail$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_9

    .line 1184
    move-object v2, v0

    check-cast v2, Landroidx/compose/ui/Modifier$Node;

    .line 1175
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v2

    and-int/2addr v2, p1

    if-eqz v2, :cond_8

    .line 1176
    move-object v2, v0

    check-cast v2, Landroidx/compose/ui/Modifier$Node;

    move-object v2, v0

    move-object v3, v1

    :goto_1
    if-eqz v2, :cond_8

    const/4 v4, 0x3

    .line 1188
    const-string v5, "T"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    instance-of v4, v2, Ljava/lang/Object;

    if-eqz v4, :cond_0

    return-object v2

    .line 1190
    :cond_0
    move-object v4, v2

    check-cast v4, Landroidx/compose/ui/Modifier$Node;

    .line 1191
    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v4

    and-int/2addr v4, p1

    if-eqz v4, :cond_7

    .line 1190
    instance-of v4, v2, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v4, :cond_7

    .line 1193
    move-object v4, v2

    check-cast v4, Landroidx/compose/ui/node/DelegatingNode;

    .line 1194
    invoke-virtual {v4}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    const/4 v5, 0x0

    move v6, v5

    :goto_2
    const/4 v7, 0x1

    if-eqz v4, :cond_6

    .line 1196
    move-object v8, v4

    check-cast v8, Landroidx/compose/ui/Modifier$Node;

    .line 1191
    invoke-virtual {v4}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v8

    and-int/2addr v8, p1

    if-eqz v8, :cond_5

    add-int/lit8 v6, v6, 0x1

    if-ne v6, v7, :cond_1

    move-object v2, v4

    goto :goto_3

    .line 1204
    :cond_1
    move-object v7, v3

    check-cast v7, Landroidx/compose/runtime/collection/MutableVector;

    if-nez v3, :cond_2

    .line 1207
    new-instance v3, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v7, 0x10

    new-array v7, v7, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v3, v7, v5}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 1205
    move-object v7, v3

    check-cast v7, Landroidx/compose/runtime/collection/MutableVector;

    .line 1208
    :cond_2
    move-object v7, v2

    check-cast v7, Landroidx/compose/ui/Modifier$Node;

    if-eqz v2, :cond_4

    .line 1210
    move-object v7, v3

    check-cast v7, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v3, :cond_3

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    :cond_3
    move-object v2, v1

    .line 1213
    :cond_4
    move-object v7, v3

    check-cast v7, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v3, :cond_5

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1217
    :cond_5
    :goto_3
    invoke-virtual {v4}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    goto :goto_2

    :cond_6
    if-ne v6, v7, :cond_7

    goto :goto_1

    .line 1225
    :cond_7
    move-object v2, v3

    check-cast v2, Landroidx/compose/runtime/collection/MutableVector;

    invoke-static {v3}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    goto :goto_1

    .line 1228
    :cond_8
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    return-object v1
.end method

.method public final tailToHead$ui_release(ILkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/Modifier$Node;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 742
    invoke-static {p0}, Landroidx/compose/ui/node/NodeChain;->access$getAggregateChildKindSet(Landroidx/compose/ui/node/NodeChain;)I

    move-result v0

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    return-void

    .line 1161
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeChain;->getTail$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 744
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_1

    .line 745
    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1164
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final tailToHead$ui_release(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/Modifier$Node;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 751
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeChain;->getTail$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    .line 753
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final synthetic tailToHead-aLcG6gQ$ui_release(ILkotlin/jvm/functions/Function1;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1102
    invoke-static {p0}, Landroidx/compose/ui/node/NodeChain;->access$getAggregateChildKindSet(Landroidx/compose/ui/node/NodeChain;)I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_9

    .line 1111
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeChain;->getTail$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_9

    .line 1113
    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/Modifier$Node;

    .line 1104
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_8

    .line 1105
    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/Modifier$Node;

    const/4 v1, 0x0

    move-object v2, v0

    move-object v3, v1

    :goto_1
    if-eqz v2, :cond_8

    const/4 v4, 0x3

    .line 1117
    const-string v5, "T"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    instance-of v4, v2, Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 1118
    invoke-interface {p2, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 1119
    :cond_0
    move-object v4, v2

    check-cast v4, Landroidx/compose/ui/Modifier$Node;

    .line 1120
    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v4

    and-int/2addr v4, p1

    if-eqz v4, :cond_7

    .line 1119
    instance-of v4, v2, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v4, :cond_7

    .line 1122
    move-object v4, v2

    check-cast v4, Landroidx/compose/ui/node/DelegatingNode;

    .line 1123
    invoke-virtual {v4}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    const/4 v5, 0x0

    move v6, v5

    :goto_2
    const/4 v7, 0x1

    if-eqz v4, :cond_6

    .line 1125
    move-object v8, v4

    check-cast v8, Landroidx/compose/ui/Modifier$Node;

    .line 1120
    invoke-virtual {v4}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v8

    and-int/2addr v8, p1

    if-eqz v8, :cond_5

    add-int/lit8 v6, v6, 0x1

    if-ne v6, v7, :cond_1

    move-object v2, v4

    goto :goto_3

    .line 1133
    :cond_1
    move-object v7, v3

    check-cast v7, Landroidx/compose/runtime/collection/MutableVector;

    if-nez v3, :cond_2

    .line 1136
    new-instance v3, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v7, 0x10

    new-array v7, v7, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v3, v7, v5}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 1134
    move-object v7, v3

    check-cast v7, Landroidx/compose/runtime/collection/MutableVector;

    .line 1137
    :cond_2
    move-object v7, v2

    check-cast v7, Landroidx/compose/ui/Modifier$Node;

    if-eqz v2, :cond_4

    .line 1139
    move-object v7, v3

    check-cast v7, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v3, :cond_3

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    :cond_3
    move-object v2, v1

    .line 1142
    :cond_4
    move-object v7, v3

    check-cast v7, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v3, :cond_5

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1146
    :cond_5
    :goto_3
    invoke-virtual {v4}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    goto :goto_2

    :cond_6
    if-ne v6, v7, :cond_7

    goto :goto_1

    .line 1154
    :cond_7
    :goto_4
    move-object v2, v3

    check-cast v2, Landroidx/compose/runtime/collection/MutableVector;

    invoke-static {v3}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    goto :goto_1

    .line 1157
    :cond_8
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 776
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 778
    iget-object v1, p0, Landroidx/compose/ui/node/NodeChain;->head:Landroidx/compose/ui/Modifier$Node;

    iget-object v2, p0, Landroidx/compose/ui/node/NodeChain;->tail:Landroidx/compose/ui/Modifier$Node;

    const-string v3, "]"

    if-ne v1, v2, :cond_0

    .line 779
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1306
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeChain;->getHead$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    .line 1307
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeChain;->getTail$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 783
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 784
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    iget-object v4, p0, Landroidx/compose/ui/node/NodeChain;->tail:Landroidx/compose/ui/Modifier$Node;

    if-ne v2, v4, :cond_1

    .line 785
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 788
    :cond_1
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1309
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    goto :goto_0

    .line 776
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final updateFrom$ui_release(Landroidx/compose/ui/Modifier;)V
    .locals 18

    move-object/from16 v6, p0

    .line 109
    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/node/NodeChain;->padChain()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    .line 115
    iget-object v8, v6, Landroidx/compose/ui/node/NodeChain;->current:Landroidx/compose/runtime/collection/MutableVector;

    const/4 v0, 0x0

    if-eqz v8, :cond_0

    .line 116
    invoke-virtual {v8}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 117
    :goto_0
    iget-object v2, v6, Landroidx/compose/ui/node/NodeChain;->buffer:Landroidx/compose/runtime/collection/MutableVector;

    const/16 v3, 0x10

    if-nez v2, :cond_1

    .line 867
    new-instance v2, Landroidx/compose/runtime/collection/MutableVector;

    new-array v4, v3, [Landroidx/compose/ui/Modifier$Element;

    invoke-direct {v2, v4, v0}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_1
    move-object/from16 v4, p1

    .line 117
    invoke-static {v4, v2}, Landroidx/compose/ui/node/NodeChainKt;->access$fillVector(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v9

    .line 119
    invoke-virtual {v9}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v2

    const/4 v10, 0x0

    const-string v4, "expected prior modifier list to be non-empty"

    const/4 v11, 0x1

    if-ne v2, v1, :cond_b

    .line 125
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    move-object v3, v2

    move v2, v0

    :goto_1
    if-eqz v3, :cond_8

    if-ge v2, v1, :cond_8

    if-eqz v8, :cond_7

    .line 877
    invoke-virtual {v8}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v5

    aget-object v5, v5, v2

    .line 128
    move-object v15, v5

    check-cast v15, Landroidx/compose/ui/Modifier$Element;

    .line 878
    invoke-virtual {v9}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v5

    aget-object v5, v5, v2

    .line 129
    check-cast v5, Landroidx/compose/ui/Modifier$Element;

    .line 130
    invoke-static {v15, v5}, Landroidx/compose/ui/node/NodeChainKt;->actionForModifiers(Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Element;)I

    move-result v12

    if-eqz v12, :cond_5

    if-eq v12, v11, :cond_3

    const/4 v13, 0x2

    if-eq v12, v13, :cond_2

    goto :goto_2

    .line 146
    :cond_2
    iget-object v12, v6, Landroidx/compose/ui/node/NodeChain;->logger:Landroidx/compose/ui/node/NodeChain$Logger;

    if-eqz v12, :cond_4

    move v13, v2

    move v14, v2

    move-object/from16 v16, v5

    move-object/from16 v17, v3

    invoke-interface/range {v12 .. v17}, Landroidx/compose/ui/node/NodeChain$Logger;->nodeReused(IILandroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Node;)V

    goto :goto_2

    .line 142
    :cond_3
    invoke-direct {v6, v15, v5, v3}, Landroidx/compose/ui/node/NodeChain;->updateNode(Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Node;)V

    .line 143
    iget-object v12, v6, Landroidx/compose/ui/node/NodeChain;->logger:Landroidx/compose/ui/node/NodeChain$Logger;

    if-eqz v12, :cond_4

    move v13, v2

    move v14, v2

    move-object/from16 v16, v5

    move-object/from16 v17, v3

    invoke-interface/range {v12 .. v17}, Landroidx/compose/ui/node/NodeChain$Logger;->nodeUpdated(IILandroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Node;)V

    .line 152
    :cond_4
    :goto_2
    invoke-virtual {v3}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 135
    :cond_5
    iget-object v12, v6, Landroidx/compose/ui/node/NodeChain;->logger:Landroidx/compose/ui/node/NodeChain$Logger;

    if-eqz v12, :cond_6

    invoke-interface {v12, v2, v15, v5, v3}, Landroidx/compose/ui/node/NodeChain$Logger;->linearDiffAborted(ILandroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Node;)V

    .line 136
    :cond_6
    invoke-virtual {v3}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v3

    goto :goto_3

    .line 873
    :cond_7
    invoke-static {v4}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateExceptionForNullCheck(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    :cond_8
    :goto_3
    move-object v5, v3

    if-ge v2, v1, :cond_15

    if-eqz v8, :cond_a

    if-eqz v5, :cond_9

    .line 167
    iget-object v0, v6, Landroidx/compose/ui/node/NodeChain;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getApplyingModifierOnAttach$ui_release()Z

    move-result v0

    xor-int/lit8 v12, v0, 0x1

    move-object/from16 v0, p0

    move v1, v2

    move-object v2, v8

    move-object v3, v9

    move-object v4, v5

    move v5, v12

    .line 162
    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/node/NodeChain;->structuralUpdate(ILandroidx/compose/runtime/collection/MutableVector;Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;Z)V

    goto :goto_5

    .line 158
    :cond_9
    const-string v0, "structuralUpdate requires a non-null tail"

    .line 893
    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateExceptionForNullCheck(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 884
    :cond_a
    invoke-static {v4}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateExceptionForNullCheck(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 170
    :cond_b
    iget-object v2, v6, Landroidx/compose/ui/node/NodeChain;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->getApplyingModifierOnAttach$ui_release()Z

    move-result v2

    if-eqz v2, :cond_e

    if-nez v1, :cond_e

    move-object v1, v7

    .line 178
    :goto_4
    invoke-virtual {v9}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v2

    if-ge v0, v2, :cond_d

    .line 897
    invoke-virtual {v9}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v2

    aget-object v2, v2, v0

    .line 179
    move-object v15, v2

    check-cast v15, Landroidx/compose/ui/Modifier$Element;

    .line 181
    invoke-direct {v6, v15, v1}, Landroidx/compose/ui/node/NodeChain;->createAndInsertNodeAsChild(Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    .line 182
    iget-object v12, v6, Landroidx/compose/ui/node/NodeChain;->logger:Landroidx/compose/ui/node/NodeChain$Logger;

    if-eqz v12, :cond_c

    const/4 v13, 0x0

    move v14, v0

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    invoke-interface/range {v12 .. v17}, Landroidx/compose/ui/node/NodeChain$Logger;->nodeInserted(IILandroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/Modifier$Node;)V

    :cond_c
    add-int/lit8 v0, v0, 0x1

    move-object v1, v2

    goto :goto_4

    .line 185
    :cond_d
    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/node/NodeChain;->syncAggregateChildKindSet()V

    :goto_5
    move v0, v11

    goto/16 :goto_8

    .line 186
    :cond_e
    invoke-virtual {v9}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v1

    if-nez v1, :cond_13

    if-eqz v8, :cond_12

    .line 189
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    move v2, v0

    :goto_6
    if-eqz v1, :cond_10

    .line 190
    invoke-virtual {v8}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v3

    if-ge v2, v3, :cond_10

    .line 191
    iget-object v3, v6, Landroidx/compose/ui/node/NodeChain;->logger:Landroidx/compose/ui/node/NodeChain$Logger;

    if-eqz v3, :cond_f

    .line 907
    invoke-virtual {v8}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v4

    aget-object v4, v4, v2

    check-cast v4, Landroidx/compose/ui/Modifier$Element;

    .line 191
    invoke-interface {v3, v2, v4, v1}, Landroidx/compose/ui/node/NodeChain$Logger;->nodeRemoved(ILandroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Node;)V

    .line 192
    :cond_f
    invoke-direct {v6, v1}, Landroidx/compose/ui/node/NodeChain;->detachAndRemoveNode(Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 195
    :cond_10
    iget-object v1, v6, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Landroidx/compose/ui/node/InnerNodeCoordinator;

    iget-object v2, v6, Landroidx/compose/ui/node/NodeChain;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->getInnerCoordinator$ui_release()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v2

    goto :goto_7

    :cond_11
    move-object v2, v10

    :goto_7
    invoke-virtual {v1, v2}, Landroidx/compose/ui/node/InnerNodeCoordinator;->setWrappedBy$ui_release(Landroidx/compose/ui/node/NodeCoordinator;)V

    .line 196
    iget-object v1, v6, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Landroidx/compose/ui/node/InnerNodeCoordinator;

    check-cast v1, Landroidx/compose/ui/node/NodeCoordinator;

    iput-object v1, v6, Landroidx/compose/ui/node/NodeChain;->outerCoordinator:Landroidx/compose/ui/node/NodeCoordinator;

    goto :goto_8

    .line 903
    :cond_12
    invoke-static {v4}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateExceptionForNullCheck(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    :cond_13
    if-nez v8, :cond_14

    .line 909
    new-instance v8, Landroidx/compose/runtime/collection/MutableVector;

    new-array v1, v3, [Landroidx/compose/ui/Modifier$Element;

    invoke-direct {v8, v1, v0}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 205
    :cond_14
    iget-object v0, v6, Landroidx/compose/ui/node/NodeChain;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getApplyingModifierOnAttach$ui_release()Z

    move-result v0

    xor-int/lit8 v5, v0, 0x1

    const/4 v1, 0x0

    move-object/from16 v0, p0

    move-object v2, v8

    move-object v3, v9

    move-object v4, v7

    .line 200
    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/node/NodeChain;->structuralUpdate(ILandroidx/compose/runtime/collection/MutableVector;Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;Z)V

    goto :goto_5

    .line 208
    :cond_15
    :goto_8
    iput-object v9, v6, Landroidx/compose/ui/node/NodeChain;->current:Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v8, :cond_16

    .line 210
    invoke-virtual {v8}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    move-object v10, v8

    :cond_16
    iput-object v10, v6, Landroidx/compose/ui/node/NodeChain;->buffer:Landroidx/compose/runtime/collection/MutableVector;

    .line 211
    invoke-direct {v6, v7}, Landroidx/compose/ui/node/NodeChain;->trimChain(Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    iput-object v1, v6, Landroidx/compose/ui/node/NodeChain;->head:Landroidx/compose/ui/Modifier$Node;

    if-eqz v0, :cond_17

    .line 213
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/NodeChain;->syncCoordinators()V

    :cond_17
    return-void
.end method

.method public final useLogger$ui_release(Landroidx/compose/ui/node/NodeChain$Logger;)V
    .locals 0

    .line 51
    iput-object p1, p0, Landroidx/compose/ui/node/NodeChain;->logger:Landroidx/compose/ui/node/NodeChain$Logger;

    return-void
.end method
