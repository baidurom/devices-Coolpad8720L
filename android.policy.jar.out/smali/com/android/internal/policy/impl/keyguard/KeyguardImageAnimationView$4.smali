.class Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView$4;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardImageAnimationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;)V
    .locals 0
    .parameter

    .prologue
    .line 620
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    .line 625
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 626
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.yulong.android.keyguardBackGournd.changed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 627
    const-string v2, "isRunThread"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 629
    .local v1, isRunThread:Z
    if-eqz v1, :cond_1

    .line 630
    sput-boolean v3, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->juage:Z

    .line 631
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->runnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 632
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->runnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;)Ljava/lang/Runnable;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->mChangeFrequency:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->access$900(Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;)I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 638
    .end local v1           #isRunThread:Z
    :cond_0
    :goto_0
    return-void

    .line 634
    .restart local v1       #isRunThread:Z
    :cond_1
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->runnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 635
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/internal/policy/impl/keyguard/KeyguardImageAnimationView;->juage:Z

    goto :goto_0
.end method
