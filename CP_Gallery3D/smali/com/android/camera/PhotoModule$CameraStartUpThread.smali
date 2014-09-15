.class Lcom/android/camera/PhotoModule$CameraStartUpThread;
.super Ljava/lang/Thread;
.source "PhotoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraStartUpThread"
.end annotation


# instance fields
.field private volatile mCancelled:Z

.field final synthetic this$0:Lcom/android/camera/PhotoModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .parameter

    .prologue
    .line 552
    iput-object p1, p0, Lcom/android/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 552
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule$CameraStartUpThread;-><init>(Lcom/android/camera/PhotoModule;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 556
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule$CameraStartUpThread;->mCancelled:Z

    .line 557
    return-void
.end method

.method public run()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 576
    :try_start_0
    iget-boolean v2, p0, Lcom/android/camera/PhotoModule$CameraStartUpThread;->mCancelled:Z

    if-eqz v2, :cond_0

    .line 577
    iget-object v2, p0, Lcom/android/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/android/camera/PhotoModule;

    const/4 v3, 0x0

    #setter for: Lcom/android/camera/PhotoModule;->isTaskRunning:Z
    invoke-static {v2, v3}, Lcom/android/camera/PhotoModule;->access$602(Lcom/android/camera/PhotoModule;Z)Z

    .line 634
    :goto_0
    return-void

    .line 580
    :cond_0
    iget-object v2, p0, Lcom/android/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/android/camera/PhotoModule;

    iget-object v3, p0, Lcom/android/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mCameraId:I
    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$900(Lcom/android/camera/PhotoModule;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/camera/Util;->openCamera(Landroid/app/Activity;I)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v3

    #setter for: Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;
    invoke-static {v2, v3}, Lcom/android/camera/PhotoModule;->access$702(Lcom/android/camera/PhotoModule;Lcom/android/camera/CameraManager$CameraProxy;)Lcom/android/camera/CameraManager$CameraProxy;

    .line 582
    iget-object v2, p0, Lcom/android/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/android/camera/PhotoModule;

    iget-object v3, p0, Lcom/android/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$700(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    #setter for: Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2, v3}, Lcom/android/camera/PhotoModule;->access$1002(Lcom/android/camera/PhotoModule;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    .line 585
    iget-object v2, p0, Lcom/android/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/android/camera/PhotoModule;

    iget-object v2, v2, Lcom/android/camera/PhotoModule;->mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

    invoke-virtual {v2}, Landroid/os/ConditionVariable;->block()V

    .line 587
    iget-object v2, p0, Lcom/android/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/android/camera/PhotoModule;

    #calls: Lcom/android/camera/PhotoModule;->initializeCapabilities()V
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$1100(Lcom/android/camera/PhotoModule;)V

    .line 589
    iget-object v2, p0, Lcom/android/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/android/camera/PhotoModule;

    #calls: Lcom/android/camera/PhotoModule;->initializeFocusManager()V
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$1200(Lcom/android/camera/PhotoModule;)V

    .line 590
    iget-boolean v2, p0, Lcom/android/camera/PhotoModule$CameraStartUpThread;->mCancelled:Z

    if-eqz v2, :cond_1

    .line 591
    iget-object v2, p0, Lcom/android/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/android/camera/PhotoModule;

    const/4 v3, 0x0

    #setter for: Lcom/android/camera/PhotoModule;->isTaskRunning:Z
    invoke-static {v2, v3}, Lcom/android/camera/PhotoModule;->access$602(Lcom/android/camera/PhotoModule;Z)Z
    :try_end_0
    .catch Lcom/android/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/camera/CameraDisabledException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 629
    :catch_0
    move-exception v0

    .line 630
    .local v0, e:Lcom/android/camera/CameraHardwareException;
    iget-object v2, p0, Lcom/android/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$1400(Lcom/android/camera/PhotoModule;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 595
    .end local v0           #e:Lcom/android/camera/CameraHardwareException;
    :cond_1
    :try_start_1
    const-string v2, "CAM_PhotoModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CameraStartUpThread--------mParameters = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$1000(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    iget-object v2, p0, Lcom/android/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/android/camera/PhotoModule;

    const/4 v3, -0x1

    #calls: Lcom/android/camera/PhotoModule;->setCameraParameters(I)V
    invoke-static {v2, v3}, Lcom/android/camera/PhotoModule;->access$1300(Lcom/android/camera/PhotoModule;I)V

    .line 599
    iget-object v2, p0, Lcom/android/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$1400(Lcom/android/camera/PhotoModule;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 600
    iget-boolean v2, p0, Lcom/android/camera/PhotoModule$CameraStartUpThread;->mCancelled:Z

    if-eqz v2, :cond_2

    .line 601
    iget-object v2, p0, Lcom/android/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/android/camera/PhotoModule;

    const/4 v3, 0x0

    #setter for: Lcom/android/camera/PhotoModule;->isTaskRunning:Z
    invoke-static {v2, v3}, Lcom/android/camera/PhotoModule;->access$602(Lcom/android/camera/PhotoModule;Z)Z
    :try_end_1
    .catch Lcom/android/camera/CameraHardwareException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/camera/CameraDisabledException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 631
    :catch_1
    move-exception v0

    .line 632
    .local v0, e:Lcom/android/camera/CameraDisabledException;
    iget-object v2, p0, Lcom/android/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$1400(Lcom/android/camera/PhotoModule;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 606
    .end local v0           #e:Lcom/android/camera/CameraDisabledException;
    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/android/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$1000(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 607
    .local v1, size:Landroid/hardware/Camera$Size;
    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    const/16 v3, 0x140

    if-eq v2, v3, :cond_3

    iget v2, v1, Landroid/hardware/Camera$Size;->height:I

    const/16 v3, 0xf0

    if-ne v2, v3, :cond_5

    .line 609
    :cond_3
    iget-object v2, p0, Lcom/android/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/android/camera/PhotoModule;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    #calls: Lcom/android/camera/PhotoModule;->setNSLandBurstmodes(ZZZ)V
    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/PhotoModule;->access$1500(Lcom/android/camera/PhotoModule;ZZZ)V

    .line 610
    iget-object v2, p0, Lcom/android/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/android/camera/PhotoModule;

    #calls: Lcom/android/camera/PhotoModule;->startPreview()V
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$1600(Lcom/android/camera/PhotoModule;)V

    .line 611
    iget-object v2, p0, Lcom/android/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mDesiredPreviewWidth:I
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$1700(Lcom/android/camera/PhotoModule;)I

    move-result v2

    if-eq v2, v6, :cond_4

    iget-object v2, p0, Lcom/android/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mDesiredPreviewHeight:I
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$1800(Lcom/android/camera/PhotoModule;)I

    move-result v2

    if-eq v2, v6, :cond_4

    .line 612
    iget-object v2, p0, Lcom/android/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$1400(Lcom/android/camera/PhotoModule;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 613
    iget-object v2, p0, Lcom/android/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$1400(Lcom/android/camera/PhotoModule;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x1e

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 624
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/android/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$1400(Lcom/android/camera/PhotoModule;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 625
    iget-object v2, p0, Lcom/android/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    #setter for: Lcom/android/camera/PhotoModule;->mOnResumeTime:J
    invoke-static {v2, v3, v4}, Lcom/android/camera/PhotoModule;->access$1902(Lcom/android/camera/PhotoModule;J)J

    .line 626
    iget-object v2, p0, Lcom/android/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$1400(Lcom/android/camera/PhotoModule;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 627
    iget-object v2, p0, Lcom/android/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/android/camera/PhotoModule;

    const/4 v3, 0x0

    #setter for: Lcom/android/camera/PhotoModule;->isTaskRunning:Z
    invoke-static {v2, v3}, Lcom/android/camera/PhotoModule;->access$602(Lcom/android/camera/PhotoModule;Z)Z

    .line 628
    iget-object v2, p0, Lcom/android/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/android/camera/PhotoModule;

    const/4 v3, 0x0

    #setter for: Lcom/android/camera/PhotoModule;->mDiedTimes:I
    invoke-static {v2, v3}, Lcom/android/camera/PhotoModule;->access$2002(Lcom/android/camera/PhotoModule;I)I

    goto/16 :goto_0

    .line 617
    :cond_5
    iget-object v2, p0, Lcom/android/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/android/camera/PhotoModule;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    #calls: Lcom/android/camera/PhotoModule;->setNSLandBurstmodes(ZZZ)V
    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/PhotoModule;->access$1500(Lcom/android/camera/PhotoModule;ZZZ)V

    .line 618
    iget-object v2, p0, Lcom/android/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/android/camera/PhotoModule;

    #calls: Lcom/android/camera/PhotoModule;->startPreview()V
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$1600(Lcom/android/camera/PhotoModule;)V

    .line 619
    iget-object v2, p0, Lcom/android/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$1400(Lcom/android/camera/PhotoModule;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 620
    iget-object v2, p0, Lcom/android/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$1400(Lcom/android/camera/PhotoModule;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x1e

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2
    .catch Lcom/android/camera/CameraHardwareException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/camera/CameraDisabledException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1
.end method
