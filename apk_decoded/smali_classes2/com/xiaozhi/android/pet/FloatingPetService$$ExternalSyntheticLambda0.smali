.class public final synthetic Lcom/xiaozhi/android/pet/FloatingPetService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Lcom/xiaozhi/android/pet/FloatingPetService;

.field public final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaozhi/android/pet/FloatingPetService;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaozhi/android/pet/FloatingPetService$$ExternalSyntheticLambda0;->f$0:Lcom/xiaozhi/android/pet/FloatingPetService;

    iput-object p2, p0, Lcom/xiaozhi/android/pet/FloatingPetService$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/xiaozhi/android/pet/FloatingPetService$$ExternalSyntheticLambda0;->f$0:Lcom/xiaozhi/android/pet/FloatingPetService;

    iget-object v1, p0, Lcom/xiaozhi/android/pet/FloatingPetService$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    invoke-static {v0, v1, p1, p2}, Lcom/xiaozhi/android/pet/FloatingPetService;->$r8$lambda$KM0LqGvcknl1BuKXJsUxmcxmbUk(Lcom/xiaozhi/android/pet/FloatingPetService;Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
