.class public final Landroidx/compose/foundation/text/input/internal/StatelessInputConnection$commitContentDelegateInputConnection$1;
.super Ljava/lang/Object;
.source "StatelessInputConnection.android.kt"

# interfaces
.implements Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/text/input/internal/StatelessInputConnection;-><init>(Landroidx/compose/foundation/text/input/internal/TextInputSession;Landroid/view/inputmethod/EditorInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\"\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "androidx/compose/foundation/text/input/internal/StatelessInputConnection$commitContentDelegateInputConnection$1",
        "Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;",
        "onCommitContent",
        "",
        "inputContentInfo",
        "Landroidx/core/view/inputmethod/InputContentInfoCompat;",
        "flags",
        "",
        "opts",
        "Landroid/os/Bundle;",
        "foundation_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/foundation/text/input/internal/StatelessInputConnection;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/text/input/internal/StatelessInputConnection;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/StatelessInputConnection$commitContentDelegateInputConnection$1;->this$0:Landroidx/compose/foundation/text/input/internal/StatelessInputConnection;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommitContent(Landroidx/core/view/inputmethod/InputContentInfoCompat;ILandroid/os/Bundle;)Z
    .locals 1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_1

    .line 171
    :try_start_0
    invoke-virtual {p1}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->requestPermission()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    invoke-virtual {p1}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->unwrap()Ljava/lang/Object;

    move-result-object p2

    const-string/jumbo v0, "null cannot be cast to non-null type android.os.Parcelable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/os/Parcelable;

    if-nez p3, :cond_0

    .line 182
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object p3, v0

    .line 183
    :goto_0
    const-string v0, "EXTRA_INPUT_CONTENT_INFO"

    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_1

    :catch_0
    move-exception p1

    .line 173
    iget-object p2, p0, Landroidx/compose/foundation/text/input/internal/StatelessInputConnection$commitContentDelegateInputConnection$1;->this$0:Landroidx/compose/foundation/text/input/internal/StatelessInputConnection;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Can\'t insert content from IME; requestPermission() failed, "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroidx/compose/foundation/text/input/internal/StatelessInputConnection;->access$logDebug(Landroidx/compose/foundation/text/input/internal/StatelessInputConnection;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 185
    :cond_1
    :goto_1
    iget-object p2, p0, Landroidx/compose/foundation/text/input/internal/StatelessInputConnection$commitContentDelegateInputConnection$1;->this$0:Landroidx/compose/foundation/text/input/internal/StatelessInputConnection;

    invoke-static {p2}, Landroidx/compose/foundation/text/input/internal/StatelessInputConnection;->access$getSession$p(Landroidx/compose/foundation/text/input/internal/StatelessInputConnection;)Landroidx/compose/foundation/text/input/internal/TextInputSession;

    move-result-object p2

    invoke-static {p1, p3}, Landroidx/compose/foundation/text/input/internal/StatelessInputConnection_androidKt;->toTransferableContent(Landroidx/core/view/inputmethod/InputContentInfoCompat;Landroid/os/Bundle;)Landroidx/compose/foundation/content/TransferableContent;

    move-result-object p1

    invoke-interface {p2, p1}, Landroidx/compose/foundation/text/input/internal/TextInputSession;->onCommitContent(Landroidx/compose/foundation/content/TransferableContent;)Z

    move-result p1

    return p1
.end method
