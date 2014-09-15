.class public Lcom/android/gallery3d/app/SinglePhotoDataAdapter;
.super Lcom/android/gallery3d/ui/TileImageViewAdapter;
.source "SinglePhotoDataAdapter.java"

# interfaces
.implements Lcom/android/gallery3d/app/PhotoPage$Model;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;
    }
.end annotation


# static fields
.field private static mBitmapCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static sDecoderCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBitmapScreenNail:Lcom/android/gallery3d/ui/BitmapScreenNail;

.field private mHandler:Landroid/os/Handler;

.field private mHasCache:Z

.field private mHasFullImage:Z

.field private mItem:Lcom/android/gallery3d/data/MediaItem;

.field private mLargeListener:Lcom/android/gallery3d/util/FutureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/FutureListener",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadingState:I

.field private mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

.field private mTask:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

.field private mThumbListener:Lcom/android/gallery3d/util/FutureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/FutureListener",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mBitmapCache:Ljava/util/HashMap;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->sDecoderCache:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/data/MediaItem;)V
    .locals 2
    .parameter "activity"
    .parameter "view"
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Lcom/android/gallery3d/ui/TileImageViewAdapter;-><init>()V

    .line 56
    iput v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mLoadingState:I

    .line 63
    iput-boolean v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mHasCache:Z

    .line 99
    new-instance v0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$2;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$2;-><init>(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mLargeListener:Lcom/android/gallery3d/util/FutureListener;

    .line 116
    new-instance v0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$3;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$3;-><init>(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mThumbListener:Lcom/android/gallery3d/util/FutureListener;

    .line 67
    invoke-static {p3}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/MediaItem;

    iput-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    .line 68
    invoke-virtual {p3}, Lcom/android/gallery3d/data/MediaObject;->getSupportedOperations()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mHasFullImage:Z

    .line 70
    invoke-static {p2}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PhotoView;

    iput-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    .line 71
    new-instance v0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$1;

    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$1;-><init>(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mHandler:Landroid/os/Handler;

    .line 85
    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    .line 86
    return-void

    :cond_0
    move v0, v1

    .line 68
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mHasFullImage:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;Lcom/android/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->onDecodeLargeComplete(Lcom/android/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->onGetThumbComplete(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;Lcom/android/gallery3d/util/Future;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->onDecodeThumbComplete(Lcom/android/gallery3d/util/Future;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private onDecodeLargeComplete(Lcom/android/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;)V
    .locals 4
    .parameter "bundle"

    .prologue
    .line 137
    :try_start_0
    iget-object v1, p1, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;->backupImage:Landroid/graphics/Bitmap;

    iget-object v2, p1, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;->decoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v2}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v2

    iget-object v3, p1, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;->decoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v3}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->setScreenNail(Landroid/graphics/Bitmap;II)V

    .line 139
    iget-object v1, p1, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;->decoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->setRegionDecoder(Landroid/graphics/BitmapRegionDecoder;)V

    .line 140
    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/PhotoView;->notifyImageChange(I)V

    .line 141
    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/PhotoView;->notifyImageReady()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "SinglePhotoDataAdapter"

    const-string v2, "fail to decode large"

    invoke-static {v1, v2, v0}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private onDecodeThumbComplete(Lcom/android/gallery3d/util/Future;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p1, future:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Landroid/graphics/Bitmap;>;"
    :try_start_0
    invoke-interface {p1}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 150
    .local v0, backup:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 151
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mLoadingState:I

    .line 162
    .end local v0           #backup:Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 154
    .restart local v0       #backup:Landroid/graphics/Bitmap;
    :cond_0
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mLoadingState:I

    .line 156
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {p0, v0, v2, v3}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->setScreenNail(Landroid/graphics/Bitmap;II)V

    .line 157
    iget-object v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/PhotoView;->notifyImageChange(I)V

    .line 158
    iget-object v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PhotoView;->notifyImageReady()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 159
    .end local v0           #backup:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 160
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "SinglePhotoDataAdapter"

    const-string v3, "fail to decode thumb"

    invoke-static {v2, v3, v1}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private onGetThumbComplete(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "bitmap"

    .prologue
    .line 166
    if-nez p1, :cond_0

    .line 167
    const/4 v1, 0x2

    :try_start_0
    iput v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mLoadingState:I

    .line 178
    :goto_0
    return-void

    .line 170
    :cond_0
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mLoadingState:I

    .line 172
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {p0, p1, v1, v2}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->setScreenNail(Landroid/graphics/Bitmap;II)V

    .line 173
    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/PhotoView;->notifyImageChange(I)V

    .line 174
    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/PhotoView;->notifyImageReady()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "SinglePhotoDataAdapter"

    const-string v2, "fail to onGetThumbComplete"

    invoke-static {v1, v2, v0}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setScreenNail(Landroid/graphics/Bitmap;II)V
    .locals 1
    .parameter "bitmap"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 131
    new-instance v0, Lcom/android/gallery3d/ui/BitmapScreenNail;

    invoke-direct {v0, p1}, Lcom/android/gallery3d/ui/BitmapScreenNail;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mBitmapScreenNail:Lcom/android/gallery3d/ui/BitmapScreenNail;

    .line 132
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mBitmapScreenNail:Lcom/android/gallery3d/ui/BitmapScreenNail;

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->setScreenNail(Lcom/android/gallery3d/ui/ScreenNail;II)V

    .line 133
    return-void
.end method


# virtual methods
.method public getBitmapCache()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 197
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mHasCache:Z

    .line 198
    sget-object v1, Lcom/android/gallery3d/app/CameraPhotoService;->sCameraBitCache:Ljava/util/HashMap;

    sput-object v1, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mBitmapCache:Ljava/util/HashMap;

    .line 199
    sget-object v1, Lcom/android/gallery3d/app/CameraPhotoService;->sCameraDeoCache:Ljava/util/HashMap;

    sput-object v1, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->sDecoderCache:Ljava/util/HashMap;

    .line 200
    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, filePath:Ljava/lang/String;
    sget-object v1, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mBitmapCache:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 202
    iput-boolean v6, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mHasCache:Z

    .line 203
    sget-object v1, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->sDecoderCache:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 204
    iget-object v3, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;

    sget-object v1, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->sDecoderCache:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/BitmapRegionDecoder;

    sget-object v2, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-direct {v5, v1, v2}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;-><init>(Landroid/graphics/BitmapRegionDecoder;Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v6, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 211
    :goto_0
    sget-object v1, Lcom/android/gallery3d/app/CameraPhotoService;->sCameraBitCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 212
    sget-object v1, Lcom/android/gallery3d/app/CameraPhotoService;->sCameraDeoCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 214
    :cond_0
    iget-boolean v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mHasCache:Z

    return v1

    .line 208
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mHandler:Landroid/os/Handler;

    sget-object v3, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public getCurrentIndex()I
    .locals 1

    .prologue
    .line 296
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentMediaItem()Lcom/android/gallery3d/data/MediaItem;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    return-object v0
.end method

.method public getImageRotation(I)I
    .locals 1
    .parameter "offset"

    .prologue
    .line 251
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getFullImageRotation()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImageSize(ILcom/android/gallery3d/ui/PhotoView$Size;)V
    .locals 1
    .parameter "offset"
    .parameter "size"

    .prologue
    const/4 v0, 0x0

    .line 240
    if-nez p1, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getWidth()I

    move-result v0

    iput v0, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->width:I

    .line 242
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getHeight()I

    move-result v0

    iput v0, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->height:I

    .line 247
    :goto_0
    return-void

    .line 244
    :cond_0
    iput v0, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->width:I

    .line 245
    iput v0, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->height:I

    goto :goto_0
.end method

.method public getLoadingState(I)I
    .locals 1
    .parameter "offset"

    .prologue
    .line 321
    iget v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mLoadingState:I

    return v0
.end method

.method public getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;
    .locals 1
    .parameter "offset"

    .prologue
    .line 291
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getScreenNail(I)Lcom/android/gallery3d/ui/ScreenNail;
    .locals 1
    .parameter "offset"

    .prologue
    .line 256
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->getScreenNail()Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 301
    const/4 v0, 0x0

    return v0
.end method

.method public isAudioJpeg(I)Z
    .locals 1
    .parameter "offset"

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    if-nez v0, :cond_0

    .line 337
    const/4 v0, 0x0

    .line 338
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->isAudioImage()Z

    move-result v0

    goto :goto_0
.end method

.method public isCamera(I)Z
    .locals 1
    .parameter "offset"

    .prologue
    .line 266
    const/4 v0, 0x0

    return v0
.end method

.method public isDeletable(I)Z
    .locals 1
    .parameter "offset"

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->getSupportedOperations()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public isHasCache()Z
    .locals 1

    .prologue
    .line 344
    iget-boolean v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mHasCache:Z

    return v0
.end method

.method public isPanorama(I)Z
    .locals 1
    .parameter "offset"

    .prologue
    .line 271
    const/4 v0, 0x0

    return v0
.end method

.method public isStaticCamera(I)Z
    .locals 1
    .parameter "offset"

    .prologue
    .line 276
    const/4 v0, 0x0

    return v0
.end method

.method public isVideo(I)Z
    .locals 2
    .parameter "offset"

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->getMediaType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveTo(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 235
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public pause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 219
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mTask:Lcom/android/gallery3d/util/Future;

    .line 220
    .local v0, task:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<*>;"
    if-eqz v0, :cond_0

    .line 221
    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 222
    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->waitDone()V

    .line 223
    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 224
    iput-object v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mTask:Lcom/android/gallery3d/util/Future;

    .line 227
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mBitmapScreenNail:Lcom/android/gallery3d/ui/BitmapScreenNail;

    if-eqz v1, :cond_1

    .line 228
    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mBitmapScreenNail:Lcom/android/gallery3d/ui/BitmapScreenNail;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/BitmapScreenNail;->recycle()V

    .line 229
    iput-object v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mBitmapScreenNail:Lcom/android/gallery3d/ui/BitmapScreenNail;

    .line 231
    :cond_1
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mTask:Lcom/android/gallery3d/util/Future;

    if-nez v0, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->getBitmapCache()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    iget-boolean v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mHasFullImage:Z

    if-eqz v0, :cond_2

    .line 186
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->requestLargeImage()Lcom/android/gallery3d/util/ThreadPool$Job;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mLargeListener:Lcom/android/gallery3d/util/FutureListener;

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mTask:Lcom/android/gallery3d/util/Future;

    goto :goto_0

    .line 189
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/data/MediaItem;->requestImage(II)Lcom/android/gallery3d/util/ThreadPool$Job;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mThumbListener:Lcom/android/gallery3d/util/FutureListener;

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mTask:Lcom/android/gallery3d/util/Future;

    goto :goto_0
.end method

.method public setCurrentPhoto(Lcom/android/gallery3d/data/Path;I)V
    .locals 0
    .parameter "path"
    .parameter "indexHint"

    .prologue
    .line 307
    return-void
.end method

.method public setFocusHintDirection(I)V
    .locals 0
    .parameter "direction"

    .prologue
    .line 312
    return-void
.end method

.method public setFocusHintPath(Lcom/android/gallery3d/data/Path;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 317
    return-void
.end method

.method public setNeedFullImage(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 262
    return-void
.end method
