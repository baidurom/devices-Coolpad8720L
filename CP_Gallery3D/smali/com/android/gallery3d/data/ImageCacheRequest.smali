.class abstract Lcom/android/gallery3d/data/ImageCacheRequest;
.super Ljava/lang/Object;
.source "ImageCacheRequest.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final TIME_FORMAT:Ljava/text/SimpleDateFormat;


# instance fields
.field protected mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field private mBucketId:I

.field private mCoverTpye:I

.field private mDateTakenInMs:J

.field private mIsExCamera:Z

.field private mIsInCamera:Z

.field private mIsLocalAlbum:Z

.field private mLatitude:D

.field private mLocalFilePath:Ljava/lang/String;

.field private mLongitude:D

.field private mPath:Lcom/android/gallery3d/data/Path;

.field private mRotation:I

.field private mTargetSize:I

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy/MM/dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/gallery3d/data/ImageCacheRequest;->TIME_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/Path;IILjava/lang/String;IIDDJIZ)V
    .locals 2
    .parameter "application"
    .parameter "path"
    .parameter "type"
    .parameter "targetSize"
    .parameter "localFilePath"
    .parameter "bucketId"
    .parameter "coverTpye"
    .parameter "latitude"
    .parameter "longitude"
    .parameter "dateTakenInMs"
    .parameter "rotation"
    .parameter "isLocalAlbum"

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mIsInCamera:Z

    .line 52
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mIsExCamera:Z

    .line 68
    iput-object p1, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 69
    iput-object p2, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mPath:Lcom/android/gallery3d/data/Path;

    .line 70
    iput p3, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mType:I

    .line 71
    iput p4, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mTargetSize:I

    .line 73
    iput-object p5, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mLocalFilePath:Ljava/lang/String;

    .line 74
    iput p6, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mBucketId:I

    .line 75
    iput p7, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mCoverTpye:I

    .line 76
    iput-wide p8, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mLatitude:D

    .line 77
    iput-wide p10, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mLongitude:D

    .line 78
    iput-wide p12, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mDateTakenInMs:J

    .line 79
    move/from16 v0, p15

    iput-boolean v0, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mIsLocalAlbum:Z

    .line 80
    move/from16 v0, p14

    iput v0, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mRotation:I

    .line 81
    return-void
.end method

.method private debugTag()Ljava/lang/String;
    .locals 3

    .prologue
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mType:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const-string v0, "THUMB"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget v0, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mType:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const-string v0, "MICROTHUMB"

    goto :goto_0

    :cond_1
    const-string v0, "?"

    goto :goto_0
.end method


# virtual methods
.method public drawLable(Landroid/graphics/Bitmap;)V
    .locals 13
    .parameter "bitmap"

    .prologue
    .line 176
    iget-object v9, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v9, p1}, Lcom/android/gallery3d/app/GalleryApp;->getGpsIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 177
    .local v3, icon:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 178
    .local v0, canvas:Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 179
    .local v5, paint:Landroid/graphics/Paint;
    const/4 v9, -0x1

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 180
    iget-wide v9, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mLatitude:D

    iget-wide v11, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mLongitude:D

    invoke-static {v9, v10, v11, v12}, Lcom/android/gallery3d/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v4

    .line 182
    .local v4, isValidLocation:Z
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 185
    .local v6, w:I
    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 186
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 187
    .local v7, ww:I
    const/4 v9, 0x0

    sub-int v10, v6, v7

    int-to-float v10, v10

    const/4 v11, 0x0

    invoke-virtual {v0, v3, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 191
    .end local v7           #ww:I
    :cond_0
    sget-object v9, Lcom/android/gallery3d/data/ImageCacheRequest;->TIME_FORMAT:Ljava/text/SimpleDateFormat;

    iget-wide v10, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mDateTakenInMs:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, date:Ljava/lang/String;
    mul-int/lit8 v9, v6, 0x2

    div-int/lit8 v8, v9, 0x5

    .line 195
    .local v8, x:I
    div-int/lit8 v2, v6, 0xa

    .line 196
    .local v2, dateFontSize:I
    int-to-float v9, v2

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 198
    iget v9, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mRotation:I

    neg-int v9, v9

    int-to-float v9, v9

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    invoke-virtual {v0, v9, v10, v11}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 199
    int-to-float v9, v8

    add-int/lit8 v10, v6, -0xa

    int-to-float v10, v10

    invoke-virtual {v0, v1, v9, v10, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 200
    return-void
.end method

.method public getBitmap(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "jc"
    .parameter "bitmap"

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x1

    .line 216
    iget v2, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 217
    iget v2, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mCoverTpye:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 218
    iget-boolean v2, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mIsExCamera:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mIsInCamera:Z

    if-eqz v2, :cond_2

    :cond_0
    iget-boolean v2, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mIsLocalAlbum:Z

    if-eqz v2, :cond_2

    .line 219
    invoke-static {v5}, Lcom/android/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v1

    .line 220
    .local v1, coverSize:I
    invoke-virtual {p0, p1, v5}, Lcom/android/gallery3d/data/ImageCacheRequest;->onDecodeOriginal(Lcom/android/gallery3d/util/ThreadPool$JobContext;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 222
    .local v0, coverBitmap:Landroid/graphics/Bitmap;
    iget v2, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mRotation:I

    if-eqz v2, :cond_1

    .line 223
    iget v2, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mRotation:I

    invoke-static {v0, v2, v4}, Lcom/android/gallery3d/common/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 226
    :cond_1
    const/4 v2, 0x0

    invoke-static {v0, v1, v4, v2}, Lcom/android/gallery3d/common/BitmapUtils;->resizeAndCropCenter(Landroid/graphics/Bitmap;IZZ)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 240
    .end local v0           #coverBitmap:Landroid/graphics/Bitmap;
    .end local v1           #coverSize:I
    :goto_0
    return-object p2

    .line 229
    :cond_2
    iget v2, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mTargetSize:I

    invoke-static {p2, v2, v4}, Lcom/android/gallery3d/common/BitmapUtils;->resizeAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_0

    .line 233
    :cond_3
    iget v2, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mTargetSize:I

    invoke-static {p2, v2, v4}, Lcom/android/gallery3d/common/BitmapUtils;->resizeAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_0

    .line 237
    :cond_4
    iget v2, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mTargetSize:I

    invoke-static {p2, v2, v4}, Lcom/android/gallery3d/common/BitmapUtils;->resizeDownBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_0
.end method

.method public isMyCamera()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 206
    iget v0, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mBucketId:I

    invoke-static {}, Lcom/android/gallery3d/util/VolumeUtil;->externalCameraId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 207
    iput-boolean v2, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mIsExCamera:Z

    .line 208
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mBucketId:I

    invoke-static {}, Lcom/android/gallery3d/util/VolumeUtil;->internalCameraId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 209
    iput-boolean v2, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mIsInCamera:Z

    .line 210
    :cond_1
    return-void
.end method

.method public abstract onDecodeOriginal(Lcom/android/gallery3d/util/ThreadPool$JobContext;I)Landroid/graphics/Bitmap;
.end method

.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 17
    .parameter "jc"

    .prologue
    .line 91
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/data/ImageCacheRequest;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryApp;->getImageCacheService()Lcom/android/gallery3d/data/ImageCacheService;

    move-result-object v11

    .line 93
    .local v11, cacheService:Lcom/android/gallery3d/data/ImageCacheService;
    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getBytesBufferPool()Lcom/android/gallery3d/data/BytesBufferPool;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/data/BytesBufferPool;->get()Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;

    move-result-object v10

    .line 94
    .local v10, buffer:Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;
    const/4 v15, 0x0

    .line 95
    .local v15, security:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/data/ImageCacheRequest;->mLocalFilePath:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 96
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/data/ImageCacheRequest;->mLocalFilePath:Ljava/lang/String;

    const-string v3, "/res/drawable"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    .line 99
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/data/ImageCacheRequest;->mPath:Lcom/android/gallery3d/data/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/data/ImageCacheRequest;->mType:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/gallery3d/data/ImageCacheRequest;->mCoverTpye:I

    invoke-virtual {v11, v2, v3, v4, v10}, Lcom/android/gallery3d/data/ImageCacheService;->getImageData(Lcom/android/gallery3d/data/Path;IILcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;)Z

    move-result v12

    .line 101
    .local v12, found:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/data/ImageCacheRequest;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/data/ImageCacheRequest;->mPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/gallery3d/app/GalleryApp;->getJpegData(Landroid/net/Uri;)[B

    move-result-object v13

    .line 103
    .local v13, imagebyte:[B
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_2

    .line 104
    const/4 v9, 0x0

    .line 143
    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getBytesBufferPool()Lcom/android/gallery3d/data/BytesBufferPool;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/android/gallery3d/data/BytesBufferPool;->recycle(Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    .line 172
    :cond_1
    :goto_0
    return-object v9

    .line 106
    :cond_2
    if-eqz v12, :cond_5

    .line 107
    :try_start_1
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 108
    .local v6, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v6, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 110
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/data/ImageCacheRequest;->mType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 111
    iget-object v3, v10, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    iget v4, v10, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->offset:I

    iget v5, v10, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->length:I

    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getMicroThumbPool()Lcom/android/gallery3d/data/BitmapPool;

    move-result-object v7

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Lcom/android/gallery3d/data/DecodeUtils;->decode(Lcom/android/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;Lcom/android/gallery3d/data/BitmapPool;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 118
    .local v9, bitmap:Landroid/graphics/Bitmap;
    :goto_1
    if-nez v9, :cond_3

    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 119
    const-string v2, "ImageCacheRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decode cached failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/data/ImageCacheRequest;->debugTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    :cond_3
    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getBytesBufferPool()Lcom/android/gallery3d/data/BytesBufferPool;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/android/gallery3d/data/BytesBufferPool;->recycle(Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    goto :goto_0

    .line 115
    .end local v9           #bitmap:Landroid/graphics/Bitmap;
    :cond_4
    :try_start_2
    iget-object v3, v10, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    iget v4, v10, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->offset:I

    iget v5, v10, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->length:I

    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getThumbPool()Lcom/android/gallery3d/data/BitmapPool;

    move-result-object v7

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Lcom/android/gallery3d/data/DecodeUtils;->decode(Lcom/android/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;Lcom/android/gallery3d/data/BitmapPool;)Landroid/graphics/Bitmap;

    move-result-object v9

    .restart local v9       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_1

    .line 122
    .end local v6           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v9           #bitmap:Landroid/graphics/Bitmap;
    :cond_5
    if-eqz v13, :cond_7

    .line 123
    const-string v2, "ImageCacheRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enter decode imagebyte and mPath = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/data/ImageCacheRequest;->mPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v4}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/data/ImageCacheRequest;->mType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 127
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 128
    .restart local v6       #options:Landroid/graphics/BitmapFactory$Options;
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v6, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 129
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/data/ImageCacheRequest;->mType:I

    move-object/from16 v0, p1

    invoke-static {v0, v13, v6, v2}, Lcom/android/gallery3d/data/DecodeUtils;->decodeThumbnailByArray(Lcom/android/gallery3d/util/ThreadPool$JobContext;[BLandroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v16

    .line 143
    .local v16, thumbbitmap:Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getBytesBufferPool()Lcom/android/gallery3d/data/BytesBufferPool;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/android/gallery3d/data/BytesBufferPool;->recycle(Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    move-object/from16 v9, v16

    goto/16 :goto_0

    .line 133
    .end local v6           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v16           #thumbbitmap:Landroid/graphics/Bitmap;
    :cond_6
    const/4 v2, 0x0

    :try_start_3
    array-length v3, v13

    invoke-static {v13, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 135
    .local v14, micthumbbitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/data/ImageCacheRequest;->mTargetSize:I

    const/4 v3, 0x1

    invoke-static {v14, v2, v3}, Lcom/android/gallery3d/common/BitmapUtils;->resizeDownAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v14

    .line 143
    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getBytesBufferPool()Lcom/android/gallery3d/data/BytesBufferPool;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/android/gallery3d/data/BytesBufferPool;->recycle(Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    move-object v9, v14

    goto/16 :goto_0

    .line 140
    .end local v14           #micthumbbitmap:Landroid/graphics/Bitmap;
    :cond_7
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/data/ImageCacheRequest;->isMyCamera()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 143
    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getBytesBufferPool()Lcom/android/gallery3d/data/BytesBufferPool;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/android/gallery3d/data/BytesBufferPool;->recycle(Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    .line 145
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/data/ImageCacheRequest;->mType:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/ImageCacheRequest;->onDecodeOriginal(Lcom/android/gallery3d/util/ThreadPool$JobContext;I)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 147
    .restart local v9       #bitmap:Landroid/graphics/Bitmap;
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 148
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 143
    .end local v9           #bitmap:Landroid/graphics/Bitmap;
    .end local v12           #found:Z
    .end local v13           #imagebyte:[B
    :catchall_0
    move-exception v2

    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getBytesBufferPool()Lcom/android/gallery3d/data/BytesBufferPool;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/android/gallery3d/data/BytesBufferPool;->recycle(Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    throw v2

    .line 150
    .restart local v9       #bitmap:Landroid/graphics/Bitmap;
    .restart local v12       #found:Z
    .restart local v13       #imagebyte:[B
    :cond_8
    if-nez v9, :cond_9

    .line 151
    const-string v2, "ImageCacheRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decode orig failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/data/ImageCacheRequest;->debugTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 156
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9}, Lcom/android/gallery3d/data/ImageCacheRequest;->getBitmap(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 159
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/data/ImageCacheRequest;->mCoverTpye:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/data/ImageCacheRequest;->mType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_a

    if-eqz v9, :cond_a

    .line 161
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/gallery3d/data/ImageCacheRequest;->drawLable(Landroid/graphics/Bitmap;)V

    .line 164
    :cond_a
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 165
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 166
    :cond_b
    invoke-static {v9}, Lcom/android/gallery3d/common/BitmapUtils;->compressToBytes(Landroid/graphics/Bitmap;)[B

    move-result-object v8

    .line 167
    .local v8, array:[B
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 168
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 169
    :cond_c
    if-nez v15, :cond_1

    .line 170
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/data/ImageCacheRequest;->mPath:Lcom/android/gallery3d/data/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/data/ImageCacheRequest;->mType:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/gallery3d/data/ImageCacheRequest;->mCoverTpye:I

    invoke-virtual {v11, v2, v3, v4, v8}, Lcom/android/gallery3d/data/ImageCacheService;->putImageData(Lcom/android/gallery3d/data/Path;II[B)V

    goto/16 :goto_0
.end method

.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/ImageCacheRequest;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
