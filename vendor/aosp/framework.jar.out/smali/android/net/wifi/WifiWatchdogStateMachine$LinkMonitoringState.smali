.class Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;
.super Lcom/android/internal/util/State;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LinkMonitoringState"
.end annotation


# instance fields
.field private mLastRssi:I

.field private mLastTxBad:I

.field private mLastTxGood:I

.field private mSampleCount:I

.field final synthetic this$0:Landroid/net/wifi/WifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 935
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 945
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-virtual {p0}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/internal/util/StateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6500(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 946
    :cond_0
    iput v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->mSampleCount:I

    .line 947
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v1, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-wide/high16 v3, 0x3fe0

    invoke-direct {v1, v2, v3, v4}, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;D)V

    #setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentLoss:Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;
    invoke-static {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6602(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    .line 948
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v2, 0x2100b

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3804(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v3

    invoke-virtual {v1, v2, v3, v5}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 949
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 21
    .parameter "msg"

    .prologue
    .line 953
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->what:I

    sparse-switch v15, :sswitch_data_0

    .line 1037
    const/4 v15, 0x0

    .line 1039
    :goto_0
    return v15

    .line 955
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->calculateSignalLevel(I)I
    invoke-static/range {v16 .. v17}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$500(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    move-result v16

    #setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentSignalLevel:I
    invoke-static/range {v15 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$402(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    .line 956
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentSignalLevel:I
    invoke-static {v15}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$400(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v15

    const/16 v16, 0x4

    move/from16 v0, v16

    if-gt v15, v0, :cond_1

    .line 1039
    :cond_0
    :goto_1
    const/4 v15, 0x1

    goto :goto_0

    .line 960
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v16, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineWatchState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;
    invoke-static/range {v16 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3000(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    move-result-object v16

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v15 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6700(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 965
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v16, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mLinkMonitoringState:Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;
    invoke-static/range {v16 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6300(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;

    move-result-object v16

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v15 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6800(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 969
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mIsScreenOn:Z
    invoke-static {v15}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 970
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v16, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;
    invoke-static/range {v16 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;

    move-result-object v16

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v15 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6900(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 971
    :cond_2
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v16, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static/range {v16 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3800(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 972
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v15}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4000(Landroid/net/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v15

    const v16, 0x25014

    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 973
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v16, v0

    const v17, 0x2100b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3804(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v18

    const/16 v19, 0x0

    invoke-virtual/range {v16 .. v19}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v16

    const-wide/16 v17, 0x3e8

    invoke-virtual/range {v15 .. v18}, Lcom/android/internal/util/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto/16 :goto_1

    .line 979
    :sswitch_3
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/net/wifi/RssiPacketCountInfo;

    .line 980
    .local v6, info:Landroid/net/wifi/RssiPacketCountInfo;
    iget v12, v6, Landroid/net/wifi/RssiPacketCountInfo;->rssi:I

    .line 981
    .local v12, rssi:I
    move-object/from16 v0, p0

    iget v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->mLastRssi:I

    add-int/2addr v15, v12

    div-int/lit8 v9, v15, 0x2

    .line 982
    .local v9, mrssi:I
    iget v13, v6, Landroid/net/wifi/RssiPacketCountInfo;->txbad:I

    .line 983
    .local v13, txbad:I
    iget v14, v6, Landroid/net/wifi/RssiPacketCountInfo;->txgood:I

    .line 984
    .local v14, txgood:I
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v15

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Fetch RSSI succeed, rssi="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " mrssi="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " txbad="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " txgood="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    #calls: Lcom/android/internal/util/StateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v15 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$7000(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 988
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 989
    .local v10, now:J
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v15}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2300(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v15

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimeSample:J
    invoke-static {v15}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$7100(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;)J

    move-result-wide v15

    sub-long v15, v10, v15

    const-wide/16 v17, 0x7d0

    cmp-long v15, v15, v17

    if-gez v15, :cond_5

    .line 992
    move-object/from16 v0, p0

    iget v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->mLastTxBad:I

    sub-int v2, v13, v15

    .line 993
    .local v2, dbad:I
    move-object/from16 v0, p0

    iget v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->mLastTxGood:I

    sub-int v4, v14, v15

    .line 994
    .local v4, dgood:I
    add-int v5, v2, v4

    .line 996
    .local v5, dtotal:I
    if-lez v5, :cond_5

    .line 998
    int-to-double v15, v2

    int-to-double v0, v5

    move-wide/from16 v17, v0

    div-double v7, v15, v17

    .line 1000
    .local v7, loss:D
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentLoss:Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;
    invoke-static {v15}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    move-result-object v15

    invoke-virtual {v15, v7, v8, v5}, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->update(DI)V

    .line 1002
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 1003
    new-instance v3, Ljava/text/DecimalFormat;

    const-string v15, "#.##"

    invoke-direct {v3, v15}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1004
    .local v3, df:Ljava/text/DecimalFormat;
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Incremental loss="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " Current loss="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentLoss:Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    move-result-object v17

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mValue:D
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->access$7200(Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v17

    const-wide/high16 v19, 0x4059

    mul-double v17, v17, v19

    move-wide/from16 v0, v17

    invoke-virtual {v3, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "% volume="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentLoss:Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    move-result-object v17

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mVolume:D
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->access$7300(Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v17

    move-wide/from16 v0, v17

    invoke-virtual {v3, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    #calls: Lcom/android/internal/util/StateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v15 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$7400(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1009
    .end local v3           #df:Ljava/text/DecimalFormat;
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v15}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2300(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v15

    invoke-virtual {v15, v9, v7, v8, v5}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->updateLoss(IDI)V

    .line 1012
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentLoss:Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;
    invoke-static {v15}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    move-result-object v15

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mValue:D
    invoke-static {v15}, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->access$7200(Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v15

    const-wide/high16 v17, 0x3fe0

    cmpl-double v15, v15, v17

    if-lez v15, :cond_6

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentLoss:Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;
    invoke-static {v15}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    move-result-object v15

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mVolume:D
    invoke-static {v15}, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->access$7300(Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v15

    const-wide/high16 v17, 0x4000

    cmpl-double v15, v15, v17

    if-lez v15, :cond_6

    .line 1014
    move-object/from16 v0, p0

    iget v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->mSampleCount:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->mSampleCount:I

    const/16 v16, 0x3

    move/from16 v0, v16

    if-lt v15, v0, :cond_5

    .line 1015
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v15}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2300(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v15

    invoke-virtual {v15, v12}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->poorLinkDetected(I)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 1016
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/16 v16, 0x0

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(Z)V
    invoke-static/range {v15 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1400(Landroid/net/wifi/WifiWatchdogStateMachine;Z)V

    .line 1017
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v15}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3804(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    .line 1025
    .end local v2           #dbad:I
    .end local v4           #dgood:I
    .end local v5           #dtotal:I
    .end local v7           #loss:D
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v15}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2300(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v15

    #setter for: Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimeSample:J
    invoke-static {v15, v10, v11}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$7102(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J

    .line 1026
    move-object/from16 v0, p0

    iput v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->mLastTxBad:I

    .line 1027
    move-object/from16 v0, p0

    iput v14, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->mLastTxGood:I

    .line 1028
    move-object/from16 v0, p0

    iput v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->mLastRssi:I

    goto/16 :goto_1

    .line 1020
    .restart local v2       #dbad:I
    .restart local v4       #dgood:I
    .restart local v5       #dtotal:I
    .restart local v7       #loss:D
    :cond_6
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->mSampleCount:I

    goto :goto_2

    .line 1033
    .end local v2           #dbad:I
    .end local v4           #dgood:I
    .end local v5           #dtotal:I
    .end local v6           #info:Landroid/net/wifi/RssiPacketCountInfo;
    .end local v7           #loss:D
    .end local v9           #mrssi:I
    .end local v10           #now:J
    .end local v12           #rssi:I
    .end local v13           #txbad:I
    .end local v14           #txgood:I
    :sswitch_4
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v16, "RSSI_FETCH_FAILED"

    #calls: Lcom/android/internal/util/StateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v15 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$7500(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 953
    :sswitch_data_0
    .sparse-switch
        0x21003 -> :sswitch_0
        0x21007 -> :sswitch_1
        0x2100b -> :sswitch_2
        0x25015 -> :sswitch_3
        0x25016 -> :sswitch_4
    .end sparse-switch
.end method
