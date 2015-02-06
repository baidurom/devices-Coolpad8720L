.class final Lcom/android/server/ylWatchdog$ScreenOffReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ylWatchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ylWatchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ScreenOffReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ylWatchdog;


# direct methods
.method constructor <init>(Lcom/android/server/ylWatchdog;)V
    .locals 0
    .parameter

    .prologue
    .line 489
    iput-object p1, p0, Lcom/android/server/ylWatchdog$ScreenOffReceiver;->this$0:Lcom/android/server/ylWatchdog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .parameter "c"
    .parameter "intent"

    .prologue
    .line 495
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    invoke-static {v11, v12}, Lcom/android/server/ylWatchdog;->access$002(J)J

    .line 497
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/ylWatchdog$ScreenOffReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v11, v11, Lcom/android/server/ylWatchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/ylWatchdog$ScreenOffReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v12, v12, Lcom/android/server/ylWatchdog;->mRebootByStealthIntent:Landroid/app/PendingIntent;

    invoke-virtual {v11, v12}, Lcom/android/server/AlarmManagerService;->remove(Landroid/app/PendingIntent;)V

    .line 498
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/ylWatchdog$ScreenOffReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v11, v11, Lcom/android/server/ylWatchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/ylWatchdog$ScreenOffReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v12, v12, Lcom/android/server/ylWatchdog;->mMorningWatchStartIntent:Landroid/app/PendingIntent;

    invoke-virtual {v11, v12}, Lcom/android/server/AlarmManagerService;->remove(Landroid/app/PendingIntent;)V

    .line 500
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/ylWatchdog$ScreenOffReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v11, v11, Lcom/android/server/ylWatchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/ylWatchdog$ScreenOffReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v12, v12, Lcom/android/server/ylWatchdog;->mBackupKeyDatabaseIntent:Landroid/app/PendingIntent;

    invoke-virtual {v11, v12}, Lcom/android/server/AlarmManagerService;->remove(Landroid/app/PendingIntent;)V

    .line 506
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/ylWatchdog$ScreenOffReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v11, v11, Lcom/android/server/ylWatchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/ylWatchdog$ScreenOffReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v12, v12, Lcom/android/server/ylWatchdog;->mMorningKillProcessIntent:Landroid/app/PendingIntent;

    invoke-virtual {v11, v12}, Lcom/android/server/AlarmManagerService;->remove(Landroid/app/PendingIntent;)V

    .line 507
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/ylWatchdog$ScreenOffReceiver;->this$0:Lcom/android/server/ylWatchdog;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-wide/16 v14, 0x33cc

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/android/server/ylWatchdog;->getNextWouldBeTime(JJ)J

    move-result-wide v9

    .line 508
    .local v9, triggerTime:J
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/ylWatchdog$ScreenOffReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v11, v11, Lcom/android/server/ylWatchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ylWatchdog$ScreenOffReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v13, v13, Lcom/android/server/ylWatchdog;->mMorningKillProcessIntent:Landroid/app/PendingIntent;

    invoke-virtual {v11, v12, v9, v10, v13}, Lcom/android/server/AlarmManagerService;->set(IJLandroid/app/PendingIntent;)V

    .line 509
    const-string v11, "ylWatchdog"

    const-string v12, "set yulong killprocess in ScreenOffReceiver"

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    const-string v11, "phone"

    invoke-static {v11}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 518
    .local v3, mITelephony:Lcom/android/internal/telephony/ITelephony;
    if-nez v3, :cond_1

    .line 602
    :cond_0
    :goto_0
    return-void

    .line 524
    :cond_1
    const-string v11, "ylWatchdog"

    const-string v12, "Alarm went off, checking reboot."

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    const-string v11, "ylWatchdog"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Last boot reason: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "ro.yulong.boot.reason"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    const/4 v6, 0x1

    .line 531
    .local v6, phoneStateIdle:Z
    :try_start_0
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 538
    :goto_1
    if-eqz v6, :cond_0

    .line 544
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/ylWatchdog$ScreenOffReceiver;->this$0:Lcom/android/server/ylWatchdog;

    #calls: Lcom/android/server/ylWatchdog;->isDataServiceWorking()Z
    invoke-static {v11}, Lcom/android/server/ylWatchdog;->access$200(Lcom/android/server/ylWatchdog;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 545
    const-string v11, "ylWatchdog"

    const-string v12, "Data service is detected, cancelling the alarm"

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 549
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/ylWatchdog$ScreenOffReceiver;->this$0:Lcom/android/server/ylWatchdog;

    #calls: Lcom/android/server/ylWatchdog;->isIccLockEnabled()Z
    invoke-static {v11}, Lcom/android/server/ylWatchdog;->access$400(Lcom/android/server/ylWatchdog;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 550
    const-string v11, "ylWatchdog"

    const-string v12, "isIccLockEnabled is detected, cancelling the alarm"

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 559
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    const-wide/32 v13, 0x57e40

    cmp-long v11, v11, v13

    if-gez v11, :cond_4

    .line 560
    const-string v11, "ylWatchdog"

    const-string v12, "time since boot is less than 6 mins, do NOT set any alarms."

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 566
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/ylWatchdog$ScreenOffReceiver;->this$0:Lcom/android/server/ylWatchdog;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-wide/32 v14, 0xe4fc

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/android/server/ylWatchdog;->getNextWouldBeTime(JJ)J

    move-result-wide v4

    .line 567
    .local v4, nextWouldBeTime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const-wide/32 v13, 0x83d60

    add-long/2addr v11, v13

    cmp-long v11, v4, v11

    if-gez v11, :cond_5

    .line 568
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const-wide/32 v13, 0x83d60

    add-long v4, v11, v13

    .line 570
    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/ylWatchdog$ScreenOffReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v11, v11, Lcom/android/server/ylWatchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ylWatchdog$ScreenOffReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v13, v13, Lcom/android/server/ylWatchdog;->mBackupKeyDatabaseIntent:Landroid/app/PendingIntent;

    invoke-virtual {v11, v12, v4, v5, v13}, Lcom/android/server/AlarmManagerService;->set(IJLandroid/app/PendingIntent;)V

    .line 571
    const-string v11, "ylWatchdog"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Scheduling next backup key databases alarm "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long v13, v4, v13

    const-wide/16 v15, 0x3e8

    div-long/2addr v13, v15

    long-to-double v13, v13

    const-wide/high16 v15, 0x404e

    div-double/2addr v13, v15

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "m from now"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    invoke-static {}, Landroid/os/Process;->getFreeMemory()J

    move-result-wide v1

    .line 575
    .local v1, availableMemory:J
    const-string v11, "ylWatchdog"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Threre is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-wide/16 v13, 0x400

    div-long v13, v1, v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " KB memory availabe!"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/ylWatchdog$ScreenOffReceiver;->this$0:Lcom/android/server/ylWatchdog;

    #calls: Lcom/android/server/ylWatchdog;->getTotalPssOfPersistentProcesses()J
    invoke-static {v11}, Lcom/android/server/ylWatchdog;->access$100(Lcom/android/server/ylWatchdog;)J

    move-result-wide v7

    .line 581
    .local v7, totalPssOfPersistentProcesses:J
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/ylWatchdog$ScreenOffReceiver;->this$0:Lcom/android/server/ylWatchdog;

    #calls: Lcom/android/server/ylWatchdog;->getTotalPssOfProtectedProcesses()V
    invoke-static {v11}, Lcom/android/server/ylWatchdog;->access$500(Lcom/android/server/ylWatchdog;)V

    .line 583
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/ylWatchdog$ScreenOffReceiver;->this$0:Lcom/android/server/ylWatchdog;

    invoke-virtual {v11, v1, v2, v7, v8}, Lcom/android/server/ylWatchdog;->isNecessaryToRebootByStealth(JJ)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 584
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/ylWatchdog$ScreenOffReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v11, v11, Lcom/android/server/ylWatchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    const/4 v12, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    const-wide/32 v15, 0x6ec760

    add-long/2addr v13, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ylWatchdog$ScreenOffReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v15, v15, Lcom/android/server/ylWatchdog;->mRebootByStealthIntent:Landroid/app/PendingIntent;

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/android/server/AlarmManagerService;->set(IJLandroid/app/PendingIntent;)V

    .line 587
    const-string v11, "ylWatchdog"

    const-string v12, "Scheduling next memcheck alarm for 121.0m from now"

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 589
    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/ylWatchdog$ScreenOffReceiver;->this$0:Lcom/android/server/ylWatchdog;

    invoke-virtual {v11, v1, v2, v7, v8}, Lcom/android/server/ylWatchdog;->isNecessaryToRebootByStealthInTheMorning(JJ)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 590
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/ylWatchdog$ScreenOffReceiver;->this$0:Lcom/android/server/ylWatchdog;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-wide/16 v14, 0x3534

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/android/server/ylWatchdog;->getNextWouldBeTime(JJ)J

    move-result-wide v4

    .line 591
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const-wide/32 v13, 0xa1220

    add-long/2addr v11, v13

    cmp-long v11, v4, v11

    if-gez v11, :cond_7

    .line 592
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const-wide/32 v13, 0xa1220

    add-long v4, v11, v13

    .line 594
    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/ylWatchdog$ScreenOffReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v11, v11, Lcom/android/server/ylWatchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ylWatchdog$ScreenOffReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v13, v13, Lcom/android/server/ylWatchdog;->mMorningWatchStartIntent:Landroid/app/PendingIntent;

    invoke-virtual {v11, v12, v4, v5, v13}, Lcom/android/server/AlarmManagerService;->set(IJLandroid/app/PendingIntent;)V

    .line 596
    const-string v11, "ylWatchdog"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Scheduling next morning watch alarm "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long v13, v4, v13

    const-wide/16 v15, 0x3e8

    div-long/2addr v13, v15

    long-to-double v13, v13

    const-wide/high16 v15, 0x404e

    div-double/2addr v13, v15

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "m from now"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 532
    .end local v1           #availableMemory:J
    .end local v4           #nextWouldBeTime:J
    .end local v7           #totalPssOfPersistentProcesses:J
    :catch_0
    move-exception v11

    goto/16 :goto_1
.end method
