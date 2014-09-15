.class Lcom/android/camera/PhotoModule$ImageNamer;
.super Ljava/lang/Thread;
.source "PhotoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageNamer"
.end annotation


# instance fields
.field private final QUEUE_LIMIT:I

.field private final WAIT_TIEMOUT:I

.field private mDateTaken:J

.field private mHeight:I

.field private mQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/PhotoModule$UriRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mResolver:Landroid/content/ContentResolver;

.field private mStop:Z

.field private mTitle:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2198
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2194
    const/16 v0, 0xdac

    iput v0, p0, Lcom/android/camera/PhotoModule$ImageNamer;->WAIT_TIEMOUT:I

    .line 2195
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/PhotoModule$ImageNamer;->QUEUE_LIMIT:I

    .line 2199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PhotoModule$ImageNamer;->mQueue:Ljava/util/ArrayList;

    .line 2200
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 2201
    return-void
.end method

.method private cleanOldUri()V
    .locals 3

    .prologue
    .line 2341
    iget-object v0, p0, Lcom/android/camera/PhotoModule$ImageNamer;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 2346
    :goto_0
    return-void

    .line 2343
    :cond_0
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>>>>delete remaing uri :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PhotoModule$ImageNamer;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2344
    iget-object v0, p0, Lcom/android/camera/PhotoModule$ImageNamer;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/camera/PhotoModule$ImageNamer;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/android/camera/Storage;->deleteImage(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 2345
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PhotoModule$ImageNamer;->mUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method private generateUri()V
    .locals 6

    .prologue
    .line 2335
    iget-wide v0, p0, Lcom/android/camera/PhotoModule$ImageNamer;->mDateTaken:J

    invoke-static {v0, v1}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule$ImageNamer;->mTitle:Ljava/lang/String;

    .line 2336
    iget-object v0, p0, Lcom/android/camera/PhotoModule$ImageNamer;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/camera/PhotoModule$ImageNamer;->mTitle:Ljava/lang/String;

    iget-wide v2, p0, Lcom/android/camera/PhotoModule$ImageNamer;->mDateTaken:J

    iget v4, p0, Lcom/android/camera/PhotoModule$ImageNamer;->mWidth:I

    iget v5, p0, Lcom/android/camera/PhotoModule$ImageNamer;->mHeight:I

    invoke-static/range {v0 .. v5}, Lcom/android/camera/Storage;->newImage(Landroid/content/ContentResolver;Ljava/lang/String;JII)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule$ImageNamer;->mUri:Landroid/net/Uri;

    .line 2337
    return-void
.end method


# virtual methods
.method public cleanInvalidUri(Landroid/net/Uri;)V
    .locals 1
    .parameter "addr"

    .prologue
    .line 2349
    if-nez p1, :cond_0

    .line 2352
    :goto_0
    return-void

    .line 2351
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule$ImageNamer;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Lcom/android/camera/Storage;->deleteImage(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public declared-synchronized finish()V
    .locals 1

    .prologue
    .line 2326
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule$ImageNamer;->mStop:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2331
    :goto_0
    monitor-exit p0

    return-void

    .line 2329
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/camera/PhotoModule$ImageNamer;->mStop:Z

    .line 2330
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2326
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2277
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule$ImageNamer;->mTitle:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 11

    .prologue
    const-wide/16 v9, 0xdac

    const/4 v6, 0x0

    .line 2245
    const/4 v4, 0x1

    .line 2246
    .local v4, ret:Z
    monitor-enter p0

    .line 2247
    :cond_0
    :goto_0
    :try_start_0
    iget-object v7, p0, Lcom/android/camera/PhotoModule$ImageNamer;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_1

    .line 2249
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2250
    .local v0, enter:J
    const-wide/16 v7, 0xdac

    invoke-virtual {p0, v7, v8}, Ljava/lang/Object;->wait(J)V

    .line 2251
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v7

    sub-long v2, v7, v0

    .line 2252
    .local v2, leave:J
    cmp-long v7, v2, v9

    if-ltz v7, :cond_0

    .line 2253
    const/4 v4, 0x0

    .line 2260
    .end local v0           #enter:J
    .end local v2           #leave:J
    :cond_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2262
    if-eqz v4, :cond_2

    .line 2265
    iget-object v5, p0, Lcom/android/camera/PhotoModule$ImageNamer;->mUri:Landroid/net/Uri;

    .line 2266
    .local v5, uri:Landroid/net/Uri;
    iput-object v6, p0, Lcom/android/camera/PhotoModule$ImageNamer;->mUri:Landroid/net/Uri;

    .line 2271
    .end local v5           #uri:Landroid/net/Uri;
    :goto_1
    return-object v5

    .line 2260
    :catchall_0
    move-exception v6

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v6

    .line 2269
    :cond_2
    const-string v7, "CAM_PhotoModule"

    const-string v8, ">>>>>>>>>>>>get uri is timeout"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2270
    const-string v7, "get uri timeout"

    invoke-static {v7}, Lcom/android/camera/Util;->launchBugReportSystemByReflect(Ljava/lang/String;)V

    move-object v5, v6

    .line 2271
    goto :goto_1

    .line 2256
    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method public prepareUri(Landroid/content/ContentResolver;JIII)V
    .locals 9
    .parameter "resolver"
    .parameter "dateTaken"
    .parameter "width"
    .parameter "height"
    .parameter "rotation"

    .prologue
    .line 2206
    rem-int/lit16 v5, p6, 0xb4

    if-eqz v5, :cond_0

    .line 2207
    move v4, p4

    .line 2208
    .local v4, tmp:I
    move p4, p5

    .line 2209
    move p5, v4

    .line 2211
    .end local v4           #tmp:I
    :cond_0
    new-instance v2, Lcom/android/camera/PhotoModule$UriRequest;

    const/4 v5, 0x0

    invoke-direct {v2, v5}, Lcom/android/camera/PhotoModule$UriRequest;-><init>(Lcom/android/camera/PhotoModule$1;)V

    .line 2212
    .local v2, rq:Lcom/android/camera/PhotoModule$UriRequest;
    iput-object p1, v2, Lcom/android/camera/PhotoModule$UriRequest;->resolver:Landroid/content/ContentResolver;

    .line 2213
    iput-wide p2, v2, Lcom/android/camera/PhotoModule$UriRequest;->dateTaken:J

    .line 2214
    iput p4, v2, Lcom/android/camera/PhotoModule$UriRequest;->Width:I

    .line 2215
    iput p5, v2, Lcom/android/camera/PhotoModule$UriRequest;->Height:I

    .line 2217
    const/4 v3, 0x0

    .line 2218
    .local v3, timeout:Z
    monitor-enter p0

    .line 2219
    :cond_1
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/android/camera/PhotoModule$ImageNamer;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    const/4 v6, 0x1

    if-lt v5, v6, :cond_2

    .line 2221
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 2222
    .local v0, enter:Ljava/lang/Long;
    const-wide/16 v5, 0xdac

    invoke-virtual {p0, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 2223
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 2224
    .local v1, leave:Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v5

    const-wide/16 v7, 0xdac

    cmp-long v5, v5, v7

    if-ltz v5, :cond_1

    .line 2225
    const/4 v3, 0x1

    .line 2232
    .end local v0           #enter:Ljava/lang/Long;
    .end local v1           #leave:Ljava/lang/Long;
    :cond_2
    if-nez v3, :cond_3

    .line 2233
    :try_start_2
    iget-object v5, p0, Lcom/android/camera/PhotoModule$ImageNamer;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2234
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 2239
    :goto_1
    monitor-exit p0

    .line 2240
    return-void

    .line 2236
    :cond_3
    const-string v5, "CAM_PhotoModule"

    const-string v6, ">>>>>request prepareUri in photomode is timeout"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2237
    const-string v5, "request prepareUri in photomode is timeout"

    invoke-static {v5}, Lcom/android/camera/Util;->launchBugReportSystemByReflect(Ljava/lang/String;)V

    goto :goto_1

    .line 2239
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 2228
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 2284
    :goto_0
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule$ImageNamer;->mStop:Z

    if-eqz v1, :cond_0

    .line 2321
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/PhotoModule$ImageNamer;->cleanOldUri()V

    .line 2322
    return-void

    .line 2287
    :cond_0
    monitor-enter p0

    .line 2288
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/PhotoModule$ImageNamer;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2289
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 2293
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule$ImageNamer;->mStop:Z

    if-eqz v1, :cond_1

    .line 2294
    monitor-exit p0

    goto :goto_1

    .line 2304
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2297
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2301
    :goto_2
    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 2303
    :cond_2
    iget-object v1, p0, Lcom/android/camera/PhotoModule$ImageNamer;->mQueue:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/PhotoModule$UriRequest;

    .line 2304
    .local v0, r:Lcom/android/camera/PhotoModule$UriRequest;
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2307
    iget-wide v1, v0, Lcom/android/camera/PhotoModule$UriRequest;->dateTaken:J

    iput-wide v1, p0, Lcom/android/camera/PhotoModule$ImageNamer;->mDateTaken:J

    .line 2308
    iget-object v1, v0, Lcom/android/camera/PhotoModule$UriRequest;->resolver:Landroid/content/ContentResolver;

    iput-object v1, p0, Lcom/android/camera/PhotoModule$ImageNamer;->mResolver:Landroid/content/ContentResolver;

    .line 2309
    iget v1, v0, Lcom/android/camera/PhotoModule$UriRequest;->Width:I

    iput v1, p0, Lcom/android/camera/PhotoModule$ImageNamer;->mWidth:I

    .line 2310
    iget v1, v0, Lcom/android/camera/PhotoModule$UriRequest;->Height:I

    iput v1, p0, Lcom/android/camera/PhotoModule$ImageNamer;->mHeight:I

    .line 2312
    invoke-direct {p0}, Lcom/android/camera/PhotoModule$ImageNamer;->cleanOldUri()V

    .line 2313
    invoke-direct {p0}, Lcom/android/camera/PhotoModule$ImageNamer;->generateUri()V

    .line 2315
    monitor-enter p0

    .line 2316
    :try_start_3
    iget-object v1, p0, Lcom/android/camera/PhotoModule$ImageNamer;->mQueue:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2317
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 2318
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 2298
    .end local v0           #r:Lcom/android/camera/PhotoModule$UriRequest;
    :catch_0
    move-exception v1

    goto :goto_2
.end method
