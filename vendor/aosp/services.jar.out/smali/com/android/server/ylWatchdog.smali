.class public Lcom/android/server/ylWatchdog;
.super Ljava/lang/Object;
.source "ylWatchdog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ylWatchdog$DatabaseBackupStartReceiver;,
        Lcom/android/server/ylWatchdog$RebootLog;,
        Lcom/android/server/ylWatchdog$RebootByStealthReceiver;,
        Lcom/android/server/ylWatchdog$ScreenOnReceiver;,
        Lcom/android/server/ylWatchdog$ScreenOffReceiver;,
        Lcom/android/server/ylWatchdog$TimeZoneChangedReceiver;,
        Lcom/android/server/ylWatchdog$TimeChangedReceiver;,
        Lcom/android/server/ylWatchdog$MorningWatchStartReceiver;,
        Lcom/android/server/ylWatchdog$KillProcessTimeReceiver;
    }
.end annotation


# static fields
.field static final BACKUP_KEY_DATABASES_ACTION:Ljava/lang/String; = "com.yulong.android.service.Watchdog.BACKUPDB"

.field static final BOOT_REASON_LOW_MEMORY:Ljava/lang/String; = "lowmem"

.field static final BOOT_REASON_NO_MEMORY:Ljava/lang/String; = "nomem"

.field static final DATABASE_BACKUP_HIBERNATION_DELAY:I = 0x83d60

.field static final DATABASE_BACKUP_START_TIME:I = 0xe4fc

.field private static final EVERY_MORNING_KILLPROCESS_THRESHOLD:I = 0x11800000

.field static final MORNING_WATCH_ELAPSED_TIME_LEAST:I = 0x5265c00

.field static final MORNING_WATCH_EVERYDAY_TIME:I = 0x33cc

.field static final MORNING_WATCH_HIBERNATION_DELAY:I = 0xa1220

.field static final MORNING_WATCH_MEMORY_LEAST:I = 0x5f00000

.field static final MORNING_WATCH_MEMORY_LESS:I = 0x6400000

.field static final MORNING_WATCH_PERSISTENT_MEMORY_MAX:I = 0x12c00000

.field static final MORNING_WATCH_START_ACTION:Ljava/lang/String; = "com.yulong.android.service.Watchdog.MWSTART"

.field static final MORNING_WATCH_START_TIME:I = 0x3534

.field static final REBOOT_ACTION:Ljava/lang/String; = "com.android.service.Watchdog.REBOOT"

.field static final REBOOT_BY_STEALTH_ACTION:Ljava/lang/String; = "com.yulong.android.service.Watchdog.REBOOT"

.field static final REBOOT_BY_STEALTH_DELAY:I = 0x6ec760

.field static final REBOOT_BY_STEALTH_MEMORY_LEAST:I = 0x2600000

.field static final REBOOT_BY_STEALTH_PERSISTENT_MEMORY_MAX:I = 0x15e00000

.field private static final REBOOT_LOG:Ljava/lang/String; = "reboot.log"

.field private static final REBOOT_ON_LOWMEM_LOG_MAX_SIZE:J = 0x200L

.field static final TAG:Ljava/lang/String; = "ylWatchdog"

.field static final TERMINATE_ORPHAN_SERVICES_START_ACTION:Ljava/lang/String; = "com.yulong.android.service.Watchdog.TOSSTART"

.field private static final TIME_SINCE_BOOT:J = 0x57e40L

.field public static final YLKEYDB_ACTION_PROPERTY:Ljava/lang/String; = "service.ylkeydb.cmd"

.field public static final YLKEYDB_FILE_PROPERTY:Ljava/lang/String; = "service.ylkeydb.file"

.field public static final YLKEYDB_SERVERY_NAME:Ljava/lang/String; = "ylkeydb"

.field private static final YULONG_KILL_PROCESS_ACTION:Ljava/lang/String; = "com.yulong.android.watchdog.killprocess"

.field private static final YULONG_KILL_PROCESS_TIME_ACTION:Ljava/lang/String; = "com.yulong.android.killprocesstime"

.field static final localLOGV:Z = true

.field private static mScreenoffTime:J

.field static sylWatchdog:Lcom/android/server/ylWatchdog;


# instance fields
.field mActivity:Lcom/android/server/am/ActivityManagerService;

.field mAlarm:Lcom/android/server/AlarmManagerService;

.field mBackupKeyDatabaseIntent:Landroid/app/PendingIntent;

.field mBattery:Lcom/android/server/BatteryService;

.field mContext:Landroid/content/Context;

.field mITelephony:Lcom/android/internal/telephony/ITelephony;

.field mMorningKillProcessIntent:Landroid/app/PendingIntent;

.field mMorningWatchStartIntent:Landroid/app/PendingIntent;

.field mPower:Lcom/android/server/power/PowerManagerService;

.field mRebootByStealthIntent:Landroid/app/PendingIntent;

.field mWDTimeChangedIntent:Landroid/app/PendingIntent;

.field mWDTimeZoneChangedIntent:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 105
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/ylWatchdog;->mScreenoffTime:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 797
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 799
    return-void
.end method

.method static synthetic access$000()J
    .locals 2

    .prologue
    .line 55
    sget-wide v0, Lcom/android/server/ylWatchdog;->mScreenoffTime:J

    return-wide v0
.end method

.method static synthetic access$002(J)J
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    sput-wide p0, Lcom/android/server/ylWatchdog;->mScreenoffTime:J

    return-wide p0
.end method

.method static synthetic access$100(Lcom/android/server/ylWatchdog;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/server/ylWatchdog;->getTotalPssOfPersistentProcesses()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/server/ylWatchdog;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/server/ylWatchdog;->isDataServiceWorking()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/ylWatchdog;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/server/ylWatchdog;->rebootOnLowMemory(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/ylWatchdog;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/server/ylWatchdog;->isIccLockEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/ylWatchdog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/server/ylWatchdog;->getTotalPssOfProtectedProcesses()V

    return-void
.end method

.method static computeCalendarTime(Ljava/util/Calendar;JJ)J
    .locals 6
    .parameter "c"
    .parameter "curTime"
    .parameter "secondsSinceMidnight"

    .prologue
    .line 1050
    invoke-virtual {p0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1052
    long-to-int v3, p3

    div-int/lit16 v2, v3, 0xe10

    .line 1053
    .local v2, val:I
    const/16 v3, 0xb

    invoke-virtual {p0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 1054
    mul-int/lit16 v3, v2, 0xe10

    int-to-long v3, v3

    sub-long/2addr p3, v3

    .line 1055
    long-to-int v3, p3

    div-int/lit8 v2, v3, 0x3c

    .line 1056
    const/16 v3, 0xc

    invoke-virtual {p0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 1057
    const/16 v3, 0xd

    long-to-int v4, p3

    mul-int/lit8 v5, v2, 0x3c

    sub-int/2addr v4, v5

    invoke-virtual {p0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 1058
    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 1060
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 1061
    .local v0, newTime:J
    cmp-long v3, v0, p1

    if-gez v3, :cond_0

    .line 1064
    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 1065
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 1068
    :cond_0
    return-wide v0
.end method

.method public static getInstance()Lcom/android/server/ylWatchdog;
    .locals 1

    .prologue
    .line 790
    sget-object v0, Lcom/android/server/ylWatchdog;->sylWatchdog:Lcom/android/server/ylWatchdog;

    if-nez v0, :cond_0

    .line 791
    new-instance v0, Lcom/android/server/ylWatchdog;

    invoke-direct {v0}, Lcom/android/server/ylWatchdog;-><init>()V

    sput-object v0, Lcom/android/server/ylWatchdog;->sylWatchdog:Lcom/android/server/ylWatchdog;

    .line 794
    :cond_0
    sget-object v0, Lcom/android/server/ylWatchdog;->sylWatchdog:Lcom/android/server/ylWatchdog;

    return-object v0
.end method

.method private getTotalPssOfPersistentProcesses()J
    .locals 17

    .prologue
    .line 894
    const-wide/16 v12, 0x0

    .line 895
    .local v12, totalPersistentProcessMem:J
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 896
    .local v4, persistentProcessNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 897
    .local v5, persistentProcessPids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/ylWatchdog;->mContext:Landroid/content/Context;

    const-string v15, "activity"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 899
    .local v1, am:Landroid/app/ActivityManager;
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v11

    .line 902
    .local v11, processes:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v11, :cond_1

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v9

    .line 903
    .local v9, processCount:I
    :goto_0
    const/4 v10, 0x0

    .local v10, processIndex:I
    :goto_1
    if-ge v10, v9, :cond_2

    .line 904
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 906
    .local v7, pi:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v14, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    and-int/lit8 v14, v14, 0x2

    if-eqz v14, :cond_0

    .line 907
    iget-object v14, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 908
    iget v14, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 903
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 902
    .end local v7           #pi:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v9           #processCount:I
    .end local v10           #processIndex:I
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 912
    .restart local v9       #processCount:I
    .restart local v10       #processIndex:I
    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 913
    .local v6, persistentProcessPidsCount:I
    new-array v8, v6, [I

    .line 915
    .local v8, pids:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v6, :cond_3

    .line 916
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    aput v14, v8, v2

    .line 915
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 919
    :cond_3
    const/4 v3, 0x0

    .line 921
    .local v3, mem:[Landroid/os/Debug$MemoryInfo;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v14

    invoke-interface {v14, v8}, Landroid/app/IActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 927
    :goto_3
    if-eqz v3, :cond_4

    .line 928
    const/4 v2, 0x0

    :goto_4
    if-ge v2, v6, :cond_4

    .line 929
    const-string v15, "ylWatchdog"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Pss used by "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " is "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v16, v3, v2

    invoke-virtual/range {v16 .. v16}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " KB"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    aget-object v14, v3, v2

    invoke-virtual {v14}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v14

    int-to-long v14, v14

    add-long/2addr v12, v14

    .line 928
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 934
    :cond_4
    const-string v14, "ylWatchdog"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Pss total used by persistent processes is: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " KB"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    const-wide/16 v14, 0x400

    mul-long/2addr v14, v12

    return-wide v14

    .line 923
    :catch_0
    move-exception v14

    goto :goto_3
.end method

.method private getTotalPssOfProtectedProcesses()V
    .locals 21

    .prologue
    .line 1197
    const-wide/16 v16, 0x0

    .line 1198
    .local v16, totalProtectedProcessMem:J
    const/16 v18, 0x7

    move/from16 v0, v18

    new-array v11, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    const-string v19, "com.yulong.android.backup"

    aput-object v19, v11, v18

    const/16 v18, 0x1

    const-string v19, "com.yulong.logredirect"

    aput-object v19, v11, v18

    const/16 v18, 0x2

    const-string v19, "com.android.bluetooth"

    aput-object v19, v11, v18

    const/16 v18, 0x3

    const-string v19, "com.yulong.android.ota"

    aput-object v19, v11, v18

    const/16 v18, 0x4

    const-string v19, "com.yulong.android.weatherwidget"

    aput-object v19, v11, v18

    const/16 v18, 0x5

    const-string v19, "com.android.providers.contacts"

    aput-object v19, v11, v18

    const/16 v18, 0x6

    const-string v19, "com.yulong.android.dev.gcoption"

    aput-object v19, v11, v18

    .line 1208
    .local v11, protectedProcess:[Ljava/lang/String;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1209
    .local v13, protectedProcessNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1211
    .local v14, protectedProcessPids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ylWatchdog;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "activity"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 1214
    .local v3, am:Landroid/app/ActivityManager;
    invoke-virtual {v3}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v10

    .line 1217
    .local v10, processes:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v10, :cond_1

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v8

    .line 1218
    .local v8, processCount:I
    :goto_0
    const/4 v9, 0x0

    .local v9, processIndex:I
    :goto_1
    if-ge v9, v8, :cond_3

    .line 1219
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1222
    .local v6, pi:Landroid/app/ActivityManager$RunningAppProcessInfo;
    const/4 v12, 0x0

    .local v12, protectedProcessCount:I
    :goto_2
    array-length v0, v11

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v12, v0, :cond_2

    .line 1223
    aget-object v18, v11, v12

    iget-object v0, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 1224
    iget-object v0, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1225
    iget v0, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1222
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 1217
    .end local v6           #pi:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v8           #processCount:I
    .end local v9           #processIndex:I
    .end local v12           #protectedProcessCount:I
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 1218
    .restart local v6       #pi:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .restart local v8       #processCount:I
    .restart local v9       #processIndex:I
    .restart local v12       #protectedProcessCount:I
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1231
    .end local v6           #pi:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v12           #protectedProcessCount:I
    :cond_3
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 1232
    .local v15, protectedProcessPidsCount:I
    new-array v7, v15, [I

    .line 1234
    .local v7, pids:[I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3
    if-ge v4, v15, :cond_4

    .line 1235
    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    aput v18, v7, v4

    .line 1234
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1238
    :cond_4
    const/4 v5, 0x0

    .line 1241
    .local v5, mem:[Landroid/os/Debug$MemoryInfo;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v0, v7}, Landroid/app/IActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 1246
    :goto_4
    if-eqz v5, :cond_5

    .line 1247
    const/4 v4, 0x0

    :goto_5
    if-ge v4, v15, :cond_5

    .line 1249
    const-string v19, "ylWatchdog"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Pss used by "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, " is "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    aget-object v20, v5, v4

    invoke-virtual/range {v20 .. v20}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v20

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, " KB"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    aget-object v18, v5, v4

    invoke-virtual/range {v18 .. v18}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v16, v16, v18

    .line 1247
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1255
    :cond_5
    const-string v18, "ylWatchdog"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Pss total used by protect processes is: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " KB"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    return-void

    .line 1242
    :catch_0
    move-exception v18

    goto/16 :goto_4
.end method

.method private final isDataServiceWorking()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 453
    const-string v2, "yulong.data.inorout"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 454
    .local v0, dataServiceState:I
    if-eqz v0, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    .line 455
    const/4 v1, 0x1

    .line 473
    :cond_0
    return v1
.end method

.method private final isIccLockEnabled()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 480
    invoke-static {}, Lcom/yulong/android/reflect/YLReflect;->PhoneModeManager_init()Ljava/lang/Object;

    move-result-object v0

    .line 481
    .local v0, PhoneModeManager:Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/yulong/android/reflect/YLReflect;->PhoneModeManager_getIccLockEnabled(Ljava/lang/Object;I)I

    move-result v2

    if-eq v2, v1, :cond_0

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/yulong/android/reflect/YLReflect;->PhoneModeManager_getIccLockEnabled(Ljava/lang/Object;I)I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 485
    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private rebootOnLowMemory(Ljava/lang/String;)Z
    .locals 7
    .parameter "reason"

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 632
    const-string v5, "ylWatchdog"

    const-string v6, "Do not panic, Dear! :)"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    const-string v5, "ylWatchdog"

    const-string v6, "The device\'ll reboot on low memory, for better performance."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    const-string v5, "phone"

    invoke-static {v5}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 655
    .local v1, phone:Lcom/android/internal/telephony/ITelephony;
    const-string v5, "ylWatchdog"

    const-string v6, "Shutdown the Radio(1)..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    move v2, v4

    .line 658
    .local v2, radioOff:Z
    :cond_1
    if-nez v2, :cond_2

    .line 659
    const-string v5, "ylWatchdog"

    const-string v6, "Turning off radio..."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z

    .line 661
    const-string v5, "ylWatchdog"

    const-string v6, "Turning off radio over!"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 669
    :cond_2
    :goto_0
    const-wide/16 v5, 0xbb8

    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 676
    :goto_1
    new-instance v3, Lcom/android/server/ylWatchdog$RebootLog;

    invoke-direct {v3}, Lcom/android/server/ylWatchdog$RebootLog;-><init>()V

    .line 677
    .local v3, rebootLog:Lcom/android/server/ylWatchdog$RebootLog;
    if-eqz v3, :cond_3

    .line 678
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Reboot on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for better performance."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/ylWatchdog$RebootLog;->write(Ljava/lang/String;)V

    .line 682
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/ylWatchdog;->rebootSystem(Ljava/lang/String;)V

    .line 684
    return v4

    .line 663
    .end local v2           #radioOff:Z
    .end local v3           #rebootLog:Lcom/android/server/ylWatchdog$RebootLog;
    :catch_0
    move-exception v0

    .line 664
    .local v0, ex:Landroid/os/RemoteException;
    const-string v5, "ylWatchdog"

    const-string v6, "RemoteException during radio shutdown"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 665
    const/4 v2, 0x1

    .restart local v2       #radioOff:Z
    goto :goto_0

    .line 670
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v5

    goto :goto_1
.end method


# virtual methods
.method getNextWouldBeTime(JJ)J
    .locals 3
    .parameter "curTime"
    .parameter "secondsSinceMidnight"

    .prologue
    .line 990
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 991
    .local v0, c:Ljava/util/Calendar;
    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/ylWatchdog;->computeCalendarTime(Ljava/util/Calendar;JJ)J

    move-result-wide v1

    .line 992
    .local v1, nextWouldBeTime:J
    return-wide v1
.end method

.method public init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/power/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V
    .locals 5
    .parameter "context"
    .parameter "battery"
    .parameter "power"
    .parameter "alarm"
    .parameter "activity"

    .prologue
    const/4 v4, 0x0

    .line 805
    iput-object p2, p0, Lcom/android/server/ylWatchdog;->mBattery:Lcom/android/server/BatteryService;

    .line 806
    iput-object p3, p0, Lcom/android/server/ylWatchdog;->mPower:Lcom/android/server/power/PowerManagerService;

    .line 807
    iput-object p4, p0, Lcom/android/server/ylWatchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    .line 808
    iput-object p5, p0, Lcom/android/server/ylWatchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    .line 812
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ylWatchdog;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    .line 815
    new-instance v0, Lcom/android/server/ylWatchdog$KillProcessTimeReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/ylWatchdog$KillProcessTimeReceiver;-><init>(Lcom/android/server/ylWatchdog;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.yulong.android.killprocesstime"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 817
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.yulong.android.killprocesstime"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ylWatchdog;->mMorningKillProcessIntent:Landroid/app/PendingIntent;

    .line 830
    new-instance v0, Lcom/android/server/ylWatchdog$ScreenOffReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/ylWatchdog$ScreenOffReceiver;-><init>(Lcom/android/server/ylWatchdog;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 833
    new-instance v0, Lcom/android/server/ylWatchdog$ScreenOnReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/ylWatchdog$ScreenOnReceiver;-><init>(Lcom/android/server/ylWatchdog;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 836
    new-instance v0, Lcom/android/server/ylWatchdog$RebootByStealthReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/ylWatchdog$RebootByStealthReceiver;-><init>(Lcom/android/server/ylWatchdog;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.yulong.android.service.Watchdog.REBOOT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "android.permission.REBOOT"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 840
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.yulong.android.service.Watchdog.REBOOT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ylWatchdog;->mRebootByStealthIntent:Landroid/app/PendingIntent;

    .line 846
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.yulong.android.service.Watchdog.MWSTART"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ylWatchdog;->mMorningWatchStartIntent:Landroid/app/PendingIntent;

    .line 848
    new-instance v0, Lcom/android/server/ylWatchdog$MorningWatchStartReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/ylWatchdog$MorningWatchStartReceiver;-><init>(Lcom/android/server/ylWatchdog;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.yulong.android.service.Watchdog.MWSTART"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 856
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ylWatchdog;->mWDTimeChangedIntent:Landroid/app/PendingIntent;

    .line 858
    new-instance v0, Lcom/android/server/ylWatchdog$TimeChangedReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/ylWatchdog$TimeChangedReceiver;-><init>(Lcom/android/server/ylWatchdog;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.TIME_SET"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 861
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ylWatchdog;->mWDTimeZoneChangedIntent:Landroid/app/PendingIntent;

    .line 863
    new-instance v0, Lcom/android/server/ylWatchdog$TimeZoneChangedReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/ylWatchdog$TimeZoneChangedReceiver;-><init>(Lcom/android/server/ylWatchdog;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 870
    iput-object p1, p0, Lcom/android/server/ylWatchdog;->mContext:Landroid/content/Context;

    .line 878
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.yulong.android.service.Watchdog.BACKUPDB"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ylWatchdog;->mBackupKeyDatabaseIntent:Landroid/app/PendingIntent;

    .line 880
    new-instance v0, Lcom/android/server/ylWatchdog$DatabaseBackupStartReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/ylWatchdog$DatabaseBackupStartReceiver;-><init>(Lcom/android/server/ylWatchdog;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.yulong.android.service.Watchdog.BACKUPDB"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 883
    const-string v0, "service.ylkeydb.cmd"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    const-string v0, "ctl.start"

    const-string v1, "ylkeydb"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    return-void
.end method

.method isNecessaryToRebootByStealth(JJ)Z
    .locals 4
    .parameter "availableMemory"
    .parameter "totalPssOfPersistentProcesses"

    .prologue
    const/4 v0, 0x1

    .line 946
    const-wide/32 v1, 0x2600000

    cmp-long v1, p1, v1

    if-gez v1, :cond_0

    .line 947
    const-string v1, "ylWatchdog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "availableMemory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "less than"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/high16 v3, 0x260

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "B , Ready to reboot"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    :goto_0
    return v0

    .line 951
    :cond_0
    const-wide/32 v1, 0x15e00000

    cmp-long v1, p3, v1

    if-lez v1, :cond_1

    .line 952
    const-string v1, "ylWatchdog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "totalPssOfPersistentProcesses"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " more than"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/high16 v3, 0x15e0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "B , Ready to reboot"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 956
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isNecessaryToRebootByStealthInTheMorning(JJ)Z
    .locals 6
    .parameter "availableMemory"
    .parameter "totalPssOfPersistentProcesses"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 965
    const-string v2, "ro.monkey"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 984
    :cond_0
    :goto_0
    return v0

    .line 972
    :cond_1
    const-wide/32 v2, 0x5f00000

    cmp-long v2, p1, v2

    if-ltz v2, :cond_2

    const-wide/32 v2, 0x6400000

    cmp-long v2, p1, v2

    if-gez v2, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 975
    :cond_2
    const-string v0, "ylWatchdog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "availableMemory is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "B , Ready to reboot, this in the morning"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 976
    goto :goto_0

    .line 979
    :cond_3
    const-wide/32 v2, 0x12c00000

    cmp-long v2, p3, v2

    if-lez v2, :cond_0

    .line 980
    const-string v0, "ylWatchdog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "totalPssOfPersistentProcesses"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "B more than"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/high16 v3, 0x12c0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "B , Ready to reboot, this in the morning"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 981
    goto :goto_0
.end method

.method rebootSystem(Ljava/lang/String;)V
    .locals 1
    .parameter "reason"

    .prologue
    .line 1181
    new-instance v0, Lcom/android/server/ylWatchdog$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/ylWatchdog$1;-><init>(Lcom/android/server/ylWatchdog;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1190
    return-void
.end method
