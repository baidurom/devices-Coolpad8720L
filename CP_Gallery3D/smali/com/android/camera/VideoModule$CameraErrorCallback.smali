.class public Lcom/android/camera/VideoModule$CameraErrorCallback;
.super Ljava/lang/Object;
.source "VideoModule.java"

# interfaces
.implements Landroid/hardware/Camera$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/VideoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CameraErrorCallback"
.end annotation


# instance fields
.field private mDiedTimes:I

.field final synthetic this$0:Lcom/android/camera/VideoModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/VideoModule;)V
    .locals 1
    .parameter

    .prologue
    .line 4289
    iput-object p1, p0, Lcom/android/camera/VideoModule$CameraErrorCallback;->this$0:Lcom/android/camera/VideoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4291
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/VideoModule$CameraErrorCallback;->mDiedTimes:I

    return-void
.end method


# virtual methods
.method public onError(ILandroid/hardware/Camera;)V
    .locals 4
    .parameter "error"
    .parameter "camera"

    .prologue
    .line 4295
    const-string v1, "CAM_VideoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got camera error callback. error="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4296
    const/16 v1, 0x64

    if-eq p1, v1, :cond_0

    const/16 v1, 0x3039

    if-ne p1, v1, :cond_1

    .line 4301
    :cond_0
    iget v1, p0, Lcom/android/camera/VideoModule$CameraErrorCallback;->mDiedTimes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/camera/VideoModule$CameraErrorCallback;->mDiedTimes:I

    .line 4302
    iget v1, p0, Lcom/android/camera/VideoModule$CameraErrorCallback;->mDiedTimes:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_2

    .line 4303
    iget-object v1, p0, Lcom/android/camera/VideoModule$CameraErrorCallback;->this$0:Lcom/android/camera/VideoModule;

    #getter for: Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v1}, Lcom/android/camera/VideoModule;->access$500(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    const v2, 0x7f0e014c

    invoke-static {v1, v2}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    .line 4330
    :cond_1
    :goto_0
    return-void

    .line 4305
    :cond_2
    iget-object v1, p0, Lcom/android/camera/VideoModule$CameraErrorCallback;->this$0:Lcom/android/camera/VideoModule;

    #getter for: Lcom/android/camera/VideoModule;->mPaused:Z
    invoke-static {v1}, Lcom/android/camera/VideoModule;->access$3900(Lcom/android/camera/VideoModule;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4306
    iget-object v1, p0, Lcom/android/camera/VideoModule$CameraErrorCallback;->this$0:Lcom/android/camera/VideoModule;

    #getter for: Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z
    invoke-static {v1}, Lcom/android/camera/VideoModule;->access$700(Lcom/android/camera/VideoModule;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4308
    iget-object v1, p0, Lcom/android/camera/VideoModule$CameraErrorCallback;->this$0:Lcom/android/camera/VideoModule;

    #calls: Lcom/android/camera/VideoModule;->onStopVideoRecording()V
    invoke-static {v1}, Lcom/android/camera/VideoModule;->access$3000(Lcom/android/camera/VideoModule;)V

    .line 4313
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/camera/VideoModule$CameraErrorCallback;->this$0:Lcom/android/camera/VideoModule;

    #calls: Lcom/android/camera/VideoModule;->closeCamera()V
    invoke-static {v1}, Lcom/android/camera/VideoModule;->access$4500(Lcom/android/camera/VideoModule;)V

    .line 4314
    new-instance v0, Lcom/android/camera/VideoModule$CameraOpenThread;

    iget-object v1, p0, Lcom/android/camera/VideoModule$CameraErrorCallback;->this$0:Lcom/android/camera/VideoModule;

    invoke-direct {v0, v1}, Lcom/android/camera/VideoModule$CameraOpenThread;-><init>(Lcom/android/camera/VideoModule;)V

    .line 4315
    .local v0, cameraOpenThread:Lcom/android/camera/VideoModule$CameraOpenThread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 4317
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 4318
    iget-object v1, p0, Lcom/android/camera/VideoModule$CameraErrorCallback;->this$0:Lcom/android/camera/VideoModule;

    #getter for: Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v1}, Lcom/android/camera/VideoModule;->access$500(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/camera/ActivityBase;->mCameraDisabled:Z

    if-eqz v1, :cond_4

    .line 4319
    iget-object v1, p0, Lcom/android/camera/VideoModule$CameraErrorCallback;->this$0:Lcom/android/camera/VideoModule;

    #getter for: Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v1}, Lcom/android/camera/VideoModule;->access$500(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    const v2, 0x7f0e014d

    invoke-static {v1, v2}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4325
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/android/camera/VideoModule$CameraErrorCallback;->this$0:Lcom/android/camera/VideoModule;

    #calls: Lcom/android/camera/VideoModule;->startPreview()V
    invoke-static {v1}, Lcom/android/camera/VideoModule;->access$2300(Lcom/android/camera/VideoModule;)V

    goto :goto_0

    .line 4310
    .end local v0           #cameraOpenThread:Lcom/android/camera/VideoModule$CameraOpenThread;
    :cond_5
    iget-object v1, p0, Lcom/android/camera/VideoModule$CameraErrorCallback;->this$0:Lcom/android/camera/VideoModule;

    #calls: Lcom/android/camera/VideoModule;->closeCamera()V
    invoke-static {v1}, Lcom/android/camera/VideoModule;->access$4500(Lcom/android/camera/VideoModule;)V

    .line 4311
    iget-object v1, p0, Lcom/android/camera/VideoModule$CameraErrorCallback;->this$0:Lcom/android/camera/VideoModule;

    #calls: Lcom/android/camera/VideoModule;->effectsActive()Z
    invoke-static {v1}, Lcom/android/camera/VideoModule;->access$4600(Lcom/android/camera/VideoModule;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/VideoModule$CameraErrorCallback;->this$0:Lcom/android/camera/VideoModule;

    #calls: Lcom/android/camera/VideoModule;->releaseMediaRecorder()V
    invoke-static {v1}, Lcom/android/camera/VideoModule;->access$4700(Lcom/android/camera/VideoModule;)V

    goto :goto_1

    .line 4321
    .restart local v0       #cameraOpenThread:Lcom/android/camera/VideoModule$CameraOpenThread;
    :catch_0
    move-exception v1

    goto :goto_2
.end method
