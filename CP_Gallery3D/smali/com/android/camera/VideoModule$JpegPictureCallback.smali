.class final Lcom/android/camera/VideoModule$JpegPictureCallback;
.super Ljava/lang/Object;
.source "VideoModule.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/VideoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "JpegPictureCallback"
.end annotation


# instance fields
.field mLocation:Landroid/location/Location;

.field final synthetic this$0:Lcom/android/camera/VideoModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/VideoModule;Landroid/location/Location;)V
    .locals 0
    .parameter
    .parameter "loc"

    .prologue
    .line 4123
    iput-object p1, p0, Lcom/android/camera/VideoModule$JpegPictureCallback;->this$0:Lcom/android/camera/VideoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4124
    iput-object p2, p0, Lcom/android/camera/VideoModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    .line 4125
    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 5
    .parameter "jpegData"
    .parameter "camera"

    .prologue
    const/4 v3, 0x0

    .line 4129
    const-string v1, "CAM_VideoModule"

    const-string v2, "onPictureTaken"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4132
    iget-object v1, p0, Lcom/android/camera/VideoModule$JpegPictureCallback;->this$0:Lcom/android/camera/VideoModule;

    #setter for: Lcom/android/camera/VideoModule;->mSnapshotInProgress:Z
    invoke-static {v1, v3}, Lcom/android/camera/VideoModule;->access$802(Lcom/android/camera/VideoModule;Z)Z

    .line 4133
    iget-object v1, p0, Lcom/android/camera/VideoModule$JpegPictureCallback;->this$0:Lcom/android/camera/VideoModule;

    invoke-virtual {v1, v3}, Lcom/android/camera/VideoModule;->showVideoSnapshotUI(Z)V

    .line 4135
    iget-object v1, p0, Lcom/android/camera/VideoModule$JpegPictureCallback;->this$0:Lcom/android/camera/VideoModule;

    #getter for: Lcom/android/camera/VideoModule;->mImageSaver:Lcom/android/camera/VideoModule$ImageSaver;
    invoke-static {v1}, Lcom/android/camera/VideoModule;->access$4400(Lcom/android/camera/VideoModule;)Lcom/android/camera/VideoModule$ImageSaver;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4136
    iget-object v1, p0, Lcom/android/camera/VideoModule$JpegPictureCallback;->this$0:Lcom/android/camera/VideoModule;

    #getter for: Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v1}, Lcom/android/camera/VideoModule;->access$600(Lcom/android/camera/VideoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 4137
    .local v0, sz:Landroid/hardware/Camera$Size;
    iget-object v1, p0, Lcom/android/camera/VideoModule$JpegPictureCallback;->this$0:Lcom/android/camera/VideoModule;

    #getter for: Lcom/android/camera/VideoModule;->mImageSaver:Lcom/android/camera/VideoModule$ImageSaver;
    invoke-static {v1}, Lcom/android/camera/VideoModule;->access$4400(Lcom/android/camera/VideoModule;)Lcom/android/camera/VideoModule$ImageSaver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/VideoModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    iget v4, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/android/camera/VideoModule$ImageSaver;->addImage([BLandroid/location/Location;II)V

    .line 4139
    .end local v0           #sz:Landroid/hardware/Camera$Size;
    :cond_0
    return-void
.end method
