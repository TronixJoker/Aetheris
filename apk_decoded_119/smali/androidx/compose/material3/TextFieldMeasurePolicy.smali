.class final Landroidx/compose/material3/TextFieldMeasurePolicy;
.super Ljava/lang/Object;
.source "TextField.kt"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextField.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextField.kt\nandroidx/compose/material3/TextFieldMeasurePolicy\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1140:1\n116#2,2:1141\n33#2,6:1143\n118#2:1149\n116#2,2:1150\n33#2,6:1152\n118#2:1158\n116#2,2:1159\n33#2,6:1161\n118#2:1167\n116#2,2:1168\n33#2,6:1170\n118#2:1176\n116#2,2:1177\n33#2,6:1179\n118#2:1185\n116#2,2:1186\n33#2,6:1188\n118#2:1194\n544#2,2:1195\n33#2,6:1197\n546#2:1203\n116#2,2:1204\n33#2,6:1206\n118#2:1212\n544#2,2:1213\n33#2,6:1215\n546#2:1221\n544#2,2:1222\n33#2,6:1224\n546#2:1230\n116#2,2:1231\n33#2,6:1233\n118#2:1239\n116#2,2:1241\n33#2,6:1243\n118#2:1249\n116#2,2:1250\n33#2,6:1252\n118#2:1258\n116#2,2:1259\n33#2,6:1261\n118#2:1267\n116#2,2:1268\n33#2,6:1270\n118#2:1276\n116#2,2:1277\n33#2,6:1279\n118#2:1285\n116#2,2:1286\n33#2,6:1288\n118#2:1294\n116#2,2:1295\n33#2,6:1297\n118#2:1303\n116#2,2:1304\n33#2,6:1306\n118#2:1312\n116#2,2:1313\n33#2,6:1315\n118#2:1321\n116#2,2:1322\n33#2,6:1324\n118#2:1330\n544#2,2:1331\n33#2,6:1333\n546#2:1339\n116#2,2:1340\n33#2,6:1342\n118#2:1348\n116#2,2:1349\n33#2,6:1351\n118#2:1357\n1#3:1240\n*S KotlinDebug\n*F\n+ 1 TextField.kt\nandroidx/compose/material3/TextFieldMeasurePolicy\n*L\n593#1:1141,2\n593#1:1143,6\n593#1:1149\n600#1:1150,2\n600#1:1152,6\n600#1:1158\n608#1:1159,2\n608#1:1161,6\n608#1:1167\n616#1:1168,2\n616#1:1170,6\n616#1:1176\n628#1:1177,2\n628#1:1179,6\n628#1:1185\n632#1:1186,2\n632#1:1188,6\n632#1:1194\n646#1:1195,2\n646#1:1197,6\n646#1:1203\n652#1:1204,2\n652#1:1206,6\n652#1:1212\n701#1:1213,2\n701#1:1215,6\n701#1:1221\n793#1:1222,2\n793#1:1224,6\n793#1:1230\n796#1:1231,2\n796#1:1233,6\n796#1:1239\n800#1:1241,2\n800#1:1243,6\n800#1:1249\n804#1:1250,2\n804#1:1252,6\n804#1:1258\n808#1:1259,2\n808#1:1261,6\n808#1:1267\n812#1:1268,2\n812#1:1270,6\n812#1:1276\n816#1:1277,2\n816#1:1279,6\n816#1:1285\n838#1:1286,2\n838#1:1288,6\n838#1:1294\n848#1:1295,2\n848#1:1297,6\n848#1:1303\n858#1:1304,2\n858#1:1306,6\n858#1:1312\n863#1:1313,2\n863#1:1315,6\n863#1:1321\n874#1:1322,2\n874#1:1324,6\n874#1:1330\n885#1:1331,2\n885#1:1333,6\n885#1:1339\n888#1:1340,2\n888#1:1342,6\n888#1:1348\n893#1:1349,2\n893#1:1351,6\n893#1:1357\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0002\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J8\u0010\t\u001a\u00020\n2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c2\u0006\u0010\u000e\u001a\u00020\n2\u0018\u0010\u000f\u001a\u0014\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\u0010H\u0002J<\u0010\u0011\u001a\u00020\n*\u00020\u00122\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c2\u0006\u0010\u0013\u001a\u00020\n2\u0018\u0010\u000f\u001a\u0014\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\u0010H\u0002J\"\u0010\u0014\u001a\u00020\n*\u00020\u00122\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c2\u0006\u0010\u0013\u001a\u00020\nH\u0016J\"\u0010\u0015\u001a\u00020\n*\u00020\u00122\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c2\u0006\u0010\u000e\u001a\u00020\nH\u0016J,\u0010\u0016\u001a\u00020\u0017*\u00020\u00182\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u000c2\u0006\u0010\u001a\u001a\u00020\u001bH\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\"\u0010\u001e\u001a\u00020\n*\u00020\u00122\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c2\u0006\u0010\u0013\u001a\u00020\nH\u0016J\"\u0010\u001f\u001a\u00020\n*\u00020\u00122\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c2\u0006\u0010\u000e\u001a\u00020\nH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006 "
    }
    d2 = {
        "Landroidx/compose/material3/TextFieldMeasurePolicy;",
        "Landroidx/compose/ui/layout/MeasurePolicy;",
        "singleLine",
        "",
        "animationProgress",
        "",
        "paddingValues",
        "Landroidx/compose/foundation/layout/PaddingValues;",
        "(ZFLandroidx/compose/foundation/layout/PaddingValues;)V",
        "intrinsicWidth",
        "",
        "measurables",
        "",
        "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
        "height",
        "intrinsicMeasurer",
        "Lkotlin/Function2;",
        "intrinsicHeight",
        "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
        "width",
        "maxIntrinsicHeight",
        "maxIntrinsicWidth",
        "measure",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "Landroidx/compose/ui/layout/MeasureScope;",
        "Landroidx/compose/ui/layout/Measurable;",
        "constraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "measure-3p2s80s",
        "(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;",
        "minIntrinsicHeight",
        "minIntrinsicWidth",
        "material3_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final animationProgress:F

.field private final paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

.field private final singleLine:Z


# direct methods
.method public constructor <init>(ZFLandroidx/compose/foundation/layout/PaddingValues;)V
    .locals 0

    .line 574
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 575
    iput-boolean p1, p0, Landroidx/compose/material3/TextFieldMeasurePolicy;->singleLine:Z

    .line 576
    iput p2, p0, Landroidx/compose/material3/TextFieldMeasurePolicy;->animationProgress:F

    .line 577
    iput-object p3, p0, Landroidx/compose/material3/TextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    return-void
.end method

.method public static final synthetic access$getAnimationProgress$p(Landroidx/compose/material3/TextFieldMeasurePolicy;)F
    .locals 0

    .line 574
    iget p0, p0, Landroidx/compose/material3/TextFieldMeasurePolicy;->animationProgress:F

    return p0
.end method

.method public static final synthetic access$getPaddingValues$p(Landroidx/compose/material3/TextFieldMeasurePolicy;)Landroidx/compose/foundation/layout/PaddingValues;
    .locals 0

    .line 574
    iget-object p0, p0, Landroidx/compose/material3/TextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    return-object p0
.end method

.method public static final synthetic access$getSingleLine$p(Landroidx/compose/material3/TextFieldMeasurePolicy;)Z
    .locals 0

    .line 574
    iget-boolean p0, p0, Landroidx/compose/material3/TextFieldMeasurePolicy;->singleLine:Z

    return p0
.end method

.method private final intrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;ILkotlin/jvm/functions/Function2;)I
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;I",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    .line 1289
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    .line 1290
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 1287
    move-object v8, v7

    check-cast v8, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 838
    invoke-static {v8}, Landroidx/compose/material3/internal/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "Leading"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :goto_1
    check-cast v7, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    const v3, 0x7fffffff

    if-eqz v7, :cond_2

    .line 842
    invoke-interface {v7, v3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicWidth(I)I

    move-result v5

    move/from16 v8, p3

    .line 841
    invoke-static {v8, v5}, Landroidx/compose/material3/TextFieldKt;->access$substractConstraintSafely(II)I

    move-result v5

    .line 844
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v2, v7, v9}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    move v9, v7

    goto :goto_2

    :cond_2
    move/from16 v8, p3

    move v5, v8

    const/4 v9, 0x0

    .line 1298
    :goto_2
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v7

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v7, :cond_4

    .line 1299
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 1296
    move-object v12, v11

    check-cast v12, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 848
    invoke-static {v12}, Landroidx/compose/material3/internal/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v12

    const-string v13, "Trailing"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_4
    const/4 v11, 0x0

    :goto_4
    check-cast v11, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v11, :cond_5

    .line 852
    invoke-interface {v11, v3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicWidth(I)I

    move-result v7

    .line 851
    invoke-static {v5, v7}, Landroidx/compose/material3/TextFieldKt;->access$substractConstraintSafely(II)I

    move-result v5

    .line 854
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v11, v7}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    move v10, v7

    goto :goto_5

    :cond_5
    const/4 v10, 0x0

    .line 1307
    :goto_5
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v7

    const/4 v11, 0x0

    :goto_6
    if-ge v11, v7, :cond_7

    .line 1308
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 1305
    move-object v13, v12

    check-cast v13, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 858
    invoke-static {v13}, Landroidx/compose/material3/internal/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v13

    const-string v14, "Label"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    goto :goto_7

    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_7
    const/4 v12, 0x0

    :goto_7
    check-cast v12, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v12, :cond_8

    .line 859
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v12, v7}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    move v11, v7

    goto :goto_8

    :cond_8
    const/4 v11, 0x0

    .line 1316
    :goto_8
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v7

    const/4 v12, 0x0

    :goto_9
    if-ge v12, v7, :cond_a

    .line 1317
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .line 1314
    move-object v14, v13

    check-cast v14, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 863
    invoke-static {v14}, Landroidx/compose/material3/internal/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v14

    const-string v15, "Prefix"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    goto :goto_a

    :cond_9
    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    :cond_a
    const/4 v13, 0x0

    :goto_a
    check-cast v13, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v13, :cond_b

    .line 865
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v13, v7}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    .line 868
    invoke-interface {v13, v3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicWidth(I)I

    move-result v12

    .line 867
    invoke-static {v5, v12}, Landroidx/compose/material3/TextFieldKt;->access$substractConstraintSafely(II)I

    move-result v5

    move v12, v7

    goto :goto_b

    :cond_b
    const/4 v12, 0x0

    .line 1325
    :goto_b
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v7

    const/4 v13, 0x0

    :goto_c
    if-ge v13, v7, :cond_d

    .line 1326
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    .line 1323
    move-object v15, v14

    check-cast v15, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 874
    invoke-static {v15}, Landroidx/compose/material3/internal/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v15

    const-string v4, "Suffix"

    invoke-static {v15, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    goto :goto_d

    :cond_c
    add-int/lit8 v13, v13, 0x1

    goto :goto_c

    :cond_d
    const/4 v14, 0x0

    :goto_d
    check-cast v14, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v14, :cond_e

    .line 876
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v14, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 879
    invoke-interface {v14, v3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicWidth(I)I

    move-result v3

    .line 878
    invoke-static {v5, v3}, Landroidx/compose/material3/TextFieldKt;->access$substractConstraintSafely(II)I

    move-result v5

    goto :goto_e

    :cond_e
    const/4 v4, 0x0

    .line 1334
    :goto_e
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v7, 0x0

    :goto_f
    if-ge v7, v3, :cond_16

    .line 1335
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .line 1332
    move-object v14, v13

    check-cast v14, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 885
    invoke-static {v14}, Landroidx/compose/material3/internal/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v14

    const-string v15, "TextField"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_15

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v13, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v7

    .line 1343
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v13, 0x0

    :goto_10
    if-ge v13, v3, :cond_10

    .line 1344
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    .line 1341
    move-object v15, v14

    check-cast v15, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 888
    invoke-static {v15}, Landroidx/compose/material3/internal/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v15

    const-string v6, "Hint"

    invoke-static {v15, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    goto :goto_11

    :cond_f
    add-int/lit8 v13, v13, 0x1

    goto :goto_10

    :cond_10
    const/4 v14, 0x0

    :goto_11
    check-cast v14, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v14, :cond_11

    .line 889
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v14, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    move v13, v3

    goto :goto_12

    :cond_11
    const/4 v13, 0x0

    .line 1352
    :goto_12
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x0

    :goto_13
    if-ge v5, v3, :cond_13

    .line 1353
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 1350
    move-object v14, v6

    check-cast v14, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 893
    invoke-static {v14}, Landroidx/compose/material3/internal/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v14

    const-string v15, "Supporting"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_12

    goto :goto_14

    :cond_12
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    :cond_13
    const/4 v6, 0x0

    :goto_14
    check-cast v6, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v6, :cond_14

    .line 894
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v6, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    move v14, v1

    goto :goto_15

    :cond_14
    const/4 v14, 0x0

    .line 905
    :goto_15
    iget v15, v0, Landroidx/compose/material3/TextFieldMeasurePolicy;->animationProgress:F

    .line 906
    invoke-static {}, Landroidx/compose/material3/internal/TextFieldImplKt;->getZeroConstraints()J

    move-result-wide v16

    .line 907
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getDensity()F

    move-result v18

    .line 908
    iget-object v1, v0, Landroidx/compose/material3/TextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    move v8, v11

    move v11, v12

    move v12, v4

    move-object/from16 v19, v1

    .line 896
    invoke-static/range {v7 .. v19}, Landroidx/compose/material3/TextFieldKt;->access$calculateHeight-mKXJcVc(IIIIIIIIFJFLandroidx/compose/foundation/layout/PaddingValues;)I

    move-result v1

    return v1

    :cond_15
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_f

    .line 1339
    :cond_16
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "Collection contains no element matching the predicate."

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private final intrinsicWidth(Ljava/util/List;ILkotlin/jvm/functions/Function2;)I
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;I",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    .line 1225
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_13

    .line 1226
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 1223
    move-object v6, v5

    check-cast v6, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 793
    invoke-static {v6}, Landroidx/compose/material3/internal/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "TextField"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v5, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v8

    .line 1234
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    move v4, v3

    :goto_1
    const/4 v5, 0x0

    if-ge v4, v2, :cond_1

    .line 1235
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 1232
    move-object v7, v6

    check-cast v7, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 796
    invoke-static {v7}, Landroidx/compose/material3/internal/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v7

    const-string v9, "Label"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    move-object v6, v5

    :goto_2
    check-cast v6, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v6, :cond_2

    .line 797
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v6, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    move v9, v2

    goto :goto_3

    :cond_2
    move v9, v3

    .line 1244
    :goto_3
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    move v4, v3

    :goto_4
    if-ge v4, v2, :cond_4

    .line 1245
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 1242
    move-object v7, v6

    check-cast v7, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 800
    invoke-static {v7}, Landroidx/compose/material3/internal/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v7

    const-string v10, "Trailing"

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_5

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_4
    move-object v6, v5

    :goto_5
    check-cast v6, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v6, :cond_5

    .line 801
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v6, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    goto :goto_6

    :cond_5
    move v2, v3

    .line 1253
    :goto_6
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    move v6, v3

    :goto_7
    if-ge v6, v4, :cond_7

    .line 1254
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 1251
    move-object v10, v7

    check-cast v10, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 804
    invoke-static {v10}, Landroidx/compose/material3/internal/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v10

    const-string v11, "Prefix"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    goto :goto_8

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_7
    move-object v7, v5

    :goto_8
    check-cast v7, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v7, :cond_8

    .line 805
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v7, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    move v6, v4

    goto :goto_9

    :cond_8
    move v6, v3

    .line 1262
    :goto_9
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    move v7, v3

    :goto_a
    if-ge v7, v4, :cond_a

    .line 1263
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 1260
    move-object v11, v10

    check-cast v11, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 808
    invoke-static {v11}, Landroidx/compose/material3/internal/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v11

    const-string v12, "Suffix"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    goto :goto_b

    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    :cond_a
    move-object v10, v5

    :goto_b
    check-cast v10, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v10, :cond_b

    .line 809
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v10, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    move v7, v4

    goto :goto_c

    :cond_b
    move v7, v3

    .line 1271
    :goto_c
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    move v10, v3

    :goto_d
    if-ge v10, v4, :cond_d

    .line 1272
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 1269
    move-object v12, v11

    check-cast v12, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 812
    invoke-static {v12}, Landroidx/compose/material3/internal/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v12

    const-string v13, "Leading"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    goto :goto_e

    :cond_c
    add-int/lit8 v10, v10, 0x1

    goto :goto_d

    :cond_d
    move-object v11, v5

    :goto_e
    check-cast v11, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v11, :cond_e

    .line 813
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v11, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    goto :goto_f

    :cond_e
    move v4, v3

    .line 1280
    :goto_f
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v10

    move v11, v3

    :goto_10
    if-ge v11, v10, :cond_10

    .line 1281
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 1278
    move-object v13, v12

    check-cast v13, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 816
    invoke-static {v13}, Landroidx/compose/material3/internal/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v13

    const-string v14, "Hint"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    move-object v5, v12

    goto :goto_11

    :cond_f
    add-int/lit8 v11, v11, 0x1

    goto :goto_10

    :cond_10
    :goto_11
    check-cast v5, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v5, :cond_11

    .line 817
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v5, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v3

    :cond_11
    move v10, v3

    .line 826
    invoke-static {}, Landroidx/compose/material3/internal/TextFieldImplKt;->getZeroConstraints()J

    move-result-wide v11

    move v5, v2

    .line 818
    invoke-static/range {v4 .. v12}, Landroidx/compose/material3/TextFieldKt;->access$calculateWidth-yeHjK3Y(IIIIIIIJ)I

    move-result v0

    return v0

    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 1230
    :cond_13
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Collection contains no element matching the predicate."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public maxIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;I)I"
        }
    .end annotation

    .line 755
    sget-object v0, Landroidx/compose/material3/TextFieldMeasurePolicy$maxIntrinsicHeight$1;->INSTANCE:Landroidx/compose/material3/TextFieldMeasurePolicy$maxIntrinsicHeight$1;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/compose/material3/TextFieldMeasurePolicy;->intrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;ILkotlin/jvm/functions/Function2;)I

    move-result p1

    return p1
.end method

.method public maxIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;I)I"
        }
    .end annotation

    .line 773
    sget-object p1, Landroidx/compose/material3/TextFieldMeasurePolicy$maxIntrinsicWidth$1;->INSTANCE:Landroidx/compose/material3/TextFieldMeasurePolicy$maxIntrinsicWidth$1;

    check-cast p1, Lkotlin/jvm/functions/Function2;

    invoke-direct {p0, p2, p3, p1}, Landroidx/compose/material3/TextFieldMeasurePolicy;->intrinsicWidth(Ljava/util/List;ILkotlin/jvm/functions/Function2;)I

    move-result p1

    return p1
.end method

.method public measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 40
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/MeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/Measurable;",
            ">;J)",
            "Landroidx/compose/ui/layout/MeasureResult;"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v0, p2

    .line 583
    iget-object v1, v15, Landroidx/compose/material3/TextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-interface {v1}, Landroidx/compose/foundation/layout/PaddingValues;->calculateTopPadding-D9Ej5fM()F

    move-result v1

    invoke-interface {v14, v1}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v13

    .line 584
    iget-object v1, v15, Landroidx/compose/material3/TextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-interface {v1}, Landroidx/compose/foundation/layout/PaddingValues;->calculateBottomPadding-D9Ej5fM()F

    move-result v1

    invoke-interface {v14, v1}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v1

    const/16 v8, 0xa

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide/from16 v2, p3

    .line 589
    invoke-static/range {v2 .. v9}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v2

    .line 1144
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v4

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_1

    .line 1145
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 1142
    move-object v9, v8

    check-cast v9, Landroidx/compose/ui/layout/Measurable;

    .line 593
    invoke-static {v9}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v9

    const-string v10, "Leading"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    :goto_1
    check-cast v8, Landroidx/compose/ui/layout/Measurable;

    if-eqz v8, :cond_2

    invoke-interface {v8, v2, v3}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v4

    move-object v6, v4

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    .line 594
    :goto_2
    invoke-static {v6}, Landroidx/compose/material3/internal/TextFieldImplKt;->widthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v4

    .line 595
    invoke-static {v6}, Landroidx/compose/material3/internal/TextFieldImplKt;->heightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1153
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v9

    move v10, v5

    :goto_3
    if-ge v10, v9, :cond_4

    .line 1154
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 1151
    move-object v12, v11

    check-cast v12, Landroidx/compose/ui/layout/Measurable;

    .line 600
    invoke-static {v12}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v12

    const-string v5, "Trailing"

    invoke-static {v12, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v10, v10, 0x1

    const/4 v5, 0x0

    goto :goto_3

    :cond_4
    const/4 v11, 0x0

    :goto_4
    check-cast v11, Landroidx/compose/ui/layout/Measurable;

    if-eqz v11, :cond_5

    neg-int v5, v4

    const/16 v20, 0x2

    const/16 v21, 0x0

    const/16 v19, 0x0

    move-wide/from16 v16, v2

    move/from16 v18, v5

    .line 601
    invoke-static/range {v16 .. v21}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U$default(JIIILjava/lang/Object;)J

    move-result-wide v9

    invoke-interface {v11, v9, v10}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v5

    move-object v9, v5

    goto :goto_5

    :cond_5
    const/4 v9, 0x0

    .line 602
    :goto_5
    invoke-static {v9}, Landroidx/compose/material3/internal/TextFieldImplKt;->widthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v5

    add-int/2addr v4, v5

    .line 603
    invoke-static {v9}, Landroidx/compose/material3/internal/TextFieldImplKt;->heightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v5

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1162
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v8

    const/4 v10, 0x0

    :goto_6
    if-ge v10, v8, :cond_7

    .line 1163
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 1160
    move-object v12, v11

    check-cast v12, Landroidx/compose/ui/layout/Measurable;

    .line 608
    invoke-static {v12}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v12

    const-string v7, "Prefix"

    invoke-static {v12, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_7

    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_7
    const/4 v11, 0x0

    :goto_7
    check-cast v11, Landroidx/compose/ui/layout/Measurable;

    if-eqz v11, :cond_8

    neg-int v7, v4

    const/16 v20, 0x2

    const/16 v21, 0x0

    const/16 v19, 0x0

    move-wide/from16 v16, v2

    move/from16 v18, v7

    .line 609
    invoke-static/range {v16 .. v21}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U$default(JIIILjava/lang/Object;)J

    move-result-wide v7

    invoke-interface {v11, v7, v8}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v7

    move-object v8, v7

    goto :goto_8

    :cond_8
    const/4 v8, 0x0

    .line 610
    :goto_8
    invoke-static {v8}, Landroidx/compose/material3/internal/TextFieldImplKt;->widthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v7

    add-int/2addr v4, v7

    .line 611
    invoke-static {v8}, Landroidx/compose/material3/internal/TextFieldImplKt;->heightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1171
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v7

    const/4 v10, 0x0

    :goto_9
    if-ge v10, v7, :cond_a

    .line 1172
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 1169
    move-object v12, v11

    check-cast v12, Landroidx/compose/ui/layout/Measurable;

    .line 616
    invoke-static {v12}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v12

    move/from16 v16, v7

    const-string v7, "Suffix"

    invoke-static {v12, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    goto :goto_a

    :cond_9
    add-int/lit8 v10, v10, 0x1

    move/from16 v7, v16

    goto :goto_9

    :cond_a
    const/4 v11, 0x0

    :goto_a
    check-cast v11, Landroidx/compose/ui/layout/Measurable;

    if-eqz v11, :cond_b

    neg-int v7, v4

    const/16 v20, 0x2

    const/16 v21, 0x0

    const/16 v19, 0x0

    move-wide/from16 v16, v2

    move/from16 v18, v7

    .line 617
    invoke-static/range {v16 .. v21}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U$default(JIIILjava/lang/Object;)J

    move-result-wide v14

    invoke-interface {v11, v14, v15}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v7

    move-object v10, v7

    goto :goto_b

    :cond_b
    const/4 v10, 0x0

    .line 618
    :goto_b
    invoke-static {v10}, Landroidx/compose/material3/internal/TextFieldImplKt;->widthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v7

    add-int/2addr v4, v7

    .line 619
    invoke-static {v10}, Landroidx/compose/material3/internal/TextFieldImplKt;->heightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    neg-int v7, v1

    neg-int v4, v4

    .line 623
    invoke-static {v2, v3, v4, v7}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U(JII)J

    move-result-wide v11

    .line 1180
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v7

    const/4 v14, 0x0

    :goto_c
    if-ge v14, v7, :cond_d

    .line 1181
    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    .line 1178
    move-object/from16 v16, v15

    check-cast v16, Landroidx/compose/ui/layout/Measurable;

    move/from16 v17, v7

    .line 628
    invoke-static/range {v16 .. v16}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v16, v15

    const-string v15, "Label"

    invoke-static {v7, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    move-object/from16 v15, v16

    goto :goto_d

    :cond_c
    add-int/lit8 v14, v14, 0x1

    move/from16 v7, v17

    goto :goto_c

    :cond_d
    const/4 v15, 0x0

    :goto_d
    check-cast v15, Landroidx/compose/ui/layout/Measurable;

    if-eqz v15, :cond_e

    invoke-interface {v15, v11, v12}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v7

    goto :goto_e

    :cond_e
    const/4 v7, 0x0

    .line 1189
    :goto_e
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x0

    :goto_f
    if-ge v12, v11, :cond_10

    .line 1190
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    .line 1187
    move-object v15, v14

    check-cast v15, Landroidx/compose/ui/layout/Measurable;

    .line 632
    invoke-static {v15}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v15

    move/from16 v16, v11

    const-string v11, "Supporting"

    invoke-static {v15, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    goto :goto_10

    :cond_f
    add-int/lit8 v12, v12, 0x1

    move/from16 v11, v16

    goto :goto_f

    :cond_10
    const/4 v14, 0x0

    :goto_10
    check-cast v14, Landroidx/compose/ui/layout/Measurable;

    if-eqz v14, :cond_11

    .line 634
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v11

    invoke-interface {v14, v11}, Landroidx/compose/ui/layout/Measurable;->minIntrinsicHeight(I)I

    move-result v11

    goto :goto_11

    :cond_11
    const/4 v11, 0x0

    .line 637
    :goto_11
    invoke-static {v7}, Landroidx/compose/material3/internal/TextFieldImplKt;->heightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v12

    add-int/2addr v12, v13

    const/16 v29, 0xb

    const/16 v30, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-wide/from16 v23, p3

    move v15, v13

    move-object/from16 v31, v14

    .line 640
    invoke-static/range {v23 .. v30}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v13

    move/from16 v23, v15

    neg-int v15, v12

    sub-int/2addr v15, v1

    sub-int/2addr v15, v11

    .line 641
    invoke-static {v13, v14, v4, v15}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U(JII)J

    move-result-wide v13

    .line 1198
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v11, 0x0

    :goto_12
    const-string v15, "Collection contains no element matching the predicate."

    if-ge v11, v4, :cond_1b

    .line 1199
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move/from16 v17, v4

    .line 1196
    move-object/from16 v4, v16

    check-cast v4, Landroidx/compose/ui/layout/Measurable;

    move/from16 v16, v11

    .line 646
    invoke-static {v4}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v24, v15

    const-string v15, "TextField"

    invoke-static {v11, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1a

    invoke-interface {v4, v13, v14}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v4

    const/16 v38, 0xe

    const/16 v39, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    move-wide/from16 v32, v13

    .line 649
    invoke-static/range {v32 .. v39}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v13

    .line 1207
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v11

    const/4 v15, 0x0

    :goto_13
    if-ge v15, v11, :cond_13

    .line 1208
    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .line 1205
    move-object/from16 v17, v16

    check-cast v17, Landroidx/compose/ui/layout/Measurable;

    move/from16 v18, v11

    .line 652
    invoke-static/range {v17 .. v17}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v11

    const-string v0, "Hint"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_14

    :cond_12
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p2

    move/from16 v11, v18

    goto :goto_13

    :cond_13
    const/16 v16, 0x0

    :goto_14
    move-object/from16 v0, v16

    check-cast v0, Landroidx/compose/ui/layout/Measurable;

    if-eqz v0, :cond_14

    .line 653
    invoke-interface {v0, v13, v14}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v0

    move-object v11, v0

    goto :goto_15

    :cond_14
    const/4 v11, 0x0

    .line 658
    :goto_15
    invoke-static {v4}, Landroidx/compose/material3/internal/TextFieldImplKt;->heightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v0

    invoke-static {v11}, Landroidx/compose/material3/internal/TextFieldImplKt;->heightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v13

    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v12

    add-int/2addr v0, v1

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 664
    invoke-static {v6}, Landroidx/compose/material3/internal/TextFieldImplKt;->widthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v12

    .line 665
    invoke-static {v9}, Landroidx/compose/material3/internal/TextFieldImplKt;->widthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v13

    .line 666
    invoke-static {v8}, Landroidx/compose/material3/internal/TextFieldImplKt;->widthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v14

    .line 667
    invoke-static {v10}, Landroidx/compose/material3/internal/TextFieldImplKt;->widthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v15

    .line 668
    invoke-virtual {v4}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v16

    .line 669
    invoke-static {v7}, Landroidx/compose/material3/internal/TextFieldImplKt;->widthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v17

    .line 670
    invoke-static {v11}, Landroidx/compose/material3/internal/TextFieldImplKt;->widthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v18

    move-wide/from16 v19, p3

    .line 663
    invoke-static/range {v12 .. v20}, Landroidx/compose/material3/TextFieldKt;->access$calculateWidth-yeHjK3Y(IIIIIIIJ)I

    move-result v15

    neg-int v0, v0

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v18, 0x0

    move-wide/from16 v16, v2

    move/from16 v19, v0

    .line 677
    invoke-static/range {v16 .. v21}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U$default(JIIILjava/lang/Object;)J

    move-result-wide v32

    const/16 v38, 0x9

    const/16 v39, 0x0

    const/16 v34, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    move/from16 v35, v15

    .line 678
    invoke-static/range {v32 .. v39}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v0

    if-eqz v31, :cond_15

    move-object/from16 v2, v31

    .line 679
    invoke-interface {v2, v0, v1}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v0

    move-object/from16 v22, v0

    goto :goto_16

    :cond_15
    const/16 v22, 0x0

    .line 680
    :goto_16
    invoke-static/range {v22 .. v22}, Landroidx/compose/material3/internal/TextFieldImplKt;->heightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v0

    .line 684
    invoke-virtual {v4}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v25

    .line 685
    invoke-static {v7}, Landroidx/compose/material3/internal/TextFieldImplKt;->heightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v26

    .line 686
    invoke-static {v6}, Landroidx/compose/material3/internal/TextFieldImplKt;->heightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v27

    .line 687
    invoke-static {v9}, Landroidx/compose/material3/internal/TextFieldImplKt;->heightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v28

    .line 688
    invoke-static {v8}, Landroidx/compose/material3/internal/TextFieldImplKt;->heightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v29

    .line 689
    invoke-static {v10}, Landroidx/compose/material3/internal/TextFieldImplKt;->heightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v30

    .line 690
    invoke-static {v11}, Landroidx/compose/material3/internal/TextFieldImplKt;->heightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v31

    .line 691
    invoke-static/range {v22 .. v22}, Landroidx/compose/material3/internal/TextFieldImplKt;->heightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v32

    move-object/from16 v14, p0

    .line 692
    iget v1, v14, Landroidx/compose/material3/TextFieldMeasurePolicy;->animationProgress:F

    .line 694
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/layout/MeasureScope;->getDensity()F

    move-result v36

    .line 695
    iget-object v2, v14, Landroidx/compose/material3/TextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    move/from16 v33, v1

    move-wide/from16 v34, p3

    move-object/from16 v37, v2

    .line 683
    invoke-static/range {v25 .. v37}, Landroidx/compose/material3/TextFieldKt;->access$calculateHeight-mKXJcVc(IIIIIIIIFJFLandroidx/compose/foundation/layout/PaddingValues;)I

    move-result v16

    sub-int v0, v16, v0

    .line 1216
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_17
    if-ge v2, v1, :cond_19

    move-object/from16 v3, p2

    .line 1217
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 1214
    check-cast v5, Landroidx/compose/ui/layout/Measurable;

    .line 701
    invoke-static {v5}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v12

    const-string v13, "Container"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_18

    const v1, 0x7fffffff

    if-eq v15, v1, :cond_16

    move v2, v15

    goto :goto_18

    :cond_16
    const/4 v2, 0x0

    :goto_18
    if-eq v0, v1, :cond_17

    move v1, v0

    goto :goto_19

    :cond_17
    const/4 v1, 0x0

    .line 703
    :goto_19
    invoke-static {v2, v15, v1, v0}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints(IIII)J

    move-result-wide v0

    .line 702
    invoke-interface {v5, v0, v1}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v12

    .line 711
    new-instance v17, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;

    move-object/from16 v0, v17

    move-object v1, v7

    move v2, v15

    move/from16 v3, v16

    move-object v5, v11

    move-object v7, v9

    move-object v9, v10

    move-object v10, v12

    move-object/from16 v11, v22

    move-object/from16 v12, p0

    move/from16 v13, v23

    move-object/from16 v14, p1

    invoke-direct/range {v0 .. v14}, Landroidx/compose/material3/TextFieldMeasurePolicy$measure$1;-><init>(Landroidx/compose/ui/layout/Placeable;IILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/material3/TextFieldMeasurePolicy;ILandroidx/compose/ui/layout/MeasureScope;)V

    move-object/from16 v4, v17

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move v1, v15

    move/from16 v2, v16

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0

    :cond_18
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v14, p0

    goto :goto_17

    .line 1221
    :cond_19
    new-instance v0, Ljava/util/NoSuchElementException;

    move-object/from16 v4, v24

    invoke-direct {v0, v4}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    move-object/from16 v0, v31

    add-int/lit8 v11, v16, 0x1

    move/from16 v4, v17

    move-object/from16 v0, p2

    goto/16 :goto_12

    :cond_1b
    move-object v4, v15

    .line 1203
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0, v4}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public minIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;I)I"
        }
    .end annotation

    .line 764
    sget-object v0, Landroidx/compose/material3/TextFieldMeasurePolicy$minIntrinsicHeight$1;->INSTANCE:Landroidx/compose/material3/TextFieldMeasurePolicy$minIntrinsicHeight$1;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/compose/material3/TextFieldMeasurePolicy;->intrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;ILkotlin/jvm/functions/Function2;)I

    move-result p1

    return p1
.end method

.method public minIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;I)I"
        }
    .end annotation

    .line 782
    sget-object p1, Landroidx/compose/material3/TextFieldMeasurePolicy$minIntrinsicWidth$1;->INSTANCE:Landroidx/compose/material3/TextFieldMeasurePolicy$minIntrinsicWidth$1;

    check-cast p1, Lkotlin/jvm/functions/Function2;

    invoke-direct {p0, p2, p3, p1}, Landroidx/compose/material3/TextFieldMeasurePolicy;->intrinsicWidth(Ljava/util/List;ILkotlin/jvm/functions/Function2;)I

    move-result p1

    return p1
.end method
