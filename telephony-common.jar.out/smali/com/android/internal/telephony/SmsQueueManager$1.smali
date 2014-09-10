.class Lcom/android/internal/telephony/SmsQueueManager$1;
.super Landroid/content/BroadcastReceiver;
.source "SmsQueueManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmsQueueManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SmsQueueManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SmsQueueManager;)V
    .locals 0
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/internal/telephony/SmsQueueManager$1;->this$0:Lcom/android/internal/telephony/SmsQueueManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, -0x1

    .line 243
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, action:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/SmsQueueManager$1;->this$0:Lcom/android/internal/telephony/SmsQueueManager;

    iget-object v4, v4, Lcom/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CP_COMM: mProcessTimeoutReceiver "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v4, p0, Lcom/android/internal/telephony/SmsQueueManager$1;->this$0:Lcom/android/internal/telephony/SmsQueueManager;

    iget-object v4, v4, Lcom/android/internal/telephony/SmsQueueManager;->mSendResultReturnTimeoutIntent:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/SmsQueueManager$1;->this$0:Lcom/android/internal/telephony/SmsQueueManager;

    iget-object v4, v4, Lcom/android/internal/telephony/SmsQueueManager;->mSmsSendTimeoutIntent:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 248
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/SmsQueueManager$1;->this$0:Lcom/android/internal/telephony/SmsQueueManager;

    iget-object v4, v4, Lcom/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    const-string v5, "CP_COMM: receive task_process_timeout intent,mark processing task failed."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const-string v4, "taskType"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 252
    const-string v4, "phoneId"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 254
    .local v2, tmpPhoneId:I
    iget-object v4, p0, Lcom/android/internal/telephony/SmsQueueManager$1;->this$0:Lcom/android/internal/telephony/SmsQueueManager;

    iget-object v4, v4, Lcom/android/internal/telephony/SmsQueueManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v4

    if-eq v2, v4, :cond_2

    .line 282
    .end local v2           #tmpPhoneId:I
    :cond_1
    :goto_0
    return-void

    .line 258
    .restart local v2       #tmpPhoneId:I
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/SmsQueueManager$1;->this$0:Lcom/android/internal/telephony/SmsQueueManager;

    #getter for: Lcom/android/internal/telephony/SmsQueueManager;->processingEventType:I
    invoke-static {v4}, Lcom/android/internal/telephony/SmsQueueManager;->access$000(Lcom/android/internal/telephony/SmsQueueManager;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 280
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/SmsQueueManager$1;->this$0:Lcom/android/internal/telephony/SmsQueueManager;

    #calls: Lcom/android/internal/telephony/SmsQueueManager;->initSmsQueueManager()V
    invoke-static {v4}, Lcom/android/internal/telephony/SmsQueueManager;->access$100(Lcom/android/internal/telephony/SmsQueueManager;)V

    goto :goto_0

    .line 260
    :pswitch_0
    iget-object v4, p0, Lcom/android/internal/telephony/SmsQueueManager$1;->this$0:Lcom/android/internal/telephony/SmsQueueManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/SmsQueueManager;->notifySmsDeleteFailed()V

    goto :goto_1

    .line 263
    :pswitch_1
    iget-object v4, p0, Lcom/android/internal/telephony/SmsQueueManager$1;->this$0:Lcom/android/internal/telephony/SmsQueueManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/SmsQueueManager;->notifySmsReadFailed()V

    goto :goto_1

    .line 267
    :pswitch_2
    iget-object v4, p0, Lcom/android/internal/telephony/SmsQueueManager$1;->this$0:Lcom/android/internal/telephony/SmsQueueManager;

    iget-object v5, v4, Lcom/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    monitor-enter v5

    .line 268
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/SmsQueueManager$1;->this$0:Lcom/android/internal/telephony/SmsQueueManager;

    iget-object v4, v4, Lcom/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 269
    iget-object v4, p0, Lcom/android/internal/telephony/SmsQueueManager$1;->this$0:Lcom/android/internal/telephony/SmsQueueManager;

    iget-object v4, v4, Lcom/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 270
    .local v3, tmpTrack:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 271
    .local v1, fillIn:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/internal/telephony/SmsQueueManager$1;->this$0:Lcom/android/internal/telephony/SmsQueueManager;

    invoke-virtual {v4, v3, v1}, Lcom/android/internal/telephony/SmsQueueManager;->notifySmsSendFailed(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Landroid/content/Intent;)V

    .line 272
    iget-object v4, p0, Lcom/android/internal/telephony/SmsQueueManager$1;->this$0:Lcom/android/internal/telephony/SmsQueueManager;

    iget-object v4, v4, Lcom/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CP_COMM: mark send task timeout failed,tmpTrack.mref = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mref:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    .end local v1           #fillIn:Landroid/content/Intent;
    .end local v3           #tmpTrack:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_3
    monitor-exit v5

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 258
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
