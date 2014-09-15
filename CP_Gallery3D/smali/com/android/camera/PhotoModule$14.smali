.class Lcom/android/camera/PhotoModule$14;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PhotoModule;->initializeMiscControls()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .parameter

    .prologue
    .line 4515
    iput-object p1, p0, Lcom/android/camera/PhotoModule$14;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "view"
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 4518
    const/4 v0, 0x0

    .line 4519
    .local v0, ret:Z
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 4594
    .end local p1
    :cond_0
    :goto_0
    return v0

    .line 4521
    .restart local p1
    :pswitch_0
    const-string v3, "CAM_PhotoModule"

    const-string v4, ">>>>>>>MotionEvent.ACTION_DOWN"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4522
    iget-object v3, p0, Lcom/android/camera/PhotoModule$14;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/camera/CameraActivity;->mSupportShotMode:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/PhotoModule$14;->this$0:Lcom/android/camera/PhotoModule;

    invoke-virtual {v3}, Lcom/android/camera/PhotoModule;->isCaptureIntent()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/PhotoModule$14;->this$0:Lcom/android/camera/PhotoModule;

    #calls: Lcom/android/camera/PhotoModule;->isInDelayCapture()Z
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$11000(Lcom/android/camera/PhotoModule;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/PhotoModule$14;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mPlugInMode:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$8100(Lcom/android/camera/PhotoModule;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "nightshot"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/PhotoModule$14;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mPlugInMode:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$8100(Lcom/android/camera/PhotoModule;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "bestpick"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/PhotoModule$14;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mPlugInMode:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$8100(Lcom/android/camera/PhotoModule;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "gifcapture"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/PhotoModule$14;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mPlugInMode:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$8100(Lcom/android/camera/PhotoModule;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "hdr"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/PhotoModule$14;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mPlugInMode:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$8100(Lcom/android/camera/PhotoModule;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "beautyshot"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/PhotoModule$14;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mPlugInMode:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$8100(Lcom/android/camera/PhotoModule;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "smileshutter"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/PhotoModule$14;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mPlugInMode:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$8100(Lcom/android/camera/PhotoModule;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "self_capture_2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/PhotoModule$14;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mPlugInMode:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$8100(Lcom/android/camera/PhotoModule;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "perfect365"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/PhotoModule$14;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mPlugInMode:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$8100(Lcom/android/camera/PhotoModule;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "self_capture_1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/PhotoModule$14;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mPlugInMode:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$8100(Lcom/android/camera/PhotoModule;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pickaction"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/PhotoModule$14;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mPlugInMode:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$8100(Lcom/android/camera/PhotoModule;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pickclear"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/PhotoModule$14;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mPlugInMode:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$8100(Lcom/android/camera/PhotoModule;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "audio_image"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 4537
    iget-object v3, p0, Lcom/android/camera/PhotoModule$14;->this$0:Lcom/android/camera/PhotoModule;

    invoke-virtual {v3}, Lcom/android/camera/PhotoModule;->inContinuousShotMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4539
    iget-object v3, p0, Lcom/android/camera/PhotoModule$14;->this$0:Lcom/android/camera/PhotoModule;

    #calls: Lcom/android/camera/PhotoModule;->cancelShot2ShotSound()V
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$11100(Lcom/android/camera/PhotoModule;)V

    .line 4540
    iget-object v3, p0, Lcom/android/camera/PhotoModule$14;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mContinuousShotModeCountdownTimer:Lcom/android/camera/PhotoModule$MyCountDownTimer;
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$11200(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$MyCountDownTimer;

    move-result-object v3

    #calls: Lcom/android/camera/PhotoModule$MyCountDownTimer;->setFinishedState(Z)V
    invoke-static {v3, v5}, Lcom/android/camera/PhotoModule$MyCountDownTimer;->access$7800(Lcom/android/camera/PhotoModule$MyCountDownTimer;Z)V

    .line 4541
    iget-object v3, p0, Lcom/android/camera/PhotoModule$14;->this$0:Lcom/android/camera/PhotoModule;

    invoke-virtual {v3}, Lcom/android/camera/PhotoModule;->enterNormalShotMode()V

    .line 4542
    iget-object v3, p0, Lcom/android/camera/PhotoModule$14;->this$0:Lcom/android/camera/PhotoModule;

    #calls: Lcom/android/camera/PhotoModule;->setupPreview(Z)V
    invoke-static {v3, v5}, Lcom/android/camera/PhotoModule;->access$3400(Lcom/android/camera/PhotoModule;Z)V

    .line 4543
    iget-object v3, p0, Lcom/android/camera/PhotoModule$14;->this$0:Lcom/android/camera/PhotoModule;

    iget-object v4, p0, Lcom/android/camera/PhotoModule$14;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v4

    iget-object v4, v4, Lcom/android/camera/ActivityBase;->mLatestUri:Landroid/net/Uri;

    #calls: Lcom/android/camera/PhotoModule;->ForceUpdateShot2ShotThumb(Landroid/net/Uri;)V
    invoke-static {v3, v4}, Lcom/android/camera/PhotoModule;->access$10200(Lcom/android/camera/PhotoModule;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 4545
    :cond_1
    iget-object v3, p0, Lcom/android/camera/PhotoModule$14;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mContinuousShotModeCountdownTimer:Lcom/android/camera/PhotoModule$MyCountDownTimer;
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$11200(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$MyCountDownTimer;

    move-result-object v3

    #calls: Lcom/android/camera/PhotoModule$MyCountDownTimer;->setFinishedState(Z)V
    invoke-static {v3, v6}, Lcom/android/camera/PhotoModule$MyCountDownTimer;->access$7800(Lcom/android/camera/PhotoModule$MyCountDownTimer;Z)V

    .line 4546
    iget-object v3, p0, Lcom/android/camera/PhotoModule$14;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mContinuousShotModeCountdownTimer:Lcom/android/camera/PhotoModule$MyCountDownTimer;
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$11200(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$MyCountDownTimer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    goto/16 :goto_0

    .line 4550
    :cond_2
    iget-object v3, p0, Lcom/android/camera/PhotoModule$14;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mContinuousShotModeCountdownTimer:Lcom/android/camera/PhotoModule$MyCountDownTimer;
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$11200(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$MyCountDownTimer;

    move-result-object v3

    #calls: Lcom/android/camera/PhotoModule$MyCountDownTimer;->setFinishedState(Z)V
    invoke-static {v3, v6}, Lcom/android/camera/PhotoModule$MyCountDownTimer;->access$7800(Lcom/android/camera/PhotoModule$MyCountDownTimer;Z)V

    goto/16 :goto_0

    .line 4556
    :pswitch_1
    const-string v3, "CAM_PhotoModule"

    const-string v4, ">>>>>>>MotionEvent.ACTION_MOVE"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4557
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 4558
    .local v1, x:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 4559
    .local v2, y:I
    check-cast p1, Lcom/android/camera/ShutterButton;

    .end local p1
    int-to-float v3, v1

    int-to-float v4, v2

    invoke-virtual {p1, v3, v4}, Lcom/android/camera/ShutterButton;->pointerInViewArea(FF)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/PhotoModule$14;->this$0:Lcom/android/camera/PhotoModule;

    invoke-virtual {v3}, Lcom/android/camera/PhotoModule;->inContinuousShotMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4561
    const-string v3, "CAM_PhotoModule"

    const-string v4, ">>>>>>>>cancle shot2shot mode"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4562
    iget-object v3, p0, Lcom/android/camera/PhotoModule$14;->this$0:Lcom/android/camera/PhotoModule;

    #calls: Lcom/android/camera/PhotoModule;->cancelShot2ShotSound()V
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$11100(Lcom/android/camera/PhotoModule;)V

    .line 4563
    iget-object v3, p0, Lcom/android/camera/PhotoModule$14;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mContinuousShotModeCountdownTimer:Lcom/android/camera/PhotoModule$MyCountDownTimer;
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$11200(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$MyCountDownTimer;

    move-result-object v3

    #calls: Lcom/android/camera/PhotoModule$MyCountDownTimer;->setFinishedState(Z)V
    invoke-static {v3, v5}, Lcom/android/camera/PhotoModule$MyCountDownTimer;->access$7800(Lcom/android/camera/PhotoModule$MyCountDownTimer;Z)V

    .line 4564
    iget-object v3, p0, Lcom/android/camera/PhotoModule$14;->this$0:Lcom/android/camera/PhotoModule;

    invoke-virtual {v3}, Lcom/android/camera/PhotoModule;->enterNormalShotMode()V

    .line 4565
    iget-object v3, p0, Lcom/android/camera/PhotoModule$14;->this$0:Lcom/android/camera/PhotoModule;

    #calls: Lcom/android/camera/PhotoModule;->setupPreview(Z)V
    invoke-static {v3, v5}, Lcom/android/camera/PhotoModule;->access$3400(Lcom/android/camera/PhotoModule;Z)V

    .line 4566
    iget-object v3, p0, Lcom/android/camera/PhotoModule$14;->this$0:Lcom/android/camera/PhotoModule;

    iget-object v4, p0, Lcom/android/camera/PhotoModule$14;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v4

    iget-object v4, v4, Lcom/android/camera/ActivityBase;->mLatestUri:Landroid/net/Uri;

    #calls: Lcom/android/camera/PhotoModule;->ForceUpdateShot2ShotThumb(Landroid/net/Uri;)V
    invoke-static {v3, v4}, Lcom/android/camera/PhotoModule;->access$10200(Lcom/android/camera/PhotoModule;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 4571
    .end local v1           #x:I
    .end local v2           #y:I
    .restart local p1
    :pswitch_2
    const-string v3, "CAM_PhotoModule"

    const-string v4, ">>>>>>>MotionEvent.ACTION_UP"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4572
    iget-object v3, p0, Lcom/android/camera/PhotoModule$14;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mContinuousShotModeCountdownTimer:Lcom/android/camera/PhotoModule$MyCountDownTimer;
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$11200(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$MyCountDownTimer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/CountDownTimer;->cancel()V

    .line 4573
    iget-object v3, p0, Lcom/android/camera/PhotoModule$14;->this$0:Lcom/android/camera/PhotoModule;

    invoke-virtual {v3}, Lcom/android/camera/PhotoModule;->inContinuousShotMode()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4575
    iget-object v3, p0, Lcom/android/camera/PhotoModule$14;->this$0:Lcom/android/camera/PhotoModule;

    #calls: Lcom/android/camera/PhotoModule;->cancelShot2ShotSound()V
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$11100(Lcom/android/camera/PhotoModule;)V

    .line 4576
    iget-object v3, p0, Lcom/android/camera/PhotoModule$14;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mContinuousShotModeCountdownTimer:Lcom/android/camera/PhotoModule$MyCountDownTimer;
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$11200(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$MyCountDownTimer;

    move-result-object v3

    #calls: Lcom/android/camera/PhotoModule$MyCountDownTimer;->setFinishedState(Z)V
    invoke-static {v3, v5}, Lcom/android/camera/PhotoModule$MyCountDownTimer;->access$7800(Lcom/android/camera/PhotoModule$MyCountDownTimer;Z)V

    .line 4577
    iget-object v3, p0, Lcom/android/camera/PhotoModule$14;->this$0:Lcom/android/camera/PhotoModule;

    invoke-virtual {v3}, Lcom/android/camera/PhotoModule;->enterNormalShotMode()V

    .line 4578
    iget-object v3, p0, Lcom/android/camera/PhotoModule$14;->this$0:Lcom/android/camera/PhotoModule;

    #calls: Lcom/android/camera/PhotoModule;->setupPreview(Z)V
    invoke-static {v3, v5}, Lcom/android/camera/PhotoModule;->access$3400(Lcom/android/camera/PhotoModule;Z)V

    .line 4579
    iget-object v3, p0, Lcom/android/camera/PhotoModule$14;->this$0:Lcom/android/camera/PhotoModule;

    iget-object v4, p0, Lcom/android/camera/PhotoModule$14;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v4

    iget-object v4, v4, Lcom/android/camera/ActivityBase;->mLatestUri:Landroid/net/Uri;

    #calls: Lcom/android/camera/PhotoModule;->ForceUpdateShot2ShotThumb(Landroid/net/Uri;)V
    invoke-static {v3, v4}, Lcom/android/camera/PhotoModule;->access$10200(Lcom/android/camera/PhotoModule;Landroid/net/Uri;)V

    .line 4581
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-ne v3, v5, :cond_4

    iget-object v3, p0, Lcom/android/camera/PhotoModule$14;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mContinuousShotModeCountdownTimer:Lcom/android/camera/PhotoModule$MyCountDownTimer;
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$11200(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$MyCountDownTimer;

    move-result-object v3

    #calls: Lcom/android/camera/PhotoModule$MyCountDownTimer;->getFinishedState()Z
    invoke-static {v3}, Lcom/android/camera/PhotoModule$MyCountDownTimer;->access$11300(Lcom/android/camera/PhotoModule$MyCountDownTimer;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4585
    iget-object v3, p0, Lcom/android/camera/PhotoModule$14;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mTakePhotoBtn:Lcom/android/camera/ShutterButton;
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$5600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ShutterButton;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setPressed(Z)V

    .line 4589
    const/4 v0, 0x1

    .line 4591
    :cond_4
    iget-object v3, p0, Lcom/android/camera/PhotoModule$14;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mContinuousShotModeCountdownTimer:Lcom/android/camera/PhotoModule$MyCountDownTimer;
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$11200(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$MyCountDownTimer;

    move-result-object v3

    #calls: Lcom/android/camera/PhotoModule$MyCountDownTimer;->setFinishedState(Z)V
    invoke-static {v3, v5}, Lcom/android/camera/PhotoModule$MyCountDownTimer;->access$7800(Lcom/android/camera/PhotoModule$MyCountDownTimer;Z)V

    goto/16 :goto_0

    .line 4519
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
