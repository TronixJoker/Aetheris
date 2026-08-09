.class public final Landroidx/compose/runtime/SlotWriter;
.super Ljava/lang/Object;
.source "SlotTable.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/SlotWriter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSlotTable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SlotTable.kt\nandroidx/compose/runtime/SlotWriter\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 IntObjectMap.kt\nandroidx/collection/MutableIntObjectMap\n+ 5 Preconditions.kt\nandroidx/compose/runtime/PreconditionsKt\n+ 6 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 7 ObjectList.kt\nandroidx/collection/ObjectList\n+ 8 SlotTable.kt\nandroidx/compose/runtime/SlotTable\n+ 9 SlotTable.kt\nandroidx/compose/runtime/SlotTableKt\n+ 10 ListUtils.kt\nandroidx/compose/runtime/snapshots/ListUtilsKt\n*L\n1#1,4179:1\n4553#2,7:4180\n4553#2,7:4190\n4553#2,7:4197\n4553#2,7:4204\n4553#2,7:4211\n4553#2,7:4232\n4553#2,7:4239\n4553#2,7:4246\n4553#2,7:4260\n4553#2,7:4274\n4553#2,7:4281\n4553#2,7:4294\n4553#2,7:4301\n4553#2,7:4308\n4553#2,7:4315\n4553#2,7:4322\n4553#2,7:4329\n4553#2,7:4336\n4553#2,7:4343\n4553#2,7:4374\n4553#2,7:4381\n4553#2,7:4388\n1#3:4187\n1#3:4189\n1#3:4355\n1#3:4364\n729#4:4188\n50#5,7:4218\n50#5,7:4253\n50#5,7:4267\n50#5,7:4401\n50#5,7:4408\n50#5,7:4415\n50#5,7:4422\n50#5,7:4429\n50#5,7:4436\n361#6,7:4225\n305#7,6:4288\n175#8,5:4350\n181#8,3:4356\n175#8,5:4359\n181#8,3:4365\n4046#9,6:4368\n33#10,6:4395\n82#10,3:4443\n33#10,4:4446\n85#10,2:4450\n38#10:4452\n87#10:4453\n231#10,3:4454\n64#10,4:4457\n234#10,2:4461\n69#10:4463\n236#10:4464\n*S KotlinDebug\n*F\n+ 1 SlotTable.kt\nandroidx/compose/runtime/SlotWriter\n*L\n1639#1:4180,7\n1675#1:4190,7\n1711#1:4197,7\n1724#1:4204,7\n1727#1:4211,7\n1816#1:4232,7\n1837#1:4239,7\n1923#1:4246,7\n1928#1:4260,7\n1968#1:4274,7\n1979#1:4281,7\n2143#1:4294,7\n2207#1:4301,7\n2212#1:4308,7\n2244#1:4315,7\n2316#1:4322,7\n2317#1:4329,7\n2330#1:4336,7\n2425#1:4343,7\n2990#1:4374,7\n3002#1:4381,7\n3212#1:4388,7\n1658#1:4189\n2734#1:4355\n2775#1:4364\n1658#1:4188\n1737#1:4218,7\n1924#1:4253,7\n1966#1:4267,7\n3404#1:4401,7\n3408#1:4408,7\n3412#1:4415,7\n3428#1:4422,7\n3436#1:4429,7\n3440#1:4436,7\n1779#1:4225,7\n2129#1:4288,6\n2734#1:4350,5\n2734#1:4356,3\n2775#1:4359,5\n2775#1:4365,3\n2795#1:4368,6\n3313#1:4395,6\n3484#1:4443,3\n3484#1:4446,4\n3484#1:4450,2\n3484#1:4452\n3484#1:4453\n3487#1:4454,3\n3487#1:4457,4\n3487#1:4461,2\n3487#1:4463\n3487#1:4464\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a8\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0015\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010(\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010 \n\u0002\u0008K\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u0000 \u00cb\u00012\u00020\u0001:\u0002\u00cb\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010C\u001a\u00020D2\u0006\u0010E\u001a\u00020\rJ\u0010\u0010F\u001a\u00020\u00072\u0008\u0008\u0002\u0010G\u001a\u00020\rJ\u000e\u0010H\u001a\u00020\r2\u0006\u0010F\u001a\u00020\u0007J\u0018\u0010I\u001a\u00020D2\u0006\u0010F\u001a\u00020\u00072\u0008\u0010J\u001a\u0004\u0018\u00010\u0001J\u0006\u0010K\u001a\u00020DJ\u0006\u0010L\u001a\u00020DJ\u0010\u0010M\u001a\u00020\u00112\u0006\u0010N\u001a\u00020\rH\u0002J\u0008\u0010O\u001a\u00020DH\u0002J\u000e\u0010P\u001a\u00020D2\u0006\u0010Q\u001a\u00020\u0011J\u0010\u0010R\u001a\u00020\u00112\u0006\u0010N\u001a\u00020\rH\u0002J\u0010\u0010S\u001a\u00020\u00112\u0006\u0010N\u001a\u00020\rH\u0002J \u0010T\u001a\u00020\r2\u0006\u0010F\u001a\u00020\r2\u0006\u0010U\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\rH\u0002J\u0010\u0010V\u001a\u00020\r2\u0006\u0010G\u001a\u00020\rH\u0002J\u0010\u0010W\u001a\u00020\r2\u0006\u0010V\u001a\u00020\rH\u0002J(\u0010X\u001a\u00020\r2\u0006\u0010G\u001a\u00020\r2\u0006\u0010Y\u001a\u00020\r2\u0006\u0010U\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\rH\u0002J\u0006\u0010Z\u001a\u00020\rJ\u0006\u0010[\u001a\u00020DJ\u000e\u0010\\\u001a\u00020D2\u0006\u0010F\u001a\u00020\u0007J\u000e\u0010\\\u001a\u00020D2\u0006\u0010G\u001a\u00020\rJ \u0010]\u001a\u00020D2\u0006\u0010.\u001a\u00020\r2\u0006\u0010Z\u001a\u00020\r2\u0006\u0010^\u001a\u00020\rH\u0002JK\u0010_\u001a\u00020D2\u0006\u0010N\u001a\u00020\r28\u0010`\u001a4\u0012\u0013\u0012\u00110\r\u00a2\u0006\u000c\u0008b\u0012\u0008\u0008c\u0012\u0004\u0008\u0008(G\u0012\u0015\u0012\u0013\u0018\u00010\u0001\u00a2\u0006\u000c\u0008b\u0012\u0008\u0008c\u0012\u0004\u0008\u0008(d\u0012\u0004\u0012\u00020D0aH\u0086\u0008JK\u0010e\u001a\u00020D2\u0006\u0010N\u001a\u00020\r28\u0010`\u001a4\u0012\u0013\u0012\u00110\r\u00a2\u0006\u000c\u0008b\u0012\u0008\u0008c\u0012\u0004\u0008\u0008(G\u0012\u0015\u0012\u0013\u0018\u00010\u0001\u00a2\u0006\u000c\u0008b\u0012\u0008\u0008c\u0012\u0004\u0008\u0008(d\u0012\u0004\u0012\u00020D0aH\u0086\u0008J5\u0010f\u001a\u00020D2\u0006\u0010g\u001a\u00020\r2\u0006\u0010h\u001a\u00020\r2\u001a\u0010`\u001a\u0016\u0012\u0004\u0012\u00020\r\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0012\u0004\u0012\u00020D0aH\u0086\u0008J\u0010\u0010i\u001a\u0004\u0018\u00010\u00012\u0006\u0010G\u001a\u00020\rJ\u0010\u0010j\u001a\u00020\r2\u0006\u0010G\u001a\u00020\rH\u0002J\u000e\u0010k\u001a\u00020\r2\u0006\u0010G\u001a\u00020\rJ\u0010\u0010l\u001a\u0004\u0018\u00010\u00012\u0006\u0010G\u001a\u00020\rJ\u000e\u0010m\u001a\u00020\r2\u0006\u0010G\u001a\u00020\rJ\u000e\u0010n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010oJ\u001c\u0010p\u001a\u0004\u0018\u00010>2\u0006\u0010.\u001a\u00020\r2\u0008\u0010q\u001a\u0004\u0018\u00010rH\u0002J\u000e\u0010s\u001a\u00020\u00112\u0006\u0010G\u001a\u00020\rJ\u0016\u0010t\u001a\u00020\u00112\u0006\u0010G\u001a\u00020\r2\u0006\u0010N\u001a\u00020\rJ\u000e\u0010u\u001a\u00020\u00112\u0006\u0010G\u001a\u00020\rJ\u0010\u0010v\u001a\u00020D2\u0008\u0010J\u001a\u0004\u0018\u00010\u0001J\u0010\u0010w\u001a\u00020D2\u0006\u00102\u001a\u00020\rH\u0002J\u0018\u0010x\u001a\u00020D2\u0006\u00102\u001a\u00020\r2\u0006\u0010N\u001a\u00020\rH\u0002J\u000e\u0010+\u001a\u00020\u00112\u0006\u0010G\u001a\u00020\rJ\u000e\u0010y\u001a\u0008\u0012\u0004\u0012\u00020\r0zH\u0002J\u0010\u0010{\u001a\u00020D2\u0008\u0008\u0002\u0010N\u001a\u00020\rJ \u0010|\u001a\u00020D2\u0006\u0010}\u001a\u00020\r2\u0006\u0010~\u001a\u00020\r2\u0006\u00102\u001a\u00020\rH\u0002J\'\u0010\u007f\u001a\u0008\u0012\u0004\u0012\u00020\u00070z2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010G\u001a\u00020\r2\t\u0008\u0002\u0010\u0080\u0001\u001a\u00020\u0011J\u0010\u0010\u0081\u0001\u001a\u00020D2\u0007\u0010\u0082\u0001\u001a\u00020\rJ\u0011\u0010\u0083\u0001\u001a\u00020D2\u0006\u0010G\u001a\u00020\rH\u0002J&\u0010\u0084\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00070z2\u0007\u0010\u0082\u0001\u001a\u00020\r2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010G\u001a\u00020\rJ\u0019\u0010\u0085\u0001\u001a\u00020D2\u0006\u0010G\u001a\u00020\r2\u0006\u0010N\u001a\u00020\rH\u0002J\'\u0010\u0086\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00070z2\u0006\u0010F\u001a\u00020\u00072\u0007\u0010\u0082\u0001\u001a\u00020\r2\u0007\u0010\u0087\u0001\u001a\u00020\u0000J\u0011\u0010\u0088\u0001\u001a\u0004\u0018\u00010\u00012\u0006\u0010F\u001a\u00020\u0007J\u0011\u0010\u0088\u0001\u001a\u0004\u0018\u00010\u00012\u0006\u0010G\u001a\u00020\rJ\u000e\u0010,\u001a\u00020\r2\u0006\u0010G\u001a\u00020\rJ\u000e\u0010.\u001a\u00020\r2\u0006\u0010F\u001a\u00020\u0007J\u000e\u0010.\u001a\u00020\r2\u0006\u0010G\u001a\u00020\rJ\u0011\u0010\u0089\u0001\u001a\u00020\r2\u0006\u0010G\u001a\u00020\rH\u0002J\u0019\u0010\u008a\u0001\u001a\u00020\r2\u0006\u0010G\u001a\u00020\r2\u0006\u0010Y\u001a\u00020\rH\u0002J\u0015\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u00012\u0008\u0010J\u001a\u0004\u0018\u00010\u0001H\u0002J\t\u0010\u008c\u0001\u001a\u00020DH\u0002J\u000f\u0010\u008d\u0001\u001a\u00020D2\u0006\u0010q\u001a\u00020rJ\u0007\u0010\u008e\u0001\u001a\u00020DJ\u0018\u0010\u008f\u0001\u001a\u00020D2\u0007\u0010\u0090\u0001\u001a\u00020\r2\u0006\u0010J\u001a\u00020rJA\u0010\u0091\u0001\u001a\u00020\u00112\u0006\u0010Y\u001a\u00020\r2\u0006\u00102\u001a\u00020\r2&\u0010<\u001a\"\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020>\u0018\u00010=j\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020>\u0018\u0001`?H\u0002J\u0007\u0010\u0092\u0001\u001a\u00020\u0011J\u001b\u0010\u0093\u0001\u001a\u00020\u00112\u0007\u0010\u0094\u0001\u001a\u00020\r2\u0007\u0010\u0095\u0001\u001a\u00020\rH\u0002J#\u0010\u0096\u0001\u001a\u00020D2\u0007\u0010\u0094\u0001\u001a\u00020\r2\u0007\u0010\u0095\u0001\u001a\u00020\r2\u0006\u0010N\u001a\u00020\rH\u0002J\u0007\u0010\u0097\u0001\u001a\u00020DJ\t\u0010\u0098\u0001\u001a\u00020\rH\u0002J\t\u0010\u0099\u0001\u001a\u00020DH\u0002J\u000f\u0010\u009a\u0001\u001a\u00020D2\u0006\u0010F\u001a\u00020\u0007J\u0011\u0010\u009b\u0001\u001a\u00020D2\u0008\u0010J\u001a\u0004\u0018\u00010\u0001J\u001b\u0010\u009b\u0001\u001a\u0004\u0018\u00010\u00012\u0006\u0010G\u001a\u00020\r2\u0008\u0010J\u001a\u0004\u0018\u00010\u0001J#\u0010\u009b\u0001\u001a\u0004\u0018\u00010\u00012\u0006\u0010N\u001a\u00020\r2\u0006\u0010G\u001a\u00020\r2\u0008\u0010J\u001a\u0004\u0018\u00010\u0001J\t\u0010\u009c\u0001\u001a\u0004\u0018\u00010\u0001J\u0007\u0010\u009d\u0001\u001a\u00020\rJ\u0007\u0010\u009e\u0001\u001a\u00020DJ\u0019\u0010\u009f\u0001\u001a\u0004\u0018\u00010\u00012\u0006\u0010F\u001a\u00020\u00072\u0006\u0010G\u001a\u00020\rJ\u0019\u0010\u009f\u0001\u001a\u0004\u0018\u00010\u00012\u0006\u0010g\u001a\u00020\r2\u0006\u0010G\u001a\u00020\rJ\u0017\u0010\u00a0\u0001\u001a\u00020\r2\u0006\u0010N\u001a\u00020\r2\u0006\u0010G\u001a\u00020\rJ\u0017\u0010\u00a1\u0001\u001a\u00020\r2\u0006\u0010g\u001a\u00020\rH\u0000\u00a2\u0006\u0003\u0008\u00a2\u0001J\u0017\u0010\u00a3\u0001\u001a\u00020\r2\u0006\u0010g\u001a\u00020\rH\u0000\u00a2\u0006\u0003\u0008\u00a4\u0001J\u0017\u0010\u00a5\u0001\u001a\u00020\r2\u0006\u0010g\u001a\u00020\rH\u0000\u00a2\u0006\u0003\u0008\u00a6\u0001J\u0013\u0010\u00a7\u0001\u001a\u0004\u0018\u00010>2\u0006\u0010N\u001a\u00020\rH\u0002J\u001b\u0010\u00a8\u0001\u001a\u00020D2\u0007\u0010\u0090\u0001\u001a\u00020\r2\t\u0010\u00a9\u0001\u001a\u0004\u0018\u00010\u0001J&\u0010\u00a8\u0001\u001a\u00020D2\u0007\u0010\u0090\u0001\u001a\u00020\r2\t\u0010\u00aa\u0001\u001a\u0004\u0018\u00010\u00012\t\u0010\u00a9\u0001\u001a\u0004\u0018\u00010\u0001J\u0007\u0010\u00ab\u0001\u001a\u00020DJ\u0010\u0010\u00ab\u0001\u001a\u00020D2\u0007\u0010\u0090\u0001\u001a\u00020\rJ\u001b\u0010\u00ab\u0001\u001a\u00020D2\u0007\u0010\u0090\u0001\u001a\u00020\r2\t\u0010\u00ac\u0001\u001a\u0004\u0018\u00010\u0001J0\u0010\u00ab\u0001\u001a\u00020D2\u0007\u0010\u0090\u0001\u001a\u00020\r2\t\u0010\u00aa\u0001\u001a\u0004\u0018\u00010\u00012\u0006\u0010+\u001a\u00020\u00112\t\u0010\u00a9\u0001\u001a\u0004\u0018\u00010\u0001H\u0002J\u001b\u0010\u00ad\u0001\u001a\u00020D2\u0007\u0010\u0090\u0001\u001a\u00020\r2\t\u0010\u00aa\u0001\u001a\u0004\u0018\u00010\u0001J&\u0010\u00ad\u0001\u001a\u00020D2\u0007\u0010\u0090\u0001\u001a\u00020\r2\t\u0010\u00aa\u0001\u001a\u0004\u0018\u00010\u00012\t\u0010\u0088\u0001\u001a\u0004\u0018\u00010\u0001J\u0007\u0010\u00ae\u0001\u001a\u00020rJ\t\u0010\u00af\u0001\u001a\u00020rH\u0016J\u000f\u0010\u00b0\u0001\u001a\u00020D2\u0006\u0010h\u001a\u00020\rJ\u0019\u0010\u00b1\u0001\u001a\u0004\u0018\u00010\u00072\u0006\u0010N\u001a\u00020\rH\u0000\u00a2\u0006\u0003\u0008\u00b2\u0001J\u0013\u0010\u00b3\u0001\u001a\u0004\u0018\u00010\u00012\u0008\u0010J\u001a\u0004\u0018\u00010\u0001J\u001b\u0010\u00b4\u0001\u001a\u00020D2\u0007\u0010\u00b5\u0001\u001a\u00020\r2\u0007\u0010\u00b6\u0001\u001a\u00020\rH\u0002J\u0011\u0010\u00b7\u0001\u001a\u00020D2\u0008\u0010J\u001a\u0004\u0018\u00010\u0001J\u0011\u0010\u00b8\u0001\u001a\u00020D2\u0006\u0010N\u001a\u00020\rH\u0002J\u001a\u0010\u00b9\u0001\u001a\u00020D2\u0006\u0010N\u001a\u00020\r2\u0007\u0010\u009b\u0001\u001a\u000201H\u0002J\u0019\u0010\u00ba\u0001\u001a\u00020D2\u0006\u0010F\u001a\u00020\u00072\u0008\u0010J\u001a\u0004\u0018\u00010\u0001J\u0011\u0010\u00ba\u0001\u001a\u00020D2\u0008\u0010J\u001a\u0004\u0018\u00010\u0001J\u001b\u0010\u00bb\u0001\u001a\u00020D2\u0006\u0010G\u001a\u00020\r2\u0008\u0010J\u001a\u0004\u0018\u00010\u0001H\u0002J\u0011\u0010\u00bc\u0001\u001a\u00020D2\u0008\u0010J\u001a\u0004\u0018\u00010\u0001J\u0007\u0010\u00bd\u0001\u001a\u00020DJ\u000f\u0010\u00be\u0001\u001a\u00020DH\u0000\u00a2\u0006\u0003\u0008\u00bf\u0001J\u000f\u0010\u00c0\u0001\u001a\u00020DH\u0000\u00a2\u0006\u0003\u0008\u00c1\u0001J\u0016\u0010\u00c2\u0001\u001a\u00020\r*\u00020(2\u0007\u0010\u00c3\u0001\u001a\u00020\rH\u0002J\u0015\u0010V\u001a\u00020\r*\u00020(2\u0007\u0010\u00c3\u0001\u001a\u00020\rH\u0002J\u0013\u0010\u00c4\u0001\u001a\u0008\u0012\u0004\u0012\u00020\r0z*\u00020(H\u0002J\u001b\u0010\u00c5\u0001\u001a\u00020D*\u00080\u00c6\u0001j\u0003`\u00c7\u00012\u0006\u0010G\u001a\u00020\rH\u0002J\u0016\u0010\u00c8\u0001\u001a\u00020\r*\u00020(2\u0007\u0010\u00c3\u0001\u001a\u00020\rH\u0002J\u0014\u0010.\u001a\u00020\r*\u00020(2\u0006\u0010G\u001a\u00020\rH\u0002J\u0016\u0010\u00c9\u0001\u001a\u00020\r*\u00020(2\u0007\u0010\u00c3\u0001\u001a\u00020\rH\u0002J\u001e\u0010\u00ca\u0001\u001a\u00020D*\u00020(2\u0007\u0010\u00c3\u0001\u001a\u00020\r2\u0006\u0010V\u001a\u00020\rH\u0002R\u001e\u0010\u0005\u001a\u0012\u0012\u0004\u0012\u00020\u00070\u0006j\u0008\u0012\u0004\u0012\u00020\u0007`\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u00020\r8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u001e\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u0011@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\u0015\u001a\u00020\u00118F\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0014R\u0011\u0010\u0017\u001a\u00020\u00118F\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0014R\u001e\u0010\u0019\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\r@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u000fR\u001e\u0010\u001b\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\r@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u000fR\u0014\u0010\u001d\u001a\u00020\r8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u000fR\u000e\u0010\u001f\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010!\u001a\u0012\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\"\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020$X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\'\u001a\u00020(X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010*\u001a\u00020\u00118F\u00a2\u0006\u0006\u001a\u0004\u0008*\u0010\u0014R\u0011\u0010+\u001a\u00020\u00118F\u00a2\u0006\u0006\u001a\u0004\u0008+\u0010\u0014R\u000e\u0010,\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010-\u001a\u00020$X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010.\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\r@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008/\u0010\u000fR\u0010\u00100\u001a\u0004\u0018\u000101X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u00102\u001a\u00020\r8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u00083\u0010\u000fR\u0018\u00104\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000105X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u00106R\u000e\u00107\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00108\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00109\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010:\u001a\u00020\r8F\u00a2\u0006\u0006\u001a\u0004\u0008;\u0010\u000fR.\u0010<\u001a\"\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020>\u0018\u00010=j\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020>\u0018\u0001`?X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010@\u001a\u00020$X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008A\u0010B\u00a8\u0006\u00cc\u0001"
    }
    d2 = {
        "Landroidx/compose/runtime/SlotWriter;",
        "",
        "table",
        "Landroidx/compose/runtime/SlotTable;",
        "(Landroidx/compose/runtime/SlotTable;)V",
        "anchors",
        "Ljava/util/ArrayList;",
        "Landroidx/compose/runtime/Anchor;",
        "Lkotlin/collections/ArrayList;",
        "calledByMap",
        "Landroidx/collection/MutableIntObjectMap;",
        "Landroidx/collection/MutableIntSet;",
        "capacity",
        "",
        "getCapacity",
        "()I",
        "<set-?>",
        "",
        "closed",
        "getClosed",
        "()Z",
        "collectingCalledInformation",
        "getCollectingCalledInformation",
        "collectingSourceInformation",
        "getCollectingSourceInformation",
        "currentGroup",
        "getCurrentGroup",
        "currentGroupEnd",
        "getCurrentGroupEnd",
        "currentGroupSlotIndex",
        "getCurrentGroupSlotIndex",
        "currentSlot",
        "currentSlotEnd",
        "deferredSlotWrites",
        "Landroidx/collection/MutableObjectList;",
        "endStack",
        "Landroidx/compose/runtime/IntStack;",
        "groupGapLen",
        "groupGapStart",
        "groups",
        "",
        "insertCount",
        "isGroupEnd",
        "isNode",
        "nodeCount",
        "nodeCountStack",
        "parent",
        "getParent",
        "pendingRecalculateMarks",
        "Landroidx/compose/runtime/PrioritySet;",
        "size",
        "getSize$runtime_release",
        "slots",
        "",
        "[Ljava/lang/Object;",
        "slotsGapLen",
        "slotsGapOwner",
        "slotsGapStart",
        "slotsSize",
        "getSlotsSize",
        "sourceInformationMap",
        "Ljava/util/HashMap;",
        "Landroidx/compose/runtime/GroupSourceInformation;",
        "Lkotlin/collections/HashMap;",
        "startStack",
        "getTable$runtime_release",
        "()Landroidx/compose/runtime/SlotTable;",
        "advanceBy",
        "",
        "amount",
        "anchor",
        "index",
        "anchorIndex",
        "appendSlot",
        "value",
        "bashCurrentGroup",
        "beginInsert",
        "childContainsAnyMarks",
        "group",
        "clearSlotGap",
        "close",
        "normalClose",
        "containsAnyGroupMarks",
        "containsGroupMark",
        "dataAnchorToDataIndex",
        "gapLen",
        "dataIndex",
        "dataIndexToDataAddress",
        "dataIndexToDataAnchor",
        "gapStart",
        "endGroup",
        "endInsert",
        "ensureStarted",
        "fixParentAnchorsFor",
        "firstChild",
        "forAllData",
        "block",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "name",
        "data",
        "forEachData",
        "forEachTailSlot",
        "groupIndex",
        "count",
        "groupAux",
        "groupIndexToAddress",
        "groupKey",
        "groupObjectKey",
        "groupSize",
        "groupSlots",
        "",
        "groupSourceInformationFor",
        "sourceInformation",
        "",
        "indexInCurrentGroup",
        "indexInGroup",
        "indexInParent",
        "insertAux",
        "insertGroups",
        "insertSlots",
        "keys",
        "",
        "markGroup",
        "moveAnchors",
        "originalLocation",
        "newLocation",
        "moveFrom",
        "removeSourceGroup",
        "moveGroup",
        "offset",
        "moveGroupGapTo",
        "moveIntoGroupFrom",
        "moveSlotGapTo",
        "moveTo",
        "writer",
        "node",
        "parentAnchorToIndex",
        "parentIndexToAnchor",
        "rawUpdate",
        "recalculateMarks",
        "recordGroupSourceInformation",
        "recordGrouplessCallSourceInformationEnd",
        "recordGrouplessCallSourceInformationStart",
        "key",
        "removeAnchors",
        "removeGroup",
        "removeGroups",
        "start",
        "len",
        "removeSlots",
        "reset",
        "restoreCurrentGroupEnd",
        "saveCurrentGroupEnd",
        "seek",
        "set",
        "skip",
        "skipGroup",
        "skipToGroupEnd",
        "slot",
        "slotIndexOfGroupSlotIndex",
        "slotsEndAllIndex",
        "slotsEndAllIndex$runtime_release",
        "slotsEndIndex",
        "slotsEndIndex$runtime_release",
        "slotsStartIndex",
        "slotsStartIndex$runtime_release",
        "sourceInformationOf",
        "startData",
        "aux",
        "objectKey",
        "startGroup",
        "dataKey",
        "startNode",
        "toDebugString",
        "toString",
        "trimTailSlots",
        "tryAnchor",
        "tryAnchor$runtime_release",
        "update",
        "updateAnchors",
        "previousGapStart",
        "newGapStart",
        "updateAux",
        "updateContainsMark",
        "updateContainsMarkNow",
        "updateNode",
        "updateNodeOfGroup",
        "updateParentNode",
        "updateToTableMaps",
        "verifyDataAnchors",
        "verifyDataAnchors$runtime_release",
        "verifyParentAnchors",
        "verifyParentAnchors$runtime_release",
        "auxIndex",
        "address",
        "dataIndexes",
        "groupAsString",
        "Ljava/lang/StringBuilder;",
        "Lkotlin/text/StringBuilder;",
        "nodeIndex",
        "slotIndex",
        "updateDataIndex",
        "Companion",
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
.field public static final $stable:I

.field public static final Companion:Landroidx/compose/runtime/SlotWriter$Companion;


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

.field private closed:Z

.field private currentGroup:I

.field private currentGroupEnd:I

.field private currentSlot:I

.field private currentSlotEnd:I

.field private deferredSlotWrites:Landroidx/collection/MutableIntObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableIntObjectMap<",
            "Landroidx/collection/MutableObjectList<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final endStack:Landroidx/compose/runtime/IntStack;

.field private groupGapLen:I

.field private groupGapStart:I

.field private groups:[I

.field private insertCount:I

.field private nodeCount:I

.field private final nodeCountStack:Landroidx/compose/runtime/IntStack;

.field private parent:I

.field private pendingRecalculateMarks:Landroidx/compose/runtime/PrioritySet;

.field private slots:[Ljava/lang/Object;

.field private slotsGapLen:I

.field private slotsGapOwner:I

.field private slotsGapStart:I

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

.field private final startStack:Landroidx/compose/runtime/IntStack;

.field private final table:Landroidx/compose/runtime/SlotTable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/runtime/SlotWriter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/runtime/SlotWriter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/runtime/SlotWriter;->Companion:Landroidx/compose/runtime/SlotWriter$Companion;

    const/16 v0, 0x8

    sput v0, Landroidx/compose/runtime/SlotWriter;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroidx/compose/runtime/SlotTable;)V
    .locals 2

    .line 1362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1366
    iput-object p1, p0, Landroidx/compose/runtime/SlotWriter;->table:Landroidx/compose/runtime/SlotTable;

    .line 1374
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->getGroups()[I

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 1382
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->getSlots()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    .line 1387
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->getAnchors$runtime_release()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    .line 1392
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->getSourceInformationMap$runtime_release()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/SlotWriter;->sourceInformationMap:Ljava/util/HashMap;

    .line 1397
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->getCalledByMap$runtime_release()Landroidx/collection/MutableIntObjectMap;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/SlotWriter;->calledByMap:Landroidx/collection/MutableIntObjectMap;

    .line 1402
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->getGroupsSize()I

    move-result v0

    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    .line 1407
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x5

    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->getGroupsSize()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    .line 1422
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->getSlotsSize()I

    move-result v0

    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapStart:I

    .line 1427
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    array-length v0, v0

    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->getSlotsSize()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    .line 1432
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->getGroupsSize()I

    move-result v0

    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapOwner:I

    .line 1452
    new-instance v0, Landroidx/compose/runtime/IntStack;

    invoke-direct {v0}, Landroidx/compose/runtime/IntStack;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/SlotWriter;->startStack:Landroidx/compose/runtime/IntStack;

    .line 1460
    new-instance v0, Landroidx/compose/runtime/IntStack;

    invoke-direct {v0}, Landroidx/compose/runtime/IntStack;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/SlotWriter;->endStack:Landroidx/compose/runtime/IntStack;

    .line 1465
    new-instance v0, Landroidx/compose/runtime/IntStack;

    invoke-direct {v0}, Landroidx/compose/runtime/IntStack;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/SlotWriter;->nodeCountStack:Landroidx/compose/runtime/IntStack;

    .line 1482
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->getGroupsSize()I

    move-result p1

    iput p1, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    const/4 p1, -0x1

    .line 1588
    iput p1, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    return-void
.end method

.method public static final synthetic access$containsAnyGroupMarks(Landroidx/compose/runtime/SlotWriter;I)Z
    .locals 0

    .line 1362
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->containsAnyGroupMarks(I)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$dataIndex(Landroidx/compose/runtime/SlotWriter;I)I
    .locals 0

    .line 1362
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->dataIndex(I)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$dataIndex(Landroidx/compose/runtime/SlotWriter;[II)I
    .locals 0

    .line 1362
    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/SlotWriter;->dataIndex([II)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$dataIndexToDataAddress(Landroidx/compose/runtime/SlotWriter;I)I
    .locals 0

    .line 1362
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->dataIndexToDataAddress(I)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$dataIndexToDataAnchor(Landroidx/compose/runtime/SlotWriter;IIII)I
    .locals 0

    .line 1362
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/runtime/SlotWriter;->dataIndexToDataAnchor(IIII)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getAnchors$p(Landroidx/compose/runtime/SlotWriter;)Ljava/util/ArrayList;
    .locals 0

    .line 1362
    iget-object p0, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$getCurrentSlot$p(Landroidx/compose/runtime/SlotWriter;)I
    .locals 0

    .line 1362
    iget p0, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    return p0
.end method

.method public static final synthetic access$getGroupGapStart$p(Landroidx/compose/runtime/SlotWriter;)I
    .locals 0

    .line 1362
    iget p0, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    return p0
.end method

.method public static final synthetic access$getGroups$p(Landroidx/compose/runtime/SlotWriter;)[I
    .locals 0

    .line 1362
    iget-object p0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    return-object p0
.end method

.method public static final synthetic access$getNodeCount$p(Landroidx/compose/runtime/SlotWriter;)I
    .locals 0

    .line 1362
    iget p0, p0, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    return p0
.end method

.method public static final synthetic access$getSlots$p(Landroidx/compose/runtime/SlotWriter;)[Ljava/lang/Object;
    .locals 0

    .line 1362
    iget-object p0, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic access$getSlotsGapLen$p(Landroidx/compose/runtime/SlotWriter;)I
    .locals 0

    .line 1362
    iget p0, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    return p0
.end method

.method public static final synthetic access$getSlotsGapOwner$p(Landroidx/compose/runtime/SlotWriter;)I
    .locals 0

    .line 1362
    iget p0, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapOwner:I

    return p0
.end method

.method public static final synthetic access$getSlotsGapStart$p(Landroidx/compose/runtime/SlotWriter;)I
    .locals 0

    .line 1362
    iget p0, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapStart:I

    return p0
.end method

.method public static final synthetic access$getSourceInformationMap$p(Landroidx/compose/runtime/SlotWriter;)Ljava/util/HashMap;
    .locals 0

    .line 1362
    iget-object p0, p0, Landroidx/compose/runtime/SlotWriter;->sourceInformationMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public static final synthetic access$groupIndexToAddress(Landroidx/compose/runtime/SlotWriter;I)I
    .locals 0

    .line 1362
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$insertGroups(Landroidx/compose/runtime/SlotWriter;I)V
    .locals 0

    .line 1362
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->insertGroups(I)V

    return-void
.end method

.method public static final synthetic access$insertSlots(Landroidx/compose/runtime/SlotWriter;II)V
    .locals 0

    .line 1362
    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/SlotWriter;->insertSlots(II)V

    return-void
.end method

.method public static final synthetic access$moveGroupGapTo(Landroidx/compose/runtime/SlotWriter;I)V
    .locals 0

    .line 1362
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->moveGroupGapTo(I)V

    return-void
.end method

.method public static final synthetic access$moveSlotGapTo(Landroidx/compose/runtime/SlotWriter;II)V
    .locals 0

    .line 1362
    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/SlotWriter;->moveSlotGapTo(II)V

    return-void
.end method

.method public static final synthetic access$removeGroups(Landroidx/compose/runtime/SlotWriter;II)Z
    .locals 0

    .line 1362
    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/SlotWriter;->removeGroups(II)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$removeSlots(Landroidx/compose/runtime/SlotWriter;III)V
    .locals 0

    .line 1362
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/runtime/SlotWriter;->removeSlots(III)V

    return-void
.end method

.method public static final synthetic access$setCurrentGroup$p(Landroidx/compose/runtime/SlotWriter;I)V
    .locals 0

    .line 1362
    iput p1, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    return-void
.end method

.method public static final synthetic access$setCurrentSlot$p(Landroidx/compose/runtime/SlotWriter;I)V
    .locals 0

    .line 1362
    iput p1, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    return-void
.end method

.method public static final synthetic access$setNodeCount$p(Landroidx/compose/runtime/SlotWriter;I)V
    .locals 0

    .line 1362
    iput p1, p0, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    return-void
.end method

.method public static final synthetic access$setSlotsGapOwner$p(Landroidx/compose/runtime/SlotWriter;I)V
    .locals 0

    .line 1362
    iput p1, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapOwner:I

    return-void
.end method

.method public static final synthetic access$slotIndex(Landroidx/compose/runtime/SlotWriter;[II)I
    .locals 0

    .line 1362
    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/SlotWriter;->slotIndex([II)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$sourceInformationOf(Landroidx/compose/runtime/SlotWriter;I)Landroidx/compose/runtime/GroupSourceInformation;
    .locals 0

    .line 1362
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->sourceInformationOf(I)Landroidx/compose/runtime/GroupSourceInformation;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$updateContainsMark(Landroidx/compose/runtime/SlotWriter;I)V
    .locals 0

    .line 1362
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->updateContainsMark(I)V

    return-void
.end method

.method public static synthetic anchor$default(Landroidx/compose/runtime/SlotWriter;IILjava/lang/Object;)Landroidx/compose/runtime/Anchor;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 2795
    iget p1, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotWriter;->anchor(I)Landroidx/compose/runtime/Anchor;

    move-result-object p0

    return-object p0
.end method

.method private final auxIndex([II)I
    .locals 1

    .line 3478
    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/SlotWriter;->dataIndex([II)I

    move-result v0

    invoke-static {p1, p2}, Landroidx/compose/runtime/SlotTableKt;->access$groupInfo([II)I

    move-result p1

    shr-int/lit8 p1, p1, 0x1d

    invoke-static {p1}, Landroidx/compose/runtime/SlotTableKt;->access$countOneBits(I)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method private final childContainsAnyMarks(I)Z
    .locals 3

    add-int/lit8 v0, p1, 0x1

    .line 2846
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotWriter;->groupSize(I)I

    move-result v1

    add-int/2addr p1, v1

    :goto_0
    if-ge v0, p1, :cond_1

    .line 2848
    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-direct {p0, v0}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v2

    invoke-static {v1, v2}, Landroidx/compose/runtime/SlotTableKt;->access$containsAnyMark([II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2849
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/SlotWriter;->groupSize(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private final clearSlotGap()V
    .locals 4

    .line 3016
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapStart:I

    .line 3017
    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    add-int/2addr v1, v0

    .line 3018
    iget-object v2, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v1}, Lkotlin/collections/ArraysKt;->fill([Ljava/lang/Object;Ljava/lang/Object;II)V

    return-void
.end method

.method private final containsAnyGroupMarks(I)Z
    .locals 1

    if-ltz p1, :cond_0

    .line 2814
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result p1

    invoke-static {v0, p1}, Landroidx/compose/runtime/SlotTableKt;->access$containsAnyMark([II)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final containsGroupMark(I)Z
    .locals 1

    if-ltz p1, :cond_0

    .line 2811
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result p1

    invoke-static {v0, p1}, Landroidx/compose/runtime/SlotTableKt;->access$containsMark([II)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final dataAnchorToDataIndex(III)I
    .locals 0

    if-gez p1, :cond_0

    sub-int/2addr p3, p2

    add-int/2addr p3, p1

    add-int/lit8 p1, p3, 0x1

    :cond_0
    return p1
.end method

.method private final dataIndex(I)I
    .locals 1

    .line 3459
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result p1

    invoke-direct {p0, v0, p1}, Landroidx/compose/runtime/SlotWriter;->dataIndex([II)I

    move-result p1

    return p1
.end method

.method private final dataIndex([II)I
    .locals 1

    .line 3462
    invoke-direct {p0}, Landroidx/compose/runtime/SlotWriter;->getCapacity()I

    move-result v0

    if-lt p2, v0, :cond_0

    iget-object p1, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    array-length p1, p1

    iget p2, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    sub-int/2addr p1, p2

    goto :goto_0

    .line 3463
    :cond_0
    invoke-static {p1, p2}, Landroidx/compose/runtime/SlotTableKt;->access$dataAnchor([II)I

    move-result p1

    iget p2, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    array-length v0, v0

    invoke-direct {p0, p1, p2, v0}, Landroidx/compose/runtime/SlotWriter;->dataAnchorToDataIndex(III)I

    move-result p1

    :goto_0
    return p1
.end method

.method private final dataIndexToDataAddress(I)I
    .locals 1

    .line 3454
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapStart:I

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    add-int/2addr p1, v0

    :goto_0
    return p1
.end method

.method private final dataIndexToDataAnchor(IIII)I
    .locals 0

    if-le p1, p2, :cond_0

    sub-int/2addr p4, p3

    sub-int/2addr p4, p1

    add-int/lit8 p4, p4, 0x1

    neg-int p1, p4

    :cond_0
    return p1
.end method

.method private final dataIndexes([I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 3481
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Landroidx/compose/runtime/SlotTableKt;->dataAnchors$default([IIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 3482
    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    invoke-static {v3, v1}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->slice(Ljava/util/List;Lkotlin/ranges/IntRange;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 3483
    iget v2, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    iget v4, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    add-int/2addr v2, v4

    array-length p1, p1

    div-int/lit8 p1, p1, 0x5

    invoke-static {v2, p1}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->slice(Ljava/util/List;Lkotlin/ranges/IntRange;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 3482
    invoke-static {v1, p1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    .line 4444
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4447
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v3, v1, :cond_0

    .line 4448
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 4450
    move-object v4, v0

    check-cast v4, Ljava/util/Collection;

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 3484
    iget v5, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    iget-object v6, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    array-length v6, v6

    invoke-direct {p0, v2, v5, v6}, Landroidx/compose/runtime/SlotWriter;->dataAnchorToDataIndex(III)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 4450
    invoke-interface {v4, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4453
    :cond_0
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private final fixParentAnchorsFor(III)V
    .locals 2

    .line 2890
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    invoke-direct {p0, p1, v0}, Landroidx/compose/runtime/SlotWriter;->parentIndexToAnchor(II)I

    move-result p1

    :goto_0
    if-ge p3, p2, :cond_0

    .line 2893
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-direct {p0, p3}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v1

    invoke-static {v0, v1, p1}, Landroidx/compose/runtime/SlotTableKt;->access$updateParentAnchor([III)V

    .line 2894
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-direct {p0, p3}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result v0

    add-int/2addr v0, p3

    add-int/lit8 v1, p3, 0x1

    .line 2895
    invoke-direct {p0, p3, v0, v1}, Landroidx/compose/runtime/SlotWriter;->fixParentAnchorsFor(III)V

    move p3, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final getCapacity()I
    .locals 1

    .line 3448
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x5

    return v0
.end method

.method private final getCurrentGroupSlotIndex()I
    .locals 3

    .line 1916
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    invoke-virtual {p0, v1}, Landroidx/compose/runtime/SlotWriter;->slotsStartIndex$runtime_release(I)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->deferredSlotWrites:Landroidx/collection/MutableIntObjectMap;

    if-eqz v1, :cond_0

    iget v2, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    invoke-virtual {v1, v2}, Landroidx/collection/MutableIntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/collection/MutableObjectList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/collection/MutableObjectList;->getSize()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method private final groupAsString(Ljava/lang/StringBuilder;I)V
    .locals 6

    .line 3347
    invoke-direct {p0, p2}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v0

    .line 3348
    const-string v1, "Group("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    const/16 v2, 0xa

    if-ge p2, v2, :cond_0

    .line 3349
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    const/16 v3, 0x64

    if-ge p2, v3, :cond_1

    .line 3350
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    const/16 v3, 0x3e8

    if-ge p2, v3, :cond_2

    .line 3351
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3352
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3353
    const-string v1, ")"

    if-eq v0, p2, :cond_3

    .line 3354
    const-string v3, "("

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3355
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3356
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const/16 v3, 0x23

    .line 3358
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3359
    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v3, v0}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x5e

    .line 3360
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3361
    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v3, v0}, Landroidx/compose/runtime/SlotTableKt;->access$parentAnchor([II)I

    move-result v3

    invoke-direct {p0, v3}, Landroidx/compose/runtime/SlotWriter;->parentAnchorToIndex(I)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3362
    const-string v3, ": key="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3363
    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v3, v0}, Landroidx/compose/runtime/SlotTableKt;->access$key([II)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3364
    const-string v3, ", nodes="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3365
    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v3, v0}, Landroidx/compose/runtime/SlotTableKt;->access$nodeCount([II)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3366
    const-string v3, ", dataAnchor="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3367
    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v3, v0}, Landroidx/compose/runtime/SlotTableKt;->access$dataAnchor([II)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3368
    const-string v3, ", parentAnchor="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3369
    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v3, v0}, Landroidx/compose/runtime/SlotTableKt;->access$parentAnchor([II)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3370
    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v3, v0}, Landroidx/compose/runtime/SlotTableKt;->access$isNode([II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3372
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ", node="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3373
    iget-object v4, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    .line 3374
    iget-object v5, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-direct {p0, v5, v0}, Landroidx/compose/runtime/SlotWriter;->nodeIndex([II)I

    move-result v5

    invoke-direct {p0, v5}, Landroidx/compose/runtime/SlotWriter;->dataIndexToDataAddress(I)I

    move-result v5

    aget-object v4, v4, v5

    .line 3375
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Landroidx/compose/runtime/SlotTableKt;->access$summarize(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 3372
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3371
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3380
    :cond_4
    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-direct {p0, v3, v0}, Landroidx/compose/runtime/SlotWriter;->slotIndex([II)I

    move-result v0

    add-int/lit8 p2, p2, 0x1

    .line 3381
    invoke-direct {p0, p2}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result p2

    .line 3382
    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-direct {p0, v3, p2}, Landroidx/compose/runtime/SlotWriter;->dataIndex([II)I

    move-result p2

    if-le p2, v0, :cond_7

    .line 3384
    const-string v3, ", ["

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v0

    :goto_0
    if-ge v3, p2, :cond_6

    if-eq v3, v0, :cond_5

    .line 3386
    const-string v4, ", "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3387
    :cond_5
    invoke-direct {p0, v3}, Landroidx/compose/runtime/SlotWriter;->dataIndexToDataAddress(I)I

    move-result v4

    .line 3388
    iget-object v5, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    aget-object v4, v5, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Landroidx/compose/runtime/SlotTableKt;->access$summarize(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    const/16 p2, 0x5d

    .line 3390
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3392
    :cond_7
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private final groupIndexToAddress(I)I
    .locals 1

    .line 3451
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    add-int/2addr p1, v0

    :goto_0
    return p1
.end method

.method private final groupSourceInformationFor(ILjava/lang/String;)Landroidx/compose/runtime/GroupSourceInformation;
    .locals 4

    .line 1779
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->sourceInformationMap:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotWriter;->anchor(I)Landroidx/compose/runtime/Anchor;

    move-result-object v1

    .line 4225
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1780
    new-instance v2, Landroidx/compose/runtime/GroupSourceInformation;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p2, v3}, Landroidx/compose/runtime/GroupSourceInformation;-><init>(ILjava/lang/String;I)V

    if-nez p2, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 1787
    iget p2, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    :goto_0
    if-ge p1, p2, :cond_0

    .line 1789
    invoke-virtual {v2, p0, p1}, Landroidx/compose/runtime/GroupSourceInformation;->reportGroup(Landroidx/compose/runtime/SlotWriter;I)V

    .line 1790
    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v3, p1}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result v3

    add-int/2addr p1, v3

    goto :goto_0

    .line 4228
    :cond_0
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4226
    :cond_1
    check-cast v2, Landroidx/compose/runtime/GroupSourceInformation;

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return-object v2
.end method

.method private final insertGroups(I)V
    .locals 11

    if-lez p1, :cond_5

    .line 3027
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 3028
    invoke-direct {p0, v0}, Landroidx/compose/runtime/SlotWriter;->moveGroupGapTo(I)V

    .line 3029
    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    .line 3030
    iget v2, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    .line 3031
    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    array-length v4, v3

    div-int/lit8 v4, v4, 0x5

    sub-int v5, v4, v2

    const/4 v6, 0x0

    if-ge v2, p1, :cond_0

    mul-int/lit8 v7, v4, 0x2

    add-int v8, v5, p1

    .line 3039
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    const/16 v8, 0x20

    .line 3040
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    mul-int/lit8 v8, v7, 0x5

    .line 3042
    new-array v8, v8, [I

    sub-int/2addr v7, v5

    add-int/2addr v2, v1

    add-int v9, v1, v7

    mul-int/lit8 v10, v1, 0x5

    .line 3048
    invoke-static {v3, v8, v6, v6, v10}, Lkotlin/collections/ArraysKt;->copyInto([I[IIII)[I

    mul-int/lit8 v9, v9, 0x5

    mul-int/lit8 v2, v2, 0x5

    mul-int/lit8 v4, v4, 0x5

    .line 3054
    invoke-static {v3, v8, v9, v2, v4}, Lkotlin/collections/ArraysKt;->copyInto([I[IIII)[I

    .line 3062
    iput-object v8, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    move v2, v7

    .line 3067
    :cond_0
    iget v3, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    if-lt v3, v1, :cond_1

    add-int/2addr v3, p1

    .line 3068
    iput v3, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    :cond_1
    add-int v3, v1, p1

    .line 3071
    iput v3, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    sub-int/2addr v2, p1

    .line 3072
    iput v2, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    if-lez v5, :cond_2

    add-int/2addr v0, p1

    .line 3075
    invoke-direct {p0, v0}, Landroidx/compose/runtime/SlotWriter;->dataIndex(I)I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v6

    .line 3080
    :goto_0
    iget v2, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapOwner:I

    if-ge v2, v1, :cond_3

    goto :goto_1

    :cond_3
    iget v6, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapStart:I

    .line 3081
    :goto_1
    iget v2, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    .line 3082
    iget-object v4, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    array-length v4, v4

    .line 3078
    invoke-direct {p0, v0, v6, v2, v4}, Landroidx/compose/runtime/SlotWriter;->dataIndexToDataAnchor(IIII)I

    move-result v0

    move v2, v1

    :goto_2
    if-ge v2, v3, :cond_4

    .line 3085
    iget-object v4, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v4, v2, v0}, Landroidx/compose/runtime/SlotTableKt;->access$updateDataAnchor([III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3087
    :cond_4
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapOwner:I

    if-lt v0, v1, :cond_5

    add-int/2addr v0, p1

    .line 3089
    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapOwner:I

    :cond_5
    return-void
.end method

.method private final insertSlots(II)V
    .locals 9

    if-lez p1, :cond_3

    .line 3101
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    invoke-direct {p0, v0, p2}, Landroidx/compose/runtime/SlotWriter;->moveSlotGapTo(II)V

    .line 3102
    iget p2, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapStart:I

    .line 3103
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    if-ge v0, p1, :cond_1

    .line 3105
    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    .line 3108
    array-length v2, v1

    sub-int v3, v2, v0

    mul-int/lit8 v4, v2, 0x2

    add-int v5, v3, p1

    .line 3113
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/16 v5, 0x20

    .line 3114
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 3116
    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v4, :cond_0

    const/4 v8, 0x0

    aput-object v8, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    sub-int/2addr v4, v3

    add-int/2addr v0, p2

    add-int v3, p2, v4

    .line 3122
    invoke-static {v1, v5, v6, v6, p2}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 3128
    invoke-static {v1, v5, v3, v0, v2}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 3136
    iput-object v5, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    move v0, v4

    .line 3139
    :cond_1
    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->currentSlotEnd:I

    if-lt v1, p2, :cond_2

    add-int/2addr v1, p1

    .line 3140
    iput v1, p0, Landroidx/compose/runtime/SlotWriter;->currentSlotEnd:I

    :cond_2
    add-int/2addr p2, p1

    .line 3141
    iput p2, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapStart:I

    sub-int/2addr v0, p1

    .line 3142
    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    :cond_3
    return-void
.end method

.method private final keys()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 3487
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Landroidx/compose/runtime/SlotTableKt;->keys$default([IIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 4455
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 4458
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v3, v2, :cond_2

    .line 4459
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 4461
    move-object v5, v4

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 3488
    iget v5, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    if-lt v3, v5, :cond_0

    iget v6, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    add-int/2addr v5, v6

    if-lt v3, v5, :cond_1

    .line 4461
    :cond_0
    move-object v5, v1

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4464
    :cond_2
    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method public static synthetic markGroup$default(Landroidx/compose/runtime/SlotWriter;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 2799
    iget p1, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotWriter;->markGroup(I)V

    return-void
.end method

.method private final moveAnchors(III)V
    .locals 5

    add-int/2addr p3, p1

    .line 3294
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getSize$runtime_release()I

    move-result v0

    .line 3297
    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    invoke-static {v1, p1, v0}, Landroidx/compose/runtime/SlotTableKt;->access$locationOf(Ljava/util/ArrayList;II)I

    move-result v1

    .line 3298
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    if-ltz v1, :cond_0

    .line 3300
    :goto_0
    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 3301
    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/Anchor;

    .line 3302
    invoke-virtual {p0, v3}, Landroidx/compose/runtime/SlotWriter;->anchorIndex(Landroidx/compose/runtime/Anchor;)I

    move-result v4

    if-lt v4, p1, :cond_0

    if-ge v4, p3, :cond_0

    .line 3305
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3306
    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sub-int/2addr p2, p1

    .line 4396
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    const/4 p3, 0x0

    :goto_1
    if-ge p3, p1, :cond_2

    .line 4397
    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 4398
    check-cast v1, Landroidx/compose/runtime/Anchor;

    .line 3314
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/SlotWriter;->anchorIndex(Landroidx/compose/runtime/Anchor;)I

    move-result v3

    add-int/2addr v3, p2

    .line 3316
    iget v4, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    if-lt v3, v4, :cond_1

    sub-int v4, v0, v3

    neg-int v4, v4

    .line 3317
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/Anchor;->setLocation$runtime_release(I)V

    goto :goto_2

    .line 3319
    :cond_1
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/Anchor;->setLocation$runtime_release(I)V

    .line 3321
    :goto_2
    iget-object v4, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    invoke-static {v4, v3, v0}, Landroidx/compose/runtime/SlotTableKt;->access$locationOf(Ljava/util/ArrayList;II)I

    move-result v3

    .line 3322
    iget-object v4, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    invoke-virtual {v4, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static synthetic moveFrom$default(Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/SlotTable;IZILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    .line 2690
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/runtime/SlotWriter;->moveFrom(Landroidx/compose/runtime/SlotTable;IZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final moveGroupGapTo(I)V
    .locals 8

    .line 2904
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    .line 2905
    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    if-eq v1, p1, :cond_7

    .line 2907
    iget-object v2, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-eqz v2, :cond_0

    invoke-direct {p0, v1, p1}, Landroidx/compose/runtime/SlotWriter;->updateAnchors(II)V

    :cond_0
    if-lez v0, :cond_2

    .line 2909
    iget-object v2, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    mul-int/lit8 v4, p1, 0x5

    mul-int/lit8 v5, v0, 0x5

    mul-int/lit8 v6, v1, 0x5

    if-ge p1, v1, :cond_1

    add-int/2addr v5, v4

    .line 2917
    invoke-static {v2, v2, v5, v4, v6}, Lkotlin/collections/ArraysKt;->copyInto([I[IIII)[I

    goto :goto_0

    :cond_1
    add-int v7, v6, v5

    add-int/2addr v4, v5

    .line 2924
    invoke-static {v2, v2, v6, v7, v4}, Lkotlin/collections/ArraysKt;->copyInto([I[IIII)[I

    :cond_2
    :goto_0
    if-ge p1, v1, :cond_3

    add-int v1, p1, v0

    .line 2936
    :cond_3
    invoke-direct {p0}, Landroidx/compose/runtime/SlotWriter;->getCapacity()I

    move-result v2

    if-ge v1, v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    .line 2937
    :goto_1
    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->runtimeCheck(Z)V

    :cond_5
    :goto_2
    if-ge v1, v2, :cond_7

    .line 2939
    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v3, v1}, Landroidx/compose/runtime/SlotTableKt;->access$parentAnchor([II)I

    move-result v3

    .line 2940
    invoke-direct {p0, v3}, Landroidx/compose/runtime/SlotWriter;->parentAnchorToIndex(I)I

    move-result v4

    .line 2941
    invoke-direct {p0, v4, p1}, Landroidx/compose/runtime/SlotWriter;->parentIndexToAnchor(II)I

    move-result v4

    if-eq v4, v3, :cond_6

    .line 2943
    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v3, v1, v4}, Landroidx/compose/runtime/SlotTableKt;->access$updateParentAnchor([III)V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    if-ne v1, p1, :cond_5

    add-int/2addr v1, v0

    goto :goto_2

    .line 2949
    :cond_7
    iput p1, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    return-void
.end method

.method private final moveSlotGapTo(II)V
    .locals 8

    .line 2956
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    .line 2957
    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapStart:I

    .line 2958
    iget v2, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapOwner:I

    if-eq v1, p1, :cond_1

    .line 2960
    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    if-ge p1, v1, :cond_0

    add-int v4, p1, v0

    .line 2963
    invoke-static {v3, v3, v4, p1, v1}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    goto :goto_0

    :cond_0
    add-int v4, v1, v0

    add-int v5, p1, v0

    .line 2971
    invoke-static {v3, v3, v1, v4, v5}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    :cond_1
    :goto_0
    const/4 v1, 0x1

    add-int/2addr p2, v1

    .line 2981
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getSize$runtime_release()I

    move-result v3

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result p2

    if-eq v2, p2, :cond_a

    .line 2983
    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    array-length v3, v3

    sub-int/2addr v3, v0

    const/4 v0, 0x0

    if-ge p2, v2, :cond_5

    .line 2985
    invoke-direct {p0, p2}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v4

    .line 2986
    invoke-direct {p0, v2}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v2

    .line 2987
    iget v5, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    :cond_2
    :goto_1
    if-ge v4, v2, :cond_9

    .line 2989
    iget-object v6, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v6, v4}, Landroidx/compose/runtime/SlotTableKt;->access$dataAnchor([II)I

    move-result v6

    if-ltz v6, :cond_3

    move v7, v1

    goto :goto_2

    :cond_3
    move v7, v0

    :goto_2
    if-nez v7, :cond_4

    .line 2991
    const-string v7, "Unexpected anchor value, expected a positive anchor"

    .line 4378
    invoke-static {v7}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 2993
    :cond_4
    iget-object v7, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    sub-int v6, v3, v6

    add-int/2addr v6, v1

    neg-int v6, v6

    invoke-static {v7, v4, v6}, Landroidx/compose/runtime/SlotTableKt;->access$updateDataAnchor([III)V

    add-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_2

    .line 2995
    iget v6, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    add-int/2addr v4, v6

    goto :goto_1

    .line 2998
    :cond_5
    invoke-direct {p0, v2}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v2

    .line 2999
    invoke-direct {p0, p2}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v4

    :cond_6
    :goto_3
    if-ge v2, v4, :cond_9

    .line 3001
    iget-object v5, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v5, v2}, Landroidx/compose/runtime/SlotTableKt;->access$dataAnchor([II)I

    move-result v5

    if-gez v5, :cond_7

    move v6, v1

    goto :goto_4

    :cond_7
    move v6, v0

    :goto_4
    if-nez v6, :cond_8

    .line 3003
    const-string v6, "Unexpected anchor value, expected a negative anchor"

    .line 4385
    invoke-static {v6}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 3005
    :cond_8
    iget-object v6, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    add-int/2addr v5, v3

    add-int/2addr v5, v1

    invoke-static {v6, v2, v5}, Landroidx/compose/runtime/SlotTableKt;->access$updateDataAnchor([III)V

    add-int/lit8 v2, v2, 0x1

    .line 3007
    iget v5, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    if-ne v2, v5, :cond_6

    iget v5, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    add-int/2addr v2, v5

    goto :goto_3

    .line 3010
    :cond_9
    iput p2, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapOwner:I

    .line 3012
    :cond_a
    iput p1, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapStart:I

    return-void
.end method

.method private final nodeIndex([II)I
    .locals 0

    .line 3476
    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/SlotWriter;->dataIndex([II)I

    move-result p1

    return p1
.end method

.method private final parent([II)I
    .locals 0

    .line 3457
    invoke-direct {p0, p2}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result p2

    invoke-static {p1, p2}, Landroidx/compose/runtime/SlotTableKt;->access$parentAnchor([II)I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->parentAnchorToIndex(I)I

    move-result p1

    return p1
.end method

.method private final parentAnchorToIndex(I)I
    .locals 2

    const/4 v0, -0x2

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 3501
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getSize$runtime_release()I

    move-result v1

    add-int/2addr v1, p1

    add-int/lit8 p1, v1, 0x2

    :goto_0
    return p1
.end method

.method private final parentIndexToAnchor(II)I
    .locals 0

    if-ge p1, p2, :cond_0

    goto :goto_0

    .line 3498
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getSize$runtime_release()I

    move-result p2

    sub-int/2addr p2, p1

    add-int/lit8 p2, p2, 0x2

    neg-int p1, p2

    :goto_0
    return p1
.end method

.method private final rawUpdate(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1666
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->skip()Ljava/lang/Object;

    move-result-object v0

    .line 1667
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotWriter;->set(Ljava/lang/Object;)V

    return-object v0
.end method

.method private final recalculateMarks()V
    .locals 2

    .line 2819
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->pendingRecalculateMarks:Landroidx/compose/runtime/PrioritySet;

    if-eqz v0, :cond_0

    .line 2820
    :goto_0
    invoke-virtual {v0}, Landroidx/compose/runtime/PrioritySet;->isNotEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2821
    invoke-virtual {v0}, Landroidx/compose/runtime/PrioritySet;->takeMax()I

    move-result v1

    invoke-direct {p0, v1, v0}, Landroidx/compose/runtime/SlotWriter;->updateContainsMarkNow(ILandroidx/compose/runtime/PrioritySet;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final removeAnchors(IILjava/util/HashMap;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/HashMap<",
            "Landroidx/compose/runtime/Anchor;",
            "Landroidx/compose/runtime/GroupSourceInformation;",
            ">;)Z"
        }
    .end annotation

    .line 3263
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    add-int/2addr p2, p1

    .line 3265
    invoke-direct {p0}, Landroidx/compose/runtime/SlotWriter;->getCapacity()I

    move-result v1

    sub-int/2addr v1, v0

    .line 3266
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    invoke-static {v0, p2, v1}, Landroidx/compose/runtime/SlotTableKt;->access$locationOf(Ljava/util/ArrayList;II)I

    move-result v0

    .line 3267
    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ltz v0, :cond_4

    .line 3272
    iget-object v4, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/runtime/Anchor;

    .line 3273
    invoke-virtual {p0, v4}, Landroidx/compose/runtime/SlotWriter;->anchorIndex(Landroidx/compose/runtime/Anchor;)I

    move-result v5

    if-lt v5, p1, :cond_4

    if-ge v5, p2, :cond_3

    const/high16 v1, -0x80000000

    .line 3276
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/Anchor;->setLocation$runtime_release(I)V

    if-eqz p3, :cond_1

    .line 3277
    invoke-virtual {p3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/GroupSourceInformation;

    :cond_1
    if-nez v3, :cond_2

    add-int/lit8 v3, v0, 0x1

    :cond_2
    move v1, v0

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    if-ge v1, v3, :cond_5

    const/4 v2, 0x1

    :cond_5
    if-eqz v2, :cond_6

    .line 3285
    iget-object p1, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_6
    return v2
.end method

.method private final removeGroups(II)Z
    .locals 2

    const/4 v0, 0x0

    if-lez p2, :cond_3

    .line 3152
    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    .line 3155
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->moveGroupGapTo(I)V

    .line 3156
    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 3157
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->sourceInformationMap:Ljava/util/HashMap;

    invoke-direct {p0, p1, p2, v0}, Landroidx/compose/runtime/SlotWriter;->removeAnchors(IILjava/util/HashMap;)Z

    move-result v0

    .line 3159
    :cond_0
    iput p1, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    .line 3160
    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    add-int/2addr v1, p2

    .line 3162
    iput v1, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    .line 3165
    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapOwner:I

    if-le v1, p1, :cond_1

    sub-int/2addr v1, p2

    .line 3168
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapOwner:I

    .line 3170
    :cond_1
    iget p1, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    if-lt p1, v1, :cond_2

    sub-int/2addr p1, p2

    iput p1, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    .line 3172
    :cond_2
    iget p1, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    .line 3174
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->containsGroupMark(I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 3175
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->updateContainsMark(I)V

    :cond_3
    return v0
.end method

.method private final removeSlots(III)V
    .locals 2

    if-lez p2, :cond_0

    .line 3196
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    add-int v1, p1, p2

    .line 3198
    invoke-direct {p0, v1, p3}, Landroidx/compose/runtime/SlotWriter;->moveSlotGapTo(II)V

    .line 3199
    iput p1, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapStart:I

    add-int/2addr v0, p2

    .line 3200
    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    .line 3201
    iget-object p3, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p3, v0, p1, v1}, Lkotlin/collections/ArraysKt;->fill([Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 3202
    iget p3, p0, Landroidx/compose/runtime/SlotWriter;->currentSlotEnd:I

    if-lt p3, p1, :cond_0

    sub-int/2addr p3, p2

    .line 3203
    iput p3, p0, Landroidx/compose/runtime/SlotWriter;->currentSlotEnd:I

    :cond_0
    return-void
.end method

.method private final restoreCurrentGroupEnd()I
    .locals 2

    .line 2878
    invoke-direct {p0}, Landroidx/compose/runtime/SlotWriter;->getCapacity()I

    move-result v0

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->endStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v1}, Landroidx/compose/runtime/IntStack;->pop()I

    move-result v1

    sub-int/2addr v0, v1

    .line 2879
    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    return v0
.end method

.method private final saveCurrentGroupEnd()V
    .locals 3

    .line 2871
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->endStack:Landroidx/compose/runtime/IntStack;

    invoke-direct {p0}, Landroidx/compose/runtime/SlotWriter;->getCapacity()I

    move-result v1

    iget v2, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/IntStack;->push(I)V

    return-void
.end method

.method private final slotIndex([II)I
    .locals 1

    .line 3466
    invoke-direct {p0}, Landroidx/compose/runtime/SlotWriter;->getCapacity()I

    move-result v0

    if-lt p2, v0, :cond_0

    iget-object p1, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    array-length p1, p1

    iget p2, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    sub-int/2addr p1, p2

    goto :goto_0

    .line 3467
    :cond_0
    invoke-static {p1, p2}, Landroidx/compose/runtime/SlotTableKt;->access$slotAnchor([II)I

    move-result p1

    iget p2, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    array-length v0, v0

    invoke-direct {p0, p1, p2, v0}, Landroidx/compose/runtime/SlotWriter;->dataAnchorToDataIndex(III)I

    move-result p1

    :goto_0
    return p1
.end method

.method private final sourceInformationOf(I)Landroidx/compose/runtime/GroupSourceInformation;
    .locals 2

    .line 3184
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->sourceInformationMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3185
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotWriter;->tryAnchor$runtime_release(I)Landroidx/compose/runtime/Anchor;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/runtime/GroupSourceInformation;

    move-object v1, p1

    :cond_0
    return-object v1
.end method

.method private final startGroup(ILjava/lang/Object;ZLjava/lang/Object;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v10, p4

    .line 2026
    iget v11, v0, Landroidx/compose/runtime/SlotWriter;->parent:I

    .line 2027
    iget v2, v0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    const/4 v12, 0x0

    const/4 v3, 0x1

    if-lez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v12

    .line 2028
    :goto_0
    iget-object v4, v0, Landroidx/compose/runtime/SlotWriter;->nodeCountStack:Landroidx/compose/runtime/IntStack;

    iget v5, v0, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/IntStack;->push(I)V

    if-eqz v2, :cond_8

    .line 2031
    iget v13, v0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 2032
    iget-object v2, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-direct {v0, v13}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v4

    invoke-direct {v0, v2, v4}, Landroidx/compose/runtime/SlotWriter;->dataIndex([II)I

    move-result v2

    .line 2033
    invoke-direct {v0, v3}, Landroidx/compose/runtime/SlotWriter;->insertGroups(I)V

    .line 2034
    iput v2, v0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    .line 2035
    iput v2, v0, Landroidx/compose/runtime/SlotWriter;->currentSlotEnd:I

    .line 2036
    invoke-direct {v0, v13}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v4

    .line 2037
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-eq v1, v5, :cond_1

    move v14, v3

    goto :goto_1

    :cond_1
    move v14, v12

    :goto_1
    if-nez p3, :cond_2

    .line 2038
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-eq v10, v5, :cond_2

    move v15, v3

    goto :goto_2

    :cond_2
    move v15, v12

    .line 2041
    :goto_2
    iget v5, v0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    .line 2042
    iget v6, v0, Landroidx/compose/runtime/SlotWriter;->slotsGapStart:I

    .line 2043
    iget-object v7, v0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    array-length v7, v7

    .line 2039
    invoke-direct {v0, v2, v6, v5, v7}, Landroidx/compose/runtime/SlotWriter;->dataIndexToDataAnchor(IIII)I

    move-result v2

    if-ltz v2, :cond_3

    .line 2045
    iget v5, v0, Landroidx/compose/runtime/SlotWriter;->slotsGapOwner:I

    if-ge v5, v13, :cond_3

    .line 2055
    iget-object v5, v0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    array-length v5, v5

    iget v6, v0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v2

    add-int/2addr v5, v3

    neg-int v2, v5

    :cond_3
    move v9, v2

    .line 2059
    iget-object v2, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 2065
    iget v8, v0, Landroidx/compose/runtime/SlotWriter;->parent:I

    move v3, v4

    move/from16 v4, p1

    move/from16 v5, p3

    move v6, v14

    move v7, v15

    .line 2059
    invoke-static/range {v2 .. v9}, Landroidx/compose/runtime/SlotTableKt;->access$initGroup([IIIZZZII)V

    add-int v2, p3, v14

    add-int/2addr v2, v15

    if-lez v2, :cond_7

    .line 2073
    invoke-direct {v0, v2, v13}, Landroidx/compose/runtime/SlotWriter;->insertSlots(II)V

    .line 2074
    iget-object v2, v0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    .line 2075
    iget v3, v0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    if-eqz p3, :cond_4

    add-int/lit8 v4, v3, 0x1

    .line 2076
    aput-object v10, v2, v3

    move v3, v4

    :cond_4
    if-eqz v14, :cond_5

    add-int/lit8 v4, v3, 0x1

    .line 2077
    aput-object v1, v2, v3

    move v3, v4

    :cond_5
    if-eqz v15, :cond_6

    add-int/lit8 v1, v3, 0x1

    .line 2078
    aput-object v10, v2, v3

    move v3, v1

    .line 2079
    :cond_6
    iput v3, v0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    .line 2081
    :cond_7
    iput v12, v0, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    add-int/lit8 v1, v13, 0x1

    .line 2083
    iput v13, v0, Landroidx/compose/runtime/SlotWriter;->parent:I

    .line 2084
    iput v1, v0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    if-ltz v11, :cond_b

    .line 2086
    invoke-direct {v0, v11}, Landroidx/compose/runtime/SlotWriter;->sourceInformationOf(I)Landroidx/compose/runtime/GroupSourceInformation;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v2, v0, v13}, Landroidx/compose/runtime/GroupSourceInformation;->reportGroup(Landroidx/compose/runtime/SlotWriter;I)V

    goto :goto_4

    .line 2090
    :cond_8
    iget-object v1, v0, Landroidx/compose/runtime/SlotWriter;->startStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v1, v11}, Landroidx/compose/runtime/IntStack;->push(I)V

    .line 2091
    invoke-direct/range {p0 .. p0}, Landroidx/compose/runtime/SlotWriter;->saveCurrentGroupEnd()V

    .line 2092
    iget v1, v0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 2093
    invoke-direct {v0, v1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v2

    .line 2094
    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    if-eqz p3, :cond_9

    .line 2096
    invoke-virtual {v0, v10}, Landroidx/compose/runtime/SlotWriter;->updateNode(Ljava/lang/Object;)V

    goto :goto_3

    .line 2098
    :cond_9
    invoke-virtual {v0, v10}, Landroidx/compose/runtime/SlotWriter;->updateAux(Ljava/lang/Object;)V

    .line 2100
    :cond_a
    :goto_3
    iget-object v4, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-direct {v0, v4, v2}, Landroidx/compose/runtime/SlotWriter;->slotIndex([II)I

    move-result v4

    iput v4, v0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    .line 2101
    iget-object v4, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 2102
    iget v5, v0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    add-int/2addr v5, v3

    invoke-direct {v0, v5}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v3

    .line 2101
    invoke-direct {v0, v4, v3}, Landroidx/compose/runtime/SlotWriter;->dataIndex([II)I

    move-result v3

    iput v3, v0, Landroidx/compose/runtime/SlotWriter;->currentSlotEnd:I

    .line 2104
    iget-object v3, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v3, v2}, Landroidx/compose/runtime/SlotTableKt;->access$nodeCount([II)I

    move-result v3

    iput v3, v0, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    .line 2106
    iput v1, v0, Landroidx/compose/runtime/SlotWriter;->parent:I

    add-int/lit8 v3, v1, 0x1

    .line 2107
    iput v3, v0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 2108
    iget-object v3, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v3, v2}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result v2

    add-int/2addr v1, v2

    .line 2030
    :cond_b
    :goto_4
    iput v1, v0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    return-void
.end method

.method private final updateAnchors(II)V
    .locals 3

    .line 3222
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    .line 3223
    invoke-direct {p0}, Landroidx/compose/runtime/SlotWriter;->getCapacity()I

    move-result v1

    sub-int/2addr v1, v0

    if-ge p1, p2, :cond_0

    .line 3228
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    invoke-static {v0, p1, v1}, Landroidx/compose/runtime/SlotTableKt;->access$locationOf(Ljava/util/ArrayList;II)I

    move-result p1

    .line 3229
    :goto_0
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 3230
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/Anchor;

    .line 3231
    invoke-virtual {v0}, Landroidx/compose/runtime/Anchor;->getLocation$runtime_release()I

    move-result v2

    if-gez v2, :cond_1

    add-int/2addr v2, v1

    if-ge v2, p2, :cond_1

    .line 3235
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/Anchor;->setLocation$runtime_release(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 3243
    :cond_0
    iget-object p1, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    invoke-static {p1, p2, v1}, Landroidx/compose/runtime/SlotTableKt;->access$locationOf(Ljava/util/ArrayList;II)I

    move-result p1

    .line 3244
    :goto_1
    iget-object p2, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_1

    .line 3245
    iget-object p2, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/compose/runtime/Anchor;

    .line 3246
    invoke-virtual {p2}, Landroidx/compose/runtime/Anchor;->getLocation$runtime_release()I

    move-result v0

    if-ltz v0, :cond_1

    sub-int v0, v1, v0

    neg-int v0, v0

    .line 3248
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/Anchor;->setLocation$runtime_release(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private final updateContainsMark(I)V
    .locals 3

    if-ltz p1, :cond_1

    .line 2828
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->pendingRecalculateMarks:Landroidx/compose/runtime/PrioritySet;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/compose/runtime/PrioritySet;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Landroidx/compose/runtime/PrioritySet;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Landroidx/compose/runtime/SlotWriter;->pendingRecalculateMarks:Landroidx/compose/runtime/PrioritySet;

    .line 2829
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/PrioritySet;->add(I)V

    :cond_1
    return-void
.end method

.method private final updateContainsMarkNow(ILandroidx/compose/runtime/PrioritySet;)V
    .locals 3

    .line 2834
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v0

    .line 2835
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->childContainsAnyMarks(I)Z

    move-result v1

    .line 2836
    iget-object v2, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v2, v0}, Landroidx/compose/runtime/SlotTableKt;->access$containsMark([II)Z

    move-result v2

    if-eq v2, v1, :cond_0

    .line 2838
    iget-object v2, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/SlotTableKt;->access$updateContainsMark([IIZ)V

    .line 2839
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotWriter;->parent(I)I

    move-result p1

    if-ltz p1, :cond_0

    .line 2840
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/PrioritySet;->add(I)V

    :cond_0
    return-void
.end method

.method private final updateDataIndex([III)V
    .locals 3

    .line 3472
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapStart:I

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    iget-object v2, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    array-length v2, v2

    invoke-direct {p0, p3, v0, v1, v2}, Landroidx/compose/runtime/SlotWriter;->dataIndexToDataAnchor(IIII)I

    move-result p3

    .line 3470
    invoke-static {p1, p2, p3}, Landroidx/compose/runtime/SlotTableKt;->access$updateDataAnchor([III)V

    return-void
.end method

.method private final updateNodeOfGroup(ILjava/lang/Object;)V
    .locals 3

    .line 3211
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v0

    .line 3212
    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    invoke-static {v1, v0}, Landroidx/compose/runtime/SlotTableKt;->access$isNode([II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 3213
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Updating the node of a group at "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " that was not created with as a node group"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4392
    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 3215
    :cond_1
    iget-object p1, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-direct {p0, v1, v0}, Landroidx/compose/runtime/SlotWriter;->nodeIndex([II)I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/runtime/SlotWriter;->dataIndexToDataAddress(I)I

    move-result v0

    aput-object p2, p1, v0

    return-void
.end method


# virtual methods
.method public final advanceBy(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-nez v2, :cond_1

    .line 1923
    const-string v2, "Cannot seek backwards"

    .line 4250
    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 1924
    :cond_1
    iget v2, p0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    if-gtz v2, :cond_2

    move v2, v0

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    if-nez v2, :cond_3

    const-string v2, "Cannot call seek() while inserting"

    .line 4257
    invoke-static {v2}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_3
    if-nez p1, :cond_4

    return-void

    .line 1926
    :cond_4
    iget v2, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    add-int/2addr v2, p1

    .line 1928
    iget p1, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    if-lt v2, p1, :cond_5

    iget p1, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    if-gt v2, p1, :cond_5

    goto :goto_2

    :cond_5
    move v0, v1

    :goto_2
    if-nez v0, :cond_6

    .line 1929
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Cannot seek outside the current group ("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v0, 0x2d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4264
    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 1931
    :cond_6
    iput v2, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 1932
    iget-object p1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-direct {p0, v2}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroidx/compose/runtime/SlotWriter;->dataIndex([II)I

    move-result p1

    .line 1933
    iput p1, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    .line 1934
    iput p1, p0, Landroidx/compose/runtime/SlotWriter;->currentSlotEnd:I

    return-void
.end method

.method public final anchor(I)Landroidx/compose/runtime/Anchor;
    .locals 4

    .line 2795
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getSize$runtime_release()I

    move-result v1

    .line 4368
    invoke-static {v0, p1, v1}, Landroidx/compose/runtime/SlotTableKt;->access$search(Ljava/util/ArrayList;II)I

    move-result v1

    if-gez v1, :cond_1

    .line 2796
    new-instance v2, Landroidx/compose/runtime/Anchor;

    iget v3, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    if-gt p1, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getSize$runtime_release()I

    move-result v3

    sub-int/2addr v3, p1

    neg-int p1, v3

    :goto_0
    invoke-direct {v2, p1}, Landroidx/compose/runtime/Anchor;-><init>(I)V

    add-int/lit8 v1, v1, 0x1

    neg-int p1, v1

    .line 4371
    invoke-virtual {v0, p1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 4373
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroidx/compose/runtime/Anchor;

    :goto_1
    return-object v2
.end method

.method public final anchorIndex(Landroidx/compose/runtime/Anchor;)I
    .locals 1

    .line 2857
    invoke-virtual {p1}, Landroidx/compose/runtime/Anchor;->getLocation$runtime_release()I

    move-result p1

    if-gez p1, :cond_0

    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getSize$runtime_release()I

    move-result v0

    add-int/2addr p1, v0

    :cond_0
    return p1
.end method

.method public final appendSlot(Landroidx/compose/runtime/Anchor;Ljava/lang/Object;)V
    .locals 5

    .line 1675
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 1676
    const-string v0, "Can only append a slot if not current inserting"

    .line 4194
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 1678
    :cond_1
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    .line 1679
    iget v2, p0, Landroidx/compose/runtime/SlotWriter;->currentSlotEnd:I

    .line 1680
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotWriter;->anchorIndex(Landroidx/compose/runtime/Anchor;)I

    move-result p1

    .line 1681
    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    add-int/lit8 v4, p1, 0x1

    invoke-direct {p0, v4}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v4

    invoke-direct {p0, v3, v4}, Landroidx/compose/runtime/SlotWriter;->dataIndex([II)I

    move-result v3

    .line 1682
    iput v3, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    .line 1683
    iput v3, p0, Landroidx/compose/runtime/SlotWriter;->currentSlotEnd:I

    .line 1684
    invoke-direct {p0, v1, p1}, Landroidx/compose/runtime/SlotWriter;->insertSlots(II)V

    if-lt v0, v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    .line 1689
    :cond_2
    iget-object p1, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    aput-object p2, p1, v3

    .line 1690
    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    .line 1691
    iput v2, p0, Landroidx/compose/runtime/SlotWriter;->currentSlotEnd:I

    return-void
.end method

.method public final bashCurrentGroup()V
    .locals 3

    .line 2756
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    const/4 v2, -0x3

    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/SlotTableKt;->access$updateGroupKey([III)V

    return-void
.end method

.method public final beginInsert()V
    .locals 2

    .line 1957
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    if-nez v0, :cond_0

    .line 1958
    invoke-direct {p0}, Landroidx/compose/runtime/SlotWriter;->saveCurrentGroupEnd()V

    :cond_0
    return-void
.end method

.method public final close(Z)V
    .locals 10

    const/4 v0, 0x1

    .line 1612
    iput-boolean v0, p0, Landroidx/compose/runtime/SlotWriter;->closed:Z

    if-eqz p1, :cond_0

    .line 1614
    iget-object p1, p0, Landroidx/compose/runtime/SlotWriter;->startStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {p1}, Landroidx/compose/runtime/IntStack;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1616
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getSize$runtime_release()I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->moveGroupGapTo(I)V

    .line 1617
    iget-object p1, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    array-length p1, p1

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    sub-int/2addr p1, v0

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    invoke-direct {p0, p1, v0}, Landroidx/compose/runtime/SlotWriter;->moveSlotGapTo(II)V

    .line 1618
    invoke-direct {p0}, Landroidx/compose/runtime/SlotWriter;->clearSlotGap()V

    .line 1619
    invoke-direct {p0}, Landroidx/compose/runtime/SlotWriter;->recalculateMarks()V

    .line 1621
    :cond_0
    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->table:Landroidx/compose/runtime/SlotTable;

    .line 1623
    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 1624
    iget v4, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    .line 1625
    iget-object v5, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    .line 1626
    iget v6, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapStart:I

    .line 1627
    iget-object v7, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    .line 1628
    iget-object v8, p0, Landroidx/compose/runtime/SlotWriter;->sourceInformationMap:Ljava/util/HashMap;

    .line 1629
    iget-object v9, p0, Landroidx/compose/runtime/SlotWriter;->calledByMap:Landroidx/collection/MutableIntObjectMap;

    move-object v2, p0

    .line 1621
    invoke-virtual/range {v1 .. v9}, Landroidx/compose/runtime/SlotTable;->close$runtime_release(Landroidx/compose/runtime/SlotWriter;[II[Ljava/lang/Object;ILjava/util/ArrayList;Ljava/util/HashMap;Landroidx/collection/MutableIntObjectMap;)V

    return-void
.end method

.method public final endGroup()I
    .locals 12

    .line 2116
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 2117
    :goto_0
    iget v3, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 2118
    iget v4, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    .line 2120
    iget v5, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    .line 2121
    invoke-direct {p0, v5}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v6

    .line 2122
    iget v7, p0, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    sub-int v8, v3, v5

    .line 2124
    iget-object v9, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v9, v6}, Landroidx/compose/runtime/SlotTableKt;->access$isNode([II)Z

    move-result v9

    if-eqz v0, :cond_6

    .line 2127
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->deferredSlotWrites:Landroidx/collection/MutableIntObjectMap;

    if-eqz v0, :cond_2

    .line 2128
    invoke-virtual {v0, v5}, Landroidx/collection/MutableIntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/collection/MutableObjectList;

    if-eqz v3, :cond_2

    .line 2129
    check-cast v3, Landroidx/collection/ObjectList;

    .line 4289
    iget-object v4, v3, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    .line 4290
    iget v3, v3, Landroidx/collection/ObjectList;->_size:I

    move v10, v2

    :goto_1
    if-ge v10, v3, :cond_1

    .line 4291
    aget-object v11, v4, v10

    .line 2129
    invoke-direct {p0, v11}, Landroidx/compose/runtime/SlotWriter;->rawUpdate(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 2130
    :cond_1
    invoke-virtual {v0, v5}, Landroidx/collection/MutableIntObjectMap;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/collection/MutableObjectList;

    .line 2134
    :cond_2
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v0, v6, v8}, Landroidx/compose/runtime/SlotTableKt;->access$updateGroupSize([III)V

    .line 2135
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v0, v6, v7}, Landroidx/compose/runtime/SlotTableKt;->access$updateNodeCount([III)V

    .line 2136
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->nodeCountStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v0}, Landroidx/compose/runtime/IntStack;->pop()I

    move-result v0

    if-eqz v9, :cond_3

    move v3, v1

    goto :goto_2

    :cond_3
    move v3, v7

    :goto_2
    add-int/2addr v0, v3

    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    .line 2137
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-direct {p0, v0, v5}, Landroidx/compose/runtime/SlotWriter;->parent([II)I

    move-result v0

    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    if-gez v0, :cond_4

    .line 2138
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getSize$runtime_release()I

    move-result v0

    goto :goto_3

    :cond_4
    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v0

    :goto_3
    if-gez v0, :cond_5

    goto :goto_4

    .line 2139
    :cond_5
    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-direct {p0, v1, v0}, Landroidx/compose/runtime/SlotWriter;->dataIndex([II)I

    move-result v2

    .line 2140
    :goto_4
    iput v2, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    .line 2141
    iput v2, p0, Landroidx/compose/runtime/SlotWriter;->currentSlotEnd:I

    goto/16 :goto_9

    :cond_6
    if-ne v3, v4, :cond_7

    goto :goto_5

    :cond_7
    move v1, v2

    :goto_5
    if-nez v1, :cond_8

    .line 2144
    const-string v0, "Expected to be at the end of a group"

    .line 4298
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 2147
    :cond_8
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v0, v6}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result v0

    .line 2148
    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v1, v6}, Landroidx/compose/runtime/SlotTableKt;->access$nodeCount([II)I

    move-result v1

    .line 2149
    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v3, v6, v8}, Landroidx/compose/runtime/SlotTableKt;->access$updateGroupSize([III)V

    .line 2150
    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v3, v6, v7}, Landroidx/compose/runtime/SlotTableKt;->access$updateNodeCount([III)V

    .line 2151
    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->startStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v3}, Landroidx/compose/runtime/IntStack;->pop()I

    move-result v3

    .line 2152
    invoke-direct {p0}, Landroidx/compose/runtime/SlotWriter;->restoreCurrentGroupEnd()I

    .line 2153
    iput v3, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    .line 2154
    iget-object v4, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-direct {p0, v4, v5}, Landroidx/compose/runtime/SlotWriter;->parent([II)I

    move-result v4

    .line 2155
    iget-object v5, p0, Landroidx/compose/runtime/SlotWriter;->nodeCountStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v5}, Landroidx/compose/runtime/IntStack;->pop()I

    move-result v5

    iput v5, p0, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    if-ne v4, v3, :cond_a

    if-eqz v9, :cond_9

    goto :goto_6

    :cond_9
    sub-int v2, v7, v1

    :goto_6
    add-int/2addr v5, v2

    .line 2158
    iput v5, p0, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    goto :goto_9

    :cond_a
    sub-int/2addr v8, v0

    if-eqz v9, :cond_b

    move v0, v2

    goto :goto_7

    :cond_b
    sub-int v0, v7, v1

    :goto_7
    if-nez v8, :cond_c

    if-eqz v0, :cond_11

    :cond_c
    :goto_8
    if-eqz v4, :cond_11

    if-eq v4, v3, :cond_11

    if-nez v0, :cond_d

    if-eqz v8, :cond_11

    .line 2175
    :cond_d
    invoke-direct {p0, v4}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v1

    if-eqz v8, :cond_e

    .line 2177
    iget-object v5, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v5, v1}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result v5

    add-int/2addr v5, v8

    .line 2178
    iget-object v6, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v6, v1, v5}, Landroidx/compose/runtime/SlotTableKt;->access$updateGroupSize([III)V

    :cond_e
    if-eqz v0, :cond_f

    .line 2181
    iget-object v5, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 2183
    invoke-static {v5, v1}, Landroidx/compose/runtime/SlotTableKt;->access$nodeCount([II)I

    move-result v6

    add-int/2addr v6, v0

    .line 2181
    invoke-static {v5, v1, v6}, Landroidx/compose/runtime/SlotTableKt;->access$updateNodeCount([III)V

    .line 2186
    :cond_f
    iget-object v5, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v5, v1}, Landroidx/compose/runtime/SlotTableKt;->access$isNode([II)Z

    move-result v1

    if-eqz v1, :cond_10

    move v0, v2

    .line 2187
    :cond_10
    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-direct {p0, v1, v4}, Landroidx/compose/runtime/SlotWriter;->parent([II)I

    move-result v4

    goto :goto_8

    .line 2190
    :cond_11
    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    :goto_9
    return v7
.end method

.method public final endInsert()V
    .locals 4

    .line 1966
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "Unbalanced begin/end insert"

    .line 4271
    invoke-static {v0}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 1967
    :cond_1
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    if-nez v0, :cond_4

    .line 1968
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->nodeCountStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v0}, Landroidx/compose/runtime/IntStack;->getSize()I

    move-result v0

    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->startStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v3}, Landroidx/compose/runtime/IntStack;->getSize()I

    move-result v3

    if-ne v0, v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    if-nez v1, :cond_3

    .line 1969
    const-string/jumbo v0, "startGroup/endGroup mismatch while inserting"

    .line 4278
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 1971
    :cond_3
    invoke-direct {p0}, Landroidx/compose/runtime/SlotWriter;->restoreCurrentGroupEnd()I

    :cond_4
    return-void
.end method

.method public final ensureStarted(I)V
    .locals 4

    .line 2207
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gtz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "Cannot call ensureStarted() while inserting"

    .line 4305
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 2208
    :cond_1
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    if-eq v0, p1, :cond_4

    if-lt p1, v0, :cond_2

    .line 2212
    iget v3, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    if-ge p1, v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    if-nez v1, :cond_3

    .line 2213
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Started group at "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be a subgroup of the group at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4312
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 2216
    :cond_3
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 2217
    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    .line 2218
    iget v2, p0, Landroidx/compose/runtime/SlotWriter;->currentSlotEnd:I

    .line 2219
    iput p1, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 2220
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->startGroup()V

    .line 2221
    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 2222
    iput v1, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    .line 2223
    iput v2, p0, Landroidx/compose/runtime/SlotWriter;->currentSlotEnd:I

    :cond_4
    return-void
.end method

.method public final ensureStarted(Landroidx/compose/runtime/Anchor;)V
    .locals 0

    .line 2227
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/Anchor;->toIndexFor(Landroidx/compose/runtime/SlotWriter;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotWriter;->ensureStarted(I)V

    return-void
.end method

.method public final forAllData(ILkotlin/jvm/functions/Function2;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 2300
    invoke-static {p0, p1}, Landroidx/compose/runtime/SlotWriter;->access$groupIndexToAddress(Landroidx/compose/runtime/SlotWriter;I)I

    move-result p1

    .line 2301
    invoke-static {p0}, Landroidx/compose/runtime/SlotWriter;->access$getGroups$p(Landroidx/compose/runtime/SlotWriter;)[I

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroidx/compose/runtime/SlotWriter;->access$dataIndex(Landroidx/compose/runtime/SlotWriter;[II)I

    move-result p1

    .line 2302
    invoke-static {p0}, Landroidx/compose/runtime/SlotWriter;->access$getGroups$p(Landroidx/compose/runtime/SlotWriter;)[I

    move-result-object v0

    .line 2303
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroup()I

    move-result v1

    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroup()I

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/compose/runtime/SlotWriter;->groupSize(I)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {p0, v1}, Landroidx/compose/runtime/SlotWriter;->access$groupIndexToAddress(Landroidx/compose/runtime/SlotWriter;I)I

    move-result v1

    .line 2302
    invoke-static {p0, v0, v1}, Landroidx/compose/runtime/SlotWriter;->access$dataIndex(Landroidx/compose/runtime/SlotWriter;[II)I

    move-result v0

    :goto_0
    if-ge p1, v0, :cond_0

    .line 2306
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0}, Landroidx/compose/runtime/SlotWriter;->access$getSlots$p(Landroidx/compose/runtime/SlotWriter;)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, p1}, Landroidx/compose/runtime/SlotWriter;->access$dataIndexToDataAddress(Landroidx/compose/runtime/SlotWriter;I)I

    move-result v3

    aget-object v2, v2, v3

    invoke-interface {p2, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final forEachData(ILkotlin/jvm/functions/Function2;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 2290
    invoke-static {p0, p1}, Landroidx/compose/runtime/SlotWriter;->access$groupIndexToAddress(Landroidx/compose/runtime/SlotWriter;I)I

    move-result v0

    .line 2291
    invoke-static {p0}, Landroidx/compose/runtime/SlotWriter;->access$getGroups$p(Landroidx/compose/runtime/SlotWriter;)[I

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroidx/compose/runtime/SlotWriter;->access$slotIndex(Landroidx/compose/runtime/SlotWriter;[II)I

    move-result v0

    .line 2292
    invoke-static {p0}, Landroidx/compose/runtime/SlotWriter;->access$getGroups$p(Landroidx/compose/runtime/SlotWriter;)[I

    move-result-object v1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Landroidx/compose/runtime/SlotWriter;->access$groupIndexToAddress(Landroidx/compose/runtime/SlotWriter;I)I

    move-result p1

    invoke-static {p0, v1, p1}, Landroidx/compose/runtime/SlotWriter;->access$dataIndex(Landroidx/compose/runtime/SlotWriter;[II)I

    move-result p1

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_0

    sub-int v2, v1, v0

    .line 2295
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0}, Landroidx/compose/runtime/SlotWriter;->access$getSlots$p(Landroidx/compose/runtime/SlotWriter;)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {p0, v1}, Landroidx/compose/runtime/SlotWriter;->access$dataIndexToDataAddress(Landroidx/compose/runtime/SlotWriter;I)I

    move-result v4

    aget-object v3, v3, v4

    invoke-interface {p2, v2, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final forEachTailSlot(IILkotlin/jvm/functions/Function2;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1891
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotWriter;->slotsStartIndex$runtime_release(I)I

    move-result v0

    .line 1892
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotWriter;->slotsEndIndex$runtime_release(I)I

    move-result p1

    sub-int p2, p1, p2

    .line 1893
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    :goto_0
    if-ge p2, p1, :cond_0

    .line 1894
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0}, Landroidx/compose/runtime/SlotWriter;->access$getSlots$p(Landroidx/compose/runtime/SlotWriter;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, p2}, Landroidx/compose/runtime/SlotWriter;->access$dataIndexToDataAddress(Landroidx/compose/runtime/SlotWriter;I)I

    move-result v2

    aget-object v1, v1, v2

    invoke-interface {p3, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final getClosed()Z
    .locals 1

    .line 1605
    iget-boolean v0, p0, Landroidx/compose/runtime/SlotWriter;->closed:Z

    return v0
.end method

.method public final getCollectingCalledInformation()Z
    .locals 1

    .line 1508
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->calledByMap:Landroidx/collection/MutableIntObjectMap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getCollectingSourceInformation()Z
    .locals 1

    .line 1503
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->sourceInformationMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getCurrentGroup()I
    .locals 1

    .line 1476
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    return v0
.end method

.method public final getCurrentGroupEnd()I
    .locals 1

    .line 1482
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    return v0
.end method

.method public final getParent()I
    .locals 1

    .line 1588
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    return v0
.end method

.method public final getSize$runtime_release()I
    .locals 2

    .line 3447
    invoke-direct {p0}, Landroidx/compose/runtime/SlotWriter;->getCapacity()I

    move-result v0

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getSlotsSize()I
    .locals 2

    .line 1490
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    array-length v0, v0

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getTable$runtime_release()Landroidx/compose/runtime/SlotTable;
    .locals 1

    .line 1366
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->table:Landroidx/compose/runtime/SlotTable;

    return-object v0
.end method

.method public final groupAux(I)Ljava/lang/Object;
    .locals 2

    .line 1542
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result p1

    .line 1543
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v0, p1}, Landroidx/compose/runtime/SlotTableKt;->access$hasAux([II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-direct {p0, v1, p1}, Landroidx/compose/runtime/SlotWriter;->auxIndex([II)I

    move-result p1

    aget-object p1, v0, p1

    goto :goto_0

    :cond_0
    sget-object p1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final groupKey(I)I
    .locals 1

    .line 1523
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result p1

    invoke-static {v0, p1}, Landroidx/compose/runtime/SlotTableKt;->access$key([II)I

    move-result p1

    return p1
.end method

.method public final groupObjectKey(I)Ljava/lang/Object;
    .locals 2

    .line 1529
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result p1

    .line 1530
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v0, p1}, Landroidx/compose/runtime/SlotTableKt;->access$hasObjectKey([II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v1, p1}, Landroidx/compose/runtime/SlotTableKt;->access$objectKeyIndex([II)I

    move-result p1

    aget-object p1, v0, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final groupSize(I)I
    .locals 1

    .line 1536
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result p1

    invoke-static {v0, p1}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result p1

    return p1
.end method

.method public final groupSlots()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2277
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    invoke-direct {p0, v1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroidx/compose/runtime/SlotWriter;->dataIndex([II)I

    move-result v0

    .line 2278
    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 2279
    iget v2, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    invoke-virtual {p0, v2}, Landroidx/compose/runtime/SlotWriter;->groupSize(I)I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {p0, v2}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v2

    .line 2278
    invoke-direct {p0, v1, v2}, Landroidx/compose/runtime/SlotWriter;->dataIndex([II)I

    move-result v1

    .line 2281
    new-instance v2, Landroidx/compose/runtime/SlotWriter$groupSlots$1;

    invoke-direct {v2, v0, v1, p0}, Landroidx/compose/runtime/SlotWriter$groupSlots$1;-><init>(IILandroidx/compose/runtime/SlotWriter;)V

    check-cast v2, Ljava/util/Iterator;

    return-object v2
.end method

.method public final indexInCurrentGroup(I)Z
    .locals 1

    .line 1550
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    invoke-virtual {p0, p1, v0}, Landroidx/compose/runtime/SlotWriter;->indexInGroup(II)Z

    move-result p1

    return p1
.end method

.method public final indexInGroup(II)Z
    .locals 4

    .line 1557
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    goto :goto_1

    .line 1558
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->startStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/IntStack;->peekOr(I)I

    move-result v0

    if-le p2, v0, :cond_1

    invoke-virtual {p0, p2}, Landroidx/compose/runtime/SlotWriter;->groupSize(I)I

    move-result v0

    :goto_0
    add-int/2addr v0, p2

    goto :goto_1

    .line 1560
    :cond_1
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->startStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v0, p2}, Landroidx/compose/runtime/IntStack;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_2

    .line 1562
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/SlotWriter;->groupSize(I)I

    move-result v0

    goto :goto_0

    .line 1563
    :cond_2
    invoke-direct {p0}, Landroidx/compose/runtime/SlotWriter;->getCapacity()I

    move-result v2

    iget v3, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->endStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/IntStack;->peek(I)I

    move-result v0

    sub-int v0, v2, v0

    :goto_1
    if-le p1, p2, :cond_3

    if-ge p1, v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public final indexInParent(I)Z
    .locals 2

    .line 1547
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    if-le p1, v0, :cond_0

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    if-lt p1, v1, :cond_1

    :cond_0
    if-nez v0, :cond_2

    if-nez p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final insertAux(Ljava/lang/Object;)V
    .locals 6

    .line 1724
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "Cannot insert auxiliary data when not inserting"

    .line 4208
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 1725
    :cond_1
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    .line 1726
    invoke-direct {p0, v0}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v3

    .line 1727
    iget-object v4, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v4, v3}, Landroidx/compose/runtime/SlotTableKt;->access$hasAux([II)Z

    move-result v4

    xor-int/2addr v4, v2

    if-nez v4, :cond_2

    const-string v4, "Group already has auxiliary data"

    .line 4215
    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 1728
    :cond_2
    invoke-direct {p0, v2, v0}, Landroidx/compose/runtime/SlotWriter;->insertSlots(II)V

    .line 1729
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-direct {p0, v0, v3}, Landroidx/compose/runtime/SlotWriter;->auxIndex([II)I

    move-result v0

    .line 1730
    invoke-direct {p0, v0}, Landroidx/compose/runtime/SlotWriter;->dataIndexToDataAddress(I)I

    move-result v4

    .line 1731
    iget v5, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    if-le v5, v0, :cond_6

    sub-int/2addr v5, v0

    const/4 v0, 0x3

    if-ge v5, v0, :cond_3

    move v1, v2

    :cond_3
    if-nez v1, :cond_4

    .line 1737
    const-string v0, "Moving more than two slot not supported"

    .line 4222
    invoke-static {v0}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_4
    if-le v5, v2, :cond_5

    .line 1739
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    add-int/lit8 v1, v4, 0x2

    add-int/lit8 v5, v4, 0x1

    aget-object v5, v0, v5

    aput-object v5, v0, v1

    .line 1741
    :cond_5
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    add-int/lit8 v1, v4, 0x1

    aget-object v5, v0, v4

    aput-object v5, v0, v1

    .line 1743
    :cond_6
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v0, v3}, Landroidx/compose/runtime/SlotTableKt;->access$addAux([II)V

    .line 1744
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    aput-object p1, v0, v4

    .line 1745
    iget p1, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    add-int/2addr p1, v2

    iput p1, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    return-void
.end method

.method public final isGroupEnd()Z
    .locals 2

    .line 1488
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isNode()Z
    .locals 2

    .line 1498
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-direct {p0, v0}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v0

    invoke-static {v1, v0}, Landroidx/compose/runtime/SlotTableKt;->access$isNode([II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isNode(I)Z
    .locals 1

    .line 1513
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result p1

    invoke-static {v0, p1}, Landroidx/compose/runtime/SlotTableKt;->access$isNode([II)Z

    move-result p1

    return p1
.end method

.method public final markGroup(I)V
    .locals 3

    .line 2800
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v0

    .line 2801
    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v1, v0}, Landroidx/compose/runtime/SlotTableKt;->access$hasMark([II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2802
    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroidx/compose/runtime/SlotTableKt;->access$updateMark([IIZ)V

    .line 2803
    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v1, v0}, Landroidx/compose/runtime/SlotTableKt;->access$containsMark([II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2805
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotWriter;->parent(I)I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->updateContainsMark(I)V

    :cond_0
    return-void
.end method

.method public final moveFrom(Landroidx/compose/runtime/SlotTable;IZ)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/SlotTable;",
            "IZ)",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/Anchor;",
            ">;"
        }
    .end annotation

    .line 2691
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->runtimeCheck(Z)V

    if-nez p2, :cond_1

    .line 2694
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    if-nez v0, :cond_1

    .line 2695
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->table:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->getGroupsSize()I

    move-result v0

    if-nez v0, :cond_1

    .line 2696
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->getGroups()[I

    move-result-object v0

    invoke-static {v0, p2}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->getGroupsSize()I

    move-result v3

    if-ne v0, v3, :cond_1

    .line 2700
    iget-object v5, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 2701
    iget-object v7, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    .line 2702
    iget-object v9, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    .line 2703
    iget-object v10, p0, Landroidx/compose/runtime/SlotWriter;->sourceInformationMap:Ljava/util/HashMap;

    .line 2704
    iget-object v11, p0, Landroidx/compose/runtime/SlotWriter;->calledByMap:Landroidx/collection/MutableIntObjectMap;

    .line 2705
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->getGroups()[I

    move-result-object p2

    .line 2706
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->getGroupsSize()I

    move-result p3

    .line 2707
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->getSlots()[Ljava/lang/Object;

    move-result-object v0

    .line 2708
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->getSlotsSize()I

    move-result v1

    .line 2709
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->getSourceInformationMap$runtime_release()Ljava/util/HashMap;

    move-result-object v2

    .line 2710
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->getCalledByMap$runtime_release()Landroidx/collection/MutableIntObjectMap;

    move-result-object v3

    .line 2711
    iput-object p2, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 2712
    iput-object v0, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    .line 2713
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->getAnchors$runtime_release()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    .line 2714
    iput p3, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    .line 2715
    array-length p2, p2

    div-int/lit8 p2, p2, 0x5

    sub-int/2addr p2, p3

    iput p2, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    .line 2716
    iput v1, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapStart:I

    .line 2717
    array-length p2, v0

    sub-int/2addr p2, v1

    iput p2, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    .line 2718
    iput p3, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapOwner:I

    .line 2719
    iput-object v2, p0, Landroidx/compose/runtime/SlotWriter;->sourceInformationMap:Ljava/util/HashMap;

    .line 2720
    iput-object v3, p0, Landroidx/compose/runtime/SlotWriter;->calledByMap:Landroidx/collection/MutableIntObjectMap;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v4, p1

    .line 2722
    invoke-virtual/range {v4 .. v11}, Landroidx/compose/runtime/SlotTable;->setTo$runtime_release([II[Ljava/lang/Object;ILjava/util/ArrayList;Ljava/util/HashMap;Landroidx/collection/MutableIntObjectMap;)V

    .line 2731
    iget-object p1, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    check-cast p1, Ljava/util/List;

    return-object p1

    .line 4350
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->openWriter()Landroidx/compose/runtime/SlotWriter;

    move-result-object p1

    .line 2735
    :try_start_0
    sget-object v3, Landroidx/compose/runtime/SlotWriter;->Companion:Landroidx/compose/runtime/SlotWriter$Companion;

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v4, p1

    move v5, p2

    move-object v6, p0

    move v9, p3

    invoke-static/range {v3 .. v9}, Landroidx/compose/runtime/SlotWriter$Companion;->access$moveGroup(Landroidx/compose/runtime/SlotWriter$Companion;Landroidx/compose/runtime/SlotWriter;ILandroidx/compose/runtime/SlotWriter;ZZZ)Ljava/util/List;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4356
    invoke-virtual {p1, v1}, Landroidx/compose/runtime/SlotWriter;->close(Z)V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-virtual {p1, v2}, Landroidx/compose/runtime/SlotWriter;->close(Z)V

    throw p2
.end method

.method public final moveGroup(I)V
    .locals 17

    move-object/from16 v0, p0

    .line 2316
    iget v1, v0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-nez v1, :cond_1

    const-string v1, "Cannot move a group while inserting"

    .line 4326
    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :cond_1
    if-ltz p1, :cond_2

    move v1, v3

    goto :goto_1

    :cond_2
    move v1, v2

    .line 4332
    :goto_1
    const-string v4, "Parameter offset is out of bounds"

    if-nez v1, :cond_3

    .line 4333
    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :cond_3
    if-nez p1, :cond_4

    return-void

    .line 2319
    :cond_4
    iget v1, v0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 2320
    iget v5, v0, Landroidx/compose/runtime/SlotWriter;->parent:I

    .line 2321
    iget v6, v0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    move/from16 v7, p1

    move v8, v1

    :goto_2
    if-lez v7, :cond_7

    .line 2327
    iget-object v9, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 2328
    invoke-direct {v0, v8}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v10

    .line 2327
    invoke-static {v9, v10}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result v9

    add-int/2addr v8, v9

    if-gt v8, v6, :cond_5

    move v9, v3

    goto :goto_3

    :cond_5
    move v9, v2

    :goto_3
    if-nez v9, :cond_6

    .line 4340
    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :cond_6
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 2334
    :cond_7
    iget-object v4, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 2335
    invoke-direct {v0, v8}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v6

    .line 2334
    invoke-static {v4, v6}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result v4

    .line 2337
    iget-object v6, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    iget v7, v0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    invoke-direct {v0, v7}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v7

    invoke-direct {v0, v6, v7}, Landroidx/compose/runtime/SlotWriter;->dataIndex([II)I

    move-result v6

    .line 2338
    iget-object v7, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-direct {v0, v8}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v9

    invoke-direct {v0, v7, v9}, Landroidx/compose/runtime/SlotWriter;->dataIndex([II)I

    move-result v7

    .line 2339
    iget-object v9, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    add-int/2addr v8, v4

    .line 2340
    invoke-direct {v0, v8}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v10

    .line 2339
    invoke-direct {v0, v9, v10}, Landroidx/compose/runtime/SlotWriter;->dataIndex([II)I

    move-result v9

    sub-int v10, v9, v7

    .line 2373
    iget v11, v0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    sub-int/2addr v11, v3

    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-direct {v0, v10, v11}, Landroidx/compose/runtime/SlotWriter;->insertSlots(II)V

    .line 2376
    invoke-direct {v0, v4}, Landroidx/compose/runtime/SlotWriter;->insertGroups(I)V

    .line 2379
    iget-object v11, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    .line 2380
    invoke-direct {v0, v8}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v12

    mul-int/lit8 v12, v12, 0x5

    .line 2382
    invoke-direct {v0, v1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v13

    mul-int/lit8 v13, v13, 0x5

    mul-int/lit8 v14, v4, 0x5

    add-int/2addr v14, v12

    .line 2383
    invoke-static {v11, v11, v13, v12, v14}, Lkotlin/collections/ArraysKt;->copyInto([I[IIII)[I

    if-lez v10, :cond_8

    .line 2392
    iget-object v12, v0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    add-int v13, v7, v10

    .line 2396
    invoke-direct {v0, v13}, Landroidx/compose/runtime/SlotWriter;->dataIndexToDataAddress(I)I

    move-result v13

    add-int/2addr v9, v10

    .line 2397
    invoke-direct {v0, v9}, Landroidx/compose/runtime/SlotWriter;->dataIndexToDataAddress(I)I

    move-result v9

    .line 2393
    invoke-static {v12, v12, v6, v13, v9}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    :cond_8
    add-int/2addr v7, v10

    sub-int v6, v7, v6

    .line 2403
    iget v9, v0, Landroidx/compose/runtime/SlotWriter;->slotsGapStart:I

    .line 2404
    iget v12, v0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    .line 2405
    iget-object v13, v0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    array-length v13, v13

    .line 2406
    iget v14, v0, Landroidx/compose/runtime/SlotWriter;->slotsGapOwner:I

    add-int v15, v1, v4

    move v2, v1

    :goto_4
    if-ge v2, v15, :cond_a

    .line 2408
    invoke-direct {v0, v2}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v3

    .line 2409
    invoke-direct {v0, v11, v3}, Landroidx/compose/runtime/SlotWriter;->dataIndex([II)I

    move-result v16

    move/from16 p1, v9

    sub-int v9, v16, v6

    move/from16 v16, v6

    if-ge v14, v3, :cond_9

    const/4 v6, 0x0

    goto :goto_5

    :cond_9
    move/from16 v6, p1

    .line 2411
    :goto_5
    invoke-direct {v0, v9, v6, v12, v13}, Landroidx/compose/runtime/SlotWriter;->dataIndexToDataAnchor(IIII)I

    move-result v6

    .line 2417
    invoke-direct {v0, v11, v3, v6}, Landroidx/compose/runtime/SlotWriter;->updateDataIndex([III)V

    add-int/lit8 v2, v2, 0x1

    move/from16 v9, p1

    move/from16 v6, v16

    const/4 v3, 0x1

    goto :goto_4

    .line 2421
    :cond_a
    invoke-direct {v0, v8, v1, v4}, Landroidx/compose/runtime/SlotWriter;->moveAnchors(III)V

    .line 2424
    invoke-direct {v0, v8, v4}, Landroidx/compose/runtime/SlotWriter;->removeGroups(II)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-nez v2, :cond_b

    .line 2425
    const-string v2, "Unexpectedly removed anchors"

    .line 4347
    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 2428
    :cond_b
    iget v2, v0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    invoke-direct {v0, v5, v2, v1}, Landroidx/compose/runtime/SlotWriter;->fixParentAnchorsFor(III)V

    if-lez v10, :cond_c

    sub-int/2addr v8, v3

    .line 2432
    invoke-direct {v0, v7, v10, v8}, Landroidx/compose/runtime/SlotWriter;->removeSlots(III)V

    :cond_c
    return-void
.end method

.method public final moveIntoGroupFrom(ILandroidx/compose/runtime/SlotTable;I)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/compose/runtime/SlotTable;",
            "I)",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/Anchor;",
            ">;"
        }
    .end annotation

    move-object/from16 v10, p0

    .line 2768
    iget v0, v10, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-gtz v0, :cond_0

    iget v0, v10, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    add-int v0, v0, p1

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/SlotWriter;->groupSize(I)I

    move-result v0

    if-ne v0, v12, :cond_0

    move v0, v12

    goto :goto_0

    :cond_0
    move v0, v11

    :goto_0
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->runtimeCheck(Z)V

    .line 2769
    iget v0, v10, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 2770
    iget v13, v10, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    .line 2771
    iget v14, v10, Landroidx/compose/runtime/SlotWriter;->currentSlotEnd:I

    .line 2772
    invoke-virtual/range {p0 .. p1}, Landroidx/compose/runtime/SlotWriter;->advanceBy(I)V

    .line 2773
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/SlotWriter;->startGroup()V

    .line 2774
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/SlotWriter;->beginInsert()V

    .line 4359
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/runtime/SlotTable;->openWriter()Landroidx/compose/runtime/SlotWriter;

    move-result-object v15

    .line 2776
    :try_start_0
    sget-object v1, Landroidx/compose/runtime/SlotWriter;->Companion:Landroidx/compose/runtime/SlotWriter$Companion;

    const/16 v8, 0x20

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v2, v15

    move/from16 v3, p3

    move-object/from16 v4, p0

    invoke-static/range {v1 .. v9}, Landroidx/compose/runtime/SlotWriter$Companion;->moveGroup$default(Landroidx/compose/runtime/SlotWriter$Companion;Landroidx/compose/runtime/SlotWriter;ILandroidx/compose/runtime/SlotWriter;ZZZILjava/lang/Object;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4365
    invoke-virtual {v15, v12}, Landroidx/compose/runtime/SlotWriter;->close(Z)V

    .line 2784
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/SlotWriter;->endInsert()V

    .line 2785
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/SlotWriter;->endGroup()I

    .line 2786
    iput v0, v10, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 2787
    iput v13, v10, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    .line 2788
    iput v14, v10, Landroidx/compose/runtime/SlotWriter;->currentSlotEnd:I

    return-object v1

    :catchall_0
    move-exception v0

    .line 4365
    invoke-virtual {v15, v11}, Landroidx/compose/runtime/SlotWriter;->close(Z)V

    throw v0
.end method

.method public final moveTo(Landroidx/compose/runtime/Anchor;ILandroidx/compose/runtime/SlotWriter;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/Anchor;",
            "I",
            "Landroidx/compose/runtime/SlotWriter;",
            ")",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/Anchor;",
            ">;"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v3, p3

    .line 2641
    iget v0, v3, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-lez v0, :cond_0

    move v0, v10

    goto :goto_0

    :cond_0
    move v0, v11

    :goto_0
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->runtimeCheck(Z)V

    .line 2642
    iget v0, v9, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    if-nez v0, :cond_1

    move v0, v10

    goto :goto_1

    :cond_1
    move v0, v11

    :goto_1
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->runtimeCheck(Z)V

    .line 2643
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/Anchor;->getValid()Z

    move-result v0

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->runtimeCheck(Z)V

    .line 2644
    invoke-virtual/range {p0 .. p1}, Landroidx/compose/runtime/SlotWriter;->anchorIndex(Landroidx/compose/runtime/Anchor;)I

    move-result v0

    add-int v2, v0, p2

    .line 2645
    iget v12, v9, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    if-gt v12, v2, :cond_2

    .line 2646
    iget v0, v9, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    if-ge v2, v0, :cond_2

    move v0, v10

    goto :goto_2

    :cond_2
    move v0, v11

    :goto_2
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->runtimeCheck(Z)V

    .line 2647
    invoke-virtual {v9, v2}, Landroidx/compose/runtime/SlotWriter;->parent(I)I

    move-result v13

    .line 2648
    invoke-virtual {v9, v2}, Landroidx/compose/runtime/SlotWriter;->groupSize(I)I

    move-result v14

    .line 2649
    invoke-virtual {v9, v2}, Landroidx/compose/runtime/SlotWriter;->isNode(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move v15, v10

    goto :goto_3

    :cond_3
    invoke-virtual {v9, v2}, Landroidx/compose/runtime/SlotWriter;->nodeCount(I)I

    move-result v0

    move v15, v0

    .line 2650
    :goto_3
    sget-object v0, Landroidx/compose/runtime/SlotWriter;->Companion:Landroidx/compose/runtime/SlotWriter$Companion;

    const/16 v7, 0x20

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p3

    invoke-static/range {v0 .. v8}, Landroidx/compose/runtime/SlotWriter$Companion;->moveGroup$default(Landroidx/compose/runtime/SlotWriter$Companion;Landroidx/compose/runtime/SlotWriter;ILandroidx/compose/runtime/SlotWriter;ZZZILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 2658
    invoke-direct {v9, v13}, Landroidx/compose/runtime/SlotWriter;->updateContainsMark(I)V

    if-lez v15, :cond_4

    move v1, v10

    goto :goto_4

    :cond_4
    move v1, v11

    :goto_4
    if-lt v13, v12, :cond_7

    .line 2664
    invoke-direct {v9, v13}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v2

    .line 2665
    iget-object v3, v9, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v3, v2}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result v4

    sub-int/2addr v4, v14

    invoke-static {v3, v2, v4}, Landroidx/compose/runtime/SlotTableKt;->access$updateGroupSize([III)V

    if-eqz v1, :cond_6

    .line 2667
    iget-object v3, v9, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v3, v2}, Landroidx/compose/runtime/SlotTableKt;->access$isNode([II)Z

    move-result v3

    if-eqz v3, :cond_5

    move v1, v11

    goto :goto_5

    .line 2670
    :cond_5
    iget-object v3, v9, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v3, v2}, Landroidx/compose/runtime/SlotTableKt;->access$nodeCount([II)I

    move-result v4

    sub-int/2addr v4, v15

    invoke-static {v3, v2, v4}, Landroidx/compose/runtime/SlotTableKt;->access$updateNodeCount([III)V

    .line 2672
    :cond_6
    :goto_5
    invoke-virtual {v9, v13}, Landroidx/compose/runtime/SlotWriter;->parent(I)I

    move-result v13

    goto :goto_4

    :cond_7
    if-eqz v1, :cond_9

    .line 2675
    iget v1, v9, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    if-lt v1, v15, :cond_8

    goto :goto_6

    :cond_8
    move v10, v11

    :goto_6
    invoke-static {v10}, Landroidx/compose/runtime/ComposerKt;->runtimeCheck(Z)V

    .line 2676
    iget v1, v9, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    sub-int/2addr v1, v15

    iput v1, v9, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    :cond_9
    return-object v0
.end method

.method public final node(I)Ljava/lang/Object;
    .locals 2

    .line 1574
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result p1

    .line 1575
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v0, p1}, Landroidx/compose/runtime/SlotTableKt;->access$isNode([II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1576
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-direct {p0, v1, p1}, Landroidx/compose/runtime/SlotWriter;->nodeIndex([II)I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->dataIndexToDataAddress(I)I

    move-result p1

    aget-object p1, v0, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final node(Landroidx/compose/runtime/Anchor;)Ljava/lang/Object;
    .locals 0

    .line 1583
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/Anchor;->toIndexFor(Landroidx/compose/runtime/SlotWriter;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotWriter;->node(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final nodeCount(I)I
    .locals 1

    .line 1518
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result p1

    invoke-static {v0, p1}, Landroidx/compose/runtime/SlotTableKt;->access$nodeCount([II)I

    move-result p1

    return p1
.end method

.method public final parent(I)I
    .locals 1

    .line 1594
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-direct {p0, v0, p1}, Landroidx/compose/runtime/SlotWriter;->parent([II)I

    move-result p1

    return p1
.end method

.method public final parent(Landroidx/compose/runtime/Anchor;)I
    .locals 1

    .line 1600
    invoke-virtual {p1}, Landroidx/compose/runtime/Anchor;->getValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotWriter;->anchorIndex(Landroidx/compose/runtime/Anchor;)I

    move-result p1

    invoke-direct {p0, v0, p1}, Landroidx/compose/runtime/SlotWriter;->parent([II)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public final recordGroupSourceInformation(Ljava/lang/String;)V
    .locals 1

    .line 1754
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    if-lez v0, :cond_0

    .line 1755
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    invoke-direct {p0, v0, p1}, Landroidx/compose/runtime/SlotWriter;->groupSourceInformationFor(ILjava/lang/String;)Landroidx/compose/runtime/GroupSourceInformation;

    :cond_0
    return-void
.end method

.method public final recordGrouplessCallSourceInformationEnd()V
    .locals 2

    .line 1769
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    if-lez v0, :cond_0

    .line 1770
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/compose/runtime/SlotWriter;->groupSourceInformationFor(ILjava/lang/String;)Landroidx/compose/runtime/GroupSourceInformation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1771
    invoke-direct {p0}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroupSlotIndex()I

    move-result v1

    .line 1770
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GroupSourceInformation;->endGrouplessCall(I)V

    :cond_0
    return-void
.end method

.method public final recordGrouplessCallSourceInformationStart(ILjava/lang/String;)V
    .locals 2

    .line 1760
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    if-lez v0, :cond_1

    .line 1761
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->calledByMap:Landroidx/collection/MutableIntObjectMap;

    if-eqz v0, :cond_0

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    invoke-virtual {p0, v1}, Landroidx/compose/runtime/SlotWriter;->groupKey(I)I

    move-result v1

    invoke-static {v0, p1, v1}, Landroidx/compose/runtime/SlotTableKt;->access$add(Landroidx/collection/MutableIntObjectMap;II)V

    .line 1762
    :cond_0
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/compose/runtime/SlotWriter;->groupSourceInformationFor(ILjava/lang/String;)Landroidx/compose/runtime/GroupSourceInformation;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1763
    invoke-direct {p0}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroupSlotIndex()I

    move-result v1

    .line 1762
    invoke-virtual {v0, p1, p2, v1}, Landroidx/compose/runtime/GroupSourceInformation;->startGrouplessCall(ILjava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public final removeGroup()Z
    .locals 7

    .line 2244
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "Cannot remove group while inserting"

    .line 4319
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 2245
    :cond_1
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 2246
    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    .line 2247
    iget-object v2, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-direct {p0, v0}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v3

    invoke-direct {p0, v2, v3}, Landroidx/compose/runtime/SlotWriter;->dataIndex([II)I

    move-result v2

    .line 2248
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->skipGroup()I

    move-result v3

    .line 2251
    iget v4, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    invoke-direct {p0, v4}, Landroidx/compose/runtime/SlotWriter;->sourceInformationOf(I)Landroidx/compose/runtime/GroupSourceInformation;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 2252
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/SlotWriter;->tryAnchor$runtime_release(I)Landroidx/compose/runtime/Anchor;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 2253
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GroupSourceInformation;->removeAnchor(Landroidx/compose/runtime/Anchor;)Z

    .line 2259
    :cond_2
    iget-object v4, p0, Landroidx/compose/runtime/SlotWriter;->pendingRecalculateMarks:Landroidx/compose/runtime/PrioritySet;

    if-eqz v4, :cond_3

    .line 2260
    :goto_1
    invoke-virtual {v4}, Landroidx/compose/runtime/PrioritySet;->isNotEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Landroidx/compose/runtime/PrioritySet;->peek()I

    move-result v5

    if-lt v5, v0, :cond_3

    .line 2261
    invoke-virtual {v4}, Landroidx/compose/runtime/PrioritySet;->takeMax()I

    goto :goto_1

    .line 2265
    :cond_3
    iget v4, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    sub-int/2addr v4, v0

    invoke-direct {p0, v0, v4}, Landroidx/compose/runtime/SlotWriter;->removeGroups(II)Z

    move-result v4

    .line 2266
    iget v5, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    sub-int/2addr v5, v2

    add-int/lit8 v6, v0, -0x1

    invoke-direct {p0, v2, v5, v6}, Landroidx/compose/runtime/SlotWriter;->removeSlots(III)V

    .line 2267
    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 2268
    iput v1, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    .line 2269
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    sub-int/2addr v0, v3

    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    return v4
.end method

.method public final reset()V
    .locals 3

    .line 1639
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "Cannot reset when inserting"

    .line 4184
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 1640
    :cond_1
    invoke-direct {p0}, Landroidx/compose/runtime/SlotWriter;->recalculateMarks()V

    .line 1641
    iput v1, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 1642
    invoke-direct {p0}, Landroidx/compose/runtime/SlotWriter;->getCapacity()I

    move-result v0

    iget v2, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    sub-int/2addr v0, v2

    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    .line 1643
    iput v1, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    .line 1644
    iput v1, p0, Landroidx/compose/runtime/SlotWriter;->currentSlotEnd:I

    .line 1645
    iput v1, p0, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    return-void
.end method

.method public final seek(Landroidx/compose/runtime/Anchor;)V
    .locals 1

    .line 1941
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/Anchor;->toIndexFor(Landroidx/compose/runtime/SlotWriter;)I

    move-result p1

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotWriter;->advanceBy(I)V

    return-void
.end method

.method public final set(IILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1847
    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/SlotWriter;->slotIndexOfGroupSlotIndex(II)I

    move-result p1

    .line 1848
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->dataIndexToDataAddress(I)I

    move-result p1

    .line 1849
    iget-object p2, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    aget-object v0, p2, p1

    .line 1850
    aput-object p3, p2, p1

    return-object v0
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1826
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    invoke-virtual {p0, v0, p1, p2}, Landroidx/compose/runtime/SlotWriter;->set(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 3

    .line 1816
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->currentSlotEnd:I

    const/4 v2, 0x1

    if-gt v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 1817
    const-string/jumbo v0, "Writing to an invalid slot"

    .line 4236
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 1819
    :cond_1
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v1}, Landroidx/compose/runtime/SlotWriter;->dataIndexToDataAddress(I)I

    move-result v1

    aput-object p1, v0, v1

    return-void
.end method

.method public final skip()Ljava/lang/Object;
    .locals 3

    .line 1859
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    if-lez v0, :cond_0

    .line 1860
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroidx/compose/runtime/SlotWriter;->insertSlots(II)V

    .line 1862
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    invoke-direct {p0, v1}, Landroidx/compose/runtime/SlotWriter;->dataIndexToDataAddress(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final skipGroup()I
    .locals 3

    .line 2233
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    invoke-direct {p0, v0}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v0

    .line 2234
    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    iget-object v2, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v2, v0}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    move-result v2

    add-int/2addr v1, v2

    .line 2235
    iput v1, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 2236
    iget-object v2, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-direct {p0, v1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v1

    invoke-direct {p0, v2, v1}, Landroidx/compose/runtime/SlotWriter;->dataIndex([II)I

    move-result v1

    iput v1, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    .line 2237
    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v1, v0}, Landroidx/compose/runtime/SlotTableKt;->access$isNode([II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v1, v0}, Landroidx/compose/runtime/SlotTableKt;->access$nodeCount([II)I

    move-result v0

    :goto_0
    return v0
.end method

.method public final skipToGroupEnd()V
    .locals 2

    .line 1947
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    .line 1948
    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    .line 1949
    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-direct {p0, v0}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v0

    invoke-direct {p0, v1, v0}, Landroidx/compose/runtime/SlotWriter;->dataIndex([II)I

    move-result v0

    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    return-void
.end method

.method public final slot(II)Ljava/lang/Object;
    .locals 2

    .line 1876
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v0

    .line 1877
    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-direct {p0, v1, v0}, Landroidx/compose/runtime/SlotWriter;->slotIndex([II)I

    move-result v0

    .line 1878
    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result p1

    invoke-direct {p0, v1, p1}, Landroidx/compose/runtime/SlotWriter;->dataIndex([II)I

    move-result p1

    add-int/2addr p2, v0

    if-gt v0, p2, :cond_0

    if-ge p2, p1, :cond_0

    .line 1883
    invoke-direct {p0, p2}, Landroidx/compose/runtime/SlotWriter;->dataIndexToDataAddress(I)I

    move-result p1

    .line 1884
    iget-object p2, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    aget-object p1, p2, p1

    return-object p1

    .line 1881
    :cond_0
    sget-object p1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final slot(Landroidx/compose/runtime/Anchor;I)Ljava/lang/Object;
    .locals 0

    .line 1869
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotWriter;->anchorIndex(Landroidx/compose/runtime/Anchor;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/SlotWriter;->slot(II)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final slotIndexOfGroupSlotIndex(II)I
    .locals 3

    .line 1832
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v0

    .line 1833
    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-direct {p0, v1, v0}, Landroidx/compose/runtime/SlotWriter;->slotIndex([II)I

    move-result v0

    .line 1834
    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    add-int/lit8 v2, p1, 0x1

    invoke-direct {p0, v2}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Landroidx/compose/runtime/SlotWriter;->dataIndex([II)I

    move-result v1

    add-int v2, v0, p2

    if-lt v2, v0, :cond_0

    if-ge v2, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 1838
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Write to an invalid slot index "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " for group "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4243
    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :cond_1
    return v2
.end method

.method public final slotsEndAllIndex$runtime_release(I)I
    .locals 2

    .line 1913
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotWriter;->groupSize(I)I

    move-result v1

    add-int/2addr p1, v1

    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result p1

    invoke-direct {p0, v0, p1}, Landroidx/compose/runtime/SlotWriter;->dataIndex([II)I

    move-result p1

    return p1
.end method

.method public final slotsEndIndex$runtime_release(I)I
    .locals 1

    .line 1910
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result p1

    invoke-direct {p0, v0, p1}, Landroidx/compose/runtime/SlotWriter;->dataIndex([II)I

    move-result p1

    return p1
.end method

.method public final slotsStartIndex$runtime_release(I)I
    .locals 1

    .line 1903
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result p1

    invoke-direct {p0, v0, p1}, Landroidx/compose/runtime/SlotWriter;->slotIndex([II)I

    move-result p1

    return p1
.end method

.method public final startData(ILjava/lang/Object;)V
    .locals 2

    .line 2023
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Landroidx/compose/runtime/SlotWriter;->startGroup(ILjava/lang/Object;ZLjava/lang/Object;)V

    return-void
.end method

.method public final startData(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 2013
    invoke-direct {p0, p1, p2, v0, p3}, Landroidx/compose/runtime/SlotWriter;->startGroup(ILjava/lang/Object;ZLjava/lang/Object;)V

    return-void
.end method

.method public final startGroup()V
    .locals 3

    .line 1979
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "Key must be supplied when inserting"

    .line 4285
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 1980
    :cond_1
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v0, v1, v2}, Landroidx/compose/runtime/SlotWriter;->startGroup(ILjava/lang/Object;ZLjava/lang/Object;)V

    return-void
.end method

.method public final startGroup(I)V
    .locals 3

    .line 1986
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2, v1}, Landroidx/compose/runtime/SlotWriter;->startGroup(ILjava/lang/Object;ZLjava/lang/Object;)V

    return-void
.end method

.method public final startGroup(ILjava/lang/Object;)V
    .locals 2

    .line 1995
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    .line 1991
    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/compose/runtime/SlotWriter;->startGroup(ILjava/lang/Object;ZLjava/lang/Object;)V

    return-void
.end method

.method public final startNode(ILjava/lang/Object;)V
    .locals 2

    .line 2002
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/compose/runtime/SlotWriter;->startGroup(ILjava/lang/Object;ZLjava/lang/Object;)V

    return-void
.end method

.method public final startNode(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    .line 2008
    invoke-direct {p0, p1, p2, v0, p3}, Landroidx/compose/runtime/SlotWriter;->startGroup(ILjava/lang/Object;ZLjava/lang/Object;)V

    return-void
.end method

.method public final toDebugString()Ljava/lang/String;
    .locals 9

    .line 3330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3331
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "append(value)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "append(\'\\n\')"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3332
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "  parent:    "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3333
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "  current:   "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3334
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "  group gap: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v5, 0x2d

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v6, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    iget v7, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    add-int/2addr v6, v7

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v6, 0x28

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v7, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v7, 0x29

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3335
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v8, "  slots gap: "

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapStart:I

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapStart:I

    iget v8, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    add-int/2addr v5, v8

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3336
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "  gap owner: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapOwner:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3337
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getSize$runtime_release()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 3338
    invoke-direct {p0, v0, v2}, Landroidx/compose/runtime/SlotWriter;->groupAsString(Ljava/lang/StringBuilder;I)V

    .line 3339
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3330
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 2860
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SlotWriter(current = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getSize$runtime_release()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " gap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2861
    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    .line 2860
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2861
    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    iget v2, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    add-int/2addr v1, v2

    .line 2860
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final trimTailSlots(I)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 1695
    :goto_0
    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->runtimeCheck(Z)V

    .line 1696
    iget v2, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    .line 1697
    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-direct {p0, v2}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v4

    invoke-direct {p0, v3, v4}, Landroidx/compose/runtime/SlotWriter;->slotIndex([II)I

    move-result v3

    .line 1698
    iget-object v4, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    add-int/lit8 v5, v2, 0x1

    invoke-direct {p0, v5}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v5

    invoke-direct {p0, v4, v5}, Landroidx/compose/runtime/SlotWriter;->dataIndex([II)I

    move-result v4

    sub-int/2addr v4, p1

    if-lt v4, v3, :cond_1

    move v0, v1

    .line 1700
    :cond_1
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->runtimeCheck(Z)V

    .line 1701
    invoke-direct {p0, v4, p1, v2}, Landroidx/compose/runtime/SlotWriter;->removeSlots(III)V

    .line 1702
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    if-lt v0, v3, :cond_2

    sub-int/2addr v0, p1

    .line 1703
    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    :cond_2
    return-void
.end method

.method public final tryAnchor$runtime_release(I)Landroidx/compose/runtime/Anchor;
    .locals 2

    if-ltz p1, :cond_0

    .line 3189
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getSize$runtime_release()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getSize$runtime_release()I

    move-result v1

    invoke-static {v0, p1, v1}, Landroidx/compose/runtime/SlotTableKt;->access$find(Ljava/util/ArrayList;II)Landroidx/compose/runtime/Anchor;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final update(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1653
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    if-lez v0, :cond_2

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapStart:I

    if-eq v0, v1, :cond_2

    .line 1656
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->deferredSlotWrites:Landroidx/collection/MutableIntObjectMap;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    new-instance v0, Landroidx/collection/MutableIntObjectMap;

    invoke-direct {v0, v3, v2, v1}, Landroidx/collection/MutableIntObjectMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1657
    :cond_0
    iput-object v0, p0, Landroidx/compose/runtime/SlotWriter;->deferredSlotWrites:Landroidx/collection/MutableIntObjectMap;

    .line 1658
    iget v4, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    .line 4188
    invoke-virtual {v0, v4}, Landroidx/collection/MutableIntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    .line 1658
    new-instance v5, Landroidx/collection/MutableObjectList;

    invoke-direct {v5, v3, v2, v1}, Landroidx/collection/MutableObjectList;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 4188
    invoke-virtual {v0, v4, v5}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    .line 1658
    :cond_1
    check-cast v5, Landroidx/collection/MutableObjectList;

    .line 1659
    invoke-virtual {v5, p1}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)Z

    .line 1660
    sget-object p1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1662
    :cond_2
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotWriter;->rawUpdate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final updateAux(Ljava/lang/Object;)V
    .locals 3

    .line 1710
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    invoke-direct {p0, v0}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v0

    .line 1711
    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v1, v0}, Landroidx/compose/runtime/SlotTableKt;->access$hasAux([II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1712
    const-string v1, "Updating the data of a group that was not created with a data slot"

    .line 4201
    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 1714
    :cond_0
    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    iget-object v2, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-direct {p0, v2, v0}, Landroidx/compose/runtime/SlotWriter;->auxIndex([II)I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/runtime/SlotWriter;->dataIndexToDataAddress(I)I

    move-result v0

    aput-object p1, v1, v0

    return-void
.end method

.method public final updateNode(Landroidx/compose/runtime/Anchor;Ljava/lang/Object;)V
    .locals 0

    .line 1805
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/Anchor;->toIndexFor(Landroidx/compose/runtime/SlotWriter;)I

    move-result p1

    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/SlotWriter;->updateNodeOfGroup(ILjava/lang/Object;)V

    return-void
.end method

.method public final updateNode(Ljava/lang/Object;)V
    .locals 1

    .line 1800
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    invoke-direct {p0, v0, p1}, Landroidx/compose/runtime/SlotWriter;->updateNodeOfGroup(ILjava/lang/Object;)V

    return-void
.end method

.method public final updateParentNode(Ljava/lang/Object;)V
    .locals 1

    .line 1810
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    invoke-direct {p0, v0, p1}, Landroidx/compose/runtime/SlotWriter;->updateNodeOfGroup(ILjava/lang/Object;)V

    return-void
.end method

.method public final updateToTableMaps()V
    .locals 1

    .line 1749
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->table:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->getSourceInformationMap$runtime_release()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/SlotWriter;->sourceInformationMap:Ljava/util/HashMap;

    .line 1750
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->table:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->getCalledByMap$runtime_release()Landroidx/collection/MutableIntObjectMap;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/SlotWriter;->calledByMap:Landroidx/collection/MutableIntObjectMap;

    return-void
.end method

.method public final verifyDataAnchors$runtime_release()V
    .locals 12

    .line 3397
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapOwner:I

    .line 3399
    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    array-length v1, v1

    iget v2, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    sub-int/2addr v1, v2

    .line 3400
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getSize$runtime_release()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v4, v2, :cond_7

    .line 3401
    invoke-direct {p0, v4}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v7

    .line 3402
    iget-object v8, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v8, v7}, Landroidx/compose/runtime/SlotTableKt;->access$dataAnchor([II)I

    move-result v8

    .line 3403
    iget-object v9, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-direct {p0, v9, v7}, Landroidx/compose/runtime/SlotWriter;->dataIndex([II)I

    move-result v7

    const/4 v9, 0x1

    if-lt v7, v5, :cond_0

    move v10, v9

    goto :goto_1

    :cond_0
    move v10, v3

    :goto_1
    if-nez v10, :cond_1

    .line 3405
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Data index out of order at "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", previous = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", current = "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4405
    invoke-static {v5}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_1
    if-gt v7, v1, :cond_2

    move v5, v9

    goto :goto_2

    :cond_2
    move v5, v3

    :goto_2
    if-nez v5, :cond_3

    .line 3409
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, "Data index, "

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", out of bound at "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4412
    invoke-static {v5}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_3
    if-gez v8, :cond_6

    if-nez v6, :cond_6

    if-ne v0, v4, :cond_4

    move v5, v9

    goto :goto_3

    :cond_4
    move v5, v3

    :goto_3
    if-nez v5, :cond_5

    .line 3413
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Expected the slot gap owner to be "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " found gap at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4419
    invoke-static {v5}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_5
    move v6, v9

    :cond_6
    add-int/lit8 v4, v4, 0x1

    move v5, v7

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method public final verifyParentAnchors$runtime_release()V
    .locals 9

    .line 3423
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    .line 3424
    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    .line 3425
    invoke-direct {p0}, Landroidx/compose/runtime/SlotWriter;->getCapacity()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    .line 3426
    :goto_0
    const-string v5, "Expected a start relative anchor at "

    const/4 v6, -0x2

    const/4 v7, 0x1

    if-ge v4, v0, :cond_2

    .line 3427
    iget-object v8, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v8, v4}, Landroidx/compose/runtime/SlotTableKt;->access$parentAnchor([II)I

    move-result v8

    if-le v8, v6, :cond_0

    goto :goto_1

    :cond_0
    move v7, v3

    :goto_1
    if-nez v7, :cond_1

    .line 3429
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4426
    invoke-static {v5}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    add-int/2addr v1, v0

    :goto_2
    if-ge v1, v2, :cond_7

    .line 3433
    iget-object v4, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v4, v1}, Landroidx/compose/runtime/SlotTableKt;->access$parentAnchor([II)I

    move-result v4

    .line 3434
    invoke-direct {p0, v4}, Landroidx/compose/runtime/SlotWriter;->parentAnchorToIndex(I)I

    move-result v8

    if-ge v8, v0, :cond_4

    if-le v4, v6, :cond_3

    move v4, v7

    goto :goto_3

    :cond_3
    move v4, v3

    :goto_3
    if-nez v4, :cond_6

    .line 3437
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4433
    invoke-static {v4}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    goto :goto_5

    :cond_4
    if-gt v4, v6, :cond_5

    move v4, v7

    goto :goto_4

    :cond_5
    move v4, v3

    :goto_4
    if-nez v4, :cond_6

    .line 3441
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "Expected an end relative anchor at "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4440
    invoke-static {v4}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_6
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    return-void
.end method
