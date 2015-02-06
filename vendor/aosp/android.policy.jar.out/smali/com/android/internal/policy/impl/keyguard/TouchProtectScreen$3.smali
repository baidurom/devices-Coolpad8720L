.class Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen$3;
.super Landroid/content/BroadcastReceiver;
.source "TouchProtectScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 277
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen$3;->this$0:Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 281
    const-string v0, "yulong.intent.action.cancel_touchProtectScreen"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    const-string v0, "TouchProtectScreen"

    const-string v1, ".........CANCEL_TOUCH_PROTECT_SCREEN_ACTION  is receiver"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen$3;->this$0:Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->mHideByUser:Z

    .line 284
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen$3;->this$0:Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/TouchProtectScreen;->setView()V

    .line 286
    :cond_0
    return-void
.end method
