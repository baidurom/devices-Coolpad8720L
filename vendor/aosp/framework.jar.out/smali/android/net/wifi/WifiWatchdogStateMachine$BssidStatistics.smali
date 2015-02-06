.class Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;
.super Ljava/lang/Object;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BssidStatistics"
.end annotation


# instance fields
.field private final mBssid:Ljava/lang/String;

.field private mBssidAvoidTimeMax:J

.field private mEntries:[Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

.field private mEntriesSize:I

.field private mGoodLinkTargetCount:I

.field private mGoodLinkTargetIndex:I

.field private mGoodLinkTargetRssi:I

.field private mLastTimeGood:J

.field private mLastTimePoor:J

.field private mLastTimeSample:J

.field private mRssiBase:I

.field final synthetic this$0:Landroid/net/wifi/WifiWatchdogStateMachine;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter "bssid"

    .prologue
    .line 1259
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1260
    iput-object p2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssid:Ljava/lang/String;

    .line 1261
    const/16 v1, -0x69

    iput v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mRssiBase:I

    .line 1262
    const/16 v1, 0x3d

    iput v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntriesSize:I

    .line 1263
    iget v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntriesSize:I

    new-array v1, v1, [Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    iput-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntries:[Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    .line 1264
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntriesSize:I

    if-ge v0, v1, :cond_0

    .line 1265
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntries:[Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    new-instance v2, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    const-wide v3, 0x3fb999999999999aL

    invoke-direct {v2, p1, v3, v4}, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;D)V

    aput-object v2, v1, v0

    .line 1264
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1266
    :cond_0
    return-void
.end method

.method static synthetic access$4200(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 1229
    iget-wide v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J

    return-wide v0
.end method

.method static synthetic access$4202(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1229
    iput-wide p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J

    return-wide p1
.end method

.method static synthetic access$4400(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1229
    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    return v0
.end method

.method static synthetic access$4500(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1229
    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetCount:I

    return v0
.end method

.method static synthetic access$7100(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 1229
    iget-wide v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimeSample:J

    return-wide v0
.end method

.method static synthetic access$7102(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1229
    iput-wide p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimeSample:J

    return-wide p1
.end method

.method static synthetic access$7800(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1229
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7902(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1229
    iput-wide p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimeGood:J

    return-wide p1
.end method

.method static synthetic access$8002(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1229
    iput-wide p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimePoor:J

    return-wide p1
.end method


# virtual methods
.method public findRssiTarget(IID)I
    .locals 13
    .parameter "from"
    .parameter "to"
    .parameter "threshold"

    .prologue
    .line 1379
    iget v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mRssiBase:I

    sub-int/2addr p1, v7

    .line 1380
    iget v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mRssiBase:I

    sub-int/2addr p2, v7

    .line 1381
    const/4 v2, 0x0

    .line 1382
    .local v2, emptyCount:I
    if-ge p1, p2, :cond_1

    const/4 v0, 0x1

    .line 1383
    .local v0, d:I
    :goto_0
    move v3, p1

    .local v3, i:I
    :goto_1
    if-eq v3, p2, :cond_4

    .line 1385
    if-ltz v3, :cond_2

    iget v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntriesSize:I

    if-ge v3, v7, :cond_2

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntries:[Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    aget-object v7, v7, v3

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mVolume:D
    invoke-static {v7}, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->access$7300(Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v7

    const-wide/high16 v9, 0x3ff0

    cmpl-double v7, v7, v9

    if-lez v7, :cond_2

    .line 1386
    const/4 v2, 0x0

    .line 1387
    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntries:[Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    aget-object v7, v7, v3

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mValue:D
    invoke-static {v7}, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->access$7200(Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v7

    cmpg-double v7, v7, p3

    if-gez v7, :cond_3

    .line 1389
    iget v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mRssiBase:I

    add-int v6, v7, v3

    .line 1390
    .local v6, rssi:I
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1391
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v7, "#.##"

    invoke-direct {v1, v7}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1392
    .local v1, df:Ljava/text/DecimalFormat;
    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Scan target found: rssi="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " threshold="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-wide/high16 v9, 0x4059

    mul-double v9, v9, p3

    invoke-virtual {v1, v9, v10}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "% value="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntries:[Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    aget-object v9, v9, v3

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mValue:D
    invoke-static {v9}, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->access$7200(Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v9

    const-wide/high16 v11, 0x4059

    mul-double/2addr v9, v11

    invoke-virtual {v1, v9, v10}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "% volume="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntries:[Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    aget-object v9, v9, v3

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mVolume:D
    invoke-static {v9}, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->access$7300(Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v9

    invoke-virtual {v1, v9, v10}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/android/internal/util/StateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v7, v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$8900(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1414
    .end local v1           #df:Ljava/text/DecimalFormat;
    .end local v6           #rssi:I
    :cond_0
    :goto_2
    return v6

    .line 1382
    .end local v0           #d:I
    .end local v3           #i:I
    :cond_1
    const/4 v0, -0x1

    goto/16 :goto_0

    .line 1399
    .restart local v0       #d:I
    .restart local v3       #i:I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    const/4 v7, 0x3

    if-lt v2, v7, :cond_3

    .line 1401
    iget v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mRssiBase:I

    add-int v6, v7, v3

    .line 1402
    .restart local v6       #rssi:I
    invoke-virtual {p0, v6}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->presetLoss(I)D

    move-result-wide v4

    .line 1403
    .local v4, lossPreset:D
    cmpg-double v7, v4, p3

    if-gez v7, :cond_3

    .line 1404
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1405
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v7, "#.##"

    invoke-direct {v1, v7}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1406
    .restart local v1       #df:Ljava/text/DecimalFormat;
    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Scan target found: rssi="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " threshold="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-wide/high16 v9, 0x4059

    mul-double v9, v9, p3

    invoke-virtual {v1, v9, v10}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "% value="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-wide/high16 v9, 0x4059

    mul-double/2addr v9, v4

    invoke-virtual {v1, v9, v10}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "% volume=preset"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/android/internal/util/StateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v7, v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9000(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto :goto_2

    .line 1383
    .end local v1           #df:Ljava/text/DecimalFormat;
    .end local v4           #lossPreset:D
    .end local v6           #rssi:I
    :cond_3
    add-int/2addr v3, v0

    goto/16 :goto_1

    .line 1414
    :cond_4
    iget v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mRssiBase:I

    add-int v6, v7, p2

    goto :goto_2
.end method

.method public newLinkDetected()V
    .locals 6

    .prologue
    .line 1354
    iget-wide v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 1355
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Previous avoidance still in effect, rssi="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/internal/util/StateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$8700(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1368
    :cond_0
    :goto_0
    return-void

    .line 1361
    :cond_1
    const/16 v0, -0x69

    .line 1362
    .local v0, from:I
    const/16 v1, -0x2d

    .line 1363
    .local v1, to:I
    const-wide v2, 0x3fb999999999999aL

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->findRssiTarget(IID)I

    move-result v2

    iput v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    .line 1364
    const/4 v2, 0x1

    iput v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetCount:I

    .line 1365
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$8500()[Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget v4, v4, Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;->TIME_MS:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J

    .line 1366
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New link verifying target set, rssi="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/internal/util/StateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$8800(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public poorLinkDetected(I)Z
    .locals 16
    .parameter "rssi"

    .prologue
    .line 1313
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Poor link detected, rssi="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    #calls: Lcom/android/internal/util/StateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v13, v14}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$8300(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1315
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 1316
    .local v8, now:J
    move-object/from16 v0, p0

    iget-wide v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimeGood:J

    sub-long v4, v8, v13

    .line 1317
    .local v4, lastGood:J
    move-object/from16 v0, p0

    iget-wide v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimePoor:J

    sub-long v6, v8, v13

    .line 1321
    .local v6, lastPoor:J
    :goto_0
    move-object/from16 v0, p0

    iget v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    if-lez v13, :cond_1

    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$8400()[Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    add-int/lit8 v14, v14, -0x1

    aget-object v13, v13, v14

    iget v13, v13, Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;->REDUCE_TIME_MS:I

    int-to-long v13, v13

    cmp-long v13, v6, v13

    if-ltz v13, :cond_1

    .line 1322
    move-object/from16 v0, p0

    iget v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    add-int/lit8 v13, v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    goto :goto_0

    .line 1323
    :cond_1
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$8400()[Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    aget-object v13, v13, v14

    iget v13, v13, Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;->SAMPLE_COUNT:I

    move-object/from16 v0, p0

    iput v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetCount:I

    .line 1326
    add-int/lit8 v3, p1, 0x3

    .line 1327
    .local v3, from:I
    add-int/lit8 v12, p1, 0x14

    .line 1328
    .local v12, to:I
    const-wide v13, 0x3fb999999999999aL

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v12, v13, v14}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->findRssiTarget(IID)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    .line 1329
    move-object/from16 v0, p0

    iget v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$8400()[Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    aget-object v14, v14, v15

    iget v14, v14, Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;->RSSI_ADJ_DBM:I

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    .line 1330
    move-object/from16 v0, p0

    iget v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$8400()[Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    move-result-object v14

    array-length v14, v14

    add-int/lit8 v14, v14, -0x1

    if-ge v13, v14, :cond_2

    move-object/from16 v0, p0

    iget v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    .line 1333
    :cond_2
    const/4 v10, 0x0

    .local v10, p:I
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$8500()[Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    move-result-object v13

    array-length v13, v13

    add-int/lit8 v11, v13, -0x1

    .line 1334
    .local v11, pmax:I
    :goto_1
    if-ge v10, v11, :cond_3

    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$8500()[Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    move-result-object v13

    add-int/lit8 v14, v10, 0x1

    aget-object v13, v13, v14

    iget v13, v13, Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;->MIN_RSSI_DBM:I

    move/from16 v0, p1

    if-lt v0, v13, :cond_3

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1335
    :cond_3
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$8500()[Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    move-result-object v13

    aget-object v13, v13, v10

    iget v13, v13, Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;->TIME_MS:I

    int-to-long v1, v13

    .line 1338
    .local v1, avoidMax:J
    const-wide/16 v13, 0x0

    cmp-long v13, v1, v13

    if-gtz v13, :cond_4

    const/4 v13, 0x0

    .line 1346
    :goto_2
    return v13

    .line 1341
    :cond_4
    add-long v13, v8, v1

    move-object/from16 v0, p0

    iput-wide v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J

    .line 1343
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v13

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "goodRssi="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " goodCount="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetCount:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " lastGood="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " lastPoor="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " avoidMax="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    #calls: Lcom/android/internal/util/StateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v13, v14}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$8600(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1346
    :cond_5
    const/4 v13, 0x1

    goto :goto_2
.end method

.method public presetLoss(I)D
    .locals 10
    .parameter "rssi"

    .prologue
    const/16 v9, 0x5a

    const-wide/high16 v2, 0x3ff0

    .line 1294
    const/16 v4, -0x5a

    if-gt p1, v4, :cond_0

    .line 1303
    :goto_0
    return-wide v2

    .line 1295
    :cond_0
    if-lez p1, :cond_1

    const-wide/16 v2, 0x0

    goto :goto_0

    .line 1297
    :cond_1
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$8200()[D

    move-result-object v4

    if-nez v4, :cond_2

    .line 1299
    const/16 v1, 0x5a

    .line 1300
    .local v1, size:I
    new-array v4, v9, [D

    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$8202([D)[D

    .line 1301
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v9, :cond_2

    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$8200()[D

    move-result-object v4

    rsub-int/lit8 v5, v0, 0x5a

    int-to-double v5, v5

    const-wide/high16 v7, 0x3ff8

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    div-double v5, v2, v5

    aput-wide v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1303
    .end local v0           #i:I
    .end local v1           #size:I
    :cond_2
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$8200()[D

    move-result-object v2

    neg-int v3, p1

    aget-wide v2, v2, v3

    goto :goto_0
.end method

.method public updateLoss(IDI)V
    .locals 8
    .parameter "rssi"
    .parameter "value"
    .parameter "volume"

    .prologue
    .line 1276
    if-gtz p4, :cond_1

    .line 1285
    :cond_0
    :goto_0
    return-void

    .line 1277
    :cond_1
    iget v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mRssiBase:I

    sub-int v1, p1, v2

    .line 1278
    .local v1, index:I
    if-ltz v1, :cond_0

    iget v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntriesSize:I

    if-ge v1, v2, :cond_0

    .line 1279
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntries:[Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    aget-object v2, v2, v1

    invoke-virtual {v2, p2, p3, p4}, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->update(DI)V

    .line 1280
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1281
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v2, "#.##"

    invoke-direct {v0, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1282
    .local v0, df:Ljava/text/DecimalFormat;
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cache updated: loss["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntries:[Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    aget-object v4, v4, v1

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mValue:D
    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->access$7200(Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v4

    const-wide/high16 v6, 0x4059

    mul-double/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "% volume="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntries:[Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    aget-object v4, v4, v1

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mVolume:D
    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->access$7300(Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/internal/util/StateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$8100(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto :goto_0
.end method
