.class public Lcom/android/camera/Thumbnail;
.super Ljava/lang/Object;
.source "Thumbnail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/Thumbnail$Media;
    }
.end annotation


# static fields
.field private static mbInSecureBox:Z

.field private static sLock:Ljava/lang/Object;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mFromFile:Z

.field private mUri:Landroid/net/Uri;

.field private mbVideoThumbnail:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/camera/Thumbnail;->sLock:Ljava/lang/Object;

    .line 65
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/camera/Thumbnail;->mbInSecureBox:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-boolean v0, p0, Lcom/android/camera/Thumbnail;->mbVideoThumbnail:Z

    .line 60
    iput-boolean v0, p0, Lcom/android/camera/Thumbnail;->mFromFile:Z

    .line 69
    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;Landroid/graphics/Bitmap;I)V
    .locals 1
    .parameter "uri"
    .parameter "bitmap"
    .parameter "orientation"

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-boolean v0, p0, Lcom/android/camera/Thumbnail;->mbVideoThumbnail:Z

    .line 60
    iput-boolean v0, p0, Lcom/android/camera/Thumbnail;->mFromFile:Z

    .line 76
    iput-object p1, p0, Lcom/android/camera/Thumbnail;->mUri:Landroid/net/Uri;

    .line 77
    invoke-static {p2, p3}, Lcom/android/camera/Thumbnail;->rotateImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Thumbnail;->mBitmap:Landroid/graphics/Bitmap;

    .line 78
    return-void
.end method

.method public static createEmptyThumbnail()Lcom/android/camera/Thumbnail;
    .locals 1

    .prologue
    .line 72
    new-instance v0, Lcom/android/camera/Thumbnail;

    invoke-direct {v0}, Lcom/android/camera/Thumbnail;-><init>()V

    return-object v0
.end method

.method public static createThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;I)Lcom/android/camera/Thumbnail;
    .locals 2
    .parameter "uri"
    .parameter "bitmap"
    .parameter "orientation"

    .prologue
    .line 484
    if-nez p1, :cond_0

    .line 485
    const-string v0, "Thumbnail"

    const-string v1, "Failed to create thumbnail from null bitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    const/4 v0, 0x0

    .line 488
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/camera/Thumbnail;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/camera/Thumbnail;-><init>(Landroid/net/Uri;Landroid/graphics/Bitmap;I)V

    goto :goto_0
.end method

.method public static createThumbnail([BIILandroid/net/Uri;)Lcom/android/camera/Thumbnail;
    .locals 4
    .parameter "jpeg"
    .parameter "orientation"
    .parameter "inSampleSize"
    .parameter "uri"

    .prologue
    .line 397
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 398
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    iput p2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 400
    const/4 v2, 0x0

    array-length v3, p0

    invoke-static {p0, v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 401
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {p3, v0, p1}, Lcom/android/camera/Thumbnail;->createThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;I)Lcom/android/camera/Thumbnail;

    move-result-object v2

    return-object v2
.end method

.method public static createVideoThumbnailBitmap(Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "fd"
    .parameter "targetWidth"

    .prologue
    .line 442
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/android/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/lang/String;Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createVideoThumbnailBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "filePath"
    .parameter "targetWidth"

    .prologue
    .line 446
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/android/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/lang/String;Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static createVideoThumbnailBitmap(Ljava/lang/String;Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "filePath"
    .parameter "fd"
    .parameter "targetWidth"

    .prologue
    .line 451
    const/4 v0, 0x0

    .line 452
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v4, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v4}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 454
    .local v4, retriever:Landroid/media/MediaMetadataRetriever;
    if-eqz p0, :cond_0

    .line 455
    :try_start_0
    invoke-virtual {v4, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 459
    :goto_0
    const-wide/16 v8, -0x1

    invoke-virtual {v4, v8, v9}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 464
    :try_start_1
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 469
    :goto_1
    if-nez v0, :cond_1

    const/4 v8, 0x0

    .line 480
    :goto_2
    return-object v8

    .line 457
    :cond_0
    :try_start_2
    invoke-virtual {v4, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 460
    :catch_0
    move-exception v1

    .line 461
    .local v1, ex:Ljava/lang/Exception;
    :try_start_3
    const-string v8, "Thumbnail"

    const-string v9, ">>>>>>>>retriveal thubmail error"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 464
    :try_start_4
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 465
    :catch_1
    move-exception v8

    goto :goto_1

    .line 463
    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 464
    :try_start_5
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3

    .line 467
    :goto_3
    throw v8

    .line 472
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 473
    .local v7, width:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 474
    .local v3, height:I
    if-le v7, p2, :cond_2

    .line 475
    int-to-float v8, p2

    int-to-float v9, v7

    div-float v5, v8, v9

    .line 476
    .local v5, scale:F
    int-to-float v8, v7

    mul-float/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 477
    .local v6, w:I
    int-to-float v8, v3

    mul-float/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 478
    .local v2, h:I
    const/4 v8, 0x1

    invoke-static {v0, v6, v2, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .end local v2           #h:I
    .end local v5           #scale:F
    .end local v6           #w:I
    :cond_2
    move-object v8, v0

    .line 480
    goto :goto_2

    .line 465
    .end local v3           #height:I
    .end local v7           #width:I
    :catch_2
    move-exception v8

    goto :goto_1

    :catch_3
    move-exception v9

    goto :goto_3
.end method

.method private static getLastImageThumbnail(Landroid/content/ContentResolver;)Lcom/android/camera/Thumbnail$Media;
    .locals 15
    .parameter "resolver"

    .prologue
    const/4 v6, 0x0

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 328
    sget-object v13, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 329
    .local v13, baseUri:Landroid/net/Uri;
    sget-boolean v0, Lcom/android/camera/Thumbnail;->mbInSecureBox:Z

    if-eqz v0, :cond_0

    .line 330
    const-string v0, "secure"

    invoke-static {v0}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 333
    :cond_0
    invoke-virtual {v13}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v4, "limit"

    const-string v9, "1"

    invoke-virtual {v0, v4, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 334
    .local v1, query:Landroid/net/Uri;
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v10

    const-string v0, "orientation"

    aput-object v0, v2, v11

    const-string v0, "datetaken"

    aput-object v0, v2, v12

    .line 336
    .local v2, projection:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mime_type=\'image/jpeg\' AND bucket_id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lcom/android/camera/Storage;->BUCKET_ID:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 339
    .local v3, selection:Ljava/lang/String;
    const/4 v5, 0x0

    .line 340
    .local v5, order:Ljava/lang/String;
    sget-boolean v0, Lcom/android/camera/ProductConfig;->ishasImageNumber:Z

    if-eqz v0, :cond_2

    .line 341
    const-string v5, "image_number DESC, _id DESC, datetaken DESC"

    .line 350
    :goto_0
    const/4 v14, 0x0

    .line 352
    .local v14, cursor:Landroid/database/Cursor;
    const/4 v4, 0x0

    move-object v0, p0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 353
    if-eqz v14, :cond_3

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 354
    const/4 v0, 0x0

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 355
    .local v7, id:J
    new-instance v6, Lcom/android/camera/Thumbnail$Media;

    const/4 v0, 0x1

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v0, 0x2

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v13, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    invoke-direct/range {v6 .. v12}, Lcom/android/camera/Thumbnail$Media;-><init>(JIJLandroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    if-eqz v14, :cond_1

    .line 360
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 363
    .end local v7           #id:J
    :cond_1
    :goto_1
    return-object v6

    .line 345
    .end local v14           #cursor:Landroid/database/Cursor;
    :cond_2
    const-string v5, "datetaken DESC,_id DESC"

    goto :goto_0

    .line 359
    .restart local v14       #cursor:Landroid/database/Cursor;
    :cond_3
    if-eqz v14, :cond_1

    .line 360
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 359
    :catchall_0
    move-exception v0

    if-eqz v14, :cond_4

    .line 360
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public static getLastThumbnailFromContentResolver(Landroid/content/ContentResolver;[Lcom/android/camera/Thumbnail;Z)I
    .locals 13
    .parameter "resolver"
    .parameter "result"
    .parameter "bImage"

    .prologue
    const/4 v12, 0x0

    const/16 v11, 0xc

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 258
    const/4 v2, 0x0

    .line 259
    .local v2, lastImageMedia:Lcom/android/camera/Thumbnail$Media;
    const/4 v4, 0x0

    .line 260
    .local v4, lastVideoMedia:Lcom/android/camera/Thumbnail$Media;
    const/4 v3, 0x0

    .line 261
    .local v3, lastMedia:Lcom/android/camera/Thumbnail$Media;
    const/4 v0, 0x1

    .line 264
    .local v0, bImagethumb:Z
    invoke-static {p0}, Lcom/android/camera/Thumbnail;->getLastImageThumbnail(Landroid/content/ContentResolver;)Lcom/android/camera/Thumbnail$Media;

    move-result-object v2

    .line 265
    invoke-static {p0}, Lcom/android/camera/Thumbnail;->getLastVideoThumbnail(Landroid/content/ContentResolver;)Lcom/android/camera/Thumbnail$Media;

    move-result-object v4

    .line 268
    if-nez v2, :cond_0

    if-nez v4, :cond_0

    .line 269
    const-string v6, "Thumbnail"

    const-string v7, ">>>>>>>>cann\'t retrieve thumbnail from database"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :goto_0
    return v5

    .line 271
    :cond_0
    if-eqz v2, :cond_5

    if-eqz v4, :cond_5

    .line 272
    iget-wide v7, v2, Lcom/android/camera/Thumbnail$Media;->dateTaken:J

    iget-wide v9, v4, Lcom/android/camera/Thumbnail$Media;->dateTaken:J

    cmp-long v7, v7, v9

    if-lez v7, :cond_4

    .line 273
    move-object v3, v2

    .line 288
    :goto_1
    const/4 v1, 0x0

    .line 289
    .local v1, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_7

    .line 290
    iget-wide v7, v3, Lcom/android/camera/Thumbnail$Media;->id:J

    invoke-static {p0, v7, v8, v6, v12}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 298
    :goto_2
    if-nez v1, :cond_1

    .line 299
    const/16 v7, 0x90

    new-array v7, v7, [I

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v11, v11, v8}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 300
    const-string v7, "Thumbnail"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "--------bitmap="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_1
    iget-object v7, v3, Lcom/android/camera/Thumbnail$Media;->uri:Landroid/net/Uri;

    invoke-static {v7, p0}, Lcom/android/camera/Util;->isUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 304
    iget-object v7, v3, Lcom/android/camera/Thumbnail$Media;->uri:Landroid/net/Uri;

    iget v8, v3, Lcom/android/camera/Thumbnail$Media;->orientation:I

    invoke-static {v7, v1, v8}, Lcom/android/camera/Thumbnail;->createThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;I)Lcom/android/camera/Thumbnail;

    move-result-object v7

    aput-object v7, p1, v5

    .line 305
    aget-object v7, p1, v5

    if-eqz v7, :cond_3

    .line 306
    aget-object v7, p1, v5

    if-nez v0, :cond_2

    move v5, v6

    :cond_2
    invoke-virtual {v7, v5}, Lcom/android/camera/Thumbnail;->setVideoThumbnail(Z)V

    :cond_3
    move v5, v6

    .line 308
    goto :goto_0

    .line 275
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    :cond_4
    move-object v3, v4

    .line 276
    const/4 v0, 0x0

    goto :goto_1

    .line 279
    :cond_5
    if-nez v2, :cond_6

    .line 280
    move-object v3, v4

    .line 281
    const/4 v0, 0x0

    goto :goto_1

    .line 283
    :cond_6
    move-object v3, v2

    goto :goto_1

    .line 294
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    :cond_7
    iget-wide v7, v3, Lcom/android/camera/Thumbnail$Media;->id:J

    invoke-static {p0, v7, v8, v6, v12}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_2

    .line 310
    :cond_8
    const/4 v5, 0x2

    goto :goto_0
.end method

.method public static getLastThumbnailFromFile(Ljava/io/File;Landroid/content/ContentResolver;Z)Lcom/android/camera/Thumbnail;
    .locals 17
    .parameter "filesDir"
    .parameter "resolver"
    .parameter "bImage"

    .prologue
    .line 193
    const/4 v10, 0x0

    .line 194
    .local v10, file:Ljava/io/File;
    const/4 v6, 0x0

    .line 197
    .local v6, dir:Ljava/io/File;
    sget-boolean v13, Lcom/android/camera/Thumbnail;->mbInSecureBox:Z

    if-eqz v13, :cond_0

    .line 198
    new-instance v10, Ljava/io/File;

    .end local v10           #file:Ljava/io/File;
    const-string v13, "last_image_secure_thumb"

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 218
    .restart local v10       #file:Ljava/io/File;
    :goto_0
    const/4 v12, 0x0

    .line 219
    .local v12, uri:Landroid/net/Uri;
    const/4 v3, 0x0

    .line 220
    .local v3, bitmap:Landroid/graphics/Bitmap;
    const/4 v8, 0x0

    .line 221
    .local v8, f:Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 222
    .local v1, b:Ljava/io/BufferedInputStream;
    const/4 v4, 0x0

    .line 223
    .local v4, d:Ljava/io/DataInputStream;
    sget-object v14, Lcom/android/camera/Thumbnail;->sLock:Ljava/lang/Object;

    monitor-enter v14

    .line 225
    :try_start_0
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    .end local v8           #f:Ljava/io/FileInputStream;
    .local v9, f:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v2, Ljava/io/BufferedInputStream;

    const/16 v13, 0x1000

    invoke-direct {v2, v9, v13}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 227
    .end local v1           #b:Ljava/io/BufferedInputStream;
    .local v2, b:Ljava/io/BufferedInputStream;
    :try_start_2
    new-instance v5, Ljava/io/DataInputStream;

    invoke-direct {v5, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 228
    .end local v4           #d:Ljava/io/DataInputStream;
    .local v5, d:Ljava/io/DataInputStream;
    :try_start_3
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 229
    move-object/from16 v0, p1

    invoke-static {v12, v0}, Lcom/android/camera/Util;->isUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 230
    invoke-virtual {v5}, Ljava/io/FilterInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 231
    const/4 v11, 0x0

    .line 239
    :try_start_4
    invoke-static {v9}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 240
    invoke-static {v2}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 241
    invoke-static {v5}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v4, v5

    .end local v5           #d:Ljava/io/DataInputStream;
    .restart local v4       #d:Ljava/io/DataInputStream;
    move-object v1, v2

    .end local v2           #b:Ljava/io/BufferedInputStream;
    .restart local v1       #b:Ljava/io/BufferedInputStream;
    move-object v8, v9

    .line 249
    .end local v9           #f:Ljava/io/FileInputStream;
    .restart local v8       #f:Ljava/io/FileInputStream;
    :goto_1
    return-object v11

    .line 200
    .end local v1           #b:Ljava/io/BufferedInputStream;
    .end local v3           #bitmap:Landroid/graphics/Bitmap;
    .end local v4           #d:Ljava/io/DataInputStream;
    .end local v8           #f:Ljava/io/FileInputStream;
    .end local v12           #uri:Landroid/net/Uri;
    :cond_0
    new-instance v10, Ljava/io/File;

    .end local v10           #file:Ljava/io/File;
    const-string v13, ".lit"

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v10       #file:Ljava/io/File;
    goto :goto_0

    .line 233
    .restart local v2       #b:Ljava/io/BufferedInputStream;
    .restart local v3       #bitmap:Landroid/graphics/Bitmap;
    .restart local v5       #d:Ljava/io/DataInputStream;
    .restart local v9       #f:Ljava/io/FileInputStream;
    .restart local v12       #uri:Landroid/net/Uri;
    :cond_1
    :try_start_5
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 234
    invoke-virtual {v5}, Ljava/io/FilterInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 239
    :try_start_6
    invoke-static {v9}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 240
    invoke-static {v2}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 241
    invoke-static {v5}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 243
    monitor-exit v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 244
    const/4 v13, 0x0

    invoke-static {v12, v3, v13}, Lcom/android/camera/Thumbnail;->createThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;I)Lcom/android/camera/Thumbnail;

    move-result-object v11

    .line 245
    .local v11, thumbnail:Lcom/android/camera/Thumbnail;
    if-eqz v11, :cond_2

    .line 246
    const/4 v13, 0x1

    invoke-virtual {v11, v13}, Lcom/android/camera/Thumbnail;->setFromFile(Z)V

    .line 247
    if-nez p2, :cond_3

    const/4 v13, 0x1

    :goto_2
    invoke-virtual {v11, v13}, Lcom/android/camera/Thumbnail;->setVideoThumbnail(Z)V

    :cond_2
    move-object v4, v5

    .end local v5           #d:Ljava/io/DataInputStream;
    .restart local v4       #d:Ljava/io/DataInputStream;
    move-object v1, v2

    .end local v2           #b:Ljava/io/BufferedInputStream;
    .restart local v1       #b:Ljava/io/BufferedInputStream;
    move-object v8, v9

    .line 249
    .end local v9           #f:Ljava/io/FileInputStream;
    .restart local v8       #f:Ljava/io/FileInputStream;
    goto :goto_1

    .line 235
    .end local v11           #thumbnail:Lcom/android/camera/Thumbnail;
    :catch_0
    move-exception v7

    .line 236
    .local v7, e:Ljava/io/IOException;
    :goto_3
    :try_start_7
    const-string v13, "Thumbnail"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Fail to load bitmap. "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 237
    const/4 v11, 0x0

    .line 239
    :try_start_8
    invoke-static {v8}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 240
    invoke-static {v1}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 241
    invoke-static {v4}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    monitor-exit v14

    goto :goto_1

    .line 243
    .end local v7           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v13

    :goto_4
    monitor-exit v14
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v13

    .line 239
    :catchall_1
    move-exception v13

    :goto_5
    :try_start_9
    invoke-static {v8}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 240
    invoke-static {v1}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 241
    invoke-static {v4}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v13
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 247
    .end local v1           #b:Ljava/io/BufferedInputStream;
    .end local v4           #d:Ljava/io/DataInputStream;
    .end local v8           #f:Ljava/io/FileInputStream;
    .restart local v2       #b:Ljava/io/BufferedInputStream;
    .restart local v5       #d:Ljava/io/DataInputStream;
    .restart local v9       #f:Ljava/io/FileInputStream;
    .restart local v11       #thumbnail:Lcom/android/camera/Thumbnail;
    :cond_3
    const/4 v13, 0x0

    goto :goto_2

    .line 243
    .end local v11           #thumbnail:Lcom/android/camera/Thumbnail;
    :catchall_2
    move-exception v13

    move-object v4, v5

    .end local v5           #d:Ljava/io/DataInputStream;
    .restart local v4       #d:Ljava/io/DataInputStream;
    move-object v1, v2

    .end local v2           #b:Ljava/io/BufferedInputStream;
    .restart local v1       #b:Ljava/io/BufferedInputStream;
    move-object v8, v9

    .end local v9           #f:Ljava/io/FileInputStream;
    .restart local v8       #f:Ljava/io/FileInputStream;
    goto :goto_4

    .line 239
    .end local v8           #f:Ljava/io/FileInputStream;
    .restart local v9       #f:Ljava/io/FileInputStream;
    :catchall_3
    move-exception v13

    move-object v8, v9

    .end local v9           #f:Ljava/io/FileInputStream;
    .restart local v8       #f:Ljava/io/FileInputStream;
    goto :goto_5

    .end local v1           #b:Ljava/io/BufferedInputStream;
    .end local v8           #f:Ljava/io/FileInputStream;
    .restart local v2       #b:Ljava/io/BufferedInputStream;
    .restart local v9       #f:Ljava/io/FileInputStream;
    :catchall_4
    move-exception v13

    move-object v1, v2

    .end local v2           #b:Ljava/io/BufferedInputStream;
    .restart local v1       #b:Ljava/io/BufferedInputStream;
    move-object v8, v9

    .end local v9           #f:Ljava/io/FileInputStream;
    .restart local v8       #f:Ljava/io/FileInputStream;
    goto :goto_5

    .end local v1           #b:Ljava/io/BufferedInputStream;
    .end local v4           #d:Ljava/io/DataInputStream;
    .end local v8           #f:Ljava/io/FileInputStream;
    .restart local v2       #b:Ljava/io/BufferedInputStream;
    .restart local v5       #d:Ljava/io/DataInputStream;
    .restart local v9       #f:Ljava/io/FileInputStream;
    :catchall_5
    move-exception v13

    move-object v4, v5

    .end local v5           #d:Ljava/io/DataInputStream;
    .restart local v4       #d:Ljava/io/DataInputStream;
    move-object v1, v2

    .end local v2           #b:Ljava/io/BufferedInputStream;
    .restart local v1       #b:Ljava/io/BufferedInputStream;
    move-object v8, v9

    .end local v9           #f:Ljava/io/FileInputStream;
    .restart local v8       #f:Ljava/io/FileInputStream;
    goto :goto_5

    .line 235
    .end local v8           #f:Ljava/io/FileInputStream;
    .restart local v9       #f:Ljava/io/FileInputStream;
    :catch_1
    move-exception v7

    move-object v8, v9

    .end local v9           #f:Ljava/io/FileInputStream;
    .restart local v8       #f:Ljava/io/FileInputStream;
    goto :goto_3

    .end local v1           #b:Ljava/io/BufferedInputStream;
    .end local v8           #f:Ljava/io/FileInputStream;
    .restart local v2       #b:Ljava/io/BufferedInputStream;
    .restart local v9       #f:Ljava/io/FileInputStream;
    :catch_2
    move-exception v7

    move-object v1, v2

    .end local v2           #b:Ljava/io/BufferedInputStream;
    .restart local v1       #b:Ljava/io/BufferedInputStream;
    move-object v8, v9

    .end local v9           #f:Ljava/io/FileInputStream;
    .restart local v8       #f:Ljava/io/FileInputStream;
    goto :goto_3

    .end local v1           #b:Ljava/io/BufferedInputStream;
    .end local v4           #d:Ljava/io/DataInputStream;
    .end local v8           #f:Ljava/io/FileInputStream;
    .restart local v2       #b:Ljava/io/BufferedInputStream;
    .restart local v5       #d:Ljava/io/DataInputStream;
    .restart local v9       #f:Ljava/io/FileInputStream;
    :catch_3
    move-exception v7

    move-object v4, v5

    .end local v5           #d:Ljava/io/DataInputStream;
    .restart local v4       #d:Ljava/io/DataInputStream;
    move-object v1, v2

    .end local v2           #b:Ljava/io/BufferedInputStream;
    .restart local v1       #b:Ljava/io/BufferedInputStream;
    move-object v8, v9

    .end local v9           #f:Ljava/io/FileInputStream;
    .restart local v8       #f:Ljava/io/FileInputStream;
    goto :goto_3
.end method

.method private static getLastVideoThumbnail(Landroid/content/ContentResolver;)Lcom/android/camera/Thumbnail$Media;
    .locals 15
    .parameter "resolver"

    .prologue
    const/4 v6, 0x0

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 367
    sget-object v13, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 368
    .local v13, baseUri:Landroid/net/Uri;
    sget-boolean v0, Lcom/android/camera/Thumbnail;->mbInSecureBox:Z

    if-eqz v0, :cond_0

    .line 369
    const-string v0, "secure"

    invoke-static {v0}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 371
    :cond_0
    invoke-virtual {v13}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v4, "limit"

    const-string v9, "1"

    invoke-virtual {v0, v4, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 372
    .local v1, query:Landroid/net/Uri;
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v10

    const-string v0, "_data"

    aput-object v0, v2, v11

    const-string v0, "datetaken"

    aput-object v0, v2, v12

    .line 374
    .local v2, projection:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bucket_id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lcom/android/camera/Storage;->BUCKET_ID:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 375
    .local v3, selection:Ljava/lang/String;
    const-string v5, "datetaken DESC,_id DESC"

    .line 377
    .local v5, order:Ljava/lang/String;
    const/4 v14, 0x0

    .line 379
    .local v14, cursor:Landroid/database/Cursor;
    const/4 v4, 0x0

    move-object v0, p0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 380
    if-eqz v14, :cond_2

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 381
    const-string v0, "Thumbnail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getLastVideoThumbnail: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v6, 0x1

    invoke-interface {v14, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const/4 v0, 0x0

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 383
    .local v7, id:J
    new-instance v6, Lcom/android/camera/Thumbnail$Media;

    const/4 v9, 0x0

    const/4 v0, 0x2

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v13, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    invoke-direct/range {v6 .. v12}, Lcom/android/camera/Thumbnail$Media;-><init>(JIJLandroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    if-eqz v14, :cond_1

    .line 388
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 391
    .end local v7           #id:J
    :cond_1
    :goto_0
    return-object v6

    .line 387
    :cond_2
    if-eqz v14, :cond_1

    .line 388
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 387
    :catchall_0
    move-exception v0

    if-eqz v14, :cond_3

    .line 388
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static rotateImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "bitmap"
    .parameter "orientation"

    .prologue
    const/high16 v3, 0x3f00

    .line 113
    if-eqz p1, :cond_1

    .line 115
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 116
    .local v5, m:Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 120
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 124
    .local v7, rotated:Landroid/graphics/Bitmap;
    if-eq v7, p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .end local v5           #m:Landroid/graphics/Matrix;
    .end local v7           #rotated:Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object v7

    .line 126
    .restart local v5       #m:Landroid/graphics/Matrix;
    :catch_0
    move-exception v8

    .line 127
    .local v8, t:Ljava/lang/Throwable;
    const-string v0, "Thumbnail"

    const-string v1, "Failed to rotate thumbnail"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v5           #m:Landroid/graphics/Matrix;
    .end local v8           #t:Ljava/lang/Throwable;
    :cond_1
    move-object v7, p0

    .line 130
    goto :goto_0
.end method

.method public static setInSecureBox(Z)V
    .locals 0
    .parameter "open"

    .prologue
    .line 189
    sput-boolean p0, Lcom/android/camera/Thumbnail;->mbInSecureBox:Z

    .line 190
    return-void
.end method


# virtual methods
.method public fromFile()Z
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/camera/Thumbnail;->mFromFile:Z

    return v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/camera/Thumbnail;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/camera/Thumbnail;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public saveLastThumbnailToFile(Ljava/io/File;)V
    .locals 13
    .parameter "filesDir"

    .prologue
    .line 136
    const/4 v8, 0x0

    .line 137
    .local v8, file:Ljava/io/File;
    const/4 v4, 0x0

    .line 138
    .local v4, dir:Ljava/io/File;
    iget-object v9, p0, Lcom/android/camera/Thumbnail;->mUri:Landroid/net/Uri;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/camera/Thumbnail;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/camera/Thumbnail;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 139
    :cond_0
    const-string v9, "Thumbnail"

    const-string v10, "skip the saveLastThumbnailToFile with null muri or reclbyed"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :goto_0
    return-void

    .line 143
    :cond_1
    sget-boolean v9, Lcom/android/camera/Thumbnail;->mbInSecureBox:Z

    if-eqz v9, :cond_2

    .line 144
    new-instance v8, Ljava/io/File;

    .end local v8           #file:Ljava/io/File;
    const-string v9, "last_image_secure_thumb"

    invoke-direct {v8, p1, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 165
    .restart local v8       #file:Ljava/io/File;
    :goto_1
    const/4 v6, 0x0

    .line 166
    .local v6, f:Ljava/io/FileOutputStream;
    const/4 v0, 0x0

    .line 167
    .local v0, b:Ljava/io/BufferedOutputStream;
    const/4 v2, 0x0

    .line 168
    .local v2, d:Ljava/io/DataOutputStream;
    sget-object v10, Lcom/android/camera/Thumbnail;->sLock:Ljava/lang/Object;

    monitor-enter v10

    .line 170
    :try_start_0
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .end local v6           #f:Ljava/io/FileOutputStream;
    .local v7, f:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedOutputStream;

    const/16 v9, 0x1000

    invoke-direct {v1, v7, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 172
    .end local v0           #b:Ljava/io/BufferedOutputStream;
    .local v1, b:Ljava/io/BufferedOutputStream;
    :try_start_2
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 173
    .end local v2           #d:Ljava/io/DataOutputStream;
    .local v3, d:Ljava/io/DataOutputStream;
    :try_start_3
    iget-object v9, p0, Lcom/android/camera/Thumbnail;->mUri:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 174
    iget-object v9, p0, Lcom/android/camera/Thumbnail;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v11, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v12, 0x5a

    invoke-virtual {v9, v11, v12, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 175
    invoke-virtual {v3}, Ljava/io/FilterOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 179
    :try_start_4
    invoke-static {v7}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 180
    invoke-static {v1}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 181
    invoke-static {v3}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v2, v3

    .end local v3           #d:Ljava/io/DataOutputStream;
    .restart local v2       #d:Ljava/io/DataOutputStream;
    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedOutputStream;
    .restart local v0       #b:Ljava/io/BufferedOutputStream;
    move-object v6, v7

    .line 183
    .end local v7           #f:Ljava/io/FileOutputStream;
    .restart local v6       #f:Ljava/io/FileOutputStream;
    :goto_2
    :try_start_5
    monitor-exit v10

    goto :goto_0

    :catchall_0
    move-exception v9

    :goto_3
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v9

    .line 146
    .end local v0           #b:Ljava/io/BufferedOutputStream;
    .end local v2           #d:Ljava/io/DataOutputStream;
    .end local v6           #f:Ljava/io/FileOutputStream;
    :cond_2
    new-instance v8, Ljava/io/File;

    .end local v8           #file:Ljava/io/File;
    const-string v9, ".lit"

    invoke-direct {v8, p1, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v8       #file:Ljava/io/File;
    goto :goto_1

    .line 176
    .restart local v0       #b:Ljava/io/BufferedOutputStream;
    .restart local v2       #d:Ljava/io/DataOutputStream;
    .restart local v6       #f:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v5

    .line 177
    .local v5, e:Ljava/io/IOException;
    :goto_4
    :try_start_6
    const-string v9, "Thumbnail"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Fail to store bitmap. path="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 179
    :try_start_7
    invoke-static {v6}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 180
    invoke-static {v0}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 181
    invoke-static {v2}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_2

    .line 179
    .end local v5           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v9

    :goto_5
    invoke-static {v6}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 180
    invoke-static {v0}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 181
    invoke-static {v2}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 183
    .end local v0           #b:Ljava/io/BufferedOutputStream;
    .end local v2           #d:Ljava/io/DataOutputStream;
    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v1       #b:Ljava/io/BufferedOutputStream;
    .restart local v3       #d:Ljava/io/DataOutputStream;
    .restart local v7       #f:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v9

    move-object v2, v3

    .end local v3           #d:Ljava/io/DataOutputStream;
    .restart local v2       #d:Ljava/io/DataOutputStream;
    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedOutputStream;
    .restart local v0       #b:Ljava/io/BufferedOutputStream;
    move-object v6, v7

    .end local v7           #f:Ljava/io/FileOutputStream;
    .restart local v6       #f:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 179
    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v7       #f:Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v9

    move-object v6, v7

    .end local v7           #f:Ljava/io/FileOutputStream;
    .restart local v6       #f:Ljava/io/FileOutputStream;
    goto :goto_5

    .end local v0           #b:Ljava/io/BufferedOutputStream;
    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v1       #b:Ljava/io/BufferedOutputStream;
    .restart local v7       #f:Ljava/io/FileOutputStream;
    :catchall_4
    move-exception v9

    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedOutputStream;
    .restart local v0       #b:Ljava/io/BufferedOutputStream;
    move-object v6, v7

    .end local v7           #f:Ljava/io/FileOutputStream;
    .restart local v6       #f:Ljava/io/FileOutputStream;
    goto :goto_5

    .end local v0           #b:Ljava/io/BufferedOutputStream;
    .end local v2           #d:Ljava/io/DataOutputStream;
    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v1       #b:Ljava/io/BufferedOutputStream;
    .restart local v3       #d:Ljava/io/DataOutputStream;
    .restart local v7       #f:Ljava/io/FileOutputStream;
    :catchall_5
    move-exception v9

    move-object v2, v3

    .end local v3           #d:Ljava/io/DataOutputStream;
    .restart local v2       #d:Ljava/io/DataOutputStream;
    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedOutputStream;
    .restart local v0       #b:Ljava/io/BufferedOutputStream;
    move-object v6, v7

    .end local v7           #f:Ljava/io/FileOutputStream;
    .restart local v6       #f:Ljava/io/FileOutputStream;
    goto :goto_5

    .line 176
    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v7       #f:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v5

    move-object v6, v7

    .end local v7           #f:Ljava/io/FileOutputStream;
    .restart local v6       #f:Ljava/io/FileOutputStream;
    goto :goto_4

    .end local v0           #b:Ljava/io/BufferedOutputStream;
    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v1       #b:Ljava/io/BufferedOutputStream;
    .restart local v7       #f:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v5

    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedOutputStream;
    .restart local v0       #b:Ljava/io/BufferedOutputStream;
    move-object v6, v7

    .end local v7           #f:Ljava/io/FileOutputStream;
    .restart local v6       #f:Ljava/io/FileOutputStream;
    goto :goto_4

    .end local v0           #b:Ljava/io/BufferedOutputStream;
    .end local v2           #d:Ljava/io/DataOutputStream;
    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v1       #b:Ljava/io/BufferedOutputStream;
    .restart local v3       #d:Ljava/io/DataOutputStream;
    .restart local v7       #f:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v5

    move-object v2, v3

    .end local v3           #d:Ljava/io/DataOutputStream;
    .restart local v2       #d:Ljava/io/DataOutputStream;
    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedOutputStream;
    .restart local v0       #b:Ljava/io/BufferedOutputStream;
    move-object v6, v7

    .end local v7           #f:Ljava/io/FileOutputStream;
    .restart local v6       #f:Ljava/io/FileOutputStream;
    goto :goto_4
.end method

.method public setFromFile(Z)V
    .locals 0
    .parameter "fromFile"

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/android/camera/Thumbnail;->mFromFile:Z

    .line 104
    return-void
.end method

.method public setShortCutUri(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/camera/Thumbnail;->mUri:Landroid/net/Uri;

    .line 86
    return-void
.end method

.method public setShortcutBitmap(Landroid/graphics/Bitmap;I)V
    .locals 1
    .parameter "bitmap"
    .parameter "orientation"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/camera/Thumbnail;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Thumbnail;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/camera/Thumbnail;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/Thumbnail;->mBitmap:Landroid/graphics/Bitmap;

    .line 95
    :cond_0
    invoke-static {p1, p2}, Lcom/android/camera/Thumbnail;->rotateImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Thumbnail;->mBitmap:Landroid/graphics/Bitmap;

    .line 96
    return-void
.end method

.method public setVideoThumbnail(Z)V
    .locals 0
    .parameter "isVideoThumbnail"

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/android/camera/Thumbnail;->mbVideoThumbnail:Z

    .line 111
    return-void
.end method
