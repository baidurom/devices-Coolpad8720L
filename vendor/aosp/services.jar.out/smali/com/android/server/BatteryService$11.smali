.class Lcom/android/server/BatteryService$11;
.super Landroid/content/BroadcastReceiver;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 0
    .parameter

    .prologue
    .line 996
    iput-object p1, p0, Lcom/android/server/BatteryService$11;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 998
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 999
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1000
    iget-object v1, p0, Lcom/android/server/BatteryService$11;->this$0:Lcom/android/server/BatteryService;

    #setter for: Lcom/android/server/BatteryService;->mBooted:Z
    invoke-static {v1, v5}, Lcom/android/server/BatteryService;->access$002(Lcom/android/server/BatteryService;Z)Z

    .line 1001
    iget-object v1, p0, Lcom/android/server/BatteryService$11;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$2400(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$Led;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    .line 1042
    :cond_0
    :goto_0
    return-void

    .line 1002
    :cond_1
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1004
    iget-object v1, p0, Lcom/android/server/BatteryService$11;->this$0:Lcom/android/server/BatteryService;

    #setter for: Lcom/android/server/BatteryService;->isScreenOn:Z
    invoke-static {v1, v5}, Lcom/android/server/BatteryService;->access$1702(Lcom/android/server/BatteryService;Z)Z

    .line 1005
    iget-object v1, p0, Lcom/android/server/BatteryService$11;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$2400(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$Led;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    goto :goto_0

    .line 1007
    :cond_2
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1009
    iget-object v1, p0, Lcom/android/server/BatteryService$11;->this$0:Lcom/android/server/BatteryService;

    #setter for: Lcom/android/server/BatteryService;->isScreenOn:Z
    invoke-static {v1, v4}, Lcom/android/server/BatteryService;->access$1702(Lcom/android/server/BatteryService;Z)Z

    .line 1010
    iget-object v1, p0, Lcom/android/server/BatteryService$11;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$2400(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$Led;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    goto :goto_0

    .line 1012
    :cond_3
    const-string v1, "yulong.intent.action.SHOW_NUM_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1014
    iget-object v1, p0, Lcom/android/server/BatteryService$11;->this$0:Lcom/android/server/BatteryService;

    const-string v2, "packageName"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/android/server/BatteryService;->packageName:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/server/BatteryService;->access$2502(Lcom/android/server/BatteryService;Ljava/lang/String;)Ljava/lang/String;

    .line 1015
    iget-object v1, p0, Lcom/android/server/BatteryService$11;->this$0:Lcom/android/server/BatteryService;

    const-string v2, "className"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/android/server/BatteryService;->className:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/server/BatteryService;->access$2602(Lcom/android/server/BatteryService;Ljava/lang/String;)Ljava/lang/String;

    .line 1016
    iget-object v1, p0, Lcom/android/server/BatteryService$11;->this$0:Lcom/android/server/BatteryService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/BatteryService$11;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->packageName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$2500(Lcom/android/server/BatteryService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BatteryService$11;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->className:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$2600(Lcom/android/server/BatteryService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/android/server/BatteryService;->key:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/server/BatteryService;->access$2702(Lcom/android/server/BatteryService;Ljava/lang/String;)Ljava/lang/String;

    .line 1017
    iget-object v1, p0, Lcom/android/server/BatteryService$11;->this$0:Lcom/android/server/BatteryService;

    const-string v2, "showNum"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #setter for: Lcom/android/server/BatteryService;->showNum:I
    invoke-static {v1, v2}, Lcom/android/server/BatteryService;->access$2802(Lcom/android/server/BatteryService;I)I

    .line 1019
    const-string v1, "com.yulong.android.callhistory:com.yulong.android.recentcalls.activity.TabHostActivity"

    iget-object v2, p0, Lcom/android/server/BatteryService$11;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->key:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$2700(Lcom/android/server/BatteryService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1020
    iget-object v1, p0, Lcom/android/server/BatteryService$11;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->showNum:I
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$2800(Lcom/android/server/BatteryService;)I

    move-result v1

    if-lez v1, :cond_6

    .line 1021
    iget-object v1, p0, Lcom/android/server/BatteryService$11;->this$0:Lcom/android/server/BatteryService;

    #setter for: Lcom/android/server/BatteryService;->haveMissedCall:Z
    invoke-static {v1, v5}, Lcom/android/server/BatteryService;->access$2902(Lcom/android/server/BatteryService;Z)Z

    .line 1033
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/android/server/BatteryService$11;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->haveMissedCall:Z
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$2900(Lcom/android/server/BatteryService;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/server/BatteryService$11;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->haveUnreadMsg:Z
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$3000(Lcom/android/server/BatteryService;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1034
    :cond_5
    iget-object v1, p0, Lcom/android/server/BatteryService$11;->this$0:Lcom/android/server/BatteryService;

    #setter for: Lcom/android/server/BatteryService;->showMessageLight:Z
    invoke-static {v1, v5}, Lcom/android/server/BatteryService;->access$2002(Lcom/android/server/BatteryService;Z)Z

    .line 1039
    :goto_2
    iget-object v1, p0, Lcom/android/server/BatteryService$11;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$2400(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$Led;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    goto/16 :goto_0

    .line 1023
    :cond_6
    iget-object v1, p0, Lcom/android/server/BatteryService$11;->this$0:Lcom/android/server/BatteryService;

    #setter for: Lcom/android/server/BatteryService;->haveMissedCall:Z
    invoke-static {v1, v4}, Lcom/android/server/BatteryService;->access$2902(Lcom/android/server/BatteryService;Z)Z

    goto :goto_1

    .line 1025
    :cond_7
    const-string v1, "com.android.mms:com.yulong.android.mms.ui.MmsMainListFormActivity"

    iget-object v2, p0, Lcom/android/server/BatteryService$11;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->key:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$2700(Lcom/android/server/BatteryService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1026
    iget-object v1, p0, Lcom/android/server/BatteryService$11;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->showNum:I
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$2800(Lcom/android/server/BatteryService;)I

    move-result v1

    if-lez v1, :cond_8

    .line 1027
    iget-object v1, p0, Lcom/android/server/BatteryService$11;->this$0:Lcom/android/server/BatteryService;

    #setter for: Lcom/android/server/BatteryService;->haveUnreadMsg:Z
    invoke-static {v1, v5}, Lcom/android/server/BatteryService;->access$3002(Lcom/android/server/BatteryService;Z)Z

    goto :goto_1

    .line 1029
    :cond_8
    iget-object v1, p0, Lcom/android/server/BatteryService$11;->this$0:Lcom/android/server/BatteryService;

    #setter for: Lcom/android/server/BatteryService;->haveUnreadMsg:Z
    invoke-static {v1, v4}, Lcom/android/server/BatteryService;->access$3002(Lcom/android/server/BatteryService;Z)Z

    goto :goto_1

    .line 1036
    :cond_9
    iget-object v1, p0, Lcom/android/server/BatteryService$11;->this$0:Lcom/android/server/BatteryService;

    #setter for: Lcom/android/server/BatteryService;->showMessageLight:Z
    invoke-static {v1, v4}, Lcom/android/server/BatteryService;->access$2002(Lcom/android/server/BatteryService;Z)Z

    goto :goto_2
.end method
