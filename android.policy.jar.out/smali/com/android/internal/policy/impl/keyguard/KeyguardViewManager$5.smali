.class Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$5;
.super Ljava/lang/Object;
.source "KeyguardViewManager.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager$LockScreenSettinsChangedObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->watchForCoolShowUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;)V
    .locals 0
    .parameter

    .prologue
    .line 703
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dataChanged()V
    .locals 0

    .prologue
    .line 715
    return-void
.end method

.method public dataChanged(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter "key"
    .parameter "oldValue"
    .parameter "newValue"

    .prologue
    .line 707
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 708
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->setBrightNess()V

    .line 710
    :cond_0
    return-void
.end method
