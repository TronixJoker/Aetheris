.class public final synthetic Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$4$WhenMappings;
.super Ljava/lang/Object;
.source "SettingsScreen.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
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


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/xiaozhi/android/update/UpdateManager$UpdateState;->values()[Lcom/xiaozhi/android/update/UpdateManager$UpdateState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/xiaozhi/android/update/UpdateManager$UpdateState;->UPDATE_AVAILABLE:Lcom/xiaozhi/android/update/UpdateManager$UpdateState;

    invoke-virtual {v1}, Lcom/xiaozhi/android/update/UpdateManager$UpdateState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Lcom/xiaozhi/android/update/UpdateManager$UpdateState;->NEED_PERMISSION:Lcom/xiaozhi/android/update/UpdateManager$UpdateState;

    invoke-virtual {v1}, Lcom/xiaozhi/android/update/UpdateManager$UpdateState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v1, Lcom/xiaozhi/android/update/UpdateManager$UpdateState;->DOWNLOADING:Lcom/xiaozhi/android/update/UpdateManager$UpdateState;

    invoke-virtual {v1}, Lcom/xiaozhi/android/update/UpdateManager$UpdateState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lcom/xiaozhi/android/update/UpdateManager$UpdateState;->CHECKING:Lcom/xiaozhi/android/update/UpdateManager$UpdateState;

    invoke-virtual {v1}, Lcom/xiaozhi/android/update/UpdateManager$UpdateState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v1, Lcom/xiaozhi/android/update/UpdateManager$UpdateState;->INSTALLING:Lcom/xiaozhi/android/update/UpdateManager$UpdateState;

    invoke-virtual {v1}, Lcom/xiaozhi/android/update/UpdateManager$UpdateState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    sput-object v0, Lcom/xiaozhi/android/ui/screens/SettingsScreenKt$SettingsScreen$4$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
