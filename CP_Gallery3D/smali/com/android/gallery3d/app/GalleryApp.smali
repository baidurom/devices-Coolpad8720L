.class public interface abstract Lcom/android/gallery3d/app/GalleryApp;
.super Ljava/lang/Object;
.source "GalleryApp.java"


# virtual methods
.method public abstract DeleteAllData()V
.end method

.method public abstract DeleteUriData(I)V
.end method

.method public abstract getAndroidContext()Landroid/content/Context;
.end method

.method public abstract getCameraModeHandler()Landroid/os/Handler;
.end method

.method public abstract getContentResolver()Landroid/content/ContentResolver;
.end method

.method public abstract getDataManager()Lcom/android/gallery3d/data/DataManager;
.end method

.method public abstract getDownloadCache()Lcom/android/gallery3d/data/DownloadCache;
.end method

.method public abstract getGpsIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
.end method

.method public abstract getImageCacheService()Lcom/android/gallery3d/data/ImageCacheService;
.end method

.method public abstract getImageSaver()Lcom/android/gallery3d/app/GalleryAppImpl$ImageSaver;
.end method

.method public abstract getJpegData(Landroid/net/Uri;)[B
.end method

.method public abstract getMainLooper()Landroid/os/Looper;
.end method

.method public abstract getResources()Landroid/content/res/Resources;
.end method

.method public abstract getStitchingProgressManager()Lcom/android/gallery3d/app/StitchingProgressManager;
.end method

.method public abstract getThreadPool()Lcom/android/gallery3d/util/ThreadPool;
.end method

.method public abstract setCameraModeHander(Landroid/os/Handler;)V
.end method

.method public abstract setShortCutBitmap(Landroid/graphics/Bitmap;)V
.end method
