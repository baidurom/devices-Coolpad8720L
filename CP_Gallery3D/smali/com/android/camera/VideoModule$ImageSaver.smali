.class Lcom/android/camera/VideoModule$ImageSaver;
.super Ljava/lang/Thread;
.source "VideoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/VideoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageSaver"
.end annotation


# instance fields
.field private mQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/VideoModule$SaveRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mStop:Z

.field private mUpdateThumbnailLock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/camera/VideoModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/VideoModule;)V
    .locals 1
    .parameter

    .prologue
    .line 357
    iput-object p1, p0, Lcom/android/camera/VideoModule$ImageSaver;->this$0:Lcom/android/camera/VideoModule;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 354
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/VideoModule$ImageSaver;->mUpdateThumbnailLock:Ljava/lang/Object;

    .line 358
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/VideoModule$ImageSaver;->mQueue:Ljava/util/ArrayList;

    .line 359
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 360
    return-void
.end method


# virtual methods
.method public addImage([BLandroid/location/Location;II)V
    .locals 10
    .parameter "data"
    .parameter "loc"
    .parameter "width"
    .parameter "height"

    .prologue
    const-wide/16 v8, 0xdac

    const/4 v6, 0x0

    .line 365
    new-instance v4, Lcom/android/camera/VideoModule$SaveRequest;

    invoke-direct {v4, v6}, Lcom/android/camera/VideoModule$SaveRequest;-><init>(Lcom/android/camera/VideoModule$1;)V

    .line 366
    .local v4, r:Lcom/android/camera/VideoModule$SaveRequest;
    iput-object p1, v4, Lcom/android/camera/VideoModule$SaveRequest;->data:[B

    .line 368
    if-nez p2, :cond_3

    :goto_0
    iput-object v6, v4, Lcom/android/camera/VideoModule$SaveRequest;->loc:Landroid/location/Location;

    .line 369
    iput p3, v4, Lcom/android/camera/VideoModule$SaveRequest;->width:I

    .line 370
    iput p4, v4, Lcom/android/camera/VideoModule$SaveRequest;->height:I

    .line 371
    const/4 v5, 0x0

    .line 372
    .local v5, timeout:Z
    monitor-enter p0

    .line 373
    :cond_0
    :goto_1
    :try_start_0
    iget-object v6, p0, Lcom/android/camera/VideoModule$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    const/16 v7, 0x9

    if-lt v6, v7, :cond_1

    .line 375
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 376
    .local v0, enter:J
    const-wide/16 v6, 0xdac

    invoke-virtual {p0, v6, v7}, Ljava/lang/Object;->wait(J)V

    .line 377
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v0

    .line 378
    .local v2, leave:J
    cmp-long v6, v2, v8

    if-ltz v6, :cond_0

    .line 379
    const/4 v5, 0x1

    .line 380
    const-string v6, "CAM_VideoModule"

    const-string v7, ">>>>>>>>>>>request add image timeout"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const-string v6, "requet add image in videomode is timeout"

    invoke-static {v6}, Lcom/android/camera/Util;->launchBugReportSystemByReflect(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 389
    .end local v0           #enter:J
    .end local v2           #leave:J
    :cond_1
    if-nez v5, :cond_2

    .line 390
    :try_start_2
    iget-object v6, p0, Lcom/android/camera/VideoModule$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 393
    :cond_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 394
    return-void

    .line 368
    .end local v5           #timeout:Z
    :cond_3
    new-instance v6, Landroid/location/Location;

    invoke-direct {v6, p2}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    goto :goto_0

    .line 393
    .restart local v5       #timeout:Z
    :catchall_0
    move-exception v6

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v6

    .line 384
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 451
    invoke-virtual {p0}, Lcom/android/camera/VideoModule$ImageSaver;->waitDone()V

    .line 452
    monitor-enter p0

    .line 453
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/VideoModule$ImageSaver;->mStop:Z

    .line 454
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 455
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 462
    :goto_0
    return-void

    .line 455
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 459
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public run()V
    .locals 11

    .prologue
    .line 401
    :goto_0
    monitor-enter p0

    .line 402
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/VideoModule$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 403
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 407
    iget-boolean v0, p0, Lcom/android/camera/VideoModule$ImageSaver;->mStop:Z

    if-eqz v0, :cond_0

    .line 408
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    return-void

    .line 411
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 415
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 418
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 417
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/android/camera/VideoModule$ImageSaver;->mQueue:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/VideoModule$SaveRequest;

    .line 418
    .local v9, r:Lcom/android/camera/VideoModule$SaveRequest;
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 419
    const-string v0, "CAM_VideoModule"

    const-string v4, ">>>>>>>>>>do save jpeg"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 421
    .local v2, dateTaken:J
    invoke-static {v2, v3}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v1

    .line 422
    .local v1, title:Ljava/lang/String;
    iget-object v0, v9, Lcom/android/camera/VideoModule$SaveRequest;->data:[B

    invoke-static {v0}, Lcom/android/camera/Exif;->getOrientation([B)I

    move-result v5

    .line 423
    .local v5, orientation:I
    iget-object v0, p0, Lcom/android/camera/VideoModule$ImageSaver;->this$0:Lcom/android/camera/VideoModule;

    #getter for: Lcom/android/camera/VideoModule;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$400(Lcom/android/camera/VideoModule;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v4, v9, Lcom/android/camera/VideoModule$SaveRequest;->loc:Landroid/location/Location;

    iget-object v6, v9, Lcom/android/camera/VideoModule$SaveRequest;->data:[B

    iget v7, v9, Lcom/android/camera/VideoModule$SaveRequest;->width:I

    iget v8, v9, Lcom/android/camera/VideoModule$SaveRequest;->height:I

    invoke-static/range {v0 .. v8}, Lcom/android/camera/Storage;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;I[BII)Landroid/net/Uri;

    move-result-object v10

    .line 425
    .local v10, uri:Landroid/net/Uri;
    if-eqz v10, :cond_2

    .line 426
    iget-object v0, p0, Lcom/android/camera/VideoModule$ImageSaver;->this$0:Lcom/android/camera/VideoModule;

    #getter for: Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$500(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-static {v0, v10}, Lcom/android/camera/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 429
    :cond_2
    monitor-enter p0

    .line 430
    :try_start_4
    iget-object v0, p0, Lcom/android/camera/VideoModule$ImageSaver;->mQueue:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 431
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 432
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 412
    .end local v1           #title:Ljava/lang/String;
    .end local v2           #dateTaken:J
    .end local v5           #orientation:I
    .end local v9           #r:Lcom/android/camera/VideoModule$SaveRequest;
    .end local v10           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public waitDone()V
    .locals 1

    .prologue
    .line 438
    monitor-enter p0

    .line 439
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/VideoModule$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 441
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 442
    :catch_0
    move-exception v0

    goto :goto_0

    .line 446
    :cond_0
    :try_start_2
    monitor-exit p0

    .line 447
    return-void

    .line 446
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
