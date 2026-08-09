.class final Landroidx/compose/material3/SearchBar_androidKt$SearchBarImpl$surface$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SearchBar.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/SearchBar_androidKt;->SearchBarImpl-j1jLAyQ(Landroidx/compose/animation/core/Animatable;Landroidx/compose/runtime/MutableFloatState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\u000b\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "(Landroidx/compose/runtime/Composer;I)V"
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
.field final synthetic $animatedShape:Landroidx/compose/ui/graphics/Shape;

.field final synthetic $colors:Landroidx/compose/material3/SearchBarColors;

.field final synthetic $shadowElevation:F

.field final synthetic $tonalElevation:F


# direct methods
.method constructor <init>(Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FF)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/SearchBar_androidKt$SearchBarImpl$surface$1;->$animatedShape:Landroidx/compose/ui/graphics/Shape;

    iput-object p2, p0, Landroidx/compose/material3/SearchBar_androidKt$SearchBarImpl$surface$1;->$colors:Landroidx/compose/material3/SearchBarColors;

    iput p3, p0, Landroidx/compose/material3/SearchBar_androidKt$SearchBarImpl$surface$1;->$tonalElevation:F

    iput p4, p0, Landroidx/compose/material3/SearchBar_androidKt$SearchBarImpl$surface$1;->$shadowElevation:F

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 893
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/SearchBar_androidKt$SearchBarImpl$surface$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 14

    move-object v0, p0

    move-object v11, p1

    move/from16 v1, p2

    const-string v2, "C896@40320L38,893@40194L309:SearchBar.android.kt#uh7d8r"

    invoke-static {p1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 894
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 901
    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_1

    .line 894
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, -0x1

    const-string/jumbo v3, "androidx.compose.material3.SearchBarImpl.<anonymous> (SearchBar.android.kt:893)"

    const v4, -0xa2a2596

    invoke-static {v4, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 895
    :cond_2
    iget-object v2, v0, Landroidx/compose/material3/SearchBar_androidKt$SearchBarImpl$surface$1;->$animatedShape:Landroidx/compose/ui/graphics/Shape;

    .line 896
    iget-object v1, v0, Landroidx/compose/material3/SearchBar_androidKt$SearchBarImpl$surface$1;->$colors:Landroidx/compose/material3/SearchBarColors;

    invoke-virtual {v1}, Landroidx/compose/material3/SearchBarColors;->getContainerColor-0d7_KjU()J

    move-result-wide v3

    .line 897
    iget-object v1, v0, Landroidx/compose/material3/SearchBar_androidKt$SearchBarImpl$surface$1;->$colors:Landroidx/compose/material3/SearchBarColors;

    invoke-virtual {v1}, Landroidx/compose/material3/SearchBarColors;->getContainerColor-0d7_KjU()J

    move-result-wide v5

    const/4 v1, 0x0

    invoke-static {v5, v6, p1, v1}, Landroidx/compose/material3/ColorSchemeKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v5

    .line 898
    iget v7, v0, Landroidx/compose/material3/SearchBar_androidKt$SearchBarImpl$surface$1;->$tonalElevation:F

    .line 899
    iget v8, v0, Landroidx/compose/material3/SearchBar_androidKt$SearchBarImpl$surface$1;->$shadowElevation:F

    sget-object v1, Landroidx/compose/material3/ComposableSingletons$SearchBar_androidKt;->INSTANCE:Landroidx/compose/material3/ComposableSingletons$SearchBar_androidKt;

    invoke-virtual {v1}, Landroidx/compose/material3/ComposableSingletons$SearchBar_androidKt;->getLambda-2$material3_release()Lkotlin/jvm/functions/Function2;

    move-result-object v10

    const/high16 v12, 0xc00000

    const/16 v13, 0x41

    const/4 v1, 0x0

    const/4 v9, 0x0

    move-object v11, p1

    .line 894
    invoke-static/range {v1 .. v13}, Landroidx/compose/material3/SurfaceKt;->Surface-T9BRK9s(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    :goto_1
    return-void
.end method
