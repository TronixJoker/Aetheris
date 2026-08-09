.class public final Lcom/xiaozhi/android/ui/theme/ThemeKt;
.super Ljava/lang/Object;
.source "Theme.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a*\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0011\u0010\u0007\u001a\r\u0012\u0004\u0012\u00020\u00040\u0008\u00a2\u0006\u0002\u0008\tH\u0007\u00a2\u0006\u0002\u0010\n\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "LightColorScheme",
        "Landroidx/compose/material3/ColorScheme;",
        "DarkColorScheme",
        "XiaozhiTheme",
        "",
        "darkTheme",
        "",
        "content",
        "Lkotlin/Function0;",
        "Landroidx/compose/runtime/Composable;",
        "(ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V",
        "app_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final DarkColorScheme:Landroidx/compose/material3/ColorScheme;

.field private static final LightColorScheme:Landroidx/compose/material3/ColorScheme;


# direct methods
.method public static synthetic $r8$lambda$yqOqs3v0vXEN4Y6dV1hV_pgFJhI(ZLkotlin/jvm/functions/Function2;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/xiaozhi/android/ui/theme/ThemeKt;->XiaozhiTheme$lambda$0(ZLkotlin/jvm/functions/Function2;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 76

    .line 10
    invoke-static {}, Lcom/xiaozhi/android/ui/theme/ColorKt;->getXiaozhiBlue()J

    move-result-wide v0

    .line 11
    sget-object v2, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color$Companion;->getWhite-0d7_KjU()J

    move-result-wide v2

    .line 12
    invoke-static {}, Lcom/xiaozhi/android/ui/theme/ColorKt;->getXiaozhiLightBlue()J

    move-result-wide v4

    .line 13
    invoke-static {}, Lcom/xiaozhi/android/ui/theme/ColorKt;->getXiaozhiGreen()J

    move-result-wide v10

    .line 14
    invoke-static {}, Lcom/xiaozhi/android/ui/theme/ColorKt;->getXiaozhiBackground()J

    move-result-wide v26

    .line 15
    invoke-static {}, Lcom/xiaozhi/android/ui/theme/ColorKt;->getXiaozhiSurface()J

    move-result-wide v30

    .line 16
    invoke-static {}, Lcom/xiaozhi/android/ui/theme/ColorKt;->getXiaozhiOnSurface()J

    move-result-wide v28

    .line 17
    invoke-static {}, Lcom/xiaozhi/android/ui/theme/ColorKt;->getXiaozhiOnSurface()J

    move-result-wide v32

    .line 18
    invoke-static {}, Lcom/xiaozhi/android/ui/theme/ColorKt;->getXiaozhiOnSurfaceVariant()J

    move-result-wide v36

    .line 19
    invoke-static {}, Lcom/xiaozhi/android/ui/theme/ColorKt;->getXiaozhiRed()J

    move-result-wide v44

    const/16 v73, 0xf

    const/16 v74, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v34, 0x0

    const-wide/16 v38, 0x0

    const-wide/16 v40, 0x0

    const-wide/16 v42, 0x0

    const-wide/16 v46, 0x0

    const-wide/16 v48, 0x0

    const-wide/16 v50, 0x0

    const-wide/16 v52, 0x0

    const-wide/16 v54, 0x0

    const-wide/16 v56, 0x0

    const-wide/16 v58, 0x0

    const-wide/16 v60, 0x0

    const-wide/16 v62, 0x0

    const-wide/16 v64, 0x0

    const-wide/16 v66, 0x0

    const-wide/16 v68, 0x0

    const-wide/16 v70, 0x0

    const v72, -0x45e028

    .line 9
    invoke-static/range {v0 .. v74}, Landroidx/compose/material3/ColorSchemeKt;->lightColorScheme-C-Xl9yA$default(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJIILjava/lang/Object;)Landroidx/compose/material3/ColorScheme;

    move-result-object v0

    sput-object v0, Lcom/xiaozhi/android/ui/theme/ThemeKt;->LightColorScheme:Landroidx/compose/material3/ColorScheme;

    .line 23
    invoke-static {}, Lcom/xiaozhi/android/ui/theme/ColorKt;->getXiaozhiBlue()J

    move-result-wide v1

    .line 24
    sget-object v0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->getWhite-0d7_KjU()J

    move-result-wide v3

    .line 25
    invoke-static {}, Lcom/xiaozhi/android/ui/theme/ColorKt;->getXiaozhiDarkBlue()J

    move-result-wide v5

    .line 26
    invoke-static {}, Lcom/xiaozhi/android/ui/theme/ColorKt;->getXiaozhiGreen()J

    move-result-wide v11

    .line 27
    invoke-static {}, Lcom/xiaozhi/android/ui/theme/ColorKt;->getXiaozhiDarkBackground()J

    move-result-wide v27

    .line 28
    invoke-static {}, Lcom/xiaozhi/android/ui/theme/ColorKt;->getXiaozhiDarkSurface()J

    move-result-wide v31

    .line 29
    invoke-static {}, Lcom/xiaozhi/android/ui/theme/ColorKt;->getXiaozhiDarkOnSurface()J

    move-result-wide v29

    .line 30
    invoke-static {}, Lcom/xiaozhi/android/ui/theme/ColorKt;->getXiaozhiDarkOnSurface()J

    move-result-wide v33

    .line 31
    invoke-static {}, Lcom/xiaozhi/android/ui/theme/ColorKt;->getXiaozhiDarkOnSurfaceVariant()J

    move-result-wide v37

    .line 32
    invoke-static {}, Lcom/xiaozhi/android/ui/theme/ColorKt;->getXiaozhiRed()J

    move-result-wide v45

    const/16 v74, 0xf

    const/16 v75, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v35, 0x0

    const-wide/16 v39, 0x0

    const-wide/16 v41, 0x0

    const-wide/16 v43, 0x0

    const-wide/16 v47, 0x0

    const-wide/16 v49, 0x0

    const-wide/16 v51, 0x0

    const-wide/16 v53, 0x0

    const-wide/16 v55, 0x0

    const-wide/16 v57, 0x0

    const-wide/16 v59, 0x0

    const-wide/16 v61, 0x0

    const-wide/16 v63, 0x0

    const-wide/16 v65, 0x0

    const-wide/16 v67, 0x0

    const-wide/16 v69, 0x0

    const-wide/16 v71, 0x0

    const v73, -0x45e028

    .line 22
    invoke-static/range {v1 .. v75}, Landroidx/compose/material3/ColorSchemeKt;->darkColorScheme-C-Xl9yA$default(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJIILjava/lang/Object;)Landroidx/compose/material3/ColorScheme;

    move-result-object v0

    sput-object v0, Lcom/xiaozhi/android/ui/theme/ThemeKt;->DarkColorScheme:Landroidx/compose/material3/ColorScheme;

    return-void
.end method

.method public static final XiaozhiTheme(ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x254cfdda

    .line 39
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p2

    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_0

    or-int/lit8 v2, p3, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v2, p3, 0x6

    if-nez v2, :cond_2

    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v2, p3

    goto :goto_1

    :cond_2
    move v2, p3

    :goto_1
    and-int/lit8 v3, p4, 0x2

    if-eqz v3, :cond_3

    or-int/lit8 v2, v2, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v3, p3, 0x30

    if-nez v3, :cond_5

    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x20

    goto :goto_2

    :cond_4
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v2, v3

    :cond_5
    :goto_3
    and-int/lit8 v3, v2, 0x13

    const/16 v4, 0x12

    if-ne v3, v4, :cond_7

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_4

    .line 44
    :cond_6
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_6

    :cond_7
    :goto_4
    if-eqz v1, :cond_8

    const/4 p0, 0x0

    .line 37
    :cond_8
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, -0x1

    const-string v3, "com.xiaozhi.android.ui.theme.XiaozhiTheme (Theme.kt:38)"

    .line 39
    invoke-static {v0, v2, v1, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_9
    if-eqz p0, :cond_a

    .line 41
    sget-object v0, Lcom/xiaozhi/android/ui/theme/ThemeKt;->DarkColorScheme:Landroidx/compose/material3/ColorScheme;

    goto :goto_5

    :cond_a
    sget-object v0, Lcom/xiaozhi/android/ui/theme/ThemeKt;->LightColorScheme:Landroidx/compose/material3/ColorScheme;

    :goto_5
    move-object v1, v0

    shl-int/lit8 v0, v2, 0x6

    and-int/lit16 v6, v0, 0x1c00

    const/4 v7, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    .line 40
    invoke-static/range {v1 .. v7}, Landroidx/compose/material3/MaterialThemeKt;->MaterialTheme(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/Shapes;Landroidx/compose/material3/Typography;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 44
    :cond_b
    :goto_6
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object p2

    if-eqz p2, :cond_c

    new-instance v0, Lcom/xiaozhi/android/ui/theme/ThemeKt$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p3, p4}, Lcom/xiaozhi/android/ui/theme/ThemeKt$$ExternalSyntheticLambda0;-><init>(ZLkotlin/jvm/functions/Function2;II)V

    invoke-interface {p2, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_c
    return-void
.end method

.method private static final XiaozhiTheme$lambda$0(ZLkotlin/jvm/functions/Function2;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result p2

    invoke-static {p0, p1, p4, p2, p3}, Lcom/xiaozhi/android/ui/theme/ThemeKt;->XiaozhiTheme(ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
