.class Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;
.super Landroid/os/Handler;
.source "DualPhoneModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/internal/telephony/DualPhoneModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BaseHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;


# direct methods
.method public constructor <init>(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 513
    iput-object p1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    .line 514
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 515
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 29
    .parameter "msg"

    .prologue
    .line 520
    const/4 v8, 0x0

    .line 521
    .local v8, cdmaRadioPower:Z
    const/4 v12, 0x0

    .line 522
    .local v12, gsmRadioPower:Z
    const/4 v9, 0x0

    .line 523
    .local v9, cdmaSelectModemValue:I
    const/4 v13, 0x0

    .line 524
    .local v13, gsmSelectModemValue:I
    const/4 v14, -0x1

    .line 525
    .local v14, iResult:I
    const/16 v23, -0x1

    .line 527
    .local v23, slotId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "CP_COMM: enter DualPhoneModeService handleMessage: what = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", regNo = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v26, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRegisterClientNo:I
    invoke-static/range {v26 .. v26}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$900(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Z

    move-result v24

    if-nez v24, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGetPinPukNumType:I
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I

    move-result v24

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 531
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v24, v0

    const/16 v25, 0x6

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v24, v0

    const/16 v25, 0x7

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v24, v0

    const/16 v25, 0x15

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v24, v0

    const/16 v25, 0x16

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v24, v0

    const/16 v25, 0x3d

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v24, v0

    const/16 v25, 0x3e

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v24, v0

    const/16 v25, 0x3f

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v24, v0

    const/16 v25, 0x17

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v24, v0

    const/16 v25, 0x18

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v24, v0

    const/16 v25, 0x40

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v24, v0

    const/16 v25, 0x47

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_2

    .line 555
    :cond_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v24, v0

    packed-switch v24, :pswitch_data_0

    .line 1421
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 546
    :cond_2
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v24, v0

    const/16 v25, 0xa

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_3

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v24, v0

    const/16 v25, 0xf

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_0

    .line 550
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    const-string v25, "CP_COMM: don\'t deal with this message."

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    goto :goto_0

    .line 557
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->registerClientToNativeService()V
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1400(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V

    .line 560
    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$100()[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v24

    const/16 v25, 0x1

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v24

    invoke-static/range {v24 .. v24}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getCommType(I)I

    move-result v24

    const/16 v25, 0x4

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_4

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v24

    const/16 v25, 0xb

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_4

    .line 562
    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$100()[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v24

    const/16 v25, 0x1

    aget-object v24, v24, v25

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/android/internal/telephony/CommandsInterface;->notifySocketConnectedInternal()V

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    const-string v25, "CP_COMM: liuyong add 2012-06-28 w8260 reset do"

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    goto :goto_0

    .line 565
    :cond_4
    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$100()[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v24

    const/16 v25, 0x0

    aget-object v24, v24, v25

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/android/internal/telephony/CommandsInterface;->notifySocketConnectedInternal()V

    goto/16 :goto_0

    .line 570
    :pswitch_2
    const/16 v20, 0x0

    .line 571
    .local v20, net_type:I
    const/4 v15, -0x1

    .line 572
    .local v15, insert_state:I
    const/4 v7, 0x0

    .line 574
    .local v7, cardState:Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v20, v0

    .line 575
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg2:I

    .line 581
    const/16 v24, 0x1

    move/from16 v0, v20

    move/from16 v1, v24

    if-ne v0, v1, :cond_8

    .line 582
    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v15, v0, :cond_6

    .line 627
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->notifyCradStateChangedIntent()V

    goto/16 :goto_0

    .line 585
    :cond_6
    if-nez v15, :cond_5

    .line 586
    const-string v24, "cdma.ruim.insert.state"

    const-string v25, ""

    invoke-static/range {v24 .. v25}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 589
    const-string v24, "PRESENT"

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_7

    .line 595
    :cond_7
    const-string v24, "cdma.ruim.insert.state"

    const-string v25, "ABSENT"

    invoke-static/range {v24 .. v25}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    #setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRuimInserted:Z
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$502(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Z)Z

    goto :goto_1

    .line 602
    :cond_8
    const/16 v24, 0x2

    move/from16 v0, v20

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    .line 603
    const/16 v24, 0x1

    move/from16 v0, v24

    if-eq v15, v0, :cond_5

    .line 606
    if-nez v15, :cond_5

    .line 607
    const-string v24, "gsm.sim.insert.state"

    const-string v25, ""

    invoke-static/range {v24 .. v25}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 610
    const-string v24, "PRESENT"

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_9

    .line 616
    :cond_9
    const-string v24, "gsm.sim.insert.state"

    const-string v25, "ABSENT"

    invoke-static/range {v24 .. v25}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    #setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSimInserted:Z
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$402(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Z)Z

    goto :goto_1

    .line 631
    .end local v7           #cardState:Ljava/lang/String;
    .end local v15           #insert_state:I
    .end local v20           #net_type:I
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 633
    .local v5, ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v24, v0

    if-eqz v24, :cond_a

    .line 634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    const-string v25, "CP_COMM: Open cdma modem failed."

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logi(Ljava/lang/String;)V
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1500(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$900(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Z

    move-result v24

    if-eqz v24, :cond_1

    goto/16 :goto_0

    .line 645
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    #setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaModemStatus:I
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1602(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    .line 647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeedSwitchBindMode:Z

    move/from16 v24, v0

    if-nez v24, :cond_1

    .line 648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v24

    const/16 v25, 0x2

    aget v24, v24, v25

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v24

    const/16 v25, 0x7

    aget v24, v24, v25

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_b

    .line 653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v24

    const/16 v25, 0x3

    const/16 v26, 0x1

    aput v26, v24, v25

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v24

    const/16 v25, 0x4

    aget v24, v24, v25

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v24

    const/16 v25, 0x7

    aget v24, v24, v25

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1

    .line 658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->unLockPinAfterModemReset()V
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1800(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V

    goto/16 :goto_0

    .line 660
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v24

    const/16 v25, 0x7

    aget v24, v24, v25

    if-nez v24, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v24

    const/16 v25, 0x3

    aget v24, v24, v25

    if-nez v24, :cond_1

    .line 662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v24

    const/16 v25, 0x3

    const/16 v26, 0x1

    aput v26, v24, v25

    .line 665
    const-wide/16 v24, 0x2710

    :try_start_0
    invoke-static/range {v24 .. v25}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 670
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getPinPukNumByCdmaOrGsm()V
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1900(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V

    goto/16 :goto_0

    .line 676
    .end local v5           #ar:Landroid/os/AsyncResult;
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 678
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v24, v0

    if-eqz v24, :cond_d

    .line 679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    const-string v25, "CP_COMM: Close cdma modem failed."

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logi(Ljava/lang/String;)V
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1500(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v24

    const/16 v25, 0x8

    aget v24, v24, v25

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    move-result-object v24

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    move/from16 v24, v0

    if-nez v24, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeedSwitchBindMode:Z

    move/from16 v24, v0

    if-nez v24, :cond_c

    .line 683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v24

    const/16 v25, 0xa

    const/16 v26, 0x1

    aput v26, v24, v25

    .line 685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v24

    const/16 v25, 0xb

    aget v24, v24, v25

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_c

    .line 686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v25, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;
    invoke-static/range {v25 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    move-result-object v25

    const/16 v26, 0x32

    invoke-virtual/range {v25 .. v26}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 691
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$900(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Z

    move-result v24

    if-eqz v24, :cond_1

    goto/16 :goto_0

    .line 700
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    #setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaModemStatus:I
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1602(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    .line 701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    move-result-object v24

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeedSwitchBindMode:Z

    move/from16 v24, v0

    if-eqz v24, :cond_e

    .line 705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v24

    const/16 v25, 0x0

    const/16 v26, 0x1

    aput v26, v24, v25

    .line 707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v24

    const/16 v25, 0x1

    aget v24, v24, v25

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1

    .line 708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->switchSlotBindMode()Z
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Z

    goto/16 :goto_0

    .line 711
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v24

    const/16 v25, 0x8

    aget v24, v24, v25

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    move-result-object v24

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    move/from16 v24, v0

    if-nez v24, :cond_1

    .line 713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v24

    const/16 v25, 0xa

    const/16 v26, 0x1

    aput v26, v24, v25

    .line 715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v24

    const/16 v25, 0xb

    aget v24, v24, v25

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1

    .line 716
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v25, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;
    invoke-static/range {v25 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    move-result-object v25

    const/16 v26, 0x32

    invoke-virtual/range {v25 .. v26}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 725
    .end local v5           #ar:Landroid/os/AsyncResult;
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 727
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v24, v0

    if-eqz v24, :cond_f

    .line 728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    const-string v25, "CP_COMM: Open gsm modem failed."

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logi(Ljava/lang/String;)V
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1500(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 730
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$900(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Z

    move-result v24

    if-eqz v24, :cond_1

    goto/16 :goto_0

    .line 738
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    #setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmModemStatus:I
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2302(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    .line 740
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeedSwitchBindMode:Z

    move/from16 v24, v0

    if-nez v24, :cond_1

    .line 741
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v24

    const/16 v25, 0x2

    aget v24, v24, v25

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    move-result-object v24

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mGsmRadio:Z

    move/from16 v24, v0

    if-eqz v24, :cond_10

    .line 743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v24

    const/16 v25, 0x4

    const/16 v26, 0x1

    aput v26, v24, v25

    .line 745
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v24

    const/16 v25, 0x3

    aget v24, v24, v25

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v24

    const/16 v25, 0x7

    aget v24, v24, v25

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1

    .line 748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->unLockPinAfterModemReset()V
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1800(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V

    goto/16 :goto_0

    .line 750
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v24

    const/16 v25, 0x7

    aget v24, v24, v25

    if-nez v24, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v24

    const/16 v25, 0x4

    aget v24, v24, v25

    if-nez v24, :cond_1

    .line 752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v24

    const/16 v25, 0x4

    const/16 v26, 0x1

    aput v26, v24, v25

    .line 754
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->waitAfterOpenGsmModem()V
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2400(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V

    .line 756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getPinPukNumByCdmaOrGsm()V
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1900(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V

    goto/16 :goto_0

    .line 763
    .end local v5           #ar:Landroid/os/AsyncResult;
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 764
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v24, v0

    if-eqz v24, :cond_11

    .line 765
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    const-string v25, "CP_COMM: Close gsm modem failed."

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logi(Ljava/lang/String;)V
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1500(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$900(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Z

    move-result v24

    if-eqz v24, :cond_1

    goto/16 :goto_0

    .line 776
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    #setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmModemStatus:I
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2302(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    .line 777
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    move-result-object v24

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mGsmRadio:Z

    .line 779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeedSwitchBindMode:Z

    move/from16 v24, v0

    if-eqz v24, :cond_12

    .line 781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v24

    const/16 v25, 0x1

    const/16 v26, 0x1

    aput v26, v24, v25

    .line 783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v24

    const/16 v25, 0x0

    aget v24, v24, v25

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1

    .line 784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->switchSlotBindMode()Z
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Z

    goto/16 :goto_0

    .line 787
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v24

    const/16 v25, 0x9

    aget v24, v24, v25

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v24

    const/16 v25, 0x7

    aget v24, v24, v25

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    move-result-object v24

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mGsmRadio:Z

    move/from16 v24, v0

    if-nez v24, :cond_1

    .line 790
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v24

    const/16 v25, 0xb

    const/16 v26, 0x1

    aput v26, v24, v25

    .line 792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v24

    const/16 v25, 0xa

    aget v24, v24, v25

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1

    .line 793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v25, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;
    invoke-static/range {v25 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    move-result-object v25

    const/16 v26, 0x32

    invoke-virtual/range {v25 .. v26}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 802
    .end local v5           #ar:Landroid/os/AsyncResult;
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeedSwitchBindMode:Z

    .line 803
    const-string v21, ""

    .line 804
    .local v21, newPhoneType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeedSwitchPhone:Z

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_14

    .line 806
    const/4 v3, -0x1

    .line 807
    .local v3, Mode:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getMyNativeService()Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2500(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/IPhoneSlotService;

    move-result-object v19

    .line 808
    .local v19, myNativeSlotService:Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIntentSwitchMode:I
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2600(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I

    move-result v24

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_15

    .line 809
    const/4 v3, 0x1

    .line 810
    const-string v21, "gsm"

    .line 816
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    const/16 v25, -0x1

    #setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaModemStatus:I
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1602(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    .line 817
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    const/16 v25, -0x1

    #setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmModemStatus:I
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2302(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    .line 819
    if-eqz v19, :cond_13

    .line 821
    :try_start_1
    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Lcom/yulong/android/internal/telephony/IPhoneSlotService;->switchDsDsService(I)I

    move-result v22

    .line 822
    .local v22, ret:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "ret = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 829
    .end local v22           #ret:I
    :cond_13
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->dispose()V

    .line 832
    .end local v3           #Mode:I
    .end local v19           #myNativeSlotService:Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    const/16 v25, -0x1

    #setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIntentSwitchMode:I
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2602(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    .line 833
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeedSwitchPhone:Z

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_16

    .line 836
    new-instance v6, Landroid/os/AsyncResult;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    move-object/from16 v2, v25

    invoke-direct {v6, v0, v1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 838
    .local v6, arEx:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSwitchPhoneRegistrant:Landroid/os/RegistrantList;
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Landroid/os/RegistrantList;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 812
    .end local v6           #arEx:Landroid/os/AsyncResult;
    .restart local v3       #Mode:I
    .restart local v19       #myNativeSlotService:Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    :cond_15
    const/4 v3, 0x2

    .line 813
    const-string v21, "cdma"

    goto/16 :goto_3

    .line 823
    :catch_0
    move-exception v10

    .line 825
    .local v10, e:Landroid/os/RemoteException;
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 840
    .end local v3           #Mode:I
    .end local v10           #e:Landroid/os/RemoteException;
    .end local v19           #myNativeSlotService:Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->selectOpenModemCdmaOrGsm()V
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2800(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V

    goto/16 :goto_0

    .line 847
    .end local v21           #newPhoneType:Ljava/lang/String;
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    move-result-object v24

    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    #setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaModemStatus:I
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1602(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    .line 850
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$900(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Z

    move-result v24

    if-nez v24, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGetPinPukNumType:I
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I

    move-result v24

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_1

    .line 853
    :cond_17
    const/4 v8, 0x1

    .line 856
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "radio state = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$100()[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v26

    const/16 v27, 0x0

    aget-object v26, v26, v27

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 858
    if-nez v8, :cond_18

    .line 859
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    move-result-object v24

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 861
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$900(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Z

    move-result v24

    if-nez v24, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGetPinPukNumType:I
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I

    move-result v24

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_1

    .line 865
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeedSwitchPhone:Z

    move/from16 v24, v0

    if-eqz v24, :cond_19

    .line 866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock3:Ljava/lang/Object;
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2900(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Ljava/lang/Object;

    move-result-object v25

    monitor-enter v25

    .line 867
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock3:Ljava/lang/Object;
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2900(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Ljava/lang/Object;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->notifyAll()V

    .line 868
    monitor-exit v25

    goto/16 :goto_0

    :catchall_0
    move-exception v24

    monitor-exit v25
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v24

    .line 872
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v24

    const/16 v25, 0x8

    aget v24, v24, v25

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_1

    .line 879
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getSlotConnectMode()I
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I

    .line 881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotConnectMode:I
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1c

    .line 882
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    move-result-object v24

    move-object/from16 v0, v24

    iget v9, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    .line 887
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    move-result-object v24

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    move/from16 v24, v0

    move/from16 v0, v24

    if-ne v0, v8, :cond_1d

    .line 888
    if-eqz v8, :cond_1a

    if-nez v9, :cond_1b

    :cond_1a
    if-nez v8, :cond_1

    if-nez v9, :cond_1

    .line 890
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v24

    const/16 v25, 0x8

    const/16 v26, 0x1

    aput v26, v24, v25

    .line 892
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v24

    const/16 v25, 0x9

    aget v24, v24, v25

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1

    .line 894
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->selectCloseModemCdmaOrGsm()V
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V

    goto/16 :goto_0

    .line 884
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    move-result-object v24

    move-object/from16 v0, v24

    iget v9, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    goto :goto_5

    .line 897
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v24

    const/16 v25, 0x7

    aget v24, v24, v25

    if-nez v24, :cond_1

    .line 899
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    const-string v25, "CP_COMM: GET_PIN_OR_PUK_NUM_STEP---------error."

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->loge(Ljava/lang/String;)V
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 905
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    move-result-object v24

    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mGsmRadio:Z

    .line 906
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    #setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmModemStatus:I
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2302(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    .line 908
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$900(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Z

    move-result v24

    if-nez v24, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGetPinPukNumType:I
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I

    move-result v24

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_1

    .line 911
    :cond_1e
    const/4 v12, 0x1

    .line 914
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "radio state = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$100()[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v26

    const/16 v27, 0x1

    aget-object v26, v26, v27

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 916
    if-nez v12, :cond_1f

    .line 917
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    move-result-object v24

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mGsmRadio:Z

    .line 919
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$900(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Z

    move-result v24

    if-nez v24, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGetPinPukNumType:I
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I

    move-result v24

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_1

    .line 924
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v24

    const/16 v25, 0x9

    aget v24, v24, v25

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_1

    .line 931
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    move-result-object v24

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mGsmRadio:Z

    move/from16 v24, v0

    move/from16 v0, v24

    if-ne v0, v12, :cond_1

    .line 935
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotConnectMode:I
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_22

    .line 936
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    move-result-object v24

    move-object/from16 v0, v24

    iget v13, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    .line 941
    :goto_6
    if-eqz v12, :cond_20

    if-nez v13, :cond_21

    :cond_20
    if-nez v12, :cond_1

    if-nez v13, :cond_1

    .line 943
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v24

    const/16 v25, 0x9

    const/16 v26, 0x1

    aput v26, v24, v25

    .line 945
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v24

    const/16 v25, 0x8

    aget v24, v24, v25

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1

    .line 947
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->selectCloseModemCdmaOrGsm()V
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V

    goto/16 :goto_0

    .line 938
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    move-result-object v24

    move-object/from16 v0, v24

    iget v13, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    goto :goto_6

    .line 954
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    #setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlectNetTimes:I
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3402(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    .line 955
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    const-string v25, "Success"

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->updateInfoAndBroadcastIntent(Ljava/lang/String;)V
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3500(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 957
    const/4 v11, 0x2

    .line 958
    .local v11, family:I
    const/16 v18, 0x0

    .line 959
    .local v18, isPinRequired:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->convertPhoneIdToSlotId(I)I
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    move-result v23

    .line 960
    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$100()[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v24

    const/16 v25, 0x0

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v24

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_24

    .line 961
    const/4 v11, 0x2

    .line 965
    :goto_7
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v24

    const/16 v25, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v0, v11, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getCardAppState(II)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->isPinRequired()Z

    move-result v18

    .line 967
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "mSlotId = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ",isPinRequired = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 968
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPinValues:[Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$800(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[Ljava/lang/String;

    move-result-object v24

    aget-object v24, v24, v23

    if-eqz v24, :cond_23

    if-eqz v18, :cond_23

    .line 969
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    const-string v25, "auto unlock cdma pin after radio on if need"

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 970
    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$100()[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v24

    const/16 v25, 0x0

    aget-object v24, v24, v25

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v25, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPinValues:[Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$800(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[Ljava/lang/String;

    move-result-object v25

    aget-object v25, v25, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v26, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;
    invoke-static/range {v26 .. v26}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    move-result-object v26

    const/16 v27, 0x15

    invoke-virtual/range {v26 .. v27}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v26

    invoke-interface/range {v24 .. v26}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V

    .line 974
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->convertPhoneIdToSlotId(I)I
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    move-result v23

    .line 975
    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$100()[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v24

    const/16 v25, 0x1

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v24

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_25

    .line 976
    const/4 v11, 0x2

    .line 980
    :goto_8
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v24

    const/16 v25, 0x2

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v0, v11, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getCardAppState(II)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->isPinRequired()Z

    move-result v18

    .line 982
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "mSlotId = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ",isPinRequired = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 983
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPinValues:[Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$800(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[Ljava/lang/String;

    move-result-object v24

    aget-object v24, v24, v23

    if-eqz v24, :cond_1

    if-eqz v18, :cond_1

    .line 984
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    const-string v25, "auto unlock gsm pin after radio on if need"

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 985
    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$100()[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v24

    const/16 v25, 0x1

    aget-object v24, v24, v25

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v25, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPinValues:[Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$800(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[Ljava/lang/String;

    move-result-object v25

    aget-object v25, v25, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v26, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;
    invoke-static/range {v26 .. v26}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    move-result-object v26

    const/16 v27, 0x15

    invoke-virtual/range {v26 .. v27}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v26

    invoke-interface/range {v24 .. v26}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 963
    :cond_24
    const/4 v11, 0x1

    goto/16 :goto_7

    .line 978
    :cond_25
    const/4 v11, 0x1

    goto/16 :goto_8

    .line 993
    .end local v11           #family:I
    .end local v18           #isPinRequired:Z
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v24

    const/16 v25, 0x7

    const/16 v26, 0x1

    aput v26, v24, v25

    .line 994
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 996
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v24, v0

    if-eqz v24, :cond_26

    .line 997
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    const-string v25, "CP_COMM: EVENT_GET_PIN_LEFT_NUM failed."

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logi(Ljava/lang/String;)V
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1500(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 998
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    const/16 v25, -0x1

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->finishGetPinOrPukLeftNum(I)V
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3600(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)V

    goto/16 :goto_0

    .line 1000
    :cond_26
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, [I

    move-object/from16 v17, v24

    check-cast v17, [I

    .line 1002
    .local v17, ints:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget v25, v17, v25

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->finishGetPinOrPukLeftNum(I)V
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3600(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)V

    goto/16 :goto_0

    .line 1011
    .end local v5           #ar:Landroid/os/AsyncResult;
    .end local v17           #ints:[I
    :pswitch_e
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 1013
    .restart local v5       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperatePinPukByPhoneId:I

    move/from16 v25, v0

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->convertPhoneIdToSlotId(I)I
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    move-result v23

    .line 1015
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v24, v0

    if-eqz v24, :cond_27

    .line 1016
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    const-string v25, "CP_COMM: EVENT_GET_GARD_TYPE failed."

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logi(Ljava/lang/String;)V
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1500(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 1017
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    const-string v25, "error"

    #setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardTypeResponse:Ljava/lang/String;
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3702(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)Ljava/lang/String;

    .line 1018
    const/4 v14, -0x1

    .line 1032
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v25, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGetPinPukNumType:I
    invoke-static/range {v25 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I

    move-result v25

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v23

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->notifyPinPukCheckResult(III)V
    invoke-static {v0, v1, v14, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3800(Lcom/yulong/android/internal/telephony/DualPhoneModeService;III)V

    goto/16 :goto_0

    .line 1020
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v25, v0

    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    #setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardTypeResponse:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3702(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)Ljava/lang/String;

    .line 1021
    const/4 v14, 0x0

    .line 1023
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardTypeResponse:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_28

    .line 1024
    invoke-static {}, Lcom/yulong/android/internal/telephony/CardInfoParse;->getDefault()Lcom/yulong/android/internal/telephony/CardInfoParse;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v25, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardTypeResponse:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v26, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;
    invoke-static/range {v26 .. v26}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v26

    aget-object v26, v26, v23

    invoke-virtual/range {v24 .. v26}, Lcom/yulong/android/internal/telephony/CardInfoParse;->parseCdmaCommand(Ljava/lang/String;Lcom/yulong/android/internal/telephony/SlotCardInfo;)Z

    .line 1026
    const/4 v14, 0x1

    .line 1029
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "CP_COMM: GET_CARD_TYPE: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v26, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardTypeResponse:Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    goto :goto_9

    .line 1037
    .end local v5           #ar:Landroid/os/AsyncResult;
    :pswitch_f
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 1039
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v24, v0

    if-eqz v24, :cond_2a

    .line 1040
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    const-string v25, "CP_COMM: UNLOCK_PIN_BY_CDMA exception."

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logi(Ljava/lang/String;)V
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1500(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 1041
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->convertPhoneIdToSlotId(I)I
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    move-result v23

    .line 1042
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPinValues:[Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$800(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[Ljava/lang/String;

    move-result-object v24

    aget-object v24, v24, v23

    if-eqz v24, :cond_29

    .line 1043
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v24

    aget-object v24, v24, v23

    const/16 v25, 0x2

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    .line 1054
    :cond_29
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v24

    const/16 v25, 0x5

    const/16 v26, 0x1

    aput v26, v24, v25

    .line 1055
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    #setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->hotSwapUnlockPin:Z
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$4002(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Z)Z

    .line 1057
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v24

    const/16 v25, 0x5

    aget v24, v24, v25

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v24

    const/16 v25, 0x6

    aget v24, v24, v25

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1

    .line 1059
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->operateRadioCdmaAndGsm()V
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$4100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V

    goto/16 :goto_0

    .line 1047
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    const-string v25, "CP_COMM: UNLOCK_PIN_BY_CDMA true."

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 1048
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->waitAfterUnlockPin(I)V
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3900(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)V

    goto :goto_a

    .line 1065
    .end local v5           #ar:Landroid/os/AsyncResult;
    :pswitch_10
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 1067
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v24, v0

    if-eqz v24, :cond_2c

    .line 1068
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    const-string v25, "CP_COMM: UNLOCK_PIN_BY_GSM failed."

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logi(Ljava/lang/String;)V
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1500(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 1069
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->convertPhoneIdToSlotId(I)I
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    move-result v23

    .line 1071
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPinValues:[Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$800(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[Ljava/lang/String;

    move-result-object v24

    aget-object v24, v24, v23

    if-eqz v24, :cond_2b

    .line 1082
    :cond_2b
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v24

    const/16 v25, 0x6

    const/16 v26, 0x1

    aput v26, v24, v25

    .line 1083
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    #setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->hotSwapUnlockPin:Z
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$4002(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Z)Z

    .line 1085
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v24

    const/16 v25, 0x5

    aget v24, v24, v25

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v24

    const/16 v25, 0x6

    aget v24, v24, v25

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1

    .line 1087
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->operateRadioCdmaAndGsm()V
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$4100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V

    goto/16 :goto_0

    .line 1077
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    const-string v25, "CP_COMM: EVENT_UNLOCK_PIN_BY_GSM true."

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 1078
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->waitAfterUnlockPin(I)V
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3900(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)V

    goto :goto_b

    .line 1126
    .end local v5           #ar:Landroid/os/AsyncResult;
    :pswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$900(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Z

    move-result v24

    if-nez v24, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRegisterClientNo:I
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_1

    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$100()[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v24

    const/16 v25, 0x0

    aget-object v24, v24, v25

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v24

    sget-object v25, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_1

    .line 1129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    #setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRegisterClientNo:I
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1302(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    .line 1130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    const/16 v25, -0x1

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->broadcastSyncMessageToRenew(I)V
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$4200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)V

    goto/16 :goto_0

    .line 1169
    :pswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotConnectMode:I
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_2f

    .line 1170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    move-result-object v24

    move-object/from16 v0, v24

    iget v13, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    .line 1176
    :goto_c
    if-eqz v12, :cond_2d

    if-nez v13, :cond_2e

    :cond_2d
    if-nez v12, :cond_1

    if-nez v13, :cond_1

    .line 1178
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v24

    const/16 v25, 0x9

    const/16 v26, 0x1

    aput v26, v24, v25

    .line 1180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v24

    const/16 v25, 0x8

    aget v24, v24, v25

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1

    .line 1182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->selectCloseModemCdmaOrGsm()V
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V

    goto/16 :goto_0

    .line 1172
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    move-result-object v24

    move-object/from16 v0, v24

    iget v13, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    goto :goto_c

    .line 1189
    :pswitch_13
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 1190
    .restart local v5       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperatePinPukByPhoneId:I

    move/from16 v25, v0

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->convertPhoneIdToSlotId(I)I
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    move-result v23

    .line 1192
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v24, v0

    if-eqz v24, :cond_30

    .line 1193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    const-string v25, "CP_COMM: EVENT_GET_IMSI_BY_AT failed."

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logi(Ljava/lang/String;)V
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1500(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 1194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    const-string v25, "error"

    #setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmImsiResponse:Ljava/lang/String;
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$4302(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)Ljava/lang/String;

    .line 1195
    const/4 v14, -0x1

    .line 1206
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v25, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGetPinPukNumType:I
    invoke-static/range {v25 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I

    move-result v25

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v23

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->notifyPinPukCheckResult(III)V
    invoke-static {v0, v1, v14, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3800(Lcom/yulong/android/internal/telephony/DualPhoneModeService;III)V

    goto/16 :goto_0

    .line 1197
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v25, v0

    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    #setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmImsiResponse:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$4302(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)Ljava/lang/String;

    .line 1198
    const/4 v14, 0x0

    .line 1200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmImsiResponse:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$4300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_31

    .line 1201
    const/4 v14, 0x1

    .line 1203
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "CP_COMM: EVENT_GET_IMSI_BY_AT: mGsmImsiResponse"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v26, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmImsiResponse:Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$4300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "mSlotCardInfoArray["

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "].mGsmImsi"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v26, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;
    invoke-static/range {v26 .. v26}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v26

    aget-object v26, v26, v23

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 1212
    .end local v5           #ar:Landroid/os/AsyncResult;
    :pswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$900(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Z

    move-result v24

    if-eqz v24, :cond_33

    .line 1215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlectNetTimes:I
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3400(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_32

    .line 1217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3408(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I

    .line 1218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    #setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$902(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Z)Z

    .line 1219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v25, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->nextselectEx:[I
    invoke-static/range {v25 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$4400(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v25

    const/16 v26, 0x0

    aget v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v26, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->nextselectEx:[I
    invoke-static/range {v26 .. v26}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$4400(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v26

    const/16 v27, 0x1

    aget v26, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v27, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->nextselectEx:[I
    invoke-static/range {v27 .. v27}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$4400(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v27

    const/16 v28, 0x2

    aget v27, v27, v28

    invoke-virtual/range {v24 .. v27}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->selectModemAndPreferredSlot(III)I

    goto/16 :goto_0

    .line 1222
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    #setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlectNetTimes:I
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3402(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    .line 1224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    const-string v25, "TimeOut"

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->updateInfoAndBroadcastIntent(Ljava/lang/String;)V
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3500(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1225
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGetPinPukNumType:I
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I

    move-result v24

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_1

    .line 1226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    const/16 v25, -0x1

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->finishGetPinOrPukLeftNum(I)V
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3600(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)V

    goto/16 :goto_0

    .line 1231
    :pswitch_15
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 1232
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v24, v0

    if-eqz v24, :cond_34

    .line 1233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    const-string v25, "CP_COMM: EVENT_GET_CDMA_MODEM_STATUS failed."

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logi(Ljava/lang/String;)V
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1500(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1235
    :cond_34
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, [I

    move-object/from16 v4, v24

    check-cast v4, [I

    .line 1236
    .local v4, ModomStatus:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "CP_COMM: EVENT_GET_CDMA_MODEM_STATUS: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const/16 v26, 0x0

    aget v26, v4, v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 1238
    const/16 v24, 0x0

    aget v24, v4, v24

    if-nez v24, :cond_35

    .line 1239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    #setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaModemStatus:I
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1602(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    .line 1244
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock:Ljava/lang/Object;
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$4500(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Ljava/lang/Object;

    move-result-object v25

    monitor-enter v25

    .line 1245
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock:Ljava/lang/Object;
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$4500(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Ljava/lang/Object;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->notifyAll()V

    .line 1246
    monitor-exit v25

    goto/16 :goto_0

    :catchall_1
    move-exception v24

    monitor-exit v25
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v24

    .line 1241
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    #setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaModemStatus:I
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1602(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    goto :goto_e

    .line 1250
    .end local v4           #ModomStatus:[I
    .end local v5           #ar:Landroid/os/AsyncResult;
    :pswitch_16
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 1251
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v24, v0

    if-eqz v24, :cond_36

    .line 1252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    const-string v25, "CP_COMM: EVENT_GET_GSM_MODEM_STATUS failed."

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logi(Ljava/lang/String;)V
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1500(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1254
    :cond_36
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, [I

    move-object/from16 v4, v24

    check-cast v4, [I

    .line 1255
    .restart local v4       #ModomStatus:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "CP_COMM: EVENT_GET_GSM_MODEM_STATUS: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const/16 v26, 0x0

    aget v26, v4, v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 1257
    const/16 v24, 0x0

    aget v24, v4, v24

    if-nez v24, :cond_37

    .line 1258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    #setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmModemStatus:I
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2302(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    .line 1263
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock:Ljava/lang/Object;
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$4500(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Ljava/lang/Object;

    move-result-object v25

    monitor-enter v25

    .line 1264
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock:Ljava/lang/Object;
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$4500(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Ljava/lang/Object;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->notifyAll()V

    .line 1265
    monitor-exit v25

    goto/16 :goto_0

    :catchall_2
    move-exception v24

    monitor-exit v25
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v24

    .line 1260
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    #setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmModemStatus:I
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2302(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    goto :goto_f

    .line 1270
    .end local v4           #ModomStatus:[I
    .end local v5           #ar:Landroid/os/AsyncResult;
    :pswitch_17
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 1271
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v24, v0

    if-eqz v24, :cond_1

    .line 1272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    const-string v25, "CP_COMM: EVENT_CDMA_SUPPLYPIN_MODEMRESET exception."

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logi(Ljava/lang/String;)V
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1500(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 1273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->convertPhoneIdToSlotId(I)I
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    move-result v23

    .line 1274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPinValues:[Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$800(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[Ljava/lang/String;

    move-result-object v24

    aget-object v24, v24, v23

    if-eqz v24, :cond_1

    .line 1275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v24

    aget-object v24, v24, v23

    const/16 v25, 0x2

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    goto/16 :goto_0

    .line 1281
    .end local v5           #ar:Landroid/os/AsyncResult;
    :pswitch_18
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 1282
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v24, v0

    if-eqz v24, :cond_1

    .line 1283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    const-string v25, "CP_COMM: EVENT_GSM_SUPPLYPIN_MODEMRESET exception."

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logi(Ljava/lang/String;)V
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1500(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 1284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->convertPhoneIdToSlotId(I)I
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    move-result v23

    .line 1285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPinValues:[Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$800(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[Ljava/lang/String;

    move-result-object v24

    aget-object v24, v24, v23

    if-eqz v24, :cond_1

    .line 1286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v24

    aget-object v24, v24, v23

    const/16 v25, 0x2

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    goto/16 :goto_0

    .line 1294
    .end local v5           #ar:Landroid/os/AsyncResult;
    :pswitch_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "HOTSWAP: enter into EVENT_HOTSWAP_CHECK_CARD_FINISH,reCheckCard = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v26, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->reCheckCard:Z
    invoke-static/range {v26 .. v26}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$4600(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Z

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 1297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->isCheckingCard:Z
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$4700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Z

    move-result v24

    if-eqz v24, :cond_38

    .line 1298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "HOTSWAP: isCheckingCard = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v26, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->isCheckingCard:Z
    invoke-static/range {v26 .. v26}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$4700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Z

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", ignore"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1303
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "HOTSWAP: mCdmaModemStatus = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v26, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaModemStatus:I
    invoke-static/range {v26 .. v26}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1600(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", mGsmModemStatus = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v26, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmModemStatus:I
    invoke-static/range {v26 .. v26}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 1304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    const/16 v25, -0x1

    #setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaModemStatus:I
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1602(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    .line 1305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    const/16 v25, -0x1

    #setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmModemStatus:I
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2302(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    .line 1308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    const/16 v25, -0x1

    #setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotConnectMode:I
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3102(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    .line 1309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "HOTSWAP: getSlotConnectMode()= "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v26, v0

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getSlotConnectMode()I
    invoke-static/range {v26 .. v26}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 1312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPinValues:[Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$800(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_3a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPinValues:[Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$800(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    aget-object v24, v24, v25

    if-nez v24, :cond_39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPinValues:[Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$800(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x1

    aget-object v24, v24, v25

    if-eqz v24, :cond_3a

    .line 1314
    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    #setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->hotSwapUnlockPin:Z
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$4002(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Z)Z

    .line 1318
    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    const-string v25, "HOTSWAP: broadcast intent ACTION_HOTSWAP_SELECT_NET"

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 1319
    new-instance v16, Landroid/content/Intent;

    const-string v24, "yulong.intent.action.ACTION_HOTSWAP_SELECT_NET"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1321
    .local v16, intent:Landroid/content/Intent;
    const-string v24, "msgFlag"

    const/16 v25, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1322
    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$4800()Landroid/content/Context;

    move-result-object v24

    sget-object v25, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 1328
    .end local v16           #intent:Landroid/content/Intent;
    :pswitch_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "mPhones[0].RadioState() = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$100()[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v26

    const/16 v27, 0x0

    aget-object v26, v26, v27

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 1329
    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$100()[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v24

    const/16 v25, 0x0

    aget-object v24, v24, v25

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v24

    sget-object v25, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_3b

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getRildSocketNumType()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1

    .line 1331
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock2:Ljava/lang/Object;
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$4900(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Ljava/lang/Object;

    move-result-object v25

    monitor-enter v25

    .line 1332
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock2:Ljava/lang/Object;
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$4900(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Ljava/lang/Object;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->notifyAll()V

    .line 1333
    monitor-exit v25

    goto/16 :goto_0

    :catchall_3
    move-exception v24

    monitor-exit v25
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v24

    .line 1338
    :pswitch_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "mPhones[1].RadioState() = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$100()[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v26

    const/16 v27, 0x1

    aget-object v26, v26, v27

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 1339
    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$100()[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v24

    const/16 v25, 0x1

    aget-object v24, v24, v25

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v24

    sget-object v25, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_3c

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getRildSocketNumType()I

    move-result v24

    if-nez v24, :cond_1

    .line 1341
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock2:Ljava/lang/Object;
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$4900(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Ljava/lang/Object;

    move-result-object v25

    monitor-enter v25

    .line 1342
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock2:Ljava/lang/Object;
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$4900(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Ljava/lang/Object;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->notifyAll()V

    .line 1343
    monitor-exit v25

    goto/16 :goto_0

    :catchall_4
    move-exception v24

    monitor-exit v25
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw v24

    .line 1349
    :pswitch_1c
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 1351
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v24, v0

    if-eqz v24, :cond_3d

    .line 1352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    const-string v25, "CP_COMM: Close card1 failed."

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logi(Ljava/lang/String;)V
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1500(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 1353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v24

    const/16 v25, 0x8

    aget v24, v24, v25

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    move-result-object v24

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    move/from16 v24, v0

    if-nez v24, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeedSwitchBindMode:Z

    move/from16 v24, v0

    if-nez v24, :cond_1

    .line 1355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v24

    const/16 v25, 0xa

    const/16 v26, 0x1

    aput v26, v24, v25

    .line 1357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v24

    const/16 v25, 0xb

    aget v24, v24, v25

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1

    .line 1358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v25, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;
    invoke-static/range {v25 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    move-result-object v25

    const/16 v26, 0x32

    invoke-virtual/range {v25 .. v26}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1365
    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    #setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaModemStatus:I
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1602(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    .line 1366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    move-result-object v24

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 1367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    #setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeetPowerOffCard:Z
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$5002(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Z)Z

    .line 1369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeedSwitchBindMode:Z

    move/from16 v24, v0

    if-eqz v24, :cond_3e

    .line 1370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v24

    const/16 v25, 0x0

    const/16 v26, 0x1

    aput v26, v24, v25

    .line 1372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v24

    const/16 v25, 0x1

    aget v24, v24, v25

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1

    .line 1373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->switchSlotBindMode()Z
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Z

    goto/16 :goto_0

    .line 1376
    :cond_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v24

    const/16 v25, 0x8

    aget v24, v24, v25

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    move-result-object v24

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    move/from16 v24, v0

    if-nez v24, :cond_1

    .line 1378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v24

    const/16 v25, 0xa

    const/16 v26, 0x1

    aput v26, v24, v25

    .line 1380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v24

    const/16 v25, 0xb

    aget v24, v24, v25

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1

    .line 1381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v25, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;
    invoke-static/range {v25 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    move-result-object v25

    const/16 v26, 0x32

    invoke-virtual/range {v25 .. v26}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1391
    .end local v5           #ar:Landroid/os/AsyncResult;
    :pswitch_1d
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 1392
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v24, v0

    if-eqz v24, :cond_3f

    .line 1393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    const-string v25, "G2C removeAllInvalidSid failed"

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1395
    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    const-string v25, "G2C removeAllInvalidSid success"

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1400
    .end local v5           #ar:Landroid/os/AsyncResult;
    :pswitch_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock3:Ljava/lang/Object;
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2900(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Ljava/lang/Object;

    move-result-object v25

    monitor-enter v25

    .line 1401
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock3:Ljava/lang/Object;
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2900(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Ljava/lang/Object;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->notifyAll()V

    .line 1402
    monitor-exit v25

    goto/16 :goto_0

    :catchall_5
    move-exception v24

    monitor-exit v25
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    throw v24

    .line 1405
    :pswitch_1f
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 1406
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v24, v0

    if-eqz v24, :cond_40

    .line 1407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    const-string v25, "CP_COMM: EVENT_GET_PREFERRED_NETWORK exception."

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logi(Ljava/lang/String;)V
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1500(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 1413
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock1:Ljava/lang/Object;
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$5200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Ljava/lang/Object;

    move-result-object v25

    monitor-enter v25

    .line 1414
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock1:Ljava/lang/Object;
    invoke-static/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$5200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Ljava/lang/Object;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->notifyAll()V

    .line 1415
    monitor-exit v25

    goto/16 :goto_0

    :catchall_6
    move-exception v24

    monitor-exit v25
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    throw v24

    .line 1409
    :cond_40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v25, v0

    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, [I

    check-cast v24, [I

    const/16 v26, 0x0

    aget v24, v24, v26

    move-object/from16 v0, v25

    move/from16 v1, v24

    #setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPreferredNetwork:I
    invoke-static {v0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$5102(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    .line 1410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "current network preferred type = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v26, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPreferredNetwork:I
    invoke-static/range {v26 .. v26}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$5100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static/range {v24 .. v25}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    goto :goto_10

    .line 666
    :catch_1
    move-exception v24

    goto/16 :goto_2

    .line 555
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_3
        :pswitch_5
        :pswitch_15
        :pswitch_16
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_b
        :pswitch_a
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_e
        :pswitch_d
        :pswitch_f
        :pswitch_10
        :pswitch_17
        :pswitch_18
        :pswitch_1a
        :pswitch_1b
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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_14
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_19
        :pswitch_1c
        :pswitch_0
        :pswitch_1d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1e
        :pswitch_1f
    .end packed-switch
.end method
