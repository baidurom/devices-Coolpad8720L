.class Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenCheckState;
.super Lcom/android/internal/util/State;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WalledGardenCheckState"
.end annotation


# instance fields
.field private mWalledGardenToken:I

.field final synthetic this$0:Landroid/net/wifi/WifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    .locals 1
    .parameter

    .prologue
    .line 826
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenCheckState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 827
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenCheckState;->mWalledGardenToken:I

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    .line 830
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenCheckState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/internal/util/StateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5400(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 831
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenCheckState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenCheckState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v2, 0x2100d

    iget v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenCheckState;->mWalledGardenToken:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenCheckState;->mWalledGardenToken:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 833
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 9
    .parameter "msg"

    .prologue
    .line 837
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 889
    const/4 v6, 0x0

    .line 891
    :goto_0
    return v6

    .line 839
    :pswitch_0
    iget v6, p1, Landroid/os/Message;->arg1:I

    iget v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenCheckState;->mWalledGardenToken:I

    if-ne v6, v7, :cond_1

    .line 840
    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenCheckState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    #setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mLastWalledGardenCheckTime:J
    invoke-static {v6, v7, v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3602(Landroid/net/wifi/WifiWatchdogStateMachine;J)J

    .line 841
    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenCheckState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->checkApType()I
    invoke-static {v6}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5500(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v5

    .line 842
    .local v5, ret:I
    packed-switch v5, :pswitch_data_1

    .line 885
    :cond_0
    :goto_1
    :pswitch_1
    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenCheckState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenCheckState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineWatchState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;
    invoke-static {v7}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3000(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    move-result-object v7

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v6, v7}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6000(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    .line 891
    .end local v5           #ret:I
    :cond_1
    const/4 v6, 0x1

    goto :goto_0

    .line 844
    .restart local v5       #ret:I
    :pswitch_2
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenCheckState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v7, "Walled garden detected"

    #calls: Lcom/android/internal/util/StateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v6, v7}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5600(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 848
    :cond_2
    const-wide/16 v3, 0x0

    .line 849
    .local v3, rand:D
    :goto_2
    const-wide v6, 0x3fb999999999999aL

    cmpg-double v6, v3, v6

    if-gez v6, :cond_3

    .line 850
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    goto :goto_2

    .line 853
    :cond_3
    const-wide/high16 v6, 0x4170

    mul-double/2addr v6, v3

    double-to-int v0, v6

    .line 854
    .local v0, dRandInfo:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "http://www.baidu.com?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 857
    .local v2, mportalGardenUrl:Ljava/lang/String;
    const-string v6, "2"

    const-string/jumbo v7, "persist.yulong.defaultmode"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 858
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenCheckState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string/jumbo v7, "the phone is running is CMCC lab-test mode,so don\'t pop the authentication page"

    #calls: Lcom/android/internal/util/StateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v6, v7}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5700(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto :goto_1

    .line 860
    :cond_4
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 861
    .local v1, intent:Landroid/content/Intent;
    const/high16 v6, 0x1040

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 862
    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenCheckState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v6}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5800(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 869
    .end local v0           #dRandInfo:I
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #mportalGardenUrl:Ljava/lang/String;
    .end local v3           #rand:D
    :pswitch_3
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenCheckState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v7, "PPPoE AP detected"

    #calls: Lcom/android/internal/util/StateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v6, v7}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5900(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 837
    nop

    :pswitch_data_0
    .packed-switch 0x2100d
        :pswitch_0
    .end packed-switch

    .line 842
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method
