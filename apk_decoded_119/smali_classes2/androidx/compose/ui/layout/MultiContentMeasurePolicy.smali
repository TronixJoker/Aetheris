.class public interface abstract Landroidx/compose/ui/layout/MultiContentMeasurePolicy;
.super Ljava/lang/Object;
.source "MultiContentMeasurePolicy.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMultiContentMeasurePolicy.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MultiContentMeasurePolicy.kt\nandroidx/compose/ui/layout/MultiContentMeasurePolicy\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,240:1\n151#2,3:241\n33#2,4:244\n154#2:248\n151#2,3:249\n33#2,4:252\n154#2,2:256\n38#2:258\n156#2:259\n155#2:260\n38#2:261\n156#2:262\n151#2,3:263\n33#2,4:266\n154#2:270\n151#2,3:271\n33#2,4:274\n154#2,2:278\n38#2:280\n156#2:281\n155#2:282\n38#2:283\n156#2:284\n151#2,3:285\n33#2,4:288\n154#2:292\n151#2,3:293\n33#2,4:296\n154#2,2:300\n38#2:302\n156#2:303\n155#2:304\n38#2:305\n156#2:306\n151#2,3:307\n33#2,4:310\n154#2:314\n151#2,3:315\n33#2,4:318\n154#2,2:322\n38#2:324\n156#2:325\n155#2:326\n38#2:327\n156#2:328\n*S KotlinDebug\n*F\n+ 1 MultiContentMeasurePolicy.kt\nandroidx/compose/ui/layout/MultiContentMeasurePolicy\n*L\n112#1:241,3\n112#1:244,4\n112#1:248\n113#1:249,3\n113#1:252,4\n113#1:256,2\n113#1:258\n113#1:259\n112#1:260\n112#1:261\n112#1:262\n137#1:263,3\n137#1:266,4\n137#1:270\n138#1:271,3\n138#1:274,4\n138#1:278,2\n138#1:280\n138#1:281\n137#1:282\n137#1:283\n137#1:284\n161#1:285,3\n161#1:288,4\n161#1:292\n162#1:293,3\n162#1:296,4\n162#1:300,2\n162#1:302\n162#1:303\n161#1:304\n161#1:305\n161#1:306\n185#1:307,3\n185#1:310,4\n185#1:314\n186#1:315,3\n186#1:318,4\n186#1:322,2\n186#1:324\n186#1:325\n185#1:326\n185#1:327\n185#1:328\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00e7\u0080\u0001\u0018\u00002\u00020\u0001J(\u0010\u0002\u001a\u00020\u0003*\u00020\u00042\u0012\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00060\u00062\u0006\u0010\u0008\u001a\u00020\u0003H\u0016J(\u0010\t\u001a\u00020\u0003*\u00020\u00042\u0012\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00060\u00062\u0006\u0010\n\u001a\u00020\u0003H\u0016J2\u0010\u000b\u001a\u00020\u000c*\u00020\r2\u0012\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\u00060\u00062\u0006\u0010\u000f\u001a\u00020\u0010H&\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J(\u0010\u0013\u001a\u00020\u0003*\u00020\u00042\u0012\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00060\u00062\u0006\u0010\u0008\u001a\u00020\u0003H\u0016J(\u0010\u0014\u001a\u00020\u0003*\u00020\u00042\u0012\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00060\u00062\u0006\u0010\n\u001a\u00020\u0003H\u0016\u00f8\u0001\u0001\u0082\u0002\r\n\u0005\u0008\u00a1\u001e0\u0001\n\u0004\u0008!0\u0001\u00a8\u0006\u0015\u00c0\u0006\u0001"
    }
    d2 = {
        "Landroidx/compose/ui/layout/MultiContentMeasurePolicy;",
        "",
        "maxIntrinsicHeight",
        "",
        "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
        "measurables",
        "",
        "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
        "width",
        "maxIntrinsicWidth",
        "height",
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


# virtual methods
.method public maxIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "Ljava/util/List<",
            "+",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;>;I)I"
        }
    .end annotation

    .line 308
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 311
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    move-object/from16 v4, p2

    .line 312
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 314
    move-object v6, v0

    check-cast v6, Ljava/util/Collection;

    check-cast v5, Ljava/util/List;

    .line 316
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 319
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    move v9, v2

    :goto_1
    if-ge v9, v8, :cond_0

    .line 320
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 322
    move-object v11, v7

    check-cast v11, Ljava/util/Collection;

    check-cast v10, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 187
    new-instance v12, Landroidx/compose/ui/layout/DefaultIntrinsicMeasurable;

    sget-object v13, Landroidx/compose/ui/layout/IntrinsicMinMax;->Max:Landroidx/compose/ui/layout/IntrinsicMinMax;

    sget-object v14, Landroidx/compose/ui/layout/IntrinsicWidthHeight;->Height:Landroidx/compose/ui/layout/IntrinsicWidthHeight;

    invoke-direct {v12, v10, v13, v14}, Landroidx/compose/ui/layout/DefaultIntrinsicMeasurable;-><init>(Landroidx/compose/ui/layout/IntrinsicMeasurable;Landroidx/compose/ui/layout/IntrinsicMinMax;Landroidx/compose/ui/layout/IntrinsicWidthHeight;)V

    .line 322
    invoke-interface {v11, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 325
    :cond_0
    check-cast v7, Ljava/util/List;

    .line 314
    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 328
    :cond_1
    check-cast v0, Ljava/util/List;

    const/16 v5, 0xd

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v2, p3

    .line 190
    invoke-static/range {v1 .. v6}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(IIIIILjava/lang/Object;)J

    move-result-wide v1

    .line 191
    new-instance v3, Landroidx/compose/ui/layout/IntrinsicsMeasureScope;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v4

    move-object/from16 v5, p1

    invoke-direct {v3, v5, v4}, Landroidx/compose/ui/layout/IntrinsicsMeasureScope;-><init>(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 192
    check-cast v3, Landroidx/compose/ui/layout/MeasureScope;

    move-object v4, p0

    invoke-interface {p0, v3, v0, v1, v2}, Landroidx/compose/ui/layout/MultiContentMeasurePolicy;->measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    .line 193
    invoke-interface {v0}, Landroidx/compose/ui/layout/MeasureResult;->getHeight()I

    move-result v0

    return v0
.end method

.method public maxIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "Ljava/util/List<",
            "+",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;>;I)I"
        }
    .end annotation

    .line 286
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 289
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    move-object/from16 v4, p2

    .line 290
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 292
    move-object v6, v0

    check-cast v6, Ljava/util/Collection;

    check-cast v5, Ljava/util/List;

    .line 294
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 297
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    move v9, v2

    :goto_1
    if-ge v9, v8, :cond_0

    .line 298
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 300
    move-object v11, v7

    check-cast v11, Ljava/util/Collection;

    check-cast v10, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 163
    new-instance v12, Landroidx/compose/ui/layout/DefaultIntrinsicMeasurable;

    sget-object v13, Landroidx/compose/ui/layout/IntrinsicMinMax;->Max:Landroidx/compose/ui/layout/IntrinsicMinMax;

    sget-object v14, Landroidx/compose/ui/layout/IntrinsicWidthHeight;->Width:Landroidx/compose/ui/layout/IntrinsicWidthHeight;

    invoke-direct {v12, v10, v13, v14}, Landroidx/compose/ui/layout/DefaultIntrinsicMeasurable;-><init>(Landroidx/compose/ui/layout/IntrinsicMeasurable;Landroidx/compose/ui/layout/IntrinsicMinMax;Landroidx/compose/ui/layout/IntrinsicWidthHeight;)V

    .line 300
    invoke-interface {v11, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 303
    :cond_0
    check-cast v7, Ljava/util/List;

    .line 292
    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 306
    :cond_1
    check-cast v0, Ljava/util/List;

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v4, p3

    .line 166
    invoke-static/range {v1 .. v6}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(IIIIILjava/lang/Object;)J

    move-result-wide v1

    .line 167
    new-instance v3, Landroidx/compose/ui/layout/IntrinsicsMeasureScope;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v4

    move-object/from16 v5, p1

    invoke-direct {v3, v5, v4}, Landroidx/compose/ui/layout/IntrinsicsMeasureScope;-><init>(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 168
    check-cast v3, Landroidx/compose/ui/layout/MeasureScope;

    move-object v4, p0

    invoke-interface {p0, v3, v0, v1, v2}, Landroidx/compose/ui/layout/MultiContentMeasurePolicy;->measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    .line 169
    invoke-interface {v0}, Landroidx/compose/ui/layout/MeasureResult;->getWidth()I

    move-result v0

    return v0
.end method

.method public abstract measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/MeasureScope;",
            "Ljava/util/List<",
            "+",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/Measurable;",
            ">;>;J)",
            "Landroidx/compose/ui/layout/MeasureResult;"
        }
    .end annotation
.end method

.method public minIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "Ljava/util/List<",
            "+",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;>;I)I"
        }
    .end annotation

    .line 264
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 267
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    move-object/from16 v4, p2

    .line 268
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 270
    move-object v6, v0

    check-cast v6, Ljava/util/Collection;

    check-cast v5, Ljava/util/List;

    .line 272
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 275
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    move v9, v2

    :goto_1
    if-ge v9, v8, :cond_0

    .line 276
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 278
    move-object v11, v7

    check-cast v11, Ljava/util/Collection;

    check-cast v10, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 139
    new-instance v12, Landroidx/compose/ui/layout/DefaultIntrinsicMeasurable;

    sget-object v13, Landroidx/compose/ui/layout/IntrinsicMinMax;->Min:Landroidx/compose/ui/layout/IntrinsicMinMax;

    sget-object v14, Landroidx/compose/ui/layout/IntrinsicWidthHeight;->Height:Landroidx/compose/ui/layout/IntrinsicWidthHeight;

    invoke-direct {v12, v10, v13, v14}, Landroidx/compose/ui/layout/DefaultIntrinsicMeasurable;-><init>(Landroidx/compose/ui/layout/IntrinsicMeasurable;Landroidx/compose/ui/layout/IntrinsicMinMax;Landroidx/compose/ui/layout/IntrinsicWidthHeight;)V

    .line 278
    invoke-interface {v11, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 281
    :cond_0
    check-cast v7, Ljava/util/List;

    .line 270
    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 284
    :cond_1
    check-cast v0, Ljava/util/List;

    const/16 v5, 0xd

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v2, p3

    .line 142
    invoke-static/range {v1 .. v6}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(IIIIILjava/lang/Object;)J

    move-result-wide v1

    .line 143
    new-instance v3, Landroidx/compose/ui/layout/IntrinsicsMeasureScope;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v4

    move-object/from16 v5, p1

    invoke-direct {v3, v5, v4}, Landroidx/compose/ui/layout/IntrinsicsMeasureScope;-><init>(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 144
    check-cast v3, Landroidx/compose/ui/layout/MeasureScope;

    move-object v4, p0

    invoke-interface {p0, v3, v0, v1, v2}, Landroidx/compose/ui/layout/MultiContentMeasurePolicy;->measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    .line 145
    invoke-interface {v0}, Landroidx/compose/ui/layout/MeasureResult;->getHeight()I

    move-result v0

    return v0
.end method

.method public minIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "Ljava/util/List<",
            "+",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;>;I)I"
        }
    .end annotation

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 245
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    move-object/from16 v4, p2

    .line 246
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 248
    move-object v6, v0

    check-cast v6, Ljava/util/Collection;

    check-cast v5, Ljava/util/List;

    .line 250
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 253
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    move v9, v2

    :goto_1
    if-ge v9, v8, :cond_0

    .line 254
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 256
    move-object v11, v7

    check-cast v11, Ljava/util/Collection;

    check-cast v10, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 114
    new-instance v12, Landroidx/compose/ui/layout/DefaultIntrinsicMeasurable;

    sget-object v13, Landroidx/compose/ui/layout/IntrinsicMinMax;->Min:Landroidx/compose/ui/layout/IntrinsicMinMax;

    sget-object v14, Landroidx/compose/ui/layout/IntrinsicWidthHeight;->Width:Landroidx/compose/ui/layout/IntrinsicWidthHeight;

    invoke-direct {v12, v10, v13, v14}, Landroidx/compose/ui/layout/DefaultIntrinsicMeasurable;-><init>(Landroidx/compose/ui/layout/IntrinsicMeasurable;Landroidx/compose/ui/layout/IntrinsicMinMax;Landroidx/compose/ui/layout/IntrinsicWidthHeight;)V

    .line 256
    invoke-interface {v11, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 259
    :cond_0
    check-cast v7, Ljava/util/List;

    .line 248
    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 262
    :cond_1
    check-cast v0, Ljava/util/List;

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v4, p3

    .line 117
    invoke-static/range {v1 .. v6}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(IIIIILjava/lang/Object;)J

    move-result-wide v1

    .line 118
    new-instance v3, Landroidx/compose/ui/layout/IntrinsicsMeasureScope;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v4

    move-object/from16 v5, p1

    invoke-direct {v3, v5, v4}, Landroidx/compose/ui/layout/IntrinsicsMeasureScope;-><init>(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 119
    check-cast v3, Landroidx/compose/ui/layout/MeasureScope;

    move-object v4, p0

    invoke-interface {p0, v3, v0, v1, v2}, Landroidx/compose/ui/layout/MultiContentMeasurePolicy;->measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    .line 120
    invoke-interface {v0}, Landroidx/compose/ui/layout/MeasureResult;->getWidth()I

    move-result v0

    return v0
.end method
