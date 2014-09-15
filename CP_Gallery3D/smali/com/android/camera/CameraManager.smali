.class public Lcom/android/camera/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/CameraManager$1;,
        Lcom/android/camera/CameraManager$CameraProxy;,
        Lcom/android/camera/CameraManager$CameraEventHandler;,
        Lcom/android/camera/CameraManager$CameraHandler;
    }
.end annotation


# static fields
.field private static sCameraManager:Lcom/android/camera/CameraManager;


# instance fields
.field private mCamera:Landroid/hardware/Camera;

.field private mCameraEventHandler:Lcom/android/camera/CameraManager$CameraEventHandler;

.field private mCameraHandler:Landroid/os/Handler;

.field private mCameraProxy:Lcom/android/camera/CameraManager$CameraProxy;

.field private mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mReconnectException:Ljava/io/IOException;

.field private mSig:Landroid/os/ConditionVariable;

.field private mYLCamera:Lcom/android/camera/YLCamera;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/android/camera/CameraManager;

    invoke-direct {v0}, Lcom/android/camera/CameraManager;-><init>()V

    sput-object v0, Lcom/android/camera/CameraManager;->sCameraManager:Lcom/android/camera/CameraManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v1, p0, Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;

    .line 102
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Camera Handler Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 103
    .local v0, ht:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 104
    new-instance v1, Lcom/android/camera/CameraManager$CameraHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/camera/CameraManager$CameraHandler;-><init>(Lcom/android/camera/CameraManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;

    .line 105
    return-void
.end method

.method private OpenCamera(I)Landroid/hardware/Camera;
    .locals 1
    .parameter "cameraID"

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/camera/CameraManager;->mYLCamera:Lcom/android/camera/YLCamera;

    invoke-virtual {v0, p1}, Lcom/android/camera/YLCamera;->YLCameraOpenCamera(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$000(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/camera/CameraManager;Landroid/hardware/Camera;)Landroid/hardware/Camera;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    return-object p1
.end method

.method static synthetic access$1000(Lcom/android/camera/CameraManager;)Lcom/android/camera/CameraManager$CameraEventHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/CameraManager;->mCameraEventHandler:Lcom/android/camera/CameraManager$CameraEventHandler;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/camera/CameraManager;Lcom/android/camera/CameraManager$CameraEventHandler;)Lcom/android/camera/CameraManager$CameraEventHandler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/camera/CameraManager;->mCameraEventHandler:Lcom/android/camera/CameraManager$CameraEventHandler;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/camera/CameraManager;Lcom/android/camera/YLCamera;)Lcom/android/camera/YLCamera;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/camera/CameraManager;->mYLCamera:Lcom/android/camera/YLCamera;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/camera/CameraManager;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/camera/CameraManager;->checkTimeOutError(Z)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/camera/CameraManager;Lcom/android/camera/CameraManager$CameraProxy;)Lcom/android/camera/CameraManager$CameraProxy;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/camera/CameraManager;->mCameraProxy:Lcom/android/camera/CameraManager$CameraProxy;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/camera/CameraManager;)Ljava/io/IOException;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/CameraManager;->mReconnectException:Ljava/io/IOException;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/camera/CameraManager;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/camera/CameraManager;->mReconnectException:Ljava/io/IOException;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/camera/CameraManager;Landroid/hardware/Camera;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/camera/CameraManager;->setAutoFocusMoveCallback(Landroid/hardware/Camera;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/CameraManager;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/camera/CameraManager;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/camera/CameraManager;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera$ErrorCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/CameraManager;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/camera/CameraManager;Landroid/hardware/Camera$ErrorCallback;)Landroid/hardware/Camera$ErrorCallback;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/camera/CameraManager;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/camera/CameraManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private checkTimeOutError(Z)V
    .locals 2
    .parameter "bPassed"

    .prologue
    .line 321
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraManager;->mCameraEventHandler:Lcom/android/camera/CameraManager$CameraEventHandler;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/android/camera/CameraManager;->mCameraEventHandler:Lcom/android/camera/CameraManager$CameraEventHandler;

    const/16 v1, 0x3039

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 324
    :cond_0
    return-void
.end method

.method public static instance()Lcom/android/camera/CameraManager;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/android/camera/CameraManager;->sCameraManager:Lcom/android/camera/CameraManager;

    return-object v0
.end method

.method private setAutoFocusMoveCallback(Landroid/hardware/Camera;Ljava/lang/Object;)V
    .locals 0
    .parameter "camera"
    .parameter "cb"
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 316
    check-cast p2, Landroid/hardware/Camera$AutoFocusMoveCallback;

    .end local p2
    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    .line 317
    return-void
.end method


# virtual methods
.method cameraOpen(I)Lcom/android/camera/CameraManager$CameraProxy;
    .locals 7
    .parameter "cameraId"

    .prologue
    const/4 v4, 0x0

    .line 355
    new-instance v5, Lcom/android/camera/YLCamera;

    invoke-direct {v5}, Lcom/android/camera/YLCamera;-><init>()V

    iput-object v5, p0, Lcom/android/camera/CameraManager;->mYLCamera:Lcom/android/camera/YLCamera;

    .line 359
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/camera/CameraManager;->OpenCamera(I)Landroid/hardware/Camera;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    :goto_0
    iget-object v5, p0, Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    if-eqz v5, :cond_0

    .line 392
    new-instance v5, Lcom/android/camera/CameraManager$CameraProxy;

    invoke-direct {v5, p0, v4}, Lcom/android/camera/CameraManager$CameraProxy;-><init>(Lcom/android/camera/CameraManager;Lcom/android/camera/CameraManager$1;)V

    iput-object v5, p0, Lcom/android/camera/CameraManager;->mCameraProxy:Lcom/android/camera/CameraManager$CameraProxy;

    .line 395
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    .local v3, looper:Landroid/os/Looper;
    if-eqz v3, :cond_1

    .line 396
    new-instance v4, Lcom/android/camera/CameraManager$CameraEventHandler;

    invoke-direct {v4, p0, v3}, Lcom/android/camera/CameraManager$CameraEventHandler;-><init>(Lcom/android/camera/CameraManager;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/android/camera/CameraManager;->mCameraEventHandler:Lcom/android/camera/CameraManager$CameraEventHandler;

    .line 403
    :goto_1
    iget-object v4, p0, Lcom/android/camera/CameraManager;->mCameraProxy:Lcom/android/camera/CameraManager$CameraProxy;

    .line 405
    .end local v3           #looper:Landroid/os/Looper;
    :cond_0
    return-object v4

    .line 361
    :catch_0
    move-exception v0

    .line 376
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_1
    const-string v5, "CameraManager"

    const-string v6, ">>>>>>do force recovery"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    const/16 v5, 0x66

    invoke-direct {p0, v5}, Lcom/android/camera/CameraManager;->OpenCamera(I)Landroid/hardware/Camera;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 379
    :catch_1
    move-exception v1

    .line 381
    .local v1, e1:Ljava/lang/RuntimeException;
    const-wide/16 v5, 0x5dc

    :try_start_2
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 386
    :goto_2
    const-string v5, "CameraManager"

    const-string v6, ">>>>>>reconnect after  force recovery"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    new-instance v5, Lcom/android/camera/YLCamera;

    invoke-direct {v5}, Lcom/android/camera/YLCamera;-><init>()V

    iput-object v5, p0, Lcom/android/camera/CameraManager;->mYLCamera:Lcom/android/camera/YLCamera;

    .line 388
    invoke-direct {p0, p1}, Lcom/android/camera/CameraManager;->OpenCamera(I)Landroid/hardware/Camera;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/CameraManager;->mCamera:Landroid/hardware/Camera;

    goto :goto_0

    .line 382
    :catch_2
    move-exception v2

    .line 384
    .local v2, e2:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 397
    .end local v0           #e:Ljava/lang/RuntimeException;
    .end local v1           #e1:Ljava/lang/RuntimeException;
    .end local v2           #e2:Ljava/lang/InterruptedException;
    .restart local v3       #looper:Landroid/os/Looper;
    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 398
    new-instance v4, Lcom/android/camera/CameraManager$CameraEventHandler;

    invoke-direct {v4, p0, v3}, Lcom/android/camera/CameraManager$CameraEventHandler;-><init>(Lcom/android/camera/CameraManager;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/android/camera/CameraManager;->mCameraEventHandler:Lcom/android/camera/CameraManager$CameraEventHandler;

    goto :goto_1

    .line 400
    :cond_2
    iput-object v4, p0, Lcom/android/camera/CameraManager;->mCameraEventHandler:Lcom/android/camera/CameraManager$CameraEventHandler;

    goto :goto_1
.end method
