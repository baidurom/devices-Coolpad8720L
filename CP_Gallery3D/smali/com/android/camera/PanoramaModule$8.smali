.class Lcom/android/camera/PanoramaModule$8;
.super Ljava/lang/Thread;
.source "PanoramaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PanoramaModule;->saveHighResMosaic()V
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
    .line 1083
    iput-object p1, p0, Lcom/android/camera/PanoramaModule$8;->this$0:Lcom/android/camera/PanoramaModule;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x3

    .line 1086
    iget-object v5, p0, Lcom/android/camera/PanoramaModule$8;->this$0:Lcom/android/camera/PanoramaModule;

    #getter for: Lcom/android/camera/PanoramaModule;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v5}, Lcom/android/camera/PanoramaModule;->access$3100(Lcom/android/camera/PanoramaModule;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1089
    :try_start_0
    iget-object v5, p0, Lcom/android/camera/PanoramaModule$8;->this$0:Lcom/android/camera/PanoramaModule;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/camera/PanoramaModule;->generateFinalMosaic(Z)Lcom/android/camera/PanoramaModule$MosaicJpeg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1091
    .local v1, jpeg:Lcom/android/camera/PanoramaModule$MosaicJpeg;
    iget-object v5, p0, Lcom/android/camera/PanoramaModule$8;->this$0:Lcom/android/camera/PanoramaModule;

    #getter for: Lcom/android/camera/PanoramaModule;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v5}, Lcom/android/camera/PanoramaModule;->access$3100(Lcom/android/camera/PanoramaModule;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1094
    if-nez v1, :cond_0

    .line 1096
    iget-object v5, p0, Lcom/android/camera/PanoramaModule$8;->this$0:Lcom/android/camera/PanoramaModule;

    #setter for: Lcom/android/camera/PanoramaModule;->mThumbnail:Lcom/android/camera/Thumbnail;
    invoke-static {v5, v7}, Lcom/android/camera/PanoramaModule;->access$1902(Lcom/android/camera/PanoramaModule;Lcom/android/camera/Thumbnail;)Lcom/android/camera/Thumbnail;

    .line 1097
    iget-object v5, p0, Lcom/android/camera/PanoramaModule$8;->this$0:Lcom/android/camera/PanoramaModule;

    #getter for: Lcom/android/camera/PanoramaModule;->mMainHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/camera/PanoramaModule;->access$2300(Lcom/android/camera/PanoramaModule;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1122
    :goto_0
    return-void

    .line 1091
    .end local v1           #jpeg:Lcom/android/camera/PanoramaModule$MosaicJpeg;
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/android/camera/PanoramaModule$8;->this$0:Lcom/android/camera/PanoramaModule;

    #getter for: Lcom/android/camera/PanoramaModule;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v6}, Lcom/android/camera/PanoramaModule;->access$3100(Lcom/android/camera/PanoramaModule;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v5

    .line 1098
    .restart local v1       #jpeg:Lcom/android/camera/PanoramaModule$MosaicJpeg;
    :cond_0
    iget-boolean v5, v1, Lcom/android/camera/PanoramaModule$MosaicJpeg;->isValid:Z

    if-nez v5, :cond_1

    .line 1100
    iget-object v5, p0, Lcom/android/camera/PanoramaModule$8;->this$0:Lcom/android/camera/PanoramaModule;

    #setter for: Lcom/android/camera/PanoramaModule;->mThumbnail:Lcom/android/camera/Thumbnail;
    invoke-static {v5, v7}, Lcom/android/camera/PanoramaModule;->access$1902(Lcom/android/camera/PanoramaModule;Lcom/android/camera/Thumbnail;)Lcom/android/camera/Thumbnail;

    .line 1101
    iget-object v5, p0, Lcom/android/camera/PanoramaModule$8;->this$0:Lcom/android/camera/PanoramaModule;

    #getter for: Lcom/android/camera/PanoramaModule;->mMainHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/camera/PanoramaModule;->access$2300(Lcom/android/camera/PanoramaModule;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1103
    :cond_1
    iget-object v5, p0, Lcom/android/camera/PanoramaModule$8;->this$0:Lcom/android/camera/PanoramaModule;

    #getter for: Lcom/android/camera/PanoramaModule;->mCancelComputation:Z
    invoke-static {v5}, Lcom/android/camera/PanoramaModule;->access$2800(Lcom/android/camera/PanoramaModule;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1104
    iget-object v5, p0, Lcom/android/camera/PanoramaModule$8;->this$0:Lcom/android/camera/PanoramaModule;

    #calls: Lcom/android/camera/PanoramaModule;->getCaptureOrientation()I
    invoke-static {v5}, Lcom/android/camera/PanoramaModule;->access$3200(Lcom/android/camera/PanoramaModule;)I

    move-result v2

    .line 1105
    .local v2, orientation:I
    iget-object v5, p0, Lcom/android/camera/PanoramaModule$8;->this$0:Lcom/android/camera/PanoramaModule;

    iget-object v6, v1, Lcom/android/camera/PanoramaModule$MosaicJpeg;->data:[B

    iget v7, v1, Lcom/android/camera/PanoramaModule$MosaicJpeg;->width:I

    iget v8, v1, Lcom/android/camera/PanoramaModule$MosaicJpeg;->height:I

    #calls: Lcom/android/camera/PanoramaModule;->savePanorama([BIII)Landroid/net/Uri;
    invoke-static {v5, v6, v7, v8, v2}, Lcom/android/camera/PanoramaModule;->access$3300(Lcom/android/camera/PanoramaModule;[BIII)Landroid/net/Uri;

    move-result-object v4

    .line 1106
    .local v4, uri:Landroid/net/Uri;
    iget-object v5, p0, Lcom/android/camera/PanoramaModule$8;->this$0:Lcom/android/camera/PanoramaModule;

    #getter for: Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v5}, Lcom/android/camera/PanoramaModule;->access$000(Lcom/android/camera/PanoramaModule;)Lcom/android/camera/CameraActivity;

    move-result-object v5

    iput-object v4, v5, Lcom/android/camera/ActivityBase;->mLatestUri:Landroid/net/Uri;

    .line 1107
    if-eqz v4, :cond_2

    .line 1108
    iget-object v5, p0, Lcom/android/camera/PanoramaModule$8;->this$0:Lcom/android/camera/PanoramaModule;

    #getter for: Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v5}, Lcom/android/camera/PanoramaModule;->access$000(Lcom/android/camera/PanoramaModule;)Lcom/android/camera/CameraActivity;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v4}, Lcom/android/camera/ActivityBase;->addSecureAlbumItemIfNeeded(ZLandroid/net/Uri;)V

    .line 1110
    iget v5, v1, Lcom/android/camera/PanoramaModule$MosaicJpeg;->height:I

    iget v6, v1, Lcom/android/camera/PanoramaModule$MosaicJpeg;->width:I

    if-le v5, v6, :cond_3

    iget v5, v1, Lcom/android/camera/PanoramaModule$MosaicJpeg;->width:I

    :goto_1
    int-to-double v5, v5

    iget-object v7, p0, Lcom/android/camera/PanoramaModule$8;->this$0:Lcom/android/camera/PanoramaModule;

    iget v7, v7, Lcom/android/camera/PanoramaModule;->mThumbnailViewWidth:I

    int-to-double v7, v7

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v3, v5

    .line 1113
    .local v3, ratio:I
    invoke-static {v3}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    .line 1114
    .local v0, inSampleSize:I
    iget-object v5, p0, Lcom/android/camera/PanoramaModule$8;->this$0:Lcom/android/camera/PanoramaModule;

    iget-object v6, v1, Lcom/android/camera/PanoramaModule$MosaicJpeg;->data:[B

    invoke-static {v6, v2, v0, v4}, Lcom/android/camera/Thumbnail;->createThumbnail([BIILandroid/net/Uri;)Lcom/android/camera/Thumbnail;

    move-result-object v6

    #setter for: Lcom/android/camera/PanoramaModule;->mThumbnail:Lcom/android/camera/Thumbnail;
    invoke-static {v5, v6}, Lcom/android/camera/PanoramaModule;->access$1902(Lcom/android/camera/PanoramaModule;Lcom/android/camera/Thumbnail;)Lcom/android/camera/Thumbnail;

    .line 1116
    iget-object v5, p0, Lcom/android/camera/PanoramaModule$8;->this$0:Lcom/android/camera/PanoramaModule;

    #getter for: Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v5}, Lcom/android/camera/PanoramaModule;->access$000(Lcom/android/camera/PanoramaModule;)Lcom/android/camera/CameraActivity;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/android/camera/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1119
    .end local v0           #inSampleSize:I
    .end local v2           #orientation:I
    .end local v3           #ratio:I
    .end local v4           #uri:Landroid/net/Uri;
    :cond_2
    iget-object v5, p0, Lcom/android/camera/PanoramaModule$8;->this$0:Lcom/android/camera/PanoramaModule;

    #getter for: Lcom/android/camera/PanoramaModule;->mMainHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/camera/PanoramaModule;->access$2300(Lcom/android/camera/PanoramaModule;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/PanoramaModule$8;->this$0:Lcom/android/camera/PanoramaModule;

    #getter for: Lcom/android/camera/PanoramaModule;->mMainHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/camera/PanoramaModule;->access$2300(Lcom/android/camera/PanoramaModule;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1110
    .restart local v2       #orientation:I
    .restart local v4       #uri:Landroid/net/Uri;
    :cond_3
    iget v5, v1, Lcom/android/camera/PanoramaModule$MosaicJpeg;->height:I

    goto :goto_1
.end method
