.class public final synthetic Lcom/xiaozhi/android/ui/screens/MainScreenKt$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lcom/xiaozhi/android/model/DeviceState;

.field public final synthetic f$1:Lcom/xiaozhi/android/network/WebSocketManager$ConnectionState;

.field public final synthetic f$2:Lcom/xiaozhi/android/activation/ActivationService$ActivationState;

.field public final synthetic f$3:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/xiaozhi/android/model/DeviceState;Lcom/xiaozhi/android/network/WebSocketManager$ConnectionState;Lcom/xiaozhi/android/activation/ActivationService$ActivationState;Lkotlin/jvm/functions/Function0;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaozhi/android/ui/screens/MainScreenKt$$ExternalSyntheticLambda9;->f$0:Lcom/xiaozhi/android/model/DeviceState;

    iput-object p2, p0, Lcom/xiaozhi/android/ui/screens/MainScreenKt$$ExternalSyntheticLambda9;->f$1:Lcom/xiaozhi/android/network/WebSocketManager$ConnectionState;

    iput-object p3, p0, Lcom/xiaozhi/android/ui/screens/MainScreenKt$$ExternalSyntheticLambda9;->f$2:Lcom/xiaozhi/android/activation/ActivationService$ActivationState;

    iput-object p4, p0, Lcom/xiaozhi/android/ui/screens/MainScreenKt$$ExternalSyntheticLambda9;->f$3:Lkotlin/jvm/functions/Function0;

    iput p5, p0, Lcom/xiaozhi/android/ui/screens/MainScreenKt$$ExternalSyntheticLambda9;->f$4:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 0
    iget-object v0, p0, Lcom/xiaozhi/android/ui/screens/MainScreenKt$$ExternalSyntheticLambda9;->f$0:Lcom/xiaozhi/android/model/DeviceState;

    iget-object v1, p0, Lcom/xiaozhi/android/ui/screens/MainScreenKt$$ExternalSyntheticLambda9;->f$1:Lcom/xiaozhi/android/network/WebSocketManager$ConnectionState;

    iget-object v2, p0, Lcom/xiaozhi/android/ui/screens/MainScreenKt$$ExternalSyntheticLambda9;->f$2:Lcom/xiaozhi/android/activation/ActivationService$ActivationState;

    iget-object v3, p0, Lcom/xiaozhi/android/ui/screens/MainScreenKt$$ExternalSyntheticLambda9;->f$3:Lkotlin/jvm/functions/Function0;

    iget v4, p0, Lcom/xiaozhi/android/ui/screens/MainScreenKt$$ExternalSyntheticLambda9;->f$4:I

    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static/range {v0 .. v6}, Lcom/xiaozhi/android/ui/screens/MainScreenKt;->$r8$lambda$bilOfsjTnknMLLJgcvQAlcRQT38(Lcom/xiaozhi/android/model/DeviceState;Lcom/xiaozhi/android/network/WebSocketManager$ConnectionState;Lcom/xiaozhi/android/activation/ActivationService$ActivationState;Lkotlin/jvm/functions/Function0;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
