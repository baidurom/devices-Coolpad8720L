.class Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$1;
.super Landroid/database/ContentObserver;
.source "LockscreenSettingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->registerObserver()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 203
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4
    .parameter "selfChange"
    .parameter "uri"

    .prologue
    .line 206
    const-string v2, "###"

    const-string v3, "..................coolShowContentObserver is done"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->loadDataBase()Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;

    move-result-object v1

    .line 208
    .local v1, tempLockScreenSettingParam:Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;
    if-nez v1, :cond_1

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;

    #getter for: Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->mLockScreenSettingParam:Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->access$800(Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;)Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;

    move-result-object v0

    .line 212
    .local v0, preLockScreenSettingParam:Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;

    #setter for: Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->mLockScreenSettingParam:Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;
    invoke-static {v2, v1}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->access$802(Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;)Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;

    .line 213
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->mLockScreenSettinsChangedObserver:Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettinsChangedObserver;

    if-eqz v2, :cond_0

    .line 216
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;

    #getter for: Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->mLockScreenSettingParam:Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->access$800(Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;)Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->sendParamChanged2Listener(Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettingParam;)V

    goto :goto_0
.end method
