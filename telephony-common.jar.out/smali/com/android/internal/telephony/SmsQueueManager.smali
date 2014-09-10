.class public Lcom/android/internal/telephony/SmsQueueManager;
.super Landroid/os/Handler;
.source "SmsQueueManager.java"


# static fields
.field private static final EVENT_SMS_QUEUE_MANAGE:I = 0xc8

.field private static final EVENT_TYPE_DELETE:I = 0x1

.field private static final EVENT_TYPE_NULL:I = -0x1

.field private static final EVENT_TYPE_READ:I = 0x2

.field private static final EVENT_TYPE_SEND:I = 0x3

.field private static final FOUR_SECOND:I = 0xfa0

.field private static final ICC_MAX_RETRY_NUM:I = 0x4

.field private static final ICC_RETRY_DELAY:I = 0x3

.field private static final IS_SEND_SMS_FLAG:I = 0x1

.field private static final NOT_IN_SERVICE_MAX_RETRY_COUNT:I = 0x5

.field private static final SIX_SECOND:I = 0x1770

.field private static final SMS_SEND_TIMEOUT_DSDS:I = 0x57e40

.field private static final SQM_PROCESS_INTERVAL_TIME_DSDS:I = 0x1770

.field private static final SQM_PROCESS_INTERVAL_TIME_PHONE1:I = 0x7d0

.field private static final SQM_PROCESS_INTERVAL_TIME_PHONE2:I = 0x7d0

.field private static final SQM_PROCESS_TIMOUEOUT:I = 0x3a980

.field private static final TWO_SECOND:I = 0x7d0


# instance fields
.field public final PROPERTIES_CDMA_SENDLOCK_STATE:Ljava/lang/String;

.field public final PROPERTIES_GSM_SENDLOCK_STATE:Ljava/lang/String;

.field private SQM_PROCESS_INTERVAL_TIME:I

.field protected TAG:Ljava/lang/String;

.field private bProcessing:Z

.field protected deleteSMSList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/IccIndexEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mAlarmManager:Landroid/app/AlarmManager;

.field protected mContext:Landroid/content/Context;

.field protected mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mProcessTimeoutReceiver:Landroid/content/BroadcastReceiver;

.field protected mSendResultReturnTimeoutIntent:Ljava/lang/String;

.field protected mSmsSendTimeoutIntent:Ljava/lang/String;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private notInServiceRef:I

.field private notInServiceRetryCount:I

.field private notInServiceTime:J

.field private processingEventType:I

.field protected readSMSList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/IccIndexEntity;",
            ">;"
        }
    .end annotation
.end field

.field public smsSendLock:Z

.field public smsTrackerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/android/internal/telephony/PhoneBase;Landroid/os/PowerManager$WakeLock;)V
    .locals 4
    .parameter "looper"
    .parameter "phone"
    .parameter "wakeLock"

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 156
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 53
    const-string v1, "SMSDispat"

    iput-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    .line 66
    const/16 v1, 0x7d0

    iput v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->SQM_PROCESS_INTERVAL_TIME:I

    .line 95
    const-string v1, "com.android.internal.telephony.SMSDispatcher.PROCESS_TIMOUEOUT"

    iput-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->mSendResultReturnTimeoutIntent:Ljava/lang/String;

    .line 99
    const-string v1, "com.android.internal.telephony.SMSDispatcher.SEND_SMS_TIMOUEOUT"

    iput-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->mSmsSendTimeoutIntent:Ljava/lang/String;

    .line 117
    iput v2, p0, Lcom/android/internal/telephony/SmsQueueManager;->processingEventType:I

    .line 120
    iput-boolean v3, p0, Lcom/android/internal/telephony/SmsQueueManager;->bProcessing:Z

    .line 122
    iput-boolean v3, p0, Lcom/android/internal/telephony/SmsQueueManager;->smsSendLock:Z

    .line 128
    iput v2, p0, Lcom/android/internal/telephony/SmsQueueManager;->notInServiceRef:I

    .line 132
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->notInServiceTime:J

    .line 135
    iput v3, p0, Lcom/android/internal/telephony/SmsQueueManager;->notInServiceRetryCount:I

    .line 140
    const-string v1, "cdma.sendlock.state"

    iput-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->PROPERTIES_CDMA_SENDLOCK_STATE:Ljava/lang/String;

    .line 141
    const-string v1, "gsm.sendlock.state"

    iput-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->PROPERTIES_GSM_SENDLOCK_STATE:Ljava/lang/String;

    .line 144
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    .line 145
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->readSMSList:Ljava/util/ArrayList;

    .line 146
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->deleteSMSList:Ljava/util/ArrayList;

    .line 239
    new-instance v1, Lcom/android/internal/telephony/SmsQueueManager$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/SmsQueueManager$1;-><init>(Lcom/android/internal/telephony/SmsQueueManager;)V

    iput-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->mProcessTimeoutReceiver:Landroid/content/BroadcastReceiver;

    .line 160
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/SmsQueueManager;->setLogTag(Lcom/android/internal/telephony/PhoneBase;)V

    .line 161
    iput-object p2, p0, Lcom/android/internal/telephony/SmsQueueManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 162
    iput-object p3, p0, Lcom/android/internal/telephony/SmsQueueManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 163
    invoke-virtual {p2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->mContext:Landroid/content/Context;

    .line 166
    iget-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->mAlarmManager:Landroid/app/AlarmManager;

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/SmsQueueManager;->mSendResultReturnTimeoutIntent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/SmsQueueManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->mSendResultReturnTimeoutIntent:Ljava/lang/String;

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/SmsQueueManager;->mSmsSendTimeoutIntent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/SmsQueueManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->mSmsSendTimeoutIntent:Ljava/lang/String;

    .line 171
    iget-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->mSendResultReturnTimeoutIntent:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SmsQueueManager;->cancelProcessTimeoutAlarm(Ljava/lang/String;)V

    .line 172
    iget-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->mSmsSendTimeoutIntent:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SmsQueueManager;->cancelProcessTimeoutAlarm(Ljava/lang/String;)V

    .line 174
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 175
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->mSendResultReturnTimeoutIntent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 176
    iget-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->mSmsSendTimeoutIntent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 179
    iget-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    const-string v2, "CP_COMM: register mSendResultReturnTimeoutIntent alarm Receiver."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/SmsQueueManager;->mProcessTimeoutReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 183
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsQueueManager;->setProcessIntervalTime()V

    .line 184
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/SmsQueueManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/android/internal/telephony/SmsQueueManager;->processingEventType:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/SmsQueueManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsQueueManager;->initSmsQueueManager()V

    return-void
.end method

.method private cancelProcessTimeoutAlarm(Ljava/lang/String;)V
    .locals 5
    .parameter "action"

    .prologue
    const/4 v4, 0x0

    .line 686
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 687
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "taskType"

    iget v3, p0, Lcom/android/internal/telephony/SmsQueueManager;->processingEventType:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 689
    iget-object v2, p0, Lcom/android/internal/telephony/SmsQueueManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 690
    .local v1, processtimeoutIntent:Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/android/internal/telephony/SmsQueueManager;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v2, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 691
    iget-object v2, p0, Lcom/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CP_COMM: cancel "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " alarm."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    return-void
.end method

.method private deleteSmsQueue()V
    .locals 3

    .prologue
    .line 700
    iget-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    const-string v2, "CP_COMM: SMSDispatcher now process deleteSmsQueue begin..."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    iget-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->deleteSMSList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/IccIndexEntity;

    iget v0, v1, Lcom/android/internal/telephony/IccIndexEntity;->iccIndex:I

    .line 702
    .local v0, index:I
    iget-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/uicc/IccRecords;->deleteCardSmsbyIndex(I)V

    .line 703
    return-void
.end method

.method private initSmsQueueManager()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 542
    iget-object v0, p0, Lcom/android/internal/telephony/SmsQueueManager;->mSendResultReturnTimeoutIntent:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsQueueManager;->cancelProcessTimeoutAlarm(Ljava/lang/String;)V

    .line 543
    iput-boolean v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->bProcessing:Z

    .line 544
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/SmsQueueManager;->processingEventType:I

    .line 545
    iput-boolean v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->smsSendLock:Z

    .line 546
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsQueueManager;->smsSendLock:Z

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SmsQueueManager;->setSmsSendState(Z)V

    .line 547
    return-void
.end method

.method private isOtherPhoneSending()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 528
    const/4 v0, 0x0

    .line 530
    .local v0, smsWorkStatus:Z
    iget-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 531
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getGsmPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getSmsWorkStatus()Z

    move-result v0

    .line 535
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 533
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getCdmaPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getSmsWorkStatus()Z

    move-result v0

    goto :goto_0
.end method

.method private markSmsSendFailed(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Landroid/content/Intent;)V
    .locals 6
    .parameter "tracker"
    .parameter "fillIn"

    .prologue
    const/4 v0, 0x1

    .line 812
    iget-object v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_1

    .line 815
    if-eqz p2, :cond_0

    :try_start_0
    const-string v1, "result"

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 818
    .local v0, resultCode:I
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tracker.mref "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mref:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    iget-object v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    iget-object v2, p0, Lcom/android/internal/telephony/SmsQueueManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0, p2}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 824
    .end local v0           #resultCode:I
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 826
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 827
    iget-object v3, p0, Lcom/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CP_COMM: SMS send failed complete. Broadcasting , oldmref = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget v1, v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mref:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", mref = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mref:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    iget-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget v1, v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mref:I

    iget v3, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mref:I

    if-ne v1, v3, :cond_2

    .line 830
    iget-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 833
    :cond_2
    monitor-exit v2

    .line 834
    return-void

    .line 833
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 820
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private readSmsQueue()V
    .locals 3

    .prologue
    .line 709
    iget-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    const-string v2, "CP_COMM: SMSDispatcher now process readSmsQueue begin..."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    iget-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->readSMSList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/IccIndexEntity;

    iget v0, v1, Lcom/android/internal/telephony/IccIndexEntity;->iccIndex:I

    .line 711
    .local v0, index:I
    iget-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getIccSms(I)V

    .line 712
    return-void
.end method

.method private run()V
    .locals 0

    .prologue
    .line 196
    return-void
.end method

.method private sendSmsQueue(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 4
    .parameter "tmpTracker"

    .prologue
    .line 718
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->smsSendLock:Z

    .line 719
    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->smsSendLock:Z

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SmsQueueManager;->setSmsSendState(Z)V

    .line 720
    iget-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CP_COMM: SMSDispatcher now process sendSmsQueue begin... , sendQueue size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    iget-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 727
    .local v0, ss:I
    iget-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CP_COMM: SMSDispatcher sendRawPdu, sendpdu mref = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mref:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ServiceState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    if-eqz v0, :cond_0

    .line 735
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/SmsQueueManager;->ylHandleNotInService(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 744
    :goto_0
    return-void

    .line 741
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mSMS:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0
.end method

.method private sendSmsQueueInDsds()V
    .locals 3

    .prologue
    .line 510
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isDsdsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/android/internal/telephony/SmsQueueManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 513
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getGsmPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->startSmsQueue()Z

    .line 517
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: SMSDispatcher EVENT_SMS_QUEUE_MANAGE end. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPhone.getPhoneId()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/SmsQueueManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :cond_0
    return-void

    .line 515
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getCdmaPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->startSmsQueue()Z

    goto :goto_0
.end method

.method private setLogTag(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 3
    .parameter "phone"

    .prologue
    .line 204
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v0

    .line 205
    .local v0, phoneId:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    .line 206
    return-void
.end method

.method private setProcessIntervalTime()V
    .locals 3

    .prologue
    const/16 v2, 0x7d0

    .line 212
    iget-object v0, p0, Lcom/android/internal/telephony/SmsQueueManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 213
    iput v2, p0, Lcom/android/internal/telephony/SmsQueueManager;->SQM_PROCESS_INTERVAL_TIME:I

    .line 219
    :goto_0
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isDsdsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    const/16 v0, 0x1770

    iput v0, p0, Lcom/android/internal/telephony/SmsQueueManager;->SQM_PROCESS_INTERVAL_TIME:I

    .line 227
    :cond_0
    invoke-static {}, Lcom/yulong/android/telephony/CPDefaultRunMode;->getDefault()Lcom/yulong/android/telephony/CPDefaultRunMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yulong/android/telephony/CPDefaultRunMode;->isLabMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    .line 230
    iget-object v0, p0, Lcom/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    const-string v1, "SQM_PROCESS_INTERVAL_TIME = 50;"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const/16 v0, 0x32

    iput v0, p0, Lcom/android/internal/telephony/SmsQueueManager;->SQM_PROCESS_INTERVAL_TIME:I

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: SQM_PROCESS_INTERVAL_TIME = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/SmsQueueManager;->SQM_PROCESS_INTERVAL_TIME:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    return-void

    .line 215
    :cond_2
    iput v2, p0, Lcom/android/internal/telephony/SmsQueueManager;->SQM_PROCESS_INTERVAL_TIME:I

    goto :goto_0
.end method

.method private setProcessTimeoutAlarm(Ljava/lang/String;)V
    .locals 8
    .parameter "action"

    .prologue
    const/4 v6, 0x0

    .line 645
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 646
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "taskType"

    iget v5, p0, Lcom/android/internal/telephony/SmsQueueManager;->processingEventType:I

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 647
    const-string v4, "phoneId"

    iget-object v5, p0, Lcom/android/internal/telephony/SmsQueueManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 649
    iget-object v4, p0, Lcom/android/internal/telephony/SmsQueueManager;->mContext:Landroid/content/Context;

    invoke-static {v4, v6, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 651
    .local v1, processtimeoutIntent:Landroid/app/PendingIntent;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/32 v6, 0x57e40

    add-long v2, v4, v6

    .line 652
    .local v2, triggerAtTime:J
    iget-object v4, p0, Lcom/android/internal/telephony/SmsQueueManager;->mSendResultReturnTimeoutIntent:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 653
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/32 v6, 0x3a980

    add-long v2, v4, v6

    .line 655
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/SmsQueueManager;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 657
    iget-object v4, p0, Lcom/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CP_COMM: set "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " alarm."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    return-void
.end method


# virtual methods
.method addDeleteSmsList(I)V
    .locals 5
    .parameter "index"

    .prologue
    .line 407
    new-instance v0, Lcom/android/internal/telephony/IccIndexEntity;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2}, Lcom/android/internal/telephony/IccIndexEntity;-><init>(II)V

    .line 409
    .local v0, tmpEntity:Lcom/android/internal/telephony/IccIndexEntity;
    iget-object v3, p0, Lcom/android/internal/telephony/SmsQueueManager;->deleteSMSList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 410
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/SmsQueueManager;->deleteSMSList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    iget-object v2, p0, Lcom/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CP_COMM: add to deleteSMSList index =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 415
    .local v1, tmpMessage:Landroid/os/Message;
    const/16 v2, 0xc8

    iput v2, v1, Landroid/os/Message;->what:I

    .line 416
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 417
    return-void

    .line 411
    .end local v1           #tmpMessage:Landroid/os/Message;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method addReadSmsList(I)V
    .locals 5
    .parameter "index"

    .prologue
    .line 389
    new-instance v0, Lcom/android/internal/telephony/IccIndexEntity;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2}, Lcom/android/internal/telephony/IccIndexEntity;-><init>(II)V

    .line 391
    .local v0, tmpEntity:Lcom/android/internal/telephony/IccIndexEntity;
    iget-object v3, p0, Lcom/android/internal/telephony/SmsQueueManager;->readSMSList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 392
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/SmsQueueManager;->readSMSList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    iget-object v2, p0, Lcom/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CP_COMM: add to ReadSmsList index =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 397
    .local v1, tmpMessage:Landroid/os/Message;
    const/16 v2, 0xc8

    iput v2, v1, Landroid/os/Message;->what:I

    .line 398
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 399
    return-void

    .line 393
    .end local v1           #tmpMessage:Landroid/os/Message;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public addTracker(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 3
    .parameter "tracker"

    .prologue
    .line 373
    iget-object v2, p0, Lcom/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 374
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 377
    .local v0, tmpMessage:Landroid/os/Message;
    const/16 v1, 0xc8

    iput v1, v0, Landroid/os/Message;->what:I

    .line 379
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 380
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 381
    return-void

    .line 375
    .end local v0           #tmpMessage:Landroid/os/Message;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method deleteIccSmsDone(Ljava/lang/Exception;)V
    .locals 5
    .parameter "exception"

    .prologue
    .line 461
    iget-object v2, p0, Lcom/android/internal/telephony/SmsQueueManager;->deleteSMSList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 464
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->deleteSMSList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 465
    iget-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    const-string v3, "CP_COMM: deleteSMSList is empty,retrun! deleteIccSmsDone index =  "

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsQueueManager;->startSmsQueueHanler()V

    .line 467
    monitor-exit v2

    .line 489
    :goto_0
    return-void

    .line 469
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->deleteSMSList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/IccIndexEntity;

    .line 473
    .local v0, tmpEntity:Lcom/android/internal/telephony/IccIndexEntity;
    if-nez p1, :cond_1

    .line 474
    iget-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->deleteSMSList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 475
    iget-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    const-string v3, "CP_COMM: deleteSMSList success  "

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 488
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsQueueManager;->startSmsQueueHanler()V

    goto :goto_0

    .line 477
    :cond_1
    :try_start_1
    iget v1, v0, Lcom/android/internal/telephony/IccIndexEntity;->retryCount:I

    const/4 v3, 0x4

    if-ge v1, v3, :cond_2

    .line 478
    iget v1, v0, Lcom/android/internal/telephony/IccIndexEntity;->retryCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/internal/telephony/IccIndexEntity;->retryCount:I

    .line 479
    iget-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->deleteSMSList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 480
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SmsQueueManager;->startSmsQueueHandler(I)V

    goto :goto_1

    .line 487
    .end local v0           #tmpEntity:Lcom/android/internal/telephony/IccIndexEntity;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 482
    .restart local v0       #tmpEntity:Lcom/android/internal/telephony/IccIndexEntity;
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->deleteSMSList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 483
    iget-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CP_COMM: deleteSMSList failed, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mPhone.getPhoneId()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/SmsQueueManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    const-string v1, "CP_COMM:dispose SmsQueueManager"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, p0, Lcom/android/internal/telephony/SmsQueueManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->mProcessTimeoutReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 189
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 190
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 191
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    .line 288
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 367
    :goto_0
    return-void

    .line 291
    :pswitch_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->bProcessing:Z

    if-eqz v1, :cond_0

    .line 292
    iget-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CP_COMM: SMSDispatcher is processing task, return! delList size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/SmsQueueManager;->deleteSMSList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",readList size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/SmsQueueManager;->readSMSList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",trackerList size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 298
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    const-string v2, "CP_COMM: SMSDispatcher EVENT_SMS_QUEUE_MANAGE begin..."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v2, p0, Lcom/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 303
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->deleteSMSList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->readSMSList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 304
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsQueueManager;->initSmsQueueManager()V

    .line 306
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsQueueManager;->sendSmsQueueInDsds()V

    .line 307
    monitor-exit v2

    goto :goto_0

    .line 309
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 313
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isDsdsEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 314
    iget-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->deleteSMSList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->readSMSList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/android/internal/telephony/SmsQueueManager;->isOtherPhoneSending()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 316
    iget-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    const-string v2, "CP_COMM: Other phone is now sending sms, return! "

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 321
    :cond_2
    iput-boolean v5, p0, Lcom/android/internal/telephony/SmsQueueManager;->bProcessing:Z

    .line 322
    iget-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->mSendResultReturnTimeoutIntent:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SmsQueueManager;->setProcessTimeoutAlarm(Ljava/lang/String;)V

    .line 327
    iget-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->deleteSMSList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 328
    iput v5, p0, Lcom/android/internal/telephony/SmsQueueManager;->processingEventType:I

    .line 329
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsQueueManager;->deleteSmsQueue()V

    goto/16 :goto_0

    .line 336
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->readSMSList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 337
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->processingEventType:I

    .line 338
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsQueueManager;->readSmsQueue()V

    goto/16 :goto_0

    .line 342
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 346
    :try_start_2
    iget-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 347
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->processingEventType:I

    .line 350
    iget-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CP_COMM: EVENT_SMS_QUEUE_MANAGE send sms begin  msg.arg1 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v5, :cond_5

    .line 352
    iget-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->mSmsSendTimeoutIntent:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SmsQueueManager;->setProcessTimeoutAlarm(Ljava/lang/String;)V

    .line 356
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 357
    .local v0, tempTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsQueueManager;->sendSmsQueue(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 359
    monitor-exit v2

    goto/16 :goto_0

    .line 361
    .end local v0           #tempTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :cond_6
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    .line 288
    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
    .end packed-switch
.end method

.method isSendTrackEmpty()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 495
    iget-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 496
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsQueueManager;->smsSendLock:Z

    .line 498
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsQueueManager;->smsSendLock:Z

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SmsQueueManager;->setSmsSendState(Z)V

    .line 499
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    monitor-exit v1

    .line 501
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 503
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method notifySmsDeleteFailed()V
    .locals 2

    .prologue
    .line 763
    iget-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->deleteSMSList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 764
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "deleteSms Timeout.."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 765
    .local v0, exception:Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SmsQueueManager;->deleteIccSmsDone(Ljava/lang/Exception;)V

    .line 767
    .end local v0           #exception:Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method notifySmsReadFailed()V
    .locals 4

    .prologue
    .line 751
    iget-object v2, p0, Lcom/android/internal/telephony/SmsQueueManager;->readSMSList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 752
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "ReadSms Timeout.."

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 753
    .local v0, exception:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/internal/telephony/SmsQueueManager;->readSMSList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/IccIndexEntity;

    iget v1, v2, Lcom/android/internal/telephony/IccIndexEntity;->iccIndex:I

    .line 754
    .local v1, index:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SmsQueueManager;->readIccSmsDone(Ljava/lang/Exception;)V

    .line 756
    .end local v0           #exception:Ljava/lang/Exception;
    .end local v1           #index:I
    :cond_0
    return-void
.end method

.method notifySmsSendFailed(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Landroid/content/Intent;)V
    .locals 7
    .parameter "tracker"
    .parameter "fillIn"

    .prologue
    .line 776
    iget-object v5, p0, Lcom/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    monitor-enter v5

    .line 778
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/SmsQueueManager;->mSmsSendTimeoutIntent:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SmsQueueManager;->cancelProcessTimeoutAlarm(Ljava/lang/String;)V

    .line 780
    iget-object v4, p0, Lcom/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget v4, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mref:I

    iget v6, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mref:I

    if-ne v4, v6, :cond_1

    .line 781
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SmsQueueManager;->markSmsSendFailed(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Landroid/content/Intent;)V

    .line 785
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 787
    iget v4, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mIndex:I

    if-lez v4, :cond_0

    iget v4, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mIndex:I

    iget v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mTotal:I

    if-ge v4, v5, :cond_0

    .line 788
    iget v4, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mTotal:I

    iget v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mIndex:I

    sub-int v2, v4, v5

    .line 789
    .local v2, sendFailedNum:I
    const/4 v3, 0x0

    .line 790
    .local v3, tmpSmsTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 792
    iget-object v5, p0, Lcom/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    monitor-enter v5

    .line 793
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 794
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 803
    .end local v1           #i:I
    .end local v2           #sendFailedNum:I
    .end local v3           #tmpSmsTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_0
    :goto_1
    return-void

    .line 783
    :cond_1
    :try_start_2
    monitor-exit v5

    goto :goto_1

    .line 785
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 796
    .restart local v1       #i:I
    .restart local v2       #sendFailedNum:I
    .restart local v3       #tmpSmsTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_2
    :try_start_3
    iget-object v4, p0, Lcom/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-object v3, v0

    .line 797
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 798
    if-eqz v3, :cond_3

    .line 799
    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/SmsQueueManager;->markSmsSendFailed(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Landroid/content/Intent;)V

    .line 790
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 797
    :catchall_1
    move-exception v4

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v4
.end method

.method readIccSmsDone(Ljava/lang/Exception;)V
    .locals 5
    .parameter "exception"

    .prologue
    .line 425
    iget-object v2, p0, Lcom/android/internal/telephony/SmsQueueManager;->readSMSList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 428
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->readSMSList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 429
    iget-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    const-string v3, "CP_COMM: readSMSList is empty,retrun! readSmsDone  "

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsQueueManager;->startSmsQueueHanler()V

    .line 431
    monitor-exit v2

    .line 453
    :goto_0
    return-void

    .line 433
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->readSMSList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/IccIndexEntity;

    .line 437
    .local v0, tmpEntity:Lcom/android/internal/telephony/IccIndexEntity;
    if-nez p1, :cond_1

    .line 438
    iget-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->readSMSList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 439
    iget-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    const-string v3, "CP_COMM: readSMSList success "

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsQueueManager;->startSmsQueueHanler()V

    goto :goto_0

    .line 441
    :cond_1
    :try_start_1
    iget v1, v0, Lcom/android/internal/telephony/IccIndexEntity;->retryCount:I

    const/4 v3, 0x4

    if-ge v1, v3, :cond_2

    .line 442
    iget v1, v0, Lcom/android/internal/telephony/IccIndexEntity;->retryCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/internal/telephony/IccIndexEntity;->retryCount:I

    .line 443
    iget-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->readSMSList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 444
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SmsQueueManager;->startSmsQueueHandler(I)V

    goto :goto_1

    .line 451
    .end local v0           #tmpEntity:Lcom/android/internal/telephony/IccIndexEntity;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 446
    .restart local v0       #tmpEntity:Lcom/android/internal/telephony/IccIndexEntity;
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->readSMSList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 447
    iget-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CP_COMM: readSMSList failed, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mPhone.getPhoneId()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/SmsQueueManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method removeFristElement(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 5
    .parameter "tracker"

    .prologue
    .line 910
    iget-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 912
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsQueueManager;->mSmsSendTimeoutIntent:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsQueueManager;->cancelProcessTimeoutAlarm(Ljava/lang/String;)V

    .line 914
    iget-object v0, p0, Lcom/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 915
    iget-object v2, p0, Lcom/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CP_COMM: SMS send complete. Broadcasting , oldmref = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mref:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", mref = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mref:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    iget-object v0, p0, Lcom/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mref:I

    iget v2, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mref:I

    if-ne v0, v2, :cond_0

    .line 919
    iget-object v0, p0, Lcom/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 922
    :cond_0
    monitor-exit v1

    .line 923
    return-void

    .line 922
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setSmsSendState(Z)V
    .locals 4
    .parameter "mSendlock"

    .prologue
    const/4 v3, 0x1

    .line 926
    iget-object v0, p0, Lcom/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSmsSendState: phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/SmsQueueManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", smsSendLock = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    iget-object v0, p0, Lcom/android/internal/telephony/SmsQueueManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 928
    if-ne p1, v3, :cond_1

    .line 929
    const-string v0, "cdma.sendlock.state"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    :cond_0
    :goto_0
    return-void

    .line 930
    :cond_1
    const-string v0, "cdma.sendlock.state"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 932
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/SmsQueueManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 933
    if-ne p1, v3, :cond_3

    .line 934
    const-string v0, "gsm.sendlock.state"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 935
    :cond_3
    const-string v0, "gsm.sendlock.state"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method startSmsQueue()V
    .locals 4

    .prologue
    .line 666
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsQueueManager;->bProcessing:Z

    if-eqz v0, :cond_0

    .line 667
    iget-object v0, p0, Lcom/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startSmsQueue, SMSDispatcher is processing task, return! delList size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/SmsQueueManager;->deleteSMSList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",readList size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/SmsQueueManager;->readSMSList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",trackerList size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    :goto_0
    return-void

    .line 673
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 674
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 675
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsQueueManager;->startSmsQueueHanler()V

    .line 676
    iget-object v0, p0, Lcom/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CP_COMM: startsendsms count =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mPhone.getPhoneId()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/SmsQueueManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method startSmsQueueHandler(I)V
    .locals 4
    .parameter "TaskDelay"

    .prologue
    .line 626
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->bProcessing:Z

    .line 627
    iget-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->mSendResultReturnTimeoutIntent:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SmsQueueManager;->cancelProcessTimeoutAlarm(Ljava/lang/String;)V

    .line 629
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 630
    .local v0, tmpMessage:Landroid/os/Message;
    const/16 v1, 0xc8

    iput v1, v0, Landroid/os/Message;->what:I

    .line 633
    iget v1, v0, Landroid/os/Message;->what:I

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 634
    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 638
    iget-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    add-int/lit16 v2, p1, 0xc8

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 639
    return-void
.end method

.method startSmsQueueHanler()V
    .locals 10

    .prologue
    const/16 v9, 0xb

    const/16 v8, 0xc8

    const/4 v4, 0x0

    .line 553
    iput-boolean v4, p0, Lcom/android/internal/telephony/SmsQueueManager;->bProcessing:Z

    .line 554
    iget-object v4, p0, Lcom/android/internal/telephony/SmsQueueManager;->mSendResultReturnTimeoutIntent:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SmsQueueManager;->cancelProcessTimeoutAlarm(Ljava/lang/String;)V

    .line 555
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 556
    .local v2, tmpMessage:Landroid/os/Message;
    iput v8, v2, Landroid/os/Message;->what:I

    .line 559
    const/4 v4, 0x1

    iput v4, v2, Landroid/os/Message;->arg1:I

    .line 563
    iget-object v4, p0, Lcom/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CPPhoneProperties.isDsdsEnabled() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isDsdsEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    invoke-static {}, Lcom/yulong/android/telephony/CPDefaultRunMode;->getDefault()Lcom/yulong/android/telephony/CPDefaultRunMode;

    move-result-object v0

    .line 566
    .local v0, RunMode:Lcom/yulong/android/telephony/CPDefaultRunMode;
    iget-object v5, p0, Lcom/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    monitor-enter v5

    .line 567
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    .line 568
    iget-object v4, p0, Lcom/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget v3, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mTotal:I

    .line 569
    .local v3, total:I
    iget-object v4, p0, Lcom/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget v1, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mIndex:I

    .line 570
    .local v1, index:I
    iget-object v4, p0, Lcom/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "total = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",index = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isDsdsEnabled()Z

    move-result v4

    if-nez v4, :cond_4

    .line 575
    if-lez v3, :cond_1

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v4

    if-ne v4, v9, :cond_1

    invoke-virtual {v0}, Lcom/yulong/android/telephony/CPDefaultRunMode;->isLabMode()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 577
    iget-object v4, p0, Lcom/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    const-string v6, "send multi-part message via one traffic channel,no interval is needed"

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/internal/telephony/SmsQueueManager;->SQM_PROCESS_INTERVAL_TIME:I

    .line 605
    .end local v1           #index:I
    .end local v3           #total:I
    :goto_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 607
    iget-object v4, p0, Lcom/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SQM_PROCESS_INTERVAL_TIME = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/SmsQueueManager;->SQM_PROCESS_INTERVAL_TIME:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    iget-object v4, p0, Lcom/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hasMessages(EVENT_SMS_QUEUE_MANAGE) = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    invoke-virtual {p0, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 612
    invoke-virtual {p0, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 616
    :cond_0
    iget v4, p0, Lcom/android/internal/telephony/SmsQueueManager;->SQM_PROCESS_INTERVAL_TIME:I

    int-to-long v4, v4

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 619
    iget-object v4, p0, Lcom/android/internal/telephony/SmsQueueManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget v5, p0, Lcom/android/internal/telephony/SmsQueueManager;->SQM_PROCESS_INTERVAL_TIME:I

    add-int/lit16 v5, v5, 0xc8

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 620
    return-void

    .line 579
    .restart local v1       #index:I
    .restart local v3       #total:I
    :cond_1
    const/4 v4, 0x4

    if-gt v3, v4, :cond_2

    .line 580
    const/16 v4, 0x7d0

    :try_start_1
    iput v4, p0, Lcom/android/internal/telephony/SmsQueueManager;->SQM_PROCESS_INTERVAL_TIME:I

    goto :goto_0

    .line 605
    .end local v1           #index:I
    .end local v3           #total:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 581
    .restart local v1       #index:I
    .restart local v3       #total:I
    :cond_2
    const/4 v4, 0x5

    if-lt v3, v4, :cond_3

    const/4 v4, 0x6

    if-gt v3, v4, :cond_3

    .line 582
    const/16 v4, 0xfa0

    :try_start_2
    iput v4, p0, Lcom/android/internal/telephony/SmsQueueManager;->SQM_PROCESS_INTERVAL_TIME:I

    goto :goto_0

    .line 584
    :cond_3
    const/16 v4, 0x1770

    iput v4, p0, Lcom/android/internal/telephony/SmsQueueManager;->SQM_PROCESS_INTERVAL_TIME:I

    goto :goto_0

    .line 590
    :cond_4
    if-lez v3, :cond_5

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v4

    if-ne v4, v9, :cond_5

    invoke-virtual {v0}, Lcom/yulong/android/telephony/CPDefaultRunMode;->isLabMode()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 592
    iget-object v4, p0, Lcom/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    const-string v6, "send multi-part message via one traffic channel,no interval is needed"

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/internal/telephony/SmsQueueManager;->SQM_PROCESS_INTERVAL_TIME:I

    goto/16 :goto_0

    .line 595
    :cond_5
    const/16 v4, 0x1770

    iput v4, p0, Lcom/android/internal/telephony/SmsQueueManager;->SQM_PROCESS_INTERVAL_TIME:I

    goto/16 :goto_0

    .line 599
    .end local v1           #index:I
    .end local v3           #total:I
    :cond_6
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isDsdsEnabled()Z

    move-result v4

    if-nez v4, :cond_7

    .line 600
    const/16 v4, 0x7d0

    iput v4, p0, Lcom/android/internal/telephony/SmsQueueManager;->SQM_PROCESS_INTERVAL_TIME:I

    goto/16 :goto_0

    .line 602
    :cond_7
    const/16 v4, 0x1770

    iput v4, p0, Lcom/android/internal/telephony/SmsQueueManager;->SQM_PROCESS_INTERVAL_TIME:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public ylHandleNotInService(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 9
    .parameter "ss"
    .parameter "tracker"

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x2

    const/16 v6, 0x1388

    const/4 v5, 0x0

    .line 848
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/internal/telephony/SmsQueueManager;->notInServiceTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1388

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 849
    iget-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CP_COMM: already in notInService\ufffd\ufffd return.... , ServiceState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    iput-boolean v5, p0, Lcom/android/internal/telephony/SmsQueueManager;->bProcessing:Z

    .line 904
    :goto_0
    return-void

    .line 853
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->notInServiceTime:J

    .line 857
    iget-object v2, p0, Lcom/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 860
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget v1, v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mref:I

    iget v3, p2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mref:I

    if-eq v1, v3, :cond_3

    .line 861
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->smsTrackerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 862
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->smsSendLock:Z

    .line 863
    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->smsSendLock:Z

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SmsQueueManager;->setSmsSendState(Z)V

    .line 865
    :cond_2
    monitor-exit v2

    goto :goto_0

    .line 867
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 869
    iget v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->notInServiceRef:I

    iget v2, p2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mref:I

    if-ne v1, v2, :cond_7

    .line 870
    iget v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->notInServiceRetryCount:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_4

    .line 871
    iget v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->notInServiceRetryCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->notInServiceRetryCount:I

    .line 872
    iget-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CP_COMM: sendRawPdu Retry, notInServiceRetryCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/SmsQueueManager;->notInServiceRetryCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ServiceState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SmsQueueManager;->startSmsQueueHandler(I)V

    goto :goto_0

    .line 877
    :cond_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 878
    .local v0, fillIn:Landroid/content/Intent;
    iget-object v1, p2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_5

    .line 879
    const/4 v1, 0x3

    if-ne p1, v1, :cond_6

    .line 880
    const-string v1, "errorCode"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 882
    const-string v1, "result"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 890
    :cond_5
    :goto_1
    invoke-virtual {p0, p2, v0}, Lcom/android/internal/telephony/SmsQueueManager;->notifySmsSendFailed(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Landroid/content/Intent;)V

    .line 891
    iget-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CP_COMM: sendRawPdu failed, pdu  mref = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mref:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ServiceState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SmsQueueManager;->startSmsQueueHandler(I)V

    goto/16 :goto_0

    .line 884
    :cond_6
    const-string v1, "errorCode"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 886
    const-string v1, "result"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 896
    .end local v0           #fillIn:Landroid/content/Intent;
    :cond_7
    iget v1, p2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mref:I

    iput v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->notInServiceRef:I

    .line 897
    iput v5, p0, Lcom/android/internal/telephony/SmsQueueManager;->notInServiceRetryCount:I

    .line 898
    iget v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->notInServiceRetryCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->notInServiceRetryCount:I

    .line 899
    iget-object v1, p0, Lcom/android/internal/telephony/SmsQueueManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CP_COMM: sendRawPdu Retry, notInServiceRetryCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/SmsQueueManager;->notInServiceRetryCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ServiceState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", tracker.mref ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/SmsQueueManager;->notInServiceRef:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SmsQueueManager;->startSmsQueueHandler(I)V

    goto/16 :goto_0
.end method
