.class final Lcom/android/server/ylWatchdog$KillProcessTimeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ylWatchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ylWatchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "KillProcessTimeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ylWatchdog;


# direct methods
.method constructor <init>(Lcom/android/server/ylWatchdog;)V
    .locals 0
    .parameter

    .prologue
    .line 264
    iput-object p1, p0, Lcom/android/server/ylWatchdog$KillProcessTimeReceiver;->this$0:Lcom/android/server/ylWatchdog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "c"
    .parameter "intent"

    .prologue
    .line 267
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-static {}, Lcom/android/server/ylWatchdog;->access$000()J

    move-result-wide v10

    sub-long v4, v8, v10

    .line 268
    .local v4, timescreenoff:J
    invoke-static {}, Landroid/os/Process;->getFreeMemory()J

    move-result-wide v0

    .line 269
    .local v0, availableMemory:J
    const/4 v3, 0x1

    .line 271
    .local v3, phoneStateIdle:Z
    iget-object v8, p0, Lcom/android/server/ylWatchdog$KillProcessTimeReceiver;->this$0:Lcom/android/server/ylWatchdog;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-wide/16 v11, 0x33cc

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/android/server/ylWatchdog;->getNextWouldBeTime(JJ)J

    move-result-wide v6

    .line 272
    .local v6, triggerTime:J
    iget-object v8, p0, Lcom/android/server/ylWatchdog$KillProcessTimeReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v8, v8, Lcom/android/server/ylWatchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/server/ylWatchdog$KillProcessTimeReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v10, v10, Lcom/android/server/ylWatchdog;->mMorningKillProcessIntent:Landroid/app/PendingIntent;

    invoke-virtual {v8, v9, v6, v7, v10}, Lcom/android/server/AlarmManagerService;->set(IJLandroid/app/PendingIntent;)V

    .line 273
    const-string v8, "ylWatchdog"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "set yulong killprocess in KillProcessTimeReceiver, availableMemory="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-wide/16 v10, 0x400

    div-long v10, v0, v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v8, p0, Lcom/android/server/ylWatchdog$KillProcessTimeReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v8, v8, Lcom/android/server/ylWatchdog;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    if-nez v8, :cond_1

    .line 277
    iget-object v8, p0, Lcom/android/server/ylWatchdog$KillProcessTimeReceiver;->this$0:Lcom/android/server/ylWatchdog;

    const-string v9, "phone"

    invoke-static {v9}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v9

    iput-object v9, v8, Lcom/android/server/ylWatchdog;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    .line 279
    const-string v8, "ylWatchdog"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "KillProcessTimeReceiver onReceive/mITelephony = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/ylWatchdog$KillProcessTimeReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v10, v10, Lcom/android/server/ylWatchdog;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v8, p0, Lcom/android/server/ylWatchdog$KillProcessTimeReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v8, v8, Lcom/android/server/ylWatchdog;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    if-nez v8, :cond_1

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    :try_start_0
    iget-object v8, p0, Lcom/android/server/ylWatchdog$KillProcessTimeReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v8, v8, Lcom/android/server/ylWatchdog;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v8}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z

    move-result v3

    .line 287
    const-string v8, "ylWatchdog"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "KillProcessTimeReceiver onReceive/phoneStateIdle = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :goto_1
    const-wide/32 v8, 0x1b7740

    cmp-long v8, v4, v8

    if-ltz v8, :cond_0

    const-wide/32 v8, 0x11800000

    cmp-long v8, v0, v8

    if-gez v8, :cond_0

    if-eqz v3, :cond_0

    .line 296
    const-string v8, "ylWatchdog"

    const-string v9, "onReceive/send yulong killprocess broadcast"

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v8, p0, Lcom/android/server/ylWatchdog$KillProcessTimeReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v8, v8, Lcom/android/server/ylWatchdog;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.yulong.android.watchdog.killprocess"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 288
    :catch_0
    move-exception v2

    .line 289
    .local v2, e:Landroid/os/RemoteException;
    const/4 v3, 0x1

    .line 290
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method
