.class Landroid/net/wifi/WifiWatchdogStateMachine$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/WifiWatchdogStateMachine;->setupNetworkReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 390
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$1;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 393
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 394
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 395
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$1;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v2, 0x21003

    const-string/jumbo v3, "newRssi"

    const/16 v4, -0xc8

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 397
    :cond_1
    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 398
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$1;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v2, 0x21004

    invoke-virtual {v1, v2, p2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 399
    :cond_2
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 400
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$1;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v2, 0x21002

    invoke-virtual {v1, v2, p2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 401
    :cond_3
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 402
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$1;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v2, 0x21008

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 403
    :cond_4
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 404
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$1;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v2, 0x21009

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 405
    :cond_5
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 406
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$1;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v2, 0x21005

    const-string/jumbo v3, "wifi_state"

    const/4 v4, 0x4

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(II)V

    goto :goto_0
.end method
