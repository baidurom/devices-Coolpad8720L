.class public Lcom/android/gallery3d/app/GalleryAppImpl;
.super Landroid/app/Application;
.source "GalleryAppImpl.java"

# interfaces
.implements Lcom/android/gallery3d/app/GalleryApp;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/GalleryAppImpl$1;,
        Lcom/android/gallery3d/app/GalleryAppImpl$LazyLoadedBitmap;,
        Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;,
        Lcom/android/gallery3d/app/GalleryAppImpl$SaveRequest;
    }
.end annotation


# instance fields
.field private mCameraHandler:Landroid/os/Handler;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDataManager:Lcom/android/gallery3d/data/DataManager;

.field private mDownloadCache:Lcom/android/gallery3d/data/DownloadCache;

.field private mGpsIcon:Lcom/android/gallery3d/app/GalleryAppImpl$LazyLoadedBitmap;

.field private mImageCacheService:Lcom/android/gallery3d/data/ImageCacheService;

.field private mImageSaver:Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;

.field private mLock:Ljava/lang/Object;

.field private mShortCutBitmap:Landroid/graphics/Bitmap;

.field private mStitchingProgressManager:Lcom/android/gallery3d/app/StitchingProgressManager;

.field private mThreadPool:Lcom/android/gallery3d/util/ThreadPool;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mLock:Ljava/lang/Object;

    .line 550
    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/GalleryAppImpl;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method private initializeAsyncTask()V
    .locals 1

    .prologue
    .line 154
    :try_start_0
    const-class v0, Landroid/os/AsyncTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :goto_0
    return-void

    .line 155
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public DeleteAllData()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mImageSaver:Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;->DeleteAllData()V

    .line 197
    return-void
.end method

.method public DeleteUriData(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mImageSaver:Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;->DeleteData(I)V

    .line 200
    return-void
.end method

.method public getAndroidContext()Landroid/content/Context;
    .locals 0

    .prologue
    .line 98
    return-object p0
.end method

.method public getCameraModeHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mCameraHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public declared-synchronized getDataManager()Lcom/android/gallery3d/data/DataManager;
    .locals 1

    .prologue
    .line 103
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mDataManager:Lcom/android/gallery3d/data/DataManager;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Lcom/android/gallery3d/data/DataManager;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/data/DataManager;-><init>(Lcom/android/gallery3d/app/GalleryApp;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mDataManager:Lcom/android/gallery3d/data/DataManager;

    .line 105
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mDataManager:Lcom/android/gallery3d/data/DataManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/DataManager;->initializeSourceMap()V

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mDataManager:Lcom/android/gallery3d/data/DataManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDownloadCache()Lcom/android/gallery3d/data/DownloadCache;
    .locals 4

    .prologue
    .line 136
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mDownloadCache:Lcom/android/gallery3d/data/DownloadCache;

    if-nez v1, :cond_2

    .line 137
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/android/gallery3d/util/CacheManager;->getExternalCacheDirEx()Ljava/io/File;

    move-result-object v1

    const-string v2, "download"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 139
    .local v0, cacheDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 141
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 142
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to create: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    .end local v0           #cacheDir:Ljava/io/File;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 145
    .restart local v0       #cacheDir:Ljava/io/File;
    :cond_1
    :try_start_1
    new-instance v1, Lcom/android/gallery3d/data/DownloadCache;

    const-wide/32 v2, 0x4000000

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/android/gallery3d/data/DownloadCache;-><init>(Lcom/android/gallery3d/app/GalleryApp;Ljava/io/File;J)V

    iput-object v1, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mDownloadCache:Lcom/android/gallery3d/data/DownloadCache;

    .line 147
    .end local v0           #cacheDir:Ljava/io/File;
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mDownloadCache:Lcom/android/gallery3d/data/DownloadCache;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1
.end method

.method public getGpsIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 581
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mGpsIcon:Lcom/android/gallery3d/app/GalleryAppImpl$LazyLoadedBitmap;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/GalleryAppImpl$LazyLoadedBitmap;->get(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getImageCacheService()Lcom/android/gallery3d/data/ImageCacheService;
    .locals 3

    .prologue
    .line 118
    iget-object v1, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mImageCacheService:Lcom/android/gallery3d/data/ImageCacheService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mImageCacheService:Lcom/android/gallery3d/data/ImageCacheService;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/ImageCacheService;->cacheIsNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    :cond_0
    new-instance v0, Lcom/android/gallery3d/data/ImageCacheService;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/GalleryAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/gallery3d/data/ImageCacheService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mImageCacheService:Lcom/android/gallery3d/data/ImageCacheService;

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mImageCacheService:Lcom/android/gallery3d/data/ImageCacheService;

    monitor-exit v1

    return-object v0

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getImageSaver()Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mImageSaver:Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;

    return-object v0
.end method

.method public getJpegData(Landroid/net/Uri;)[B
    .locals 1
    .parameter "uri"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mImageSaver:Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;->getData(Landroid/net/Uri;)[B

    move-result-object v0

    return-object v0
.end method

.method public getStitchingProgressManager()Lcom/android/gallery3d/app/StitchingProgressManager;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mStitchingProgressManager:Lcom/android/gallery3d/app/StitchingProgressManager;

    return-object v0
.end method

.method public declared-synchronized getThreadPool()Lcom/android/gallery3d/util/ThreadPool;
    .locals 1

    .prologue
    .line 128
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Lcom/android/gallery3d/util/ThreadPool;

    invoke-direct {v0}, Lcom/android/gallery3d/util/ThreadPool;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 79
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 80
    invoke-static {p0}, Lcom/android/camera/Util;->initialize(Landroid/content/Context;)V

    .line 81
    invoke-static {p0}, Lcom/android/gallery3d/util/VolumeUtil;->initialize(Landroid/content/Context;)V

    .line 82
    invoke-direct {p0}, Lcom/android/gallery3d/app/GalleryAppImpl;->initializeAsyncTask()V

    .line 83
    invoke-static {p0}, Lcom/android/gallery3d/util/GalleryUtils;->initialize(Landroid/content/Context;)V

    .line 84
    invoke-static {p0}, Lcom/android/gallery3d/gadget/WidgetUtils;->initialize(Landroid/content/Context;)V

    .line 85
    invoke-static {p0}, Lcom/android/gallery3d/picasasource/PicasaSource;->initialize(Landroid/content/Context;)V

    .line 86
    new-instance v0, Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;-><init>(Lcom/android/gallery3d/app/GalleryAppImpl;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mImageSaver:Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;

    .line 88
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 89
    invoke-static {p0}, Lcom/android/gallery3d/util/LightCycleHelper;->createStitchingManagerInstance(Lcom/android/gallery3d/app/GalleryApp;)Lcom/android/gallery3d/app/StitchingProgressManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mStitchingProgressManager:Lcom/android/gallery3d/app/StitchingProgressManager;

    .line 90
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mStitchingProgressManager:Lcom/android/gallery3d/app/StitchingProgressManager;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mStitchingProgressManager:Lcom/android/gallery3d/app/StitchingProgressManager;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/GalleryAppImpl;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/StitchingProgressManager;->addChangeListener(Lcom/android/gallery3d/app/StitchingChangeListener;)V

    .line 93
    :cond_0
    new-instance v0, Lcom/android/gallery3d/app/GalleryAppImpl$LazyLoadedBitmap;

    const v1, 0x7f020170

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/GalleryAppImpl$LazyLoadedBitmap;-><init>(Lcom/android/gallery3d/app/GalleryAppImpl;I)V

    iput-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mGpsIcon:Lcom/android/gallery3d/app/GalleryAppImpl$LazyLoadedBitmap;

    .line 94
    return-void
.end method

.method public setCameraModeHander(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mCameraHandler:Landroid/os/Handler;

    .line 163
    return-void
.end method

.method public setShortCutBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mShortCutBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mShortCutBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mShortCutBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mShortCutBitmap:Landroid/graphics/Bitmap;

    .line 177
    :cond_0
    iput-object p1, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mShortCutBitmap:Landroid/graphics/Bitmap;

    .line 178
    return-void
.end method
