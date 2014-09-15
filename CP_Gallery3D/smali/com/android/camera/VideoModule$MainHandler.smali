.class Lcom/android/camera/VideoModule$MainHandler;
.super Landroid/os/Handler;
.source "VideoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/VideoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/VideoModule;)V
    .locals 0
    .parameter

    .prologue
    .line 538
    iput-object p1, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/VideoModule;Lcom/android/camera/VideoModule$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 538
    invoke-direct {p0, p1}, Lcom/android/camera/VideoModule$MainHandler;-><init>(Lcom/android/camera/VideoModule;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 541
    const-string v0, "CAM_VideoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 630
    const-string v0, "CAM_VideoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 544
    :sswitch_1
    invoke-static {}, Lcom/android/camera/ProductConfig;->isSupportedBootAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    #getter for: Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$500(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->TriggerBootAnimation()V

    goto :goto_0

    .line 550
    :sswitch_2
    iget-object v0, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    #getter for: Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$500(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    #getter for: Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I
    invoke-static {v1}, Lcom/android/camera/VideoModule;->access$1400(Lcom/android/camera/VideoModule;)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    #getter for: Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I
    invoke-static {v2}, Lcom/android/camera/VideoModule;->access$1500(Lcom/android/camera/VideoModule;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraActivity;->resizeForCameraSnail(II)V

    goto :goto_0

    .line 554
    :sswitch_3
    iget-object v0, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    #getter for: Lcom/android/camera/VideoModule;->mIndependenceVideoBtn:Lcom/android/camera/ShutterButton;
    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$1600(Lcom/android/camera/VideoModule;)Lcom/android/camera/ShutterButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    #getter for: Lcom/android/camera/VideoModule;->mIndependenceVideoBtn:Lcom/android/camera/ShutterButton;
    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$1600(Lcom/android/camera/VideoModule;)Lcom/android/camera/ShutterButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/TwoStateImageView;->setEnabled(Z)V

    goto :goto_0

    .line 558
    :sswitch_4
    iget-object v0, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    #getter for: Lcom/android/camera/VideoModule;->mPauseRecordButton:Lcom/android/camera/ShutterButton;
    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$1700(Lcom/android/camera/VideoModule;)Lcom/android/camera/ShutterButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/TwoStateImageView;->setEnabled(Z)V

    .line 559
    iget-object v0, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    #getter for: Lcom/android/camera/VideoModule;->mStopRecordButton:Lcom/android/camera/ShutterButton;
    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$1800(Lcom/android/camera/VideoModule;)Lcom/android/camera/ShutterButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/TwoStateImageView;->setEnabled(Z)V

    .line 560
    iget-object v0, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    #getter for: Lcom/android/camera/VideoModule;->mVideoTakePictureBtn:Lcom/android/camera/ShutterButton;
    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$1900(Lcom/android/camera/VideoModule;)Lcom/android/camera/ShutterButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/TwoStateImageView;->setEnabled(Z)V

    goto :goto_0

    .line 563
    :sswitch_5
    iget-object v0, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    #getter for: Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$500(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 569
    :sswitch_6
    iget-object v0, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    #calls: Lcom/android/camera/VideoModule;->updateRecordingTime()V
    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$2000(Lcom/android/camera/VideoModule;)V

    goto :goto_0

    .line 579
    :sswitch_7
    iget-object v0, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    #getter for: Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$500(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    #getter for: Lcom/android/camera/VideoModule;->mDisplayRotation:I
    invoke-static {v1}, Lcom/android/camera/VideoModule;->access$2100(Lcom/android/camera/VideoModule;)I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    #getter for: Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z
    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$700(Lcom/android/camera/VideoModule;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    #getter for: Lcom/android/camera/VideoModule;->mSwitchingCamera:Z
    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$2200(Lcom/android/camera/VideoModule;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 581
    iget-object v0, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    #calls: Lcom/android/camera/VideoModule;->startPreview()V
    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$2300(Lcom/android/camera/VideoModule;)V

    .line 583
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    #getter for: Lcom/android/camera/VideoModule;->mOnResumeTime:J
    invoke-static {v2}, Lcom/android/camera/VideoModule;->access$2400(Lcom/android/camera/VideoModule;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    #getter for: Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$2500(Lcom/android/camera/VideoModule;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 595
    :sswitch_8
    iget-object v0, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    #calls: Lcom/android/camera/VideoModule;->switchCamera()V
    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$2600(Lcom/android/camera/VideoModule;)V

    goto/16 :goto_0

    .line 600
    :sswitch_9
    iget-object v0, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    #getter for: Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$500(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->animateSwitchCamera()V

    .line 603
    iget-object v0, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/VideoModule;->mSwitchingCamera:Z
    invoke-static {v0, v1}, Lcom/android/camera/VideoModule;->access$2202(Lcom/android/camera/VideoModule;Z)Z

    goto/16 :goto_0

    .line 608
    :sswitch_a
    iget-object v0, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    #getter for: Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$500(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    goto/16 :goto_0

    .line 613
    :sswitch_b
    iget-object v0, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    #getter for: Lcom/android/camera/VideoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;
    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$2700(Lcom/android/camera/VideoModule;)Lcom/android/camera/ui/CameraLeftBar;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraLeftBar;->updateGpsIndicator(I)V

    goto/16 :goto_0

    .line 617
    :sswitch_c
    iget-object v0, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    #calls: Lcom/android/camera/VideoModule;->updateOverrideSetting()V
    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$2800(Lcom/android/camera/VideoModule;)V

    goto/16 :goto_0

    .line 620
    :sswitch_d
    iget-object v0, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/VideoModule;->removeTopLevelPopup()Z

    goto/16 :goto_0

    .line 625
    :sswitch_e
    iget-object v0, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    #getter for: Lcom/android/camera/VideoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;
    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$2900(Lcom/android/camera/VideoModule;)Lcom/android/camera/PreferenceGroup;

    move-result-object v0

    const-string v1, "pref_camera_secure_box_key"

    const-string v2, "0"

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 626
    iget-object v0, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/VideoModule;->removeTopLevelPopup()Z

    goto/16 :goto_0

    .line 542
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_7
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
        0x6 -> :sswitch_3
        0x7 -> :sswitch_0
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xf -> :sswitch_4
        0x10 -> :sswitch_2
        0x11 -> :sswitch_1
        0x64 -> :sswitch_d
        0x65 -> :sswitch_e
    .end sparse-switch
.end method
