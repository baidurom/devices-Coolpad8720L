.class Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$2;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V
    .locals 0
    .parameter

    .prologue
    .line 470
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public keyguardDone(Z)V
    .locals 2
    .parameter "authenticated"

    .prologue
    .line 484
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->keyguardDone(ZZ)V

    .line 485
    return-void
.end method

.method public keyguardDoneDrawing()V
    .locals 2

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$1100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 489
    return-void
.end method

.method public keyguardDonePending()V
    .locals 2

    .prologue
    .line 503
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    const/4 v1, 0x1

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$1302(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Z)Z

    .line 504
    return-void
.end method

.method public onUserActivityTimeoutChanged()V
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$1200(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->updateUserActivityTimeout()V

    .line 499
    return-void
.end method

.method public refreshStatusBarLocked()V
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->refreshStatusBarLocked()V

    .line 509
    return-void
.end method

.method public setNeedsInput(Z)V
    .locals 1
    .parameter "needsInput"

    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$1200(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->setNeedsInput(Z)V

    .line 494
    return-void
.end method

.method public userActivity()V
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->userActivity()V

    .line 477
    return-void
.end method

.method public userActivity(J)V
    .locals 1
    .parameter "holdMs"

    .prologue
    .line 480
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->userActivity(J)V

    .line 481
    return-void
.end method

.method public wakeUp()V
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->wakeUp()V

    .line 473
    return-void
.end method
