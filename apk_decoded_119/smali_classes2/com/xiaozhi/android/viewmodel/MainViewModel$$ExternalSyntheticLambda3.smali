.class public final synthetic Lcom/xiaozhi/android/viewmodel/MainViewModel$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/xiaozhi/android/viewmodel/MainViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaozhi/android/viewmodel/MainViewModel;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$$ExternalSyntheticLambda3;->f$0:Lcom/xiaozhi/android/viewmodel/MainViewModel;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/xiaozhi/android/viewmodel/MainViewModel$$ExternalSyntheticLambda3;->f$0:Lcom/xiaozhi/android/viewmodel/MainViewModel;

    check-cast p1, Lcom/xiaozhi/android/update/UpdateManager$UpdateResult;

    invoke-static {v0, p1}, Lcom/xiaozhi/android/viewmodel/MainViewModel;->$r8$lambda$inttr7G4c-gZMgHFXkGku7crPRE(Lcom/xiaozhi/android/viewmodel/MainViewModel;Lcom/xiaozhi/android/update/UpdateManager$UpdateResult;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
