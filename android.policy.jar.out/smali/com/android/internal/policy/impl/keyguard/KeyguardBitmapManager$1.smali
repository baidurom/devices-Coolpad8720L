.class Lcom/android/internal/policy/impl/keyguard/KeyguardBitmapManager$1;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardBitmapManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardBitmapManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardBitmapManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardBitmapManager;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardBitmapManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardBitmapManager;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method onRefreshCoolShowData()V
    .locals 2

    .prologue
    .line 78
    const-string v0, "KeyguardBitmapManager"

    const-string v1, "----onRefreshCoolShowData-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardBitmapManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardBitmapManager;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardBitmapManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardBitmapManager;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardBitmapManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardBitmapManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardBitmapManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardBitmapManager;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 80
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardBitmapManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardBitmapManager;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardBitmapManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardBitmapManager;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardBitmapManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardBitmapManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardBitmapManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardBitmapManager;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 81
    return-void
.end method
