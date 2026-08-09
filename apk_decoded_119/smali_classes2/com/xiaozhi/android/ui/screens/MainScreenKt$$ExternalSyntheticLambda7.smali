.class public final synthetic Lcom/xiaozhi/android/ui/screens/MainScreenKt$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lcom/xiaozhi/android/model/DeviceState;

.field public final synthetic f$1:Lcom/xiaozhi/android/network/WebSocketManager$ConnectionState;

.field public final synthetic f$2:Lcom/xiaozhi/android/activation/ActivationService$ActivationState;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:I

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lcom/xiaozhi/android/model/DeviceState;Lcom/xiaozhi/android/network/WebSocketManager$ConnectionState;Lcom/xiaozhi/android/activation/ActivationService$ActivationState;Ljava/lang/String;II)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaozhi/android/ui/screens/MainScreenKt$$ExternalSyntheticLambda7;->f$0:Lcom/xiaozhi/android/model/DeviceState;

    iput-object p2, p0, Lcom/xiaozhi/android/ui/screens/MainScreenKt$$ExternalSyntheticLambda7;->f$1:Lcom/xiaozhi/android/network/WebSocketManager$ConnectionState;

    iput-object p3, p0, Lcom/xiaozhi/android/ui/screens/MainScreenKt$$ExternalSyntheticLambda7;->f$2:Lcom/xiaozhi/android/activation/ActivationService$ActivationState;

    iput-object p4, p0, Lcom/xiaozhi/android/ui/screens/MainScreenKt$$ExternalSyntheticLambda7;->f$3:Ljava/lang/String;

    iput p5, p0, Lcom/xiaozhi/android/ui/screens/MainScreenKt$$ExternalSyntheticLambda7;->f$4:I

    iput p6, p0, Lcom/xiaozhi/android/ui/screens/MainScreenKt$$ExternalSyntheticLambda7;->f$5:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 0
    iget-object v0, p0, Lcom/xiaozhi/android/ui/screens/MainScreenKt$$ExternalSyntheticLambda7;->f$0:Lcom/xiaozhi/android/model/DeviceState;

    iget-object v1, p0, Lcom/xiaozhi/android/ui/screens/MainScreenKt$$ExternalSyntheticLambda7;->f$1:Lcom/xiaozhi/android/network/WebSocketManager$ConnectionState;

    iget-object v2, p0, Lcom/xiaozhi/android/ui/screens/MainScreenKt$$ExternalSyntheticLambda7;->f$2:Lcom/xiaozhi/android/activation/ActivationService$ActivationState;

    iget-object v3, p0, Lcom/xiaozhi/android/ui/screens/MainScreenKt$$ExternalSyntheticLambda7;->f$3:Ljava/lang/String;

    iget v4, p0, Lcom/xiaozhi/android/ui/screens/MainScreenKt$$ExternalSyntheticLambda7;->f$4:I

    iget v5, p0, Lcom/xiaozhi/android/ui/screens/MainScreenKt$$ExternalSyntheticLambda7;->f$5:I

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static/range {v0 .. v7}, Lcom/xiaozhi/android/ui/screens/MainScreenKt;->$r8$lambda$1CdVNgZ_8s7VWGPAkLkBvoikPQo(Lcom/xiaozhi/android/model/DeviceState;Lcom/xiaozhi/android/network/WebSocketManager$ConnectionState;Lcom/xiaozhi/android/activation/ActivationService$ActivationState;Ljava/lang/String;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
