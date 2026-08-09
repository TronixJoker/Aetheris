.class public final synthetic Lcom/xiaozhi/android/ui/screens/MainScreenKt$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/xiaozhi/android/model/DeviceState;

.field public final synthetic f$1:F

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:F

.field public final synthetic f$4:Landroidx/compose/runtime/State;

.field public final synthetic f$5:Landroidx/compose/runtime/State;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaozhi/android/model/DeviceState;FLjava/lang/String;FLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaozhi/android/ui/screens/MainScreenKt$$ExternalSyntheticLambda5;->f$0:Lcom/xiaozhi/android/model/DeviceState;

    iput p2, p0, Lcom/xiaozhi/android/ui/screens/MainScreenKt$$ExternalSyntheticLambda5;->f$1:F

    iput-object p3, p0, Lcom/xiaozhi/android/ui/screens/MainScreenKt$$ExternalSyntheticLambda5;->f$2:Ljava/lang/String;

    iput p4, p0, Lcom/xiaozhi/android/ui/screens/MainScreenKt$$ExternalSyntheticLambda5;->f$3:F

    iput-object p5, p0, Lcom/xiaozhi/android/ui/screens/MainScreenKt$$ExternalSyntheticLambda5;->f$4:Landroidx/compose/runtime/State;

    iput-object p6, p0, Lcom/xiaozhi/android/ui/screens/MainScreenKt$$ExternalSyntheticLambda5;->f$5:Landroidx/compose/runtime/State;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 0
    iget-object v0, p0, Lcom/xiaozhi/android/ui/screens/MainScreenKt$$ExternalSyntheticLambda5;->f$0:Lcom/xiaozhi/android/model/DeviceState;

    iget v1, p0, Lcom/xiaozhi/android/ui/screens/MainScreenKt$$ExternalSyntheticLambda5;->f$1:F

    iget-object v2, p0, Lcom/xiaozhi/android/ui/screens/MainScreenKt$$ExternalSyntheticLambda5;->f$2:Ljava/lang/String;

    iget v3, p0, Lcom/xiaozhi/android/ui/screens/MainScreenKt$$ExternalSyntheticLambda5;->f$3:F

    iget-object v4, p0, Lcom/xiaozhi/android/ui/screens/MainScreenKt$$ExternalSyntheticLambda5;->f$4:Landroidx/compose/runtime/State;

    iget-object v5, p0, Lcom/xiaozhi/android/ui/screens/MainScreenKt$$ExternalSyntheticLambda5;->f$5:Landroidx/compose/runtime/State;

    move-object v6, p1

    check-cast v6, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    invoke-static/range {v0 .. v6}, Lcom/xiaozhi/android/ui/screens/MainScreenKt;->$r8$lambda$YZltsy-wWCbr9nsJYph-qMcsxfk(Lcom/xiaozhi/android/model/DeviceState;FLjava/lang/String;FLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/ui/graphics/drawscope/DrawScope;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
