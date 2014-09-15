.class public Lcom/android/gallery3d/data/LocalImage$LocalImageRequest;
.super Lcom/android/gallery3d/data/ImageCacheRequest;
.source "LocalImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/data/LocalImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalImageRequest"
.end annotation


# instance fields
.field private mDateTaken:J

.field private mIsLocalAlbum:Z

.field private mLatitude:D

.field private mLocalFilePath:Ljava/lang/String;

.field private mLongitude:D


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/Path;ILjava/lang/String;IIDDJIZ)V
    .locals 19
    .parameter "application"
    .parameter "path"
    .parameter "type"
    .parameter "localFilePath"
    .parameter "bucketId"
    .parameter "coverTpye"
    .parameter "latitude"
    .parameter "longitude"
    .parameter "dateTakenInMs"
    .parameter "rotation"
    .parameter "isLocalAlbum"

    .prologue
    .line 314
    invoke-static/range {p3 .. p3}, Lcom/android/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v7

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move-wide/from16 v11, p7

    move-wide/from16 v13, p9

    move-wide/from16 v15, p11

    move/from16 v17, p13

    move/from16 v18, p14

    invoke-direct/range {v3 .. v18}, Lcom/android/gallery3d/data/ImageCacheRequest;-><init>(Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/Path;IILjava/lang/String;IIDDJIZ)V

    .line 317
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/gallery3d/data/LocalImage$LocalImageRequest;->mLocalFilePath:Ljava/lang/String;

    .line 318
    move-wide/from16 v0, p7

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/gallery3d/data/LocalImage$LocalImageRequest;->mLatitude:D

    .line 319
    move-wide/from16 v0, p9

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/gallery3d/data/LocalImage$LocalImageRequest;->mLongitude:D

    .line 320
    move-wide/from16 v0, p11

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/gallery3d/data/LocalImage$LocalImageRequest;->mDateTaken:J

    .line 321
    move/from16 v0, p14

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/gallery3d/data/LocalImage$LocalImageRequest;->mIsLocalAlbum:Z

    .line 322
    return-void
.end method


# virtual methods
.method public bridge synthetic drawLable(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 303
    invoke-super {p0, p1}, Lcom/android/gallery3d/data/ImageCacheRequest;->drawLable(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public bridge synthetic getBitmap(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 303
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/data/ImageCacheRequest;->getBitmap(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getResBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "localFilePath"

    .prologue
    const/4 v3, 0x0

    .line 364
    const/4 v0, 0x0

    .line 365
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const-string v1, "/res/drawable/safebox.png"

    iget-object v2, p0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequest;->mLocalFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 366
    iget-object v1, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201e5

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 382
    :cond_0
    :goto_0
    return-object v0

    .line 370
    :cond_1
    const-string v1, "/res/drawable/more.png"

    iget-object v2, p0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequest;->mLocalFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 372
    iget-object v1, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020175

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 376
    :cond_2
    const-string v1, "/res/drawable/camera_cover.jpg"

    iget-object v2, p0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequest;->mLocalFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 378
    iget-object v1, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200ac

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic isMyCamera()V
    .locals 0

    .prologue
    .line 303
    invoke-super {p0}, Lcom/android/gallery3d/data/ImageCacheRequest;->isMyCamera()V

    return-void
.end method

.method public onDecodeOriginal(Lcom/android/gallery3d/util/ThreadPool$JobContext;I)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "jc"
    .parameter "type"

    .prologue
    .line 327
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 328
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v7, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 329
    invoke-static {p2}, Lcom/android/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v5

    .line 332
    .local v5, targetSize:I
    const/4 v7, 0x2

    if-ne p2, v7, :cond_1

    .line 333
    const/4 v1, 0x0

    .line 334
    .local v1, exif:Landroid/media/ExifInterface;
    const/4 v6, 0x0

    .line 336
    .local v6, thumbData:[B
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    iget-object v7, p0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequest;->mLocalFilePath:Ljava/lang/String;

    invoke-direct {v2, v7}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    .end local v1           #exif:Landroid/media/ExifInterface;
    .local v2, exif:Landroid/media/ExifInterface;
    if-eqz v2, :cond_0

    .line 338
    :try_start_1
    invoke-virtual {v2}, Landroid/media/ExifInterface;->getThumbnail()[B
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    :cond_0
    move-object v1, v2

    .line 343
    .end local v2           #exif:Landroid/media/ExifInterface;
    .restart local v1       #exif:Landroid/media/ExifInterface;
    :goto_0
    if-eqz v6, :cond_1

    .line 344
    invoke-static {p1, v6, v3, v5}, Lcom/android/gallery3d/data/DecodeUtils;->decodeIfBigEnough(Lcom/android/gallery3d/util/ThreadPool$JobContext;[BLandroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 346
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 358
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #exif:Landroid/media/ExifInterface;
    .end local v6           #thumbData:[B
    :goto_1
    return-object v0

    .line 340
    .restart local v1       #exif:Landroid/media/ExifInterface;
    .restart local v6       #thumbData:[B
    :catch_0
    move-exception v4

    .line 341
    .local v4, t:Ljava/lang/Throwable;
    :goto_2
    const-string v7, "LocalImage"

    const-string v8, "fail to get exif thumb"

    invoke-static {v7, v8, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 351
    .end local v1           #exif:Landroid/media/ExifInterface;
    .end local v4           #t:Ljava/lang/Throwable;
    .end local v6           #thumbData:[B
    :cond_1
    iget-object v7, p0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequest;->mLocalFilePath:Ljava/lang/String;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequest;->mLocalFilePath:Ljava/lang/String;

    const-string v8, "/res/drawable/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 353
    iget-object v7, p0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequest;->mLocalFilePath:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/android/gallery3d/data/LocalImage$LocalImageRequest;->getResBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 356
    :cond_2
    iget-object v7, p0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequest;->mLocalFilePath:Ljava/lang/String;

    if-nez v7, :cond_3

    .line 357
    const/4 v0, 0x0

    goto :goto_1

    .line 358
    :cond_3
    iget-object v7, p0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequest;->mLocalFilePath:Ljava/lang/String;

    invoke-static {p1, v7, v3, v5, p2}, Lcom/android/gallery3d/data/DecodeUtils;->decodeThumbnail(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 340
    .restart local v2       #exif:Landroid/media/ExifInterface;
    .restart local v6       #thumbData:[B
    :catch_1
    move-exception v4

    move-object v1, v2

    .end local v2           #exif:Landroid/media/ExifInterface;
    .restart local v1       #exif:Landroid/media/ExifInterface;
    goto :goto_2
.end method

.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 303
    invoke-super {p0, p1}, Lcom/android/gallery3d/data/ImageCacheRequest;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
