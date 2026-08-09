.class final Landroidx/compose/material3/SearchBar_androidKt$SearchBarLayout$2$1;
.super Ljava/lang/Object;
.source "SearchBar.android.kt"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/SearchBar_androidKt;->SearchBarLayout(Landroidx/compose/animation/core/Animatable;Landroidx/compose/runtime/MutableFloatState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSearchBar.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchBar.android.kt\nandroidx/compose/material3/SearchBar_androidKt$SearchBarLayout$2$1\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,1243:1\n544#2,2:1244\n33#2,6:1246\n546#2:1252\n544#2,2:1253\n33#2,6:1255\n546#2:1261\n116#2,2:1262\n33#2,6:1264\n118#2:1270\n*S KotlinDebug\n*F\n+ 1 SearchBar.android.kt\nandroidx/compose/material3/SearchBar_androidKt$SearchBarLayout$2$1\n*L\n969#1:1244,2\n969#1:1246,6\n969#1:1252\n970#1:1253,2\n970#1:1255,6\n970#1:1261\n971#1:1262,2\n971#1:1264,6\n971#1:1270\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\n\u00a2\u0006\u0004\u0008\u0008\u0010\t"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "Landroidx/compose/ui/layout/MeasureScope;",
        "measurables",
        "",
        "Landroidx/compose/ui/layout/Measurable;",
        "constraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "measure-3p2s80s",
        "(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $animationProgress:Landroidx/compose/animation/core/Animatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/Animatable<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $currentBackEvent:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/activity/BackEventCompat;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $finalBackProgress:Landroidx/compose/runtime/MutableFloatState;

.field final synthetic $firstBackEvent:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/activity/BackEventCompat;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $unconsumedInsets:Landroidx/compose/material3/internal/MutableWindowInsets;


# direct methods
.method constructor <init>(Landroidx/compose/animation/core/Animatable;Landroidx/compose/material3/internal/MutableWindowInsets;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableFloatState;Landroidx/compose/runtime/MutableState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/Animatable<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;",
            "Landroidx/compose/material3/internal/MutableWindowInsets;",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/activity/BackEventCompat;",
            ">;",
            "Landroidx/compose/runtime/MutableFloatState;",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/activity/BackEventCompat;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/SearchBar_androidKt$SearchBarLayout$2$1;->$animationProgress:Landroidx/compose/animation/core/Animatable;

    iput-object p2, p0, Landroidx/compose/material3/SearchBar_androidKt$SearchBarLayout$2$1;->$unconsumedInsets:Landroidx/compose/material3/internal/MutableWindowInsets;

    iput-object p3, p0, Landroidx/compose/material3/SearchBar_androidKt$SearchBarLayout$2$1;->$currentBackEvent:Landroidx/compose/runtime/MutableState;

    iput-object p4, p0, Landroidx/compose/material3/SearchBar_androidKt$SearchBarLayout$2$1;->$finalBackProgress:Landroidx/compose/runtime/MutableFloatState;

    iput-object p5, p0, Landroidx/compose/material3/SearchBar_androidKt$SearchBarLayout$2$1;->$firstBackEvent:Landroidx/compose/runtime/MutableState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 22
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

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    move-object/from16 v1, p2

    move-wide/from16 v3, p3

    .line 967
    iget-object v2, v0, Landroidx/compose/material3/SearchBar_androidKt$SearchBarLayout$2$1;->$animationProgress:Landroidx/compose/animation/core/Animatable;

    invoke-virtual {v2}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v6

    .line 1247
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v7, 0x0

    :goto_0
    const-string v8, "Collection contains no element matching the predicate."

    if-ge v7, v2, :cond_7

    .line 1248
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 1245
    check-cast v9, Landroidx/compose/ui/layout/Measurable;

    .line 969
    invoke-static {v9}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v10

    const-string v11, "InputField"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1256
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v2, :cond_5

    .line 1257
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 1254
    check-cast v10, Landroidx/compose/ui/layout/Measurable;

    .line 970
    invoke-static {v10}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v11

    const-string v12, "Surface"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1265
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v2, :cond_1

    .line 1266
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 1263
    move-object v12, v11

    check-cast v12, Landroidx/compose/ui/layout/Measurable;

    .line 971
    invoke-static {v12}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v12

    const-string v13, "Content"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    goto :goto_3

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_1
    const/4 v11, 0x0

    :goto_3
    check-cast v11, Landroidx/compose/ui/layout/Measurable;

    .line 973
    iget-object v1, v0, Landroidx/compose/material3/SearchBar_androidKt$SearchBarLayout$2$1;->$unconsumedInsets:Landroidx/compose/material3/internal/MutableWindowInsets;

    move-object v2, v15

    check-cast v2, Landroidx/compose/ui/unit/Density;

    invoke-virtual {v1, v2}, Landroidx/compose/material3/internal/MutableWindowInsets;->getTop(Landroidx/compose/ui/unit/Density;)I

    move-result v1

    invoke-static {}, Landroidx/compose/material3/SearchBar_androidKt;->getSearchBarVerticalPadding()F

    move-result v2

    invoke-interface {v15, v2}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v2

    add-int v13, v1, v2

    .line 974
    invoke-static {}, Landroidx/compose/material3/SearchBar_androidKt;->getSearchBarVerticalPadding()F

    move-result v1

    invoke-interface {v15, v1}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v1

    .line 978
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v2

    invoke-interface {v9, v2}, Landroidx/compose/ui/layout/Measurable;->maxIntrinsicWidth(I)I

    move-result v2

    .line 977
    invoke-static {v3, v4, v2}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(JI)I

    move-result v2

    .line 982
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v7

    invoke-interface {v9, v7}, Landroidx/compose/ui/layout/Measurable;->minIntrinsicHeight(I)I

    move-result v7

    .line 981
    invoke-static {v3, v4, v7}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(JI)I

    move-result v7

    .line 986
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v12

    int-to-float v12, v12

    const v14, 0x3f666666    # 0.9f

    mul-float/2addr v12, v14

    invoke-static {v12}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v12

    .line 988
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v14

    invoke-static {v8}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v8

    .line 991
    iget-object v14, v0, Landroidx/compose/material3/SearchBar_androidKt$SearchBarLayout$2$1;->$currentBackEvent:Landroidx/compose/runtime/MutableState;

    invoke-interface {v14}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/activity/BackEventCompat;

    .line 993
    iget-object v5, v0, Landroidx/compose/material3/SearchBar_androidKt$SearchBarLayout$2$1;->$finalBackProgress:Landroidx/compose/runtime/MutableFloatState;

    invoke-interface {v5}, Landroidx/compose/runtime/MutableFloatState;->getFloatValue()F

    move-result v5

    .line 990
    invoke-static {v14, v6, v5}, Landroidx/compose/material3/SearchBar_androidKt;->access$calculatePredictiveBackMultiplier(Landroidx/activity/BackEventCompat;FF)F

    move-result v14

    .line 996
    invoke-static {v2, v12, v14}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(IIF)I

    move-result v2

    add-int v5, v13, v7

    .line 998
    invoke-static {v5, v8, v14}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(IIF)I

    move-result v8

    .line 1004
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v12

    .line 1005
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v3

    .line 1007
    invoke-static {v2, v12, v6}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(IIF)I

    move-result v2

    .line 1008
    invoke-static {v8, v3, v6}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(IIF)I

    move-result v18

    const/4 v3, 0x0

    .line 1011
    invoke-static {v13, v3, v6}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(IIF)I

    move-result v19

    .line 1012
    invoke-static {v3, v1, v6}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(IIF)I

    move-result v20

    .line 1016
    invoke-static {v2, v12, v7, v7}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints(IIII)J

    move-result-wide v2

    .line 1015
    invoke-interface {v9, v2, v3}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v12

    .line 1023
    invoke-virtual {v12}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v9

    .line 1028
    sget-object v2, Landroidx/compose/ui/unit/Constraints;->Companion:Landroidx/compose/ui/unit/Constraints$Companion;

    sub-int v3, v18, v19

    invoke-virtual {v2, v9, v3}, Landroidx/compose/ui/unit/Constraints$Companion;->fixed-JhjzzOo(II)J

    move-result-wide v2

    invoke-interface {v10, v2, v3}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v10

    if-eqz v11, :cond_3

    .line 1036
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getHasBoundedHeight-impl(J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1037
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v2

    add-int/2addr v5, v1

    sub-int/2addr v2, v5

    const/4 v3, 0x0

    .line 1039
    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v1

    goto :goto_4

    :cond_2
    const/4 v3, 0x0

    .line 1041
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v1

    .line 1031
    :goto_4
    invoke-static {v9, v9, v3, v1}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints(IIII)J

    move-result-wide v1

    .line 1030
    invoke-interface {v11, v1, v2}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v1

    move-object/from16 v16, v1

    goto :goto_5

    :cond_3
    const/16 v16, 0x0

    .line 1046
    :goto_5
    new-instance v17, Landroidx/compose/material3/SearchBar_androidKt$SearchBarLayout$2$1$1;

    iget-object v5, v0, Landroidx/compose/material3/SearchBar_androidKt$SearchBarLayout$2$1;->$currentBackEvent:Landroidx/compose/runtime/MutableState;

    iget-object v8, v0, Landroidx/compose/material3/SearchBar_androidKt$SearchBarLayout$2$1;->$firstBackEvent:Landroidx/compose/runtime/MutableState;

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    move-wide/from16 v3, p3

    move v7, v14

    move/from16 v21, v9

    move/from16 v9, v18

    move/from16 v11, v19

    move-object/from16 v14, v16

    move/from16 v15, v20

    invoke-direct/range {v1 .. v15}, Landroidx/compose/material3/SearchBar_androidKt$SearchBarLayout$2$1$1;-><init>(Landroidx/compose/ui/layout/MeasureScope;JLandroidx/compose/runtime/MutableState;FFLandroidx/compose/runtime/MutableState;ILandroidx/compose/ui/layout/Placeable;ILandroidx/compose/ui/layout/Placeable;ILandroidx/compose/ui/layout/Placeable;I)V

    move-object/from16 v5, v17

    check-cast v5, Lkotlin/jvm/functions/Function1;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move/from16 v2, v21

    move/from16 v3, v18

    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v1

    return-object v1

    :cond_4
    const/4 v3, 0x0

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v15, p1

    move-wide/from16 v3, p3

    goto/16 :goto_1

    .line 1261
    :cond_5
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1, v8}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    const/4 v3, 0x0

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v15, p1

    move-wide/from16 v3, p3

    goto/16 :goto_0

    .line 1252
    :cond_7
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1, v8}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
