.class public final Landroidx/compose/runtime/SlotTable;
.super Ljava/lang/Object;
.source "SlotTable.kt"

# interfaces
.implements Landroidx/compose/runtime/tooling/CompositionData;
.implements Ljava/lang/Iterable;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/compose/runtime/tooling/CompositionData;",
        "Ljava/lang/Iterable<",
        "Landroidx/compose/runtime/tooling/CompositionGroup;",
        ">;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSlotTable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SlotTable.kt\nandroidx/compose/runtime/SlotTable\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 Preconditions.kt\nandroidx/compose/runtime/PreconditionsKt\n+ 5 SlotTable.kt\nandroidx/compose/runtime/SlotTableKt\n+ 6 ActualJvm.jvm.kt\nandroidx/compose/runtime/ActualJvm_jvmKt\n+ 7 ListUtils.kt\nandroidx/compose/runtime/snapshots/ListUtilsKt\n*L\n1#1,4179:1\n159#1,8:4265\n175#1,5:4273\n181#1,3:4285\n1#2:4180\n1#2:4284\n4553#3,7:4181\n4553#3,7:4188\n4553#3,7:4195\n4553#3,7:4215\n4553#3,7:4222\n4553#3,7:4236\n4553#3,7:4243\n4553#3,7:4250\n33#4,7:4202\n33#4,7:4229\n33#4,7:4258\n50#4,7:4288\n50#4,7:4295\n33#4,7:4306\n33#4,7:4313\n33#4,7:4321\n33#4,7:4328\n50#4,7:4335\n50#4,7:4342\n50#4,7:4349\n50#4,7:4356\n50#4,7:4363\n50#4,7:4370\n50#4,7:4377\n50#4,7:4384\n50#4,7:4391\n50#4,7:4398\n50#4,7:4405\n33#4,7:4416\n33#4,7:4423\n4046#5,6:4209\n89#6:4257\n33#7,6:4278\n33#7,4:4302\n38#7:4320\n33#7,4:4412\n38#7:4430\n*S KotlinDebug\n*F\n+ 1 SlotTable.kt\nandroidx/compose/runtime/SlotTable\n*L\n358#1:4265,8\n395#1:4273,5\n395#1:4285,3\n395#1:4284\n204#1:4181,7\n205#1:4188,7\n221#1:4195,7\n234#1:4215,7\n245#1:4222,7\n265#1:4236,7\n266#1:4243,7\n278#1:4250,7\n222#1:4202,7\n246#1:4229,7\n307#1:4258,7\n514#1:4288,7\n521#1:4295,7\n530#1:4306,7\n533#1:4313,7\n556#1:4321,7\n559#1:4328,7\n452#1:4335,7\n457#1:4342,7\n460#1:4349,7\n466#1:4356,7\n469#1:4363,7\n473#1:4370,7\n479#1:4377,7\n483#1:4384,7\n492#1:4391,7\n497#1:4398,7\n502#1:4405,7\n542#1:4416,7\n545#1:4423,7\n225#1:4209,6\n281#1:4257\n397#1:4278,6\n528#1:4302,4\n528#1:4320\n539#1:4412,4\n539#1:4430\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b0\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u001c\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0015\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010(\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00030\u0002B\u0005\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010:\u001a\u00020\u00072\u0006\u0010;\u001a\u00020\u001cJ\u000e\u0010<\u001a\u00020\u001c2\u0006\u0010:\u001a\u00020\u0007J=\u0010=\u001a\u00020>2\u0006\u0010?\u001a\u00020@2&\u0010,\u001a\"\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020.\u0018\u00010-j\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020.\u0018\u0001`/H\u0000\u00a2\u0006\u0002\u0008AJ\u008f\u0001\u0010=\u001a\u00020>2\u0006\u00108\u001a\u00020B2\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001d\u001a\u00020\u001c2\u000e\u0010&\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010%0$2\u0006\u0010*\u001a\u00020\u001c2\u0016\u0010\u0005\u001a\u0012\u0012\u0004\u0012\u00020\u00070\u0006j\u0008\u0012\u0004\u0012\u00020\u0007`\u00082&\u0010,\u001a\"\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020.\u0018\u00010-j\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020.\u0018\u0001`/2\u000e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000eH\u0000\u00a2\u0006\u0004\u0008A\u0010CJ\u0006\u0010D\u001a\u00020>J\u0006\u0010E\u001a\u00020>J\u0006\u0010F\u001a\u00020!J\u000e\u0010G\u001a\u0008\u0012\u0004\u0012\u00020\u001c0HH\u0002J\u0012\u0010I\u001a\u0004\u0018\u00010\u00032\u0006\u0010J\u001a\u00020%H\u0016J\u0012\u0010K\u001a\u0004\u0018\u00010L2\u0006\u0010M\u001a\u00020\u001cH\u0002J\u0016\u0010N\u001a\u00020!2\u0006\u0010O\u001a\u00020\u001c2\u0006\u0010:\u001a\u00020\u0007J\u000e\u0010P\u001a\u0008\u0012\u0004\u0012\u00020\u001c0HH\u0002J\u001d\u0010Q\u001a\n\u0012\u0004\u0012\u00020L\u0018\u00010H2\u0006\u0010R\u001a\u00020\u001cH\u0000\u00a2\u0006\u0002\u0008SJ\u000f\u0010T\u001a\u0008\u0012\u0004\u0012\u00020\u00030UH\u0096\u0002J\u000e\u0010V\u001a\u0008\u0012\u0004\u0012\u00020\u001c0HH\u0002J\u000e\u0010W\u001a\u0008\u0012\u0004\u0012\u00020\u001c0HH\u0002J\u0006\u0010X\u001a\u00020@J\u0006\u0010Y\u001a\u00020BJ\u000e\u0010Z\u001a\u00020!2\u0006\u0010:\u001a\u00020\u0007J\u000e\u0010[\u001a\u0008\u0012\u0004\u0012\u00020\u001c0HH\u0002J7\u0010\\\u001a\u0002H]\"\u0004\u0008\u0000\u0010]2!\u0010^\u001a\u001d\u0012\u0013\u0012\u00110@\u00a2\u0006\u000c\u0008`\u0012\u0008\u0008a\u0012\u0004\u0008\u0008(?\u0012\u0004\u0012\u0002H]0_H\u0086\u0008\u00a2\u0006\u0002\u0010bJ\u0087\u0001\u0010c\u001a\u00020>2\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001d\u001a\u00020\u001c2\u000e\u0010&\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010%0$2\u0006\u0010*\u001a\u00020\u001c2\u0016\u0010\u0005\u001a\u0012\u0012\u0004\u0012\u00020\u00070\u0006j\u0008\u0012\u0004\u0012\u00020\u0007`\u00082&\u0010,\u001a\"\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020.\u0018\u00010-j\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020.\u0018\u0001`/2\u000e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000eH\u0000\u00a2\u0006\u0004\u0008d\u0010eJ\u001f\u0010f\u001a\u0004\u0018\u00010%2\u0006\u0010M\u001a\u00020\u001c2\u0006\u0010g\u001a\u00020\u001cH\u0000\u00a2\u0006\u0002\u0008hJ\u001d\u0010i\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010%0H2\u0006\u0010M\u001a\u00020\u001cH\u0000\u00a2\u0006\u0002\u0008jJ\u0010\u0010k\u001a\u0004\u0018\u00010.2\u0006\u0010M\u001a\u00020\u001cJ\u0006\u0010l\u001a\u00020mJ\u0012\u0010n\u001a\u0004\u0018\u00010\u00072\u0006\u0010;\u001a\u00020\u001cH\u0002J\u0006\u0010o\u001a\u00020>J7\u0010p\u001a\u0002H]\"\u0004\u0008\u0000\u0010]2!\u0010^\u001a\u001d\u0012\u0013\u0012\u00110B\u00a2\u0006\u000c\u0008`\u0012\u0008\u0008a\u0012\u0004\u0008\u0008(8\u0012\u0004\u0012\u0002H]0_H\u0086\u0008\u00a2\u0006\u0002\u0010bJ \u0010q\u001a\u00020\u001c*\u00060rj\u0002`s2\u0006\u0010;\u001a\u00020\u001c2\u0006\u0010t\u001a\u00020\u001cH\u0002R*\u0010\u0005\u001a\u0012\u0012\u0004\u0012\u00020\u00070\u0006j\u0008\u0012\u0004\u0012\u00020\u0007`\u0008X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\"\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000eX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00028VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016R\u001e\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0017\u001a\u00020\u0018@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u001e\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u0017\u001a\u00020\u001c@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001fR\u0014\u0010 \u001a\u00020!8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010\"R\u000e\u0010#\u001a\u00020\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R0\u0010&\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010%0$2\u000e\u0010\u0017\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010%0$@BX\u0086\u000e\u00a2\u0006\n\n\u0002\u0010)\u001a\u0004\u0008\'\u0010(R\u001e\u0010*\u001a\u00020\u001c2\u0006\u0010\u0017\u001a\u00020\u001c@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010\u001fR:\u0010,\u001a\"\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020.\u0018\u00010-j\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020.\u0018\u0001`/X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00080\u00101\"\u0004\u00082\u00103R\u001a\u00104\u001a\u00020\u001cX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00085\u0010\u001f\"\u0004\u00086\u00107R\u001e\u00108\u001a\u00020!2\u0006\u0010\u0017\u001a\u00020!@BX\u0080\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00089\u0010\"\u00a8\u0006u"
    }
    d2 = {
        "Landroidx/compose/runtime/SlotTable;",
        "Landroidx/compose/runtime/tooling/CompositionData;",
        "",
        "Landroidx/compose/runtime/tooling/CompositionGroup;",
        "()V",
        "anchors",
        "Ljava/util/ArrayList;",
        "Landroidx/compose/runtime/Anchor;",
        "Lkotlin/collections/ArrayList;",
        "getAnchors$runtime_release",
        "()Ljava/util/ArrayList;",
        "setAnchors$runtime_release",
        "(Ljava/util/ArrayList;)V",
        "calledByMap",
        "Landroidx/collection/MutableIntObjectMap;",
        "Landroidx/collection/MutableIntSet;",
        "getCalledByMap$runtime_release",
        "()Landroidx/collection/MutableIntObjectMap;",
        "setCalledByMap$runtime_release",
        "(Landroidx/collection/MutableIntObjectMap;)V",
        "compositionGroups",
        "getCompositionGroups",
        "()Ljava/lang/Iterable;",
        "<set-?>",
        "",
        "groups",
        "getGroups",
        "()[I",
        "",
        "groupsSize",
        "getGroupsSize",
        "()I",
        "isEmpty",
        "",
        "()Z",
        "readers",
        "",
        "",
        "slots",
        "getSlots",
        "()[Ljava/lang/Object;",
        "[Ljava/lang/Object;",
        "slotsSize",
        "getSlotsSize",
        "sourceInformationMap",
        "Ljava/util/HashMap;",
        "Landroidx/compose/runtime/GroupSourceInformation;",
        "Lkotlin/collections/HashMap;",
        "getSourceInformationMap$runtime_release",
        "()Ljava/util/HashMap;",
        "setSourceInformationMap$runtime_release",
        "(Ljava/util/HashMap;)V",
        "version",
        "getVersion$runtime_release",
        "setVersion$runtime_release",
        "(I)V",
        "writer",
        "getWriter$runtime_release",
        "anchor",
        "index",
        "anchorIndex",
        "close",
        "",
        "reader",
        "Landroidx/compose/runtime/SlotReader;",
        "close$runtime_release",
        "Landroidx/compose/runtime/SlotWriter;",
        "(Landroidx/compose/runtime/SlotWriter;[II[Ljava/lang/Object;ILjava/util/ArrayList;Ljava/util/HashMap;Landroidx/collection/MutableIntObjectMap;)V",
        "collectCalledByInformation",
        "collectSourceInformation",
        "containsMark",
        "dataIndexes",
        "",
        "find",
        "identityToFind",
        "findEffectiveRecomposeScope",
        "Landroidx/compose/runtime/RecomposeScopeImpl;",
        "group",
        "groupContainsAnchor",
        "groupIndex",
        "groupSizes",
        "invalidateGroupsWithKey",
        "target",
        "invalidateGroupsWithKey$runtime_release",
        "iterator",
        "",
        "keys",
        "nodes",
        "openReader",
        "openWriter",
        "ownsAnchor",
        "parentIndexes",
        "read",
        "T",
        "block",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "setTo",
        "setTo$runtime_release",
        "([II[Ljava/lang/Object;ILjava/util/ArrayList;Ljava/util/HashMap;Landroidx/collection/MutableIntObjectMap;)V",
        "slot",
        "slotIndex",
        "slot$runtime_release",
        "slotsOf",
        "slotsOf$runtime_release",
        "sourceInformationOf",
        "toDebugString",
        "",
        "tryAnchor",
        "verifyWellFormed",
        "write",
        "emitGroup",
        "Ljava/lang/StringBuilder;",
        "Lkotlin/text/StringBuilder;",
        "level",
        "runtime_release"
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
.field private anchors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/compose/runtime/Anchor;",
            ">;"
        }
    .end annotation
.end field

.field private calledByMap:Landroidx/collection/MutableIntObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableIntObjectMap<",
            "Landroidx/collection/MutableIntSet;",
            ">;"
        }
    .end annotation
.end field

.field private groups:[I

.field private groupsSize:I

.field private readers:I

.field private slots:[Ljava/lang/Object;

.field private slotsSize:I

.field private sourceInformationMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroidx/compose/runtime/Anchor;",
            "Landroidx/compose/runtime/GroupSourceInformation;",
            ">;"
        }
    .end annotation
.end field

.field private version:I

.field private writer:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 90
    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/compose/runtime/SlotTable;->groups:[I

    .line 105
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroidx/compose/runtime/SlotTable;->slots:[Ljava/lang/Object;

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/SlotTable;->anchors:Ljava/util/ArrayList;

    return-void
.end method

.method private final dataIndexes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 689
    iget-object v0, p0, Landroidx/compose/runtime/SlotTable;->groups:[I

    iget v1, p0, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    mul-int/lit8 v1, v1, 0x5

    invoke-static {v0, v1}, Landroidx/compose/runtime/SlotTableKt;->access$dataAnchors([II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final emitGroup(Ljava/lang/StringBuilder;II)I
    .locals 9

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_0

    const/16 v2, 0x20

    .line 601
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 602
    :cond_0
    const-string v1, "Group("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 604
    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/SlotTable;->sourceInformationOf(I)Landroidx/compose/runtime/GroupSourceInformation;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroidx/compose/runtime/GroupSourceInformation;->getSourceInformation()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 606
    const-string v2, "C("

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v1, v2, v0, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "CC("

    invoke-static {v1, v2, v0, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 607
    :cond_1
    move-object v0, v1

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v6, 0x6

    const/4 v7, 0x0

    const-string v3, "("

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, v0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v2

    add-int/lit8 v8, v2, 0x1

    const/16 v3, 0x29

    move-object v2, v0

    .line 608
    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v0

    .line 609
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    invoke-virtual {v1, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    const-string v0, "()"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    :cond_2
    const-string v0, " key="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    iget-object v0, p0, Landroidx/compose/runtime/SlotTable;->groups:[I

    invoke-static {v0, p2}, Landroidx/compose/runtime/SlotTableKt;->access$key([II)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 619
    iget-object v0, p0, Landroidx/compose/runtime/SlotTable;->groups:[I

    invoke-static {v0, p2}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result v0

    .line 620
    const-string v1, ", nodes="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    iget-object v1, p0, Landroidx/compose/runtime/SlotTable;->groups:[I

    invoke-static {v1, p2}, Landroidx/compose/runtime/SlotTableKt;->access$nodeCount([II)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 622
    const-string v1, ", size="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 624
    iget-object v1, p0, Landroidx/compose/runtime/SlotTable;->groups:[I

    invoke-static {v1, p2}, Landroidx/compose/runtime/SlotTableKt;->access$hasMark([II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 625
    const-string v1, ", mark"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    :cond_3
    iget-object v1, p0, Landroidx/compose/runtime/SlotTable;->groups:[I

    invoke-static {v1, p2}, Landroidx/compose/runtime/SlotTableKt;->access$containsMark([II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 628
    const-string v1, ", contains mark"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    :cond_4
    invoke-static {p0, p2}, Landroidx/compose/runtime/SlotTable;->emitGroup$dataIndex(Landroidx/compose/runtime/SlotTable;I)I

    move-result v1

    add-int/lit8 v2, p2, 0x1

    .line 631
    invoke-static {p0, v2}, Landroidx/compose/runtime/SlotTable;->emitGroup$dataIndex(Landroidx/compose/runtime/SlotTable;I)I

    move-result v3

    const/16 v4, 0xa

    if-ltz v1, :cond_a

    if-gt v1, v3, :cond_a

    .line 632
    iget v5, p0, Landroidx/compose/runtime/SlotTable;->slotsSize:I

    if-gt v3, v5, :cond_a

    .line 633
    iget-object v1, p0, Landroidx/compose/runtime/SlotTable;->groups:[I

    invoke-static {v1, p2}, Landroidx/compose/runtime/SlotTableKt;->access$hasObjectKey([II)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 634
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, " objectKey="

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Landroidx/compose/runtime/SlotTable;->slots:[Ljava/lang/Object;

    .line 635
    iget-object v6, p0, Landroidx/compose/runtime/SlotTable;->groups:[I

    invoke-static {v6, p2}, Landroidx/compose/runtime/SlotTableKt;->access$objectKeyIndex([II)I

    move-result v6

    aget-object v5, v5, v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Landroidx/compose/runtime/SlotTableKt;->access$summarize(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 634
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    :cond_5
    iget-object v1, p0, Landroidx/compose/runtime/SlotTable;->groups:[I

    invoke-static {v1, p2}, Landroidx/compose/runtime/SlotTableKt;->access$isNode([II)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 639
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, " node="

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Landroidx/compose/runtime/SlotTable;->slots:[Ljava/lang/Object;

    iget-object v6, p0, Landroidx/compose/runtime/SlotTable;->groups:[I

    invoke-static {v6, p2}, Landroidx/compose/runtime/SlotTableKt;->access$nodeIndex([II)I

    move-result v6

    aget-object v5, v5, v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Landroidx/compose/runtime/SlotTableKt;->access$summarize(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    :cond_6
    iget-object v1, p0, Landroidx/compose/runtime/SlotTable;->groups:[I

    invoke-static {v1, p2}, Landroidx/compose/runtime/SlotTableKt;->access$hasAux([II)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 642
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, " aux="

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Landroidx/compose/runtime/SlotTable;->slots:[Ljava/lang/Object;

    iget-object v6, p0, Landroidx/compose/runtime/SlotTable;->groups:[I

    invoke-static {v6, p2}, Landroidx/compose/runtime/SlotTableKt;->access$auxIndex([II)I

    move-result v6

    aget-object v5, v5, v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Landroidx/compose/runtime/SlotTableKt;->access$summarize(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    :cond_7
    iget-object v1, p0, Landroidx/compose/runtime/SlotTable;->groups:[I

    invoke-static {v1, p2}, Landroidx/compose/runtime/SlotTableKt;->access$slotAnchor([II)I

    move-result v1

    if-ge v1, v3, :cond_b

    .line 646
    const-string v5, ", slots=["

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 648
    const-string v5, ": "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, v1

    :goto_1
    if-ge v5, v3, :cond_9

    if-eq v5, v1, :cond_8

    .line 650
    const-string v6, ", "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    :cond_8
    iget-object v6, p0, Landroidx/compose/runtime/SlotTable;->slots:[Ljava/lang/Object;

    aget-object v6, v6, v5

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Landroidx/compose/runtime/SlotTableKt;->access$summarize(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 653
    :cond_9
    const-string/jumbo v1, "]"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 656
    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, ", *invalid data offsets "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v5, 0x2d

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x2a

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    :cond_b
    :goto_2
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/2addr p2, v0

    :goto_3
    if-ge v2, p2, :cond_c

    add-int/lit8 v1, p3, 0x1

    .line 662
    invoke-direct {p0, p1, v2, v1}, Landroidx/compose/runtime/SlotTable;->emitGroup(Ljava/lang/StringBuilder;II)I

    move-result v1

    add-int/2addr v2, v1

    goto :goto_3

    :cond_c
    return v0
.end method

.method private static final emitGroup$dataIndex(Landroidx/compose/runtime/SlotTable;I)I
    .locals 1

    .line 617
    iget v0, p0, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    if-lt p1, v0, :cond_0

    iget p0, p0, Landroidx/compose/runtime/SlotTable;->slotsSize:I

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/compose/runtime/SlotTable;->groups:[I

    invoke-static {p0, p1}, Landroidx/compose/runtime/SlotTableKt;->access$dataAnchor([II)I

    move-result p0

    :goto_0
    return p0
.end method

.method private final findEffectiveRecomposeScope(I)Landroidx/compose/runtime/RecomposeScopeImpl;
    .locals 4

    move v0, p1

    :goto_0
    if-lez v0, :cond_3

    .line 429
    new-instance v1, Landroidx/compose/runtime/DataIterator;

    invoke-direct {v1, p0, v0}, Landroidx/compose/runtime/DataIterator;-><init>(Landroidx/compose/runtime/SlotTable;I)V

    invoke-virtual {v1}, Landroidx/compose/runtime/DataIterator;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 430
    instance-of v3, v2, Landroidx/compose/runtime/RecomposeScopeImpl;

    if-eqz v3, :cond_0

    .line 431
    check-cast v2, Landroidx/compose/runtime/RecomposeScopeImpl;

    invoke-virtual {v2}, Landroidx/compose/runtime/RecomposeScopeImpl;->getUsed()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eq v0, p1, :cond_1

    return-object v2

    :cond_1
    const/4 v3, 0x1

    .line 433
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/RecomposeScopeImpl;->setForcedRecompose(Z)V

    goto :goto_1

    .line 436
    :cond_2
    iget-object v1, p0, Landroidx/compose/runtime/SlotTable;->groups:[I

    invoke-static {v1, v0}, Landroidx/compose/runtime/SlotTableKt;->access$parentAnchor([II)I

    move-result v0

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private final groupSizes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 695
    iget-object v0, p0, Landroidx/compose/runtime/SlotTable;->groups:[I

    iget v1, p0, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    mul-int/lit8 v1, v1, 0x5

    invoke-static {v0, v1}, Landroidx/compose/runtime/SlotTableKt;->access$groupSizes([II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static final invalidateGroupsWithKey$lambda$20$scanGroup(Landroidx/compose/runtime/SlotReader;Landroidx/collection/MutableIntSet;Ljava/util/List;Lkotlin/jvm/internal/Ref$BooleanRef;Landroidx/compose/runtime/SlotTable;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/SlotReader;",
            "Landroidx/collection/MutableIntSet;",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/Anchor;",
            ">;",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "Landroidx/compose/runtime/SlotTable;",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/RecomposeScopeImpl;",
            ">;)V"
        }
    .end annotation

    .line 360
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotReader;->getGroupKey()I

    move-result v0

    .line 361
    invoke-virtual {p1, v0}, Landroidx/collection/MutableIntSet;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 p1, -0x3

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 363
    invoke-static {p0, v1, p1, v0}, Landroidx/compose/runtime/SlotReader;->anchor$default(Landroidx/compose/runtime/SlotReader;IILjava/lang/Object;)Landroidx/compose/runtime/Anchor;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    :cond_0
    iget-boolean p1, p3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz p1, :cond_2

    .line 365
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotReader;->getCurrentGroup()I

    move-result p1

    invoke-direct {p4, p1}, Landroidx/compose/runtime/SlotTable;->findEffectiveRecomposeScope(I)Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 367
    invoke-interface {p5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    invoke-virtual {p1}, Landroidx/compose/runtime/RecomposeScopeImpl;->getAnchor()Landroidx/compose/runtime/Anchor;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroidx/compose/runtime/Anchor;->getLocation$runtime_release()I

    move-result p1

    invoke-virtual {p0}, Landroidx/compose/runtime/SlotReader;->getCurrentGroup()I

    move-result p2

    if-ne p1, p2, :cond_2

    .line 373
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotReader;->getParent()I

    move-result p1

    invoke-direct {p4, p1}, Landroidx/compose/runtime/SlotTable;->findEffectiveRecomposeScope(I)Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 374
    invoke-interface {p5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 377
    :cond_1
    iput-boolean v1, p3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 378
    invoke-interface {p5}, Ljava/util/List;->clear()V

    .line 381
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotReader;->skipGroup()I

    return-void

    .line 384
    :cond_3
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotReader;->startGroup()V

    .line 385
    :goto_1
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotReader;->isGroupEnd()Z

    move-result v0

    if-nez v0, :cond_4

    .line 386
    invoke-static/range {p0 .. p5}, Landroidx/compose/runtime/SlotTable;->invalidateGroupsWithKey$lambda$20$scanGroup(Landroidx/compose/runtime/SlotReader;Landroidx/collection/MutableIntSet;Ljava/util/List;Lkotlin/jvm/internal/Ref$BooleanRef;Landroidx/compose/runtime/SlotTable;Ljava/util/List;)V

    goto :goto_1

    .line 388
    :cond_4
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotReader;->endGroup()V

    return-void
.end method

.method private final keys()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 671
    iget-object v0, p0, Landroidx/compose/runtime/SlotTable;->groups:[I

    iget v1, p0, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    mul-int/lit8 v1, v1, 0x5

    invoke-static {v0, v1}, Landroidx/compose/runtime/SlotTableKt;->access$keys([II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final nodes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 677
    iget-object v0, p0, Landroidx/compose/runtime/SlotTable;->groups:[I

    iget v1, p0, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    mul-int/lit8 v1, v1, 0x5

    invoke-static {v0, v1}, Landroidx/compose/runtime/SlotTableKt;->access$nodeCounts([II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final parentIndexes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 683
    iget-object v0, p0, Landroidx/compose/runtime/SlotTable;->groups:[I

    iget v1, p0, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    mul-int/lit8 v1, v1, 0x5

    invoke-static {v0, v1}, Landroidx/compose/runtime/SlotTableKt;->access$parentAnchors([II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final tryAnchor(I)Landroidx/compose/runtime/Anchor;
    .locals 2

    .line 234
    iget-boolean v0, p0, Landroidx/compose/runtime/SlotTable;->writer:Z

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    const-string/jumbo v0, "use active SlotWriter to crate an anchor for location instead"

    .line 4219
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :cond_0
    if-ltz p1, :cond_1

    .line 235
    iget v0, p0, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    if-ge p1, v0, :cond_1

    iget-object v1, p0, Landroidx/compose/runtime/SlotTable;->anchors:Ljava/util/ArrayList;

    invoke-static {v1, p1, v0}, Landroidx/compose/runtime/SlotTableKt;->access$find(Ljava/util/ArrayList;II)Landroidx/compose/runtime/Anchor;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private static final verifyWellFormed$validateGroup(Lkotlin/jvm/internal/Ref$IntRef;Landroidx/compose/runtime/SlotTable;II)I
    .locals 10

    .line 450
    iget v0, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 451
    iget-object v2, p1, Landroidx/compose/runtime/SlotTable;->groups:[I

    invoke-static {v2, v0}, Landroidx/compose/runtime/SlotTableKt;->access$parentAnchor([II)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, p2, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    if-nez v5, :cond_1

    .line 453
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Invalid parent index detected at "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", expected parent index to be "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4339
    invoke-static {v2}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 456
    :cond_1
    iget-object v2, p1, Landroidx/compose/runtime/SlotTable;->groups:[I

    invoke-static {v2, v0}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result v2

    add-int/2addr v2, v0

    .line 457
    iget v5, p1, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    if-gt v2, v5, :cond_2

    move v5, v4

    goto :goto_1

    :cond_2
    move v5, v3

    :goto_1
    if-nez v5, :cond_3

    .line 458
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "A group extends past the end of the table at "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4346
    invoke-static {v5}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_3
    if-gt v2, p3, :cond_4

    move p3, v4

    goto :goto_2

    :cond_4
    move p3, v3

    :goto_2
    if-nez p3, :cond_5

    .line 461
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v5, "A group extends past its parent group at "

    invoke-direct {p3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 4353
    invoke-static {p3}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 464
    :cond_5
    iget-object p3, p1, Landroidx/compose/runtime/SlotTable;->groups:[I

    invoke-static {p3, v0}, Landroidx/compose/runtime/SlotTableKt;->access$dataAnchor([II)I

    move-result p3

    .line 465
    iget v5, p1, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    sub-int/2addr v5, v4

    if-lt v0, v5, :cond_6

    iget v1, p1, Landroidx/compose/runtime/SlotTable;->slotsSize:I

    goto :goto_3

    :cond_6
    iget-object v5, p1, Landroidx/compose/runtime/SlotTable;->groups:[I

    invoke-static {v5, v1}, Landroidx/compose/runtime/SlotTableKt;->access$dataAnchor([II)I

    move-result v1

    .line 466
    :goto_3
    iget-object v5, p1, Landroidx/compose/runtime/SlotTable;->slots:[Ljava/lang/Object;

    array-length v5, v5

    if-gt v1, v5, :cond_7

    move v5, v4

    goto :goto_4

    :cond_7
    move v5, v3

    :goto_4
    if-nez v5, :cond_8

    .line 467
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Slots for "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " extend past the end of the slot table"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4360
    invoke-static {v5}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_8
    if-gt p3, v1, :cond_9

    move v5, v4

    goto :goto_5

    :cond_9
    move v5, v3

    :goto_5
    if-nez v5, :cond_a

    .line 470
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Invalid data anchor at "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4367
    invoke-static {v5}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 472
    :cond_a
    iget-object v5, p1, Landroidx/compose/runtime/SlotTable;->groups:[I

    invoke-static {v5, v0}, Landroidx/compose/runtime/SlotTableKt;->access$slotAnchor([II)I

    move-result v5

    if-gt v5, v1, :cond_b

    move v5, v4

    goto :goto_6

    :cond_b
    move v5, v3

    :goto_6
    if-nez v5, :cond_c

    .line 474
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Slots start out of range at "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4374
    invoke-static {v5}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 476
    :cond_c
    iget-object v5, p1, Landroidx/compose/runtime/SlotTable;->groups:[I

    invoke-static {v5, v0}, Landroidx/compose/runtime/SlotTableKt;->access$isNode([II)Z

    move-result v5

    .line 477
    iget-object v6, p1, Landroidx/compose/runtime/SlotTable;->groups:[I

    invoke-static {v6, v0}, Landroidx/compose/runtime/SlotTableKt;->access$hasObjectKey([II)Z

    move-result v6

    add-int/2addr v5, v6

    .line 478
    iget-object v6, p1, Landroidx/compose/runtime/SlotTable;->groups:[I

    invoke-static {v6, v0}, Landroidx/compose/runtime/SlotTableKt;->access$hasAux([II)Z

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v1, p3

    if-lt v1, v5, :cond_d

    move p3, v4

    goto :goto_7

    :cond_d
    move p3, v3

    :goto_7
    if-nez p3, :cond_e

    .line 480
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "Not enough slots added for group "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 4381
    invoke-static {p3}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 482
    :cond_e
    iget-object p3, p1, Landroidx/compose/runtime/SlotTable;->groups:[I

    invoke-static {p3, v0}, Landroidx/compose/runtime/SlotTableKt;->access$isNode([II)Z

    move-result p3

    if-eqz p3, :cond_10

    .line 483
    iget-object v1, p1, Landroidx/compose/runtime/SlotTable;->slots:[Ljava/lang/Object;

    iget-object v5, p1, Landroidx/compose/runtime/SlotTable;->groups:[I

    invoke-static {v5, v0}, Landroidx/compose/runtime/SlotTableKt;->access$nodeIndex([II)I

    move-result v5

    aget-object v1, v1, v5

    if-eqz v1, :cond_f

    goto :goto_8

    :cond_f
    move v1, v3

    goto :goto_9

    :cond_10
    :goto_8
    move v1, v4

    :goto_9
    if-nez v1, :cond_11

    .line 484
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "No node recorded for a node group at "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4388
    invoke-static {v1}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_11
    move v1, v3

    .line 487
    :goto_a
    iget v5, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-ge v5, v2, :cond_12

    .line 488
    invoke-static {p0, p1, v0, v2}, Landroidx/compose/runtime/SlotTable;->verifyWellFormed$validateGroup(Lkotlin/jvm/internal/Ref$IntRef;Landroidx/compose/runtime/SlotTable;II)I

    move-result v5

    add-int/2addr v1, v5

    goto :goto_a

    .line 490
    :cond_12
    iget-object v2, p1, Landroidx/compose/runtime/SlotTable;->groups:[I

    invoke-static {v2, v0}, Landroidx/compose/runtime/SlotTableKt;->access$nodeCount([II)I

    move-result v2

    .line 491
    iget-object v5, p1, Landroidx/compose/runtime/SlotTable;->groups:[I

    invoke-static {v5, v0}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result v5

    if-ne v2, v1, :cond_13

    move v6, v4

    goto :goto_b

    :cond_13
    move v6, v3

    .line 4394
    :goto_b
    const-string v7, ", received "

    const-string v8, ", expected "

    if-nez v6, :cond_14

    .line 493
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "Incorrect node count detected at "

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4395
    invoke-static {v2}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 496
    :cond_14
    iget p0, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    sub-int/2addr p0, v0

    if-ne v5, p0, :cond_15

    move v2, v4

    goto :goto_c

    :cond_15
    move v2, v3

    :goto_c
    if-nez v2, :cond_16

    .line 498
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "Incorrect slot count detected at "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4402
    invoke-static {p0}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 501
    :cond_16
    iget-object p0, p1, Landroidx/compose/runtime/SlotTable;->groups:[I

    invoke-static {p0, v0}, Landroidx/compose/runtime/SlotTableKt;->access$containsAnyMark([II)Z

    move-result p0

    if-eqz p0, :cond_19

    if-lez v0, :cond_17

    .line 502
    iget-object p0, p1, Landroidx/compose/runtime/SlotTable;->groups:[I

    invoke-static {p0, p2}, Landroidx/compose/runtime/SlotTableKt;->access$containsMark([II)Z

    move-result p0

    if-eqz p0, :cond_18

    :cond_17
    move v3, v4

    :cond_18
    if-nez v3, :cond_19

    .line 503
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Expected group "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " to record it contains a mark because "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " does"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4409
    invoke-static {p0}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_19
    if-eqz p3, :cond_1a

    goto :goto_d

    :cond_1a
    move v4, v1

    :goto_d
    return v4
.end method

.method private static final verifyWellFormed$verifySourceGroup(Landroidx/compose/runtime/SlotTable;Landroidx/compose/runtime/GroupSourceInformation;)V
    .locals 4

    .line 539
    invoke-virtual {p1}, Landroidx/compose/runtime/GroupSourceInformation;->getGroups()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Ljava/util/List;

    .line 4413
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 4414
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 541
    instance-of v3, v2, Landroidx/compose/runtime/Anchor;

    if-eqz v3, :cond_1

    .line 542
    check-cast v2, Landroidx/compose/runtime/Anchor;

    invoke-virtual {v2}, Landroidx/compose/runtime/Anchor;->getValid()Z

    move-result v3

    if-nez v3, :cond_0

    .line 543
    const-string v3, "Source map contains invalid anchor"

    .line 4420
    invoke-static {v3}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 545
    :cond_0
    invoke-virtual {p0, v2}, Landroidx/compose/runtime/SlotTable;->ownsAnchor(Landroidx/compose/runtime/Anchor;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 546
    const-string v2, "Source map anchor is not owned by the slot table"

    .line 4427
    invoke-static {v2}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    goto :goto_1

    .line 549
    :cond_1
    instance-of v3, v2, Landroidx/compose/runtime/GroupSourceInformation;

    if-eqz v3, :cond_2

    check-cast v2, Landroidx/compose/runtime/GroupSourceInformation;

    invoke-static {p0, v2}, Landroidx/compose/runtime/SlotTable;->verifyWellFormed$verifySourceGroup(Landroidx/compose/runtime/SlotTable;Landroidx/compose/runtime/GroupSourceInformation;)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public final anchor(I)Landroidx/compose/runtime/Anchor;
    .locals 4

    .line 221
    iget-boolean v0, p0, Landroidx/compose/runtime/SlotTable;->writer:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-nez v0, :cond_0

    const-string/jumbo v0, "use active SlotWriter to create an anchor location instead"

    .line 4199
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    if-ltz p1, :cond_1

    .line 222
    iget v2, p0, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    if-ge p1, v2, :cond_1

    move v0, v1

    :cond_1
    if-nez v0, :cond_2

    .line 223
    const-string v0, "Parameter index is out of range"

    .line 4206
    invoke-static {v0}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 225
    :cond_2
    iget-object v0, p0, Landroidx/compose/runtime/SlotTable;->anchors:Ljava/util/ArrayList;

    iget v2, p0, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    .line 4209
    invoke-static {v0, p1, v2}, Landroidx/compose/runtime/SlotTableKt;->access$search(Ljava/util/ArrayList;II)I

    move-result v2

    if-gez v2, :cond_3

    .line 226
    new-instance v3, Landroidx/compose/runtime/Anchor;

    invoke-direct {v3, p1}, Landroidx/compose/runtime/Anchor;-><init>(I)V

    add-int/2addr v2, v1

    neg-int p1, v2

    .line 4212
    invoke-virtual {v0, p1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 4214
    :cond_3
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroidx/compose/runtime/Anchor;

    :goto_0
    return-object v3
.end method

.method public final anchorIndex(Landroidx/compose/runtime/Anchor;)I
    .locals 1

    .line 245
    iget-boolean v0, p0, Landroidx/compose/runtime/SlotTable;->writer:Z

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    const-string v0, "Use active SlotWriter to determine anchor location instead"

    .line 4226
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 246
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/runtime/Anchor;->getValid()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Anchor refers to a group that was removed"

    .line 4233
    invoke-static {v0}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 247
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/runtime/Anchor;->getLocation$runtime_release()I

    move-result p1

    return p1
.end method

.method public final close$runtime_release(Landroidx/compose/runtime/SlotReader;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/SlotReader;",
            "Ljava/util/HashMap<",
            "Landroidx/compose/runtime/Anchor;",
            "Landroidx/compose/runtime/GroupSourceInformation;",
            ">;)V"
        }
    .end annotation

    .line 278
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotReader;->getTable$runtime_release()Landroidx/compose/runtime/SlotTable;

    move-result-object p1

    if-ne p1, p0, :cond_0

    iget p1, p0, Landroidx/compose/runtime/SlotTable;->readers:I

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const-string p1, "Unexpected reader close()"

    .line 4254
    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 279
    :cond_1
    iget p1, p0, Landroidx/compose/runtime/SlotTable;->readers:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/compose/runtime/SlotTable;->readers:I

    if-eqz p2, :cond_3

    .line 4257
    monitor-enter p0

    .line 282
    :try_start_0
    iget-object p1, p0, Landroidx/compose/runtime/SlotTable;->sourceInformationMap:Ljava/util/HashMap;

    if-eqz p1, :cond_2

    .line 284
    check-cast p2, Ljava/util/Map;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_1

    .line 286
    :cond_2
    iput-object p2, p0, Landroidx/compose/runtime/SlotTable;->sourceInformationMap:Ljava/util/HashMap;

    .line 288
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4257
    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_3
    :goto_2
    return-void
.end method

.method public final close$runtime_release(Landroidx/compose/runtime/SlotWriter;[II[Ljava/lang/Object;ILjava/util/ArrayList;Ljava/util/HashMap;Landroidx/collection/MutableIntObjectMap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/SlotWriter;",
            "[II[",
            "Ljava/lang/Object;",
            "I",
            "Ljava/util/ArrayList<",
            "Landroidx/compose/runtime/Anchor;",
            ">;",
            "Ljava/util/HashMap<",
            "Landroidx/compose/runtime/Anchor;",
            "Landroidx/compose/runtime/GroupSourceInformation;",
            ">;",
            "Landroidx/collection/MutableIntObjectMap<",
            "Landroidx/collection/MutableIntSet;",
            ">;)V"
        }
    .end annotation

    move-object v8, p0

    .line 307
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotWriter;->getTable$runtime_release()Landroidx/compose/runtime/SlotTable;

    move-result-object v0

    const/4 v1, 0x0

    if-ne v0, v8, :cond_0

    iget-boolean v0, v8, Landroidx/compose/runtime/SlotTable;->writer:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "Unexpected writer close()"

    .line 4262
    invoke-static {v0}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 308
    :cond_1
    iput-boolean v1, v8, Landroidx/compose/runtime/SlotTable;->writer:Z

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    .line 309
    invoke-virtual/range {v0 .. v7}, Landroidx/compose/runtime/SlotTable;->setTo$runtime_release([II[Ljava/lang/Object;ILjava/util/ArrayList;Ljava/util/HashMap;Landroidx/collection/MutableIntObjectMap;)V

    return-void
.end method

.method public final collectCalledByInformation()V
    .locals 4

    .line 568
    new-instance v0, Landroidx/collection/MutableIntObjectMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableIntObjectMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Landroidx/compose/runtime/SlotTable;->calledByMap:Landroidx/collection/MutableIntObjectMap;

    return-void
.end method

.method public final collectSourceInformation()V
    .locals 1

    .line 572
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/SlotTable;->sourceInformationMap:Ljava/util/HashMap;

    return-void
.end method

.method public final containsMark()Z
    .locals 2

    .line 414
    iget v0, p0, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/SlotTable;->groups:[I

    invoke-static {v0, v1}, Landroidx/compose/runtime/SlotTableKt;->access$containsMark([II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public find(Ljava/lang/Object;)Landroidx/compose/runtime/tooling/CompositionGroup;
    .locals 7

    .line 717
    new-instance v6, Landroidx/compose/runtime/SlotTableGroup;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroidx/compose/runtime/SlotTableGroup;-><init>(Landroidx/compose/runtime/SlotTable;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v6, p1}, Landroidx/compose/runtime/SlotTableGroup;->find(Ljava/lang/Object;)Landroidx/compose/runtime/tooling/CompositionGroup;

    move-result-object p1

    return-object p1
.end method

.method public final getAnchors$runtime_release()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/compose/runtime/Anchor;",
            ">;"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Landroidx/compose/runtime/SlotTable;->anchors:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getCalledByMap$runtime_release()Landroidx/collection/MutableIntObjectMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/MutableIntObjectMap<",
            "Landroidx/collection/MutableIntSet;",
            ">;"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Landroidx/compose/runtime/SlotTable;->calledByMap:Landroidx/collection/MutableIntObjectMap;

    return-object v0
.end method

.method public getCompositionGroups()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Landroidx/compose/runtime/tooling/CompositionGroup;",
            ">;"
        }
    .end annotation

    .line 711
    move-object v0, p0

    check-cast v0, Ljava/lang/Iterable;

    return-object v0
.end method

.method public final getGroups()[I
    .locals 1

    .line 90
    iget-object v0, p0, Landroidx/compose/runtime/SlotTable;->groups:[I

    return-object v0
.end method

.method public final getGroupsSize()I
    .locals 1

    .line 96
    iget v0, p0, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    return v0
.end method

.method public final getSlots()[Ljava/lang/Object;
    .locals 1

    .line 105
    iget-object v0, p0, Landroidx/compose/runtime/SlotTable;->slots:[Ljava/lang/Object;

    return-object v0
.end method

.method public final getSlotsSize()I
    .locals 1

    .line 111
    iget v0, p0, Landroidx/compose/runtime/SlotTable;->slotsSize:I

    return v0
.end method

.method public final getSourceInformationMap$runtime_release()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Landroidx/compose/runtime/Anchor;",
            "Landroidx/compose/runtime/GroupSourceInformation;",
            ">;"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Landroidx/compose/runtime/SlotTable;->sourceInformationMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public final getVersion$runtime_release()I
    .locals 1

    .line 130
    iget v0, p0, Landroidx/compose/runtime/SlotTable;->version:I

    return v0
.end method

.method public final getWriter$runtime_release()Z
    .locals 1

    .line 123
    iget-boolean v0, p0, Landroidx/compose/runtime/SlotTable;->writer:Z

    return v0
.end method

.method public final groupContainsAnchor(ILandroidx/compose/runtime/Anchor;)Z
    .locals 3

    .line 265
    iget-boolean v0, p0, Landroidx/compose/runtime/SlotTable;->writer:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-nez v0, :cond_0

    const-string/jumbo v0, "Writer is active"

    .line 4240
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    if-ltz p1, :cond_1

    .line 266
    iget v2, p0, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    if-ge p1, v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    if-nez v2, :cond_2

    const-string v2, "Invalid group index"

    .line 4247
    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 267
    :cond_2
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/SlotTable;->ownsAnchor(Landroidx/compose/runtime/Anchor;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 268
    iget-object v2, p0, Landroidx/compose/runtime/SlotTable;->groups:[I

    invoke-static {v2, p1}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {p2}, Landroidx/compose/runtime/Anchor;->getLocation$runtime_release()I

    move-result p2

    if-gt p1, p2, :cond_3

    if-ge p2, v2, :cond_3

    goto :goto_1

    :cond_3
    move v1, v0

    :goto_1
    return v1
.end method

.method public final invalidateGroupsWithKey$runtime_release(I)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/RecomposeScopeImpl;",
            ">;"
        }
    .end annotation

    .line 348
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 349
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v1

    check-cast v7, Ljava/util/List;

    .line 350
    new-instance v8, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    const/4 v9, 0x1

    iput-boolean v9, v8, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 351
    new-instance v2, Landroidx/collection/MutableIntSet;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v2, v10, v9, v11}, Landroidx/collection/MutableIntSet;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 352
    invoke-virtual {v2, p1}, Landroidx/collection/MutableIntSet;->add(I)Z

    const/4 v1, -0x3

    .line 353
    invoke-virtual {v2, v1}, Landroidx/collection/MutableIntSet;->add(I)Z

    .line 355
    iget-object v1, p0, Landroidx/compose/runtime/SlotTable;->calledByMap:Landroidx/collection/MutableIntObjectMap;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroidx/collection/MutableIntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/collection/MutableIntSet;

    if-eqz p1, :cond_0

    check-cast p1, Landroidx/collection/IntSet;

    invoke-virtual {v2, p1}, Landroidx/collection/MutableIntSet;->addAll(Landroidx/collection/IntSet;)Z

    .line 4265
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotTable;->openReader()Landroidx/compose/runtime/SlotReader;

    move-result-object p1

    move-object v1, p1

    move-object v3, v0

    move-object v4, v8

    move-object v5, p0

    move-object v6, v7

    .line 390
    :try_start_0
    invoke-static/range {v1 .. v6}, Landroidx/compose/runtime/SlotTable;->invalidateGroupsWithKey$lambda$20$scanGroup(Landroidx/compose/runtime/SlotReader;Landroidx/collection/MutableIntSet;Ljava/util/List;Lkotlin/jvm/internal/Ref$BooleanRef;Landroidx/compose/runtime/SlotTable;Ljava/util/List;)V

    .line 391
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4270
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotReader;->close()V

    .line 4273
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotTable;->openWriter()Landroidx/compose/runtime/SlotWriter;

    move-result-object p1

    .line 396
    :try_start_1
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotWriter;->startGroup()V

    .line 4279
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    move v2, v10

    :goto_0
    if-ge v2, v1, :cond_2

    .line 4280
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 4281
    check-cast v3, Landroidx/compose/runtime/Anchor;

    .line 398
    invoke-virtual {v3, p1}, Landroidx/compose/runtime/Anchor;->toIndexFor(Landroidx/compose/runtime/SlotWriter;)I

    move-result v4

    invoke-virtual {p1}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroup()I

    move-result v5

    if-lt v4, v5, :cond_1

    .line 399
    invoke-virtual {p1, v3}, Landroidx/compose/runtime/SlotWriter;->seek(Landroidx/compose/runtime/Anchor;)V

    .line 400
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotWriter;->bashCurrentGroup()V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 403
    :cond_2
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotWriter;->skipToGroupEnd()V

    .line 404
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotWriter;->endGroup()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4285
    invoke-virtual {p1, v9}, Landroidx/compose/runtime/SlotWriter;->close(Z)V

    .line 407
    iget-boolean p1, v8, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move-object v7, v11

    :goto_1
    return-object v7

    :catchall_0
    move-exception v0

    .line 4285
    invoke-virtual {p1, v10}, Landroidx/compose/runtime/SlotWriter;->close(Z)V

    throw v0

    :catchall_1
    move-exception v0

    .line 4270
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotReader;->close()V

    throw v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 151
    iget v0, p0, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroidx/compose/runtime/tooling/CompositionGroup;",
            ">;"
        }
    .end annotation

    .line 714
    new-instance v0, Landroidx/compose/runtime/GroupIterator;

    const/4 v1, 0x0

    iget v2, p0, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    invoke-direct {v0, p0, v1, v2}, Landroidx/compose/runtime/GroupIterator;-><init>(Landroidx/compose/runtime/SlotTable;II)V

    check-cast v0, Ljava/util/Iterator;

    return-object v0
.end method

.method public final openReader()Landroidx/compose/runtime/SlotReader;
    .locals 2

    .line 192
    iget-boolean v0, p0, Landroidx/compose/runtime/SlotTable;->writer:Z

    if-nez v0, :cond_0

    .line 193
    iget v0, p0, Landroidx/compose/runtime/SlotTable;->readers:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/compose/runtime/SlotTable;->readers:I

    .line 194
    new-instance v0, Landroidx/compose/runtime/SlotReader;

    invoke-direct {v0, p0}, Landroidx/compose/runtime/SlotReader;-><init>(Landroidx/compose/runtime/SlotTable;)V

    return-object v0

    .line 192
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot read while a writer is pending"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final openWriter()Landroidx/compose/runtime/SlotWriter;
    .locals 2

    .line 204
    iget-boolean v0, p0, Landroidx/compose/runtime/SlotTable;->writer:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-nez v0, :cond_0

    const-string v0, "Cannot start a writer when another writer is pending"

    .line 4185
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 205
    :cond_0
    iget v0, p0, Landroidx/compose/runtime/SlotTable;->readers:I

    if-gtz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    const-string v0, "Cannot start a writer when a reader is pending"

    .line 4192
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 206
    :cond_2
    iput-boolean v1, p0, Landroidx/compose/runtime/SlotTable;->writer:Z

    .line 207
    iget v0, p0, Landroidx/compose/runtime/SlotTable;->version:I

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/compose/runtime/SlotTable;->version:I

    .line 208
    new-instance v0, Landroidx/compose/runtime/SlotWriter;

    invoke-direct {v0, p0}, Landroidx/compose/runtime/SlotWriter;-><init>(Landroidx/compose/runtime/SlotTable;)V

    return-object v0
.end method

.method public final ownsAnchor(Landroidx/compose/runtime/Anchor;)Z
    .locals 3

    .line 256
    invoke-virtual {p1}, Landroidx/compose/runtime/Anchor;->getValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/SlotTable;->anchors:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroidx/compose/runtime/Anchor;->getLocation$runtime_release()I

    move-result v1

    iget v2, p0, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/SlotTableKt;->access$search(Ljava/util/ArrayList;II)I

    move-result v0

    if-ltz v0, :cond_0

    .line 257
    iget-object v1, p0, Landroidx/compose/runtime/SlotTable;->anchors:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final read(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/runtime/SlotReader;",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 159
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotTable;->openReader()Landroidx/compose/runtime/SlotReader;

    move-result-object v0

    const/4 v1, 0x1

    .line 162
    :try_start_0
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 164
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->close()V

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->close()V

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw p1
.end method

.method public final setAnchors$runtime_release(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/compose/runtime/Anchor;",
            ">;)V"
        }
    .end annotation

    .line 135
    iput-object p1, p0, Landroidx/compose/runtime/SlotTable;->anchors:Ljava/util/ArrayList;

    return-void
.end method

.method public final setCalledByMap$runtime_release(Landroidx/collection/MutableIntObjectMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/MutableIntObjectMap<",
            "Landroidx/collection/MutableIntSet;",
            ">;)V"
        }
    .end annotation

    .line 146
    iput-object p1, p0, Landroidx/compose/runtime/SlotTable;->calledByMap:Landroidx/collection/MutableIntObjectMap;

    return-void
.end method

.method public final setSourceInformationMap$runtime_release(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Landroidx/compose/runtime/Anchor;",
            "Landroidx/compose/runtime/GroupSourceInformation;",
            ">;)V"
        }
    .end annotation

    .line 140
    iput-object p1, p0, Landroidx/compose/runtime/SlotTable;->sourceInformationMap:Ljava/util/HashMap;

    return-void
.end method

.method public final setTo$runtime_release([II[Ljava/lang/Object;ILjava/util/ArrayList;Ljava/util/HashMap;Landroidx/collection/MutableIntObjectMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([II[",
            "Ljava/lang/Object;",
            "I",
            "Ljava/util/ArrayList<",
            "Landroidx/compose/runtime/Anchor;",
            ">;",
            "Ljava/util/HashMap<",
            "Landroidx/compose/runtime/Anchor;",
            "Landroidx/compose/runtime/GroupSourceInformation;",
            ">;",
            "Landroidx/collection/MutableIntObjectMap<",
            "Landroidx/collection/MutableIntSet;",
            ">;)V"
        }
    .end annotation

    .line 326
    iput-object p1, p0, Landroidx/compose/runtime/SlotTable;->groups:[I

    .line 327
    iput p2, p0, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    .line 328
    iput-object p3, p0, Landroidx/compose/runtime/SlotTable;->slots:[Ljava/lang/Object;

    .line 329
    iput p4, p0, Landroidx/compose/runtime/SlotTable;->slotsSize:I

    .line 330
    iput-object p5, p0, Landroidx/compose/runtime/SlotTable;->anchors:Ljava/util/ArrayList;

    .line 331
    iput-object p6, p0, Landroidx/compose/runtime/SlotTable;->sourceInformationMap:Ljava/util/HashMap;

    .line 332
    iput-object p7, p0, Landroidx/compose/runtime/SlotTable;->calledByMap:Landroidx/collection/MutableIntObjectMap;

    return-void
.end method

.method public final setVersion$runtime_release(I)V
    .locals 0

    .line 130
    iput p1, p0, Landroidx/compose/runtime/SlotTable;->version:I

    return-void
.end method

.method public final slot$runtime_release(II)Ljava/lang/Object;
    .locals 2

    .line 705
    iget-object v0, p0, Landroidx/compose/runtime/SlotTable;->groups:[I

    invoke-static {v0, p1}, Landroidx/compose/runtime/SlotTableKt;->access$slotAnchor([II)I

    move-result v0

    add-int/lit8 p1, p1, 0x1

    .line 706
    iget v1, p0, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Landroidx/compose/runtime/SlotTable;->groups:[I

    invoke-static {v1, p1}, Landroidx/compose/runtime/SlotTableKt;->access$dataAnchor([II)I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/compose/runtime/SlotTable;->slots:[Ljava/lang/Object;

    array-length p1, p1

    :goto_0
    sub-int/2addr p1, v0

    if-ltz p2, :cond_1

    if-ge p2, p1, :cond_1

    .line 708
    iget-object p1, p0, Landroidx/compose/runtime/SlotTable;->slots:[Ljava/lang/Object;

    add-int/2addr v0, p2

    aget-object p1, p1, v0

    return-object p1

    :cond_1
    sget-object p1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final slotsOf$runtime_release(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 699
    iget-object v0, p0, Landroidx/compose/runtime/SlotTable;->groups:[I

    invoke-static {v0, p1}, Landroidx/compose/runtime/SlotTableKt;->access$dataAnchor([II)I

    move-result v0

    add-int/lit8 p1, p1, 0x1

    .line 700
    iget v1, p0, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Landroidx/compose/runtime/SlotTable;->groups:[I

    invoke-static {v1, p1}, Landroidx/compose/runtime/SlotTableKt;->access$dataAnchor([II)I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/compose/runtime/SlotTable;->slots:[Ljava/lang/Object;

    array-length p1, p1

    .line 701
    :goto_0
    iget-object v1, p0, Landroidx/compose/runtime/SlotTable;->slots:[Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final sourceInformationOf(I)Landroidx/compose/runtime/GroupSourceInformation;
    .locals 2

    .line 417
    iget-object v0, p0, Landroidx/compose/runtime/SlotTable;->sourceInformationMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 418
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotTable;->tryAnchor(I)Landroidx/compose/runtime/Anchor;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/runtime/GroupSourceInformation;

    move-object v1, p1

    :cond_0
    return-object v1
.end method

.method public final toDebugString()Ljava/lang/String;
    .locals 5

    .line 582
    iget-boolean v0, p0, Landroidx/compose/runtime/SlotTable;->writer:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 583
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 584
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    .line 585
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 586
    iget v1, p0, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    if-lez v1, :cond_1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    .line 590
    invoke-direct {p0, v0, v3, v2}, Landroidx/compose/runtime/SlotTable;->emitGroup(Ljava/lang/StringBuilder;II)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_0

    .line 593
    :cond_1
    const-string v1, "<EMPTY>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-object v0
.end method

.method public final verifyWellFormed()V
    .locals 8

    .line 448
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 510
    iget v1, p0, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v1, :cond_2

    .line 511
    :goto_0
    iget v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget v5, p0, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    if-ge v1, v5, :cond_0

    .line 512
    iget v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget-object v5, p0, Landroidx/compose/runtime/SlotTable;->groups:[I

    iget v6, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {v5, v6}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result v5

    add-int/2addr v1, v5

    invoke-static {v0, p0, v2, v1}, Landroidx/compose/runtime/SlotTable;->verifyWellFormed$validateGroup(Lkotlin/jvm/internal/Ref$IntRef;Landroidx/compose/runtime/SlotTable;II)I

    goto :goto_0

    .line 514
    :cond_0
    iget v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget v5, p0, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    if-ne v1, v5, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    if-nez v1, :cond_2

    .line 515
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "Incomplete group at root "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " expected to be "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4292
    invoke-static {v0}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 520
    :cond_2
    iget v0, p0, Landroidx/compose/runtime/SlotTable;->slotsSize:I

    iget-object v1, p0, Landroidx/compose/runtime/SlotTable;->slots:[Ljava/lang/Object;

    array-length v1, v1

    :goto_2
    if-ge v0, v1, :cond_5

    .line 521
    iget-object v5, p0, Landroidx/compose/runtime/SlotTable;->slots:[Ljava/lang/Object;

    aget-object v5, v5, v0

    if-nez v5, :cond_3

    move v5, v3

    goto :goto_3

    :cond_3
    move v5, v4

    :goto_3
    if-nez v5, :cond_4

    .line 522
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Non null value in the slot gap at index "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4299
    invoke-static {v5}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 528
    :cond_5
    iget-object v0, p0, Landroidx/compose/runtime/SlotTable;->anchors:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/List;

    .line 4303
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    move v5, v4

    :goto_4
    if-ge v5, v1, :cond_a

    .line 4304
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 4305
    check-cast v6, Landroidx/compose/runtime/Anchor;

    .line 529
    invoke-virtual {v6, p0}, Landroidx/compose/runtime/Anchor;->toIndexFor(Landroidx/compose/runtime/SlotTable;)I

    move-result v6

    if-ltz v6, :cond_6

    .line 530
    iget v7, p0, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    if-gt v6, v7, :cond_6

    move v7, v3

    goto :goto_5

    :cond_6
    move v7, v4

    :goto_5
    if-nez v7, :cond_7

    .line 531
    const-string v7, "Invalid anchor, location out of bound"

    .line 4310
    invoke-static {v7}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :cond_7
    if-ge v2, v6, :cond_8

    move v2, v3

    goto :goto_6

    :cond_8
    move v2, v4

    :goto_6
    if-nez v2, :cond_9

    .line 533
    const-string v2, "Anchor is out of order"

    .line 4317
    invoke-static {v2}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :cond_9
    add-int/lit8 v5, v5, 0x1

    move v2, v6

    goto :goto_4

    .line 554
    :cond_a
    iget-object v0, p0, Landroidx/compose/runtime/SlotTable;->sourceInformationMap:Ljava/util/HashMap;

    if-eqz v0, :cond_d

    .line 555
    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/Anchor;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/GroupSourceInformation;

    .line 556
    invoke-virtual {v2}, Landroidx/compose/runtime/Anchor;->getValid()Z

    move-result v3

    if-nez v3, :cond_b

    .line 557
    const-string v3, "Source map contains invalid anchor"

    .line 4325
    invoke-static {v3}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 559
    :cond_b
    invoke-virtual {p0, v2}, Landroidx/compose/runtime/SlotTable;->ownsAnchor(Landroidx/compose/runtime/Anchor;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 560
    const-string v2, "Source map anchor is not owned by the slot table"

    .line 4332
    invoke-static {v2}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 562
    :cond_c
    invoke-static {p0, v1}, Landroidx/compose/runtime/SlotTable;->verifyWellFormed$verifySourceGroup(Landroidx/compose/runtime/SlotTable;Landroidx/compose/runtime/GroupSourceInformation;)V

    goto :goto_7

    :cond_d
    return-void
.end method

.method public final write(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/runtime/SlotWriter;",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 175
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotTable;->openWriter()Landroidx/compose/runtime/SlotWriter;

    move-result-object v0

    const/4 v1, 0x1

    .line 179
    :try_start_0
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 181
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/SlotWriter;->close(Z)V

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/SlotWriter;->close(Z)V

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw p1
.end method
