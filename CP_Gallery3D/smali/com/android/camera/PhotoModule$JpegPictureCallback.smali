.class final Lcom/android/camera/PhotoModule$JpegPictureCallback;
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
    name = "JpegPictureCallback"
.end annotation


# instance fields
.field mLocation:Landroid/location/Location;

.field final synthetic this$0:Lcom/android/camera/PhotoModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/PhotoModule;Landroid/location/Location;)V
    .locals 0
    .parameter
    .parameter "loc"

    .prologue
    .line 1909
    iput-object p1, p0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1910
    iput-object p2, p0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    .line 1911
    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 25
    .parameter "jpegData"
    .parameter "camera"

    .prologue
    .line 1916
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mPaused:Z
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$2200(Lcom/android/camera/PhotoModule;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1917
    sget-boolean v2, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mAutoTestFlag:Z

    if-eqz v2, :cond_0

    .line 1918
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/android/autoTest/AutoTestBroadCastReceiver;->setAutoTestResult(I)V

    .line 2132
    :cond_0
    :goto_0
    return-void

    .line 1923
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$9000(Lcom/android/camera/PhotoModule;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "hdr"

    if-ne v2, v3, :cond_2

    .line 1924
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->showSwitcher()V

    .line 1928
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    move-wide/from16 v0, v21

    #setter for: Lcom/android/camera/PhotoModule;->mJpegPictureCallbackTime:J
    invoke-static {v2, v0, v1}, Lcom/android/camera/PhotoModule;->access$9102(Lcom/android/camera/PhotoModule;J)J

    .line 1932
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mPostViewPictureCallbackTime:J
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$8300(Lcom/android/camera/PhotoModule;)J

    move-result-wide v2

    const-wide/16 v21, 0x0

    cmp-long v2, v2, v21

    if-eqz v2, :cond_10

    .line 1933
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mPostViewPictureCallbackTime:J
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$8300(Lcom/android/camera/PhotoModule;)J

    move-result-wide v21

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mShutterCallbackTime:J
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$8200(Lcom/android/camera/PhotoModule;)J

    move-result-wide v23

    sub-long v21, v21, v23

    move-wide/from16 v0, v21

    iput-wide v0, v2, Lcom/android/camera/PhotoModule;->mShutterToPictureDisplayedTime:J

    .line 1935
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mJpegPictureCallbackTime:J
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$9100(Lcom/android/camera/PhotoModule;)J

    move-result-wide v21

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mPostViewPictureCallbackTime:J
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$8300(Lcom/android/camera/PhotoModule;)J

    move-result-wide v23

    sub-long v21, v21, v23

    move-wide/from16 v0, v21

    iput-wide v0, v2, Lcom/android/camera/PhotoModule;->mPictureDisplayedToJpegCallbackTime:J

    .line 1943
    :goto_1
    const-string v2, "CAM_PhotoModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mPictureDisplayedToJpegCallbackTime = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-wide v0, v6, Lcom/android/camera/PhotoModule;->mPictureDisplayedToJpegCallbackTime:J

    move-wide/from16 v21, v0

    move-wide/from16 v0, v21

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "ms"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1949
    sget-boolean v2, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$6300(Lcom/android/camera/PhotoModule;)Z

    move-result v2

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    if-eqz v2, :cond_3

    .line 1952
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v2, Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->animateSlide()V

    .line 1956
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mbacketCapture:Z
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$8500(Lcom/android/camera/PhotoModule;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mbAntiShaking:Z
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$9200(Lcom/android/camera/PhotoModule;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1957
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mRotateDialog:Lcom/android/camera/RotateDialogController;
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$7900(Lcom/android/camera/PhotoModule;)Lcom/android/camera/RotateDialogController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/RotateDialogController;->dismissDialog()V

    .line 1958
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #calls: Lcom/android/camera/PhotoModule;->animateFlash()V
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$6000(Lcom/android/camera/PhotoModule;)V

    .line 1961
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$6300(Lcom/android/camera/PhotoModule;)Z

    move-result v2

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mbPreviewByPostView:Z
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$9300(Lcom/android/camera/PhotoModule;)Z

    move-result v2

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-virtual {v2}, Lcom/android/camera/PhotoModule;->inContinuousShotMode()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1963
    sget-boolean v2, Lcom/android/gallery3d/common/ApiHelper;->CAN_START_PREVIEW_IN_JPEG_CALLBACK:Z

    if-eqz v2, :cond_11

    .line 1964
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    const/4 v3, 0x1

    #calls: Lcom/android/camera/PhotoModule;->setupPreview(Z)V
    invoke-static {v2, v3}, Lcom/android/camera/PhotoModule;->access$3400(Lcom/android/camera/PhotoModule;Z)V

    .line 1965
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$6300(Lcom/android/camera/PhotoModule;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1966
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mTakePhotoBtn:Lcom/android/camera/ShutterButton;
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$5600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ShutterButton;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1975
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    const/4 v3, 0x0

    #setter for: Lcom/android/camera/PhotoModule;->mbPreviewByPostView:Z
    invoke-static {v2, v3}, Lcom/android/camera/PhotoModule;->access$9302(Lcom/android/camera/PhotoModule;Z)Z

    .line 1977
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mContinueCaptureCount:I
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$9400(Lcom/android/camera/PhotoModule;)I

    move-result v2

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$6300(Lcom/android/camera/PhotoModule;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1981
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    const/4 v3, 0x1

    #calls: Lcom/android/camera/PhotoModule;->setCameraState(I)V
    invoke-static {v2, v3}, Lcom/android/camera/PhotoModule;->access$4200(Lcom/android/camera/PhotoModule;I)V

    .line 1984
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #calls: Lcom/android/camera/PhotoModule;->checkContinueCapture()V
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$9500(Lcom/android/camera/PhotoModule;)V

    .line 1987
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$6300(Lcom/android/camera/PhotoModule;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 1988
    if-eqz p1, :cond_13

    .line 1989
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    move-object/from16 v0, p1

    #setter for: Lcom/android/camera/PhotoModule;->mJpegImageData:[B
    invoke-static {v2, v0}, Lcom/android/camera/PhotoModule;->access$9602(Lcom/android/camera/PhotoModule;[B)[B

    .line 1991
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$1000(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v20

    .line 1992
    .local v20, s:Landroid/hardware/Camera$Size;
    invoke-static/range {p1 .. p1}, Lcom/android/camera/Exif;->getOrientation([B)I

    move-result v10

    .line 1994
    .local v10, orientation:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mJpegRotation:I
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$8600(Lcom/android/camera/PhotoModule;)I

    move-result v2

    add-int/2addr v2, v10

    rem-int/lit16 v2, v2, 0xb4

    if-nez v2, :cond_12

    .line 1995
    move-object/from16 v0, v20

    iget v7, v0, Landroid/hardware/Camera$Size;->width:I

    .line 1996
    .local v7, width:I
    move-object/from16 v0, v20

    iget v8, v0, Landroid/hardware/Camera$Size;->height:I

    .line 2001
    .local v8, height:I
    :goto_3
    const/4 v4, 0x0

    .line 2005
    .local v4, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mImageNamer:Lcom/android/camera/PhotoModule$ImageNamer;
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$8400(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$ImageNamer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/PhotoModule$ImageNamer;->getUri()Landroid/net/Uri;

    move-result-object v4

    .line 2006
    if-eqz v4, :cond_9

    .line 2007
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    iput-object v4, v2, Lcom/android/camera/ActivityBase;->mLatestUri:Landroid/net/Uri;

    .line 2009
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-nez v2, :cond_8

    .line 2010
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    invoke-static {}, Lcom/android/camera/Thumbnail;->createEmptyThumbnail()Lcom/android/camera/Thumbnail;

    move-result-object v3

    iput-object v3, v2, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    .line 2013
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    invoke-virtual {v2, v4}, Lcom/android/camera/Thumbnail;->setShortCutUri(Landroid/net/Uri;)V

    .line 2014
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/camera/Thumbnail;->setFromFile(Z)V

    .line 2016
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ActivityBase;->addSecureAlbumItemIfNeeded(ZLandroid/net/Uri;)V

    .line 2017
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mImageNamer:Lcom/android/camera/PhotoModule$ImageNamer;
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$8400(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$ImageNamer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/PhotoModule$ImageNamer;->getTitle()Ljava/lang/String;

    move-result-object v5

    .line 2021
    .local v5, title:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mImageSaver:Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$4800(Lcom/android/camera/PhotoModule;)Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 2022
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mImageSaver:Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$4800(Lcom/android/camera/PhotoModule;)Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v3

    iget v9, v3, Lcom/android/camera/ActivityBase;->mThumbnailViewWidth:I

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v10}, Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;->addImage([BLandroid/net/Uri;Ljava/lang/String;Landroid/location/Location;IIII)V

    .line 2031
    .end local v5           #title:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mCurrentEffectModule:Lcom/android/camera/CameraEffectModule;
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$4900(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraEffectModule;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 2033
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mCurrentEffectModule:Lcom/android/camera/CameraEffectModule;
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$4900(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraEffectModule;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mImageNamer:Lcom/android/camera/PhotoModule$ImageNamer;
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$8400(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$ImageNamer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/PhotoModule$ImageNamer;->getTitle()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    invoke-interface {v2, v4, v3, v6}, Lcom/android/camera/CameraEffectModule;->setImageUri(Landroid/net/Uri;Ljava/lang/String;Z)V

    .line 2088
    .end local v4           #uri:Landroid/net/Uri;
    .end local v7           #width:I
    .end local v8           #height:I
    .end local v10           #orientation:I
    .end local v20           #s:Landroid/hardware/Camera$Size;
    :cond_a
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 2089
    .local v15, now:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mJpegPictureCallbackTime:J
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$9100(Lcom/android/camera/PhotoModule;)J

    move-result-wide v21

    sub-long v21, v15, v21

    move-wide/from16 v0, v21

    iput-wide v0, v2, Lcom/android/camera/PhotoModule;->mJpegCallbackFinishTime:J

    .line 2090
    const-string v2, "CAM_PhotoModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mJpegCallbackFinishTime = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-wide v0, v6, Lcom/android/camera/PhotoModule;->mJpegCallbackFinishTime:J

    move-wide/from16 v21, v0

    move-wide/from16 v0, v21

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "ms"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2091
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    const-wide/16 v21, 0x0

    move-wide/from16 v0, v21

    #setter for: Lcom/android/camera/PhotoModule;->mJpegPictureCallbackTime:J
    invoke-static {v2, v0, v1}, Lcom/android/camera/PhotoModule;->access$9102(Lcom/android/camera/PhotoModule;J)J

    .line 2093
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mSelfCamera:Lcom/android/camera/SelfCamera;
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$5800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/SelfCamera;

    move-result-object v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-virtual {v2}, Lcom/android/camera/PhotoModule;->inContinuousShotMode()Z

    move-result v2

    if-nez v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$6300(Lcom/android/camera/PhotoModule;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 2094
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mSelfCamera:Lcom/android/camera/SelfCamera;
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$5800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/SelfCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/SelfCamera;->resumeShutterGuide()V

    .line 2097
    :cond_b
    sget-boolean v2, Lcom/android/autoTest/AutoTestBroadCastReceiver;->mAutoTestFlag:Z

    if-eqz v2, :cond_c

    .line 2098
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/android/autoTest/AutoTestBroadCastReceiver;->setAutoTestResult(I)V

    .line 2101
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-virtual {v2}, Lcom/android/camera/PhotoModule;->inContinuousShotMode()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 2102
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #calls: Lcom/android/camera/PhotoModule;->doShotToShotCapture()V
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$10100(Lcom/android/camera/PhotoModule;)V

    .line 2114
    :cond_d
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mCurrentEffectModule:Lcom/android/camera/CameraEffectModule;
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$4900(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraEffectModule;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 2115
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mCurrentEffectModule:Lcom/android/camera/CameraEffectModule;
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$4900(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraEffectModule;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/CameraEffectModule;->EndCapture()V

    .line 2116
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mCurrentEffectModule:Lcom/android/camera/CameraEffectModule;
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$4900(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraEffectModule;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/CameraEffectModule;->JpegAvailable()V

    .line 2117
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$6300(Lcom/android/camera/PhotoModule;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 2122
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mPostponeNightshot:Z
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$2500(Lcom/android/camera/PhotoModule;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2123
    const-string v2, "CAM_PhotoModule"

    const-string v3, ">>>>>>>delay enter nigthshot after jpeg"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2124
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    const/4 v3, 0x0

    #setter for: Lcom/android/camera/PhotoModule;->mPostponeNightshot:Z
    invoke-static {v2, v3}, Lcom/android/camera/PhotoModule;->access$2502(Lcom/android/camera/PhotoModule;Z)Z

    .line 2125
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$1400(Lcom/android/camera/PhotoModule;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x15b3

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    move-object/from16 v21, v0

    #getter for: Lcom/android/camera/PhotoModule;->mEnterNightshot:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/android/camera/PhotoModule;->access$2400(Lcom/android/camera/PhotoModule;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v2, v3, v6, v9, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    .line 2126
    .local v14, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$1400(Lcom/android/camera/PhotoModule;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v14}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2129
    .end local v14           #msg:Landroid/os/Message;
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->setCpuClientBeforeStartPreview()V

    goto/16 :goto_0

    .line 1938
    .end local v15           #now:J
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mRawPictureCallbackTime:J
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$8900(Lcom/android/camera/PhotoModule;)J

    move-result-wide v21

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mShutterCallbackTime:J
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$8200(Lcom/android/camera/PhotoModule;)J

    move-result-wide v23

    sub-long v21, v21, v23

    move-wide/from16 v0, v21

    iput-wide v0, v2, Lcom/android/camera/PhotoModule;->mShutterToPictureDisplayedTime:J

    .line 1940
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mJpegPictureCallbackTime:J
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$9100(Lcom/android/camera/PhotoModule;)J

    move-result-wide v21

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mRawPictureCallbackTime:J
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$8900(Lcom/android/camera/PhotoModule;)J

    move-result-wide v23

    sub-long v21, v21, v23

    move-wide/from16 v0, v21

    iput-wide v0, v2, Lcom/android/camera/PhotoModule;->mPictureDisplayedToJpegCallbackTime:J

    goto/16 :goto_1

    .line 1972
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$1400(Lcom/android/camera/PhotoModule;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    const-wide/16 v21, 0x12c

    move-wide/from16 v0, v21

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2

    .line 1998
    .restart local v10       #orientation:I
    .restart local v20       #s:Landroid/hardware/Camera$Size;
    :cond_12
    move-object/from16 v0, v20

    iget v7, v0, Landroid/hardware/Camera$Size;->height:I

    .line 1999
    .restart local v7       #width:I
    move-object/from16 v0, v20

    iget v8, v0, Landroid/hardware/Camera$Size;->width:I

    .restart local v8       #height:I
    goto/16 :goto_3

    .line 2039
    .end local v7           #width:I
    .end local v8           #height:I
    .end local v10           #orientation:I
    .end local v20           #s:Landroid/hardware/Camera$Size;
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mImageNamer:Lcom/android/camera/PhotoModule$ImageNamer;
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$8400(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$ImageNamer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/PhotoModule$ImageNamer;->getUri()Landroid/net/Uri;

    move-result-object v4

    .line 2040
    .restart local v4       #uri:Landroid/net/Uri;
    if-eqz v4, :cond_14

    .line 2041
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mImageNamer:Lcom/android/camera/PhotoModule$ImageNamer;
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$8400(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$ImageNamer;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/camera/PhotoModule$ImageNamer;->cleanInvalidUri(Landroid/net/Uri;)V

    .line 2044
    :cond_14
    if-nez p1, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/CameraActivity;->mCurrentModeOverried:Ljava/lang/String;

    const-string v3, "bestpick"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/CameraActivity;->mCurrentModeOverried:Ljava/lang/String;

    const-string v3, "pickclear"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/CameraActivity;->mCurrentEffectModeOverried:Ljava/lang/String;

    const-string v3, "hdr_art"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 2047
    const-string v2, "camera_jpeg_callback_failed"

    invoke-static {v2}, Lcom/android/camera/Util;->launchBugReportSystemByReflect(Ljava/lang/String;)V

    .line 2048
    const-string v2, "CAM_PhotoModule"

    const-string v3, "JpegPictureCallback data is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2052
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mCurrentEffectModule:Lcom/android/camera/CameraEffectModule;
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$4900(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraEffectModule;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 2054
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mCurrentEffectModule:Lcom/android/camera/CameraEffectModule;
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$4900(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraEffectModule;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mImageNamer:Lcom/android/camera/PhotoModule$ImageNamer;
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$8400(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$ImageNamer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/PhotoModule$ImageNamer;->getTitle()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    invoke-interface {v2, v4, v3, v6}, Lcom/android/camera/CameraEffectModule;->setImageUri(Landroid/net/Uri;Ljava/lang/String;Z)V

    goto/16 :goto_4

    .line 2058
    .end local v4           #uri:Landroid/net/Uri;
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    move-object/from16 v0, p1

    #setter for: Lcom/android/camera/PhotoModule;->mJpegImageData:[B
    invoke-static {v2, v0}, Lcom/android/camera/PhotoModule;->access$9602(Lcom/android/camera/PhotoModule;[B)[B

    .line 2059
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mJpegImageData:[B
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$9600(Lcom/android/camera/PhotoModule;)[B

    move-result-object v2

    if-eqz v2, :cond_a

    .line 2062
    new-instance v17, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2063
    .local v17, options:Landroid/graphics/BitmapFactory$Options;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$1000(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v13

    .line 2064
    .local v13, imageSize:Landroid/hardware/Camera$Size;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$1000(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v18

    .line 2066
    .local v18, previewSize:Landroid/hardware/Camera$Size;
    iget v2, v13, Landroid/hardware/Camera$Size;->width:I

    int-to-double v2, v2

    move-object/from16 v0, v18

    iget v6, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-double v0, v6

    move-wide/from16 v21, v0

    div-double v2, v2, v21

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    move/from16 v19, v0

    .line 2068
    .local v19, ratio:I
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v2

    move-object/from16 v0, v17

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 2069
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mPreviewBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$9700(Lcom/android/camera/PhotoModule;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 2070
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mPreviewBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$9700(Lcom/android/camera/PhotoModule;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 2072
    :cond_17
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mJpegImageData:[B
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$9600(Lcom/android/camera/PhotoModule;)[B

    move-result-object v3

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mJpegImageData:[B
    invoke-static {v9}, Lcom/android/camera/PhotoModule;->access$9600(Lcom/android/camera/PhotoModule;)[B

    move-result-object v9

    array-length v9, v9

    move-object/from16 v0, v17

    invoke-static {v3, v6, v9, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    #setter for: Lcom/android/camera/PhotoModule;->mPreviewBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2, v3}, Lcom/android/camera/PhotoModule;->access$9702(Lcom/android/camera/PhotoModule;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 2074
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/ui/RotateControl;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/RotateControl;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getEnterOrientation()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/CameraActivity;->getRotateOrientation()I

    move-result v6

    invoke-virtual {v2, v3, v6}, Lcom/android/camera/ui/RotateControl;->getJpgAngle(II)I

    move-result v11

    .line 2076
    .local v11, angle:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mPreviewBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$9700(Lcom/android/camera/PhotoModule;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v11, v3}, Lcom/android/gallery3d/common/BitmapUtils;->getRotateBitmap(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    #setter for: Lcom/android/camera/PhotoModule;->mPreviewBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2, v3}, Lcom/android/camera/PhotoModule;->access$9702(Lcom/android/camera/PhotoModule;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2080
    .end local v11           #angle:I
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mQuickCapture:Z
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$9800(Lcom/android/camera/PhotoModule;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 2081
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #calls: Lcom/android/camera/PhotoModule;->showPostCaptureAlert()V
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$9900(Lcom/android/camera/PhotoModule;)V

    goto/16 :goto_4

    .line 2077
    :catch_0
    move-exception v12

    .line 2078
    .local v12, ex:Ljava/lang/Exception;
    const-string v2, "CAM_PhotoModule"

    const-string v3, ">>>>>>>BitmapFactory.decodeByteArray is fail"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 2083
    .end local v12           #ex:Ljava/lang/Exception;
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #calls: Lcom/android/camera/PhotoModule;->doAttach()V
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$10000(Lcom/android/camera/PhotoModule;)V

    goto/16 :goto_4

    .line 2108
    .end local v13           #imageSize:Landroid/hardware/Camera$Size;
    .end local v17           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v18           #previewSize:Landroid/hardware/Camera$Size;
    .end local v19           #ratio:I
    .restart local v15       #now:J
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/camera/CameraActivity;->needUpdateView:Z

    if-eqz v2, :cond_d

    .line 2109
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v3

    iget-object v3, v3, Lcom/android/camera/ActivityBase;->mLatestUri:Landroid/net/Uri;

    #calls: Lcom/android/camera/PhotoModule;->ForceUpdateShot2ShotThumb(Landroid/net/Uri;)V
    invoke-static {v2, v3}, Lcom/android/camera/PhotoModule;->access$10200(Lcom/android/camera/PhotoModule;Landroid/net/Uri;)V

    goto/16 :goto_5
.end method
