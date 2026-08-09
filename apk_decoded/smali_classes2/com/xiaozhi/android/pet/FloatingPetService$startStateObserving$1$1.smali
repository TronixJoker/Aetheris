.class final Lcom/xiaozhi/android/pet/FloatingPetService$startStateObserving$1$1;
.super Ljava/lang/Object;
.source "FloatingPetService.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaozhi/android/pet/FloatingPetService$startStateObserving$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaozhi/android/pet/FloatingPetService$startStateObserving$1$1$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaozhi/android/pet/FloatingPetService;


# direct methods
.method constructor <init>(Lcom/xiaozhi/android/pet/FloatingPetService;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaozhi/android/pet/FloatingPetService$startStateObserving$1$1;->this$0:Lcom/xiaozhi/android/pet/FloatingPetService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Lcom/xiaozhi/android/model/DeviceState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaozhi/android/model/DeviceState;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 162
    sget-object p2, Lcom/xiaozhi/android/pet/FloatingPetService$startStateObserving$1$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/xiaozhi/android/model/DeviceState;->ordinal()I

    move-result v0

    aget p2, p2, v0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    const/4 v0, 0x0

    .line 168
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Pet state -> "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " (deviceState="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FloatingPetService"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object p1, p0, Lcom/xiaozhi/android/pet/FloatingPetService$startStateObserving$1$1;->this$0:Lcom/xiaozhi/android/pet/FloatingPetService;

    invoke-static {p1}, Lcom/xiaozhi/android/pet/FloatingPetService;->access$getPetView$p(Lcom/xiaozhi/android/pet/FloatingPetService;)Landroid/view/View;

    move-result-object p1

    instance-of p2, p1, Lcom/xiaozhi/android/pet/PetGLSurfaceView;

    if-eqz p2, :cond_1

    check-cast p1, Lcom/xiaozhi/android/pet/PetGLSurfaceView;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1, v0}, Lcom/xiaozhi/android/pet/PetGLSurfaceView;->updateState(I)V

    .line 170
    :cond_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 161
    check-cast p1, Lcom/xiaozhi/android/model/DeviceState;

    invoke-virtual {p0, p1, p2}, Lcom/xiaozhi/android/pet/FloatingPetService$startStateObserving$1$1;->emit(Lcom/xiaozhi/android/model/DeviceState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
