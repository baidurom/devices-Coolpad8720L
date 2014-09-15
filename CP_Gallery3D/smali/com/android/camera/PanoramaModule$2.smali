.class Lcom/android/camera/PanoramaModule$2;
.super Landroid/os/Handler;
.source "PanoramaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PanoramaModule;->init(Lcom/android/camera/CameraActivity;Landroid/view/View;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PanoramaModule;


# direct methods
.method constructor <init>(Lcom/android/camera/PanoramaModule;)V
    .locals 0
    .parameter

    .prologue
    .line 377
    iput-object p1, p0, Lcom/android/camera/PanoramaModule$2;->this$0:Lcom/android/camera/PanoramaModule;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 380
    const-string v0, "CAM PanoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage msg.what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 449
    :cond_0
    :goto_0
    return-void

    .line 383
    :sswitch_0
    const-string v0, "CAM PanoModule"

    const-string v1, ">>>>>>>force disconnect camera "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object v0, p0, Lcom/android/camera/PanoramaModule$2;->this$0:Lcom/android/camera/PanoramaModule;

    #calls: Lcom/android/camera/PanoramaModule;->releaseCamera()V
    invoke-static {v0}, Lcom/android/camera/PanoramaModule;->access$300(Lcom/android/camera/PanoramaModule;)V

    .line 385
    iget-object v0, p0, Lcom/android/camera/PanoramaModule$2;->this$0:Lcom/android/camera/PanoramaModule;

    #getter for: Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v0}, Lcom/android/camera/PanoramaModule;->access$000(Lcom/android/camera/PanoramaModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    iput-boolean v7, v0, Lcom/android/camera/CameraActivity;->mLaunchGalleryed:Z

    goto :goto_0

    .line 389
    :sswitch_1
    iget-object v0, p0, Lcom/android/camera/PanoramaModule$2;->this$0:Lcom/android/camera/PanoramaModule;

    #getter for: Lcom/android/camera/PanoramaModule;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;
    invoke-static {v0}, Lcom/android/camera/PanoramaModule;->access$800(Lcom/android/camera/PanoramaModule;)Lcom/android/gallery3d/ui/GLRootView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/android/camera/PanoramaModule$2;->this$0:Lcom/android/camera/PanoramaModule;

    #getter for: Lcom/android/camera/PanoramaModule;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;
    invoke-static {v0}, Lcom/android/camera/PanoramaModule;->access$800(Lcom/android/camera/PanoramaModule;)Lcom/android/gallery3d/ui/GLRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLRootView;->onPause()V

    .line 391
    iget-object v0, p0, Lcom/android/camera/PanoramaModule$2;->this$0:Lcom/android/camera/PanoramaModule;

    #getter for: Lcom/android/camera/PanoramaModule;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;
    invoke-static {v0}, Lcom/android/camera/PanoramaModule;->access$800(Lcom/android/camera/PanoramaModule;)Lcom/android/gallery3d/ui/GLRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLRootView;->lockRenderThread()V

    .line 393
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/PanoramaModule$2;->this$0:Lcom/android/camera/PanoramaModule;

    #getter for: Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v0}, Lcom/android/camera/PanoramaModule;->access$000(Lcom/android/camera/PanoramaModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/StateManager;->pause()V

    .line 394
    iget-object v0, p0, Lcom/android/camera/PanoramaModule$2;->this$0:Lcom/android/camera/PanoramaModule;

    #getter for: Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v0}, Lcom/android/camera/PanoramaModule;->access$000(Lcom/android/camera/PanoramaModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/DataManager;->pause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 396
    iget-object v0, p0, Lcom/android/camera/PanoramaModule$2;->this$0:Lcom/android/camera/PanoramaModule;

    #getter for: Lcom/android/camera/PanoramaModule;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;
    invoke-static {v0}, Lcom/android/camera/PanoramaModule;->access$800(Lcom/android/camera/PanoramaModule;)Lcom/android/gallery3d/ui/GLRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLRootView;->unlockRenderThread()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/PanoramaModule$2;->this$0:Lcom/android/camera/PanoramaModule;

    #getter for: Lcom/android/camera/PanoramaModule;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;
    invoke-static {v1}, Lcom/android/camera/PanoramaModule;->access$800(Lcom/android/camera/PanoramaModule;)Lcom/android/gallery3d/ui/GLRootView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/GLRootView;->unlockRenderThread()V

    throw v0

    .line 401
    :sswitch_2
    iget-object v0, p0, Lcom/android/camera/PanoramaModule$2;->this$0:Lcom/android/camera/PanoramaModule;

    #getter for: Lcom/android/camera/PanoramaModule;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;
    invoke-static {v0}, Lcom/android/camera/PanoramaModule;->access$800(Lcom/android/camera/PanoramaModule;)Lcom/android/gallery3d/ui/GLRootView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/android/camera/PanoramaModule$2;->this$0:Lcom/android/camera/PanoramaModule;

    #getter for: Lcom/android/camera/PanoramaModule;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;
    invoke-static {v0}, Lcom/android/camera/PanoramaModule;->access$800(Lcom/android/camera/PanoramaModule;)Lcom/android/gallery3d/ui/GLRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLRootView;->lockRenderThread()V

    .line 404
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/PanoramaModule$2;->this$0:Lcom/android/camera/PanoramaModule;

    #getter for: Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v0}, Lcom/android/camera/PanoramaModule;->access$000(Lcom/android/camera/PanoramaModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/StateManager;->resume()V

    .line 405
    iget-object v0, p0, Lcom/android/camera/PanoramaModule$2;->this$0:Lcom/android/camera/PanoramaModule;

    #getter for: Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v0}, Lcom/android/camera/PanoramaModule;->access$000(Lcom/android/camera/PanoramaModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/DataManager;->resume()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 407
    iget-object v0, p0, Lcom/android/camera/PanoramaModule$2;->this$0:Lcom/android/camera/PanoramaModule;

    #getter for: Lcom/android/camera/PanoramaModule;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;
    invoke-static {v0}, Lcom/android/camera/PanoramaModule;->access$800(Lcom/android/camera/PanoramaModule;)Lcom/android/gallery3d/ui/GLRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLRootView;->unlockRenderThread()V

    .line 409
    iget-object v0, p0, Lcom/android/camera/PanoramaModule$2;->this$0:Lcom/android/camera/PanoramaModule;

    #getter for: Lcom/android/camera/PanoramaModule;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;
    invoke-static {v0}, Lcom/android/camera/PanoramaModule;->access$800(Lcom/android/camera/PanoramaModule;)Lcom/android/gallery3d/ui/GLRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLRootView;->onResume()V

    goto/16 :goto_0

    .line 407
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/PanoramaModule$2;->this$0:Lcom/android/camera/PanoramaModule;

    #getter for: Lcom/android/camera/PanoramaModule;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;
    invoke-static {v1}, Lcom/android/camera/PanoramaModule;->access$800(Lcom/android/camera/PanoramaModule;)Lcom/android/gallery3d/ui/GLRootView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/GLRootView;->unlockRenderThread()V

    throw v0

    .line 414
    :sswitch_3
    iget-object v0, p0, Lcom/android/camera/PanoramaModule$2;->this$0:Lcom/android/camera/PanoramaModule;

    #calls: Lcom/android/camera/PanoramaModule;->onBackgroundThreadFinished()V
    invoke-static {v0}, Lcom/android/camera/PanoramaModule;->access$1200(Lcom/android/camera/PanoramaModule;)V

    .line 415
    iget-object v1, p0, Lcom/android/camera/PanoramaModule$2;->this$0:Lcom/android/camera/PanoramaModule;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    #calls: Lcom/android/camera/PanoramaModule;->showFinalMosaic(Landroid/graphics/Bitmap;)V
    invoke-static {v1, v0}, Lcom/android/camera/PanoramaModule;->access$1300(Lcom/android/camera/PanoramaModule;Landroid/graphics/Bitmap;)V

    .line 416
    iget-object v0, p0, Lcom/android/camera/PanoramaModule$2;->this$0:Lcom/android/camera/PanoramaModule;

    invoke-virtual {v0}, Lcom/android/camera/PanoramaModule;->saveHighResMosaic()V

    goto/16 :goto_0

    .line 419
    :sswitch_4
    iget-object v0, p0, Lcom/android/camera/PanoramaModule$2;->this$0:Lcom/android/camera/PanoramaModule;

    #calls: Lcom/android/camera/PanoramaModule;->onBackgroundThreadFinished()V
    invoke-static {v0}, Lcom/android/camera/PanoramaModule;->access$1200(Lcom/android/camera/PanoramaModule;)V

    .line 420
    iget-object v0, p0, Lcom/android/camera/PanoramaModule$2;->this$0:Lcom/android/camera/PanoramaModule;

    #getter for: Lcom/android/camera/PanoramaModule;->mPaused:Z
    invoke-static {v0}, Lcom/android/camera/PanoramaModule;->access$100(Lcom/android/camera/PanoramaModule;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 421
    iget-object v0, p0, Lcom/android/camera/PanoramaModule$2;->this$0:Lcom/android/camera/PanoramaModule;

    #calls: Lcom/android/camera/PanoramaModule;->resetToPreview()V
    invoke-static {v0}, Lcom/android/camera/PanoramaModule;->access$500(Lcom/android/camera/PanoramaModule;)V

    .line 432
    :goto_1
    iget-object v0, p0, Lcom/android/camera/PanoramaModule$2;->this$0:Lcom/android/camera/PanoramaModule;

    #setter for: Lcom/android/camera/PanoramaModule;->mCaptureState:I
    invoke-static {v0, v7}, Lcom/android/camera/PanoramaModule;->access$1002(Lcom/android/camera/PanoramaModule;I)I

    .line 433
    iget-object v0, p0, Lcom/android/camera/PanoramaModule$2;->this$0:Lcom/android/camera/PanoramaModule;

    #calls: Lcom/android/camera/PanoramaModule;->clearMosaicFrameProcessorIfNeeded()V
    invoke-static {v0}, Lcom/android/camera/PanoramaModule;->access$1800(Lcom/android/camera/PanoramaModule;)V

    goto/16 :goto_0

    .line 423
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PanoramaModule$2;->this$0:Lcom/android/camera/PanoramaModule;

    #getter for: Lcom/android/camera/PanoramaModule;->mRotateDialog:Lcom/android/camera/RotateDialogController;
    invoke-static {v0}, Lcom/android/camera/PanoramaModule;->access$1700(Lcom/android/camera/PanoramaModule;)Lcom/android/camera/RotateDialogController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/PanoramaModule$2;->this$0:Lcom/android/camera/PanoramaModule;

    #getter for: Lcom/android/camera/PanoramaModule;->mDialogTitle:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/camera/PanoramaModule;->access$1400(Lcom/android/camera/PanoramaModule;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PanoramaModule$2;->this$0:Lcom/android/camera/PanoramaModule;

    #getter for: Lcom/android/camera/PanoramaModule;->mDialogPanoramaFailedString:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/camera/PanoramaModule;->access$1500(Lcom/android/camera/PanoramaModule;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/PanoramaModule$2;->this$0:Lcom/android/camera/PanoramaModule;

    #getter for: Lcom/android/camera/PanoramaModule;->mDialogOkString:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/camera/PanoramaModule;->access$1600(Lcom/android/camera/PanoramaModule;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/camera/PanoramaModule$2$1;

    invoke-direct {v4, p0}, Lcom/android/camera/PanoramaModule$2$1;-><init>(Lcom/android/camera/PanoramaModule$2;)V

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/RotateDialogController;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 436
    :sswitch_5
    iget-object v0, p0, Lcom/android/camera/PanoramaModule$2;->this$0:Lcom/android/camera/PanoramaModule;

    #calls: Lcom/android/camera/PanoramaModule;->onBackgroundThreadFinished()V
    invoke-static {v0}, Lcom/android/camera/PanoramaModule;->access$1200(Lcom/android/camera/PanoramaModule;)V

    .line 438
    iget-object v0, p0, Lcom/android/camera/PanoramaModule$2;->this$0:Lcom/android/camera/PanoramaModule;

    #getter for: Lcom/android/camera/PanoramaModule;->mThumbnail:Lcom/android/camera/Thumbnail;
    invoke-static {v0}, Lcom/android/camera/PanoramaModule;->access$1900(Lcom/android/camera/PanoramaModule;)Lcom/android/camera/Thumbnail;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 439
    iget-object v0, p0, Lcom/android/camera/PanoramaModule$2;->this$0:Lcom/android/camera/PanoramaModule;

    #getter for: Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v0}, Lcom/android/camera/PanoramaModule;->access$000(Lcom/android/camera/PanoramaModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/PanoramaModule$2;->this$0:Lcom/android/camera/PanoramaModule;

    #getter for: Lcom/android/camera/PanoramaModule;->mThumbnail:Lcom/android/camera/Thumbnail;
    invoke-static {v1}, Lcom/android/camera/PanoramaModule;->access$1900(Lcom/android/camera/PanoramaModule;)Lcom/android/camera/Thumbnail;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraActivity;->updateThumbnail(Lcom/android/camera/Thumbnail;Z)V

    .line 441
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PanoramaModule$2;->this$0:Lcom/android/camera/PanoramaModule;

    #calls: Lcom/android/camera/PanoramaModule;->resetToPreview()V
    invoke-static {v0}, Lcom/android/camera/PanoramaModule;->access$500(Lcom/android/camera/PanoramaModule;)V

    .line 442
    iget-object v0, p0, Lcom/android/camera/PanoramaModule$2;->this$0:Lcom/android/camera/PanoramaModule;

    #calls: Lcom/android/camera/PanoramaModule;->clearMosaicFrameProcessorIfNeeded()V
    invoke-static {v0}, Lcom/android/camera/PanoramaModule;->access$1800(Lcom/android/camera/PanoramaModule;)V

    goto/16 :goto_0

    .line 445
    :sswitch_6
    iget-object v0, p0, Lcom/android/camera/PanoramaModule$2;->this$0:Lcom/android/camera/PanoramaModule;

    #getter for: Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v0}, Lcom/android/camera/PanoramaModule;->access$000(Lcom/android/camera/PanoramaModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto/16 :goto_0

    .line 381
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_4
        0x3 -> :sswitch_5
        0x4 -> :sswitch_6
        0x5 -> :sswitch_1
        0x6 -> :sswitch_2
        0xe969 -> :sswitch_0
    .end sparse-switch
.end method
