.class public final synthetic Lcom/xiaozhi/android/MainActivity$onCreate$1$1$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/xiaozhi/android/viewmodel/MainViewModel;

.field public final synthetic f$1:Landroidx/navigation/NavHostController;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaozhi/android/viewmodel/MainViewModel;Landroidx/navigation/NavHostController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaozhi/android/MainActivity$onCreate$1$1$1$$ExternalSyntheticLambda0;->f$0:Lcom/xiaozhi/android/viewmodel/MainViewModel;

    iput-object p2, p0, Lcom/xiaozhi/android/MainActivity$onCreate$1$1$1$$ExternalSyntheticLambda0;->f$1:Landroidx/navigation/NavHostController;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/xiaozhi/android/MainActivity$onCreate$1$1$1$$ExternalSyntheticLambda0;->f$0:Lcom/xiaozhi/android/viewmodel/MainViewModel;

    iget-object v1, p0, Lcom/xiaozhi/android/MainActivity$onCreate$1$1$1$$ExternalSyntheticLambda0;->f$1:Landroidx/navigation/NavHostController;

    check-cast p1, Landroidx/navigation/NavGraphBuilder;

    invoke-static {v0, v1, p1}, Lcom/xiaozhi/android/MainActivity$onCreate$1$1$1;->$r8$lambda$WbAlKgeAmyy3gExst1pCAfE-Lns(Lcom/xiaozhi/android/viewmodel/MainViewModel;Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraphBuilder;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
