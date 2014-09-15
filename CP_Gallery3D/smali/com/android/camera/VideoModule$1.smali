.class Lcom/android/camera/VideoModule$1;
.super Ljava/lang/Object;
.source "VideoModule.java"

# interfaces
.implements Lcom/android/camera/ShutterButton$OnShutterButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/VideoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/VideoModule;)V
    .locals 0
    .parameter

    .prologue
    .line 466
    iput-object p1, p0, Lcom/android/camera/VideoModule$1;->this$0:Lcom/android/camera/VideoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShutterButtonClick(Lcom/android/camera/ShutterButton;)V
    .locals 8
    .parameter "b"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 477
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f10003b

    if-ne v2, v3, :cond_0

    .line 479
    iget-object v2, p0, Lcom/android/camera/VideoModule$1;->this$0:Lcom/android/camera/VideoModule;

    #getter for: Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2}, Lcom/android/camera/VideoModule;->access$600(Lcom/android/camera/VideoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/Util;->isVideoSnapshotSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/VideoModule$1;->this$0:Lcom/android/camera/VideoModule;

    #getter for: Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z
    invoke-static {v2}, Lcom/android/camera/VideoModule;->access$700(Lcom/android/camera/VideoModule;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 480
    const-string v2, "CAM_VideoModule"

    const-string v3, "-----isVideoSnapshotSupported is true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v2, p0, Lcom/android/camera/VideoModule$1;->this$0:Lcom/android/camera/VideoModule;

    #getter for: Lcom/android/camera/VideoModule;->mSnapshotInProgress:Z
    invoke-static {v2}, Lcom/android/camera/VideoModule;->access$800(Lcom/android/camera/VideoModule;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 482
    const-string v2, "CAM_VideoModule"

    const-string v3, "-----snapshot is already in process"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_0
    :goto_0
    return-void

    .line 486
    :cond_1
    iget-object v2, p0, Lcom/android/camera/VideoModule$1;->this$0:Lcom/android/camera/VideoModule;

    #getter for: Lcom/android/camera/VideoModule;->mCameraId:I
    invoke-static {v2}, Lcom/android/camera/VideoModule;->access$900(Lcom/android/camera/VideoModule;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/VideoModule$1;->this$0:Lcom/android/camera/VideoModule;

    #getter for: Lcom/android/camera/VideoModule;->mOrientation:I
    invoke-static {v3}, Lcom/android/camera/VideoModule;->access$1000(Lcom/android/camera/VideoModule;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera/Util;->getJpegRotation(II)I

    move-result v1

    .line 487
    .local v1, rotation:I
    iget-object v2, p0, Lcom/android/camera/VideoModule$1;->this$0:Lcom/android/camera/VideoModule;

    #getter for: Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2}, Lcom/android/camera/VideoModule;->access$600(Lcom/android/camera/VideoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 488
    iget-object v2, p0, Lcom/android/camera/VideoModule$1;->this$0:Lcom/android/camera/VideoModule;

    #getter for: Lcom/android/camera/VideoModule;->mLocationManager:Lcom/android/camera/LocationManager;
    invoke-static {v2}, Lcom/android/camera/VideoModule;->access$1100(Lcom/android/camera/VideoModule;)Lcom/android/camera/LocationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 489
    .local v0, loc:Landroid/location/Location;
    iget-object v2, p0, Lcom/android/camera/VideoModule$1;->this$0:Lcom/android/camera/VideoModule;

    #getter for: Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2}, Lcom/android/camera/VideoModule;->access$600(Lcom/android/camera/VideoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/camera/Util;->setGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V

    .line 490
    iget-object v2, p0, Lcom/android/camera/VideoModule$1;->this$0:Lcom/android/camera/VideoModule;

    #getter for: Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v2}, Lcom/android/camera/VideoModule;->access$500(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/VideoModule$1;->this$0:Lcom/android/camera/VideoModule;

    #getter for: Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v3}, Lcom/android/camera/VideoModule;->access$600(Lcom/android/camera/VideoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 492
    const-string v2, "CAM_VideoModule"

    const-string v3, "Video snapshot start"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget-object v2, p0, Lcom/android/camera/VideoModule$1;->this$0:Lcom/android/camera/VideoModule;

    #getter for: Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v2}, Lcom/android/camera/VideoModule;->access$500(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/VideoModule$1;->this$0:Lcom/android/camera/VideoModule;

    #getter for: Lcom/android/camera/VideoModule;->mShutterCallback:Lcom/android/camera/VideoModule$ShutterCallback;
    invoke-static {v3}, Lcom/android/camera/VideoModule;->access$1200(Lcom/android/camera/VideoModule;)Lcom/android/camera/VideoModule$ShutterCallback;

    move-result-object v3

    new-instance v4, Lcom/android/camera/VideoModule$JpegPictureCallback;

    iget-object v5, p0, Lcom/android/camera/VideoModule$1;->this$0:Lcom/android/camera/VideoModule;

    invoke-direct {v4, v5, v0}, Lcom/android/camera/VideoModule$JpegPictureCallback;-><init>(Lcom/android/camera/VideoModule;Landroid/location/Location;)V

    invoke-virtual {v2, v3, v7, v7, v4}, Lcom/android/camera/CameraManager$CameraProxy;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 494
    iget-object v2, p0, Lcom/android/camera/VideoModule$1;->this$0:Lcom/android/camera/VideoModule;

    invoke-virtual {v2, v6}, Lcom/android/camera/VideoModule;->showVideoSnapshotUI(Z)V

    .line 495
    iget-object v2, p0, Lcom/android/camera/VideoModule$1;->this$0:Lcom/android/camera/VideoModule;

    #setter for: Lcom/android/camera/VideoModule;->mSnapshotInProgress:Z
    invoke-static {v2, v6}, Lcom/android/camera/VideoModule;->access$802(Lcom/android/camera/VideoModule;Z)Z

    .line 496
    iget-object v2, p0, Lcom/android/camera/VideoModule$1;->this$0:Lcom/android/camera/VideoModule;

    invoke-virtual {v2}, Lcom/android/camera/VideoModule;->animateWhiteFrame()V

    goto :goto_0
.end method

.method public onShutterButtonFocus(Z)V
    .locals 0
    .parameter "pressed"

    .prologue
    .line 472
    return-void
.end method
