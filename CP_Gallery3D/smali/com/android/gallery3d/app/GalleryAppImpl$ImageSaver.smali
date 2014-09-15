.class public Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;
.super Ljava/lang/Thread;
.source "GalleryAppImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/GalleryAppImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageSaver"
.end annotation


# instance fields
.field private mActivity:Lcom/android/camera/CameraActivity;

.field public mCaptureStartTime:J

.field private mHandler:Landroid/os/Handler;

.field private mIsImageCaptureIntent:Z

.field private mPendingThumbnail:Lcom/android/camera/Thumbnail;

.field private volatile mQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/app/GalleryAppImpl$SaveRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mStop:Z

.field private mUpdateThumbnailLock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/gallery3d/app/GalleryAppImpl;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/GalleryAppImpl;)V
    .locals 1
    .parameter

    .prologue
    .line 281
    iput-object p1, p0, Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;->this$0:Lcom/android/gallery3d/app/GalleryAppImpl;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 212
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;->mUpdateThumbnailLock:Ljava/lang/Object;

    .line 282
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;->mQueue:Ljava/util/ArrayList;

    .line 283
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 284
    return-void
.end method

.method private forceupdateThumbnail()V
    .locals 0

    .prologue
    .line 444
    return-void
.end method

.method private storeImage([BLandroid/net/Uri;Ljava/lang/String;Landroid/location/Location;IIII)V
    .locals 12
    .parameter "data"
    .parameter "uri"
    .parameter "title"
    .parameter "loc"
    .parameter "width"
    .parameter "height"
    .parameter "thumbnailWidth"
    .parameter "orientation"

    .prologue
    .line 475
    const/4 v11, 0x0

    .line 476
    .local v11, ok:Z
    move-object v3, p2

    .line 498
    .local v3, saveuri:Landroid/net/Uri;
    if-nez p2, :cond_2

    .line 499
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;->mCaptureStartTime:J

    .line 500
    iget-wide v4, p0, Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;->mCaptureStartTime:J

    invoke-static {v4, v5}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v1

    .line 501
    .local v1, fileTile:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;->this$0:Lcom/android/gallery3d/app/GalleryAppImpl;

    #getter for: Lcom/android/gallery3d/app/GalleryAppImpl;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/gallery3d/app/GalleryAppImpl;->access$100(Lcom/android/gallery3d/app/GalleryAppImpl;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;->mCaptureStartTime:J

    move-object/from16 v4, p4

    move/from16 v5, p8

    move-object v6, p1

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v0 .. v8}, Lcom/android/camera/Storage;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;I[BII)Landroid/net/Uri;

    move-result-object v3

    .line 503
    if-eqz v3, :cond_0

    .line 504
    const/4 v11, 0x1

    .line 512
    .end local v1           #fileTile:Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v11, :cond_1

    .line 513
    const/4 v10, 0x0

    .line 514
    .local v10, needThumbnail:Z
    monitor-enter p0

    .line 519
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_3

    const/4 v10, 0x1

    .line 520
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 538
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v0, v3}, Lcom/android/camera/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 540
    .end local v10           #needThumbnail:Z
    :cond_1
    return-void

    .line 507
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;->this$0:Lcom/android/gallery3d/app/GalleryAppImpl;

    #getter for: Lcom/android/gallery3d/app/GalleryAppImpl;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/gallery3d/app/GalleryAppImpl;->access$100(Lcom/android/gallery3d/app/GalleryAppImpl;)Landroid/content/ContentResolver;

    move-result-object v2

    move-object v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p8

    move-object v7, p1

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-static/range {v2 .. v9}, Lcom/android/camera/Storage;->updateImage(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Landroid/location/Location;I[BII)Z

    move-result v11

    goto :goto_0

    .line 519
    .restart local v10       #needThumbnail:Z
    :cond_3
    const/4 v10, 0x0

    goto :goto_1

    .line 520
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public DeleteAllData()V
    .locals 4

    .prologue
    .line 236
    monitor-enter p0

    .line 237
    :try_start_0
    iget-object v3, p0, Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 238
    .local v2, size:I
    iget-object v3, p0, Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 239
    monitor-exit p0

    .line 247
    :goto_0
    return-void

    .line 242
    :cond_0
    const/4 v0, 0x0

    .local v0, index:I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 243
    iget-object v3, p0, Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/app/GalleryAppImpl$SaveRequest;

    .line 244
    .local v1, r:Lcom/android/gallery3d/app/GalleryAppImpl$SaveRequest;
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/gallery3d/app/GalleryAppImpl$SaveRequest;->mbAbandom:Z

    .line 242
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 246
    .end local v1           #r:Lcom/android/gallery3d/app/GalleryAppImpl$SaveRequest;
    :cond_1
    monitor-exit p0

    goto :goto_0

    .end local v0           #index:I
    .end local v2           #size:I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public DeleteData(I)V
    .locals 7
    .parameter "id"

    .prologue
    .line 249
    monitor-enter p0

    .line 250
    :try_start_0
    iget-object v3, p0, Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 251
    .local v2, size:I
    iget-object v3, p0, Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 252
    monitor-exit p0

    .line 267
    :goto_0
    return-void

    .line 255
    :cond_0
    const/4 v0, 0x0

    .local v0, index:I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 256
    iget-object v3, p0, Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/app/GalleryAppImpl$SaveRequest;

    .line 257
    .local v1, r:Lcom/android/gallery3d/app/GalleryAppImpl$SaveRequest;
    int-to-long v3, p1

    iget-object v5, v1, Lcom/android/gallery3d/app/GalleryAppImpl$SaveRequest;->uri:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 258
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/gallery3d/app/GalleryAppImpl$SaveRequest;->mbAbandom:Z

    .line 264
    .end local v1           #r:Lcom/android/gallery3d/app/GalleryAppImpl$SaveRequest;
    :cond_1
    const-string v3, "GalleryAppImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ">>>>>cann\'t get corresponding request for uri "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    monitor-exit p0

    goto :goto_0

    .end local v0           #index:I
    .end local v2           #size:I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 255
    .restart local v0       #index:I
    .restart local v1       #r:Lcom/android/gallery3d/app/GalleryAppImpl$SaveRequest;
    .restart local v2       #size:I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public addImage([BLandroid/net/Uri;Ljava/lang/String;Landroid/location/Location;IIII)V
    .locals 9
    .parameter "data"
    .parameter "uri"
    .parameter "title"
    .parameter "loc"
    .parameter "width"
    .parameter "height"
    .parameter "thumbnailWidth"
    .parameter "orientation"

    .prologue
    .line 289
    new-instance v3, Lcom/android/gallery3d/app/GalleryAppImpl$SaveRequest;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Lcom/android/gallery3d/app/GalleryAppImpl$SaveRequest;-><init>(Lcom/android/gallery3d/app/GalleryAppImpl$1;)V

    .line 290
    .local v3, r:Lcom/android/gallery3d/app/GalleryAppImpl$SaveRequest;
    iput-object p1, v3, Lcom/android/gallery3d/app/GalleryAppImpl$SaveRequest;->data:[B

    .line 291
    iput-object p2, v3, Lcom/android/gallery3d/app/GalleryAppImpl$SaveRequest;->uri:Landroid/net/Uri;

    .line 292
    iput-object p3, v3, Lcom/android/gallery3d/app/GalleryAppImpl$SaveRequest;->title:Ljava/lang/String;

    .line 293
    if-nez p4, :cond_4

    const/4 v5, 0x0

    :goto_0
    iput-object v5, v3, Lcom/android/gallery3d/app/GalleryAppImpl$SaveRequest;->loc:Landroid/location/Location;

    .line 294
    iput p5, v3, Lcom/android/gallery3d/app/GalleryAppImpl$SaveRequest;->width:I

    .line 295
    iput p6, v3, Lcom/android/gallery3d/app/GalleryAppImpl$SaveRequest;->height:I

    .line 296
    move/from16 v0, p7

    iput v0, v3, Lcom/android/gallery3d/app/GalleryAppImpl$SaveRequest;->thumbnailWidth:I

    .line 297
    move/from16 v0, p8

    iput v0, v3, Lcom/android/gallery3d/app/GalleryAppImpl$SaveRequest;->orientation:I

    .line 298
    const/4 v4, 0x0

    .line 299
    .local v4, timeout:Z
    monitor-enter p0

    .line 300
    :cond_0
    :goto_1
    :try_start_0
    iget-object v5, p0, Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    const/16 v6, 0x17

    if-lt v5, v6, :cond_1

    .line 302
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 303
    .local v1, enter:Ljava/lang/Long;
    const-wide/16 v5, 0xdac

    invoke-virtual {p0, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 304
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 305
    .local v2, leave:Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0xdac

    cmp-long v5, v5, v7

    if-ltz v5, :cond_0

    .line 306
    const/4 v4, 0x1

    .line 307
    iget-object v5, p0, Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x2b

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 308
    const-string v5, "GalleryAppImpl"

    const-string v6, ">>>>>request addiamge in photomode is timeout"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const-string v5, "request addiamge in photomode is timeout"

    invoke-static {v5}, Lcom/android/camera/Util;->launchBugReportSystemByReflect(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 316
    .end local v1           #enter:Ljava/lang/Long;
    .end local v2           #leave:Ljava/lang/Long;
    :cond_1
    if-nez v4, :cond_2

    .line 317
    :try_start_2
    iget-object v5, p0, Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 320
    :cond_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 322
    if-eqz v4, :cond_3

    .line 323
    invoke-virtual {p0, p2}, Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;->cleanInvalidUri(Landroid/net/Uri;)V

    .line 325
    :cond_3
    return-void

    .line 293
    .end local v4           #timeout:Z
    :cond_4
    new-instance v5, Landroid/location/Location;

    invoke-direct {v5, p4}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    goto :goto_0

    .line 320
    .restart local v4       #timeout:Z
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 312
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public cleanInvalidUri(Landroid/net/Uri;)V
    .locals 1
    .parameter "addr"

    .prologue
    .line 328
    if-nez p1, :cond_0

    .line 331
    :goto_0
    return-void

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;->this$0:Lcom/android/gallery3d/app/GalleryAppImpl;

    #getter for: Lcom/android/gallery3d/app/GalleryAppImpl;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/gallery3d/app/GalleryAppImpl;->access$100(Lcom/android/gallery3d/app/GalleryAppImpl;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/camera/Storage;->deleteImage(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public getData(Landroid/net/Uri;)[B
    .locals 9
    .parameter "uri"

    .prologue
    const/4 v5, 0x0

    .line 215
    monitor-enter p0

    .line 216
    :try_start_0
    iget-object v6, p0, Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 217
    .local v4, size:I
    iget-object v6, p0, Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 218
    monitor-exit p0

    .line 230
    :goto_0
    return-object v5

    .line 221
    :cond_0
    const/4 v2, 0x0

    .local v2, index:I
    :goto_1
    if-ge v2, v4, :cond_2

    .line 222
    iget-object v6, p0, Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/app/GalleryAppImpl$SaveRequest;

    .line 223
    .local v3, r:Lcom/android/gallery3d/app/GalleryAppImpl$SaveRequest;
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 224
    .local v0, id:J
    iget-object v6, v3, Lcom/android/gallery3d/app/GalleryAppImpl$SaveRequest;->uri:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    cmp-long v6, v0, v6

    if-nez v6, :cond_1

    .line 225
    iget-object v5, v3, Lcom/android/gallery3d/app/GalleryAppImpl$SaveRequest;->data:[B

    monitor-exit p0

    goto :goto_0

    .line 231
    .end local v0           #id:J
    .end local v2           #index:I
    .end local v3           #r:Lcom/android/gallery3d/app/GalleryAppImpl$SaveRequest;
    .end local v4           #size:I
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 221
    .restart local v0       #id:J
    .restart local v2       #index:I
    .restart local v3       #r:Lcom/android/gallery3d/app/GalleryAppImpl$SaveRequest;
    .restart local v4       #size:I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 229
    .end local v0           #id:J
    .end local v3           #r:Lcom/android/gallery3d/app/GalleryAppImpl$SaveRequest;
    :cond_2
    :try_start_1
    const-string v6, "GalleryAppImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ">>>>>cann\'t get corresponding request for uri "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 338
    :goto_0
    monitor-enter p0

    .line 342
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 343
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 347
    iget-boolean v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;->mStop:Z

    if-eqz v0, :cond_1

    .line 348
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    iget-boolean v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;->mStop:Z

    if-eqz v0, :cond_5

    .line 377
    :goto_1
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 378
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/gallery3d/app/GalleryAppImpl$SaveRequest;

    .line 379
    .local v9, r:Lcom/android/gallery3d/app/GalleryAppImpl$SaveRequest;
    iget-object v0, v9, Lcom/android/gallery3d/app/GalleryAppImpl$SaveRequest;->uri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 380
    const-string v0, "GalleryAppImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>clean valid remaining data uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v9, Lcom/android/gallery3d/app/GalleryAppImpl$SaveRequest;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;->this$0:Lcom/android/gallery3d/app/GalleryAppImpl;

    #getter for: Lcom/android/gallery3d/app/GalleryAppImpl;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/gallery3d/app/GalleryAppImpl;->access$100(Lcom/android/gallery3d/app/GalleryAppImpl;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, v9, Lcom/android/gallery3d/app/GalleryAppImpl$SaveRequest;->uri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/android/camera/Storage;->deleteImage(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 351
    .end local v9           #r:Lcom/android/gallery3d/app/GalleryAppImpl$SaveRequest;
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 355
    :goto_2
    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 358
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 357
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;->mQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/gallery3d/app/GalleryAppImpl$SaveRequest;

    .line 358
    .restart local v9       #r:Lcom/android/gallery3d/app/GalleryAppImpl$SaveRequest;
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 360
    iget-boolean v0, v9, Lcom/android/gallery3d/app/GalleryAppImpl$SaveRequest;->mbAbandom:Z

    if-nez v0, :cond_3

    .line 361
    iget-object v1, v9, Lcom/android/gallery3d/app/GalleryAppImpl$SaveRequest;->data:[B

    iget-object v2, v9, Lcom/android/gallery3d/app/GalleryAppImpl$SaveRequest;->uri:Landroid/net/Uri;

    iget-object v3, v9, Lcom/android/gallery3d/app/GalleryAppImpl$SaveRequest;->title:Ljava/lang/String;

    iget-object v4, v9, Lcom/android/gallery3d/app/GalleryAppImpl$SaveRequest;->loc:Landroid/location/Location;

    iget v5, v9, Lcom/android/gallery3d/app/GalleryAppImpl$SaveRequest;->width:I

    iget v6, v9, Lcom/android/gallery3d/app/GalleryAppImpl$SaveRequest;->height:I

    iget v7, v9, Lcom/android/gallery3d/app/GalleryAppImpl$SaveRequest;->thumbnailWidth:I

    iget v8, v9, Lcom/android/gallery3d/app/GalleryAppImpl$SaveRequest;->orientation:I

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;->storeImage([BLandroid/net/Uri;Ljava/lang/String;Landroid/location/Location;IIII)V

    .line 367
    :goto_3
    monitor-enter p0

    .line 368
    :try_start_4
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;->mQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 369
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 370
    monitor-exit p0

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 364
    :cond_3
    const-string v0, "GalleryAppImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>>abandom storing uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v9, Lcom/android/gallery3d/app/GalleryAppImpl$SaveRequest;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 386
    .end local v9           #r:Lcom/android/gallery3d/app/GalleryAppImpl$SaveRequest;
    :cond_4
    invoke-direct {p0}, Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;->forceupdateThumbnail()V

    .line 388
    :cond_5
    return-void

    .line 352
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public setCameraActivity(Lcom/android/camera/CameraActivity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 274
    iput-object p1, p0, Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;->mActivity:Lcom/android/camera/CameraActivity;

    .line 275
    iget-object v1, p0, Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.media.action.IMAGE_CAPTURE_SECURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;->mIsImageCaptureIntent:Z

    .line 278
    return-void

    .line 276
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setModuleHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 270
    iput-object p1, p0, Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;->mHandler:Landroid/os/Handler;

    .line 271
    return-void
.end method

.method public updateThumbnail()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 449
    iget-object v2, p0, Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;->mUpdateThumbnailLock:Ljava/lang/Object;

    monitor-enter v2

    .line 450
    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xf

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 451
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;->mPendingThumbnail:Lcom/android/camera/Thumbnail;

    .line 452
    .local v0, t:Lcom/android/camera/Thumbnail;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;->mPendingThumbnail:Lcom/android/camera/Thumbnail;

    .line 453
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    if-eqz v0, :cond_0

    .line 458
    iget-object v1, p0, Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v1, v1, Lcom/android/camera/CameraActivity;->needUpdateView:Z

    if-eqz v1, :cond_1

    .line 459
    iget-object v1, p0, Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1, v0, v4}, Lcom/android/camera/CameraActivity;->updateThumbnail(Lcom/android/camera/Thumbnail;Z)V

    .line 464
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;->mActivity:Lcom/android/camera/CameraActivity;

    iput-boolean v4, v1, Lcom/android/camera/CameraActivity;->needUpdateView:Z

    .line 469
    :cond_0
    return-void

    .line 453
    .end local v0           #t:Lcom/android/camera/Thumbnail;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 462
    .restart local v0       #t:Lcom/android/camera/Thumbnail;
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/CameraActivity;->updateThumbnail(Lcom/android/camera/Thumbnail;Z)V

    goto :goto_0
.end method
