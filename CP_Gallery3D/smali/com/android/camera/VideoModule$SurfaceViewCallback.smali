.class Lcom/android/camera/VideoModule$SurfaceViewCallback;
.super Ljava/lang/Object;
.source "VideoModule.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/VideoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SurfaceViewCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/VideoModule;)V
    .locals 0
    .parameter

    .prologue
    .line 4334
    iput-object p1, p0, Lcom/android/camera/VideoModule$SurfaceViewCallback;->this$0:Lcom/android/camera/VideoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 4338
    const-string v0, "CAM_VideoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Surface changed. width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4339
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 4343
    const-string v0, "CAM_VideoModule"

    const-string v1, "Surface created"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4344
    iget-object v0, p0, Lcom/android/camera/VideoModule$SurfaceViewCallback;->this$0:Lcom/android/camera/VideoModule;

    const/4 v1, 0x1

    #setter for: Lcom/android/camera/VideoModule;->mSurfaceViewReady:Z
    invoke-static {v0, v1}, Lcom/android/camera/VideoModule;->access$4802(Lcom/android/camera/VideoModule;Z)Z

    .line 4345
    iget-object v0, p0, Lcom/android/camera/VideoModule$SurfaceViewCallback;->this$0:Lcom/android/camera/VideoModule;

    #getter for: Lcom/android/camera/VideoModule;->mPaused:Z
    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$3900(Lcom/android/camera/VideoModule;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoModule$SurfaceViewCallback;->this$0:Lcom/android/camera/VideoModule;

    #getter for: Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$500(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_1

    .line 4352
    :cond_0
    :goto_0
    return-void

    .line 4346
    :cond_1
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-nez v0, :cond_0

    .line 4347
    iget-object v0, p0, Lcom/android/camera/VideoModule$SurfaceViewCallback;->this$0:Lcom/android/camera/VideoModule;

    #getter for: Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$500(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/VideoModule$SurfaceViewCallback;->this$0:Lcom/android/camera/VideoModule;

    #getter for: Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v1}, Lcom/android/camera/VideoModule;->access$500(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/ActivityBase;->mPreviewSurfaceView:Lcom/android/camera/ui/PreviewSurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewDisplayAsync(Landroid/view/SurfaceHolder;)V

    .line 4348
    iget-object v0, p0, Lcom/android/camera/VideoModule$SurfaceViewCallback;->this$0:Lcom/android/camera/VideoModule;

    iget-boolean v0, v0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    if-nez v0, :cond_0

    .line 4349
    iget-object v0, p0, Lcom/android/camera/VideoModule$SurfaceViewCallback;->this$0:Lcom/android/camera/VideoModule;

    #calls: Lcom/android/camera/VideoModule;->startPreview()V
    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$2300(Lcom/android/camera/VideoModule;)V

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 4356
    const-string v0, "CAM_VideoModule"

    const-string v1, "Surface destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4357
    iget-object v0, p0, Lcom/android/camera/VideoModule$SurfaceViewCallback;->this$0:Lcom/android/camera/VideoModule;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/VideoModule;->mSurfaceViewReady:Z
    invoke-static {v0, v1}, Lcom/android/camera/VideoModule;->access$4802(Lcom/android/camera/VideoModule;Z)Z

    .line 4358
    iget-object v0, p0, Lcom/android/camera/VideoModule$SurfaceViewCallback;->this$0:Lcom/android/camera/VideoModule;

    #getter for: Lcom/android/camera/VideoModule;->mPaused:Z
    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$3900(Lcom/android/camera/VideoModule;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4363
    :cond_0
    :goto_0
    return-void

    .line 4359
    :cond_1
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-nez v0, :cond_0

    .line 4360
    iget-object v0, p0, Lcom/android/camera/VideoModule$SurfaceViewCallback;->this$0:Lcom/android/camera/VideoModule;

    #calls: Lcom/android/camera/VideoModule;->stopVideoRecording()Z
    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$4900(Lcom/android/camera/VideoModule;)Z

    .line 4361
    iget-object v0, p0, Lcom/android/camera/VideoModule$SurfaceViewCallback;->this$0:Lcom/android/camera/VideoModule;

    #calls: Lcom/android/camera/VideoModule;->stopPreview()V
    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$5000(Lcom/android/camera/VideoModule;)V

    goto :goto_0
.end method
