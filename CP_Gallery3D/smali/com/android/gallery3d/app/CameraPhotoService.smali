.class public Lcom/android/gallery3d/app/CameraPhotoService;
.super Landroid/app/Service;
.source "CameraPhotoService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/CameraPhotoService$VideoNailListener;,
        Lcom/android/gallery3d/app/CameraPhotoService$CameraNailListener;,
        Lcom/android/gallery3d/app/CameraPhotoService$ServiceHandler;
    }
.end annotation


# static fields
.field private static SIZE_BACKUP:I

.field public static sCameraBitCache:Ljava/util/HashMap;
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

.field public static sCameraDeoCache:Ljava/util/HashMap;
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
.field private volatile mServiceHandler:Lcom/android/gallery3d/app/CameraPhotoService$ServiceHandler;

.field private volatile mServiceLooper:Landroid/os/Looper;

.field private mTask:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private mTaskMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/gallery3d/util/Future",
            "<*>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/gallery3d/app/CameraPhotoService;->sCameraBitCache:Ljava/util/HashMap;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/gallery3d/app/CameraPhotoService;->sCameraDeoCache:Ljava/util/HashMap;

    .line 44
    const/16 v0, 0xc00

    sput v0, Lcom/android/gallery3d/app/CameraPhotoService;->SIZE_BACKUP:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 37
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/CameraPhotoService;->mTaskMap:Ljava/util/HashMap;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/app/CameraPhotoService;)Lcom/android/gallery3d/util/Future;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/gallery3d/app/CameraPhotoService;->mTask:Lcom/android/gallery3d/util/Future;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/gallery3d/app/CameraPhotoService;Lcom/android/gallery3d/util/Future;)Lcom/android/gallery3d/util/Future;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/gallery3d/app/CameraPhotoService;->mTask:Lcom/android/gallery3d/util/Future;

    return-object p1
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 33
    sget v0, Lcom/android/gallery3d/app/CameraPhotoService;->SIZE_BACKUP:I

    return v0
.end method


# virtual methods
.method public getDataManager()Lcom/android/gallery3d/data/DataManager;
    .locals 1

    .prologue
    .line 233
    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    return-object v0
.end method

.method public getThreadPool()Lcom/android/gallery3d/util/ThreadPool;
    .locals 1

    .prologue
    .line 237
    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v0

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 109
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 51
    new-instance v1, Ljava/lang/Thread;

    const/4 v3, 0x0

    const-string v4, "CameraPhotoService"

    invoke-direct {v1, v3, p0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 52
    .local v1, thr:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 55
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 56
    .local v0, metrics:Landroid/util/DisplayMetrics;
    const-string v3, "window"

    invoke-virtual {p0, v3}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 57
    .local v2, wm:Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 58
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    sput v3, Lcom/android/gallery3d/app/CameraPhotoService;->SIZE_BACKUP:I

    .line 60
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 91
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/app/CameraPhotoService;->mServiceLooper:Landroid/os/Looper;

    if-nez v0, :cond_0

    .line 92
    monitor-enter p0

    .line 94
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_1
    :try_start_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/CameraPhotoService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 101
    sget-object v0, Lcom/android/gallery3d/app/CameraPhotoService;->sCameraBitCache:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 102
    sget-object v0, Lcom/android/gallery3d/app/CameraPhotoService;->sCameraBitCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 103
    :cond_1
    sget-object v0, Lcom/android/gallery3d/app/CameraPhotoService;->sCameraDeoCache:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 104
    sget-object v0, Lcom/android/gallery3d/app/CameraPhotoService;->sCameraDeoCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 105
    :cond_2
    return-void

    .line 95
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v4, 0x2

    .line 64
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/app/CameraPhotoService;->mServiceHandler:Lcom/android/gallery3d/app/CameraPhotoService$ServiceHandler;

    if-nez v1, :cond_0

    .line 65
    monitor-enter p0

    .line 67
    const-wide/16 v1, 0x1e

    :try_start_0
    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_1
    :try_start_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 74
    :cond_0
    if-nez p1, :cond_1

    .line 75
    const-string v1, "CameraPhotoService"

    const-string v2, "Intent is null in onStartCommand: "

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    :goto_2
    return v4

    .line 79
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/CameraPhotoService;->mServiceHandler:Lcom/android/gallery3d/app/CameraPhotoService$ServiceHandler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 80
    .local v0, msg:Landroid/os/Message;
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 81
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 82
    iget-object v1, p0, Lcom/android/gallery3d/app/CameraPhotoService;->mServiceHandler:Lcom/android/gallery3d/app/CameraPhotoService$ServiceHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_2

    .line 68
    .end local v0           #msg:Landroid/os/Message;
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/gallery3d/app/CameraPhotoService;->mTask:Lcom/android/gallery3d/util/Future;

    .line 163
    .local v0, task:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<*>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    .line 164
    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 165
    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->waitDone()V

    .line 166
    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 167
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/gallery3d/app/CameraPhotoService;->mTask:Lcom/android/gallery3d/util/Future;

    .line 170
    :cond_0
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 246
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 247
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/CameraPhotoService;->mServiceLooper:Landroid/os/Looper;

    .line 248
    new-instance v0, Lcom/android/gallery3d/app/CameraPhotoService$ServiceHandler;

    invoke-direct {v0, p0, p0}, Lcom/android/gallery3d/app/CameraPhotoService$ServiceHandler;-><init>(Lcom/android/gallery3d/app/CameraPhotoService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/CameraPhotoService;->mServiceHandler:Lcom/android/gallery3d/app/CameraPhotoService$ServiceHandler;

    .line 249
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 250
    return-void
.end method
