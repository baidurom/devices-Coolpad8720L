.class Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;
.super Landroid/os/Handler;
.source "PhoneModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/internal/telephony/PhoneModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BaseHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;


# direct methods
.method public constructor <init>(Lcom/yulong/android/internal/telephony/PhoneModeService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 407
    iput-object p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    .line 408
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 409
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    .line 415
    const/4 v1, 0x0

    .line 416
    .local v1, cdmaRadioPower:Z
    const/4 v4, 0x0

    .line 417
    .local v4, gsmRadioPower:Z
    const/4 v2, 0x0

    .line 418
    .local v2, cdmaSelectModemValue:I
    const/4 v5, 0x0

    .line 419
    .local v5, gsmSelectModemValue:I
    const/4 v6, -0x1

    .line 420
    .local v6, iResult:I
    const/4 v8, -0x1

    .line 421
    .local v8, slotId:I
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CP_COMM: sam enter PhoneModeService handleMessage: what = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/os/Message;->what:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", regNo = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mRegisterClientNo:I
    invoke-static {v11}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 424
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/PhoneModeService;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$400(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_0

    .line 425
    iget v9, p1, Landroid/os/Message;->what:I

    const/4 v10, 0x6

    if-eq v9, v10, :cond_0

    iget v9, p1, Landroid/os/Message;->what:I

    const/4 v10, 0x7

    if-eq v9, v10, :cond_0

    iget v9, p1, Landroid/os/Message;->what:I

    const/16 v10, 0x15

    if-eq v9, v10, :cond_0

    iget v9, p1, Landroid/os/Message;->what:I

    const/16 v10, 0x16

    if-eq v9, v10, :cond_0

    iget v9, p1, Landroid/os/Message;->what:I

    const/16 v10, 0x1e

    if-eq v9, v10, :cond_0

    iget v9, p1, Landroid/os/Message;->what:I

    const/16 v10, 0x1f

    if-eq v9, v10, :cond_0

    iget v9, p1, Landroid/os/Message;->what:I

    const/4 v10, 0x5

    if-eq v9, v10, :cond_0

    iget v9, p1, Landroid/os/Message;->what:I

    const/4 v10, 0x4

    if-eq v9, v10, :cond_0

    iget v9, p1, Landroid/os/Message;->what:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_0

    iget v9, p1, Landroid/os/Message;->what:I

    const/16 v10, 0x21

    if-eq v9, v10, :cond_0

    iget v9, p1, Landroid/os/Message;->what:I

    const/16 v10, 0x20

    if-ne v9, v10, :cond_2

    .line 450
    :cond_0
    :goto_0
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    .line 1197
    :cond_1
    :goto_1
    :pswitch_0
    return-void

    .line 439
    :cond_2
    iget v9, p1, Landroid/os/Message;->what:I

    const/16 v10, 0xa

    if-lt v9, v10, :cond_3

    iget v9, p1, Landroid/os/Message;->what:I

    const/16 v10, 0xf

    if-le v9, v10, :cond_0

    .line 442
    :cond_3
    iget v9, p1, Landroid/os/Message;->what:I

    const/16 v10, 0x34

    if-eq v9, v10, :cond_0

    iget v9, p1, Landroid/os/Message;->what:I

    const/16 v10, 0x35

    if-eq v9, v10, :cond_0

    .line 446
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM: don\'t deal with this message."

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    goto :goto_0

    .line 453
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 454
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM:  EVENT_OPEN_CDMA_MODEM_POWER received"

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 457
    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v9, :cond_4

    .line 458
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM: Open cdma modem failed."

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$500(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 460
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/PhoneModeService;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_1

    .line 466
    :cond_4
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v10, 0x1

    #setter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:Z
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$602(Lcom/yulong/android/internal/telephony/PhoneModeService;Z)Z

    .line 467
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v10, 0x1

    #setter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemStatus:I
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$702(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I

    .line 468
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$800(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I

    move-result-object v9

    const/4 v10, 0x3

    const/4 v11, 0x1

    aput v11, v9, v10

    goto :goto_1

    .line 479
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 480
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM:  EVENT_CLOSE_CDMA_MODEM_POWER received"

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 483
    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v9, :cond_1

    .line 484
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM: Close cdma modem failed."

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$500(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 485
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "RILError"

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->updateInfoAndBroadcastIntent(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$900(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    goto :goto_1

    .line 500
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 501
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM:\tEVENT_OPEN_GSM_MODEM_POWER received"

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 503
    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v9, :cond_5

    .line 504
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM: Open gsm modem failed."

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$500(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 506
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/PhoneModeService;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto/16 :goto_1

    .line 512
    :cond_5
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v10, 0x1

    #setter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemStatus:I
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1002(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I

    .line 513
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v10, 0x1

    #setter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:Z
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$602(Lcom/yulong/android/internal/telephony/PhoneModeService;Z)Z

    .line 514
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$800(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I

    move-result-object v9

    const/4 v10, 0x4

    const/4 v11, 0x1

    aput v11, v9, v10

    goto/16 :goto_1

    .line 525
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 526
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM:\tEVENT_CLOSE_GSM_MODEM_POWER received"

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 527
    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v9, :cond_1

    .line 528
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM: Close gsm modem failed."

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$500(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 529
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "RILError"

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->updateInfoAndBroadcastIntent(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$900(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 530
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/PhoneModeService;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto/16 :goto_1

    .line 548
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_5
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM:\tEVENT_FINISH_SWITCH_SLOT_MODE received"

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 549
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/yulong/android/internal/telephony/PhoneModeService;->mNeedSwitchBindMode:Z

    .line 550
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->selectOpenModemCdmaOrGsm()V
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1100(Lcom/yulong/android/internal/telephony/PhoneModeService;)V

    goto/16 :goto_1

    .line 555
    :pswitch_6
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM:\tEVENT_CDMA_RADIO_ON received"

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 557
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/PhoneModeService;)Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$400(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_1

    goto/16 :goto_1

    .line 563
    :pswitch_7
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM:\tEVENT_CDMA_RADIO_OFF_OR_NOT_AVAILABLE received"

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 564
    if-nez v1, :cond_6

    .line 565
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/PhoneModeService;)Z

    move-result v9

    if-nez v9, :cond_6

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$400(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_1

    .line 570
    :cond_6
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$800(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I

    move-result-object v9

    const/16 v10, 0x8

    aget v9, v9, v10

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    goto/16 :goto_1

    .line 576
    :pswitch_8
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM:\tEVENT_GSM_RADIO_ON received"

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 577
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/PhoneModeService;)Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$400(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_1

    goto/16 :goto_1

    .line 582
    :pswitch_9
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM:\tEVENT_GSM_RADIO_OFF_OR_NOT_AVAILABLE received"

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 583
    if-nez v4, :cond_7

    .line 584
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/PhoneModeService;)Z

    move-result v9

    if-nez v9, :cond_7

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$400(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_1

    .line 589
    :cond_7
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$800(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I

    move-result-object v9

    const/16 v10, 0x9

    aget v9, v9, v10

    const/4 v10, 0x1

    if-eq v9, v10, :cond_1

    .line 592
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1200(Lcom/yulong/android/internal/telephony/PhoneModeService;)Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    move-result-object v9

    iget-boolean v9, v9, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    if-eq v9, v4, :cond_1

    goto/16 :goto_1

    .line 599
    :pswitch_a
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM:\tEVENT_FINISH_SELECT_NET received"

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 601
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "Success"

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->updateInfoAndBroadcastIntent(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$900(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 606
    :pswitch_b
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM:\tEVENT_GET_PINPUK_LEFT_NUM received"

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 607
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$800(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I

    move-result-object v9

    const/4 v10, 0x7

    const/4 v11, 0x1

    aput v11, v9, v10

    .line 608
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 610
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v9, :cond_8

    .line 611
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM: EVENT_GET_PIN_LEFT_NUM failed."

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$500(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 612
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v10, -0x1

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->finishGetPinOrPukLeftNum(I)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1300(Lcom/yulong/android/internal/telephony/PhoneModeService;I)V

    goto/16 :goto_1

    .line 614
    :cond_8
    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, [I

    move-object v7, v9

    check-cast v7, [I

    .line 615
    .local v7, ints:[I
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v10, 0x0

    aget v10, v7, v10

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->finishGetPinOrPukLeftNum(I)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1300(Lcom/yulong/android/internal/telephony/PhoneModeService;I)V

    goto/16 :goto_1

    .line 621
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v7           #ints:[I
    :pswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 622
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM:\tEVENT_GET_CARD_TYPE_BY_AT received"

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 624
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    iget-object v10, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    iget v10, v10, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperatePinPukByPhoneId:I

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->convertPhoneIdToSlotId(I)I
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1400(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I

    move-result v8

    .line 626
    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v9, :cond_9

    .line 627
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM: EVENT_GET_GARD_TYPE failed."

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$500(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 628
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "error"

    #setter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardTypeResponse:Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1502(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)Ljava/lang/String;

    .line 629
    const/4 v6, -0x1

    .line 643
    :goto_2
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    iget-object v10, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I
    invoke-static {v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$400(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    move-result v10

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->notifyPinPukCheckResult(III)V
    invoke-static {v9, v10, v6, v8}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/PhoneModeService;III)V

    goto/16 :goto_1

    .line 631
    :cond_9
    iget-object v10, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    #setter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardTypeResponse:Ljava/lang/String;
    invoke-static {v10, v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1502(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)Ljava/lang/String;

    .line 632
    const/4 v6, 0x0

    .line 634
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardTypeResponse:Ljava/lang/String;
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1500(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_a

    .line 635
    invoke-static {}, Lcom/yulong/android/internal/telephony/CardInfoParse;->getDefault()Lcom/yulong/android/internal/telephony/CardInfoParse;

    move-result-object v9

    iget-object v10, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardTypeResponse:Ljava/lang/String;
    invoke-static {v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1500(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1600()[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v11

    aget-object v11, v11, v8

    invoke-virtual {v9, v10, v11}, Lcom/yulong/android/internal/telephony/CardInfoParse;->parseCdmaCommand(Ljava/lang/String;Lcom/yulong/android/internal/telephony/SlotCardInfo;)Z

    .line 637
    const/4 v6, 0x1

    .line 640
    :cond_a
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CP_COMM: GET_CARD_TYPE: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardTypeResponse:Ljava/lang/String;
    invoke-static {v11}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1500(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    goto :goto_2

    .line 648
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 649
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM:\tEVENT_UNLOCK_PIN_BY_CDMA received"

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 650
    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v9, :cond_d

    .line 651
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM: UNLOCK_PIN_BY_CDMA exception."

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$500(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 652
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v10, 0x1

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->convertPhoneIdToSlotId(I)I
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1400(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I

    move-result v8

    .line 653
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->isSecdmodem(I)Z

    move-result v9

    if-nez v9, :cond_b

    .line 655
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    iget-object v10, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I
    invoke-static {v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1800(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    move-result v10

    const/16 v11, 0x24

    const/4 v12, 0x0

    invoke-virtual {v9, v8, v10, v11, v12}, Lcom/yulong/android/internal/telephony/PhoneModeService;->DeactivateCardAfterUnlockPin(IIIZ)V

    .line 658
    :cond_b
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1900()[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v8

    if-eqz v9, :cond_c

    .line 659
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1600()[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v9

    aget-object v9, v9, v8

    const/4 v10, 0x2

    iput v10, v9, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    .line 668
    :cond_c
    :goto_3
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$800(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I

    move-result-object v9

    const/4 v10, 0x5

    aget v9, v9, v10

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$800(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I

    move-result-object v9

    const/4 v10, 0x6

    aget v9, v9, v10

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    goto/16 :goto_1

    .line 663
    :cond_d
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM: UNLOCK_PIN_BY_CDMA true."

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 664
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$800(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I

    move-result-object v9

    const/4 v10, 0x5

    const/4 v11, 0x1

    aput v11, v9, v10

    goto :goto_3

    .line 676
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 677
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM:\tEVENT_UNLOCK_PIN_BY_GSM received"

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 679
    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v9, :cond_10

    .line 680
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM: UNLOCK_PIN_BY_GSM failed."

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$500(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 681
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v10, 0x2

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->convertPhoneIdToSlotId(I)I
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1400(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I

    move-result v8

    .line 682
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->isSecdmodem(I)Z

    move-result v9

    if-nez v9, :cond_e

    .line 684
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    iget-object v10, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I
    invoke-static {v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1800(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    move-result v10

    const/16 v11, 0x25

    const/4 v12, 0x0

    invoke-virtual {v9, v8, v10, v11, v12}, Lcom/yulong/android/internal/telephony/PhoneModeService;->DeactivateCardAfterUnlockPin(IIIZ)V

    .line 687
    :cond_e
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1900()[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v8

    if-eqz v9, :cond_f

    .line 688
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1600()[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v9

    aget-object v9, v9, v8

    const/4 v10, 0x2

    iput v10, v9, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    .line 697
    :cond_f
    :goto_4
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$800(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I

    move-result-object v9

    const/4 v10, 0x5

    aget v9, v9, v10

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$800(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I

    move-result-object v9

    const/4 v10, 0x6

    aget v9, v9, v10

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    .line 699
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->isSecdmodem(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 700
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->operateRadioCdmaAndGsm()V
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2000(Lcom/yulong/android/internal/telephony/PhoneModeService;)V

    goto/16 :goto_1

    .line 692
    :cond_10
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM: EVENT_UNLOCK_PIN_BY_GSM true."

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 693
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$800(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I

    move-result-object v9

    const/4 v10, 0x6

    const/4 v11, 0x1

    aput v11, v9, v10

    goto :goto_4

    .line 741
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_f
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/PhoneModeService;)Z

    move-result v9

    if-nez v9, :cond_11

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$400(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_11

    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2100()[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBase;->getDesiredPowerState()Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2100()[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iget-object v9, v9, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v9}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v9, v10, :cond_11

    .line 745
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v10, 0x0

    #setter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemResetTimes:I
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2202(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I

    .line 748
    :cond_11
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/PhoneModeService;)Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mRegisterClientNo:I
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_1

    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2100()[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iget-object v9, v9, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v9}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v9, v10, :cond_1

    .line 751
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v10, 0x1

    #setter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mRegisterClientNo:I
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$202(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I

    .line 752
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v10, -0x1

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->broadcastSyncMessageToRenew(I)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2300(Lcom/yulong/android/internal/telephony/PhoneModeService;I)V

    goto/16 :goto_1

    .line 758
    :pswitch_10
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v10, 0x2

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->convertPhoneIdToSlotId(I)I
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1400(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I

    move-result v8

    .line 759
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM:\tEVENT_GSM_RADIO_STATE_CHANGED received"

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 789
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/PhoneModeService;)Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$400(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_1

    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2100()[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v9, v9, v10

    check-cast v9, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/GSMPhone;->getDesiredPowerState()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2100()[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v9, v9, v10

    iget-object v9, v9, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v9}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v9, v10, :cond_1

    .line 793
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v10, 0x0

    #setter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemResetTimes:I
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2402(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I

    goto/16 :goto_1

    .line 799
    :pswitch_11
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 800
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    iget-object v10, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    iget v10, v10, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperatePinPukByPhoneId:I

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->convertPhoneIdToSlotId(I)I
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1400(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I

    move-result v8

    .line 801
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM:\tEVENT_GET_GSM_IMSI_BY_AT received"

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 803
    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v9, :cond_12

    .line 804
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM: EVENT_GET_IMSI_BY_AT failed."

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$500(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 805
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "error"

    #setter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmImsiResponse:Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2502(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)Ljava/lang/String;

    .line 806
    const/4 v6, -0x1

    .line 820
    :goto_5
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    iget-object v10, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I
    invoke-static {v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$400(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    move-result v10

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->notifyPinPukCheckResult(III)V
    invoke-static {v9, v10, v6, v8}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/PhoneModeService;III)V

    goto/16 :goto_1

    .line 808
    :cond_12
    iget-object v10, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    #setter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmImsiResponse:Ljava/lang/String;
    invoke-static {v10, v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2502(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)Ljava/lang/String;

    .line 809
    const/4 v6, 0x0

    .line 811
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmImsiResponse:Ljava/lang/String;
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2500(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_13

    .line 812
    invoke-static {}, Lcom/yulong/android/internal/telephony/CardInfoParse;->getDefault()Lcom/yulong/android/internal/telephony/CardInfoParse;

    move-result-object v9

    iget-object v10, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmImsiResponse:Ljava/lang/String;
    invoke-static {v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2500(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1600()[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v11

    aget-object v11, v11, v8

    invoke-virtual {v9, v10, v11}, Lcom/yulong/android/internal/telephony/CardInfoParse;->parseGsmCommand(Ljava/lang/String;Lcom/yulong/android/internal/telephony/SlotCardInfo;)Z

    .line 814
    const/4 v6, 0x1

    .line 817
    :cond_13
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CP_COMM: EVENT_GET_IMSI_BY_AT: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmImsiResponse:Ljava/lang/String;
    invoke-static {v11}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2500(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    goto :goto_5

    .line 825
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_12
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM:\tEVENT_SELECT_NET_TIME_OUT received"

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 826
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/PhoneModeService;)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 827
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "TimeOut"

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->updateInfoAndBroadcastIntent(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$900(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 828
    :cond_14
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$400(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_1

    .line 829
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v10, -0x1

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->finishGetPinOrPukLeftNum(I)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1300(Lcom/yulong/android/internal/telephony/PhoneModeService;I)V

    goto/16 :goto_1

    .line 834
    :pswitch_13
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 835
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CP_COMM:\tEVENT_GET_CDMA_MODEM_STATUS received mPhones[0].mCi.getRadioState() = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2100()[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v11, v11, v12

    iget-object v11, v11, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v11}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 839
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2100()[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iget-object v9, v9, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v9}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v9

    if-eqz v9, :cond_15

    .line 840
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v10, 0x1

    #setter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemStatus:I
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$702(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I

    goto/16 :goto_1

    .line 842
    :cond_15
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v10, 0x0

    #setter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemStatus:I
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$702(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I

    goto/16 :goto_1

    .line 847
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_14
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 850
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CP_COMM:\tEVENT_GET_GSM_MODEM_STATUS received mPhones[1].mCi.getRadioState() = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2100()[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v11

    const/4 v12, 0x1

    aget-object v11, v11, v12

    iget-object v11, v11, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v11}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 853
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2100()[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v9, v9, v10

    iget-object v9, v9, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v9}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v9

    if-eqz v9, :cond_16

    .line 854
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v10, 0x1

    #setter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemStatus:I
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1002(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I

    goto/16 :goto_1

    .line 856
    :cond_16
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v10, 0x0

    #setter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemStatus:I
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1002(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I

    goto/16 :goto_1

    .line 860
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_15
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM:\tEVENT_CDMA_SUPPLYPIN_MODEMRESET received"

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 861
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 863
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v9, :cond_1

    .line 864
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM: EVENT_CDMA_SUPPLYPIN_MODEMRESET exception."

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$500(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 865
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v10, 0x1

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->convertPhoneIdToSlotId(I)I
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1400(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I

    move-result v8

    .line 867
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1900()[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v8

    if-eqz v9, :cond_1

    .line 868
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1600()[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v9

    aget-object v9, v9, v8

    const/4 v10, 0x2

    iput v10, v9, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    goto/16 :goto_1

    .line 873
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_16
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 874
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM:\tEVENT_GSM_SUPPLYPIN_MODEMRESET received"

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 875
    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v9, :cond_1

    .line 876
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM: EVENT_GSM_SUPPLYPIN_MODEMRESET exception."

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$500(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 877
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v10, 0x2

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->convertPhoneIdToSlotId(I)I
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1400(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I

    move-result v8

    .line 879
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1900()[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v8

    if-eqz v9, :cond_1

    .line 880
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1600()[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v9

    aget-object v9, v9, v8

    const/4 v10, 0x2

    iput v10, v9, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    goto/16 :goto_1

    .line 885
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_17
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM:\tEVENT_CHECK_CDMA_RIL_POWERON_RESULT received"

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 886
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemResetTimes:I
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2200(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    move-result v9

    const/4 v10, 0x5

    if-lt v9, v10, :cond_17

    .line 888
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM: EVENT_CHECK_CDMA_RIL_POWERON_RESULT reset modem."

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 894
    :cond_17
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/PhoneModeService;)Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$400(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_1

    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2100()[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBase;->getDesiredPowerState()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2100()[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iget-object v9, v9, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v9}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v9, v10, :cond_1

    .line 898
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2208(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    .line 899
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CP_COMM: EVENT_CHECK_CDMA_RIL_POWERON_RESULT mCdmaModemResetTimes:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemResetTimes:I
    invoke-static {v11}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2200(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$500(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 901
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2100()[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iget-object v9, v9, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 902
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2600(Lcom/yulong/android/internal/telephony/PhoneModeService;)Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    move-result-object v9

    iget-object v10, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;
    invoke-static {v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2600(Lcom/yulong/android/internal/telephony/PhoneModeService;)Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    move-result-object v10

    const/16 v11, 0x34

    invoke-virtual {v10, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    const-wide/16 v11, 0x7530

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1

    .line 911
    :pswitch_18
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM:\tEVENT_CHECK_GSM_RIL_POWERON_RESULT received"

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 912
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemResetTimes:I
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2400(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    move-result v9

    const/4 v10, 0x5

    if-lt v9, v10, :cond_18

    .line 914
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM: EVENT_CHECK_GSM_RIL_POWERON_RESULT reset modem."

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 918
    :cond_18
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/PhoneModeService;)Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$400(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_1

    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2100()[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v9, v9, v10

    check-cast v9, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/GSMPhone;->getDesiredPowerState()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2100()[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v9, v9, v10

    iget-object v9, v9, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v9}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v9, v10, :cond_1

    .line 922
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2408(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    .line 923
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CP_COMM: EVENT_CHECK_GSM_RIL_POWERON_RESULT mGsmModemResetTimes:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemResetTimes:I
    invoke-static {v11}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2400(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$500(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 925
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2100()[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v9, v9, v10

    iget-object v9, v9, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 926
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2600(Lcom/yulong/android/internal/telephony/PhoneModeService;)Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    move-result-object v9

    iget-object v10, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;
    invoke-static {v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2600(Lcom/yulong/android/internal/telephony/PhoneModeService;)Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    move-result-object v10

    const/16 v11, 0x35

    invoke-virtual {v10, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    const-wide/16 v11, 0x7530

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1

    .line 933
    :pswitch_19
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 943
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$800(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I

    move-result-object v9

    const/16 v10, 0x9

    const/4 v11, 0x1

    aput v11, v9, v10

    .line 944
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateGsm:I
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2700(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_19

    .line 945
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v10, 0x1

    #setter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->ActiveOrNoGsm:I
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2802(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I

    .line 947
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v10, 0x2

    const/4 v11, 0x1

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->sendBroadcastandActiveOrDeactive(II)V
    invoke-static {v9, v10, v11}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2900(Lcom/yulong/android/internal/telephony/PhoneModeService;II)V

    .line 948
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM: phonemodeservice EVENT_OPEN_GSM_SELECT_DONE active notify all ok "

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 957
    :goto_6
    const-wide/16 v9, 0x1388

    :try_start_0
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 962
    :goto_7
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->operateRadioCdmaAndGsm()V
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2000(Lcom/yulong/android/internal/telephony/PhoneModeService;)V

    goto/16 :goto_1

    .line 950
    :cond_19
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v10, 0x0

    #setter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->ActiveOrNoGsm:I
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2802(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I

    .line 952
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v10, 0x2

    const/4 v11, 0x0

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->sendBroadcastandActiveOrDeactive(II)V
    invoke-static {v9, v10, v11}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2900(Lcom/yulong/android/internal/telephony/PhoneModeService;II)V

    .line 953
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM: phonemodeservice EVENT_OPEN_GSM_SELECT_DONE dactive notify all ok "

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    goto :goto_6

    .line 958
    :catch_0
    move-exception v3

    .line 960
    .local v3, e:Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7

    .line 967
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v3           #e:Ljava/lang/InterruptedException;
    :pswitch_1a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 978
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$800(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I

    move-result-object v9

    const/16 v10, 0x8

    const/4 v11, 0x1

    aput v11, v9, v10

    .line 979
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateCdma:I
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$3000(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1a

    .line 980
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v10, 0x1

    #setter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->ActiveOrNoCdma:I
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$3102(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I

    .line 981
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v10, 0x1

    const/4 v11, 0x1

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->sendBroadcastandActiveOrDeactive(II)V
    invoke-static {v9, v10, v11}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2900(Lcom/yulong/android/internal/telephony/PhoneModeService;II)V

    .line 983
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM: phonemodeservice EVENT_OPEN_CDMA_SELECT_DONE active notify all ok "

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 992
    :goto_8
    const-wide/16 v9, 0x1388

    :try_start_1
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 997
    :goto_9
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->operateRadioCdmaAndGsm()V
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2000(Lcom/yulong/android/internal/telephony/PhoneModeService;)V

    goto/16 :goto_1

    .line 985
    :cond_1a
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v10, 0x0

    #setter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->ActiveOrNoCdma:I
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$3102(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I

    .line 986
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v10, 0x1

    const/4 v11, 0x0

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->sendBroadcastandActiveOrDeactive(II)V
    invoke-static {v9, v10, v11}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2900(Lcom/yulong/android/internal/telephony/PhoneModeService;II)V

    .line 988
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM: phonemodeservice EVENT_OPEN_CDMA_SELECT_DONE dactive notify all ok "

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    goto :goto_8

    .line 993
    :catch_1
    move-exception v3

    .line 995
    .restart local v3       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9

    .line 1002
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v3           #e:Ljava/lang/InterruptedException;
    :pswitch_1b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1003
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v9, :cond_1b

    .line 1004
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CP_COMM: Error phonemodeservice EVENT_CDMA_SUBSCRIPTION_DEACTIVE fail"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 1010
    :goto_a
    const-wide/16 v9, 0x1388

    :try_start_2
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1015
    :goto_b
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v10, 0x0

    #setter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->ActiveOrNoCdma:I
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$3102(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I

    .line 1016
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->selectOpenModemCdmaOrGsm()V
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1100(Lcom/yulong/android/internal/telephony/PhoneModeService;)V

    goto/16 :goto_1

    .line 1007
    :cond_1b
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM:  phonemodeservice EVENT_CDMA_SUBSCRIPTION_DEACTIVE ok"

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->loge(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$3200(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    goto :goto_a

    .line 1011
    :catch_2
    move-exception v3

    .line 1013
    .restart local v3       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_b

    .line 1020
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v3           #e:Ljava/lang/InterruptedException;
    :pswitch_1c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1021
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v9, :cond_1c

    .line 1022
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CP_COMM: Error phonemodeservice EVENT_GSM_SUBSCRIPTION_DEACTIVE fail"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 1028
    :goto_c
    const-wide/16 v9, 0x1388

    :try_start_3
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1033
    :goto_d
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v10, 0x0

    #setter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->ActiveOrNoGsm:I
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2802(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I

    .line 1034
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->selectOpenModemCdmaOrGsm()V
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1100(Lcom/yulong/android/internal/telephony/PhoneModeService;)V

    goto/16 :goto_1

    .line 1025
    :cond_1c
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM:  phonemodeservice EVENT_GSM_SUBSCRIPTION_DEACTIVE ok"

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->loge(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$3200(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    goto :goto_c

    .line 1029
    :catch_3
    move-exception v3

    .line 1031
    .restart local v3       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_d

    .line 1038
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v3           #e:Ljava/lang/InterruptedException;
    :pswitch_1d
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM: EVENT_SET_SUBSCRIPTION_MODE_DONE"

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 1039
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock:Ljava/lang/Object;
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$3300(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 1040
    :try_start_4
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock:Ljava/lang/Object;
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$3300(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V

    .line 1041
    monitor-exit v10

    goto/16 :goto_1

    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v9

    .line 1047
    :pswitch_1e
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock1:Ljava/lang/Object;
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$3400(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 1048
    :try_start_5
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock1:Ljava/lang/Object;
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$3400(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V

    .line 1049
    monitor-exit v10

    goto/16 :goto_1

    :catchall_1
    move-exception v9

    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v9

    .line 1052
    :pswitch_1f
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock1:Ljava/lang/Object;
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$3400(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 1053
    :try_start_6
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock1:Ljava/lang/Object;
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$3400(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V

    .line 1054
    monitor-exit v10

    goto/16 :goto_1

    :catchall_2
    move-exception v9

    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v9

    .line 1057
    :pswitch_20
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM: EVENT_CDMA_SUBSCRIPTION_READY"

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 1058
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mNeedUnlockMode:I
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$3500(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    .line 1059
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM: EVENT_CDMA_SUBSCRIPTION_READY mLock2.notifyAll"

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 1060
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock2:Ljava/lang/Object;
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$3600(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 1061
    :try_start_7
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock2:Ljava/lang/Object;
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$3600(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V

    .line 1062
    monitor-exit v10

    goto/16 :goto_1

    :catchall_3
    move-exception v9

    monitor-exit v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v9

    .line 1066
    :pswitch_21
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM: EVENT_GSM_SUBSCRIPTION_READY"

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 1067
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mNeedUnlockMode:I
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$3500(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    .line 1068
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM: EVENT_GSM_SUBSCRIPTION_READY mLock2.notifyAll"

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 1069
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock2:Ljava/lang/Object;
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$3600(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 1070
    :try_start_8
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock2:Ljava/lang/Object;
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$3600(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V

    .line 1071
    monitor-exit v10

    goto/16 :goto_1

    :catchall_4
    move-exception v9

    monitor-exit v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v9

    .line 1075
    :pswitch_22
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v10, 0x1

    #setter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemStatus:I
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$702(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I

    .line 1076
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->getPinPukNumByCdmaOrGsm1()V
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$3700(Lcom/yulong/android/internal/telephony/PhoneModeService;)V

    goto/16 :goto_1

    .line 1079
    :pswitch_23
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v10, 0x1

    #setter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemStatus:I
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1002(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I

    .line 1080
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->getPinPukNumByCdmaOrGsm1()V
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$3700(Lcom/yulong/android/internal/telephony/PhoneModeService;)V

    goto/16 :goto_1

    .line 1084
    :pswitch_24
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM: EVENT_C_LOST_CARD_REBOOT received"

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 1085
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->pm:Landroid/os/PowerManager;
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$3800(Lcom/yulong/android/internal/telephony/PhoneModeService;)Landroid/os/PowerManager;

    move-result-object v9

    const-string v10, "lowmem"

    invoke-virtual {v9, v10}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1185
    :pswitch_25
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    iget-object v10, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I
    invoke-static {v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$3900(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I

    move-result-object v10

    const/4 v11, 0x0

    aget v10, v10, v11

    iget-object v11, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I
    invoke-static {v11}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$3900(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I

    move-result-object v11

    const/4 v12, 0x1

    aget v11, v11, v12

    iget-object v12, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I
    invoke-static {v12}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$3900(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I

    move-result-object v12

    const/4 v13, 0x2

    aget v12, v12, v13

    invoke-virtual {v9, v10, v11, v12}, Lcom/yulong/android/internal/telephony/PhoneModeService;->selectModemAndPreferredSlot(III)I

    goto/16 :goto_1

    .line 1189
    :pswitch_26
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock3:Ljava/lang/Object;
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$4000(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 1190
    :try_start_9
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock3:Ljava/lang/Object;
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$4000(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V

    .line 1191
    monitor-exit v10

    goto/16 :goto_1

    :catchall_5
    move-exception v9

    monitor-exit v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    throw v9

    .line 450
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_3
        :pswitch_13
        :pswitch_14
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_9
        :pswitch_8
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_c
        :pswitch_b
        :pswitch_d
        :pswitch_e
        :pswitch_15
        :pswitch_16
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_19
        :pswitch_1a
        :pswitch_1c
        :pswitch_1b
        :pswitch_0
        :pswitch_0
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_12
        :pswitch_17
        :pswitch_18
        :pswitch_1d
        :pswitch_24
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_22
        :pswitch_23
        :pswitch_26
        :pswitch_25
    .end packed-switch
.end method
