.class final Lcom/android/camera/PhotoModule$PostViewPictureCallback;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PostViewPictureCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .parameter

    .prologue
    .line 1799
    iput-object p1, p0, Lcom/android/camera/PhotoModule$PostViewPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1799
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule$PostViewPictureCallback;-><init>(Lcom/android/camera/PhotoModule;)V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 11
    .parameter "data"
    .parameter "camera"

    .prologue
    const/4 v6, 0x0

    .line 1802
    iget-object v0, p0, Lcom/android/camera/PhotoModule$PostViewPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    #setter for: Lcom/android/camera/PhotoModule;->mPostViewPictureCallbackTime:J
    invoke-static {v0, v1, v2}, Lcom/android/camera/PhotoModule;->access$8302(Lcom/android/camera/PhotoModule;J)J

    .line 1809
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "post view data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1810
    iget-object v0, p0, Lcom/android/camera/PhotoModule$PostViewPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mCurrentEffectModule:Lcom/android/camera/CameraEffectModule;
    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$4900(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraEffectModule;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1811
    iget-object v0, p0, Lcom/android/camera/PhotoModule$PostViewPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mCurrentEffectModule:Lcom/android/camera/CameraEffectModule;
    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$4900(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraEffectModule;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/PhotoModule$PostViewPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mImageNamer:Lcom/android/camera/PhotoModule$ImageNamer;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$8400(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$ImageNamer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/PhotoModule$ImageNamer;->getTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PhotoModule$PostViewPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mDesiredPreviewWidth:I
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$1700(Lcom/android/camera/PhotoModule;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/PhotoModule$PostViewPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mDesiredPreviewHeight:I
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$1800(Lcom/android/camera/PhotoModule;)I

    move-result v3

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/android/camera/CameraEffectModule;->SetThumbnail([BLjava/lang/String;II)V

    .line 1814
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule$PostViewPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mbacketCapture:Z
    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$8500(Lcom/android/camera/PhotoModule;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/PhotoModule$PostViewPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z
    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$6300(Lcom/android/camera/PhotoModule;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1815
    iget-object v0, p0, Lcom/android/camera/PhotoModule$PostViewPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v10

    iget-object v0, p0, Lcom/android/camera/PhotoModule$PostViewPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/PhotoModule$PostViewPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mDesiredPreviewWidth:I
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$1700(Lcom/android/camera/PhotoModule;)I

    move-result v2

    iget-object v1, p0, Lcom/android/camera/PhotoModule$PostViewPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mDesiredPreviewHeight:I
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$1800(Lcom/android/camera/PhotoModule;)I

    move-result v3

    iget-object v1, p0, Lcom/android/camera/PhotoModule$PostViewPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mJpegRotation:I
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$8600(Lcom/android/camera/PhotoModule;)I

    move-result v4

    iget-object v1, p0, Lcom/android/camera/PhotoModule$PostViewPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    iget v5, v1, Lcom/android/camera/ActivityBase;->mThumbnailViewWidth:I

    iget-object v1, p0, Lcom/android/camera/PhotoModule$PostViewPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getCreateLoadOrientation()I

    move-result v7

    iget-object v1, p0, Lcom/android/camera/PhotoModule$PostViewPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mOrientation:I
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$8700(Lcom/android/camera/PhotoModule;)I

    move-result v8

    iget-object v1, p0, Lcom/android/camera/PhotoModule$PostViewPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mWhiteFrame:Lcom/android/camera/ui/WhiteFrameView;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$8800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ui/WhiteFrameView;

    move-result-object v9

    move-object v1, p1

    invoke-virtual/range {v0 .. v9}, Lcom/android/camera/ActivityBase;->setPreviewThumb([BIIIILandroid/net/Uri;IILcom/android/camera/ui/WhiteFrameView;)Z

    move-result v0

    iput-boolean v0, v10, Lcom/android/camera/CameraActivity;->needUpdateView:Z

    .line 1818
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule$PostViewPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mCameraId:I
    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$900(Lcom/android/camera/PhotoModule;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/PhotoModule$PostViewPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mbacketCapture:Z
    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$8500(Lcom/android/camera/PhotoModule;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1820
    iget-object v0, p0, Lcom/android/camera/PhotoModule$PostViewPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/PhotoModule$PostViewPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mDesiredPreviewWidth:I
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$1700(Lcom/android/camera/PhotoModule;)I

    move-result v2

    iget-object v1, p0, Lcom/android/camera/PhotoModule$PostViewPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mDesiredPreviewHeight:I
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$1800(Lcom/android/camera/PhotoModule;)I

    move-result v3

    iget-object v1, p0, Lcom/android/camera/PhotoModule$PostViewPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mJpegRotation:I
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$8600(Lcom/android/camera/PhotoModule;)I

    move-result v4

    iget-object v1, p0, Lcom/android/camera/PhotoModule$PostViewPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    iget v5, v1, Lcom/android/camera/ActivityBase;->mThumbnailViewWidth:I

    iget-object v1, p0, Lcom/android/camera/PhotoModule$PostViewPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getCreateLoadOrientation()I

    move-result v7

    iget-object v1, p0, Lcom/android/camera/PhotoModule$PostViewPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mOrientation:I
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$8700(Lcom/android/camera/PhotoModule;)I

    move-result v8

    iget-object v1, p0, Lcom/android/camera/PhotoModule$PostViewPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mWhiteFrame:Lcom/android/camera/ui/WhiteFrameView;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$8800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ui/WhiteFrameView;

    move-result-object v9

    move-object v1, p1

    invoke-virtual/range {v0 .. v9}, Lcom/android/camera/ActivityBase;->updateThumb([BIIIILandroid/net/Uri;IILcom/android/camera/ui/WhiteFrameView;)Z

    .line 1840
    :cond_2
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1841
    return-void
.end method
