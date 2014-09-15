.class public Lcom/android/camera/YLCamera;
.super Ljava/lang/Object;
.source "YLCamera.java"


# instance fields
.field private mNvCameraClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private mNvCameraObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/android/camera/YLCamera;->mNvCameraClass:Ljava/lang/Class;

    .line 18
    iput-object v0, p0, Lcom/android/camera/YLCamera;->mNvCameraObject:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public YLCameraOpenCamera(I)Ljava/lang/Object;
    .locals 2
    .parameter "cameraID"

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/android/camera/YLCamera;->getNvCameraClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 25
    const-string v0, "YLCamera"

    const-string v1, "YLCameraOpenCamera------open NvCamera!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-virtual {p0, p1}, Lcom/android/camera/YLCamera;->getNvCameraObject(I)Ljava/lang/Object;

    move-result-object v0

    .line 29
    :goto_0
    return-object v0

    .line 28
    :cond_0
    const-string v0, "YLCamera"

    const-string v1, "YLCameraOpenCamera------open Camera!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    goto :goto_0
.end method

.method getNvCameraClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 36
    const-string v0, "com.nvidia.NvCamera"

    invoke-static {v0}, Lcom/android/gallery3d/common/ApiHelper;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/YLCamera;->mNvCameraClass:Ljava/lang/Class;

    .line 37
    iget-object v0, p0, Lcom/android/camera/YLCamera;->mNvCameraClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getNvCameraObject(I)Ljava/lang/Object;
    .locals 9
    .parameter "parameter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 42
    iget-object v3, p0, Lcom/android/camera/YLCamera;->mNvCameraClass:Ljava/lang/Class;

    if-nez v3, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/android/camera/YLCamera;->getNvCameraClass()Ljava/lang/Class;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/YLCamera;->mNvCameraClass:Ljava/lang/Class;

    .line 46
    :cond_0
    iget-object v3, p0, Lcom/android/camera/YLCamera;->mNvCameraClass:Ljava/lang/Class;

    if-eqz v3, :cond_1

    .line 47
    iget-object v3, p0, Lcom/android/camera/YLCamera;->mNvCameraObject:Ljava/lang/Object;

    if-nez v3, :cond_1

    .line 48
    const/4 v0, 0x0

    .line 51
    .local v0, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/YLCamera;->mNvCameraClass:Ljava/lang/Class;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 56
    :goto_0
    if-eqz v0, :cond_1

    .line 57
    invoke-virtual {v0, v7}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 60
    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v0, v3}, Lcom/android/gallery3d/common/ApiHelper;->getInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/YLCamera;->mNvCameraObject:Ljava/lang/Object;

    .line 61
    iget-object v3, p0, Lcom/android/camera/YLCamera;->mNvCameraObject:Ljava/lang/Object;

    if-nez v3, :cond_1

    .line 62
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    .line 63
    .local v2, ex:Ljava/lang/RuntimeException;
    throw v2

    .line 52
    .end local v2           #ex:Ljava/lang/RuntimeException;
    :catch_0
    move-exception v1

    .line 54
    .local v1, e1:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 72
    .end local v0           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .end local v1           #e1:Ljava/lang/NoSuchMethodException;
    :cond_1
    iget-object v3, p0, Lcom/android/camera/YLCamera;->mNvCameraObject:Ljava/lang/Object;

    return-object v3
.end method
