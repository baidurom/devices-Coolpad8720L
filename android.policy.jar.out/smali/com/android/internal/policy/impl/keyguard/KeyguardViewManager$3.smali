.class Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$3;
.super Ljava/lang/Object;
.source "KeyguardViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->onScreenTurnedOn(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

.field final synthetic val$showListener:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 601
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$3;->val$showListener:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 604
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$3;->val$showListener:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;->onShown(Landroid/os/IBinder;)V

    .line 609
    :goto_0
    return-void

    .line 607
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$3;->val$showListener:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;->onShown(Landroid/os/IBinder;)V

    goto :goto_0
.end method
