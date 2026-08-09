.class public final Landroidx/navigation/compose/NavGraphBuilderKt;
.super Ljava/lang/Object;
.source "NavGraphBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNavGraphBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavGraphBuilder.kt\nandroidx/navigation/compose/NavGraphBuilderKt\n+ 2 NavigatorProvider.kt\nandroidx/navigation/NavigatorProviderKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,627:1\n157#2:628\n157#2:633\n157#2:638\n157#2:643\n157#2:654\n157#2:659\n1855#3,2:629\n1855#3,2:631\n1855#3,2:634\n1855#3,2:636\n1855#3,2:639\n1855#3,2:641\n1855#3,2:644\n1855#3,2:646\n1855#3,2:648\n1855#3,2:650\n1855#3,2:652\n1855#3,2:655\n1855#3,2:657\n1855#3,2:661\n1#4:660\n*S KotlinDebug\n*F\n+ 1 NavGraphBuilder.kt\nandroidx/navigation/compose/NavGraphBuilderKt\n*L\n56#1:628\n106#1:633\n158#1:638\n212#1:643\n584#1:654\n618#1:659\n59#1:629,2\n62#1:631,2\n108#1:634,2\n109#1:636,2\n160#1:639,2\n161#1:641,2\n218#1:644,2\n347#1:646,2\n348#1:648,2\n449#1:650,2\n550#1:652,2\n590#1:655,2\n591#1:657,2\n624#1:661,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0084\u0001\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\u001aR\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u000e\u0008\u0002\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u000e\u0008\u0002\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00062\u0017\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u00010\u000b\u00a2\u0006\u0002\u0008\rH\u0007\u00a2\u0006\u0002\u0010\u000e\u001a\u0085\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u000e\u0008\u0002\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u000e\u0008\u0002\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00062(\u0008\u0002\u0010\u000f\u001a\"\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0011\u0018\u00010\u000b\u00a2\u0006\u0002\u0008\u0012\u00a2\u0006\u0002\u0008\u00132(\u0008\u0002\u0010\u0014\u001a\"\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0015\u0018\u00010\u000b\u00a2\u0006\u0002\u0008\u0012\u00a2\u0006\u0002\u0008\u00132(\u0008\u0002\u0010\u0016\u001a\"\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0011\u0018\u00010\u000b\u00a2\u0006\u0002\u0008\u0012\u00a2\u0006\u0002\u0008\u00132(\u0008\u0002\u0010\u0017\u001a\"\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0015\u0018\u00010\u000b\u00a2\u0006\u0002\u0008\u0012\u00a2\u0006\u0002\u0008\u00132\"\u0010\n\u001a\u001e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u00010\u0018\u00a2\u0006\u0002\u0008\r\u00a2\u0006\u0002\u0008\u0013H\u0007\u00a2\u0006\u0002\u0010\u001a\u001a\u00ad\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u000e\u0008\u0002\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u000e\u0008\u0002\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00062(\u0008\u0002\u0010\u000f\u001a\"\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0011\u0018\u00010\u000b\u00a2\u0006\u0002\u0008\u0012\u00a2\u0006\u0002\u0008\u00132(\u0008\u0002\u0010\u0014\u001a\"\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0015\u0018\u00010\u000b\u00a2\u0006\u0002\u0008\u0012\u00a2\u0006\u0002\u0008\u00132(\u0008\u0002\u0010\u0016\u001a\"\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0011\u0018\u00010\u000b\u00a2\u0006\u0002\u0008\u0012\u00a2\u0006\u0002\u0008\u00132(\u0008\u0002\u0010\u0017\u001a\"\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0015\u0018\u00010\u000b\u00a2\u0006\u0002\u0008\u0012\u00a2\u0006\u0002\u0008\u00132(\u0008\u0002\u0010\u001b\u001a\"\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u001c\u0018\u00010\u000b\u00a2\u0006\u0002\u0008\u0012\u00a2\u0006\u0002\u0008\u00132\"\u0010\n\u001a\u001e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u00010\u0018\u00a2\u0006\u0002\u0008\r\u00a2\u0006\u0002\u0008\u0013\u00a2\u0006\u0002\u0010\u001d\u001a\u00c5\u0002\u0010\u0000\u001a\u00020\u0001\"\n\u0008\u0000\u0010\u001e\u0018\u0001*\u00020\u001f*\u00020\u00022\u001d\u0008\u0002\u0010 \u001a\u0017\u0012\u0004\u0012\u00020\"\u0012\r\u0012\u000b\u0012\u0002\u0008\u00030#\u00a2\u0006\u0002\u0008\u00120!2\u000e\u0008\u0002\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00062(\u0008\n\u0010\u000f\u001a\"\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u0010\u0012\u000b\u0012\t\u0018\u00010\u0011\u00a2\u0006\u0002\u0008\u0012\u0018\u00010\u000b\u00a2\u0006\u0002\u0008\u00132(\u0008\n\u0010\u0014\u001a\"\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u0010\u0012\u000b\u0012\t\u0018\u00010\u0015\u00a2\u0006\u0002\u0008\u0012\u0018\u00010\u000b\u00a2\u0006\u0002\u0008\u00132(\u0008\n\u0010\u0016\u001a\"\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u0010\u0012\u000b\u0012\t\u0018\u00010\u0011\u00a2\u0006\u0002\u0008\u0012\u0018\u00010\u000b\u00a2\u0006\u0002\u0008\u00132(\u0008\n\u0010\u0017\u001a\"\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u0010\u0012\u000b\u0012\t\u0018\u00010\u0015\u00a2\u0006\u0002\u0008\u0012\u0018\u00010\u000b\u00a2\u0006\u0002\u0008\u00132(\u0008\n\u0010\u001b\u001a\"\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u0010\u0012\u000b\u0012\t\u0018\u00010\u001c\u00a2\u0006\u0002\u0008\u0012\u0018\u00010\u000b\u00a2\u0006\u0002\u0008\u00132$\u0008\u0008\u0010\n\u001a\u001e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u00010\u0018\u00a2\u0006\u0002\u0008\r\u00a2\u0006\u0002\u0008\u0013H\u0086\u0008\u00a2\u0006\u0002\u0010$\u001aZ\u0010%\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u000e\u0008\u0002\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u000e\u0008\u0002\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00062\u0008\u0008\u0002\u0010&\u001a\u00020\'2\u0017\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u00010\u000b\u00a2\u0006\u0002\u0008\r\u00a2\u0006\u0002\u0010(\u001ar\u0010%\u001a\u00020\u0001\"\n\u0008\u0000\u0010\u001e\u0018\u0001*\u00020\u001f*\u00020\u00022\u001d\u0008\u0002\u0010 \u001a\u0017\u0012\u0004\u0012\u00020\"\u0012\r\u0012\u000b\u0012\u0002\u0008\u00030#\u00a2\u0006\u0002\u0008\u00120!2\u000e\u0008\u0002\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00062\u0008\u0008\u0002\u0010&\u001a\u00020\'2\u0019\u0008\u0008\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u00010\u000b\u00a2\u0006\u0002\u0008\rH\u0086\u0008\u00a2\u0006\u0002\u0010)\u001a\u00bd\u0002\u0010*\u001a\u00020\u0001\"\n\u0008\u0000\u0010\u001e\u0018\u0001*\u00020\u001f*\u00020\u00022\u0006\u0010+\u001a\u00020\u001f2\u001d\u0008\u0002\u0010 \u001a\u0017\u0012\u0004\u0012\u00020\"\u0012\r\u0012\u000b\u0012\u0002\u0008\u00030#\u00a2\u0006\u0002\u0008\u00120!2\u000e\u0008\u0002\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00062(\u0008\n\u0010\u000f\u001a\"\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u0010\u0012\u000b\u0012\t\u0018\u00010\u0011\u00a2\u0006\u0002\u0008\u0012\u0018\u00010\u000b\u00a2\u0006\u0002\u0008\u00132(\u0008\n\u0010\u0014\u001a\"\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u0010\u0012\u000b\u0012\t\u0018\u00010\u0015\u00a2\u0006\u0002\u0008\u0012\u0018\u00010\u000b\u00a2\u0006\u0002\u0008\u00132(\u0008\n\u0010\u0016\u001a\"\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u0010\u0012\u000b\u0012\t\u0018\u00010\u0011\u00a2\u0006\u0002\u0008\u0012\u0018\u00010\u000b\u00a2\u0006\u0002\u0008\u00132(\u0008\n\u0010\u0017\u001a\"\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u0010\u0012\u000b\u0012\t\u0018\u00010\u0015\u00a2\u0006\u0002\u0008\u0012\u0018\u00010\u000b\u00a2\u0006\u0002\u0008\u00132(\u0008\n\u0010\u001b\u001a\"\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u0010\u0012\u000b\u0012\t\u0018\u00010\u001c\u00a2\u0006\u0002\u0008\u0012\u0018\u00010\u000b\u00a2\u0006\u0002\u0008\u00132\u0019\u0008\u0008\u0010,\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00010\u000b\u00a2\u0006\u0002\u0008\u0013H\u0086\u0008\u001a\u00ba\u0002\u0010*\u001a\u00020\u0001*\u00020\u00022\u0006\u0010+\u001a\u00020\u001f2\n\u0010\u0003\u001a\u0006\u0012\u0002\u0008\u00030-2\u001d\u0008\u0002\u0010 \u001a\u0017\u0012\u0004\u0012\u00020\"\u0012\r\u0012\u000b\u0012\u0002\u0008\u00030#\u00a2\u0006\u0002\u0008\u00120!2\u000e\u0008\u0002\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00062(\u0008\u0002\u0010\u000f\u001a\"\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u0010\u0012\u000b\u0012\t\u0018\u00010\u0011\u00a2\u0006\u0002\u0008\u0012\u0018\u00010\u000b\u00a2\u0006\u0002\u0008\u00132(\u0008\u0002\u0010\u0014\u001a\"\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u0010\u0012\u000b\u0012\t\u0018\u00010\u0015\u00a2\u0006\u0002\u0008\u0012\u0018\u00010\u000b\u00a2\u0006\u0002\u0008\u00132(\u0008\u0002\u0010\u0016\u001a\"\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u0010\u0012\u000b\u0012\t\u0018\u00010\u0011\u00a2\u0006\u0002\u0008\u0012\u0018\u00010\u000b\u00a2\u0006\u0002\u0008\u00132(\u0008\u0002\u0010\u0017\u001a\"\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u0010\u0012\u000b\u0012\t\u0018\u00010\u0015\u00a2\u0006\u0002\u0008\u0012\u0018\u00010\u000b\u00a2\u0006\u0002\u0008\u00132(\u0008\u0002\u0010\u001b\u001a\"\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u0010\u0012\u000b\u0012\t\u0018\u00010\u001c\u00a2\u0006\u0002\u0008\u0012\u0018\u00010\u000b\u00a2\u0006\u0002\u0008\u00132\u0017\u0010,\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00010\u000b\u00a2\u0006\u0002\u0008\u0013H\u0007\u001a\u00e9\u0001\u0010*\u001a\u00020\u0001*\u00020\u00022\u0006\u0010+\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00042\u000e\u0008\u0002\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u000e\u0008\u0002\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00062#\u0008\u0002\u0010\u000f\u001a\u001d\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0011\u0018\u00010\u000b\u00a2\u0006\u0002\u0008\u00132#\u0008\u0002\u0010\u0014\u001a\u001d\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0015\u0018\u00010\u000b\u00a2\u0006\u0002\u0008\u00132#\u0008\u0002\u0010\u0016\u001a\u001d\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0011\u0018\u00010\u000b\u00a2\u0006\u0002\u0008\u00132#\u0008\u0002\u0010\u0017\u001a\u001d\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0015\u0018\u00010\u000b\u00a2\u0006\u0002\u0008\u00132\u0017\u0010,\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00010\u000b\u00a2\u0006\u0002\u0008\u0013H\u0007\u001a\u00a5\u0002\u0010*\u001a\u00020\u0001*\u00020\u00022\u0006\u0010+\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00042\u000e\u0008\u0002\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u000e\u0008\u0002\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00062(\u0008\u0002\u0010\u000f\u001a\"\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0011\u0018\u00010\u000b\u00a2\u0006\u0002\u0008\u0012\u00a2\u0006\u0002\u0008\u00132(\u0008\u0002\u0010\u0014\u001a\"\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0015\u0018\u00010\u000b\u00a2\u0006\u0002\u0008\u0012\u00a2\u0006\u0002\u0008\u00132(\u0008\u0002\u0010\u0016\u001a\"\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0011\u0018\u00010\u000b\u00a2\u0006\u0002\u0008\u0012\u00a2\u0006\u0002\u0008\u00132(\u0008\u0002\u0010\u0017\u001a\"\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0015\u0018\u00010\u000b\u00a2\u0006\u0002\u0008\u0012\u00a2\u0006\u0002\u0008\u00132(\u0008\u0002\u0010\u001b\u001a\"\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u001c\u0018\u00010\u000b\u00a2\u0006\u0002\u0008\u0012\u00a2\u0006\u0002\u0008\u00132\u0017\u0010,\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00010\u000b\u00a2\u0006\u0002\u0008\u0013\u001aU\u0010*\u001a\u00020\u0001*\u00020\u00022\u0006\u0010+\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00042\u000e\u0008\u0002\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u000e\u0008\u0002\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00062\u0017\u0010,\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00010\u000b\u00a2\u0006\u0002\u0008\u0013H\u0007\u001a\u00c1\u0002\u0010*\u001a\u00020\u0001\"\n\u0008\u0000\u0010\u001e\u0018\u0001*\u00020\u001f*\u00020\u00022\n\u0010+\u001a\u0006\u0012\u0002\u0008\u00030-2\u001d\u0008\u0002\u0010 \u001a\u0017\u0012\u0004\u0012\u00020\"\u0012\r\u0012\u000b\u0012\u0002\u0008\u00030#\u00a2\u0006\u0002\u0008\u00120!2\u000e\u0008\u0002\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00062(\u0008\n\u0010\u000f\u001a\"\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u0010\u0012\u000b\u0012\t\u0018\u00010\u0011\u00a2\u0006\u0002\u0008\u0012\u0018\u00010\u000b\u00a2\u0006\u0002\u0008\u00132(\u0008\n\u0010\u0014\u001a\"\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u0010\u0012\u000b\u0012\t\u0018\u00010\u0015\u00a2\u0006\u0002\u0008\u0012\u0018\u00010\u000b\u00a2\u0006\u0002\u0008\u00132(\u0008\n\u0010\u0016\u001a\"\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u0010\u0012\u000b\u0012\t\u0018\u00010\u0011\u00a2\u0006\u0002\u0008\u0012\u0018\u00010\u000b\u00a2\u0006\u0002\u0008\u00132(\u0008\n\u0010\u0017\u001a\"\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u0010\u0012\u000b\u0012\t\u0018\u00010\u0015\u00a2\u0006\u0002\u0008\u0012\u0018\u00010\u000b\u00a2\u0006\u0002\u0008\u00132(\u0008\n\u0010\u001b\u001a\"\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u0010\u0012\u000b\u0012\t\u0018\u00010\u001c\u00a2\u0006\u0002\u0008\u0012\u0018\u00010\u000b\u00a2\u0006\u0002\u0008\u00132\u0019\u0008\u0008\u0010,\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00010\u000b\u00a2\u0006\u0002\u0008\u0013H\u0086\u0008\u001a\u00be\u0002\u0010*\u001a\u00020\u0001*\u00020\u00022\n\u0010+\u001a\u0006\u0012\u0002\u0008\u00030-2\n\u0010\u0003\u001a\u0006\u0012\u0002\u0008\u00030-2\u001d\u0008\u0002\u0010 \u001a\u0017\u0012\u0004\u0012\u00020\"\u0012\r\u0012\u000b\u0012\u0002\u0008\u00030#\u00a2\u0006\u0002\u0008\u00120!2\u000e\u0008\u0002\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00062(\u0008\u0002\u0010\u000f\u001a\"\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u0010\u0012\u000b\u0012\t\u0018\u00010\u0011\u00a2\u0006\u0002\u0008\u0012\u0018\u00010\u000b\u00a2\u0006\u0002\u0008\u00132(\u0008\u0002\u0010\u0014\u001a\"\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u0010\u0012\u000b\u0012\t\u0018\u00010\u0015\u00a2\u0006\u0002\u0008\u0012\u0018\u00010\u000b\u00a2\u0006\u0002\u0008\u00132(\u0008\u0002\u0010\u0016\u001a\"\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u0010\u0012\u000b\u0012\t\u0018\u00010\u0011\u00a2\u0006\u0002\u0008\u0012\u0018\u00010\u000b\u00a2\u0006\u0002\u0008\u00132(\u0008\u0002\u0010\u0017\u001a\"\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u0010\u0012\u000b\u0012\t\u0018\u00010\u0015\u00a2\u0006\u0002\u0008\u0012\u0018\u00010\u000b\u00a2\u0006\u0002\u0008\u00132(\u0008\u0002\u0010\u001b\u001a\"\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u0010\u0012\u000b\u0012\t\u0018\u00010\u001c\u00a2\u0006\u0002\u0008\u0012\u0018\u00010\u000b\u00a2\u0006\u0002\u0008\u00132\u0017\u0010,\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00010\u000b\u00a2\u0006\u0002\u0008\u0013H\u0007\u00a8\u0006."
    }
    d2 = {
        "composable",
        "",
        "Landroidx/navigation/NavGraphBuilder;",
        "route",
        "",
        "arguments",
        "",
        "Landroidx/navigation/NamedNavArgument;",
        "deepLinks",
        "Landroidx/navigation/NavDeepLink;",
        "content",
        "Lkotlin/Function1;",
        "Landroidx/navigation/NavBackStackEntry;",
        "Landroidx/compose/runtime/Composable;",
        "(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function3;)V",
        "enterTransition",
        "Landroidx/compose/animation/AnimatedContentTransitionScope;",
        "Landroidx/compose/animation/EnterTransition;",
        "Lkotlin/jvm/JvmSuppressWildcards;",
        "Lkotlin/ExtensionFunctionType;",
        "exitTransition",
        "Landroidx/compose/animation/ExitTransition;",
        "popEnterTransition",
        "popExitTransition",
        "Lkotlin/Function2;",
        "Landroidx/compose/animation/AnimatedContentScope;",
        "(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V",
        "sizeTransform",
        "Landroidx/compose/animation/SizeTransform;",
        "(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V",
        "T",
        "",
        "typeMap",
        "",
        "Lkotlin/reflect/KType;",
        "Landroidx/navigation/NavType;",
        "(Landroidx/navigation/NavGraphBuilder;Ljava/util/Map;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V",
        "dialog",
        "dialogProperties",
        "Landroidx/compose/ui/window/DialogProperties;",
        "(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Landroidx/compose/ui/window/DialogProperties;Lkotlin/jvm/functions/Function3;)V",
        "(Landroidx/navigation/NavGraphBuilder;Ljava/util/Map;Ljava/util/List;Landroidx/compose/ui/window/DialogProperties;Lkotlin/jvm/functions/Function3;)V",
        "navigation",
        "startDestination",
        "builder",
        "Lkotlin/reflect/KClass;",
        "navigation-compose_release"
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
.method public static final composable(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/NavGraphBuilder;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroidx/navigation/NamedNavArgument;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/navigation/NavDeepLink;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/EnterTransition;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/ExitTransition;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/EnterTransition;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/ExitTransition;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/SizeTransform;",
            ">;",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Landroidx/compose/animation/AnimatedContentScope;",
            "-",
            "Landroidx/navigation/NavBackStackEntry;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 158
    new-instance v0, Landroidx/navigation/compose/ComposeNavigatorDestinationBuilder;

    invoke-virtual {p0}, Landroidx/navigation/NavGraphBuilder;->getProvider()Landroidx/navigation/NavigatorProvider;

    move-result-object v1

    const-class v2, Landroidx/navigation/compose/ComposeNavigator;

    .line 638
    invoke-virtual {v1, v2}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/Class;)Landroidx/navigation/Navigator;

    move-result-object v1

    check-cast v1, Landroidx/navigation/compose/ComposeNavigator;

    .line 158
    invoke-direct {v0, v1, p1, p9}, Landroidx/navigation/compose/ComposeNavigatorDestinationBuilder;-><init>(Landroidx/navigation/compose/ComposeNavigator;Ljava/lang/String;Lkotlin/jvm/functions/Function4;)V

    .line 160
    check-cast p2, Ljava/lang/Iterable;

    .line 639
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/navigation/NamedNavArgument;

    .line 160
    invoke-virtual {p2}, Landroidx/navigation/NamedNavArgument;->component1()Ljava/lang/String;

    move-result-object p9

    invoke-virtual {p2}, Landroidx/navigation/NamedNavArgument;->component2()Landroidx/navigation/NavArgument;

    move-result-object p2

    invoke-virtual {v0, p9, p2}, Landroidx/navigation/compose/ComposeNavigatorDestinationBuilder;->argument(Ljava/lang/String;Landroidx/navigation/NavArgument;)V

    goto :goto_0

    .line 161
    :cond_0
    check-cast p3, Ljava/lang/Iterable;

    .line 641
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/navigation/NavDeepLink;

    .line 161
    invoke-virtual {v0, p2}, Landroidx/navigation/compose/ComposeNavigatorDestinationBuilder;->deepLink(Landroidx/navigation/NavDeepLink;)V

    goto :goto_1

    .line 162
    :cond_1
    invoke-virtual {v0, p4}, Landroidx/navigation/compose/ComposeNavigatorDestinationBuilder;->setEnterTransition(Lkotlin/jvm/functions/Function1;)V

    .line 163
    invoke-virtual {v0, p5}, Landroidx/navigation/compose/ComposeNavigatorDestinationBuilder;->setExitTransition(Lkotlin/jvm/functions/Function1;)V

    .line 164
    invoke-virtual {v0, p6}, Landroidx/navigation/compose/ComposeNavigatorDestinationBuilder;->setPopEnterTransition(Lkotlin/jvm/functions/Function1;)V

    .line 165
    invoke-virtual {v0, p7}, Landroidx/navigation/compose/ComposeNavigatorDestinationBuilder;->setPopExitTransition(Lkotlin/jvm/functions/Function1;)V

    .line 166
    invoke-virtual {v0, p8}, Landroidx/navigation/compose/ComposeNavigatorDestinationBuilder;->setSizeTransform(Lkotlin/jvm/functions/Function1;)V

    .line 159
    check-cast v0, Landroidx/navigation/NavDestinationBuilder;

    .line 157
    invoke-virtual {p0, v0}, Landroidx/navigation/NavGraphBuilder;->destination(Landroidx/navigation/NavDestinationBuilder;)V

    return-void
.end method

.method public static final synthetic composable(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V
    .locals 3
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Deprecated in favor of composable builder that supports sizeTransform"
    .end annotation

    .line 106
    new-instance v0, Landroidx/navigation/compose/ComposeNavigatorDestinationBuilder;

    invoke-virtual {p0}, Landroidx/navigation/NavGraphBuilder;->getProvider()Landroidx/navigation/NavigatorProvider;

    move-result-object v1

    const-class v2, Landroidx/navigation/compose/ComposeNavigator;

    .line 633
    invoke-virtual {v1, v2}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/Class;)Landroidx/navigation/Navigator;

    move-result-object v1

    check-cast v1, Landroidx/navigation/compose/ComposeNavigator;

    .line 106
    invoke-direct {v0, v1, p1, p8}, Landroidx/navigation/compose/ComposeNavigatorDestinationBuilder;-><init>(Landroidx/navigation/compose/ComposeNavigator;Ljava/lang/String;Lkotlin/jvm/functions/Function4;)V

    .line 108
    check-cast p2, Ljava/lang/Iterable;

    .line 634
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/navigation/NamedNavArgument;

    .line 108
    invoke-virtual {p2}, Landroidx/navigation/NamedNavArgument;->component1()Ljava/lang/String;

    move-result-object p8

    invoke-virtual {p2}, Landroidx/navigation/NamedNavArgument;->component2()Landroidx/navigation/NavArgument;

    move-result-object p2

    invoke-virtual {v0, p8, p2}, Landroidx/navigation/compose/ComposeNavigatorDestinationBuilder;->argument(Ljava/lang/String;Landroidx/navigation/NavArgument;)V

    goto :goto_0

    .line 109
    :cond_0
    check-cast p3, Ljava/lang/Iterable;

    .line 636
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/navigation/NavDeepLink;

    .line 109
    invoke-virtual {v0, p2}, Landroidx/navigation/compose/ComposeNavigatorDestinationBuilder;->deepLink(Landroidx/navigation/NavDeepLink;)V

    goto :goto_1

    .line 110
    :cond_1
    invoke-virtual {v0, p4}, Landroidx/navigation/compose/ComposeNavigatorDestinationBuilder;->setEnterTransition(Lkotlin/jvm/functions/Function1;)V

    .line 111
    invoke-virtual {v0, p5}, Landroidx/navigation/compose/ComposeNavigatorDestinationBuilder;->setExitTransition(Lkotlin/jvm/functions/Function1;)V

    .line 112
    invoke-virtual {v0, p6}, Landroidx/navigation/compose/ComposeNavigatorDestinationBuilder;->setPopEnterTransition(Lkotlin/jvm/functions/Function1;)V

    .line 113
    invoke-virtual {v0, p7}, Landroidx/navigation/compose/ComposeNavigatorDestinationBuilder;->setPopExitTransition(Lkotlin/jvm/functions/Function1;)V

    .line 107
    check-cast v0, Landroidx/navigation/NavDestinationBuilder;

    .line 105
    invoke-virtual {p0, v0}, Landroidx/navigation/NavGraphBuilder;->destination(Landroidx/navigation/NavDestinationBuilder;)V

    return-void
.end method

.method public static final synthetic composable(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function3;)V
    .locals 4
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Deprecated in favor of composable builder that supports AnimatedContent"
    .end annotation

    .line 56
    new-instance v0, Landroidx/navigation/compose/ComposeNavigator$Destination;

    invoke-virtual {p0}, Landroidx/navigation/NavGraphBuilder;->getProvider()Landroidx/navigation/NavigatorProvider;

    move-result-object v1

    const-class v2, Landroidx/navigation/compose/ComposeNavigator;

    .line 628
    invoke-virtual {v1, v2}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/Class;)Landroidx/navigation/Navigator;

    move-result-object v1

    check-cast v1, Landroidx/navigation/compose/ComposeNavigator;

    .line 56
    new-instance v2, Landroidx/navigation/compose/NavGraphBuilderKt$composable$1;

    invoke-direct {v2, p4}, Landroidx/navigation/compose/NavGraphBuilderKt$composable$1;-><init>(Lkotlin/jvm/functions/Function3;)V

    const p4, 0x1cdc15aa

    const/4 v3, 0x1

    invoke-static {p4, v3, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object p4

    check-cast p4, Lkotlin/jvm/functions/Function4;

    invoke-direct {v0, v1, p4}, Landroidx/navigation/compose/ComposeNavigator$Destination;-><init>(Landroidx/navigation/compose/ComposeNavigator;Lkotlin/jvm/functions/Function4;)V

    .line 58
    invoke-virtual {v0, p1}, Landroidx/navigation/compose/ComposeNavigator$Destination;->setRoute(Ljava/lang/String;)V

    .line 59
    check-cast p2, Ljava/lang/Iterable;

    .line 629
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/navigation/NamedNavArgument;

    .line 59
    invoke-virtual {p2}, Landroidx/navigation/NamedNavArgument;->component1()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroidx/navigation/NamedNavArgument;->component2()Landroidx/navigation/NavArgument;

    move-result-object p2

    .line 60
    invoke-virtual {v0, p4, p2}, Landroidx/navigation/compose/ComposeNavigator$Destination;->addArgument(Ljava/lang/String;Landroidx/navigation/NavArgument;)V

    goto :goto_0

    .line 62
    :cond_0
    check-cast p3, Ljava/lang/Iterable;

    .line 631
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/navigation/NavDeepLink;

    .line 62
    invoke-virtual {v0, p2}, Landroidx/navigation/compose/ComposeNavigator$Destination;->addDeepLink(Landroidx/navigation/NavDeepLink;)V

    goto :goto_1

    .line 57
    :cond_1
    check-cast v0, Landroidx/navigation/NavDestination;

    .line 55
    invoke-virtual {p0, v0}, Landroidx/navigation/NavGraphBuilder;->addDestination(Landroidx/navigation/NavDestination;)V

    return-void
.end method

.method public static final synthetic composable(Landroidx/navigation/NavGraphBuilder;Ljava/util/Map;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/navigation/NavGraphBuilder;",
            "Ljava/util/Map<",
            "Lkotlin/reflect/KType;",
            "Landroidx/navigation/NavType<",
            "*>;>;",
            "Ljava/util/List<",
            "Landroidx/navigation/NavDeepLink;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/EnterTransition;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/ExitTransition;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/EnterTransition;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/ExitTransition;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/SizeTransform;",
            ">;",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Landroidx/compose/animation/AnimatedContentScope;",
            "-",
            "Landroidx/navigation/NavBackStackEntry;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 211
    new-instance v0, Landroidx/navigation/compose/ComposeNavigatorDestinationBuilder;

    .line 212
    invoke-virtual {p0}, Landroidx/navigation/NavGraphBuilder;->getProvider()Landroidx/navigation/NavigatorProvider;

    move-result-object v1

    const-class v2, Landroidx/navigation/compose/ComposeNavigator;

    .line 643
    invoke-virtual {v1, v2}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/Class;)Landroidx/navigation/Navigator;

    move-result-object v1

    check-cast v1, Landroidx/navigation/compose/ComposeNavigator;

    const/4 v2, 0x4

    const-string v3, "T"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v2, Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    .line 211
    invoke-direct {v0, v1, v2, p1, p8}, Landroidx/navigation/compose/ComposeNavigatorDestinationBuilder;-><init>(Landroidx/navigation/compose/ComposeNavigator;Lkotlin/reflect/KClass;Ljava/util/Map;Lkotlin/jvm/functions/Function4;)V

    .line 217
    move-object p1, v0

    check-cast p1, Landroidx/navigation/compose/ComposeNavigatorDestinationBuilder;

    .line 218
    check-cast p2, Ljava/lang/Iterable;

    .line 644
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/navigation/NavDeepLink;

    .line 218
    invoke-virtual {v0, p2}, Landroidx/navigation/compose/ComposeNavigatorDestinationBuilder;->deepLink(Landroidx/navigation/NavDeepLink;)V

    goto :goto_0

    .line 219
    :cond_0
    invoke-virtual {v0, p3}, Landroidx/navigation/compose/ComposeNavigatorDestinationBuilder;->setEnterTransition(Lkotlin/jvm/functions/Function1;)V

    .line 220
    invoke-virtual {v0, p4}, Landroidx/navigation/compose/ComposeNavigatorDestinationBuilder;->setExitTransition(Lkotlin/jvm/functions/Function1;)V

    .line 221
    invoke-virtual {v0, p5}, Landroidx/navigation/compose/ComposeNavigatorDestinationBuilder;->setPopEnterTransition(Lkotlin/jvm/functions/Function1;)V

    .line 222
    invoke-virtual {v0, p6}, Landroidx/navigation/compose/ComposeNavigatorDestinationBuilder;->setPopExitTransition(Lkotlin/jvm/functions/Function1;)V

    .line 223
    invoke-virtual {v0, p7}, Landroidx/navigation/compose/ComposeNavigatorDestinationBuilder;->setSizeTransform(Lkotlin/jvm/functions/Function1;)V

    .line 217
    check-cast v0, Landroidx/navigation/NavDestinationBuilder;

    .line 210
    invoke-virtual {p0, v0}, Landroidx/navigation/NavGraphBuilder;->destination(Landroidx/navigation/NavDestinationBuilder;)V

    return-void
.end method

.method public static synthetic composable$default(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;ILjava/lang/Object;)V
    .locals 12

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    .line 133
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object v4, v1

    goto :goto_0

    :cond_0
    move-object v4, p2

    :goto_0
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    .line 134
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object v5, v1

    goto :goto_1

    :cond_1
    move-object v5, p3

    :goto_1
    and-int/lit8 v1, v0, 0x8

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move-object v6, v2

    goto :goto_2

    :cond_2
    move-object/from16 v6, p4

    :goto_2
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_3

    move-object v7, v2

    goto :goto_3

    :cond_3
    move-object/from16 v7, p5

    :goto_3
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_4

    move-object v8, v6

    goto :goto_4

    :cond_4
    move-object/from16 v8, p6

    :goto_4
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_5

    move-object v9, v7

    goto :goto_5

    :cond_5
    move-object/from16 v9, p7

    :goto_5
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_6

    move-object v10, v2

    goto :goto_6

    :cond_6
    move-object/from16 v10, p8

    :goto_6
    move-object v2, p0

    move-object v3, p1

    move-object/from16 v11, p9

    .line 131
    invoke-static/range {v2 .. v11}, Landroidx/navigation/compose/NavGraphBuilderKt;->composable(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    return-void
.end method

.method public static synthetic composable$default(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;ILjava/lang/Object;)V
    .locals 10

    and-int/lit8 v0, p9, 0x2

    if-eqz v0, :cond_0

    .line 85
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, p2

    :goto_0
    and-int/lit8 v0, p9, 0x4

    if-eqz v0, :cond_1

    .line 86
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    move-object v4, v0

    goto :goto_1

    :cond_1
    move-object v4, p3

    :goto_1
    and-int/lit8 v0, p9, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move-object v5, v1

    goto :goto_2

    :cond_2
    move-object v5, p4

    :goto_2
    and-int/lit8 v0, p9, 0x10

    if-eqz v0, :cond_3

    move-object v6, v1

    goto :goto_3

    :cond_3
    move-object v6, p5

    :goto_3
    and-int/lit8 v0, p9, 0x20

    if-eqz v0, :cond_4

    move-object v7, v5

    goto :goto_4

    :cond_4
    move-object/from16 v7, p6

    :goto_4
    and-int/lit8 v0, p9, 0x40

    if-eqz v0, :cond_5

    move-object v8, v6

    goto :goto_5

    :cond_5
    move-object/from16 v8, p7

    :goto_5
    move-object v1, p0

    move-object v2, p1

    move-object/from16 v9, p8

    .line 83
    invoke-static/range {v1 .. v9}, Landroidx/navigation/compose/NavGraphBuilderKt;->composable(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    return-void
.end method

.method public static synthetic composable$default(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function3;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    .line 51
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    .line 52
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p3

    .line 49
    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/navigation/compose/NavGraphBuilderKt;->composable(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method public static synthetic composable$default(Landroidx/navigation/NavGraphBuilder;Ljava/util/Map;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;ILjava/lang/Object;)V
    .locals 2

    and-int/lit8 p10, p9, 0x1

    if-eqz p10, :cond_0

    .line 186
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    :cond_0
    and-int/lit8 p10, p9, 0x2

    if-eqz p10, :cond_1

    .line 187
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    :cond_1
    and-int/lit8 p10, p9, 0x4

    const/4 v0, 0x0

    if-eqz p10, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p10, p9, 0x8

    if-eqz p10, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p10, p9, 0x10

    if-eqz p10, :cond_4

    move-object p5, p3

    :cond_4
    and-int/lit8 p10, p9, 0x20

    if-eqz p10, :cond_5

    move-object p6, p4

    :cond_5
    and-int/lit8 p9, p9, 0x40

    if-eqz p9, :cond_6

    move-object p7, v0

    .line 211
    :cond_6
    new-instance p9, Landroidx/navigation/compose/ComposeNavigatorDestinationBuilder;

    .line 212
    invoke-virtual {p0}, Landroidx/navigation/NavGraphBuilder;->getProvider()Landroidx/navigation/NavigatorProvider;

    move-result-object p10

    const-class v0, Landroidx/navigation/compose/ComposeNavigator;

    .line 643
    invoke-virtual {p10, v0}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/Class;)Landroidx/navigation/Navigator;

    move-result-object p10

    check-cast p10, Landroidx/navigation/compose/ComposeNavigator;

    const-string v0, "T"

    const/4 v1, 0x4

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    .line 211
    invoke-direct {p9, p10, v0, p1, p8}, Landroidx/navigation/compose/ComposeNavigatorDestinationBuilder;-><init>(Landroidx/navigation/compose/ComposeNavigator;Lkotlin/reflect/KClass;Ljava/util/Map;Lkotlin/jvm/functions/Function4;)V

    .line 217
    move-object p1, p9

    check-cast p1, Landroidx/navigation/compose/ComposeNavigatorDestinationBuilder;

    .line 218
    check-cast p2, Ljava/lang/Iterable;

    .line 644
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/navigation/NavDeepLink;

    .line 218
    invoke-virtual {p9, p2}, Landroidx/navigation/compose/ComposeNavigatorDestinationBuilder;->deepLink(Landroidx/navigation/NavDeepLink;)V

    goto :goto_0

    .line 219
    :cond_7
    invoke-virtual {p9, p3}, Landroidx/navigation/compose/ComposeNavigatorDestinationBuilder;->setEnterTransition(Lkotlin/jvm/functions/Function1;)V

    .line 220
    invoke-virtual {p9, p4}, Landroidx/navigation/compose/ComposeNavigatorDestinationBuilder;->setExitTransition(Lkotlin/jvm/functions/Function1;)V

    .line 221
    invoke-virtual {p9, p5}, Landroidx/navigation/compose/ComposeNavigatorDestinationBuilder;->setPopEnterTransition(Lkotlin/jvm/functions/Function1;)V

    .line 222
    invoke-virtual {p9, p6}, Landroidx/navigation/compose/ComposeNavigatorDestinationBuilder;->setPopExitTransition(Lkotlin/jvm/functions/Function1;)V

    .line 223
    invoke-virtual {p9, p7}, Landroidx/navigation/compose/ComposeNavigatorDestinationBuilder;->setSizeTransform(Lkotlin/jvm/functions/Function1;)V

    .line 217
    check-cast p9, Landroidx/navigation/NavDestinationBuilder;

    .line 210
    invoke-virtual {p0, p9}, Landroidx/navigation/NavGraphBuilder;->destination(Landroidx/navigation/NavDestinationBuilder;)V

    return-void
.end method

.method public static final dialog(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Landroidx/compose/ui/window/DialogProperties;Lkotlin/jvm/functions/Function3;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/NavGraphBuilder;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroidx/navigation/NamedNavArgument;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/navigation/NavDeepLink;",
            ">;",
            "Landroidx/compose/ui/window/DialogProperties;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/navigation/NavBackStackEntry;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 583
    new-instance v0, Landroidx/navigation/compose/DialogNavigatorDestinationBuilder;

    .line 584
    invoke-virtual {p0}, Landroidx/navigation/NavGraphBuilder;->getProvider()Landroidx/navigation/NavigatorProvider;

    move-result-object v1

    const-class v2, Landroidx/navigation/compose/DialogNavigator;

    .line 654
    invoke-virtual {v1, v2}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/Class;)Landroidx/navigation/Navigator;

    move-result-object v1

    check-cast v1, Landroidx/navigation/compose/DialogNavigator;

    .line 583
    invoke-direct {v0, v1, p1, p4, p5}, Landroidx/navigation/compose/DialogNavigatorDestinationBuilder;-><init>(Landroidx/navigation/compose/DialogNavigator;Ljava/lang/String;Landroidx/compose/ui/window/DialogProperties;Lkotlin/jvm/functions/Function3;)V

    .line 590
    check-cast p2, Ljava/lang/Iterable;

    .line 655
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/navigation/NamedNavArgument;

    .line 590
    invoke-virtual {p2}, Landroidx/navigation/NamedNavArgument;->component1()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroidx/navigation/NamedNavArgument;->component2()Landroidx/navigation/NavArgument;

    move-result-object p2

    invoke-virtual {v0, p4, p2}, Landroidx/navigation/compose/DialogNavigatorDestinationBuilder;->argument(Ljava/lang/String;Landroidx/navigation/NavArgument;)V

    goto :goto_0

    .line 591
    :cond_0
    check-cast p3, Ljava/lang/Iterable;

    .line 657
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/navigation/NavDeepLink;

    .line 591
    invoke-virtual {v0, p2}, Landroidx/navigation/compose/DialogNavigatorDestinationBuilder;->deepLink(Landroidx/navigation/NavDeepLink;)V

    goto :goto_1

    .line 589
    :cond_1
    check-cast v0, Landroidx/navigation/NavDestinationBuilder;

    .line 582
    invoke-virtual {p0, v0}, Landroidx/navigation/NavGraphBuilder;->destination(Landroidx/navigation/NavDestinationBuilder;)V

    return-void
.end method

.method public static final synthetic dialog(Landroidx/navigation/NavGraphBuilder;Ljava/util/Map;Ljava/util/List;Landroidx/compose/ui/window/DialogProperties;Lkotlin/jvm/functions/Function3;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/navigation/NavGraphBuilder;",
            "Ljava/util/Map<",
            "Lkotlin/reflect/KType;",
            "Landroidx/navigation/NavType<",
            "*>;>;",
            "Ljava/util/List<",
            "Landroidx/navigation/NavDeepLink;",
            ">;",
            "Landroidx/compose/ui/window/DialogProperties;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/navigation/NavBackStackEntry;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 617
    new-instance v6, Landroidx/navigation/compose/DialogNavigatorDestinationBuilder;

    .line 618
    invoke-virtual {p0}, Landroidx/navigation/NavGraphBuilder;->getProvider()Landroidx/navigation/NavigatorProvider;

    move-result-object v0

    const-class v1, Landroidx/navigation/compose/DialogNavigator;

    .line 659
    invoke-virtual {v0, v1}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/Class;)Landroidx/navigation/Navigator;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/navigation/compose/DialogNavigator;

    const/4 v0, 0x4

    const-string v2, "T"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    move-object v0, v6

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    .line 617
    invoke-direct/range {v0 .. v5}, Landroidx/navigation/compose/DialogNavigatorDestinationBuilder;-><init>(Landroidx/navigation/compose/DialogNavigator;Lkotlin/reflect/KClass;Ljava/util/Map;Landroidx/compose/ui/window/DialogProperties;Lkotlin/jvm/functions/Function3;)V

    .line 624
    move-object p1, v6

    check-cast p1, Landroidx/navigation/compose/DialogNavigatorDestinationBuilder;

    check-cast p2, Ljava/lang/Iterable;

    .line 661
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/navigation/NavDeepLink;

    .line 624
    invoke-virtual {v6, p2}, Landroidx/navigation/compose/DialogNavigatorDestinationBuilder;->deepLink(Landroidx/navigation/NavDeepLink;)V

    goto :goto_0

    :cond_0
    check-cast v6, Landroidx/navigation/NavDestinationBuilder;

    .line 616
    invoke-virtual {p0, v6}, Landroidx/navigation/NavGraphBuilder;->destination(Landroidx/navigation/NavDestinationBuilder;)V

    return-void
.end method

.method public static synthetic dialog$default(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Landroidx/compose/ui/window/DialogProperties;Lkotlin/jvm/functions/Function3;ILjava/lang/Object;)V
    .locals 11

    and-int/lit8 v0, p6, 0x2

    if-eqz v0, :cond_0

    .line 577
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, p2

    :goto_0
    and-int/lit8 v0, p6, 0x4

    if-eqz v0, :cond_1

    .line 578
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    move-object v4, v0

    goto :goto_1

    :cond_1
    move-object v4, p3

    :goto_1
    and-int/lit8 v0, p6, 0x8

    if-eqz v0, :cond_2

    .line 579
    new-instance v0, Landroidx/compose/ui/window/DialogProperties;

    const/4 v9, 0x7

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Landroidx/compose/ui/window/DialogProperties;-><init>(ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_2

    :cond_2
    move-object v5, p4

    :goto_2
    move-object v1, p0

    move-object v2, p1

    move-object/from16 v6, p5

    .line 575
    invoke-static/range {v1 .. v6}, Landroidx/navigation/compose/NavGraphBuilderKt;->dialog(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Landroidx/compose/ui/window/DialogProperties;Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method public static synthetic dialog$default(Landroidx/navigation/NavGraphBuilder;Ljava/util/Map;Ljava/util/List;Landroidx/compose/ui/window/DialogProperties;Lkotlin/jvm/functions/Function3;ILjava/lang/Object;)V
    .locals 11

    and-int/lit8 v0, p5, 0x1

    if-eqz v0, :cond_0

    .line 611
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, p1

    :goto_0
    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_1

    .line 612
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, p2

    :goto_1
    const/4 v1, 0x4

    and-int/lit8 v2, p5, 0x4

    if-eqz v2, :cond_2

    .line 613
    new-instance v2, Landroidx/compose/ui/window/DialogProperties;

    const/4 v9, 0x7

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Landroidx/compose/ui/window/DialogProperties;-><init>(ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_2

    :cond_2
    move-object v5, p3

    .line 617
    :goto_2
    new-instance v7, Landroidx/navigation/compose/DialogNavigatorDestinationBuilder;

    .line 618
    invoke-virtual {p0}, Landroidx/navigation/NavGraphBuilder;->getProvider()Landroidx/navigation/NavigatorProvider;

    move-result-object v2

    const-class v3, Landroidx/navigation/compose/DialogNavigator;

    .line 659
    invoke-virtual {v2, v3}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/Class;)Landroidx/navigation/Navigator;

    move-result-object v2

    check-cast v2, Landroidx/navigation/compose/DialogNavigator;

    const-string v3, "T"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    move-object v1, v7

    move-object v6, p4

    .line 617
    invoke-direct/range {v1 .. v6}, Landroidx/navigation/compose/DialogNavigatorDestinationBuilder;-><init>(Landroidx/navigation/compose/DialogNavigator;Lkotlin/reflect/KClass;Ljava/util/Map;Landroidx/compose/ui/window/DialogProperties;Lkotlin/jvm/functions/Function3;)V

    .line 624
    move-object v1, v7

    check-cast v1, Landroidx/navigation/compose/DialogNavigatorDestinationBuilder;

    check-cast v0, Ljava/lang/Iterable;

    .line 661
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavDeepLink;

    .line 624
    invoke-virtual {v7, v1}, Landroidx/navigation/compose/DialogNavigatorDestinationBuilder;->deepLink(Landroidx/navigation/NavDeepLink;)V

    goto :goto_3

    :cond_3
    check-cast v7, Landroidx/navigation/NavDestinationBuilder;

    move-object v0, p0

    .line 616
    invoke-virtual {p0, v7}, Landroidx/navigation/NavGraphBuilder;->destination(Landroidx/navigation/NavDestinationBuilder;)V

    return-void
.end method

.method public static final synthetic navigation(Landroidx/navigation/NavGraphBuilder;Ljava/lang/Object;Ljava/util/Map;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/navigation/NavGraphBuilder;",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Lkotlin/reflect/KType;",
            "Landroidx/navigation/NavType<",
            "*>;>;",
            "Ljava/util/List<",
            "Landroidx/navigation/NavDeepLink;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/EnterTransition;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/ExitTransition;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/EnterTransition;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/ExitTransition;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/SizeTransform;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/navigation/NavGraphBuilder;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x4

    .line 506
    const-string v1, "T"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    .line 505
    invoke-static/range {v1 .. v11}, Landroidx/navigation/compose/NavGraphBuilderKt;->navigation(Landroidx/navigation/NavGraphBuilder;Ljava/lang/Object;Lkotlin/reflect/KClass;Ljava/util/Map;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final navigation(Landroidx/navigation/NavGraphBuilder;Ljava/lang/Object;Lkotlin/reflect/KClass;Ljava/util/Map;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/NavGraphBuilder;",
            "Ljava/lang/Object;",
            "Lkotlin/reflect/KClass<",
            "*>;",
            "Ljava/util/Map<",
            "Lkotlin/reflect/KType;",
            "Landroidx/navigation/NavType<",
            "*>;>;",
            "Ljava/util/List<",
            "Landroidx/navigation/NavDeepLink;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/EnterTransition;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/ExitTransition;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/EnterTransition;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/ExitTransition;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/SizeTransform;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/navigation/NavGraphBuilder;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 549
    new-instance v0, Landroidx/navigation/NavGraphBuilder;

    invoke-virtual {p0}, Landroidx/navigation/NavGraphBuilder;->getProvider()Landroidx/navigation/NavigatorProvider;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2, p3}, Landroidx/navigation/NavGraphBuilder;-><init>(Landroidx/navigation/NavigatorProvider;Ljava/lang/Object;Lkotlin/reflect/KClass;Ljava/util/Map;)V

    invoke-interface {p10, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroidx/navigation/NavGraphBuilder;->build()Landroidx/navigation/NavGraph;

    move-result-object p1

    .line 550
    check-cast p4, Ljava/lang/Iterable;

    .line 652
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/navigation/NavDeepLink;

    .line 550
    invoke-virtual {p1, p3}, Landroidx/navigation/NavGraph;->addDeepLink(Landroidx/navigation/NavDeepLink;)V

    goto :goto_0

    .line 551
    :cond_0
    instance-of p2, p1, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;

    if-eqz p2, :cond_1

    .line 552
    move-object p2, p1

    check-cast p2, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;

    invoke-virtual {p2, p5}, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;->setEnterTransition$navigation_compose_release(Lkotlin/jvm/functions/Function1;)V

    .line 553
    invoke-virtual {p2, p6}, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;->setExitTransition$navigation_compose_release(Lkotlin/jvm/functions/Function1;)V

    .line 554
    invoke-virtual {p2, p7}, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;->setPopEnterTransition$navigation_compose_release(Lkotlin/jvm/functions/Function1;)V

    .line 555
    invoke-virtual {p2, p8}, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;->setPopExitTransition$navigation_compose_release(Lkotlin/jvm/functions/Function1;)V

    .line 556
    invoke-virtual {p2, p9}, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;->setSizeTransform$navigation_compose_release(Lkotlin/jvm/functions/Function1;)V

    .line 549
    :cond_1
    check-cast p1, Landroidx/navigation/NavDestination;

    .line 548
    invoke-virtual {p0, p1}, Landroidx/navigation/NavGraphBuilder;->addDestination(Landroidx/navigation/NavDestination;)V

    return-void
.end method

.method public static final synthetic navigation(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
    .locals 11
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Deprecated in favor of navigation builder that supports AnimatedContent"
    .end annotation

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v10, p5

    .line 249
    invoke-static/range {v0 .. v10}, Landroidx/navigation/compose/NavGraphBuilderKt;->navigation(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic navigation(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 11
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Deprecated in favor of navigation builder that supports sizeTransform"
    .end annotation

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v10, p9

    .line 287
    invoke-static/range {v0 .. v10}, Landroidx/navigation/compose/NavGraphBuilderKt;->navigation(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final navigation(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/NavGraphBuilder;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroidx/navigation/NamedNavArgument;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/navigation/NavDeepLink;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/EnterTransition;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/ExitTransition;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/EnterTransition;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/ExitTransition;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/SizeTransform;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/navigation/NavGraphBuilder;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 346
    new-instance v0, Landroidx/navigation/NavGraphBuilder;

    invoke-virtual {p0}, Landroidx/navigation/NavGraphBuilder;->getProvider()Landroidx/navigation/NavigatorProvider;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Landroidx/navigation/NavGraphBuilder;-><init>(Landroidx/navigation/NavigatorProvider;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p10, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroidx/navigation/NavGraphBuilder;->build()Landroidx/navigation/NavGraph;

    move-result-object p1

    .line 347
    check-cast p3, Ljava/lang/Iterable;

    .line 646
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/navigation/NamedNavArgument;

    .line 347
    invoke-virtual {p3}, Landroidx/navigation/NamedNavArgument;->component1()Ljava/lang/String;

    move-result-object p10

    invoke-virtual {p3}, Landroidx/navigation/NamedNavArgument;->component2()Landroidx/navigation/NavArgument;

    move-result-object p3

    invoke-virtual {p1, p10, p3}, Landroidx/navigation/NavGraph;->addArgument(Ljava/lang/String;Landroidx/navigation/NavArgument;)V

    goto :goto_0

    .line 348
    :cond_0
    check-cast p4, Ljava/lang/Iterable;

    .line 648
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/navigation/NavDeepLink;

    .line 348
    invoke-virtual {p1, p3}, Landroidx/navigation/NavGraph;->addDeepLink(Landroidx/navigation/NavDeepLink;)V

    goto :goto_1

    .line 349
    :cond_1
    instance-of p2, p1, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;

    if-eqz p2, :cond_2

    .line 350
    move-object p2, p1

    check-cast p2, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;

    invoke-virtual {p2, p5}, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;->setEnterTransition$navigation_compose_release(Lkotlin/jvm/functions/Function1;)V

    .line 351
    invoke-virtual {p2, p6}, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;->setExitTransition$navigation_compose_release(Lkotlin/jvm/functions/Function1;)V

    .line 352
    invoke-virtual {p2, p7}, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;->setPopEnterTransition$navigation_compose_release(Lkotlin/jvm/functions/Function1;)V

    .line 353
    invoke-virtual {p2, p8}, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;->setPopExitTransition$navigation_compose_release(Lkotlin/jvm/functions/Function1;)V

    .line 354
    invoke-virtual {p2, p9}, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;->setSizeTransform$navigation_compose_release(Lkotlin/jvm/functions/Function1;)V

    .line 346
    :cond_2
    check-cast p1, Landroidx/navigation/NavDestination;

    .line 345
    invoke-virtual {p0, p1}, Landroidx/navigation/NavGraphBuilder;->addDestination(Landroidx/navigation/NavDestination;)V

    return-void
.end method

.method public static final synthetic navigation(Landroidx/navigation/NavGraphBuilder;Lkotlin/reflect/KClass;Ljava/util/Map;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/navigation/NavGraphBuilder;",
            "Lkotlin/reflect/KClass<",
            "*>;",
            "Ljava/util/Map<",
            "Lkotlin/reflect/KType;",
            "Landroidx/navigation/NavType<",
            "*>;>;",
            "Ljava/util/List<",
            "Landroidx/navigation/NavDeepLink;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/EnterTransition;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/ExitTransition;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/EnterTransition;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/ExitTransition;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/SizeTransform;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/navigation/NavGraphBuilder;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x4

    .line 405
    const-string v1, "T"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    .line 404
    invoke-static/range {v1 .. v11}, Landroidx/navigation/compose/NavGraphBuilderKt;->navigation(Landroidx/navigation/NavGraphBuilder;Lkotlin/reflect/KClass;Lkotlin/reflect/KClass;Ljava/util/Map;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final navigation(Landroidx/navigation/NavGraphBuilder;Lkotlin/reflect/KClass;Lkotlin/reflect/KClass;Ljava/util/Map;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/NavGraphBuilder;",
            "Lkotlin/reflect/KClass<",
            "*>;",
            "Lkotlin/reflect/KClass<",
            "*>;",
            "Ljava/util/Map<",
            "Lkotlin/reflect/KType;",
            "Landroidx/navigation/NavType<",
            "*>;>;",
            "Ljava/util/List<",
            "Landroidx/navigation/NavDeepLink;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/EnterTransition;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/ExitTransition;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/EnterTransition;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/ExitTransition;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/animation/AnimatedContentTransitionScope<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/compose/animation/SizeTransform;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/navigation/NavGraphBuilder;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 448
    new-instance v0, Landroidx/navigation/NavGraphBuilder;

    invoke-virtual {p0}, Landroidx/navigation/NavGraphBuilder;->getProvider()Landroidx/navigation/NavigatorProvider;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2, p3}, Landroidx/navigation/NavGraphBuilder;-><init>(Landroidx/navigation/NavigatorProvider;Lkotlin/reflect/KClass;Lkotlin/reflect/KClass;Ljava/util/Map;)V

    invoke-interface {p10, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroidx/navigation/NavGraphBuilder;->build()Landroidx/navigation/NavGraph;

    move-result-object p1

    .line 449
    check-cast p4, Ljava/lang/Iterable;

    .line 650
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/navigation/NavDeepLink;

    .line 449
    invoke-virtual {p1, p3}, Landroidx/navigation/NavGraph;->addDeepLink(Landroidx/navigation/NavDeepLink;)V

    goto :goto_0

    .line 450
    :cond_0
    instance-of p2, p1, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;

    if-eqz p2, :cond_1

    .line 451
    move-object p2, p1

    check-cast p2, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;

    invoke-virtual {p2, p5}, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;->setEnterTransition$navigation_compose_release(Lkotlin/jvm/functions/Function1;)V

    .line 452
    invoke-virtual {p2, p6}, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;->setExitTransition$navigation_compose_release(Lkotlin/jvm/functions/Function1;)V

    .line 453
    invoke-virtual {p2, p7}, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;->setPopEnterTransition$navigation_compose_release(Lkotlin/jvm/functions/Function1;)V

    .line 454
    invoke-virtual {p2, p8}, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;->setPopExitTransition$navigation_compose_release(Lkotlin/jvm/functions/Function1;)V

    .line 455
    invoke-virtual {p2, p9}, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;->setSizeTransform$navigation_compose_release(Lkotlin/jvm/functions/Function1;)V

    .line 448
    :cond_1
    check-cast p1, Landroidx/navigation/NavDestination;

    .line 447
    invoke-virtual {p0, p1}, Landroidx/navigation/NavGraphBuilder;->addDestination(Landroidx/navigation/NavDestination;)V

    return-void
.end method

.method public static synthetic navigation$default(Landroidx/navigation/NavGraphBuilder;Ljava/lang/Object;Ljava/util/Map;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 13

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    .line 481
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v1

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, p2

    :goto_0
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    .line 482
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object v6, v1

    goto :goto_1

    :cond_1
    move-object/from16 v6, p3

    :goto_1
    and-int/lit8 v1, v0, 0x8

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move-object v7, v2

    goto :goto_2

    :cond_2
    move-object/from16 v7, p4

    :goto_2
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_3

    move-object v8, v2

    goto :goto_3

    :cond_3
    move-object/from16 v8, p5

    :goto_3
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_4

    move-object v9, v7

    goto :goto_4

    :cond_4
    move-object/from16 v9, p6

    :goto_4
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_5

    move-object v10, v8

    goto :goto_5

    :cond_5
    move-object/from16 v10, p7

    :goto_5
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_6

    move-object v11, v2

    goto :goto_6

    :cond_6
    move-object/from16 v11, p8

    .line 506
    :goto_6
    const-string v0, "T"

    const/4 v1, 0x4

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v12, p9

    .line 505
    invoke-static/range {v2 .. v12}, Landroidx/navigation/compose/NavGraphBuilderKt;->navigation(Landroidx/navigation/NavGraphBuilder;Ljava/lang/Object;Lkotlin/reflect/KClass;Ljava/util/Map;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static synthetic navigation$default(Landroidx/navigation/NavGraphBuilder;Ljava/lang/Object;Lkotlin/reflect/KClass;Ljava/util/Map;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 13

    move/from16 v0, p11

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    .line 524
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v1

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object/from16 v5, p3

    :goto_0
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    .line 525
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object v6, v1

    goto :goto_1

    :cond_1
    move-object/from16 v6, p4

    :goto_1
    and-int/lit8 v1, v0, 0x10

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move-object v7, v2

    goto :goto_2

    :cond_2
    move-object/from16 v7, p5

    :goto_2
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    move-object v8, v2

    goto :goto_3

    :cond_3
    move-object/from16 v8, p6

    :goto_3
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    move-object v9, v7

    goto :goto_4

    :cond_4
    move-object/from16 v9, p7

    :goto_4
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_5

    move-object v10, v8

    goto :goto_5

    :cond_5
    move-object/from16 v10, p8

    :goto_5
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_6

    move-object v11, v2

    goto :goto_6

    :cond_6
    move-object/from16 v11, p9

    :goto_6
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v12, p10

    .line 521
    invoke-static/range {v2 .. v12}, Landroidx/navigation/compose/NavGraphBuilderKt;->navigation(Landroidx/navigation/NavGraphBuilder;Ljava/lang/Object;Lkotlin/reflect/KClass;Ljava/util/Map;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static synthetic navigation$default(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    .line 245
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p3

    :cond_0
    move-object v3, p3

    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    .line 246
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p4

    :cond_1
    move-object v4, p4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    .line 242
    invoke-static/range {v0 .. v5}, Landroidx/navigation/compose/NavGraphBuilderKt;->navigation(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static synthetic navigation$default(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 12

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    .line 274
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, p3

    :goto_0
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    .line 275
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object v6, v1

    goto :goto_1

    :cond_1
    move-object/from16 v6, p4

    :goto_1
    and-int/lit8 v1, v0, 0x10

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move-object v7, v2

    goto :goto_2

    :cond_2
    move-object/from16 v7, p5

    :goto_2
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    move-object v8, v2

    goto :goto_3

    :cond_3
    move-object/from16 v8, p6

    :goto_3
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    move-object v9, v7

    goto :goto_4

    :cond_4
    move-object/from16 v9, p7

    :goto_4
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_5

    move-object v10, v8

    goto :goto_5

    :cond_5
    move-object/from16 v10, p8

    :goto_5
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v11, p9

    .line 271
    invoke-static/range {v2 .. v11}, Landroidx/navigation/compose/NavGraphBuilderKt;->navigation(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static synthetic navigation$default(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 13

    move/from16 v0, p11

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    .line 321
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object/from16 v5, p3

    :goto_0
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    .line 322
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object v6, v1

    goto :goto_1

    :cond_1
    move-object/from16 v6, p4

    :goto_1
    and-int/lit8 v1, v0, 0x10

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move-object v7, v2

    goto :goto_2

    :cond_2
    move-object/from16 v7, p5

    :goto_2
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    move-object v8, v2

    goto :goto_3

    :cond_3
    move-object/from16 v8, p6

    :goto_3
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    move-object v9, v7

    goto :goto_4

    :cond_4
    move-object/from16 v9, p7

    :goto_4
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_5

    move-object v10, v8

    goto :goto_5

    :cond_5
    move-object/from16 v10, p8

    :goto_5
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_6

    move-object v11, v2

    goto :goto_6

    :cond_6
    move-object/from16 v11, p9

    :goto_6
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v12, p10

    .line 318
    invoke-static/range {v2 .. v12}, Landroidx/navigation/compose/NavGraphBuilderKt;->navigation(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static synthetic navigation$default(Landroidx/navigation/NavGraphBuilder;Lkotlin/reflect/KClass;Ljava/util/Map;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 13

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    .line 380
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v1

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, p2

    :goto_0
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    .line 381
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object v6, v1

    goto :goto_1

    :cond_1
    move-object/from16 v6, p3

    :goto_1
    and-int/lit8 v1, v0, 0x8

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move-object v7, v2

    goto :goto_2

    :cond_2
    move-object/from16 v7, p4

    :goto_2
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_3

    move-object v8, v2

    goto :goto_3

    :cond_3
    move-object/from16 v8, p5

    :goto_3
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_4

    move-object v9, v7

    goto :goto_4

    :cond_4
    move-object/from16 v9, p6

    :goto_4
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_5

    move-object v10, v8

    goto :goto_5

    :cond_5
    move-object/from16 v10, p7

    :goto_5
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_6

    move-object v11, v2

    goto :goto_6

    :cond_6
    move-object/from16 v11, p8

    .line 405
    :goto_6
    const-string v0, "T"

    const/4 v1, 0x4

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v12, p9

    .line 404
    invoke-static/range {v2 .. v12}, Landroidx/navigation/compose/NavGraphBuilderKt;->navigation(Landroidx/navigation/NavGraphBuilder;Lkotlin/reflect/KClass;Lkotlin/reflect/KClass;Ljava/util/Map;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static synthetic navigation$default(Landroidx/navigation/NavGraphBuilder;Lkotlin/reflect/KClass;Lkotlin/reflect/KClass;Ljava/util/Map;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 13

    move/from16 v0, p11

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    .line 423
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v1

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object/from16 v5, p3

    :goto_0
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    .line 424
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object v6, v1

    goto :goto_1

    :cond_1
    move-object/from16 v6, p4

    :goto_1
    and-int/lit8 v1, v0, 0x10

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move-object v7, v2

    goto :goto_2

    :cond_2
    move-object/from16 v7, p5

    :goto_2
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    move-object v8, v2

    goto :goto_3

    :cond_3
    move-object/from16 v8, p6

    :goto_3
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    move-object v9, v7

    goto :goto_4

    :cond_4
    move-object/from16 v9, p7

    :goto_4
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_5

    move-object v10, v8

    goto :goto_5

    :cond_5
    move-object/from16 v10, p8

    :goto_5
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_6

    move-object v11, v2

    goto :goto_6

    :cond_6
    move-object/from16 v11, p9

    :goto_6
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v12, p10

    .line 420
    invoke-static/range {v2 .. v12}, Landroidx/navigation/compose/NavGraphBuilderKt;->navigation(Landroidx/navigation/NavGraphBuilder;Lkotlin/reflect/KClass;Lkotlin/reflect/KClass;Ljava/util/Map;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
