.class Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;
.super Ljava/lang/Thread;
.source "AlbumSetDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/AlbumSetDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReloadTask"
.end annotation


# instance fields
.field private volatile mActive:Z

.field private volatile mDirty:Z

.field private volatile mIsLoading:Z

.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/AlbumSetDataLoader;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 366
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 367
    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->mActive:Z

    .line 368
    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->mDirty:Z

    .line 369
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->mIsLoading:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/AlbumSetDataLoader;Lcom/android/gallery3d/app/AlbumSetDataLoader$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 366
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;-><init>(Lcom/android/gallery3d/app/AlbumSetDataLoader;)V

    return-void
.end method

.method private updateLoading(Z)V
    .locals 2
    .parameter "loading"

    .prologue
    .line 372
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->mIsLoading:Z

    if-ne v0, p1, :cond_0

    .line 375
    :goto_0
    return-void

    .line 373
    :cond_0
    iput-boolean p1, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->mIsLoading:Z

    .line 374
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$1700(Lcom/android/gallery3d/app/AlbumSetDataLoader;)Landroid/os/Handler;

    move-result-object v1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized notifyDirty()V
    .locals 1

    .prologue
    .line 428
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->mDirty:Z

    .line 429
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    monitor-exit p0

    return-void

    .line 428
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 11

    .prologue
    const/4 v5, 0x1

    const/4 v10, -0x1

    const/4 v6, 0x0

    .line 379
    const/16 v7, 0xa

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    .line 381
    const/4 v2, 0x0

    .line 382
    .local v2, updateComplete:Z
    :cond_0
    :goto_0
    iget-boolean v7, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->mActive:Z

    if-eqz v7, :cond_7

    .line 383
    monitor-enter p0

    .line 384
    :try_start_0
    iget-boolean v7, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->mActive:Z

    if-eqz v7, :cond_2

    iget-boolean v7, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->mDirty:Z

    if-nez v7, :cond_2

    if-eqz v2, :cond_2

    .line 385
    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mSource:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v7}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$1800(Lcom/android/gallery3d/app/AlbumSetDataLoader;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/gallery3d/data/MediaSet;->isLoading()Z

    move-result v7

    if-nez v7, :cond_1

    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->updateLoading(Z)V

    .line 386
    :cond_1
    invoke-static {p0}, Lcom/android/gallery3d/common/Utils;->waitWithoutInterrupt(Ljava/lang/Object;)V

    .line 387
    monitor-exit p0

    goto :goto_0

    .line 389
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 390
    iput-boolean v6, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->mDirty:Z

    .line 391
    invoke-direct {p0, v5}, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->updateLoading(Z)V

    .line 393
    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mSource:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v7}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$1800(Lcom/android/gallery3d/app/AlbumSetDataLoader;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/gallery3d/data/MediaSet;->reload()J

    move-result-wide v3

    .line 394
    .local v3, version:J
    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    new-instance v8, Lcom/android/gallery3d/app/AlbumSetDataLoader$GetUpdateInfo;

    iget-object v9, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-direct {v8, v9, v3, v4}, Lcom/android/gallery3d/app/AlbumSetDataLoader$GetUpdateInfo;-><init>(Lcom/android/gallery3d/app/AlbumSetDataLoader;J)V

    #calls: Lcom/android/gallery3d/app/AlbumSetDataLoader;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    invoke-static {v7, v8}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$1900(Lcom/android/gallery3d/app/AlbumSetDataLoader;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;

    .line 395
    .local v1, info:Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;
    if-nez v1, :cond_6

    move v2, v5

    .line 396
    :goto_1
    if-nez v2, :cond_0

    .line 397
    iget-wide v7, v1, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->version:J

    cmp-long v7, v7, v3

    if-eqz v7, :cond_3

    .line 398
    iput-wide v3, v1, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->version:J

    .line 399
    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mSource:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v7}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$1800(Lcom/android/gallery3d/app/AlbumSetDataLoader;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v7

    iput v7, v1, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->size:I

    .line 405
    iget v7, v1, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->index:I

    iget v8, v1, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->size:I

    if-lt v7, v8, :cond_3

    .line 406
    iput v10, v1, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->index:I

    .line 409
    :cond_3
    iget v7, v1, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->index:I

    if-eq v7, v10, :cond_5

    .line 410
    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mSource:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v7}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$1800(Lcom/android/gallery3d/app/AlbumSetDataLoader;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v7

    iget v8, v1, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->index:I

    invoke-virtual {v7, v8}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v7

    iput-object v7, v1, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->item:Lcom/android/gallery3d/data/MediaSet;

    .line 411
    iget-object v7, v1, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->item:Lcom/android/gallery3d/data/MediaSet;

    if-eqz v7, :cond_0

    .line 413
    iget-object v7, v1, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->item:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v7}, Lcom/android/gallery3d/data/MediaSet;->reload()J

    .line 415
    iget-object v7, v1, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->item:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v7}, Lcom/android/gallery3d/data/MediaSet;->getCoverMediaItem()Lcom/android/gallery3d/data/MediaItem;

    move-result-object v7

    iput-object v7, v1, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->cover:Lcom/android/gallery3d/data/MediaItem;

    .line 416
    iget-object v7, v1, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->item:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v7}, Lcom/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v0

    .line 417
    .local v0, count:I
    invoke-static {}, Lcom/android/gallery3d/common/ApiHelper;->isCMCC()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 418
    iget-object v7, v1, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->item:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v7}, Lcom/android/gallery3d/data/MediaSet;->getNewAlbumCount()I

    move-result v7

    sub-int/2addr v0, v7

    .line 420
    :cond_4
    iput v0, v1, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->totalCount:I

    .line 422
    .end local v0           #count:I
    :cond_5
    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    new-instance v8, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateContent;

    iget-object v9, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-direct {v8, v9, v1}, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateContent;-><init>(Lcom/android/gallery3d/app/AlbumSetDataLoader;Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;)V

    #calls: Lcom/android/gallery3d/app/AlbumSetDataLoader;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    invoke-static {v7, v8}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$1900(Lcom/android/gallery3d/app/AlbumSetDataLoader;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_6
    move v2, v6

    .line 395
    goto :goto_1

    .line 424
    .end local v1           #info:Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;
    .end local v3           #version:J
    :cond_7
    invoke-direct {p0, v6}, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->updateLoading(Z)V

    .line 425
    return-void
.end method

.method public declared-synchronized terminate()V
    .locals 1

    .prologue
    .line 433
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->mActive:Z

    .line 434
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 435
    monitor-exit p0

    return-void

    .line 433
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
