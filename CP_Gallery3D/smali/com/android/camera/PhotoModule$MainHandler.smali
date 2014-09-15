.class Lcom/android/camera/PhotoModule$MainHandler;
.super Landroid/os/Handler;
.source "PhotoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .parameter

    .prologue
    .line 641
    iput-object p1, p0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 641
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule$MainHandler;-><init>(Lcom/android/camera/PhotoModule;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 18
    .parameter "msg"

    .prologue
    .line 644
    const-string v1, "CAM_PhotoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage what="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 1094
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 647
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    const v3, 0x7f0e030a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x7d0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v5}, Lcom/android/camera/PhotoModule;->access$800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraActivity;->getRotateOrientation()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/CameraActivity;->getOrientationCompensation()I

    move-result v6

    invoke-virtual/range {v1 .. v6}, Lcom/android/camera/CameraActivity;->showToastView(Ljava/lang/String;JII)V

    goto :goto_0

    .line 651
    :sswitch_2
    const-string v1, "CAM_PhotoModule"

    const-string v2, "last saving image is timeout"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    const/4 v2, 0x0

    #setter for: Lcom/android/camera/PhotoModule;->mIsImageSaving:Z
    invoke-static {v1, v2}, Lcom/android/camera/PhotoModule;->access$2102(Lcom/android/camera/PhotoModule;Z)Z

    goto :goto_0

    .line 656
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mPaused:Z
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$2200(Lcom/android/camera/PhotoModule;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 659
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mCameraState:I
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$2300(Lcom/android/camera/PhotoModule;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 660
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    #setter for: Lcom/android/camera/PhotoModule;->mEnterNightshot:Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/android/camera/PhotoModule;->access$2402(Lcom/android/camera/PhotoModule;Ljava/lang/String;)Ljava/lang/String;

    .line 661
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    const/4 v2, 0x1

    #setter for: Lcom/android/camera/PhotoModule;->mPostponeNightshot:Z
    invoke-static {v1, v2}, Lcom/android/camera/PhotoModule;->access$2502(Lcom/android/camera/PhotoModule;Z)Z

    goto :goto_0

    .line 663
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$2600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PreferenceGroup;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$2700(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ComboPreferences;

    move-result-object v2

    const-string v3, "pref_camera_scene_detect_key"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v4

    const v5, 0x7f0e02af

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/CameraSettings;->getPreferenceValue(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 671
    .local v17, sceneDetect:Ljava/lang/String;
    const-string v1, "on"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 672
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    .line 673
    .local v11, enterNightshot:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #calls: Lcom/android/camera/PhotoModule;->AutoSwitchToNightShot(Ljava/lang/String;)V
    invoke-static {v1, v11}, Lcom/android/camera/PhotoModule;->access$2800(Lcom/android/camera/PhotoModule;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 676
    .end local v11           #enterNightshot:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    #setter for: Lcom/android/camera/PhotoModule;->mEnterNightshot:Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/android/camera/PhotoModule;->access$2402(Lcom/android/camera/PhotoModule;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 684
    .end local v17           #sceneDetect:Ljava/lang/String;
    :sswitch_4
    const-string v1, "CAM_PhotoModule"

    const-string v2, ">>>>>>>force disconnect camera "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #calls: Lcom/android/camera/PhotoModule;->closeCamera()V
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$2900(Lcom/android/camera/PhotoModule;)V

    .line 686
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/camera/CameraActivity;->mLaunchGalleryed:Z

    goto/16 :goto_0

    .line 690
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$700(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 691
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$700(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v2, v1}, Lcom/android/camera/CameraManager$CameraProxy;->registerOneShotPreivewFrame(Landroid/hardware/Camera$PreviewCallback;)V

    goto/16 :goto_0

    .line 698
    :sswitch_6
    const-string v1, "CAM_PhotoModule"

    const-string v2, "----do msg  CHANGE_PREVIEW_RENDER_SIZE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/ActivityBase;->cover:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 700
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/ActivityBase;->cover:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 702
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mDesiredPreviewWidth:I
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$1700(Lcom/android/camera/PhotoModule;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mDesiredPreviewHeight:I
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$1800(Lcom/android/camera/PhotoModule;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/CameraActivity;->resizeForCameraSnail(II)V

    .line 703
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mGridLine:Lcom/android/camera/ui/GridLine;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$3000(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ui/GridLine;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mDesiredPreviewWidth:I
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$1700(Lcom/android/camera/PhotoModule;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mDesiredPreviewHeight:I
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$1800(Lcom/android/camera/PhotoModule;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ui/GridLine;->setPreviewParameters(II)V

    .line 704
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mDesiredPreviewWidth:I
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$1700(Lcom/android/camera/PhotoModule;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mDesiredPreviewHeight:I
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$1800(Lcom/android/camera/PhotoModule;)I

    move-result v3

    #calls: Lcom/android/camera/PhotoModule;->updateCameraScreenNailSize(II)V
    invoke-static {v1, v2, v3}, Lcom/android/camera/PhotoModule;->access$3100(Lcom/android/camera/PhotoModule;II)V

    goto/16 :goto_0

    .line 708
    :sswitch_7
    const-string v1, "CAM_PhotoModule"

    const-string v2, "----do msg  REOPEN_PREVIEW_IF_PREVIEW_SIZE_CHANGE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #calls: Lcom/android/camera/PhotoModule;->stopPreview()V
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$3200(Lcom/android/camera/PhotoModule;)V

    .line 710
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    const/4 v2, 0x4

    #calls: Lcom/android/camera/PhotoModule;->setCameraParameters(I)V
    invoke-static {v1, v2}, Lcom/android/camera/PhotoModule;->access$1300(Lcom/android/camera/PhotoModule;I)V

    .line 711
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #calls: Lcom/android/camera/PhotoModule;->syncOpenPreview()V
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$3300(Lcom/android/camera/PhotoModule;)V

    .line 713
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    invoke-virtual {v1}, Lcom/android/camera/PhotoModule;->reStartSelfCameraIfPreviewSizeChange()V

    .line 714
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    invoke-virtual {v1}, Lcom/android/camera/PhotoModule;->setPreviewFrameLayoutAspectRatio()V

    goto/16 :goto_0

    .line 721
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    const/4 v2, 0x1

    #calls: Lcom/android/camera/PhotoModule;->setupPreview(Z)V
    invoke-static {v1, v2}, Lcom/android/camera/PhotoModule;->access$3400(Lcom/android/camera/PhotoModule;Z)V

    goto/16 :goto_0

    .line 725
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    goto/16 :goto_0

    .line 731
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #calls: Lcom/android/camera/PhotoModule;->initializeFirstTime()V
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$3500(Lcom/android/camera/PhotoModule;)V

    goto/16 :goto_0

    .line 736
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    const/4 v2, 0x0

    #calls: Lcom/android/camera/PhotoModule;->setCameraParametersWhenIdle(I)V
    invoke-static {v1, v2}, Lcom/android/camera/PhotoModule;->access$3600(Lcom/android/camera/PhotoModule;I)V

    goto/16 :goto_0

    .line 746
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mDisplayRotation:I
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$3700(Lcom/android/camera/PhotoModule;)I

    move-result v2

    if-eq v1, v2, :cond_4

    .line 747
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #calls: Lcom/android/camera/PhotoModule;->setDisplayOrientation()V
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$3800(Lcom/android/camera/PhotoModule;)V

    .line 749
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mOnResumeTime:J
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$1900(Lcom/android/camera/PhotoModule;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1388

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 750
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$1400(Lcom/android/camera/PhotoModule;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 756
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #calls: Lcom/android/camera/PhotoModule;->showTapToFocusToast()V
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$3900(Lcom/android/camera/PhotoModule;)V

    goto/16 :goto_0

    .line 761
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #calls: Lcom/android/camera/PhotoModule;->switchCamera()V
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$4000(Lcom/android/camera/PhotoModule;)V

    goto/16 :goto_0

    .line 766
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v1, Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->animateSwitchCamera()V

    goto/16 :goto_0

    .line 773
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #calls: Lcom/android/camera/PhotoModule;->initializeAfterCameraOpen()V
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$4100(Lcom/android/camera/PhotoModule;)V

    goto/16 :goto_0

    .line 787
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/camera/PhotoModule;->mCameraStartUpThread:Lcom/android/camera/PhotoModule$CameraStartUpThread;

    .line 788
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/ActivityBase;->cover:Landroid/view/View;

    if-eqz v1, :cond_5

    .line 789
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/ActivityBase;->cover:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 791
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    const/4 v2, 0x1

    #calls: Lcom/android/camera/PhotoModule;->setCameraState(I)V
    invoke-static {v1, v2}, Lcom/android/camera/PhotoModule;->access$4200(Lcom/android/camera/PhotoModule;I)V

    .line 792
    sget-boolean v1, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-nez v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$700(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 794
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$700(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mCameraSurfaceHolder:Landroid/view/SurfaceHolder;
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$4300(Lcom/android/camera/PhotoModule;)Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewDisplayAsync(Landroid/view/SurfaceHolder;)V

    .line 796
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    invoke-virtual {v1}, Lcom/android/camera/PhotoModule;->startFaceDetection()V

    .line 802
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    invoke-virtual {v1}, Lcom/android/camera/PhotoModule;->loadVendorStatisPlugin()V

    .line 804
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #calls: Lcom/android/camera/PhotoModule;->updateCaptureMode()V
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$4400(Lcom/android/camera/PhotoModule;)V

    .line 805
    invoke-static {}, Lcom/android/camera/ProductConfig;->isSupportedBootAnimation()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 806
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->TriggerBootAnimation()V

    goto/16 :goto_0

    .line 814
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/camera/PhotoModule;->mCameraStartUpThread:Lcom/android/camera/PhotoModule$CameraStartUpThread;

    .line 815
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    const/4 v2, 0x1

    #setter for: Lcom/android/camera/PhotoModule;->mOpenCameraFail:Z
    invoke-static {v1, v2}, Lcom/android/camera/PhotoModule;->access$4502(Lcom/android/camera/PhotoModule;Z)Z

    .line 816
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    const v2, 0x7f0e014c

    invoke-static {v1, v2}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    goto/16 :goto_0

    .line 821
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/camera/PhotoModule;->mCameraStartUpThread:Lcom/android/camera/PhotoModule$CameraStartUpThread;

    .line 822
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    const/4 v2, 0x1

    #setter for: Lcom/android/camera/PhotoModule;->mCameraDisabled:Z
    invoke-static {v1, v2}, Lcom/android/camera/PhotoModule;->access$4602(Lcom/android/camera/PhotoModule;Z)Z

    .line 823
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    const v2, 0x7f0e014d

    invoke-static {v1, v2}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    goto/16 :goto_0

    .line 827
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$4700(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ui/CameraLeftBar;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 828
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$4700(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ui/CameraLeftBar;

    move-result-object v1

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/CameraLeftBar;->updateGpsIndicator(I)V

    goto/16 :goto_0

    .line 830
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$1400(Lcom/android/camera/PhotoModule;)Landroid/os/Handler;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$1400(Lcom/android/camera/PhotoModule;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xd

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 835
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mGridLine:Lcom/android/camera/ui/GridLine;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$3000(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ui/GridLine;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 838
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$2600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PreferenceGroup;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$2700(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ComboPreferences;

    move-result-object v2

    const-string v3, "pref_camera_grid_line_key"

    const-string v4, "0"

    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/CameraSettings;->getPreferenceValue(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 841
    .local v12, gridLineValue:Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 842
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mGridLine:Lcom/android/camera/ui/GridLine;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$3000(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ui/GridLine;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/GridLine;->setVisibility(I)V

    goto/16 :goto_0

    .line 844
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mGridLine:Lcom/android/camera/ui/GridLine;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$3000(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ui/GridLine;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/GridLine;->setVisibility(I)V

    goto/16 :goto_0

    .line 848
    .end local v12           #gridLineValue:Ljava/lang/String;
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$1400(Lcom/android/camera/PhotoModule;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 849
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    const/4 v2, 0x0

    #setter for: Lcom/android/camera/PhotoModule;->mIsImageSaving:Z
    invoke-static {v1, v2}, Lcom/android/camera/PhotoModule;->access$2102(Lcom/android/camera/PhotoModule;Z)Z

    .line 850
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mImageSaver:Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$4800(Lcom/android/camera/PhotoModule;)Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 851
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mImageSaver:Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$4800(Lcom/android/camera/PhotoModule;)Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;->updateThumbnail()V

    .line 853
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/camera/CameraActivity;->mDelayLaunchGalleyr3d:Z

    if-eqz v1, :cond_a

    .line 854
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/camera/CameraActivity;->mDelayLaunchGalleyr3d:Z

    .line 855
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->LaunchGallery()V

    .line 857
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mCurrentEffectModule:Lcom/android/camera/CameraEffectModule;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$4900(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraEffectModule;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 858
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mCurrentEffectModule:Lcom/android/camera/CameraEffectModule;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$4900(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraEffectModule;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/CameraEffectModule;->JpegAvailable()V

    goto/16 :goto_0

    .line 863
    :sswitch_17
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mGifCapture:Lcom/android/camera/GifCapture;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$5000(Lcom/android/camera/PhotoModule;)Lcom/android/camera/GifCapture;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/ProductConfig;->isSupportGifCapture()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 864
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->showSwitcher()V

    .line 865
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$4700(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ui/CameraLeftBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/CameraLeftBar;->setVisibility(I)V

    .line 866
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mFaceEffectBtn:Lcom/android/camera/ui/MyTextPreferenceButton;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$5100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ui/MyTextPreferenceButton;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 868
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mFocusAreaIndicator:Lcom/android/camera/ui/FocusIndicatorRotateLayout;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$5200(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->setBlockFocus(Z)V

    .line 869
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    const/4 v2, 0x0

    #calls: Lcom/android/camera/PhotoModule;->showGifCapturingUI(Z)V
    invoke-static {v1, v2}, Lcom/android/camera/PhotoModule;->access$5300(Lcom/android/camera/PhotoModule;Z)V

    .line 870
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    invoke-virtual {v1}, Lcom/android/camera/PhotoModule;->isCaptureIntent()Z

    move-result v1

    if-nez v1, :cond_b

    .line 871
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mGifCapture:Lcom/android/camera/GifCapture;
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$5000(Lcom/android/camera/PhotoModule;)Lcom/android/camera/GifCapture;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/GifCapture;->getThumbnail()Lcom/android/camera/Thumbnail;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/CameraActivity;->updateThumbnail(Lcom/android/camera/Thumbnail;Z)V

    .line 874
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$1400(Lcom/android/camera/PhotoModule;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 875
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$1400(Lcom/android/camera/PhotoModule;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1b

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 877
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$1400(Lcom/android/camera/PhotoModule;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x2d

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 883
    :sswitch_18
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mGifCapture:Lcom/android/camera/GifCapture;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$5000(Lcom/android/camera/PhotoModule;)Lcom/android/camera/GifCapture;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/ProductConfig;->isSupportGifCapture()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 884
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->showSwitcher()V

    .line 885
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mCameraLeftBar:Lcom/android/camera/ui/CameraLeftBar;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$4700(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ui/CameraLeftBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/CameraLeftBar;->setVisibility(I)V

    .line 886
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mFaceEffectBtn:Lcom/android/camera/ui/MyTextPreferenceButton;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$5100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ui/MyTextPreferenceButton;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 888
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mFocusAreaIndicator:Lcom/android/camera/ui/FocusIndicatorRotateLayout;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$5200(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->setBlockFocus(Z)V

    .line 889
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    const/4 v2, 0x0

    #calls: Lcom/android/camera/PhotoModule;->showGifCapturingUI(Z)V
    invoke-static {v1, v2}, Lcom/android/camera/PhotoModule;->access$5300(Lcom/android/camera/PhotoModule;Z)V

    .line 890
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mGifCapture:Lcom/android/camera/GifCapture;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$5000(Lcom/android/camera/PhotoModule;)Lcom/android/camera/GifCapture;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/GifCapture;->mGuageIndicatorContainer:Lcom/android/camera/ui/GuageIndicatorContainer;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 891
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$1400(Lcom/android/camera/PhotoModule;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 892
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$1400(Lcom/android/camera/PhotoModule;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x2d

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 904
    :sswitch_19
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mGifCapture:Lcom/android/camera/GifCapture;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$5000(Lcom/android/camera/PhotoModule;)Lcom/android/camera/GifCapture;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 905
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mGifCapture:Lcom/android/camera/GifCapture;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$5000(Lcom/android/camera/PhotoModule;)Lcom/android/camera/GifCapture;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/GifCapture;->mGuageIndicatorContainer:Lcom/android/camera/ui/GuageIndicatorContainer;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 911
    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mGifCapture:Lcom/android/camera/GifCapture;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$5000(Lcom/android/camera/PhotoModule;)Lcom/android/camera/GifCapture;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/GifCapture;->mGuageIndicatorContainer:Lcom/android/camera/ui/GuageIndicatorContainer;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/GuageIndicatorContainer;->setValue(I)V

    goto/16 :goto_0

    .line 915
    :sswitch_1b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->enterFocusSeek:Z
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$5400(Lcom/android/camera/PhotoModule;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mFocusSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$5500(Lcom/android/camera/PhotoModule;)Landroid/widget/SeekBar;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 916
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mFocusSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$5500(Lcom/android/camera/PhotoModule;)Landroid/widget/SeekBar;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_0

    .line 921
    :sswitch_1c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->enterFocusSeek:Z
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$5400(Lcom/android/camera/PhotoModule;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mFocusSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$5500(Lcom/android/camera/PhotoModule;)Landroid/widget/SeekBar;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 922
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mFocusSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$5500(Lcom/android/camera/PhotoModule;)Landroid/widget/SeekBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_0

    .line 928
    :sswitch_1d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mTakePhotoBtn:Lcom/android/camera/ShutterButton;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$5600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ShutterButton;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/TwoStateImageView;->setEnabled(Z)V

    goto/16 :goto_0

    .line 932
    :sswitch_1e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #calls: Lcom/android/camera/PhotoModule;->updateOverrideSetting()V
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$5700(Lcom/android/camera/PhotoModule;)V

    goto/16 :goto_0

    .line 935
    :sswitch_1f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mSelfCamera:Lcom/android/camera/SelfCamera;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$5800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/SelfCamera;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 936
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mSelfCamera:Lcom/android/camera/SelfCamera;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$5800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/SelfCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/SelfCamera;->pauseShutterGuide()V

    goto/16 :goto_0

    .line 940
    :sswitch_20
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mSelfCamera:Lcom/android/camera/SelfCamera;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$5800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/SelfCamera;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 941
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mSelfCamera:Lcom/android/camera/SelfCamera;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$5800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/SelfCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/SelfCamera;->resumeShutterGuide()V

    goto/16 :goto_0

    .line 945
    :sswitch_21
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 946
    .local v8, bBlock:Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mFocusAreaIndicator:Lcom/android/camera/ui/FocusIndicatorRotateLayout;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$5200(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 947
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mFocusAreaIndicator:Lcom/android/camera/ui/FocusIndicatorRotateLayout;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$5200(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->setBlockFocus(Z)V

    goto/16 :goto_0

    .line 952
    .end local v8           #bBlock:Z
    :sswitch_22
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    invoke-virtual {v1}, Lcom/android/camera/PhotoModule;->removeTopLevelPopup()Z

    goto/16 :goto_0

    .line 956
    :sswitch_23
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    invoke-virtual {v1}, Lcom/android/camera/PhotoModule;->removeTopLevelPopup()Z

    goto/16 :goto_0

    .line 960
    :sswitch_24
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    const-string v2, "0"

    iput-object v2, v1, Lcom/android/camera/CameraActivity;->mCurrentSecureBoxValue:Ljava/lang/String;

    .line 962
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$2600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PreferenceGroup;

    move-result-object v1

    const-string v2, "pref_camera_secure_box_key"

    const-string v3, "0"

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 964
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    invoke-virtual {v1}, Lcom/android/camera/PhotoModule;->removeTopLevelPopup()Z

    goto/16 :goto_0

    .line 969
    :sswitch_25
    new-instance v1, Lcom/android/camera/ui/RotateTextToast;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    const v3, 0x7f0e0183

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mOrientationCompensation:I
    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$5900(Lcom/android/camera/PhotoModule;)I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v1}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 971
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    const-string v2, "0"

    iput-object v2, v1, Lcom/android/camera/CameraActivity;->mCurrentSecureBoxValue:Ljava/lang/String;

    .line 973
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$2600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PreferenceGroup;

    move-result-object v1

    const-string v2, "pref_camera_secure_box_key"

    const-string v3, "0"

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 975
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    invoke-virtual {v1}, Lcom/android/camera/PhotoModule;->removeTopLevelPopup()Z

    goto/16 :goto_0

    .line 979
    :sswitch_26
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #calls: Lcom/android/camera/PhotoModule;->animateFlash()V
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$6000(Lcom/android/camera/PhotoModule;)V

    goto/16 :goto_0

    .line 983
    :sswitch_27
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #calls: Lcom/android/camera/PhotoModule;->hideFocusIndicator()V
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$6100(Lcom/android/camera/PhotoModule;)V

    goto/16 :goto_0

    .line 986
    :sswitch_28
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #calls: Lcom/android/camera/PhotoModule;->showFocusIndicator()V
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$6200(Lcom/android/camera/PhotoModule;)V

    goto/16 :goto_0

    .line 989
    :sswitch_29
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$6300(Lcom/android/camera/PhotoModule;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 990
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mTakePhotoBtn:Lcom/android/camera/ShutterButton;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$5600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ShutterButton;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 994
    :sswitch_2a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    const v2, 0x7f0e02d2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 995
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    const v3, 0x7f0e02d2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1000
    :sswitch_2b
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Lcom/android/camera/EffectSmileShot$YLFace;

    move-object v15, v1

    check-cast v15, [Lcom/android/camera/EffectSmileShot$YLFace;

    .line 1001
    .local v15, myfaces:[Lcom/android/camera/EffectSmileShot$YLFace;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mFaceView:Lcom/android/camera/ui/FaceView;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$6400(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ui/FaceView;

    move-result-object v1

    invoke-virtual {v1, v15}, Lcom/android/camera/ui/FaceView;->setSmileFaces([Lcom/android/camera/EffectSmileShot$YLFace;)V

    .line 1002
    if-eqz v15, :cond_11

    array-length v1, v15

    if-lez v1, :cond_11

    .line 1003
    const/4 v14, 0x1

    .line 1004
    .local v14, isAllSmile:Z
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1
    array-length v1, v15

    if-ge v13, v1, :cond_d

    .line 1005
    aget-object v1, v15, v13

    invoke-virtual {v1}, Lcom/android/camera/EffectSmileShot$YLFace;->getSmileDegree()I

    move-result v1

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_c

    .line 1006
    const/4 v14, 0x0

    .line 1008
    :cond_c
    const-string v1, "CAM_PhotoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Face "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Smile Degree:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v15, v13

    invoke-virtual {v3}, Lcom/android/camera/EffectSmileShot$YLFace;->getSmileDegree()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 1011
    :cond_d
    const/4 v1, 0x1

    if-ne v1, v14, :cond_10

    .line 1012
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 1013
    .local v9, currentTime:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->timeLastSmileShot:J
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$6500(Lcom/android/camera/PhotoModule;)J

    move-result-wide v1

    sub-long v1, v9, v1

    const-wide/16 v3, 0xbb8

    cmp-long v1, v1, v3

    if-lez v1, :cond_f

    .line 1014
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->timeSmileBegin:J
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$6600(Lcom/android/camera/PhotoModule;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_e

    .line 1015
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #setter for: Lcom/android/camera/PhotoModule;->timeSmileBegin:J
    invoke-static {v1, v9, v10}, Lcom/android/camera/PhotoModule;->access$6602(Lcom/android/camera/PhotoModule;J)J

    .line 1017
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->timeSmileBegin:J
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$6600(Lcom/android/camera/PhotoModule;)J

    move-result-wide v1

    sub-long v1, v9, v1

    const-wide/16 v3, 0x1f4

    cmp-long v1, v1, v3

    if-lez v1, :cond_f

    .line 1019
    const-string v1, "CAM_PhotoModule"

    const-string v2, "SmileShot removeTopPopUp()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    invoke-virtual {v1}, Lcom/android/camera/PhotoModule;->removeTopLevelPopup()Z

    .line 1022
    const-string v1, "CAM_PhotoModule"

    const-string v2, "SmileShot doSnap begin"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$6700(Lcom/android/camera/PhotoModule;)Lcom/android/camera/FocusOverlayManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->doSnap()V

    .line 1024
    const-string v1, "CAM_PhotoModule"

    const-string v2, "SmileShot doSnap end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #setter for: Lcom/android/camera/PhotoModule;->timeLastSmileShot:J
    invoke-static {v1, v9, v10}, Lcom/android/camera/PhotoModule;->access$6502(Lcom/android/camera/PhotoModule;J)J

    .line 1026
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    const-wide/16 v2, 0x0

    #setter for: Lcom/android/camera/PhotoModule;->timeSmileBegin:J
    invoke-static {v1, v2, v3}, Lcom/android/camera/PhotoModule;->access$6602(Lcom/android/camera/PhotoModule;J)J

    .line 1038
    .end local v9           #currentTime:J
    .end local v13           #i:I
    .end local v14           #isAllSmile:Z
    .end local v15           #myfaces:[Lcom/android/camera/EffectSmileShot$YLFace;
    :cond_f
    :goto_2
    :sswitch_2c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mSelfCamera:Lcom/android/camera/SelfCamera;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$5800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/SelfCamera;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1039
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mSelfCamera:Lcom/android/camera/SelfCamera;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$5800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/SelfCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/SelfCamera;->cancleFaceDetect()V

    goto/16 :goto_0

    .line 1030
    .restart local v13       #i:I
    .restart local v14       #isAllSmile:Z
    .restart local v15       #myfaces:[Lcom/android/camera/EffectSmileShot$YLFace;
    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    const-wide/16 v2, 0x0

    #setter for: Lcom/android/camera/PhotoModule;->timeSmileBegin:J
    invoke-static {v1, v2, v3}, Lcom/android/camera/PhotoModule;->access$6602(Lcom/android/camera/PhotoModule;J)J

    goto :goto_2

    .line 1034
    .end local v13           #i:I
    .end local v14           #isAllSmile:Z
    :cond_11
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    const-wide/16 v2, 0x0

    #setter for: Lcom/android/camera/PhotoModule;->timeSmileBegin:J
    invoke-static {v1, v2, v3}, Lcom/android/camera/PhotoModule;->access$6602(Lcom/android/camera/PhotoModule;J)J

    goto :goto_2

    .line 1044
    .end local v15           #myfaces:[Lcom/android/camera/EffectSmileShot$YLFace;
    :sswitch_2d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/graphics/Rect;

    .line 1045
    .local v16, rect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/ActivityBase;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 1046
    .local v7, Params:Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, v16

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1047
    move-object/from16 v0, v16

    iget v1, v0, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iput v1, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1048
    move-object/from16 v0, v16

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1049
    move-object/from16 v0, v16

    iget v1, v0, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    iput v1, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1050
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/ActivityBase;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    invoke-virtual {v1, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 1055
    .end local v7           #Params:Landroid/widget/FrameLayout$LayoutParams;
    .end local v16           #rect:Landroid/graphics/Rect;
    :sswitch_2e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    #calls: Lcom/android/camera/PhotoModule;->onAfterEffectProcess()V
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$6800(Lcom/android/camera/PhotoModule;)V

    goto/16 :goto_0

    .line 1065
    :sswitch_2f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    #calls: Lcom/android/camera/PhotoModule;->saveImageData([BII)V
    invoke-static {v2, v1, v3, v4}, Lcom/android/camera/PhotoModule;->access$6900(Lcom/android/camera/PhotoModule;[BII)V

    goto/16 :goto_0

    .line 1077
    :sswitch_30
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    #calls: Lcom/android/camera/PhotoModule;->previewCaptureImage([BII)V
    invoke-static {v2, v1, v3, v4}, Lcom/android/camera/PhotoModule;->access$7000(Lcom/android/camera/PhotoModule;[BII)V

    goto/16 :goto_0

    .line 1080
    :sswitch_31
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    const/4 v2, 0x0

    #setter for: Lcom/android/camera/PhotoModule;->mGesturesTouch:B
    invoke-static {v1, v2}, Lcom/android/camera/PhotoModule;->access$7102(Lcom/android/camera/PhotoModule;B)B

    goto/16 :goto_0

    .line 1083
    :sswitch_32
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    const/4 v2, 0x1

    #setter for: Lcom/android/camera/PhotoModule;->mGesturesTouch:B
    invoke-static {v1, v2}, Lcom/android/camera/PhotoModule;->access$7102(Lcom/android/camera/PhotoModule;B)B

    goto/16 :goto_0

    .line 1089
    :sswitch_33
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/PhotoModule$MainHandler;->this$0:Lcom/android/camera/PhotoModule;

    invoke-virtual {v1}, Lcom/android/camera/PhotoModule;->adviceChangeStoragePath()V

    goto/16 :goto_0

    .line 645
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_8
        0x2 -> :sswitch_a
        0x3 -> :sswitch_9
        0x4 -> :sswitch_b
        0x5 -> :sswitch_c
        0x6 -> :sswitch_d
        0x7 -> :sswitch_e
        0x8 -> :sswitch_f
        0x9 -> :sswitch_10
        0xa -> :sswitch_11
        0xb -> :sswitch_12
        0xc -> :sswitch_13
        0xd -> :sswitch_14
        0xe -> :sswitch_15
        0xf -> :sswitch_16
        0x10 -> :sswitch_1e
        0x11 -> :sswitch_1f
        0x12 -> :sswitch_20
        0x13 -> :sswitch_21
        0x14 -> :sswitch_26
        0x15 -> :sswitch_27
        0x16 -> :sswitch_28
        0x17 -> :sswitch_2a
        0x18 -> :sswitch_17
        0x19 -> :sswitch_1a
        0x1a -> :sswitch_1d
        0x1b -> :sswitch_19
        0x1c -> :sswitch_18
        0x1d -> :sswitch_29
        0x1e -> :sswitch_6
        0x1f -> :sswitch_2d
        0x20 -> :sswitch_2e
        0x21 -> :sswitch_2f
        0x22 -> :sswitch_5
        0x23 -> :sswitch_0
        0x24 -> :sswitch_7
        0x25 -> :sswitch_30
        0x26 -> :sswitch_31
        0x27 -> :sswitch_32
        0x28 -> :sswitch_2
        0x29 -> :sswitch_0
        0x2a -> :sswitch_1
        0x2b -> :sswitch_33
        0x2c -> :sswitch_1b
        0x2d -> :sswitch_1c
        0x4d -> :sswitch_2b
        0x64 -> :sswitch_23
        0x65 -> :sswitch_24
        0x66 -> :sswitch_25
        0x67 -> :sswitch_22
        0x3e9 -> :sswitch_11
        0x15b3 -> :sswitch_3
        0xe969 -> :sswitch_4
        0x1e240 -> :sswitch_2c
    .end sparse-switch
.end method
