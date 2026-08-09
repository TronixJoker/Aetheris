.class public final synthetic Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$9$1$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/MutableState;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$9$1$1$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$9$1$1$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/runtime/MutableState;

    check-cast p1, Lcom/xiaozhi/android/update/UpdateManager$UpdateResult;

    invoke-static {v0, p1}, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$9$1$1;->$r8$lambda$68GGSd0a9sQ1vgp6feKaYTIETtc(Landroidx/compose/runtime/MutableState;Lcom/xiaozhi/android/update/UpdateManager$UpdateResult;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
