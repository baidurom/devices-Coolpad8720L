.class Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$1;
.super Landroid/os/Handler;
.source "KeyguardSimPukView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x1

    .line 56
    iget v4, p1, Landroid/os/Message;->what:I

    if-ne v4, v7, :cond_2

    .line 57
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;)Landroid/app/ProgressDialog;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 58
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->hide()V

    .line 60
    :cond_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [I

    check-cast v4, [I

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mSimRetryStat:[I
    invoke-static {v5, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->access$202(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;[I)[I

    .line 61
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    iget-object v2, v4, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    check-cast v2, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$Helper;

    .line 62
    .local v2, kgmsghelper:Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$Helper;
    iget-object v1, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;

    .line 63
    .local v1, kgmsgArea:Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;
    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->getCurrentMessage()Ljava/lang/CharSequence;

    move-result-object v0

    .line 64
    .local v0, currentmsg:Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    .line 65
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mSimRetryStat:[I
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;)[I

    move-result-object v5

    const/4 v6, 0x2

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 66
    .local v3, updatedmsg:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    iget-object v4, v4, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    invoke-interface {v4, v3, v7}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 68
    .end local v3           #updatedmsg:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 70
    .end local v0           #currentmsg:Ljava/lang/CharSequence;
    .end local v1           #kgmsgArea:Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;
    .end local v2           #kgmsghelper:Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$Helper;
    :cond_2
    return-void
.end method
