.class final Lcom/android/server/ylWatchdog$TimeZoneChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ylWatchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ylWatchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "TimeZoneChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ylWatchdog;


# direct methods
.method constructor <init>(Lcom/android/server/ylWatchdog;)V
    .locals 0
    .parameter

    .prologue
    .line 420
    iput-object p1, p0, Lcom/android/server/ylWatchdog$TimeZoneChangedReceiver;->this$0:Lcom/android/server/ylWatchdog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "c"
    .parameter "intent"

    .prologue
    .line 425
    iget-object v2, p0, Lcom/android/server/ylWatchdog$TimeZoneChangedReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v2, v2, Lcom/android/server/ylWatchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    iget-object v3, p0, Lcom/android/server/ylWatchdog$TimeZoneChangedReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v3, v3, Lcom/android/server/ylWatchdog;->mMorningWatchStartIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Lcom/android/server/AlarmManagerService;->remove(Landroid/app/PendingIntent;)V

    .line 426
    const-string v2, "ylWatchdog"

    const-string v3, "TimeZoneChangedReceiver, remove mMorningWatchStartIntent"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v2, p0, Lcom/android/server/ylWatchdog$TimeZoneChangedReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v2, v2, Lcom/android/server/ylWatchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    iget-object v3, p0, Lcom/android/server/ylWatchdog$TimeZoneChangedReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v3, v3, Lcom/android/server/ylWatchdog;->mBackupKeyDatabaseIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Lcom/android/server/AlarmManagerService;->remove(Landroid/app/PendingIntent;)V

    .line 435
    const-string v2, "ylWatchdog"

    const-string v3, "TimeZoneChangedReceiver, remove mBackupKeyDatabaseIntent"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-object v2, p0, Lcom/android/server/ylWatchdog$TimeZoneChangedReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v2, v2, Lcom/android/server/ylWatchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    iget-object v3, p0, Lcom/android/server/ylWatchdog$TimeZoneChangedReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v3, v3, Lcom/android/server/ylWatchdog;->mMorningKillProcessIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Lcom/android/server/AlarmManagerService;->remove(Landroid/app/PendingIntent;)V

    .line 439
    iget-object v2, p0, Lcom/android/server/ylWatchdog$TimeZoneChangedReceiver;->this$0:Lcom/android/server/ylWatchdog;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x33cc

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/ylWatchdog;->getNextWouldBeTime(JJ)J

    move-result-wide v0

    .line 440
    .local v0, triggerTime:J
    iget-object v2, p0, Lcom/android/server/ylWatchdog$TimeZoneChangedReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v2, v2, Lcom/android/server/ylWatchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/ylWatchdog$TimeZoneChangedReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v4, v4, Lcom/android/server/ylWatchdog;->mMorningKillProcessIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/android/server/AlarmManagerService;->set(IJLandroid/app/PendingIntent;)V

    .line 441
    const-string v2, "ylWatchdog"

    const-string v3, "set yulong killprocess in TimeZoneChangedReceiver"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    return-void
.end method
