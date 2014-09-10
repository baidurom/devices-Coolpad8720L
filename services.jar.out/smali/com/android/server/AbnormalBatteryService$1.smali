.class Lcom/android/server/AbnormalBatteryService$1;
.super Landroid/content/BroadcastReceiver;
.source "AbnormalBatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AbnormalBatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AbnormalBatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/AbnormalBatteryService;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/server/AbnormalBatteryService$1;->this$0:Lcom/android/server/AbnormalBatteryService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 68
    const-string v3, "plugged"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 70
    .local v0, batteryPlugg:I
    if-eq v5, v0, :cond_0

    if-ne v6, v0, :cond_1

    .line 72
    :cond_0
    const-string v3, "status"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 75
    .local v1, batteryStatus:I
    const/4 v3, 0x4

    if-ne v3, v1, :cond_2

    .line 76
    const-string v3, "health"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 104
    .end local v1           #batteryStatus:I
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 79
    .restart local v1       #batteryStatus:I
    :pswitch_1
    iget-object v3, p0, Lcom/android/server/AbnormalBatteryService$1;->this$0:Lcom/android/server/AbnormalBatteryService;

    iget-object v4, p0, Lcom/android/server/AbnormalBatteryService$1;->this$0:Lcom/android/server/AbnormalBatteryService;

    #getter for: Lcom/android/server/AbnormalBatteryService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/AbnormalBatteryService;->access$000(Lcom/android/server/AbnormalBatteryService;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x10405d7

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/AbnormalBatteryService$1;->this$0:Lcom/android/server/AbnormalBatteryService;

    #getter for: Lcom/android/server/AbnormalBatteryService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/AbnormalBatteryService;->access$000(Lcom/android/server/AbnormalBatteryService;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x10405da

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/AbnormalBatteryService;->sendNotification(Ljava/lang/CharSequence;Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :pswitch_2
    iget-object v3, p0, Lcom/android/server/AbnormalBatteryService$1;->this$0:Lcom/android/server/AbnormalBatteryService;

    iget-object v4, p0, Lcom/android/server/AbnormalBatteryService$1;->this$0:Lcom/android/server/AbnormalBatteryService;

    #getter for: Lcom/android/server/AbnormalBatteryService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/AbnormalBatteryService;->access$000(Lcom/android/server/AbnormalBatteryService;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x10405d8

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/AbnormalBatteryService$1;->this$0:Lcom/android/server/AbnormalBatteryService;

    #getter for: Lcom/android/server/AbnormalBatteryService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/AbnormalBatteryService;->access$000(Lcom/android/server/AbnormalBatteryService;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x10405db

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/AbnormalBatteryService;->sendNotification(Ljava/lang/CharSequence;Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :pswitch_3
    iget-object v3, p0, Lcom/android/server/AbnormalBatteryService$1;->this$0:Lcom/android/server/AbnormalBatteryService;

    iget-object v4, p0, Lcom/android/server/AbnormalBatteryService$1;->this$0:Lcom/android/server/AbnormalBatteryService;

    #getter for: Lcom/android/server/AbnormalBatteryService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/AbnormalBatteryService;->access$000(Lcom/android/server/AbnormalBatteryService;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x10405d9

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/AbnormalBatteryService$1;->this$0:Lcom/android/server/AbnormalBatteryService;

    #getter for: Lcom/android/server/AbnormalBatteryService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/AbnormalBatteryService;->access$000(Lcom/android/server/AbnormalBatteryService;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x10405dc

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/AbnormalBatteryService;->sendNotification(Ljava/lang/CharSequence;Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :cond_2
    if-ne v6, v1, :cond_1

    iget-object v3, p0, Lcom/android/server/AbnormalBatteryService$1;->this$0:Lcom/android/server/AbnormalBatteryService;

    #getter for: Lcom/android/server/AbnormalBatteryService;->notificationHasSent:Z
    invoke-static {v3}, Lcom/android/server/AbnormalBatteryService;->access$100(Lcom/android/server/AbnormalBatteryService;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 98
    iget-object v3, p0, Lcom/android/server/AbnormalBatteryService$1;->this$0:Lcom/android/server/AbnormalBatteryService;

    #setter for: Lcom/android/server/AbnormalBatteryService;->notificationHasSent:Z
    invoke-static {v3, v4}, Lcom/android/server/AbnormalBatteryService;->access$102(Lcom/android/server/AbnormalBatteryService;Z)Z

    .line 99
    iget-object v3, p0, Lcom/android/server/AbnormalBatteryService$1;->this$0:Lcom/android/server/AbnormalBatteryService;

    #getter for: Lcom/android/server/AbnormalBatteryService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/AbnormalBatteryService;->access$000(Lcom/android/server/AbnormalBatteryService;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 100
    .local v2, notificationManger:Landroid/app/NotificationManager;
    const v3, 0x12f34c6

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
