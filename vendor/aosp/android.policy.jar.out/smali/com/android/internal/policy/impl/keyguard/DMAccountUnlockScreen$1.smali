.class Lcom/android/internal/policy/impl/keyguard/DMAccountUnlockScreen$1;
.super Landroid/os/Handler;
.source "DMAccountUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/DMAccountUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/DMAccountUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/DMAccountUnlockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 282
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/DMAccountUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/keyguard/DMAccountUnlockScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 285
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 293
    :goto_0
    return-void

    .line 287
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/DMAccountUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/keyguard/DMAccountUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard/DMAccountUnlockScreen;->mOk:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/DMAccountUnlockScreen;->access$000(Lcom/android/internal/policy/impl/keyguard/DMAccountUnlockScreen;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 290
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/DMAccountUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/keyguard/DMAccountUnlockScreen;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/keyguard/DMAccountUnlockScreen;->wrongCount:I
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/DMAccountUnlockScreen;->access$102(Lcom/android/internal/policy/impl/keyguard/DMAccountUnlockScreen;I)I

    goto :goto_0

    .line 285
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
