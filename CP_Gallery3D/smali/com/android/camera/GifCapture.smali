.class public Lcom/android/camera/GifCapture;
.super Ljava/lang/Object;
.source "GifCapture.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/GifCapture$GifCaptureHandler;,
        Lcom/android/camera/GifCapture$OperationListener;,
        Lcom/android/camera/GifCapture$GifState;
    }
.end annotation


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Lcom/android/camera/CameraActivity;

.field private mFileOutputStream:Ljava/io/FileOutputStream;

.field private mGifBufStream:Ljava/io/ByteArrayOutputStream;

.field private mGifCaptureHandler:Lcom/android/camera/GifCapture$GifCaptureHandler;

.field private mGifCaptureHandlerThread:Landroid/os/HandlerThread;

.field private mGifData:[B

.field private mGifHeight:I

.field private mGifIndex:I

.field private mGifWidth:I

.field private mGifencode:Ljava/lang/reflect/Method;

.field public mGuageIndicatorContainer:Lcom/android/camera/ui/GuageIndicatorContainer;

.field private mHandler:Landroid/os/Handler;

.field private mInputImageBuffer:[B

.field private mIsOn:Z

.field private mLocation:Landroid/location/Location;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mNeedPlaySound:Z

.field private mOperationListener:Lcom/android/camera/GifCapture$OperationListener;

.field private mOrientation:I

.field private mPath:Ljava/lang/String;

.field private mPendingThumbnail:Lcom/android/camera/Thumbnail;

.field private mState:Lcom/android/camera/GifCapture$GifState;

.field private mStoped:Z

.field private mThumbnailData:[B

.field private mThumbnailWidth:I

.field private mTitle:Ljava/lang/String;

.field private mUpdateHandler:Landroid/os/Handler;

.field private mUri:Landroid/net/Uri;

.field private mViewContainer:Landroid/view/ViewGroup;

.field private mYuvImage:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraActivity;Landroid/content/ContentResolver;Landroid/view/ViewGroup;Landroid/os/Handler;)V
    .locals 4
    .parameter "context"
    .parameter "contentResolver"
    .parameter "vg"
    .parameter "handler"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean v2, p0, Lcom/android/camera/GifCapture;->mIsOn:Z

    .line 51
    iput-object v1, p0, Lcom/android/camera/GifCapture;->mContext:Lcom/android/camera/CameraActivity;

    .line 54
    iput-boolean v2, p0, Lcom/android/camera/GifCapture;->mStoped:Z

    .line 56
    sget-object v0, Lcom/android/camera/GifCapture$GifState;->NONE:Lcom/android/camera/GifCapture$GifState;

    iput-object v0, p0, Lcom/android/camera/GifCapture;->mState:Lcom/android/camera/GifCapture$GifState;

    .line 63
    iput-object v1, p0, Lcom/android/camera/GifCapture;->mInputImageBuffer:[B

    .line 65
    iput-object v1, p0, Lcom/android/camera/GifCapture;->mGifencode:Ljava/lang/reflect/Method;

    .line 68
    iput v3, p0, Lcom/android/camera/GifCapture;->mGifIndex:I

    .line 74
    iput v2, p0, Lcom/android/camera/GifCapture;->mOrientation:I

    .line 77
    iput-object v1, p0, Lcom/android/camera/GifCapture;->mContentResolver:Landroid/content/ContentResolver;

    .line 78
    iput-object v1, p0, Lcom/android/camera/GifCapture;->mFileOutputStream:Ljava/io/FileOutputStream;

    .line 79
    iput-object v1, p0, Lcom/android/camera/GifCapture;->mGifBufStream:Ljava/io/ByteArrayOutputStream;

    .line 83
    iput-object v1, p0, Lcom/android/camera/GifCapture;->mGifData:[B

    .line 84
    iput-object v1, p0, Lcom/android/camera/GifCapture;->mThumbnailData:[B

    .line 86
    iput-boolean v3, p0, Lcom/android/camera/GifCapture;->mNeedPlaySound:Z

    .line 801
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/camera/GifCapture;->mUpdateHandler:Landroid/os/Handler;

    .line 100
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "GifCapture Handler Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/GifCapture;->mGifCaptureHandlerThread:Landroid/os/HandlerThread;

    .line 101
    iget-object v0, p0, Lcom/android/camera/GifCapture;->mGifCaptureHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 102
    new-instance v0, Lcom/android/camera/GifCapture$GifCaptureHandler;

    iget-object v1, p0, Lcom/android/camera/GifCapture;->mGifCaptureHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/camera/GifCapture$GifCaptureHandler;-><init>(Lcom/android/camera/GifCapture;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/GifCapture;->mGifCaptureHandler:Lcom/android/camera/GifCapture$GifCaptureHandler;

    .line 103
    invoke-virtual {p0, v2}, Lcom/android/camera/GifCapture;->setStoped(Z)V

    .line 104
    iput-object p1, p0, Lcom/android/camera/GifCapture;->mContext:Lcom/android/camera/CameraActivity;

    .line 106
    iput-object p2, p0, Lcom/android/camera/GifCapture;->mContentResolver:Landroid/content/ContentResolver;

    .line 107
    iput-object p4, p0, Lcom/android/camera/GifCapture;->mHandler:Landroid/os/Handler;

    .line 108
    sget-object v0, Lcom/android/camera/GifCapture$GifState;->NONE:Lcom/android/camera/GifCapture$GifState;

    iput-object v0, p0, Lcom/android/camera/GifCapture;->mState:Lcom/android/camera/GifCapture$GifState;

    .line 109
    iput v3, p0, Lcom/android/camera/GifCapture;->mGifIndex:I

    .line 110
    iput-object p3, p0, Lcom/android/camera/GifCapture;->mViewContainer:Landroid/view/ViewGroup;

    .line 111
    const v0, 0x7f10009b

    const v1, 0x7f04002b

    iget-object v2, p0, Lcom/android/camera/GifCapture;->mViewContainer:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/GifCapture;->initProcessBar(IILandroid/view/ViewGroup;)V

    .line 113
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/GifCapture;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/GifCapture;->mInputImageBuffer:[B

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/GifCapture;)Lcom/android/camera/GifCapture$GifState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/GifCapture;->mState:Lcom/android/camera/GifCapture$GifState;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/GifCapture;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/camera/GifCapture;->mGifIndex:I

    return v0
.end method

.method static synthetic access$1008(Lcom/android/camera/GifCapture;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/camera/GifCapture;->mGifIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/camera/GifCapture;->mGifIndex:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/camera/GifCapture;Lcom/android/camera/GifCapture$GifState;)Lcom/android/camera/GifCapture$GifState;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/camera/GifCapture;->mState:Lcom/android/camera/GifCapture$GifState;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/camera/GifCapture;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/GifCapture;->mGifData:[B

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/camera/GifCapture;[B)[B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/camera/GifCapture;->mGifData:[B

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/camera/GifCapture;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/GifCapture;->mThumbnailData:[B

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/camera/GifCapture;[B)[B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/camera/GifCapture;->mThumbnailData:[B

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/camera/GifCapture;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/GifCapture;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/GifCapture;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/GifCapture;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/GifCapture;)Landroid/location/Location;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/GifCapture;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/camera/GifCapture;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/camera/GifCapture;->mThumbnailWidth:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/camera/GifCapture;[BLandroid/net/Uri;Ljava/lang/String;Landroid/location/Location;IIIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .parameter "x9"

    .prologue
    .line 44
    invoke-direct/range {p0 .. p9}, Lcom/android/camera/GifCapture;->storeGifImage([BLandroid/net/Uri;Ljava/lang/String;Landroid/location/Location;IIIII)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/camera/GifCapture;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/GifCapture;->mUpdateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/camera/GifCapture;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/camera/GifCapture;->stopGifCaptureSound()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/GifCapture;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/camera/GifCapture;->playGifCaptureSound()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/camera/GifCapture;)Lcom/android/camera/GifCapture$OperationListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/GifCapture;->mOperationListener:Lcom/android/camera/GifCapture$OperationListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/GifCapture;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/GifCapture;->mYuvImage:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/camera/GifCapture;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/camera/GifCapture;->mYuvImage:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/camera/GifCapture;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/camera/GifCapture;->mGifWidth:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/camera/GifCapture;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/camera/GifCapture;->mGifHeight:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/camera/GifCapture;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/camera/GifCapture;->mOrientation:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/camera/GifCapture;)Ljava/lang/reflect/Method;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/GifCapture;->mGifencode:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/camera/GifCapture;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/camera/GifCapture;->mGifencode:Ljava/lang/reflect/Method;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/camera/GifCapture;)Lcom/android/camera/GifCapture$GifCaptureHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/GifCapture;->mGifCaptureHandler:Lcom/android/camera/GifCapture$GifCaptureHandler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/GifCapture;)Ljava/io/ByteArrayOutputStream;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/GifCapture;->mGifBufStream:Ljava/io/ByteArrayOutputStream;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/camera/GifCapture;Ljava/io/ByteArrayOutputStream;)Ljava/io/ByteArrayOutputStream;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/camera/GifCapture;->mGifBufStream:Ljava/io/ByteArrayOutputStream;

    return-object p1
.end method

.method private initProcessBar(IILandroid/view/ViewGroup;)V
    .locals 4
    .parameter "rootViewId"
    .parameter "layoutId"
    .parameter "group"

    .prologue
    .line 115
    iget-object v2, p0, Lcom/android/camera/GifCapture;->mGuageIndicatorContainer:Lcom/android/camera/ui/GuageIndicatorContainer;

    if-nez v2, :cond_0

    .line 117
    iget-object v2, p0, Lcom/android/camera/GifCapture;->mContext:Lcom/android/camera/CameraActivity;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 119
    .local v0, inflater:Landroid/view/LayoutInflater;
    const/4 v2, 0x1

    invoke-virtual {v0, p2, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 120
    .local v1, root:Landroid/view/View;
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/GuageIndicatorContainer;

    iput-object v2, p0, Lcom/android/camera/GifCapture;->mGuageIndicatorContainer:Lcom/android/camera/ui/GuageIndicatorContainer;

    .line 122
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    .end local v1           #root:Landroid/view/View;
    :cond_0
    return-void
.end method

.method private onGifCaptureStop()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 743
    iget-object v6, p0, Lcom/android/camera/GifCapture;->mFileOutputStream:Ljava/io/FileOutputStream;

    if-nez v6, :cond_0

    .line 791
    :goto_0
    return-void

    .line 745
    :cond_0
    const/4 v6, 0x1

    new-array v0, v6, [B

    const/4 v6, 0x0

    const/16 v7, 0x3b

    aput-byte v7, v0, v6

    .line 748
    .local v0, b:[B
    :try_start_0
    iget-object v6, p0, Lcom/android/camera/GifCapture;->mFileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v6, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 755
    :goto_1
    :try_start_1
    iget-object v6, p0, Lcom/android/camera/GifCapture;->mFileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 758
    iget-object v6, p0, Lcom/android/camera/GifCapture;->mFileOutputStream:Ljava/io/FileOutputStream;

    invoke-static {v6}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 760
    :goto_2
    iput-object v10, p0, Lcom/android/camera/GifCapture;->mFileOutputStream:Ljava/io/FileOutputStream;

    .line 763
    :try_start_2
    new-instance v3, Ljava/io/File;

    iget-object v6, p0, Lcom/android/camera/GifCapture;->mPath:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 764
    .local v3, file:Ljava/io/File;
    if-eqz v3, :cond_1

    .line 765
    iget-object v6, p0, Lcom/android/camera/GifCapture;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v7, p0, Lcom/android/camera/GifCapture;->mUri:Landroid/net/Uri;

    invoke-direct {p0, v6, v7, v3}, Lcom/android/camera/GifCapture;->updateDbRecorder(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 771
    .end local v3           #file:Ljava/io/File;
    :cond_1
    :goto_3
    iget-object v6, p0, Lcom/android/camera/GifCapture;->mThumbnailData:[B

    if-eqz v6, :cond_2

    .line 772
    iget v6, p0, Lcom/android/camera/GifCapture;->mGifWidth:I

    int-to-double v6, v6

    iget v8, p0, Lcom/android/camera/GifCapture;->mThumbnailWidth:I

    int-to-double v8, v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v5, v6

    .line 773
    .local v5, ratio:I
    invoke-static {v5}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v4

    .line 774
    .local v4, inSampleSize:I
    iget-object v6, p0, Lcom/android/camera/GifCapture;->mThumbnailData:[B

    iget v7, p0, Lcom/android/camera/GifCapture;->mGifWidth:I

    iget v8, p0, Lcom/android/camera/GifCapture;->mGifHeight:I

    invoke-direct {p0, v6, v7, v8}, Lcom/android/camera/GifCapture;->yuvToJpeg([BII)[B

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/GifCapture;->mThumbnailData:[B

    .line 775
    iget-object v6, p0, Lcom/android/camera/GifCapture;->mThumbnailData:[B

    iget v7, p0, Lcom/android/camera/GifCapture;->mOrientation:I

    iget-object v8, p0, Lcom/android/camera/GifCapture;->mUri:Landroid/net/Uri;

    invoke-static {v6, v7, v4, v8}, Lcom/android/camera/Thumbnail;->createThumbnail([BIILandroid/net/Uri;)Lcom/android/camera/Thumbnail;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/GifCapture;->mPendingThumbnail:Lcom/android/camera/Thumbnail;

    .line 777
    iget-object v6, p0, Lcom/android/camera/GifCapture;->mPendingThumbnail:Lcom/android/camera/Thumbnail;

    iget-object v7, p0, Lcom/android/camera/GifCapture;->mUri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Lcom/android/camera/Thumbnail;->setShortCutUri(Landroid/net/Uri;)V

    .line 779
    iget-object v6, p0, Lcom/android/camera/GifCapture;->mHandler:Landroid/os/Handler;

    if-eqz v6, :cond_2

    .line 780
    iget-object v6, p0, Lcom/android/camera/GifCapture;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x18

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 785
    .end local v4           #inSampleSize:I
    .end local v5           #ratio:I
    :cond_2
    :try_start_3
    iget-object v6, p0, Lcom/android/camera/GifCapture;->mGifBufStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 790
    :goto_4
    iput-object v10, p0, Lcom/android/camera/GifCapture;->mGifBufStream:Ljava/io/ByteArrayOutputStream;

    goto :goto_0

    .line 749
    :catch_0
    move-exception v1

    .line 751
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 756
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v6

    .line 758
    iget-object v6, p0, Lcom/android/camera/GifCapture;->mFileOutputStream:Ljava/io/FileOutputStream;

    invoke-static {v6}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception v6

    iget-object v7, p0, Lcom/android/camera/GifCapture;->mFileOutputStream:Ljava/io/FileOutputStream;

    invoke-static {v7}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v6

    .line 767
    :catch_2
    move-exception v2

    .line 768
    .local v2, ex:Ljava/lang/Exception;
    const-string v6, "GifCapture"

    const-string v7, "Exception while update image database."

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 786
    .end local v2           #ex:Ljava/lang/Exception;
    :catch_3
    move-exception v1

    .line 788
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4
.end method

.method private playGifCaptureSound()V
    .locals 8

    .prologue
    .line 473
    iget-boolean v0, p0, Lcom/android/camera/GifCapture;->mNeedPlaySound:Z

    if-nez v0, :cond_1

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 477
    :cond_1
    iget-object v0, p0, Lcom/android/camera/GifCapture;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_2

    .line 478
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/android/camera/GifCapture;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 481
    :cond_2
    iget-object v0, p0, Lcom/android/camera/GifCapture;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/android/camera/GifCapture;->mContext:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 485
    .local v6, afd:Landroid/content/res/AssetFileDescriptor;
    if-eqz v6, :cond_4

    .line 487
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/GifCapture;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 488
    iget-object v0, p0, Lcom/android/camera/GifCapture;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 489
    const-string v0, "GifCapture"

    const-string v1, "fastburst sound is playing, stop it."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_3
    iget-object v0, p0, Lcom/android/camera/GifCapture;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 492
    iget-object v0, p0, Lcom/android/camera/GifCapture;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 493
    iget-object v0, p0, Lcom/android/camera/GifCapture;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 494
    iget-object v0, p0, Lcom/android/camera/GifCapture;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 495
    iget-object v0, p0, Lcom/android/camera/GifCapture;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 505
    :try_start_1
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 511
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/camera/GifCapture;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0

    .line 506
    :catch_0
    move-exception v7

    .line 507
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 496
    .end local v7           #e:Ljava/io/IOException;
    :catch_1
    move-exception v7

    .line 497
    .local v7, e:Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 505
    :try_start_3
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 506
    :catch_2
    move-exception v7

    .line 507
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 498
    .end local v7           #e:Ljava/io/IOException;
    :catch_3
    move-exception v7

    .line 499
    .local v7, e:Ljava/lang/IllegalStateException;
    :try_start_4
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 505
    :try_start_5
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_1

    .line 506
    :catch_4
    move-exception v7

    .line 507
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 501
    .end local v7           #e:Ljava/io/IOException;
    :catch_5
    move-exception v7

    .line 502
    .restart local v7       #e:Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 505
    :try_start_7
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_1

    .line 506
    :catch_6
    move-exception v7

    .line 507
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 504
    .end local v7           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v0

    .line 505
    :try_start_8
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 508
    :goto_2
    throw v0

    .line 506
    :catch_7
    move-exception v7

    .line 507
    .restart local v7       #e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method private setImageSize(Landroid/content/ContentValues;II)V
    .locals 2
    .parameter "values"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 736
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_MEDIA_COLUMNS_WIDTH_AND_HEIGHT:Z

    if-eqz v0, :cond_0

    .line 737
    const-string v0, "width"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 738
    const-string v0, "height"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 740
    :cond_0
    return-void
.end method

.method private stopGifCaptureSound()V
    .locals 2

    .prologue
    .line 460
    iget-boolean v0, p0, Lcom/android/camera/GifCapture;->mNeedPlaySound:Z

    if-nez v0, :cond_1

    .line 470
    :cond_0
    :goto_0
    return-void

    .line 464
    :cond_1
    iget-object v0, p0, Lcom/android/camera/GifCapture;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/android/camera/GifCapture;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 466
    iget-object v0, p0, Lcom/android/camera/GifCapture;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/android/camera/GifCapture;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    goto :goto_0
.end method

.method private storeGifImage([BLandroid/net/Uri;Ljava/lang/String;Landroid/location/Location;IIIII)V
    .locals 14
    .parameter "gif"
    .parameter "uri"
    .parameter "title"
    .parameter "loc"
    .parameter "width"
    .parameter "height"
    .parameter "thumbnailWidth"
    .parameter "orientation"
    .parameter "index"

    .prologue
    .line 547
    const/4 v13, 0x0

    .line 548
    .local v13, ok:Z
    iget-object v1, p0, Lcom/android/camera/GifCapture;->mContext:Lcom/android/camera/CameraActivity;

    iget-boolean v1, v1, Lcom/android/camera/CameraActivity;->isHasImageNum:Z

    if-eqz v1, :cond_2

    .line 549
    iget-object v1, p0, Lcom/android/camera/GifCapture;->mContext:Lcom/android/camera/CameraActivity;

    iget v2, v1, Lcom/android/camera/CameraActivity;->ImageNum:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/camera/CameraActivity;->ImageNum:I

    .line 550
    const-string v1, "GifCapture"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveGif---------GIFImageNum = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/GifCapture;->mContext:Lcom/android/camera/CameraActivity;

    iget v3, v3, Lcom/android/camera/CameraActivity;->ImageNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    iget-object v2, p0, Lcom/android/camera/GifCapture;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/camera/GifCapture;->mContext:Lcom/android/camera/CameraActivity;

    iget v11, v1, Lcom/android/camera/CameraActivity;->ImageNum:I

    move-object v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p8

    move-object v7, p1

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p9

    invoke-virtual/range {v1 .. v11}, Lcom/android/camera/GifCapture;->updateGifImage(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Landroid/location/Location;I[BIIII)Z

    move-result v13

    .line 558
    :goto_0
    if-eqz v13, :cond_1

    .line 559
    const/4 v12, 0x0

    .line 560
    .local v12, needThumbnail:Z
    monitor-enter p0

    .line 565
    const/4 v12, 0x1

    .line 566
    :try_start_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 567
    if-eqz v12, :cond_1

    .line 568
    const/4 v1, 0x1

    move/from16 v0, p9

    if-ne v0, v1, :cond_0

    .line 575
    :cond_0
    const/16 v1, 0x14

    move/from16 v0, p9

    if-ne v0, v1, :cond_1

    .line 591
    .end local v12           #needThumbnail:Z
    :cond_1
    return-void

    .line 554
    :cond_2
    iget-object v2, p0, Lcom/android/camera/GifCapture;->mContentResolver:Landroid/content/ContentResolver;

    move-object v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p8

    move-object v7, p1

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Lcom/android/camera/GifCapture;->updateGifImage(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Landroid/location/Location;I[BIII)Z

    move-result v13

    goto :goto_0

    .line 566
    .restart local v12       #needThumbnail:Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private updateDbRecorder(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/io/File;)V
    .locals 7
    .parameter "cr"
    .parameter "uri"
    .parameter "file"

    .prologue
    const/4 v6, 0x0

    .line 794
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 795
    .local v0, values:Landroid/content/ContentValues;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 796
    const-string v1, "_size"

    invoke-virtual {p3}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 797
    const-string v1, "date_modified"

    invoke-virtual {p3}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 798
    invoke-virtual {p1, p2, v0, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 800
    :cond_0
    return-void
.end method

.method private yuvToJpeg([BII)[B
    .locals 10
    .parameter "data"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 516
    const/4 v8, 0x0

    .line 519
    .local v8, jpegData:[B
    :try_start_0
    new-instance v0, Landroid/graphics/YuvImage;

    const/16 v2, 0x11

    const/4 v5, 0x0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 521
    .local v0, YUV_image:Landroid/graphics/YuvImage;
    new-instance v9, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v9, v1, v2, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 522
    .local v9, rect:Landroid/graphics/Rect;
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 524
    .local v6, cbos:Ljava/io/ByteArrayOutputStream;
    const/16 v1, 0x50

    invoke-virtual {v0, v9, v1, v6}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 525
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 529
    .end local v0           #YUV_image:Landroid/graphics/YuvImage;
    .end local v6           #cbos:Ljava/io/ByteArrayOutputStream;
    .end local v9           #rect:Landroid/graphics/Rect;
    :goto_0
    return-object v8

    .line 526
    :catch_0
    move-exception v7

    .line 527
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getIsOn()Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/android/camera/GifCapture;->mIsOn:Z

    return v0
.end method

.method public getStoped()Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/android/camera/GifCapture;->mStoped:Z

    return v0
.end method

.method public getThumbnail()Lcom/android/camera/Thumbnail;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/camera/GifCapture;->mPendingThumbnail:Lcom/android/camera/Thumbnail;

    return-object v0
.end method

.method public isRunning()Z
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/camera/GifCapture;->mState:Lcom/android/camera/GifCapture$GifState;

    sget-object v1, Lcom/android/camera/GifCapture$GifState;->RUNNING:Lcom/android/camera/GifCapture$GifState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 2
    .parameter "data"
    .parameter "camera"

    .prologue
    .line 453
    iget-object v0, p0, Lcom/android/camera/GifCapture;->mGifCaptureHandler:Lcom/android/camera/GifCapture$GifCaptureHandler;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/GifCapture;->getStoped()Z

    move-result v0

    if-nez v0, :cond_0

    .line 454
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/android/camera/GifCapture;->mInputImageBuffer:[B

    .line 455
    iget-object v0, p0, Lcom/android/camera/GifCapture;->mGifCaptureHandler:Lcom/android/camera/GifCapture$GifCaptureHandler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 457
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 239
    const-string v1, "GifCapture"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStop()------mGifIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/GifCapture;->mGifIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v1, p0, Lcom/android/camera/GifCapture;->mContext:Lcom/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/android/camera/AudioFocusManager;->releaseAudioFocus(Landroid/content/Context;)V

    .line 241
    invoke-virtual {p0, v6}, Lcom/android/camera/GifCapture;->setStoped(Z)V

    .line 242
    iget-object v1, p0, Lcom/android/camera/GifCapture;->mGifCaptureHandler:Lcom/android/camera/GifCapture$GifCaptureHandler;

    if-eqz v1, :cond_0

    .line 243
    iget-object v1, p0, Lcom/android/camera/GifCapture;->mGifCaptureHandler:Lcom/android/camera/GifCapture$GifCaptureHandler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 245
    :cond_0
    iget v1, p0, Lcom/android/camera/GifCapture;->mGifIndex:I

    if-ne v1, v6, :cond_3

    .line 246
    iget-object v1, p0, Lcom/android/camera/GifCapture;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 247
    iget-object v1, p0, Lcom/android/camera/GifCapture;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1c

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 248
    const-string v1, "GifCapture"

    const-string v2, "w: onStop UPDATE_GIF_WITHOUT_THUMBNAIL"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_1
    :goto_0
    monitor-enter p0

    .line 254
    :try_start_0
    sget-object v1, Lcom/android/camera/GifCapture$GifState;->DONE:Lcom/android/camera/GifCapture$GifState;

    iput-object v1, p0, Lcom/android/camera/GifCapture;->mState:Lcom/android/camera/GifCapture$GifState;

    .line 255
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    iget-object v1, p0, Lcom/android/camera/GifCapture;->mContext:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1, v5}, Lcom/android/camera/ActivityBase;->setSwipingEnabled(Z)V

    .line 257
    const-string v1, "GifCapture"

    const-string v2, "w: onStoped"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v1, p0, Lcom/android/camera/GifCapture;->mYuvImage:Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 260
    :try_start_1
    const-class v1, Landroid/graphics/YuvImage;

    const-string v2, "release"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/GifCapture;->mYuvImage:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3

    .line 274
    iput-object v4, p0, Lcom/android/camera/GifCapture;->mYuvImage:Ljava/lang/Object;

    .line 277
    :cond_2
    :goto_1
    return-void

    .line 251
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/GifCapture;->onGifCaptureStop()V

    goto :goto_0

    .line 255
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 261
    :catch_0
    move-exception v0

    .line 263
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 274
    iput-object v4, p0, Lcom/android/camera/GifCapture;->mYuvImage:Ljava/lang/Object;

    goto :goto_1

    .line 264
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 266
    .local v0, e:Ljava/lang/IllegalAccessException;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 274
    iput-object v4, p0, Lcom/android/camera/GifCapture;->mYuvImage:Ljava/lang/Object;

    goto :goto_1

    .line 267
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 269
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 274
    iput-object v4, p0, Lcom/android/camera/GifCapture;->mYuvImage:Ljava/lang/Object;

    goto :goto_1

    .line 270
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v0

    .line 272
    .local v0, e:Ljava/lang/NoSuchMethodException;
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 274
    iput-object v4, p0, Lcom/android/camera/GifCapture;->mYuvImage:Ljava/lang/Object;

    goto :goto_1

    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :catchall_1
    move-exception v1

    iput-object v4, p0, Lcom/android/camera/GifCapture;->mYuvImage:Ljava/lang/Object;

    throw v1
.end method

.method public release()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 288
    iget-object v1, p0, Lcom/android/camera/GifCapture;->mGifCaptureHandlerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_1

    .line 289
    :goto_0
    iget-object v1, p0, Lcom/android/camera/GifCapture;->mState:Lcom/android/camera/GifCapture$GifState;

    sget-object v2, Lcom/android/camera/GifCapture$GifState;->RUNNING:Lcom/android/camera/GifCapture$GifState;

    if-ne v1, v2, :cond_0

    .line 291
    const-wide/16 v1, 0x32

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 292
    :catch_0
    move-exception v0

    .line 294
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 298
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/GifCapture;->mGifCaptureHandlerThread:Landroid/os/HandlerThread;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 303
    :goto_1
    iget-object v1, p0, Lcom/android/camera/GifCapture;->mGifCaptureHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 306
    :cond_1
    iget-object v1, p0, Lcom/android/camera/GifCapture;->mYuvImage:Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 308
    :try_start_2
    const-class v1, Landroid/graphics/YuvImage;

    const-string v2, "release"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/GifCapture;->mYuvImage:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_5

    .line 322
    iput-object v4, p0, Lcom/android/camera/GifCapture;->mYuvImage:Ljava/lang/Object;

    .line 325
    :cond_2
    :goto_2
    return-void

    .line 299
    :catch_1
    move-exception v0

    .line 301
    .restart local v0       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 309
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_2
    move-exception v0

    .line 311
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 322
    iput-object v4, p0, Lcom/android/camera/GifCapture;->mYuvImage:Ljava/lang/Object;

    goto :goto_2

    .line 312
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    .line 314
    .local v0, e:Ljava/lang/IllegalAccessException;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 322
    iput-object v4, p0, Lcom/android/camera/GifCapture;->mYuvImage:Ljava/lang/Object;

    goto :goto_2

    .line 315
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v0

    .line 317
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 322
    iput-object v4, p0, Lcom/android/camera/GifCapture;->mYuvImage:Ljava/lang/Object;

    goto :goto_2

    .line 318
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_5
    move-exception v0

    .line 320
    .local v0, e:Ljava/lang/NoSuchMethodException;
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 322
    iput-object v4, p0, Lcom/android/camera/GifCapture;->mYuvImage:Ljava/lang/Object;

    goto :goto_2

    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :catchall_0
    move-exception v1

    iput-object v4, p0, Lcom/android/camera/GifCapture;->mYuvImage:Ljava/lang/Object;

    throw v1
.end method

.method public setGifParameter(Landroid/location/Location;IIILandroid/net/Uri;Ljava/lang/String;I)V
    .locals 0
    .parameter "location"
    .parameter "thumbnailWidth"
    .parameter "gifWidth"
    .parameter "gifHeight"
    .parameter "uri"
    .parameter "title"
    .parameter "orientation"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/camera/GifCapture;->mLocation:Landroid/location/Location;

    .line 166
    iput p2, p0, Lcom/android/camera/GifCapture;->mThumbnailWidth:I

    .line 167
    iput p3, p0, Lcom/android/camera/GifCapture;->mGifWidth:I

    .line 168
    iput p4, p0, Lcom/android/camera/GifCapture;->mGifHeight:I

    .line 169
    iput-object p5, p0, Lcom/android/camera/GifCapture;->mUri:Landroid/net/Uri;

    .line 170
    iput-object p6, p0, Lcom/android/camera/GifCapture;->mTitle:Ljava/lang/String;

    .line 171
    iput p7, p0, Lcom/android/camera/GifCapture;->mOrientation:I

    .line 172
    return-void
.end method

.method public setGifSize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 175
    iput p1, p0, Lcom/android/camera/GifCapture;->mGifWidth:I

    .line 176
    iput p2, p0, Lcom/android/camera/GifCapture;->mGifHeight:I

    .line 177
    return-void
.end method

.method public setIsOn(Z)V
    .locals 0
    .parameter "isOn"

    .prologue
    .line 136
    iput-boolean p1, p0, Lcom/android/camera/GifCapture;->mIsOn:Z

    .line 137
    return-void
.end method

.method public setNeedPlaySound(Z)V
    .locals 0
    .parameter "needPlaySound"

    .prologue
    .line 140
    iput-boolean p1, p0, Lcom/android/camera/GifCapture;->mNeedPlaySound:Z

    .line 141
    return-void
.end method

.method public setOperationListener(Lcom/android/camera/GifCapture$OperationListener;)V
    .locals 0
    .parameter "operationListener"

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/camera/GifCapture;->mOperationListener:Lcom/android/camera/GifCapture$OperationListener;

    .line 161
    return-void
.end method

.method public declared-synchronized setStoped(Z)V
    .locals 1
    .parameter "stoped"

    .prologue
    .line 144
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/camera/GifCapture;->mStoped:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    monitor-exit p0

    return-void

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public start()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 189
    const-string v3, "GifCapture"

    const-string v4, "start()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v3, p0, Lcom/android/camera/GifCapture;->mContext:Lcom/android/camera/CameraActivity;

    invoke-static {v3}, Lcom/android/camera/AudioFocusManager;->getAudioFocus(Landroid/content/Context;)V

    .line 191
    iget-object v3, p0, Lcom/android/camera/GifCapture;->mState:Lcom/android/camera/GifCapture$GifState;

    sget-object v4, Lcom/android/camera/GifCapture$GifState;->RUNNING:Lcom/android/camera/GifCapture$GifState;

    if-eq v3, v4, :cond_1

    .line 192
    iget-object v3, p0, Lcom/android/camera/GifCapture;->mGifCaptureHandler:Lcom/android/camera/GifCapture$GifCaptureHandler;

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/GifCapture;->getIsOn()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 194
    invoke-virtual {p0, v5}, Lcom/android/camera/GifCapture;->setStoped(Z)V

    .line 195
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/camera/GifCapture;->mThumbnailData:[B

    .line 196
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/camera/GifCapture;->mGifIndex:I

    .line 197
    iget-object v3, p0, Lcom/android/camera/GifCapture;->mGifCaptureHandler:Lcom/android/camera/GifCapture$GifCaptureHandler;

    const/16 v4, 0x3e9

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 200
    iget-object v3, p0, Lcom/android/camera/GifCapture;->mContext:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getRotateOrientation()I

    move-result v2

    .line 201
    .local v2, iRotateOrientation:I
    iget-object v3, p0, Lcom/android/camera/GifCapture;->mContext:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getEnterOrientation()I

    move-result v0

    .line 202
    .local v0, iEnterOrientation:I
    iget-object v3, p0, Lcom/android/camera/GifCapture;->mContext:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getOrientationCompensation()I

    move-result v1

    .line 204
    .local v1, iPassOrientation:I
    sput v0, Lcom/android/camera/CameraSettings;->mEnterOrientation:I

    .line 205
    sput v2, Lcom/android/camera/CameraSettings;->mRotateOrientation:I

    .line 206
    sput v1, Lcom/android/camera/CameraSettings;->mPassOrientation:I

    .line 207
    iget-object v3, p0, Lcom/android/camera/GifCapture;->mGuageIndicatorContainer:Lcom/android/camera/ui/GuageIndicatorContainer;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 208
    iget-object v3, p0, Lcom/android/camera/GifCapture;->mGuageIndicatorContainer:Lcom/android/camera/ui/GuageIndicatorContainer;

    const/16 v4, 0x14

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/GuageIndicatorContainer;->setMaxValue(I)V

    .line 209
    iget-object v3, p0, Lcom/android/camera/GifCapture;->mGuageIndicatorContainer:Lcom/android/camera/ui/GuageIndicatorContainer;

    invoke-virtual {v3, v5}, Lcom/android/camera/ui/GuageIndicatorContainer;->generateIndicator(I)V

    .line 210
    iget-object v3, p0, Lcom/android/camera/GifCapture;->mGuageIndicatorContainer:Lcom/android/camera/ui/GuageIndicatorContainer;

    sget v4, Lcom/android/camera/CameraSettings;->mRotateOrientation:I

    sget v5, Lcom/android/camera/CameraSettings;->mPassOrientation:I

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/ui/GuageIndicatorContainer;->setOrientation(II)V

    .line 212
    iget-object v3, p0, Lcom/android/camera/GifCapture;->mHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    .line 213
    iget-object v3, p0, Lcom/android/camera/GifCapture;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 215
    :cond_0
    const-string v3, "GifCapture"

    const-string v4, "w: send start"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    .end local v0           #iEnterOrientation:I
    .end local v1           #iPassOrientation:I
    .end local v2           #iRotateOrientation:I
    :cond_1
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 221
    const-string v0, "GifCapture"

    const-string v1, "stop()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v0, p0, Lcom/android/camera/GifCapture;->mContext:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/AudioFocusManager;->releaseAudioFocus(Landroid/content/Context;)V

    .line 223
    iget-object v0, p0, Lcom/android/camera/GifCapture;->mState:Lcom/android/camera/GifCapture$GifState;

    sget-object v1, Lcom/android/camera/GifCapture$GifState;->RUNNING:Lcom/android/camera/GifCapture$GifState;

    if-ne v0, v1, :cond_1

    .line 224
    iget-object v0, p0, Lcom/android/camera/GifCapture;->mGifCaptureHandler:Lcom/android/camera/GifCapture$GifCaptureHandler;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/GifCapture;->getIsOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/android/camera/GifCapture;->mGifCaptureHandler:Lcom/android/camera/GifCapture$GifCaptureHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 227
    iget-object v0, p0, Lcom/android/camera/GifCapture;->mGifCaptureHandler:Lcom/android/camera/GifCapture$GifCaptureHandler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 229
    iget-object v0, p0, Lcom/android/camera/GifCapture;->mGuageIndicatorContainer:Lcom/android/camera/ui/GuageIndicatorContainer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/android/camera/GifCapture;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/android/camera/GifCapture;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 233
    :cond_0
    const-string v0, "GifCapture"

    const-string v1, "w: send stop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_1
    return-void
.end method

.method public updateGifImage(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Landroid/location/Location;I[BIII)Z
    .locals 10
    .parameter "resolver"
    .parameter "uri"
    .parameter "title"
    .parameter "location"
    .parameter "orientation"
    .parameter "gif"
    .parameter "width"
    .parameter "height"
    .parameter "index"

    .prologue
    .line 678
    iget-object v7, p0, Lcom/android/camera/GifCapture;->mFileOutputStream:Ljava/io/FileOutputStream;

    if-nez v7, :cond_3

    .line 679
    invoke-static {p3}, Lcom/android/camera/Storage;->generateGifFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/camera/GifCapture;->mPath:Ljava/lang/String;

    .line 680
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/camera/GifCapture;->mPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".tmp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 684
    .local v5, tmpPath:Ljava/lang/String;
    :try_start_0
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/camera/GifCapture;->mFileOutputStream:Ljava/io/FileOutputStream;

    .line 685
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lcom/android/camera/GifCapture;->mPath:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 693
    new-instance v6, Landroid/content/ContentValues;

    const/16 v7, 0x9

    invoke-direct {v6, v7}, Landroid/content/ContentValues;-><init>(I)V

    .line 694
    .local v6, values:Landroid/content/ContentValues;
    const-string v7, "title"

    invoke-virtual {v6, v7, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    const-string v7, "_display_name"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".gif"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    const-string v7, "mime_type"

    const-string v8, "image/gif"

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    const-string v7, "orientation"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 701
    const/16 v7, 0x5a

    if-eq p5, v7, :cond_0

    const/16 v7, 0x10e

    if-ne p5, v7, :cond_1

    .line 703
    :cond_0
    move/from16 v4, p7

    .line 704
    .local v4, tmp:I
    move/from16 p7, p8

    .line 705
    move/from16 p8, v4

    .line 707
    .end local v4           #tmp:I
    :cond_1
    move/from16 v0, p7

    move/from16 v1, p8

    invoke-direct {p0, v6, v0, v1}, Lcom/android/camera/GifCapture;->setImageSize(Landroid/content/ContentValues;II)V

    .line 709
    if-eqz p4, :cond_2

    .line 715
    :cond_2
    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_1
    invoke-virtual {p1, p2, v6, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 723
    .end local v5           #tmpPath:Ljava/lang/String;
    .end local v6           #values:Landroid/content/ContentValues;
    :cond_3
    :goto_0
    :try_start_2
    iget-object v7, p0, Lcom/android/camera/GifCapture;->mFileOutputStream:Ljava/io/FileOutputStream;

    if-eqz v7, :cond_4

    .line 724
    iget-object v7, p0, Lcom/android/camera/GifCapture;->mFileOutputStream:Ljava/io/FileOutputStream;

    move-object/from16 v0, p6

    invoke-virtual {v7, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 731
    :cond_4
    :goto_1
    const/4 v7, 0x1

    :goto_2
    return v7

    .line 686
    .restart local v5       #tmpPath:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 687
    .local v2, e:Ljava/lang/Exception;
    :try_start_3
    const-string v7, "GifCapture"

    const-string v8, "Failed to write image"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 688
    const/4 v7, 0x0

    goto :goto_2

    .line 689
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    throw v7

    .line 717
    .restart local v6       #values:Landroid/content/ContentValues;
    :catch_1
    move-exception v3

    .line 718
    .local v3, th:Ljava/lang/Throwable;
    const-string v7, "GifCapture"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to update image"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 726
    .end local v3           #th:Ljava/lang/Throwable;
    .end local v5           #tmpPath:Ljava/lang/String;
    .end local v6           #values:Landroid/content/ContentValues;
    :catch_2
    move-exception v2

    .line 728
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public updateGifImage(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Landroid/location/Location;I[BIIII)Z
    .locals 11
    .parameter "resolver"
    .parameter "uri"
    .parameter "title"
    .parameter "location"
    .parameter "orientation"
    .parameter "gif"
    .parameter "width"
    .parameter "height"
    .parameter "index"
    .parameter "imageNum"

    .prologue
    .line 602
    iget-object v8, p0, Lcom/android/camera/GifCapture;->mFileOutputStream:Ljava/io/FileOutputStream;

    if-nez v8, :cond_3

    .line 603
    invoke-static {p3}, Lcom/android/camera/Storage;->generateGifFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/GifCapture;->mPath:Ljava/lang/String;

    .line 604
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/camera/GifCapture;->mPath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".tmp"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 608
    .local v6, tmpPath:Ljava/lang/String;
    :try_start_0
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/camera/GifCapture;->mFileOutputStream:Ljava/io/FileOutputStream;

    .line 609
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/io/File;

    iget-object v10, p0, Lcom/android/camera/GifCapture;->mPath:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 618
    :try_start_1
    new-instance v3, Landroid/media/ExifInterface;

    iget-object v8, p0, Lcom/android/camera/GifCapture;->mPath:Ljava/lang/String;

    invoke-direct {v3, v8}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 620
    .local v3, exif:Landroid/media/ExifInterface;
    const-string v8, "ImageNumber"

    invoke-static/range {p10 .. p10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    invoke-virtual {v3}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 630
    .end local v3           #exif:Landroid/media/ExifInterface;
    :goto_0
    new-instance v7, Landroid/content/ContentValues;

    const/16 v8, 0x9

    invoke-direct {v7, v8}, Landroid/content/ContentValues;-><init>(I)V

    .line 631
    .local v7, values:Landroid/content/ContentValues;
    const-string v8, "title"

    invoke-virtual {v7, v8, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    const-string v8, "_display_name"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".gif"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    const-string v8, "mime_type"

    const-string v9, "image/gif"

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    const-string v8, "orientation"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 640
    const-string v8, "image_number"

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 642
    const/16 v8, 0x5a

    move/from16 v0, p5

    if-eq v0, v8, :cond_0

    const/16 v8, 0x10e

    move/from16 v0, p5

    if-ne v0, v8, :cond_1

    .line 644
    :cond_0
    move/from16 v5, p7

    .line 645
    .local v5, tmp:I
    move/from16 p7, p8

    .line 646
    move/from16 p8, v5

    .line 648
    .end local v5           #tmp:I
    :cond_1
    move/from16 v0, p7

    move/from16 v1, p8

    invoke-direct {p0, v7, v0, v1}, Lcom/android/camera/GifCapture;->setImageSize(Landroid/content/ContentValues;II)V

    .line 650
    if-eqz p4, :cond_2

    .line 656
    :cond_2
    const/4 v8, 0x0

    const/4 v9, 0x0

    :try_start_2
    invoke-virtual {p1, p2, v7, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 664
    .end local v6           #tmpPath:Ljava/lang/String;
    .end local v7           #values:Landroid/content/ContentValues;
    :cond_3
    :goto_1
    :try_start_3
    iget-object v8, p0, Lcom/android/camera/GifCapture;->mFileOutputStream:Ljava/io/FileOutputStream;

    if-eqz v8, :cond_4

    .line 665
    iget-object v8, p0, Lcom/android/camera/GifCapture;->mFileOutputStream:Ljava/io/FileOutputStream;

    move-object/from16 v0, p6

    invoke-virtual {v8, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 672
    :cond_4
    :goto_2
    const/4 v8, 0x1

    :goto_3
    return v8

    .line 610
    .restart local v6       #tmpPath:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 611
    .local v2, e:Ljava/lang/Exception;
    :try_start_4
    const-string v8, "GifCapture"

    const-string v9, "Failed to write image"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 612
    const/4 v8, 0x0

    goto :goto_3

    .line 613
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    throw v8

    .line 622
    :catch_1
    move-exception v2

    .line 624
    .local v2, e:Ljava/io/IOException;
    const-string v8, "GifCapture"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot set EXIF MEID or ImageNumber for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/camera/GifCapture;->mPath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Exception="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 658
    .end local v2           #e:Ljava/io/IOException;
    .restart local v7       #values:Landroid/content/ContentValues;
    :catch_2
    move-exception v4

    .line 659
    .local v4, th:Ljava/lang/Throwable;
    const-string v8, "GifCapture"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to update image"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 667
    .end local v4           #th:Ljava/lang/Throwable;
    .end local v6           #tmpPath:Ljava/lang/String;
    .end local v7           #values:Landroid/content/ContentValues;
    :catch_3
    move-exception v2

    .line 669
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method
